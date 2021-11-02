#include "system.h"
#include "iic.h"

void I2C_Master_Init (void)
{
    // SDA (RB4) is an input
    TRISBbits.TRISB4 = 1;
    ANSELBbits.ANSB4 = 0;
    
    // SCL (RB6) is an input
    TRISBbits.TRISB6 = 1;
    
    // enable MSSP in IIC master mode
    SSP1STAT = 0x00;
    SSP1CON1 = 0x28;
    SSP1CON3 = 0x00;
    
    // set IIC clock rate
    // 48000000/(4*100000) - 1 = 119 for 100kHz
    // 48000000/(4*400000) - 1 =  29 for 400kHz
    SSP1ADD = 119;
}

void I2C_Master_Wait (void)
{
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
}

void I2C_Master_Start (void)
{
    I2C_Master_Wait();
    SEN = 1;
}

void I2C_Master_RepeatedStart (void)
{
    I2C_Master_Wait();
    RSEN = 1;
}

void I2C_Master_Stop (void)
{
    I2C_Master_Wait();
    PEN = 1;
}

void I2C_Master_Write (unsigned d)
{
    I2C_Master_Wait();
    SSPBUF = d;
}

unsigned short I2C_Master_Read (unsigned short a)
{
    unsigned short temp;
    I2C_Master_Wait();
    RCEN = 1;
    I2C_Master_Wait();
    temp = SSPBUF;
    I2C_Master_Wait();
    ACKDT = (a)?0:1;
    ACKEN = 1;
    return temp;
}
