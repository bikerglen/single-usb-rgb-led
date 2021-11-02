#include <stdint.h>
#include "system.h"
#include "iic.h"
#include "pca9685.h"

void PCA9685_Init (uint8_t addr)
{
    I2C_Master_Start ();
    I2C_Master_Write (addr);
    I2C_Master_Write (MODE1);
    I2C_Master_Write (0x30);
    I2C_Master_Stop ();
    
    I2C_Master_Start ();
    I2C_Master_Write (addr);
    I2C_Master_Write (PRESCALE);
    I2C_Master_Write (0x02);
    I2C_Master_Stop ();
    
    I2C_Master_Start ();
    I2C_Master_Write (addr);
    I2C_Master_Write (MODE1);
    I2C_Master_Write (0x20);
    I2C_Master_Stop ();
    
    for (uint8_t channel = 0; channel < 16; channel++) {
        PCA9685_SetPWM (addr, channel, 0);
    }
}


void PCA9685_SetPWM (uint8_t address, uint8_t channel, uint16_t v)
{
    v &= 0xFFF;
    if (v == 4095) {
        // fully on
        PCA9685_SetRaw (address, channel, 4096, 0);
    } else if (v == 0) {
        // fully off
        PCA9685_SetRaw (address, channel, 0, 4096);
    } else {
        PCA9685_SetRaw (address, channel, 0, v);
    }
}


void PCA9685_SetRaw (uint8_t address, uint8_t channel, uint16_t on, uint16_t off)
{
    I2C_Master_Start ();
    I2C_Master_Write (PCA9685_I2C_ADDRESS);
    I2C_Master_Write (LED0_ON_L + 4 * channel);
    I2C_Master_Write (on);
    I2C_Master_Write (on >> 8);
    I2C_Master_Write (off);
    I2C_Master_Write (off >> 8);
    I2C_Master_Stop ();
}
