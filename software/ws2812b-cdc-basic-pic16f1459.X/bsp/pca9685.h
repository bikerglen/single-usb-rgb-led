/* 
 * File:   pca9685.h
 * Author: glen
 *
 * Created on April 3, 2019, 5:59 PM
 */

#ifndef PCA9685_H
#define	PCA9685_H

#ifdef	__cplusplus
extern "C" {
#endif

#define PCA9685_I2C_ADDRESS 0x80 // (0x40 << 1 really)
#define MODE1               0x00
#define LED0_ON_L           0x06
#define PRESCALE            0xFE

void PCA9685_Init (uint8_t address);
void PCA9685_SetPWM (uint8_t address, uint8_t channel, uint16_t v);
void PCA9685_SetRaw (uint8_t address, uint8_t channel, uint16_t on, uint16_t off);

#ifdef	__cplusplus
}
#endif

#endif	/* PCA9685_H */

