/* 
 * File:   iic.h
 * Author: glen
 *
 * Created on April 1, 2019, 9:05 PM
 */

#ifndef IIC_H
#define	IIC_H

#ifdef	__cplusplus
extern "C" {
#endif

void I2C_Master_Init (void);
void I2C_Master_Wait (void);
void I2C_Master_Start (void);
void I2C_Master_RepeatedStart (void);
void I2C_Master_Stop (void);
void I2C_Master_Write (unsigned d);
unsigned short I2C_Master_Read (unsigned short a);

#ifdef	__cplusplus
}
#endif

#endif	/* IIC_H */

