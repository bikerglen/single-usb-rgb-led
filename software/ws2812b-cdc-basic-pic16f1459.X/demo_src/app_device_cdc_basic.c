/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

/** INCLUDES *******************************************************/
#include "system.h"

#include <stdint.h>
#include <string.h>
#include <stddef.h>

#include "usb.h"
#include "iic.h"
#include "pca9685.h"
#include "ws2812b.h"

#include "app_led_usb_status.h"
#include "app_device_cdc_basic.h"
#include "usb_config.h"

/** DEFINES ********************************************************/

#define CMD_MAXLEN 72

/** VARIABLES ******************************************************/

static uint8_t first = 1;
static const char helloWorld[] = "\n\r\n\rHello, world!\n\r\n\r";
static uint8_t readBuffer[CDC_DATA_OUT_EP_SIZE];
static uint8_t numBytesWrite = 0;
static uint8_t writeBuffer[CDC_DATA_IN_EP_SIZE];

static const char cmd_prompt[] = "CMD> ";
static uint8_t cmd_buffer[CMD_MAXLEN];
static uint8_t cmd_length = 0;
static uint8_t cmd_state = 0;
static uint8_t timer = 255;

static uint8_t ProcessCommand (void);
static void skip_white (void);
static uint16_t atoi (void);
static uint32_t hexatoi (void);

void APP_UpdateTimers (void)
{
    if (timer != 0) {
        timer--;
    }
}


/*********************************************************************
* Function: void APP_DeviceCDCBasicDemoInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceCDCBasicDemoInitialize()
{   
    line_coding.bCharFormat = 0;
    line_coding.bDataBits = 8;
    line_coding.bParityType = 0;
    line_coding.dwDTERate = 9600;
}

/*********************************************************************
* Function: void APP_DeviceCDCBasicDemoTasks(void);
*
* Overview: Keeps the demo running.
*
* PreCondition: The demo should have been initialized and started via
*   the APP_DeviceCDCBasicDemoInitialize() and APP_DeviceCDCBasicDemoStart() demos
*   respectively.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceCDCBasicDemoTasks()
{
    /* If the USB device isn't configured yet, we can't really do anything
     * else since we don't have a host to talk to.  So jump back to the
     * top of the while loop. */
    if (USBGetDeviceState () < CONFIGURED_STATE)
    {
        return;
    }

    /* If we are currently suspended, then we need to see if we need to
     * issue a remote wakeup.  In either case, we shouldn't process any
     * keyboard commands since we aren't currently communicating to the host
     * thus just continue back to the start of the while loop. */
    if (USBIsDeviceSuspended() == true)
    {
        return;
    }

    uint8_t numBytesRead = 0;
    uint8_t i, ch;

    numBytesWrite = 0;
    
    if (first) {
        if (timer == 0) {
            if (USBUSARTIsTxTrfReady() == true) {
                putrsUSBUSART (helloWorld);
                first = 0;
            }
        } else {
            return;
        }
    }
    
    if (cmd_state == 0) {
        if (USBUSARTIsTxTrfReady() == true) {
            cmd_length = 0;
            cmd_buffer[cmd_length] = 0;
            putrsUSBUSART (cmd_prompt);
            cmd_state++;
        }
    } else if (cmd_state == 1) {
        if (USBUSARTIsTxTrfReady() == true) {
            while (1) {
                
                // make sure at least enough room to send whatever we process
                if (numBytesWrite >= (CDC_DATA_IN_EP_SIZE - 4)) {
                    break;
                }

                // read 1 byte into buffer
                numBytesRead = getsUSBUSART(readBuffer, 1);
                if (numBytesRead == 0) {
                    break;
                }

                // get character from buffer
                ch = readBuffer[0];

                // process character
                if (ch == 0x0d) {							// return
                    // carriage return and linefeed
                    writeBuffer[numBytesWrite++] = 0x0d;
                    writeBuffer[numBytesWrite++] = 0x0a;
                    cmd_state++;
                    break;
                } else if (ch == 0x08) {					// backspace
                    if (cmd_length > 0) {
                        writeBuffer[numBytesWrite++] = 0x08;
                        writeBuffer[numBytesWrite++] = ' ';
                        writeBuffer[numBytesWrite++] = 0x08;
                        cmd_buffer[--cmd_length] = 0;
                    }
                } else if (ch >= 0x20 && ch <= 0x7e) {		// printable characters
                    if (cmd_length < (CMD_MAXLEN - 1)) {
                        writeBuffer[numBytesWrite++] = ch;
                        cmd_buffer[cmd_length++] = ch;
                        cmd_buffer[cmd_length] = 0;
                    }
                }
            }
        }
    } else if (cmd_state == 2) {
        if (USBUSARTIsTxTrfReady() == true) {
            if (ProcessCommand ()) {
                writeBuffer[numBytesWrite++] = 'E';
                writeBuffer[numBytesWrite++] = 'r';
                writeBuffer[numBytesWrite++] = 'r';
                writeBuffer[numBytesWrite++] = '\n';
                writeBuffer[numBytesWrite++] = '\r';
            } else {
                writeBuffer[numBytesWrite++] = 'O';
                writeBuffer[numBytesWrite++] = 'k';
                writeBuffer[numBytesWrite++] = '\n';
                writeBuffer[numBytesWrite++] = '\r';
            }
            cmd_state = 0;
        }
    }

    if (numBytesWrite > 0)
    {
        /* After processing all of the received data, we need to send out
         * the "echo" data now.
         */
        putUSBUSART (writeBuffer, numBytesWrite);
    }
    
    CDCTxService();
}

uint8_t p;

static const char tohex[] = "0123456789abcdef";

static uint8_t ProcessCommand (void)
{
    uint8_t argc = 0;
    uint32_t arg1;
    
    p = 0;

    skip_white ();
    if (p < cmd_length) {
        argc++;
    }
    arg1 = hexatoi ();

    if (argc >= 1) {
        writeBuffer[numBytesWrite++] = tohex[(arg1 >> 20) & 0xf];
        writeBuffer[numBytesWrite++] = tohex[(arg1 >> 16) & 0xf];
        writeBuffer[numBytesWrite++] = tohex[(arg1 >> 12) & 0xf];
        writeBuffer[numBytesWrite++] = tohex[(arg1 >>  8) & 0xf];
        writeBuffer[numBytesWrite++] = tohex[(arg1 >>  4) & 0xf];
        writeBuffer[numBytesWrite++] = tohex[(arg1 >>  0) & 0xf];
    }
    if (argc >= 1) {
        writeBuffer[numBytesWrite++] = '\n';
        writeBuffer[numBytesWrite++] = '\r';
        ledData[0] = arg1 >> 16;
        ledData[1] = arg1 >>  8;
        ledData[2] = arg1 >>  0;
        WS2812b_Write ();
        return 0;
    }
    
    // return zero for no error, non-zero for error
    return 1;
}


static void skip_white (void)
{
    while ((p < cmd_length) && (cmd_buffer[p] == ' ')) {
        p++;
    }
}


static uint16_t atoi (void)
{
    uint16_t a = 0;
    
    while ((p < cmd_length) && (cmd_buffer[p] != ' ')) {
        a = 10*a + cmd_buffer[p] - '0';
        p++;
    }
    
    return a;
}


static uint32_t hexatoi (void)
{
    uint8_t ch;
    uint32_t a = 0;
    
    while ((p < cmd_length) && (cmd_buffer[p] != ' ')) {
        ch = cmd_buffer[p];
        if ((ch >= '0') && (ch <= '9')) {
            a = a << 4;
            a = a + cmd_buffer[p] - '0';
        } else if ((ch >= 'a') && (ch <= 'f')) {
            a = a << 4;
            a = a + cmd_buffer[p] - 'a' + 10;
        }
        p++;
    }
    
    return a;
}