
# 1 "bsp/leds.c"

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 29 "bsp\leds.h"
typedef enum
{
LED_NONE,
LED_D1,
LED_D2,
LED_D3,
LED_D4
} LED;

# 56
void LED_On(LED led);

# 74
void LED_Off(LED led);

# 92
void LED_Toggle(LED led);

# 110
bool LED_Get(LED led);

# 127
void LED_Enable(LED led);

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 18 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 52 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\pic16f1459.h"
extern volatile unsigned char INDF0 __at(0x000);

asm("INDF0 equ 00h");


typedef union {
struct {
unsigned INDF0 :8;
};
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __at(0x000);

# 72
extern volatile unsigned char INDF1 __at(0x001);

asm("INDF1 equ 01h");


typedef union {
struct {
unsigned INDF1 :8;
};
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __at(0x001);

# 92
extern volatile unsigned char PCL __at(0x002);

asm("PCL equ 02h");


typedef union {
struct {
unsigned PCL :8;
};
} PCLbits_t;
extern volatile PCLbits_t PCLbits __at(0x002);

# 112
extern volatile unsigned char STATUS __at(0x003);

asm("STATUS equ 03h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned nPD :1;
unsigned nTO :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0x003);

# 171
extern volatile unsigned short FSR0 __at(0x004);



extern volatile unsigned char FSR0L __at(0x004);

asm("FSR0L equ 04h");


typedef union {
struct {
unsigned FSR0L :8;
};
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __at(0x004);

# 195
extern volatile unsigned char FSR0H __at(0x005);

asm("FSR0H equ 05h");


typedef union {
struct {
unsigned FSR0H :8;
};
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __at(0x005);

# 215
extern volatile unsigned short FSR1 __at(0x006);



extern volatile unsigned char FSR1L __at(0x006);

asm("FSR1L equ 06h");


typedef union {
struct {
unsigned FSR1L :8;
};
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __at(0x006);

# 239
extern volatile unsigned char FSR1H __at(0x007);

asm("FSR1H equ 07h");


typedef union {
struct {
unsigned FSR1H :8;
};
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __at(0x007);

# 259
extern volatile unsigned char BSR __at(0x008);

asm("BSR equ 08h");


typedef union {
struct {
unsigned BSR :5;
};
struct {
unsigned BSR0 :1;
unsigned BSR1 :1;
unsigned BSR2 :1;
unsigned BSR3 :1;
unsigned BSR4 :1;
};
} BSRbits_t;
extern volatile BSRbits_t BSRbits __at(0x008);

# 311
extern volatile unsigned char WREG __at(0x009);

asm("WREG equ 09h");


typedef union {
struct {
unsigned WREG0 :8;
};
} WREGbits_t;
extern volatile WREGbits_t WREGbits __at(0x009);

# 331
extern volatile unsigned char PCLATH __at(0x00A);

asm("PCLATH equ 0Ah");


typedef union {
struct {
unsigned PCLATH :7;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0x00A);

# 351
extern volatile unsigned char INTCON __at(0x00B);

asm("INTCON equ 0Bh");


typedef union {
struct {
unsigned IOCIF :1;
unsigned INTF :1;
unsigned TMR0IF :1;
unsigned IOCIE :1;
unsigned INTE :1;
unsigned TMR0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :2;
unsigned T0IF :1;
unsigned :2;
unsigned T0IE :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0x00B);

# 429
extern volatile unsigned char PORTA __at(0x00C);

asm("PORTA equ 0Ch");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0x00C);

# 474
extern volatile unsigned char PORTB __at(0x00D);

asm("PORTB equ 0Dh");


typedef union {
struct {
unsigned :4;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0x00D);

# 513
extern volatile unsigned char PORTC __at(0x00E);

asm("PORTC equ 0Eh");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0x00E);

# 575
extern volatile unsigned char PIR1 __at(0x011);

asm("PIR1 equ 011h");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned :1;
unsigned SSP1IF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
unsigned TMR1GIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0x011);

# 632
extern volatile unsigned char PIR2 __at(0x012);

asm("PIR2 equ 012h");


typedef union {
struct {
unsigned :1;
unsigned ACTIF :1;
unsigned USBIF :1;
unsigned BCL1IF :1;
unsigned :1;
unsigned C1IF :1;
unsigned C2IF :1;
unsigned OSFIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0x012);

# 684
extern volatile unsigned char TMR0 __at(0x015);

asm("TMR0 equ 015h");


typedef union {
struct {
unsigned TMR0 :8;
};
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __at(0x015);

# 704
extern volatile unsigned short TMR1 __at(0x016);

asm("TMR1 equ 016h");




extern volatile unsigned char TMR1L __at(0x016);

asm("TMR1L equ 016h");


typedef union {
struct {
unsigned TMR1L :8;
};
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __at(0x016);

# 731
extern volatile unsigned char TMR1H __at(0x017);

asm("TMR1H equ 017h");


typedef union {
struct {
unsigned TMR1H :8;
};
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __at(0x017);

# 751
extern volatile unsigned char T1CON __at(0x018);

asm("T1CON equ 018h");


typedef union {
struct {
unsigned TMR1ON :1;
unsigned :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned TMR1CS :2;
};
struct {
unsigned :4;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
unsigned TMR1CS0 :1;
unsigned TMR1CS1 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0x018);

# 823
extern volatile unsigned char T1GCON __at(0x019);

asm("T1GCON equ 019h");


typedef union {
struct {
unsigned T1GSS :2;
unsigned T1GVAL :1;
unsigned T1GGO_nDONE :1;
unsigned T1GSPM :1;
unsigned T1GTM :1;
unsigned T1GPOL :1;
unsigned TMR1GE :1;
};
struct {
unsigned T1GSS0 :1;
unsigned T1GSS1 :1;
};
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __at(0x019);

# 893
extern volatile unsigned char TMR2 __at(0x01A);

asm("TMR2 equ 01Ah");


typedef union {
struct {
unsigned TMR2 :8;
};
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __at(0x01A);

# 913
extern volatile unsigned char PR2 __at(0x01B);

asm("PR2 equ 01Bh");


typedef union {
struct {
unsigned PR2 :8;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0x01B);

# 933
extern volatile unsigned char T2CON __at(0x01C);

asm("T2CON equ 01Ch");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned T2OUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0x01C);

# 1004
extern volatile unsigned char TRISA __at(0x08C);

asm("TRISA equ 08Ch");


typedef union {
struct {
unsigned :4;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0x08C);

# 1031
extern volatile unsigned char TRISB __at(0x08D);

asm("TRISB equ 08Dh");


typedef union {
struct {
unsigned :4;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0x08D);

# 1070
extern volatile unsigned char TRISC __at(0x08E);

asm("TRISC equ 08Eh");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0x08E);

# 1132
extern volatile unsigned char PIE1 __at(0x091);

asm("PIE1 equ 091h");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned :1;
unsigned SSP1IE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
unsigned TMR1GIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0x091);

# 1189
extern volatile unsigned char PIE2 __at(0x092);

asm("PIE2 equ 092h");


typedef union {
struct {
unsigned :1;
unsigned ACTIE :1;
unsigned USBIE :1;
unsigned BCL1IE :1;
unsigned :1;
unsigned C1IE :1;
unsigned C2IE :1;
unsigned OSFIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0x092);

# 1241
extern volatile unsigned char OPTION_REG __at(0x095);

asm("OPTION_REG equ 095h");


typedef union {
struct {
unsigned PS :3;
unsigned PSA :1;
unsigned TMR0SE :1;
unsigned TMR0CS :1;
unsigned INTEDG :1;
unsigned nWPUEN :1;
};
struct {
unsigned PS0 :1;
unsigned PS1 :1;
unsigned PS2 :1;
unsigned :1;
unsigned T0SE :1;
unsigned T0CS :1;
};
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __at(0x095);

# 1324
extern volatile unsigned char PCON __at(0x096);

asm("PCON equ 096h");


typedef union {
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nRI :1;
unsigned nRMCLR :1;
unsigned nRWDT :1;
unsigned :1;
unsigned STKUNF :1;
unsigned STKOVF :1;
};
} PCONbits_t;
extern volatile PCONbits_t PCONbits __at(0x096);

# 1381
extern volatile unsigned char WDTCON __at(0x097);

asm("WDTCON equ 097h");


typedef union {
struct {
unsigned SWDTEN :1;
unsigned WDTPS :5;
};
struct {
unsigned :1;
unsigned WDTPS0 :1;
unsigned WDTPS1 :1;
unsigned WDTPS2 :1;
unsigned WDTPS3 :1;
unsigned WDTPS4 :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0x097);

# 1440
extern volatile unsigned char OSCTUNE __at(0x098);

asm("OSCTUNE equ 098h");


typedef union {
struct {
unsigned TUN :7;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
unsigned TUN6 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0x098);

# 1504
extern volatile unsigned char OSCCON __at(0x099);

asm("OSCCON equ 099h");


typedef union {
struct {
unsigned SCS :2;
unsigned IRCF :4;
unsigned SPLLMULT :1;
unsigned SPLLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
unsigned IRCF3 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0x099);

# 1580
extern volatile unsigned char OSCSTAT __at(0x09A);

asm("OSCSTAT equ 09Ah");


typedef union {
struct {
unsigned HFIOFS :1;
unsigned LFIOFR :1;
unsigned :2;
unsigned HFIOFR :1;
unsigned OSTS :1;
unsigned PLLRDY :1;
unsigned SOSCR :1;
};
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __at(0x09A);

# 1631
extern volatile unsigned short ADRES __at(0x09B);

asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __at(0x09B);

asm("ADRESL equ 09Bh");


typedef union {
struct {
unsigned ADRESL :8;
};
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __at(0x09B);

# 1658
extern volatile unsigned char ADRESH __at(0x09C);

asm("ADRESH equ 09Ch");


typedef union {
struct {
unsigned ADRESH :8;
};
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __at(0x09C);

# 1678
extern volatile unsigned char ADCON0 __at(0x09D);

asm("ADCON0 equ 09Dh");


typedef union {
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :5;
};
struct {
unsigned :1;
unsigned ADGO :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
unsigned CHS4 :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0x09D);

# 1758
extern volatile unsigned char ADCON1 __at(0x09E);

asm("ADCON1 equ 09Eh");


typedef union {
struct {
unsigned ADPREF :2;
unsigned :2;
unsigned ADCS :3;
unsigned ADFM :1;
};
struct {
unsigned ADPREF0 :1;
unsigned ADPREF1 :1;
unsigned :2;
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0x09E);

# 1824
extern volatile unsigned char ADCON2 __at(0x09F);

asm("ADCON2 equ 09Fh");


typedef union {
struct {
unsigned :4;
unsigned TRIGSEL :3;
};
struct {
unsigned :4;
unsigned TRIGSEL0 :1;
unsigned TRIGSEL1 :1;
unsigned TRIGSEL2 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0x09F);

# 1866
extern volatile unsigned char LATA __at(0x10C);

asm("LATA equ 010Ch");


typedef union {
struct {
unsigned :4;
unsigned LATA4 :1;
unsigned LATA5 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0x10C);

# 1893
extern volatile unsigned char LATB __at(0x10D);

asm("LATB equ 010Dh");


typedef union {
struct {
unsigned :4;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0x10D);

# 1932
extern volatile unsigned char LATC __at(0x10E);

asm("LATC equ 010Eh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0x10E);

# 1994
extern volatile unsigned char CM1CON0 __at(0x111);

asm("CM1CON0 equ 0111h");


typedef union {
struct {
unsigned C1SYNC :1;
unsigned C1HYS :1;
unsigned C1SP :1;
unsigned :1;
unsigned C1POL :1;
unsigned C1OE :1;
unsigned C1OUT :1;
unsigned C1ON :1;
};
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __at(0x111);

# 2051
extern volatile unsigned char CM1CON1 __at(0x112);

asm("CM1CON1 equ 0112h");


typedef union {
struct {
unsigned C1NCH0 :1;
unsigned C1NCH1 :1;
unsigned C1NCH2 :1;
unsigned :1;
unsigned C1PCH0 :1;
unsigned C1PCH1 :1;
unsigned C1INTN :1;
unsigned C1INTP :1;
};
struct {
unsigned C1NCH :3;
unsigned :1;
unsigned C1PCH :2;
};
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __at(0x112);

# 2123
extern volatile unsigned char CM2CON0 __at(0x113);

asm("CM2CON0 equ 0113h");


typedef union {
struct {
unsigned C2SYNC :1;
unsigned C2HYS :1;
unsigned C2SP :1;
unsigned :1;
unsigned C2POL :1;
unsigned C2OE :1;
unsigned C2OUT :1;
unsigned C2ON :1;
};
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __at(0x113);

# 2180
extern volatile unsigned char CM2CON1 __at(0x114);

asm("CM2CON1 equ 0114h");


typedef union {
struct {
unsigned C2NCH0 :1;
unsigned C2NCH1 :1;
unsigned C2NCH2 :1;
unsigned :1;
unsigned C2PCH0 :1;
unsigned C2PCH1 :1;
unsigned C2INTN :1;
unsigned C2INTP :1;
};
struct {
unsigned C2NCH :3;
unsigned :1;
unsigned C2PCH :2;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0x114);

# 2252
extern volatile unsigned char CMOUT __at(0x115);

asm("CMOUT equ 0115h");


typedef union {
struct {
unsigned MC1OUT :1;
unsigned MC2OUT :1;
};
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __at(0x115);

# 2278
extern volatile unsigned char BORCON __at(0x116);

asm("BORCON equ 0116h");


typedef union {
struct {
unsigned BORRDY :1;
unsigned :5;
unsigned BORFS :1;
unsigned SBOREN :1;
};
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __at(0x116);

# 2311
extern volatile unsigned char FVRCON __at(0x117);

asm("FVRCON equ 0117h");


typedef union {
struct {
unsigned ADFVR :2;
unsigned CDAFVR :2;
unsigned :1;
unsigned :1;
unsigned FVRRDY :1;
unsigned FVREN :1;
};
struct {
unsigned ADFVR0 :1;
unsigned ADFVR1 :1;
unsigned CDAFVR0 :1;
unsigned CDAFVR1 :1;
};
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __at(0x117);

# 2377
extern volatile unsigned char DACCON0 __at(0x118);

asm("DACCON0 equ 0118h");


typedef union {
struct {
unsigned :2;
unsigned D1PSS :2;
unsigned DACOE2 :1;
unsigned DACOE1 :1;
unsigned :1;
unsigned DACEN :1;
};
struct {
unsigned :2;
unsigned D1PSS0 :1;
unsigned D1PSS1 :1;
};
} DACCON0bits_t;
extern volatile DACCON0bits_t DACCON0bits __at(0x118);

# 2432
extern volatile unsigned char DACCON1 __at(0x119);

asm("DACCON1 equ 0119h");


typedef union {
struct {
unsigned DACR :5;
};
struct {
unsigned DACR0 :1;
unsigned DACR1 :1;
unsigned DACR2 :1;
unsigned DACR3 :1;
unsigned DACR4 :1;
};
} DACCON1bits_t;
extern volatile DACCON1bits_t DACCON1bits __at(0x119);

# 2484
extern volatile unsigned char APFCON __at(0x11D);

asm("APFCON equ 011Dh");


typedef union {
struct {
unsigned :3;
unsigned T1GSEL :1;
unsigned :1;
unsigned SSSEL :1;
unsigned :1;
unsigned CLKRSEL :1;
};
} APFCONbits_t;
extern volatile APFCONbits_t APFCONbits __at(0x11D);

# 2519
extern volatile unsigned char ANSELA __at(0x18C);

asm("ANSELA equ 018Ch");


typedef union {
struct {
unsigned :4;
unsigned ANSA4 :1;
};
struct {
unsigned ANSELA :6;
};
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __at(0x18C);

# 2548
extern volatile unsigned char ANSELB __at(0x18D);

asm("ANSELB equ 018Dh");


typedef union {
struct {
unsigned :4;
unsigned ANSB4 :1;
unsigned ANSB5 :1;
};
struct {
unsigned :4;
unsigned ANSB :4;
};
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __at(0x18D);

# 2584
extern volatile unsigned char ANSELC __at(0x18E);

asm("ANSELC equ 018Eh");


typedef union {
struct {
unsigned ANSC0 :1;
unsigned ANSC1 :1;
unsigned ANSC2 :1;
unsigned ANSC3 :1;
unsigned :2;
unsigned ANSC6 :1;
unsigned ANSC7 :1;
};
struct {
unsigned ANSELC :8;
};
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __at(0x18E);

# 2643
extern volatile unsigned short PMADR __at(0x191);

asm("PMADR equ 0191h");




extern volatile unsigned char PMADRL __at(0x191);

asm("PMADRL equ 0191h");


typedef union {
struct {
unsigned PMADRL :8;
};
} PMADRLbits_t;
extern volatile PMADRLbits_t PMADRLbits __at(0x191);

# 2670
extern volatile unsigned char PMADRH __at(0x192);

asm("PMADRH equ 0192h");


typedef union {
struct {
unsigned PMADRH :7;
};
} PMADRHbits_t;
extern volatile PMADRHbits_t PMADRHbits __at(0x192);

# 2690
extern volatile unsigned short PMDAT __at(0x193);

asm("PMDAT equ 0193h");




extern volatile unsigned char PMDATL __at(0x193);

asm("PMDATL equ 0193h");


typedef union {
struct {
unsigned PMDATL :8;
};
} PMDATLbits_t;
extern volatile PMDATLbits_t PMDATLbits __at(0x193);

# 2717
extern volatile unsigned char PMDATH __at(0x194);

asm("PMDATH equ 0194h");


typedef union {
struct {
unsigned PMDATH :6;
};
} PMDATHbits_t;
extern volatile PMDATHbits_t PMDATHbits __at(0x194);

# 2737
extern volatile unsigned char PMCON1 __at(0x195);

asm("PMCON1 equ 0195h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned LWLO :1;
unsigned CFGS :1;
};
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __at(0x195);

# 2793
extern volatile unsigned char PMCON2 __at(0x196);

asm("PMCON2 equ 0196h");


typedef union {
struct {
unsigned PMCON2 :8;
};
} PMCON2bits_t;
extern volatile PMCON2bits_t PMCON2bits __at(0x196);

# 2813
extern volatile unsigned char VREGCON __at(0x197);

asm("VREGCON equ 0197h");


typedef union {
struct {
unsigned VREGPM :2;
};
struct {
unsigned VREGPM0 :1;
unsigned VREGPM1 :1;
};
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __at(0x197);

# 2847
extern volatile unsigned char RCREG __at(0x199);

asm("RCREG equ 0199h");


typedef union {
struct {
unsigned RCREG :8;
};
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __at(0x199);

# 2867
extern volatile unsigned char TXREG __at(0x19A);

asm("TXREG equ 019Ah");


typedef union {
struct {
unsigned TXREG :8;
};
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __at(0x19A);

# 2887
extern volatile unsigned short SPBRG __at(0x19B);

asm("SPBRG equ 019Bh");




extern volatile unsigned char SPBRGL __at(0x19B);

asm("SPBRGL equ 019Bh");


typedef union {
struct {
unsigned SPBRGL :8;
};
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __at(0x19B);

# 2914
extern volatile unsigned char SPBRGH __at(0x19C);

asm("SPBRGH equ 019Ch");


typedef union {
struct {
unsigned SPBRGH :8;
};
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __at(0x19C);

# 2934
extern volatile unsigned char RCSTA __at(0x19D);

asm("RCSTA equ 019Dh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0x19D);

# 2996
extern volatile unsigned char TXSTA __at(0x19E);

asm("TXSTA equ 019Eh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0x19E);

# 3058
extern volatile unsigned char BAUDCON __at(0x19F);

asm("BAUDCON equ 019Fh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0x19F);

# 3110
extern volatile unsigned char WPUA __at(0x20C);

asm("WPUA equ 020Ch");


typedef union {
struct {
unsigned :3;
unsigned WPUA3 :1;
unsigned WPUA4 :1;
unsigned WPUA5 :1;
};
struct {
unsigned WPUA :6;
};
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __at(0x20C);

# 3151
extern volatile unsigned char WPUB __at(0x20D);

asm("WPUB equ 020Dh");


typedef union {
struct {
unsigned :4;
unsigned WPUB4 :1;
unsigned WPUB5 :1;
unsigned WPUB6 :1;
unsigned WPUB7 :1;
};
struct {
unsigned :4;
unsigned WPUB :4;
};
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __at(0x20D);

# 3199
extern volatile unsigned char SSP1BUF __at(0x211);

asm("SSP1BUF equ 0211h");


extern volatile unsigned char SSPBUF __at(0x211);

asm("SSPBUF equ 0211h");


typedef union {
struct {
unsigned SSPBUF :8;
};
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __at(0x211);

# 3222
typedef union {
struct {
unsigned SSPBUF :8;
};
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __at(0x211);

# 3237
extern volatile unsigned char SSP1ADD __at(0x212);

asm("SSP1ADD equ 0212h");


extern volatile unsigned char SSPADD __at(0x212);

asm("SSPADD equ 0212h");


typedef union {
struct {
unsigned SSPADD :8;
};
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __at(0x212);

# 3260
typedef union {
struct {
unsigned SSPADD :8;
};
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __at(0x212);

# 3275
extern volatile unsigned char SSP1MSK __at(0x213);

asm("SSP1MSK equ 0213h");


extern volatile unsigned char SSPMSK __at(0x213);

asm("SSPMSK equ 0213h");


typedef union {
struct {
unsigned SSPMSK :8;
};
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __at(0x213);

# 3298
typedef union {
struct {
unsigned SSPMSK :8;
};
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __at(0x213);

# 3313
extern volatile unsigned char SSP1STAT __at(0x214);

asm("SSP1STAT equ 0214h");


extern volatile unsigned char SSPSTAT __at(0x214);

asm("SSPSTAT equ 0214h");


typedef union {
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __at(0x214);

# 3378
typedef union {
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0x214);

# 3435
extern volatile unsigned char SSP1CON1 __at(0x215);

asm("SSP1CON1 equ 0215h");


extern volatile unsigned char SSPCON __at(0x215);

asm("SSPCON equ 0215h");

extern volatile unsigned char SSPCON1 __at(0x215);

asm("SSPCON1 equ 0215h");


typedef union {
struct {
unsigned SSP1M0 :1;
unsigned SSP1M1 :1;
unsigned SSP1M2 :1;
unsigned SSP1M3 :1;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM :4;
unsigned :1;
unsigned SSP1EN :1;
unsigned SSP1OV :1;
};
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __at(0x215);

# 3525
typedef union {
struct {
unsigned SSP1M0 :1;
unsigned SSP1M1 :1;
unsigned SSP1M2 :1;
unsigned SSP1M3 :1;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM :4;
unsigned :1;
unsigned SSP1EN :1;
unsigned SSP1OV :1;
};
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __at(0x215);

# 3600
typedef union {
struct {
unsigned SSP1M0 :1;
unsigned SSP1M1 :1;
unsigned SSP1M2 :1;
unsigned SSP1M3 :1;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM :4;
unsigned :1;
unsigned SSP1EN :1;
unsigned SSP1OV :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0x215);

# 3678
extern volatile unsigned char SSP1CON2 __at(0x216);

asm("SSP1CON2 equ 0216h");


extern volatile unsigned char SSPCON2 __at(0x216);

asm("SSPCON2 equ 0216h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __at(0x216);

# 3743
typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0x216);

# 3800
extern volatile unsigned char SSP1CON3 __at(0x217);

asm("SSP1CON3 equ 0217h");


extern volatile unsigned char SSPCON3 __at(0x217);

asm("SSPCON3 equ 0217h");


typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __at(0x217);

# 3865
typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __at(0x217);

# 3922
extern volatile unsigned char IOCAP __at(0x391);

asm("IOCAP equ 0391h");


typedef union {
struct {
unsigned IOCAP0 :1;
unsigned IOCAP1 :1;
unsigned :1;
unsigned IOCAP3 :1;
unsigned IOCAP4 :1;
unsigned IOCAP5 :1;
};
struct {
unsigned IOCAP :6;
};
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __at(0x391);

# 3975
extern volatile unsigned char IOCAN __at(0x392);

asm("IOCAN equ 0392h");


typedef union {
struct {
unsigned IOCAN0 :1;
unsigned IOCAN1 :1;
unsigned :1;
unsigned IOCAN3 :1;
unsigned IOCAN4 :1;
unsigned IOCAN5 :1;
};
struct {
unsigned IOCAN :6;
};
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __at(0x392);

# 4028
extern volatile unsigned char IOCAF __at(0x393);

asm("IOCAF equ 0393h");


typedef union {
struct {
unsigned IOCAF0 :1;
unsigned IOCAF1 :1;
unsigned :1;
unsigned IOCAF3 :1;
unsigned IOCAF4 :1;
unsigned IOCAF5 :1;
};
struct {
unsigned IOCAF :6;
};
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __at(0x393);

# 4081
extern volatile unsigned char IOCBP __at(0x394);

asm("IOCBP equ 0394h");


typedef union {
struct {
unsigned :4;
unsigned IOCBP4 :1;
unsigned IOCBP5 :1;
unsigned IOCBP6 :1;
unsigned IOCBP7 :1;
};
struct {
unsigned :4;
unsigned IOCBP :4;
};
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __at(0x394);

# 4129
extern volatile unsigned char IOCBN __at(0x395);

asm("IOCBN equ 0395h");


typedef union {
struct {
unsigned :4;
unsigned IOCBN4 :1;
unsigned IOCBN5 :1;
unsigned IOCBN6 :1;
unsigned IOCBN7 :1;
};
struct {
unsigned :4;
unsigned IOCBN :4;
};
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __at(0x395);

# 4177
extern volatile unsigned char IOCBF __at(0x396);

asm("IOCBF equ 0396h");


typedef union {
struct {
unsigned :4;
unsigned IOCBF4 :1;
unsigned IOCBF5 :1;
unsigned IOCBF6 :1;
unsigned IOCBF7 :1;
};
struct {
unsigned :4;
unsigned IOCBF :4;
};
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __at(0x396);

# 4225
extern volatile unsigned char CLKRCON __at(0x39A);

asm("CLKRCON equ 039Ah");


typedef union {
struct {
unsigned CLKRDIV :3;
unsigned CLKRCD :2;
unsigned CLKRSLR :1;
unsigned CLKROE :1;
unsigned CLKREN :1;
};
struct {
unsigned CLKRDIV0 :1;
unsigned CLKRDIV1 :1;
unsigned CLKRDIV2 :1;
unsigned CLKRCD0 :1;
unsigned CLKRCD1 :1;
};
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __at(0x39A);

# 4301
extern volatile unsigned char ACTCON __at(0x39B);

asm("ACTCON equ 039Bh");


typedef union {
struct {
unsigned :1;
unsigned ACTORS :1;
unsigned :1;
unsigned ACTLOCK :1;
unsigned ACTSRC :1;
unsigned :1;
unsigned ACTUD :1;
unsigned ACTEN :1;
};
} ACTCONbits_t;
extern volatile ACTCONbits_t ACTCONbits __at(0x39B);

# 4348
extern volatile unsigned char PWM1DCL __at(0x611);

asm("PWM1DCL equ 0611h");


typedef union {
struct {
unsigned :6;
unsigned PWM1DCL :2;
};
struct {
unsigned :6;
unsigned PWM1DCL0 :1;
unsigned PWM1DCL1 :1;
};
} PWM1DCLbits_t;
extern volatile PWM1DCLbits_t PWM1DCLbits __at(0x611);

# 4384
extern volatile unsigned char PWM1DCH __at(0x612);

asm("PWM1DCH equ 0612h");


typedef union {
struct {
unsigned PWM1DCH :8;
};
struct {
unsigned PWM1DCH0 :1;
unsigned PWM1DCH1 :1;
unsigned PWM1DCH2 :1;
unsigned PWM1DCH3 :1;
unsigned PWM1DCH4 :1;
unsigned PWM1DCH5 :1;
unsigned PWM1DCH6 :1;
unsigned PWM1DCH7 :1;
};
} PWM1DCHbits_t;
extern volatile PWM1DCHbits_t PWM1DCHbits __at(0x612);

# 4454
extern volatile unsigned char PWM1CON __at(0x613);

asm("PWM1CON equ 0613h");


extern volatile unsigned char PWM1CON0 __at(0x613);

asm("PWM1CON0 equ 0613h");


typedef union {
struct {
unsigned :4;
unsigned PWM1POL :1;
unsigned PWM1OUT :1;
unsigned PWM1OE :1;
unsigned PWM1EN :1;
};
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __at(0x613);

# 4496
typedef union {
struct {
unsigned :4;
unsigned PWM1POL :1;
unsigned PWM1OUT :1;
unsigned PWM1OE :1;
unsigned PWM1EN :1;
};
} PWM1CON0bits_t;
extern volatile PWM1CON0bits_t PWM1CON0bits __at(0x613);

# 4530
extern volatile unsigned char PWM2DCL __at(0x614);

asm("PWM2DCL equ 0614h");


typedef union {
struct {
unsigned :6;
unsigned PWM2DCL :2;
};
struct {
unsigned :6;
unsigned PWM2DCL0 :1;
unsigned PWM2DCL1 :1;
};
} PWM2DCLbits_t;
extern volatile PWM2DCLbits_t PWM2DCLbits __at(0x614);

# 4566
extern volatile unsigned char PWM2DCH __at(0x615);

asm("PWM2DCH equ 0615h");


typedef union {
struct {
unsigned PWM2DCH :8;
};
struct {
unsigned PWM2DCH0 :1;
unsigned PWM2DCH1 :1;
unsigned PWM2DCH2 :1;
unsigned PWM2DCH3 :1;
unsigned PWM2DCH4 :1;
unsigned PWM2DCH5 :1;
unsigned PWM2DCH6 :1;
unsigned PWM2DCH7 :1;
};
} PWM2DCHbits_t;
extern volatile PWM2DCHbits_t PWM2DCHbits __at(0x615);

# 4636
extern volatile unsigned char PWM2CON __at(0x616);

asm("PWM2CON equ 0616h");


extern volatile unsigned char PWM2CON0 __at(0x616);

asm("PWM2CON0 equ 0616h");


typedef union {
struct {
unsigned :4;
unsigned PWM2POL :1;
unsigned PWM2OUT :1;
unsigned PWM2OE :1;
unsigned PWM2EN :1;
};
} PWM2CONbits_t;
extern volatile PWM2CONbits_t PWM2CONbits __at(0x616);

# 4678
typedef union {
struct {
unsigned :4;
unsigned PWM2POL :1;
unsigned PWM2OUT :1;
unsigned PWM2OE :1;
unsigned PWM2EN :1;
};
} PWM2CON0bits_t;
extern volatile PWM2CON0bits_t PWM2CON0bits __at(0x616);

# 4712
extern volatile unsigned char CWG1DBR __at(0x691);

asm("CWG1DBR equ 0691h");


typedef union {
struct {
unsigned CWG1DBR :6;
};
struct {
unsigned CWG1DBR0 :1;
unsigned CWG1DBR1 :1;
unsigned CWG1DBR2 :1;
unsigned CWG1DBR3 :1;
unsigned CWG1DBR4 :1;
unsigned CWG1DBR5 :1;
};
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __at(0x691);

# 4770
extern volatile unsigned char CWG1DBF __at(0x692);

asm("CWG1DBF equ 0692h");


typedef union {
struct {
unsigned CWG1DBF :6;
};
struct {
unsigned CWG1DBF0 :1;
unsigned CWG1DBF1 :1;
unsigned CWG1DBF2 :1;
unsigned CWG1DBF3 :1;
unsigned CWG1DBF4 :1;
unsigned CWG1DBF5 :1;
};
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __at(0x692);

# 4828
extern volatile unsigned char CWG1CON0 __at(0x693);

asm("CWG1CON0 equ 0693h");


typedef union {
struct {
unsigned G1CS0 :1;
unsigned :2;
unsigned G1POLA :1;
unsigned G1POLB :1;
unsigned G1OEA :1;
unsigned G1OEB :1;
unsigned G1EN :1;
};
struct {
unsigned G1CS :2;
};
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __at(0x693);

# 4887
extern volatile unsigned char CWG1CON1 __at(0x694);

asm("CWG1CON1 equ 0694h");


typedef union {
struct {
unsigned G1IS0 :1;
unsigned G1IS1 :1;
unsigned :2;
unsigned G1ASDLA :2;
unsigned G1ASDLB :2;
};
struct {
unsigned G1IS :4;
unsigned G1ASDLA0 :1;
unsigned G1ASDLA1 :1;
unsigned G1ASDLB0 :1;
unsigned G1ASDLB1 :1;
};
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __at(0x694);

# 4958
extern volatile unsigned char CWG1CON2 __at(0x695);

asm("CWG1CON2 equ 0695h");


typedef union {
struct {
unsigned :1;
unsigned G1ASDSFLT :1;
unsigned G1ASDSC1 :1;
unsigned G1ASDSC2 :1;
unsigned :2;
unsigned G1ARSEN :1;
unsigned G1ASE :1;
};
} CWG1CON2bits_t;
extern volatile CWG1CON2bits_t CWG1CON2bits __at(0x695);

# 5004
extern volatile unsigned char UCON __at(0xE8E);

asm("UCON equ 0E8Eh");


typedef union {
struct {
unsigned :1;
unsigned SUSPND :1;
unsigned RESUME :1;
unsigned USBEN :1;
unsigned PKTDIS :1;
unsigned SE0 :1;
unsigned PPBRST :1;
};
} UCONbits_t;
extern volatile UCONbits_t UCONbits __at(0xE8E);

# 5055
extern volatile unsigned char USTAT __at(0xE8F);

asm("USTAT equ 0E8Fh");


typedef union {
struct {
unsigned :1;
unsigned PPBI :1;
unsigned DIR :1;
unsigned ENDP :4;
};
struct {
unsigned :3;
unsigned ENDP0 :1;
unsigned ENDP1 :1;
unsigned ENDP2 :1;
unsigned ENDP3 :1;
};
} USTATbits_t;
extern volatile USTATbits_t USTATbits __at(0xE8F);

# 5115
extern volatile unsigned char UIR __at(0xE90);

asm("UIR equ 0E90h");


typedef union {
struct {
unsigned URSTIF :1;
unsigned UERRIF :1;
unsigned ACTVIF :1;
unsigned TRNIF :1;
unsigned IDLEIF :1;
unsigned STALLIF :1;
unsigned SOFIF :1;
};
} UIRbits_t;
extern volatile UIRbits_t UIRbits __at(0xE90);

# 5171
extern volatile unsigned char UCFG __at(0xE91);

asm("UCFG equ 0E91h");


typedef union {
struct {
unsigned PPB :2;
unsigned FSEN :1;
unsigned :1;
unsigned UPUEN :1;
unsigned :2;
unsigned UTEYE :1;
};
struct {
unsigned PPB0 :1;
unsigned PPB1 :1;
};
} UCFGbits_t;
extern volatile UCFGbits_t UCFGbits __at(0xE91);

# 5225
extern volatile unsigned char UIE __at(0xE92);

asm("UIE equ 0E92h");


typedef union {
struct {
unsigned URSTIE :1;
unsigned UERRIE :1;
unsigned ACTVIE :1;
unsigned TRNIE :1;
unsigned IDLEIE :1;
unsigned STALLIE :1;
unsigned SOFIE :1;
};
} UIEbits_t;
extern volatile UIEbits_t UIEbits __at(0xE92);

# 5281
extern volatile unsigned char UEIR __at(0xE93);

asm("UEIR equ 0E93h");


typedef union {
struct {
unsigned PIDEF :1;
unsigned CRC5EF :1;
unsigned CRC16EF :1;
unsigned DFN8EF :1;
unsigned BTOEF :1;
unsigned :2;
unsigned BTSEF :1;
};
} UEIRbits_t;
extern volatile UEIRbits_t UEIRbits __at(0xE93);

# 5332
extern volatile unsigned short UFRM __at(0xE94);

asm("UFRM equ 0E94h");




extern volatile unsigned char UFRMH __at(0xE94);

asm("UFRMH equ 0E94h");


typedef union {
struct {
unsigned FRM8 :1;
unsigned FRM9 :1;
unsigned FRM10 :1;
};
} UFRMHbits_t;
extern volatile UFRMHbits_t UFRMHbits __at(0xE94);

# 5371
extern volatile unsigned char UFRML __at(0xE95);

asm("UFRML equ 0E95h");


typedef union {
struct {
unsigned FRM0 :1;
unsigned FRM1 :1;
unsigned FRM2 :1;
unsigned FRM3 :1;
unsigned FRM4 :1;
unsigned FRM5 :1;
unsigned FRM6 :1;
unsigned FRM7 :1;
};
} UFRMLbits_t;
extern volatile UFRMLbits_t UFRMLbits __at(0xE95);

# 5433
extern volatile unsigned char UADDR __at(0xE96);

asm("UADDR equ 0E96h");


typedef union {
struct {
unsigned ADDR0 :1;
unsigned ADDR1 :1;
unsigned ADDR2 :1;
unsigned ADDR3 :1;
unsigned ADDR4 :1;
unsigned ADDR5 :1;
unsigned ADDR6 :1;
};
} UADDRbits_t;
extern volatile UADDRbits_t UADDRbits __at(0xE96);

# 5489
extern volatile unsigned char UEIE __at(0xE97);

asm("UEIE equ 0E97h");


typedef union {
struct {
unsigned PIDEE :1;
unsigned CRC5EE :1;
unsigned CRC16EE :1;
unsigned DFN8EE :1;
unsigned BTOEE :1;
unsigned :2;
unsigned BTSEE :1;
};
} UEIEbits_t;
extern volatile UEIEbits_t UEIEbits __at(0xE97);

# 5540
extern volatile unsigned char UEP0 __at(0xE98);

asm("UEP0 equ 0E98h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP0bits_t;
extern volatile UEP0bits_t UEP0bits __at(0xE98);

# 5584
extern volatile unsigned char UEP1 __at(0xE99);

asm("UEP1 equ 0E99h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP1bits_t;
extern volatile UEP1bits_t UEP1bits __at(0xE99);

# 5628
extern volatile unsigned char UEP2 __at(0xE9A);

asm("UEP2 equ 0E9Ah");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP2bits_t;
extern volatile UEP2bits_t UEP2bits __at(0xE9A);

# 5672
extern volatile unsigned char UEP3 __at(0xE9B);

asm("UEP3 equ 0E9Bh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP3bits_t;
extern volatile UEP3bits_t UEP3bits __at(0xE9B);

# 5716
extern volatile unsigned char UEP4 __at(0xE9C);

asm("UEP4 equ 0E9Ch");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP4bits_t;
extern volatile UEP4bits_t UEP4bits __at(0xE9C);

# 5760
extern volatile unsigned char UEP5 __at(0xE9D);

asm("UEP5 equ 0E9Dh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP5bits_t;
extern volatile UEP5bits_t UEP5bits __at(0xE9D);

# 5804
extern volatile unsigned char UEP6 __at(0xE9E);

asm("UEP6 equ 0E9Eh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP6bits_t;
extern volatile UEP6bits_t UEP6bits __at(0xE9E);

# 5848
extern volatile unsigned char UEP7 __at(0xE9F);

asm("UEP7 equ 0E9Fh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
} UEP7bits_t;
extern volatile UEP7bits_t UEP7bits __at(0xE9F);

# 5892
extern volatile unsigned char STATUS_SHAD __at(0xFE4);

asm("STATUS_SHAD equ 0FE4h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
};
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __at(0xFE4);

# 5924
extern volatile unsigned char WREG_SHAD __at(0xFE5);

asm("WREG_SHAD equ 0FE5h");


typedef union {
struct {
unsigned WREG_SHAD :8;
};
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __at(0xFE5);

# 5944
extern volatile unsigned char BSR_SHAD __at(0xFE6);

asm("BSR_SHAD equ 0FE6h");


typedef union {
struct {
unsigned BSR_SHAD :5;
};
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __at(0xFE6);

# 5964
extern volatile unsigned char PCLATH_SHAD __at(0xFE7);

asm("PCLATH_SHAD equ 0FE7h");


typedef union {
struct {
unsigned PCLATH_SHAD :7;
};
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __at(0xFE7);

# 5984
extern volatile unsigned char FSR0L_SHAD __at(0xFE8);

asm("FSR0L_SHAD equ 0FE8h");


typedef union {
struct {
unsigned FSR0L_SHAD :8;
};
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __at(0xFE8);

# 6004
extern volatile unsigned char FSR0H_SHAD __at(0xFE9);

asm("FSR0H_SHAD equ 0FE9h");


typedef union {
struct {
unsigned FSR0H_SHAD :8;
};
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __at(0xFE9);

# 6024
extern volatile unsigned char FSR1L_SHAD __at(0xFEA);

asm("FSR1L_SHAD equ 0FEAh");


typedef union {
struct {
unsigned FSR1L_SHAD :8;
};
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __at(0xFEA);

# 6044
extern volatile unsigned char FSR1H_SHAD __at(0xFEB);

asm("FSR1H_SHAD equ 0FEBh");


typedef union {
struct {
unsigned FSR1H_SHAD :8;
};
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __at(0xFEB);

# 6064
extern volatile unsigned char STKPTR __at(0xFED);

asm("STKPTR equ 0FEDh");


typedef union {
struct {
unsigned STKPTR :5;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFED);

# 6084
extern volatile unsigned char TOSL __at(0xFEE);

asm("TOSL equ 0FEEh");


typedef union {
struct {
unsigned TOSL :8;
};
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __at(0xFEE);

# 6104
extern volatile unsigned char TOSH __at(0xFEF);

asm("TOSH equ 0FEFh");


typedef union {
struct {
unsigned TOSH :7;
};
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __at(0xFEF);

# 6130
extern volatile __bit ABDEN __at(0xCF8);


extern volatile __bit ABDOVF __at(0xCFF);


extern volatile __bit ACKDT __at(0x10B5);


extern volatile __bit ACKEN __at(0x10B4);


extern volatile __bit ACKSTAT __at(0x10B6);


extern volatile __bit ACKTIM __at(0x10BF);


extern volatile __bit ACTEN __at(0x1CDF);


extern volatile __bit ACTIE __at(0x491);


extern volatile __bit ACTIF __at(0x91);


extern volatile __bit ACTLOCK __at(0x1CDB);


extern volatile __bit ACTORS __at(0x1CD9);


extern volatile __bit ACTSRC __at(0x1CDC);


extern volatile __bit ACTUD __at(0x1CDE);


extern volatile __bit ACTVIE __at(0x7492);


extern volatile __bit ACTVIF __at(0x7482);


extern volatile __bit ADCS0 __at(0x4F4);


extern volatile __bit ADCS1 __at(0x4F5);


extern volatile __bit ADCS2 __at(0x4F6);


extern volatile __bit ADDEN __at(0xCEB);


extern volatile __bit ADDR0 __at(0x74B0);


extern volatile __bit ADDR1 __at(0x74B1);


extern volatile __bit ADDR2 __at(0x74B2);


extern volatile __bit ADDR3 __at(0x74B3);


extern volatile __bit ADDR4 __at(0x74B4);


extern volatile __bit ADDR5 __at(0x74B5);


extern volatile __bit ADDR6 __at(0x74B6);


extern volatile __bit ADFM __at(0x4F7);


extern volatile __bit ADFVR0 __at(0x8B8);


extern volatile __bit ADFVR1 __at(0x8B9);


extern volatile __bit ADGO __at(0x4E9);


extern volatile __bit ADIE __at(0x48E);


extern volatile __bit ADIF __at(0x8E);


extern volatile __bit ADON __at(0x4E8);


extern volatile __bit ADPREF0 __at(0x4F0);


extern volatile __bit ADPREF1 __at(0x4F1);


extern volatile __bit AHEN __at(0x10B9);


extern volatile __bit ANSA4 __at(0xC64);


extern volatile __bit ANSB4 __at(0xC6C);


extern volatile __bit ANSB5 __at(0xC6D);


extern volatile __bit ANSC0 __at(0xC70);


extern volatile __bit ANSC1 __at(0xC71);


extern volatile __bit ANSC2 __at(0xC72);


extern volatile __bit ANSC3 __at(0xC73);


extern volatile __bit ANSC6 __at(0xC76);


extern volatile __bit ANSC7 __at(0xC77);


extern volatile __bit BCL1IE __at(0x493);


extern volatile __bit BCL1IF __at(0x93);


extern volatile __bit BF __at(0x10A0);


extern volatile __bit BOEN __at(0x10BC);


extern volatile __bit BORFS __at(0x8B6);


extern volatile __bit BORRDY __at(0x8B0);


extern volatile __bit BRG16 __at(0xCFB);


extern volatile __bit BRGH __at(0xCF2);


extern volatile __bit BSR0 __at(0x40);


extern volatile __bit BSR1 __at(0x41);


extern volatile __bit BSR2 __at(0x42);


extern volatile __bit BSR3 __at(0x43);


extern volatile __bit BSR4 __at(0x44);


extern volatile __bit BTOEE __at(0x74BC);


extern volatile __bit BTOEF __at(0x749C);


extern volatile __bit BTSEE __at(0x74BF);


extern volatile __bit BTSEF __at(0x749F);


extern volatile __bit C1HYS __at(0x889);


extern volatile __bit C1IE __at(0x495);


extern volatile __bit C1IF __at(0x95);


extern volatile __bit C1INTN __at(0x896);


extern volatile __bit C1INTP __at(0x897);


extern volatile __bit C1NCH0 __at(0x890);


extern volatile __bit C1NCH1 __at(0x891);


extern volatile __bit C1NCH2 __at(0x892);


extern volatile __bit C1OE __at(0x88D);


extern volatile __bit C1ON __at(0x88F);


extern volatile __bit C1OUT __at(0x88E);


extern volatile __bit C1PCH0 __at(0x894);


extern volatile __bit C1PCH1 __at(0x895);


extern volatile __bit C1POL __at(0x88C);


extern volatile __bit C1SP __at(0x88A);


extern volatile __bit C1SYNC __at(0x888);


extern volatile __bit C2HYS __at(0x899);


extern volatile __bit C2IE __at(0x496);


extern volatile __bit C2IF __at(0x96);


extern volatile __bit C2INTN __at(0x8A6);


extern volatile __bit C2INTP __at(0x8A7);


extern volatile __bit C2NCH0 __at(0x8A0);


extern volatile __bit C2NCH1 __at(0x8A1);


extern volatile __bit C2NCH2 __at(0x8A2);


extern volatile __bit C2OE __at(0x89D);


extern volatile __bit C2ON __at(0x89F);


extern volatile __bit C2OUT __at(0x89E);


extern volatile __bit C2PCH0 __at(0x8A4);


extern volatile __bit C2PCH1 __at(0x8A5);


extern volatile __bit C2POL __at(0x89C);


extern volatile __bit C2SP __at(0x89A);


extern volatile __bit C2SYNC __at(0x898);


extern volatile __bit CARRY __at(0x18);


extern volatile __bit CDAFVR0 __at(0x8BA);


extern volatile __bit CDAFVR1 __at(0x8BB);


extern volatile __bit CFGS __at(0xCAE);


extern volatile __bit CHS0 __at(0x4EA);


extern volatile __bit CHS1 __at(0x4EB);


extern volatile __bit CHS2 __at(0x4EC);


extern volatile __bit CHS3 __at(0x4ED);


extern volatile __bit CHS4 __at(0x4EE);


extern volatile __bit CKE __at(0x10A6);


extern volatile __bit CKP __at(0x10AC);


extern volatile __bit CLKRCD0 __at(0x1CD3);


extern volatile __bit CLKRCD1 __at(0x1CD4);


extern volatile __bit CLKRDIV0 __at(0x1CD0);


extern volatile __bit CLKRDIV1 __at(0x1CD1);


extern volatile __bit CLKRDIV2 __at(0x1CD2);


extern volatile __bit CLKREN __at(0x1CD7);


extern volatile __bit CLKROE __at(0x1CD6);


extern volatile __bit CLKRSEL __at(0x8EF);


extern volatile __bit CLKRSLR __at(0x1CD5);


extern volatile __bit CRC16EE __at(0x74BA);


extern volatile __bit CRC16EF __at(0x749A);


extern volatile __bit CRC5EE __at(0x74B9);


extern volatile __bit CRC5EF __at(0x7499);


extern volatile __bit CREN __at(0xCEC);


extern volatile __bit CSRC __at(0xCF7);


extern volatile __bit CWG1DBF0 __at(0x3490);


extern volatile __bit CWG1DBF1 __at(0x3491);


extern volatile __bit CWG1DBF2 __at(0x3492);


extern volatile __bit CWG1DBF3 __at(0x3493);


extern volatile __bit CWG1DBF4 __at(0x3494);


extern volatile __bit CWG1DBF5 __at(0x3495);


extern volatile __bit CWG1DBR0 __at(0x3488);


extern volatile __bit CWG1DBR1 __at(0x3489);


extern volatile __bit CWG1DBR2 __at(0x348A);


extern volatile __bit CWG1DBR3 __at(0x348B);


extern volatile __bit CWG1DBR4 __at(0x348C);


extern volatile __bit CWG1DBR5 __at(0x348D);


extern volatile __bit D1PSS0 __at(0x8C2);


extern volatile __bit D1PSS1 __at(0x8C3);


extern volatile __bit DACEN __at(0x8C7);


extern volatile __bit DACOE1 __at(0x8C5);


extern volatile __bit DACOE2 __at(0x8C4);


extern volatile __bit DACR0 __at(0x8C8);


extern volatile __bit DACR1 __at(0x8C9);


extern volatile __bit DACR2 __at(0x8CA);


extern volatile __bit DACR3 __at(0x8CB);


extern volatile __bit DACR4 __at(0x8CC);


extern volatile __bit DFN8EE __at(0x74BB);


extern volatile __bit DFN8EF __at(0x749B);


extern volatile __bit DHEN __at(0x10B8);


extern volatile __bit DIR __at(0x747A);


extern volatile __bit D_nA __at(0x10A5);


extern volatile __bit ENDP0 __at(0x747B);


extern volatile __bit ENDP1 __at(0x747C);


extern volatile __bit ENDP2 __at(0x747D);


extern volatile __bit ENDP3 __at(0x747E);


extern volatile __bit FERR __at(0xCEA);


extern volatile __bit FREE __at(0xCAC);


extern volatile __bit FRM0 __at(0x74A8);


extern volatile __bit FRM1 __at(0x74A9);


extern volatile __bit FRM10 __at(0x74A2);


extern volatile __bit FRM2 __at(0x74AA);


extern volatile __bit FRM3 __at(0x74AB);


extern volatile __bit FRM4 __at(0x74AC);


extern volatile __bit FRM5 __at(0x74AD);


extern volatile __bit FRM6 __at(0x74AE);


extern volatile __bit FRM7 __at(0x74AF);


extern volatile __bit FRM8 __at(0x74A0);


extern volatile __bit FRM9 __at(0x74A1);


extern volatile __bit FSEN __at(0x748A);


extern volatile __bit FVREN __at(0x8BF);


extern volatile __bit FVRRDY __at(0x8BE);


extern volatile __bit G1ARSEN __at(0x34AE);


extern volatile __bit G1ASDLA0 __at(0x34A4);


extern volatile __bit G1ASDLA1 __at(0x34A5);


extern volatile __bit G1ASDLB0 __at(0x34A6);


extern volatile __bit G1ASDLB1 __at(0x34A7);


extern volatile __bit G1ASDSC1 __at(0x34AA);


extern volatile __bit G1ASDSC2 __at(0x34AB);


extern volatile __bit G1ASDSFLT __at(0x34A9);


extern volatile __bit G1ASE __at(0x34AF);


extern volatile __bit G1CS0 __at(0x3498);


extern volatile __bit G1EN __at(0x349F);


extern volatile __bit G1IS0 __at(0x34A0);


extern volatile __bit G1IS1 __at(0x34A1);


extern volatile __bit G1OEA __at(0x349D);


extern volatile __bit G1OEB __at(0x349E);


extern volatile __bit G1POLA __at(0x349B);


extern volatile __bit G1POLB __at(0x349C);


extern volatile __bit GCEN __at(0x10B7);


extern volatile __bit GIE __at(0x5F);


extern volatile __bit GO __at(0x4E9);


extern volatile __bit GO_nDONE __at(0x4E9);


extern volatile __bit HFIOFR __at(0x4D4);


extern volatile __bit HFIOFS __at(0x4D0);


extern volatile __bit IDLEIE __at(0x7494);


extern volatile __bit IDLEIF __at(0x7484);


extern volatile __bit INTE __at(0x5C);


extern volatile __bit INTEDG __at(0x4AE);


extern volatile __bit INTF __at(0x59);


extern volatile __bit IOCAF0 __at(0x1C98);


extern volatile __bit IOCAF1 __at(0x1C99);


extern volatile __bit IOCAF3 __at(0x1C9B);


extern volatile __bit IOCAF4 __at(0x1C9C);


extern volatile __bit IOCAF5 __at(0x1C9D);


extern volatile __bit IOCAN0 __at(0x1C90);


extern volatile __bit IOCAN1 __at(0x1C91);


extern volatile __bit IOCAN3 __at(0x1C93);


extern volatile __bit IOCAN4 __at(0x1C94);


extern volatile __bit IOCAN5 __at(0x1C95);


extern volatile __bit IOCAP0 __at(0x1C88);


extern volatile __bit IOCAP1 __at(0x1C89);


extern volatile __bit IOCAP3 __at(0x1C8B);


extern volatile __bit IOCAP4 __at(0x1C8C);


extern volatile __bit IOCAP5 __at(0x1C8D);


extern volatile __bit IOCBF4 __at(0x1CB4);


extern volatile __bit IOCBF5 __at(0x1CB5);


extern volatile __bit IOCBF6 __at(0x1CB6);


extern volatile __bit IOCBF7 __at(0x1CB7);


extern volatile __bit IOCBN4 __at(0x1CAC);


extern volatile __bit IOCBN5 __at(0x1CAD);


extern volatile __bit IOCBN6 __at(0x1CAE);


extern volatile __bit IOCBN7 __at(0x1CAF);


extern volatile __bit IOCBP4 __at(0x1CA4);


extern volatile __bit IOCBP5 __at(0x1CA5);


extern volatile __bit IOCBP6 __at(0x1CA6);


extern volatile __bit IOCBP7 __at(0x1CA7);


extern volatile __bit IOCIE __at(0x5B);


extern volatile __bit IOCIF __at(0x58);


extern volatile __bit IRCF0 __at(0x4CA);


extern volatile __bit IRCF1 __at(0x4CB);


extern volatile __bit IRCF2 __at(0x4CC);


extern volatile __bit IRCF3 __at(0x4CD);


extern volatile __bit LATA4 __at(0x864);


extern volatile __bit LATA5 __at(0x865);


extern volatile __bit LATB4 __at(0x86C);


extern volatile __bit LATB5 __at(0x86D);


extern volatile __bit LATB6 __at(0x86E);


extern volatile __bit LATB7 __at(0x86F);


extern volatile __bit LATC0 __at(0x870);


extern volatile __bit LATC1 __at(0x871);


extern volatile __bit LATC2 __at(0x872);


extern volatile __bit LATC3 __at(0x873);


extern volatile __bit LATC4 __at(0x874);


extern volatile __bit LATC5 __at(0x875);


extern volatile __bit LATC6 __at(0x876);


extern volatile __bit LATC7 __at(0x877);


extern volatile __bit LFIOFR __at(0x4D1);


extern volatile __bit LWLO __at(0xCAD);


extern volatile __bit MC1OUT __at(0x8A8);


extern volatile __bit MC2OUT __at(0x8A9);


extern volatile __bit OERR __at(0xCE9);


extern volatile __bit OSFIE __at(0x497);


extern volatile __bit OSFIF __at(0x97);


extern volatile __bit OSTS __at(0x4D5);


extern volatile __bit PCIE __at(0x10BE);


extern volatile __bit PEIE __at(0x5E);


extern volatile __bit PEN __at(0x10B2);


extern volatile __bit PIDEE __at(0x74B8);


extern volatile __bit PIDEF __at(0x7498);


extern volatile __bit PKTDIS __at(0x7474);


extern volatile __bit PLLRDY __at(0x4D6);


extern volatile __bit PPB0 __at(0x7488);


extern volatile __bit PPB1 __at(0x7489);


extern volatile __bit PPBI __at(0x7479);


extern volatile __bit PPBRST __at(0x7476);


extern volatile __bit PS0 __at(0x4A8);


extern volatile __bit PS1 __at(0x4A9);


extern volatile __bit PS2 __at(0x4AA);


extern volatile __bit PSA __at(0x4AB);


extern volatile __bit PWM1DCH0 __at(0x3090);


extern volatile __bit PWM1DCH1 __at(0x3091);


extern volatile __bit PWM1DCH2 __at(0x3092);


extern volatile __bit PWM1DCH3 __at(0x3093);


extern volatile __bit PWM1DCH4 __at(0x3094);


extern volatile __bit PWM1DCH5 __at(0x3095);


extern volatile __bit PWM1DCH6 __at(0x3096);


extern volatile __bit PWM1DCH7 __at(0x3097);


extern volatile __bit PWM1DCL0 __at(0x308E);


extern volatile __bit PWM1DCL1 __at(0x308F);


extern volatile __bit PWM1EN __at(0x309F);


extern volatile __bit PWM1OE __at(0x309E);


extern volatile __bit PWM1OUT __at(0x309D);


extern volatile __bit PWM1POL __at(0x309C);


extern volatile __bit PWM2DCH0 __at(0x30A8);


extern volatile __bit PWM2DCH1 __at(0x30A9);


extern volatile __bit PWM2DCH2 __at(0x30AA);


extern volatile __bit PWM2DCH3 __at(0x30AB);


extern volatile __bit PWM2DCH4 __at(0x30AC);


extern volatile __bit PWM2DCH5 __at(0x30AD);


extern volatile __bit PWM2DCH6 __at(0x30AE);


extern volatile __bit PWM2DCH7 __at(0x30AF);


extern volatile __bit PWM2DCL0 __at(0x30A6);


extern volatile __bit PWM2DCL1 __at(0x30A7);


extern volatile __bit PWM2EN __at(0x30B7);


extern volatile __bit PWM2OE __at(0x30B6);


extern volatile __bit PWM2OUT __at(0x30B5);


extern volatile __bit PWM2POL __at(0x30B4);


extern volatile __bit RA0 __at(0x60);


extern volatile __bit RA1 __at(0x61);


extern volatile __bit RA3 __at(0x63);


extern volatile __bit RA4 __at(0x64);


extern volatile __bit RA5 __at(0x65);


extern volatile __bit RB4 __at(0x6C);


extern volatile __bit RB5 __at(0x6D);


extern volatile __bit RB6 __at(0x6E);


extern volatile __bit RB7 __at(0x6F);


extern volatile __bit RC0 __at(0x70);


extern volatile __bit RC1 __at(0x71);


extern volatile __bit RC2 __at(0x72);


extern volatile __bit RC3 __at(0x73);


extern volatile __bit RC4 __at(0x74);


extern volatile __bit RC5 __at(0x75);


extern volatile __bit RC6 __at(0x76);


extern volatile __bit RC7 __at(0x77);


extern volatile __bit RCEN __at(0x10B3);


extern volatile __bit RCIDL __at(0xCFE);


extern volatile __bit RCIE __at(0x48D);


extern volatile __bit RCIF __at(0x8D);


extern volatile __bit RD __at(0xCA8);


extern volatile __bit RESUME __at(0x7472);


extern volatile __bit RSEN __at(0x10B1);


extern volatile __bit RX9 __at(0xCEE);


extern volatile __bit RX9D __at(0xCE8);


extern volatile __bit R_nW __at(0x10A2);


extern volatile __bit SBCDE __at(0x10BA);


extern volatile __bit SBOREN __at(0x8B7);


extern volatile __bit SCIE __at(0x10BD);


extern volatile __bit SCKP __at(0xCFC);


extern volatile __bit SCS0 __at(0x4C8);


extern volatile __bit SCS1 __at(0x4C9);


extern volatile __bit SDAHT __at(0x10BB);


extern volatile __bit SE0 __at(0x7475);


extern volatile __bit SEN __at(0x10B0);


extern volatile __bit SENDB __at(0xCF3);


extern volatile __bit SMP __at(0x10A7);


extern volatile __bit SOFIE __at(0x7496);


extern volatile __bit SOFIF __at(0x7486);


extern volatile __bit SOSCR __at(0x4D7);


extern volatile __bit SPEN __at(0xCEF);


extern volatile __bit SPLLEN __at(0x4CF);


extern volatile __bit SPLLMULT __at(0x4CE);


extern volatile __bit SREN __at(0xCED);


extern volatile __bit SSP1EN __at(0x10AD);


extern volatile __bit SSP1IE __at(0x48B);


extern volatile __bit SSP1IF __at(0x8B);


extern volatile __bit SSP1M0 __at(0x10A8);


extern volatile __bit SSP1M1 __at(0x10A9);


extern volatile __bit SSP1M2 __at(0x10AA);


extern volatile __bit SSP1M3 __at(0x10AB);


extern volatile __bit SSP1OV __at(0x10AE);


extern volatile __bit SSPEN __at(0x10AD);


extern volatile __bit SSPOV __at(0x10AE);


extern volatile __bit SSSEL __at(0x8ED);


extern volatile __bit STALLIE __at(0x7495);


extern volatile __bit STALLIF __at(0x7485);


extern volatile __bit STKOVF __at(0x4B7);


extern volatile __bit STKUNF __at(0x4B6);


extern volatile __bit SUSPND __at(0x7471);


extern volatile __bit SWDTEN __at(0x4B8);


extern volatile __bit SYNC __at(0xCF4);


extern volatile __bit T0CS __at(0x4AD);


extern volatile __bit T0IE __at(0x5D);


extern volatile __bit T0IF __at(0x5A);


extern volatile __bit T0SE __at(0x4AC);


extern volatile __bit T1CKPS0 __at(0xC4);


extern volatile __bit T1CKPS1 __at(0xC5);


extern volatile __bit T1GGO_nDONE __at(0xCB);


extern volatile __bit T1GPOL __at(0xCE);


extern volatile __bit T1GSEL __at(0x8EB);


extern volatile __bit T1GSPM __at(0xCC);


extern volatile __bit T1GSS0 __at(0xC8);


extern volatile __bit T1GSS1 __at(0xC9);


extern volatile __bit T1GTM __at(0xCD);


extern volatile __bit T1GVAL __at(0xCA);


extern volatile __bit T1OSCEN __at(0xC3);


extern volatile __bit T2CKPS0 __at(0xE0);


extern volatile __bit T2CKPS1 __at(0xE1);


extern volatile __bit T2OUTPS0 __at(0xE3);


extern volatile __bit T2OUTPS1 __at(0xE4);


extern volatile __bit T2OUTPS2 __at(0xE5);


extern volatile __bit T2OUTPS3 __at(0xE6);


extern volatile __bit TMR0CS __at(0x4AD);


extern volatile __bit TMR0IE __at(0x5D);


extern volatile __bit TMR0IF __at(0x5A);


extern volatile __bit TMR0SE __at(0x4AC);


extern volatile __bit TMR1CS0 __at(0xC6);


extern volatile __bit TMR1CS1 __at(0xC7);


extern volatile __bit TMR1GE __at(0xCF);


extern volatile __bit TMR1GIE __at(0x48F);


extern volatile __bit TMR1GIF __at(0x8F);


extern volatile __bit TMR1IE __at(0x488);


extern volatile __bit TMR1IF __at(0x88);


extern volatile __bit TMR1ON __at(0xC0);


extern volatile __bit TMR2IE __at(0x489);


extern volatile __bit TMR2IF __at(0x89);


extern volatile __bit TMR2ON __at(0xE2);


extern volatile __bit TRIGSEL0 __at(0x4FC);


extern volatile __bit TRIGSEL1 __at(0x4FD);


extern volatile __bit TRIGSEL2 __at(0x4FE);


extern volatile __bit TRISA4 __at(0x464);


extern volatile __bit TRISA5 __at(0x465);


extern volatile __bit TRISB4 __at(0x46C);


extern volatile __bit TRISB5 __at(0x46D);


extern volatile __bit TRISB6 __at(0x46E);


extern volatile __bit TRISB7 __at(0x46F);


extern volatile __bit TRISC0 __at(0x470);


extern volatile __bit TRISC1 __at(0x471);


extern volatile __bit TRISC2 __at(0x472);


extern volatile __bit TRISC3 __at(0x473);


extern volatile __bit TRISC4 __at(0x474);


extern volatile __bit TRISC5 __at(0x475);


extern volatile __bit TRISC6 __at(0x476);


extern volatile __bit TRISC7 __at(0x477);


extern volatile __bit TRMT __at(0xCF1);


extern volatile __bit TRNIE __at(0x7493);


extern volatile __bit TRNIF __at(0x7483);


extern volatile __bit TUN0 __at(0x4C0);


extern volatile __bit TUN1 __at(0x4C1);


extern volatile __bit TUN2 __at(0x4C2);


extern volatile __bit TUN3 __at(0x4C3);


extern volatile __bit TUN4 __at(0x4C4);


extern volatile __bit TUN5 __at(0x4C5);


extern volatile __bit TUN6 __at(0x4C6);


extern volatile __bit TX9 __at(0xCF6);


extern volatile __bit TX9D __at(0xCF0);


extern volatile __bit TXEN __at(0xCF5);


extern volatile __bit TXIE __at(0x48C);


extern volatile __bit TXIF __at(0x8C);


extern volatile __bit UA __at(0x10A1);


extern volatile __bit UERRIE __at(0x7491);


extern volatile __bit UERRIF __at(0x7481);


extern volatile __bit UPUEN __at(0x748C);


extern volatile __bit URSTIE __at(0x7490);


extern volatile __bit URSTIF __at(0x7480);


extern volatile __bit USBEN __at(0x7473);


extern volatile __bit USBIE __at(0x492);


extern volatile __bit USBIF __at(0x92);


extern volatile __bit UTEYE __at(0x748F);


extern volatile __bit VREGPM0 __at(0xCB8);


extern volatile __bit VREGPM1 __at(0xCB9);


extern volatile __bit WCOL __at(0x10AF);


extern volatile __bit WDTPS0 __at(0x4B9);


extern volatile __bit WDTPS1 __at(0x4BA);


extern volatile __bit WDTPS2 __at(0x4BB);


extern volatile __bit WDTPS3 __at(0x4BC);


extern volatile __bit WDTPS4 __at(0x4BD);


extern volatile __bit WPUA3 __at(0x1063);


extern volatile __bit WPUA4 __at(0x1064);


extern volatile __bit WPUA5 __at(0x1065);


extern volatile __bit WPUB4 __at(0x106C);


extern volatile __bit WPUB5 __at(0x106D);


extern volatile __bit WPUB6 __at(0x106E);


extern volatile __bit WPUB7 __at(0x106F);


extern volatile __bit WR __at(0xCA9);


extern volatile __bit WREN __at(0xCAA);


extern volatile __bit WRERR __at(0xCAB);


extern volatile __bit WUE __at(0xCF9);


extern volatile __bit ZERO __at(0x1A);


extern volatile __bit nBOR __at(0x4B0);


extern volatile __bit nPD __at(0x1B);


extern volatile __bit nPOR __at(0x4B1);


extern volatile __bit nRI __at(0x4B2);


extern volatile __bit nRMCLR __at(0x4B3);


extern volatile __bit nRWDT __at(0x4B4);


extern volatile __bit nT1SYNC __at(0xC2);


extern volatile __bit nTO __at(0x1C);


extern volatile __bit nWPUEN __at(0x4AF);


# 30 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);

# 78
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);


# 91
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);

# 137
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;

# 59 "bsp/leds.c"
void LED_On(LED led)
{
switch(led)
{
case LED_D1:
LATCbits.LATC3 = 0;
break;

case LED_D2:
LATCbits.LATC4 = 0;
break;

case LED_D3:
LATCbits.LATC5 = 0;
break;

case LED_D4:
LATCbits.LATC6 = 0;
break;

case LED_NONE:
break;
}
}

# 100
void LED_Off(LED led)
{
switch(led)
{
case LED_D1:
LATCbits.LATC3 = 1;
break;

case LED_D2:
LATCbits.LATC4 = 1;
break;

case LED_D3:
LATCbits.LATC5 = 1;
break;

case LED_D4:
LATCbits.LATC6 = 1;
break;

case LED_NONE:
break;
}
}

# 141
void LED_Toggle(LED led)
{
switch(led)
{
case LED_D1:
LATCbits.LATC3 ^= 1;
break;

case LED_D2:
LATCbits.LATC4 ^= 1;
break;

case LED_D3:
LATCbits.LATC5 ^= 1;
break;

case LED_D4:
LATCbits.LATC6 ^= 1;
break;

case LED_NONE:
break;
}
}

# 182
bool LED_Get(LED led)
{
switch(led)
{
case LED_D1:
return ( (LATCbits.LATC3 == 0) ? 1 : 0 );

case LED_D2:
return ( (LATCbits.LATC4 == 0) ? 1 : 0 );

case LED_D3:
return ( (LATCbits.LATC5 == 0) ? 1 : 0 );

case LED_D4:
return ( (LATCbits.LATC6 == 0) ? 1 : 0 );

case LED_NONE:
return 0;
}

return 0;
}

# 220
void LED_Enable(LED led)
{
switch(led)
{
case LED_D1:
LED_Off(LED_D1);
TRISCbits.TRISC3 = 0;
break;

case LED_D2:
LED_Off(LED_D2);
TRISCbits.TRISC4 = 0;
break;

case LED_D3:
LED_Off(LED_D3);
TRISCbits.TRISC5 = 0;
break;

case LED_D4:
LED_Off(LED_D4);
TRISCbits.TRISC6 = 0;
break;

case LED_NONE:
break;
}
}
