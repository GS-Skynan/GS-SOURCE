# 1 "mcc_generated_files/tmr1.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 294 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 1 3
# 29 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 3
// set _HTC_EDITION_ and _XC8_MODE_ macros for backwards compatibility
# 2 "<built-in>" 2
# 1 "mcc_generated_files/tmr1.c" 2
# 51 "mcc_generated_files/tmr1.c"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *, char **);
double strtod (const char *, char **);
long double strtold (const char *, char **);



long strtol (const char *, char **, int);
unsigned long strtoul (const char *, char **, int);

long long strtoll (const char *, char **, int);
unsigned long long strtoull (const char *, char **, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned short uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef short intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 2 3

// builtin version of nop
#pragma intrinsic(__nop)
extern void __nop(void);
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 3
// builtin delay functions
#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);


// NOTE: To use the macros below, YOU must have previously defined _XTAL_FREQ
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3



# 1 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 5 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 2 3






# 1 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic_chip_select.h" 1 3
// Generated 22/01/2025 GMT
# 589 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic_chip_select.h" 3
# 1 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 1 3
// Generated 22/01/2025 GMT
# 48 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: INDF0

extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");

// bitfield definitions
typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
// bitfield macros






// Register: INDF1

extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");

// bitfield definitions
typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
// bitfield macros






// Register: PCL

extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");

// bitfield definitions
typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
// bitfield macros






// Register: STATUS

extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");

// bitfield definitions
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
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
// bitfield macros
# 167 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: FSR0

extern volatile unsigned short FSR0 __attribute__((address(0x004)));

// Register: FSR0L

extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
// bitfield macros






// Register: FSR0H

extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
// bitfield macros






// Register: FSR1

extern volatile unsigned short FSR1 __attribute__((address(0x006)));

// Register: FSR1L

extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
// bitfield macros






// Register: FSR1H

extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
// bitfield macros






// Register: BSR

extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");

// bitfield definitions
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
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
// bitfield macros
# 307 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WREG

extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");

// bitfield definitions
typedef union {
    struct {
        unsigned WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
// bitfield macros






// Register: PCLATH

extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
// bitfield macros






// Register: INTCON

extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned INTEDG :1;
        unsigned :5;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
// bitfield macros
# 380 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PORTA

extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
// bitfield macros
# 442 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PORTB

extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
// bitfield macros
# 504 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PORTC

extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");

// bitfield definitions
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
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
// bitfield macros
# 566 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PORTE

extern volatile unsigned char PORTE __attribute__((address(0x010)));

__asm("PORTE equ 010h");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned RE3 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x010)));
// bitfield macros






// Register: TRISA

extern volatile unsigned char TRISA __attribute__((address(0x011)));

__asm("TRISA equ 011h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x011)));
// bitfield macros
# 649 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TRISB

extern volatile unsigned char TRISB __attribute__((address(0x012)));

__asm("TRISB equ 012h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x012)));
// bitfield macros
# 711 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TRISC

extern volatile unsigned char TRISC __attribute__((address(0x013)));

__asm("TRISC equ 013h");

// bitfield definitions
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
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x013)));
// bitfield macros
# 773 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: LATA

extern volatile unsigned char LATA __attribute__((address(0x016)));

__asm("LATA equ 016h");

// bitfield definitions
typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x016)));
// bitfield macros
# 835 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: LATB

extern volatile unsigned char LATB __attribute__((address(0x017)));

__asm("LATB equ 017h");

// bitfield definitions
typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x017)));
// bitfield macros
# 897 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: LATC

extern volatile unsigned char LATC __attribute__((address(0x018)));

__asm("LATC equ 018h");

// bitfield definitions
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
extern volatile LATCbits_t LATCbits __attribute__((address(0x018)));
// bitfield macros
# 959 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR0L

extern volatile unsigned char TMR0L __attribute__((address(0x01C)));

__asm("TMR0L equ 01Ch");

// aliases
extern volatile unsigned char TMR0 __attribute__((address(0x01C)));

__asm("TMR0 equ 01Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR0L :8;
    };
    struct {
        unsigned TMR0L0 :1;
        unsigned TMR0L1 :1;
        unsigned TMR0L2 :1;
        unsigned TMR0L3 :1;
        unsigned TMR0L4 :1;
        unsigned TMR0L5 :1;
        unsigned TMR0L6 :1;
        unsigned TMR0L7 :1;
    };
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __attribute__((address(0x01C)));
// bitfield macros
# 1033 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned TMR0L :8;
    };
    struct {
        unsigned TMR0L0 :1;
        unsigned TMR0L1 :1;
        unsigned TMR0L2 :1;
        unsigned TMR0L3 :1;
        unsigned TMR0L4 :1;
        unsigned TMR0L5 :1;
        unsigned TMR0L6 :1;
        unsigned TMR0L7 :1;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x01C)));
// bitfield macros
# 1097 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR0H

extern volatile unsigned char TMR0H __attribute__((address(0x01D)));

__asm("TMR0H equ 01Dh");

// aliases
extern volatile unsigned char PR0 __attribute__((address(0x01D)));

__asm("PR0 equ 01Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR0H :8;
    };
    struct {
        unsigned T0PR :8;
    };
    struct {
        unsigned TMR0H0 :1;
        unsigned TMR0H1 :1;
        unsigned TMR0H2 :1;
        unsigned TMR0H3 :1;
        unsigned TMR0H4 :1;
        unsigned TMR0H5 :1;
        unsigned TMR0H6 :1;
        unsigned TMR0H7 :1;
    };
    struct {
        unsigned T0PR0 :1;
        unsigned T0PR1 :1;
        unsigned T0PR2 :1;
        unsigned T0PR3 :1;
        unsigned T0PR4 :1;
        unsigned T0PR5 :1;
        unsigned T0PR6 :1;
        unsigned T0PR7 :1;
    };
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __attribute__((address(0x01D)));
// bitfield macros
# 1229 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned TMR0H :8;
    };
    struct {
        unsigned T0PR :8;
    };
    struct {
        unsigned TMR0H0 :1;
        unsigned TMR0H1 :1;
        unsigned TMR0H2 :1;
        unsigned TMR0H3 :1;
        unsigned TMR0H4 :1;
        unsigned TMR0H5 :1;
        unsigned TMR0H6 :1;
        unsigned TMR0H7 :1;
    };
    struct {
        unsigned T0PR0 :1;
        unsigned T0PR1 :1;
        unsigned T0PR2 :1;
        unsigned T0PR3 :1;
        unsigned T0PR4 :1;
        unsigned T0PR5 :1;
        unsigned T0PR6 :1;
        unsigned T0PR7 :1;
    };
} PR0bits_t;
extern volatile PR0bits_t PR0bits __attribute__((address(0x01D)));
// bitfield macros
# 1351 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T0CON0

extern volatile unsigned char T0CON0 __attribute__((address(0x01E)));

__asm("T0CON0 equ 01Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned T0OUTPS :4;
        unsigned T016BIT :1;
        unsigned T0OUT :1;
        unsigned :1;
        unsigned T0EN :1;
    };
    struct {
        unsigned T0OUTPS0 :1;
        unsigned T0OUTPS1 :1;
        unsigned T0OUTPS2 :1;
        unsigned T0OUTPS3 :1;
    };
} T0CON0bits_t;
extern volatile T0CON0bits_t T0CON0bits __attribute__((address(0x01E)));
// bitfield macros
# 1416 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T0CON1

extern volatile unsigned char T0CON1 __attribute__((address(0x01F)));

__asm("T0CON1 equ 01Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned T0CKPS :4;
        unsigned T0ASYNC :1;
        unsigned T0CS :3;
    };
    struct {
        unsigned T0CKPS0 :1;
        unsigned T0CKPS1 :1;
        unsigned T0CKPS2 :1;
        unsigned T0CKPS3 :1;
        unsigned :1;
        unsigned T0CS0 :1;
        unsigned T0CS1 :1;
        unsigned T0CS2 :1;
    };
    struct {
        unsigned T0PS0 :1;
        unsigned T0PS1 :1;
        unsigned T0PS2 :1;
        unsigned T0PS3 :1;
    };
    struct {
        unsigned T0PS :4;
    };
} T0CON1bits_t;
extern volatile T0CON1bits_t T0CON1bits __attribute__((address(0x01F)));
// bitfield macros
# 1527 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADRES

extern volatile unsigned short ADRES __attribute__((address(0x08C)));

__asm("ADRES equ 08Ch");


// Register: ADRESL

extern volatile unsigned char ADRESL __attribute__((address(0x08C)));

__asm("ADRESL equ 08Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x08C)));
// bitfield macros






// Register: ADRESH

extern volatile unsigned char ADRESH __attribute__((address(0x08D)));

__asm("ADRESH equ 08Dh");


// Register: ADPREV

extern volatile unsigned short ADPREV __attribute__((address(0x08E)));

__asm("ADPREV equ 08Eh");


// Register: ADPREVL

extern volatile unsigned char ADPREVL __attribute__((address(0x08E)));

__asm("ADPREVL equ 08Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADPREVL :8;
    };
    struct {
        unsigned ADPREV0 :1;
        unsigned ADPREV1 :1;
        unsigned ADPREV2 :1;
        unsigned ADPREV3 :1;
        unsigned ADPREV4 :1;
        unsigned ADPREV5 :1;
        unsigned ADPREV6 :1;
        unsigned ADPREV7 :1;
    };
} ADPREVLbits_t;
extern volatile ADPREVLbits_t ADPREVLbits __attribute__((address(0x08E)));
// bitfield macros
# 1638 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADPREVH

extern volatile unsigned char ADPREVH __attribute__((address(0x08F)));

__asm("ADPREVH equ 08Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADPREVH :8;
    };
    struct {
        unsigned ADPREV8 :1;
        unsigned ADPREV9 :1;
        unsigned ADPREV10 :1;
        unsigned ADPREV11 :1;
        unsigned ADPREV12 :1;
        unsigned ADPREV13 :1;
        unsigned ADPREV14 :1;
        unsigned ADPREV15 :1;
    };
} ADPREVHbits_t;
extern volatile ADPREVHbits_t ADPREVHbits __attribute__((address(0x08F)));
// bitfield macros
# 1708 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADACC

extern volatile unsigned short ADACC __attribute__((address(0x090)));

__asm("ADACC equ 090h");


// Register: ADACCL

extern volatile unsigned char ADACCL __attribute__((address(0x090)));

__asm("ADACCL equ 090h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADACCL :8;
    };
    struct {
        unsigned ADACC0 :1;
        unsigned ADACC1 :1;
        unsigned ADACC2 :1;
        unsigned ADACC3 :1;
        unsigned ADACC4 :1;
        unsigned ADACC5 :1;
        unsigned ADACC6 :1;
        unsigned ADACC7 :1;
    };
} ADACCLbits_t;
extern volatile ADACCLbits_t ADACCLbits __attribute__((address(0x090)));
// bitfield macros
# 1785 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADACCH

extern volatile unsigned char ADACCH __attribute__((address(0x091)));

__asm("ADACCH equ 091h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADACCH :8;
    };
    struct {
        unsigned ADACC8 :1;
        unsigned ADACC9 :1;
        unsigned ADACC10 :1;
        unsigned ADACC11 :1;
        unsigned ADACC12 :1;
        unsigned ADACC13 :1;
        unsigned ADACC14 :1;
        unsigned ADACC15 :1;
    };
} ADACCHbits_t;
extern volatile ADACCHbits_t ADACCHbits __attribute__((address(0x091)));
// bitfield macros
# 1855 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCON0

extern volatile unsigned char ADCON0 __attribute__((address(0x093)));

__asm("ADCON0 equ 093h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADGO :1;
        unsigned :1;
        unsigned ADFM :2;
        unsigned ADCS :1;
        unsigned :1;
        unsigned ADCONT :1;
        unsigned ADON :1;
    };
    struct {
        unsigned DONE :1;
        unsigned :1;
        unsigned ADFRM :2;
    };
    struct {
        unsigned nDONE :1;
    };
    struct {
        unsigned GO :1;
        unsigned :1;
        unsigned ADFM0 :1;
        unsigned ADFM1 :1;
    };
    struct {
        unsigned GO_nDONE :1;
        unsigned :1;
        unsigned ADFRM0 :1;
        unsigned ADFRM1 :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x093)));
// bitfield macros
# 1966 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCON1

extern volatile unsigned char ADCON1 __attribute__((address(0x094)));

__asm("ADCON1 equ 094h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADDSEN :1;
        unsigned :4;
        unsigned ADGPOL :1;
        unsigned ADIPEN :1;
        unsigned ADPPOL :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x094)));
// bitfield macros
# 2005 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCON2

extern volatile unsigned char ADCON2 __attribute__((address(0x095)));

__asm("ADCON2 equ 095h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADMD :3;
        unsigned ADACLR :1;
        unsigned ADCRS :3;
        unsigned ADPSIS :1;
    };
    struct {
        unsigned ADMD0 :1;
        unsigned ADMD1 :1;
        unsigned ADMD2 :1;
        unsigned :1;
        unsigned ADCRS0 :1;
        unsigned ADCRS1 :1;
        unsigned ADCRS2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x095)));
// bitfield macros
# 2082 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCON3

extern volatile unsigned char ADCON3 __attribute__((address(0x096)));

__asm("ADCON3 equ 096h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADTMD0 :1;
        unsigned ADTMD1 :1;
        unsigned ADTMD2 :1;
        unsigned :1;
        unsigned ADCALC0 :1;
        unsigned ADCALC1 :1;
        unsigned ADCALC2 :1;
    };
    struct {
        unsigned ADTMD :3;
        unsigned ADSOI :1;
        unsigned ADCALC :3;
    };
} ADCON3bits_t;
extern volatile ADCON3bits_t ADCON3bits __attribute__((address(0x096)));
// bitfield macros
# 2153 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADSTAT

extern volatile unsigned char ADSTAT __attribute__((address(0x097)));

__asm("ADSTAT equ 097h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADSTAT :3;
        unsigned ADMACT :1;
        unsigned ADMATH :1;
        unsigned ADLTHR :1;
        unsigned ADUTHR :1;
        unsigned ADAOV :1;
    };
    struct {
        unsigned ADSTAT0 :1;
        unsigned ADSTAT1 :1;
        unsigned ADSTAT2 :1;
    };
} ADSTATbits_t;
extern volatile ADSTATbits_t ADSTATbits __attribute__((address(0x097)));
// bitfield macros
# 2223 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCLK

extern volatile unsigned char ADCLK __attribute__((address(0x098)));

__asm("ADCLK equ 098h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADCCS :6;
    };
    struct {
        unsigned ADCCS0 :1;
        unsigned ADCCS1 :1;
        unsigned ADCCS2 :1;
        unsigned ADCCS3 :1;
        unsigned ADCCS4 :1;
        unsigned ADCCS5 :1;
    };
} ADCLKbits_t;
extern volatile ADCLKbits_t ADCLKbits __attribute__((address(0x098)));
// bitfield macros
# 2281 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADACT

extern volatile unsigned char ADACT __attribute__((address(0x099)));

__asm("ADACT equ 099h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADACT :5;
    };
    struct {
        unsigned ADACT0 :1;
        unsigned ADACT1 :1;
        unsigned ADACT2 :1;
        unsigned ADACT3 :1;
        unsigned ADACT4 :1;
    };
} ADACTbits_t;
extern volatile ADACTbits_t ADACTbits __attribute__((address(0x099)));
// bitfield macros
# 2333 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADREF

extern volatile unsigned char ADREF __attribute__((address(0x09A)));

__asm("ADREF equ 09Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned ADPREF :2;
        unsigned :2;
        unsigned ADNREF :1;
    };
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
    };
} ADREFbits_t;
extern volatile ADREFbits_t ADREFbits __attribute__((address(0x09A)));
// bitfield macros
# 2374 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCAP

extern volatile unsigned char ADCAP __attribute__((address(0x09B)));

__asm("ADCAP equ 09Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADCAP :5;
    };
    struct {
        unsigned ADCAP0 :1;
        unsigned ADCAP1 :1;
        unsigned ADCAP2 :1;
        unsigned ADCAP3 :1;
        unsigned ADCAP4 :1;
    };
} ADCAPbits_t;
extern volatile ADCAPbits_t ADCAPbits __attribute__((address(0x09B)));
// bitfield macros
# 2426 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADPRE

extern volatile unsigned char ADPRE __attribute__((address(0x09C)));

__asm("ADPRE equ 09Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned ADPRE :8;
    };
    struct {
        unsigned ADPRE0 :1;
        unsigned ADPRE1 :1;
        unsigned ADPRE2 :1;
        unsigned ADPRE3 :1;
        unsigned ADPRE4 :1;
        unsigned ADPRE5 :1;
        unsigned ADPRE6 :1;
        unsigned ADPRE7 :1;
    };
} ADPREbits_t;
extern volatile ADPREbits_t ADPREbits __attribute__((address(0x09C)));
// bitfield macros
# 2496 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADACQ

extern volatile unsigned char ADACQ __attribute__((address(0x09D)));

__asm("ADACQ equ 09Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADACQ :8;
    };
    struct {
        unsigned ADACQ0 :1;
        unsigned ADACQ1 :1;
        unsigned ADACQ2 :1;
        unsigned ADACQ3 :1;
        unsigned ADACQ4 :1;
        unsigned ADACQ5 :1;
        unsigned ADACQ6 :1;
        unsigned ADACQ7 :1;
    };
} ADACQbits_t;
extern volatile ADACQbits_t ADACQbits __attribute__((address(0x09D)));
// bitfield macros
# 2566 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADPCH

extern volatile unsigned char ADPCH __attribute__((address(0x09E)));

__asm("ADPCH equ 09Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADPCH :6;
    };
    struct {
        unsigned ADPCH0 :1;
        unsigned ADPCH1 :1;
        unsigned ADPCH2 :1;
        unsigned ADPCH3 :1;
        unsigned ADPCH4 :1;
        unsigned ADPCH5 :1;
    };
} ADPCHbits_t;
extern volatile ADPCHbits_t ADPCHbits __attribute__((address(0x09E)));
// bitfield macros
# 2624 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCNT

extern volatile unsigned char ADCNT __attribute__((address(0x10C)));

__asm("ADCNT equ 010Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned ADCNT :8;
    };
    struct {
        unsigned ADCNT0 :1;
        unsigned ADCNT1 :1;
        unsigned ADCNT2 :1;
        unsigned ADCNT3 :1;
        unsigned ADCNT4 :1;
        unsigned ADCNT5 :1;
        unsigned ADCNT6 :1;
        unsigned ADCNT7 :1;
    };
} ADCNTbits_t;
extern volatile ADCNTbits_t ADCNTbits __attribute__((address(0x10C)));
// bitfield macros
# 2694 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADRPT

extern volatile unsigned char ADRPT __attribute__((address(0x10D)));

__asm("ADRPT equ 010Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADRPT :8;
    };
    struct {
        unsigned ADRPT0 :1;
        unsigned ADRPT1 :1;
        unsigned ADRPT2 :1;
        unsigned ADRPT3 :1;
        unsigned ADRPT4 :1;
        unsigned ADRPT5 :1;
        unsigned ADRPT6 :1;
        unsigned ADRPT7 :1;
    };
} ADRPTbits_t;
extern volatile ADRPTbits_t ADRPTbits __attribute__((address(0x10D)));
// bitfield macros
# 2764 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADLTH

extern volatile unsigned short ADLTH __attribute__((address(0x10E)));

__asm("ADLTH equ 010Eh");


// Register: ADLTHL

extern volatile unsigned char ADLTHL __attribute__((address(0x10E)));

__asm("ADLTHL equ 010Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADLTHL :8;
    };
    struct {
        unsigned ADLTH0 :1;
        unsigned ADLTH1 :1;
        unsigned ADLTH2 :1;
        unsigned ADLTH3 :1;
        unsigned ADLTH4 :1;
        unsigned ADLTH5 :1;
        unsigned ADLTH6 :1;
        unsigned ADLTH7 :1;
    };
} ADLTHLbits_t;
extern volatile ADLTHLbits_t ADLTHLbits __attribute__((address(0x10E)));
// bitfield macros
# 2841 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADLTHH

extern volatile unsigned char ADLTHH __attribute__((address(0x10F)));

__asm("ADLTHH equ 010Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADLTHH :8;
    };
    struct {
        unsigned ADLTH8 :1;
        unsigned ADLTH9 :1;
        unsigned ADLTH10 :1;
        unsigned ADLTH11 :1;
        unsigned ADLTH12 :1;
        unsigned ADLTH13 :1;
        unsigned ADLTH14 :1;
        unsigned ADLTH15 :1;
    };
} ADLTHHbits_t;
extern volatile ADLTHHbits_t ADLTHHbits __attribute__((address(0x10F)));
// bitfield macros
# 2911 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADUTH

extern volatile unsigned short ADUTH __attribute__((address(0x110)));

__asm("ADUTH equ 0110h");


// Register: ADUTHL

extern volatile unsigned char ADUTHL __attribute__((address(0x110)));

__asm("ADUTHL equ 0110h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADUTHL :8;
    };
    struct {
        unsigned ADUTH0 :1;
        unsigned ADUTH1 :1;
        unsigned ADUTH2 :1;
        unsigned ADUTH3 :1;
        unsigned ADUTH4 :1;
        unsigned ADUTH5 :1;
        unsigned ADUTH6 :1;
        unsigned ADUTH7 :1;
    };
} ADUTHLbits_t;
extern volatile ADUTHLbits_t ADUTHLbits __attribute__((address(0x110)));
// bitfield macros
# 2988 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADUTHH

extern volatile unsigned char ADUTHH __attribute__((address(0x111)));

__asm("ADUTHH equ 0111h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADUTHH :8;
    };
    struct {
        unsigned ADUTH8 :1;
        unsigned ADUTH9 :1;
        unsigned ADUTH10 :1;
        unsigned ADUTH11 :1;
        unsigned ADUTH12 :1;
        unsigned ADUTH13 :1;
        unsigned ADUTH14 :1;
        unsigned ADUTH15 :1;
    };
} ADUTHHbits_t;
extern volatile ADUTHHbits_t ADUTHHbits __attribute__((address(0x111)));
// bitfield macros
# 3058 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADSTPT

extern volatile unsigned short ADSTPT __attribute__((address(0x112)));

__asm("ADSTPT equ 0112h");


// Register: ADSTPTL

extern volatile unsigned char ADSTPTL __attribute__((address(0x112)));

__asm("ADSTPTL equ 0112h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADSTPTL :8;
    };
    struct {
        unsigned ADSTPT0 :1;
        unsigned ADSTPT1 :1;
        unsigned ADSTPT2 :1;
        unsigned ADSTPT3 :1;
        unsigned ADSTPT4 :1;
        unsigned ADSTPT5 :1;
        unsigned ADSTPT6 :1;
        unsigned ADSTPT7 :1;
    };
} ADSTPTLbits_t;
extern volatile ADSTPTLbits_t ADSTPTLbits __attribute__((address(0x112)));
// bitfield macros
# 3135 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADSTPTH

extern volatile unsigned char ADSTPTH __attribute__((address(0x113)));

__asm("ADSTPTH equ 0113h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADSTPTH :8;
    };
    struct {
        unsigned ADSTPT8 :1;
        unsigned ADSTPT9 :1;
        unsigned ADSTPT10 :1;
        unsigned ADSTPT11 :1;
        unsigned ADSTPT12 :1;
        unsigned ADSTPT13 :1;
        unsigned ADSTPT14 :1;
        unsigned ADSTPT15 :1;
    };
} ADSTPTHbits_t;
extern volatile ADSTPTHbits_t ADSTPTHbits __attribute__((address(0x113)));
// bitfield macros
# 3205 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADFLTR

extern volatile unsigned short ADFLTR __attribute__((address(0x114)));

__asm("ADFLTR equ 0114h");


// Register: ADFLTRL

extern volatile unsigned char ADFLTRL __attribute__((address(0x114)));

__asm("ADFLTRL equ 0114h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADFLTRL :8;
    };
    struct {
        unsigned ADFLTR0 :1;
        unsigned ADFLTR1 :1;
        unsigned ADFLTR2 :1;
        unsigned ADFLTR3 :1;
        unsigned ADFLTR4 :1;
        unsigned ADFLTR5 :1;
        unsigned ADFLTR6 :1;
        unsigned ADFLTR7 :1;
    };
} ADFLTRLbits_t;
extern volatile ADFLTRLbits_t ADFLTRLbits __attribute__((address(0x114)));
// bitfield macros
# 3282 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADFLTRH

extern volatile unsigned char ADFLTRH __attribute__((address(0x115)));

__asm("ADFLTRH equ 0115h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADFLTRH :8;
    };
    struct {
        unsigned ADFLTR8 :1;
        unsigned ADFLTR9 :1;
        unsigned ADFLTR10 :1;
        unsigned ADFLTR11 :1;
        unsigned ADFLTR12 :1;
        unsigned ADFLTR13 :1;
        unsigned ADFLTR14 :1;
        unsigned ADFLTR15 :1;
    };
} ADFLTRHbits_t;
extern volatile ADFLTRHbits_t ADFLTRHbits __attribute__((address(0x115)));
// bitfield macros
# 3352 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADERR

extern volatile unsigned short ADERR __attribute__((address(0x116)));

__asm("ADERR equ 0116h");


// Register: ADERRL

extern volatile unsigned char ADERRL __attribute__((address(0x116)));

__asm("ADERRL equ 0116h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADERRL :8;
    };
    struct {
        unsigned ADERR0 :1;
        unsigned ADERR1 :1;
        unsigned ADERR2 :1;
        unsigned ADERR3 :1;
        unsigned ADERR4 :1;
        unsigned ADERR5 :1;
        unsigned ADERR6 :1;
        unsigned ADERR7 :1;
    };
} ADERRLbits_t;
extern volatile ADERRLbits_t ADERRLbits __attribute__((address(0x116)));
// bitfield macros
# 3429 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADERRH

extern volatile unsigned char ADERRH __attribute__((address(0x117)));

__asm("ADERRH equ 0117h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADERRH :8;
    };
    struct {
        unsigned ADERR8 :1;
        unsigned ADERR9 :1;
        unsigned ADERR10 :1;
        unsigned ADERR11 :1;
        unsigned ADERR12 :1;
        unsigned ADERR13 :1;
        unsigned ADERR14 :1;
        unsigned ADERR15 :1;
    };
} ADERRHbits_t;
extern volatile ADERRHbits_t ADERRHbits __attribute__((address(0x117)));
// bitfield macros
# 3499 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC1REG

extern volatile unsigned char RC1REG __attribute__((address(0x119)));

__asm("RC1REG equ 0119h");

// aliases
extern volatile unsigned char RCREG __attribute__((address(0x119)));

__asm("RCREG equ 0119h");

extern volatile unsigned char RCREG1 __attribute__((address(0x119)));

__asm("RCREG1 equ 0119h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __attribute__((address(0x119)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x119)));
// bitfield macros





typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0x119)));
// bitfield macros






// Register: TX1REG

extern volatile unsigned char TX1REG __attribute__((address(0x11A)));

__asm("TX1REG equ 011Ah");

// aliases
extern volatile unsigned char TXREG1 __attribute__((address(0x11A)));

__asm("TXREG1 equ 011Ah");

extern volatile unsigned char TXREG __attribute__((address(0x11A)));

__asm("TXREG equ 011Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __attribute__((address(0x11A)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0x11A)));
// bitfield macros





typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x11A)));
// bitfield macros






// Register: SP1BRG

extern volatile unsigned short SP1BRG __attribute__((address(0x11B)));

__asm("SP1BRG equ 011Bh");

// aliases
extern volatile unsigned short SPBRG __attribute__((address(0x11B)));

__asm("SPBRG equ 011Bh");


// Register: SP1BRGL

extern volatile unsigned char SP1BRGL __attribute__((address(0x11B)));

__asm("SP1BRGL equ 011Bh");

// aliases
extern volatile unsigned char SPBRG1 __attribute__((address(0x11B)));

__asm("SPBRG1 equ 011Bh");

extern volatile unsigned char SPBRGL __attribute__((address(0x11B)));

__asm("SPBRGL equ 011Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __attribute__((address(0x11B)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0x11B)));
// bitfield macros





typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x11B)));
// bitfield macros






// Register: SP1BRGH

extern volatile unsigned char SP1BRGH __attribute__((address(0x11C)));

__asm("SP1BRGH equ 011Ch");

// aliases
extern volatile unsigned char SPBRGH __attribute__((address(0x11C)));

__asm("SPBRGH equ 011Ch");

extern volatile unsigned char SPBRGH1 __attribute__((address(0x11C)));

__asm("SPBRGH1 equ 011Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __attribute__((address(0x11C)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x11C)));
// bitfield macros





typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0x11C)));
// bitfield macros






// Register: RC1STA

extern volatile unsigned char RC1STA __attribute__((address(0x11D)));

__asm("RC1STA equ 011Dh");

// aliases
extern volatile unsigned char RCSTA1 __attribute__((address(0x11D)));

__asm("RCSTA1 equ 011Dh");

extern volatile unsigned char RCSTA __attribute__((address(0x11D)));

__asm("RCSTA equ 011Dh");

// bitfield definitions
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
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __attribute__((address(0x11D)));
// bitfield macros
# 3797 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
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
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0x11D)));
// bitfield macros
# 3852 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
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
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x11D)));
// bitfield macros
# 3907 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TX1STA

extern volatile unsigned char TX1STA __attribute__((address(0x11E)));

__asm("TX1STA equ 011Eh");

// aliases
extern volatile unsigned char TXSTA1 __attribute__((address(0x11E)));

__asm("TXSTA1 equ 011Eh");

extern volatile unsigned char TXSTA __attribute__((address(0x11E)));

__asm("TXSTA equ 011Eh");

// bitfield definitions
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
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __attribute__((address(0x11E)));
// bitfield macros
# 3977 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
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
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0x11E)));
// bitfield macros
# 4032 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
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
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x11E)));
// bitfield macros
# 4087 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: BAUD1CON

extern volatile unsigned char BAUD1CON __attribute__((address(0x11F)));

__asm("BAUD1CON equ 011Fh");

// aliases
extern volatile unsigned char BAUDCON1 __attribute__((address(0x11F)));

__asm("BAUDCON1 equ 011Fh");

extern volatile unsigned char BAUDCTL1 __attribute__((address(0x11F)));

__asm("BAUDCTL1 equ 011Fh");

extern volatile unsigned char BAUDCON __attribute__((address(0x11F)));

__asm("BAUDCON equ 011Fh");

extern volatile unsigned char BAUDCTL __attribute__((address(0x11F)));

__asm("BAUDCTL equ 011Fh");

// bitfield definitions
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
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __attribute__((address(0x11F)));
// bitfield macros
# 4155 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
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
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0x11F)));
// bitfield macros
# 4200 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
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
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __attribute__((address(0x11F)));
// bitfield macros
# 4244 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
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
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x11F)));
// bitfield macros
# 4288 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
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
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0x11F)));
// bitfield macros
# 4333 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1BUF

extern volatile unsigned char SSP1BUF __attribute__((address(0x18C)));

__asm("SSP1BUF equ 018Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x18C)));
// bitfield macros






// Register: SSP1ADD

extern volatile unsigned char SSP1ADD __attribute__((address(0x18D)));

__asm("SSP1ADD equ 018Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPADD :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned MSK01 :1;
        unsigned MSK11 :1;
        unsigned MSK21 :1;
        unsigned MSK31 :1;
        unsigned MSK41 :1;
        unsigned MSK51 :1;
        unsigned MSK61 :1;
        unsigned MSK71 :1;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x18D)));
// bitfield macros
# 4473 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1MSK

extern volatile unsigned char SSP1MSK __attribute__((address(0x18E)));

__asm("SSP1MSK equ 018Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPMSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x18E)));
// bitfield macros
# 4543 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1STAT

extern volatile unsigned char SSP1STAT __attribute__((address(0x18F)));

__asm("SSP1STAT equ 018Fh");

// bitfield definitions
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
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned BF1 :1;
        unsigned UA1 :1;
        unsigned R :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned D :1;
        unsigned CKE1 :1;
        unsigned SMP1 :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START1 :1;
        unsigned STOP1 :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned RW1 :1;
        unsigned I2C_START1 :1;
        unsigned I2C_STOP2 :1;
        unsigned DA1 :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ1 :1;
        unsigned S2 :1;
        unsigned P2 :1;
        unsigned DATA_ADDRESS1 :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE1 :1;
        unsigned :2;
        unsigned D_A1 :1;
    };
    struct {
        unsigned :2;
        unsigned R_W1 :1;
        unsigned :2;
        unsigned D_nA1 :1;
    };
    struct {
        unsigned :2;
        unsigned R_nW1 :1;
        unsigned :2;
        unsigned I2C_DAT1 :1;
    };
    struct {
        unsigned :2;
        unsigned nW2 :1;
        unsigned :2;
        unsigned nA2 :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE1 :1;
        unsigned :2;
        unsigned nADDRESS1 :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x18F)));
// bitfield macros
# 4907 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1CON1

extern volatile unsigned char SSP1CON1 __attribute__((address(0x190)));

__asm("SSP1CON1 equ 0190h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM01 :1;
        unsigned SSPM11 :1;
        unsigned SSPM21 :1;
        unsigned SSPM31 :1;
        unsigned CKP1 :1;
        unsigned SSPEN1 :1;
        unsigned SSPOV1 :1;
        unsigned WCOL1 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0x190)));
// bitfield macros
# 5027 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1CON2

extern volatile unsigned char SSP1CON2 __attribute__((address(0x191)));

__asm("SSP1CON2 equ 0191h");

// bitfield definitions
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
    struct {
        unsigned :1;
        unsigned ADMSK :5;
    };
    struct {
        unsigned :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
    struct {
        unsigned SEN1 :1;
        unsigned ADMSK11 :1;
        unsigned ADMSK21 :1;
        unsigned ADMSK31 :1;
        unsigned ACKEN1 :1;
        unsigned ACKDT1 :1;
        unsigned ACKSTAT1 :1;
        unsigned GCEN1 :1;
    };
    struct {
        unsigned :1;
        unsigned RSEN1 :1;
        unsigned PEN1 :1;
        unsigned RCEN1 :1;
        unsigned ADMSK41 :1;
        unsigned ADMSK51 :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x191)));
// bitfield macros
# 5214 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1CON3

extern volatile unsigned char SSP1CON3 __attribute__((address(0x192)));

__asm("SSP1CON3 equ 0192h");

// bitfield definitions
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
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x192)));
// bitfield macros
# 5276 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2BUF

extern volatile unsigned char SSP2BUF __attribute__((address(0x196)));

__asm("SSP2BUF equ 0196h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSP2BUFbits_t;
extern volatile SSP2BUFbits_t SSP2BUFbits __attribute__((address(0x196)));
// bitfield macros






// Register: SSP2ADD

extern volatile unsigned char SSP2ADD __attribute__((address(0x197)));

__asm("SSP2ADD equ 0197h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPADD :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned MSK02 :1;
        unsigned MSK12 :1;
        unsigned MSK22 :1;
        unsigned MSK32 :1;
        unsigned MSK42 :1;
        unsigned MSK52 :1;
        unsigned MSK62 :1;
        unsigned MSK72 :1;
    };
} SSP2ADDbits_t;
extern volatile SSP2ADDbits_t SSP2ADDbits __attribute__((address(0x197)));
// bitfield macros
# 5416 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2MSK

extern volatile unsigned char SSP2MSK __attribute__((address(0x198)));

__asm("SSP2MSK equ 0198h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPMSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
} SSP2MSKbits_t;
extern volatile SSP2MSKbits_t SSP2MSKbits __attribute__((address(0x198)));
// bitfield macros
# 5486 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2STAT

extern volatile unsigned char SSP2STAT __attribute__((address(0x199)));

__asm("SSP2STAT equ 0199h");

// bitfield definitions
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
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned BF2 :1;
        unsigned UA2 :1;
        unsigned R :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned D :1;
        unsigned CKE2 :1;
        unsigned SMP2 :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START2 :1;
        unsigned STOP2 :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned RW2 :1;
        unsigned I2C_START2 :1;
        unsigned I2C_STOP2 :1;
        unsigned DA2 :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ2 :1;
        unsigned S2 :1;
        unsigned P2 :1;
        unsigned DATA_ADDRESS2 :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE2 :1;
        unsigned :2;
        unsigned D_A2 :1;
    };
    struct {
        unsigned :2;
        unsigned R_W2 :1;
        unsigned :2;
        unsigned D_nA2 :1;
    };
    struct {
        unsigned :2;
        unsigned R_nW2 :1;
        unsigned :2;
        unsigned I2C_DAT2 :1;
    };
    struct {
        unsigned :2;
        unsigned nW2 :1;
        unsigned :2;
        unsigned nA2 :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE2 :1;
        unsigned :2;
        unsigned nADDRESS2 :1;
    };
} SSP2STATbits_t;
extern volatile SSP2STATbits_t SSP2STATbits __attribute__((address(0x199)));
// bitfield macros
# 5850 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2CON1

extern volatile unsigned char SSP2CON1 __attribute__((address(0x19A)));

__asm("SSP2CON1 equ 019Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM02 :1;
        unsigned SSPM12 :1;
        unsigned SSPM22 :1;
        unsigned SSPM32 :1;
        unsigned CKP2 :1;
        unsigned SSPEN2 :1;
        unsigned SSPOV2 :1;
        unsigned WCOL2 :1;
    };
} SSP2CON1bits_t;
extern volatile SSP2CON1bits_t SSP2CON1bits __attribute__((address(0x19A)));
// bitfield macros
# 5970 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2CON2

extern volatile unsigned char SSP2CON2 __attribute__((address(0x19B)));

__asm("SSP2CON2 equ 019Bh");

// bitfield definitions
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
    struct {
        unsigned :1;
        unsigned ADMSK :5;
    };
    struct {
        unsigned :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
    struct {
        unsigned SEN2 :1;
        unsigned ADMSK12 :1;
        unsigned ADMSK22 :1;
        unsigned ADMSK32 :1;
        unsigned ACKEN2 :1;
        unsigned ACKDT2 :1;
        unsigned ACKSTAT2 :1;
        unsigned GCEN2 :1;
    };
    struct {
        unsigned :1;
        unsigned RSEN2 :1;
        unsigned PEN2 :1;
        unsigned RCEN2 :1;
        unsigned ADMSK42 :1;
        unsigned ADMSK52 :1;
    };
} SSP2CON2bits_t;
extern volatile SSP2CON2bits_t SSP2CON2bits __attribute__((address(0x19B)));
// bitfield macros
# 6157 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2CON3

extern volatile unsigned char SSP2CON3 __attribute__((address(0x19C)));

__asm("SSP2CON3 equ 019Ch");

// bitfield definitions
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
} SSP2CON3bits_t;
extern volatile SSP2CON3bits_t SSP2CON3bits __attribute__((address(0x19C)));
// bitfield macros
# 6219 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR1

extern volatile unsigned short TMR1 __attribute__((address(0x20C)));

__asm("TMR1 equ 020Ch");


// Register: TMR1L

extern volatile unsigned char TMR1L __attribute__((address(0x20C)));

__asm("TMR1L equ 020Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1L0 :1;
        unsigned TMR1L1 :1;
        unsigned TMR1L2 :1;
        unsigned TMR1L3 :1;
        unsigned TMR1L4 :1;
        unsigned TMR1L5 :1;
        unsigned TMR1L6 :1;
        unsigned TMR1L7 :1;
    };
    struct {
        unsigned TMR1L :8;
    };
    struct {
        unsigned TMR10 :1;
        unsigned TMR11 :1;
        unsigned TMR12 :1;
        unsigned TMR13 :1;
        unsigned TMR14 :1;
        unsigned TMR15 :1;
        unsigned TMR16 :1;
        unsigned TMR17 :1;
    };
    struct {
        unsigned CAL01 :1;
        unsigned CAL11 :1;
        unsigned CAL21 :1;
        unsigned CAL31 :1;
        unsigned CAL41 :1;
        unsigned CAL51 :1;
        unsigned CAL61 :1;
        unsigned CAL71 :1;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x20C)));
// bitfield macros
# 6396 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR1H

extern volatile unsigned char TMR1H __attribute__((address(0x20D)));

__asm("TMR1H equ 020Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1H0 :1;
        unsigned TMR1H1 :1;
        unsigned TMR1H2 :1;
        unsigned TMR1H3 :1;
        unsigned TMR1H4 :1;
        unsigned TMR1H5 :1;
        unsigned TMR1H6 :1;
        unsigned TMR1H7 :1;
    };
    struct {
        unsigned TMR1H :8;
    };
    struct {
        unsigned TMR18 :1;
        unsigned TMR19 :1;
        unsigned TMR110 :1;
        unsigned TMR111 :1;
        unsigned TMR112 :1;
        unsigned TMR113 :1;
        unsigned TMR114 :1;
        unsigned TMR115 :1;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x20D)));
// bitfield macros
# 6516 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T1CON

extern volatile unsigned char T1CON __attribute__((address(0x20E)));

__asm("T1CON equ 020Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned T1RD16 :1;
        unsigned nT1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD161 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x20E)));
// bitfield macros
# 6612 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T1GCON

extern volatile unsigned char T1GCON __attribute__((address(0x20F)));

__asm("T1GCON equ 020Fh");

// aliases
extern volatile unsigned char PR1 __attribute__((address(0x20F)));

__asm("PR1 equ 020Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO_nDONE :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nDONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned T1GE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x20F)));
// bitfield macros
# 6715 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO_nDONE :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nDONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned T1GE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO :1;
    };
} PR1bits_t;
extern volatile PR1bits_t PR1bits __attribute__((address(0x20F)));
// bitfield macros
# 6808 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T1GATE

extern volatile unsigned char T1GATE __attribute__((address(0x210)));

__asm("T1GATE equ 0210h");

// aliases
extern volatile unsigned char TMR1GATE __attribute__((address(0x210)));

__asm("TMR1GATE equ 0210h");

// bitfield definitions
typedef union {
    struct {
        unsigned GSS :5;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GSS2 :1;
        unsigned T1GSS3 :1;
        unsigned T1GSS4 :1;
    };
} T1GATEbits_t;
extern volatile T1GATEbits_t T1GATEbits __attribute__((address(0x210)));
// bitfield macros
# 6896 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned GSS :5;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GSS2 :1;
        unsigned T1GSS3 :1;
        unsigned T1GSS4 :1;
    };
} TMR1GATEbits_t;
extern volatile TMR1GATEbits_t TMR1GATEbits __attribute__((address(0x210)));
// bitfield macros
# 6974 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T1CLK

extern volatile unsigned char T1CLK __attribute__((address(0x211)));

__asm("T1CLK equ 0211h");

// aliases
extern volatile unsigned char TMR1CLK __attribute__((address(0x211)));

__asm("TMR1CLK equ 0211h");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
} T1CLKbits_t;
extern volatile T1CLKbits_t T1CLKbits __attribute__((address(0x211)));
// bitfield macros
# 7050 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
} TMR1CLKbits_t;
extern volatile TMR1CLKbits_t TMR1CLKbits __attribute__((address(0x211)));
// bitfield macros
# 7116 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR3

extern volatile unsigned short TMR3 __attribute__((address(0x212)));

__asm("TMR3 equ 0212h");


// Register: TMR3L

extern volatile unsigned char TMR3L __attribute__((address(0x212)));

__asm("TMR3L equ 0212h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR3L0 :1;
        unsigned TMR3L1 :1;
        unsigned TMR3L2 :1;
        unsigned TMR3L3 :1;
        unsigned TMR3L4 :1;
        unsigned TMR3L5 :1;
        unsigned TMR3L6 :1;
        unsigned TMR3L7 :1;
    };
    struct {
        unsigned TMR3L :8;
    };
    struct {
        unsigned TMR30 :1;
        unsigned TMR31 :1;
        unsigned TMR32 :1;
        unsigned TMR33 :1;
        unsigned TMR34 :1;
        unsigned TMR35 :1;
        unsigned TMR36 :1;
        unsigned TMR37 :1;
    };
    struct {
        unsigned CAL03 :1;
        unsigned CAL13 :1;
        unsigned CAL23 :1;
        unsigned CAL33 :1;
        unsigned CAL43 :1;
        unsigned CAL53 :1;
        unsigned CAL63 :1;
        unsigned CAL73 :1;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0x212)));
// bitfield macros
# 7293 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR3H

extern volatile unsigned char TMR3H __attribute__((address(0x213)));

__asm("TMR3H equ 0213h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR3H0 :1;
        unsigned TMR3H1 :1;
        unsigned TMR3H2 :1;
        unsigned TMR3H3 :1;
        unsigned TMR3H4 :1;
        unsigned TMR3H5 :1;
        unsigned TMR3H6 :1;
        unsigned TMR3H7 :1;
    };
    struct {
        unsigned TMR3H :8;
    };
    struct {
        unsigned TMR38 :1;
        unsigned TMR39 :1;
        unsigned TMR310 :1;
        unsigned TMR311 :1;
        unsigned TMR312 :1;
        unsigned TMR313 :1;
        unsigned TMR314 :1;
        unsigned TMR315 :1;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0x213)));
// bitfield macros
# 7413 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T3CON

extern volatile unsigned char T3CON __attribute__((address(0x214)));

__asm("T3CON equ 0214h");

// bitfield definitions
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned T3RD16 :1;
        unsigned nT3SYNC :1;
        unsigned :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD163 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0x214)));
// bitfield macros
# 7509 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T3GCON

extern volatile unsigned char T3GCON __attribute__((address(0x215)));

__asm("T3GCON equ 0215h");

// aliases
extern volatile unsigned char PR3 __attribute__((address(0x215)));

__asm("PR3 equ 0215h");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO_nDONE :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T3GVAL :1;
        unsigned T3GGO_nDONE :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned T3GE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0x215)));
// bitfield macros
# 7612 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO_nDONE :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T3GVAL :1;
        unsigned T3GGO_nDONE :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned T3GE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO :1;
    };
} PR3bits_t;
extern volatile PR3bits_t PR3bits __attribute__((address(0x215)));
// bitfield macros
# 7705 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T3GATE

extern volatile unsigned char T3GATE __attribute__((address(0x216)));

__asm("T3GATE equ 0216h");

// aliases
extern volatile unsigned char TMR3GATE __attribute__((address(0x216)));

__asm("TMR3GATE equ 0216h");

// bitfield definitions
typedef union {
    struct {
        unsigned GSS :5;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned T3GSS2 :1;
        unsigned T3GSS3 :1;
        unsigned T3GSS4 :1;
    };
} T3GATEbits_t;
extern volatile T3GATEbits_t T3GATEbits __attribute__((address(0x216)));
// bitfield macros
# 7793 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned GSS :5;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned T3GSS2 :1;
        unsigned T3GSS3 :1;
        unsigned T3GSS4 :1;
    };
} TMR3GATEbits_t;
extern volatile TMR3GATEbits_t TMR3GATEbits __attribute__((address(0x216)));
// bitfield macros
# 7871 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T3CLK

extern volatile unsigned char T3CLK __attribute__((address(0x217)));

__asm("T3CLK equ 0217h");

// aliases
extern volatile unsigned char TMR3CLK __attribute__((address(0x217)));

__asm("TMR3CLK equ 0217h");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
} T3CLKbits_t;
extern volatile T3CLKbits_t T3CLKbits __attribute__((address(0x217)));
// bitfield macros
# 7947 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
} TMR3CLKbits_t;
extern volatile TMR3CLKbits_t TMR3CLKbits __attribute__((address(0x217)));
// bitfield macros
# 8013 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR5

extern volatile unsigned short TMR5 __attribute__((address(0x218)));

__asm("TMR5 equ 0218h");


// Register: TMR5L

extern volatile unsigned char TMR5L __attribute__((address(0x218)));

__asm("TMR5L equ 0218h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR5L0 :1;
        unsigned TMR5L1 :1;
        unsigned TMR5L2 :1;
        unsigned TMR5L3 :1;
        unsigned TMR5L4 :1;
        unsigned TMR5L5 :1;
        unsigned TMR5L6 :1;
        unsigned TMR5L7 :1;
    };
    struct {
        unsigned TMR5L :8;
    };
    struct {
        unsigned TMR50 :1;
        unsigned TMR51 :1;
        unsigned TMR52 :1;
        unsigned TMR53 :1;
        unsigned TMR54 :1;
        unsigned TMR55 :1;
        unsigned TMR56 :1;
        unsigned TMR57 :1;
    };
    struct {
        unsigned CAL05 :1;
        unsigned CAL15 :1;
        unsigned CAL25 :1;
        unsigned CAL35 :1;
        unsigned CAL45 :1;
        unsigned CAL55 :1;
        unsigned CAL65 :1;
        unsigned CAL75 :1;
    };
} TMR5Lbits_t;
extern volatile TMR5Lbits_t TMR5Lbits __attribute__((address(0x218)));
// bitfield macros
# 8190 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TMR5H

extern volatile unsigned char TMR5H __attribute__((address(0x219)));

__asm("TMR5H equ 0219h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR5H0 :1;
        unsigned TMR5H1 :1;
        unsigned TMR5H2 :1;
        unsigned TMR5H3 :1;
        unsigned TMR5H4 :1;
        unsigned TMR5H5 :1;
        unsigned TMR5H6 :1;
        unsigned TMR5H7 :1;
    };
    struct {
        unsigned TMR5H :8;
    };
    struct {
        unsigned TMR58 :1;
        unsigned TMR59 :1;
        unsigned TMR510 :1;
        unsigned TMR511 :1;
        unsigned TMR512 :1;
        unsigned TMR513 :1;
        unsigned TMR514 :1;
        unsigned TMR515 :1;
    };
} TMR5Hbits_t;
extern volatile TMR5Hbits_t TMR5Hbits __attribute__((address(0x219)));
// bitfield macros
# 8310 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T5CON

extern volatile unsigned char T5CON __attribute__((address(0x21A)));

__asm("T5CON equ 021Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR5ON :1;
        unsigned T5RD16 :1;
        unsigned nT5SYNC :1;
        unsigned :1;
        unsigned T5CKPS0 :1;
        unsigned T5CKPS1 :1;
    };
    struct {
        unsigned :4;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD165 :1;
    };
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __attribute__((address(0x21A)));
// bitfield macros
# 8406 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T5GCON

extern volatile unsigned char T5GCON __attribute__((address(0x21B)));

__asm("T5GCON equ 021Bh");

// aliases
extern volatile unsigned char PR5 __attribute__((address(0x21B)));

__asm("PR5 equ 021Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO_nDONE :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T5GVAL :1;
        unsigned T5GGO_nDONE :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned T5GE :1;
    };
    struct {
        unsigned :3;
        unsigned T5GGO :1;
    };
} T5GCONbits_t;
extern volatile T5GCONbits_t T5GCONbits __attribute__((address(0x21B)));
// bitfield macros
# 8509 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO_nDONE :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T5GVAL :1;
        unsigned T5GGO_nDONE :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned T5GE :1;
    };
    struct {
        unsigned :3;
        unsigned T5GGO :1;
    };
} PR5bits_t;
extern volatile PR5bits_t PR5bits __attribute__((address(0x21B)));
// bitfield macros
# 8602 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T5GATE

extern volatile unsigned char T5GATE __attribute__((address(0x21C)));

__asm("T5GATE equ 021Ch");

// aliases
extern volatile unsigned char TMR5GATE __attribute__((address(0x21C)));

__asm("TMR5GATE equ 021Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned GSS :5;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
        unsigned T5GSS2 :1;
        unsigned T5GSS3 :1;
        unsigned T5GSS4 :1;
    };
} T5GATEbits_t;
extern volatile T5GATEbits_t T5GATEbits __attribute__((address(0x21C)));
// bitfield macros
# 8690 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned GSS :5;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
        unsigned T5GSS2 :1;
        unsigned T5GSS3 :1;
        unsigned T5GSS4 :1;
    };
} TMR5GATEbits_t;
extern volatile TMR5GATEbits_t TMR5GATEbits __attribute__((address(0x21C)));
// bitfield macros
# 8768 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T5CLK

extern volatile unsigned char T5CLK __attribute__((address(0x21D)));

__asm("T5CLK equ 021Dh");

// aliases
extern volatile unsigned char TMR5CLK __attribute__((address(0x21D)));

__asm("TMR5CLK equ 021Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
} T5CLKbits_t;
extern volatile T5CLKbits_t T5CLKbits __attribute__((address(0x21D)));
// bitfield macros
# 8844 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
} TMR5CLKbits_t;
extern volatile TMR5CLKbits_t TMR5CLKbits __attribute__((address(0x21D)));
// bitfield macros
# 8910 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPTMRS0

extern volatile unsigned char CCPTMRS0 __attribute__((address(0x21E)));

__asm("CCPTMRS0 equ 021Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned C1TSEL :2;
        unsigned C2TSEL :2;
        unsigned C3TSEL :2;
        unsigned C4TSEL :2;
    };
    struct {
        unsigned C1TSEL0 :1;
        unsigned C1TSEL1 :1;
        unsigned C2TSEL0 :1;
        unsigned C2TSEL1 :1;
        unsigned C3TSEL0 :1;
        unsigned C3TSEL1 :1;
        unsigned C4TSEL0 :1;
        unsigned C4TSEL1 :1;
    };
} CCPTMRS0bits_t;
extern volatile CCPTMRS0bits_t CCPTMRS0bits __attribute__((address(0x21E)));
// bitfield macros
# 8998 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPTMRS1

extern volatile unsigned char CCPTMRS1 __attribute__((address(0x21F)));

__asm("CCPTMRS1 equ 021Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned C5TSEL :2;
        unsigned P6TSEL :2;
        unsigned P7TSEL :2;
    };
    struct {
        unsigned C5TSEL0 :1;
        unsigned C5TSEL1 :1;
        unsigned P6TSEL0 :1;
        unsigned P6TSEL1 :1;
        unsigned P7TSEL0 :1;
        unsigned P7TSEL1 :1;
    };
} CCPTMRS1bits_t;
extern volatile CCPTMRS1bits_t CCPTMRS1bits __attribute__((address(0x21F)));
// bitfield macros
# 9068 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T2TMR

extern volatile unsigned char T2TMR __attribute__((address(0x28C)));

__asm("T2TMR equ 028Ch");

// aliases
extern volatile unsigned char TMR2 __attribute__((address(0x28C)));

__asm("TMR2 equ 028Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR2 :8;
    };
} T2TMRbits_t;
extern volatile T2TMRbits_t T2TMRbits __attribute__((address(0x28C)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x28C)));
// bitfield macros






// Register: T2PR

extern volatile unsigned char T2PR __attribute__((address(0x28D)));

__asm("T2PR equ 028Dh");

// aliases
extern volatile unsigned char PR2 __attribute__((address(0x28D)));

__asm("PR2 equ 028Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned PR2 :8;
    };
} T2PRbits_t;
extern volatile T2PRbits_t T2PRbits __attribute__((address(0x28D)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x28D)));
// bitfield macros






// Register: T2CON

extern volatile unsigned char T2CON __attribute__((address(0x28E)));

__asm("T2CON equ 028Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned T2OUTPS :4;
        unsigned T2CKPS :3;
        unsigned T2ON :1;
    };
    struct {
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned T2CKPS2 :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned TMR2ON :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x28E)));
// bitfield macros
# 9290 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T2HLT

extern volatile unsigned char T2HLT __attribute__((address(0x28F)));

__asm("T2HLT equ 028Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T2MODE :5;
        unsigned T2CKSYNC :1;
        unsigned T2CKPOL :1;
        unsigned T2PSYNC :1;
    };
    struct {
        unsigned T2MODE0 :1;
        unsigned T2MODE1 :1;
        unsigned T2MODE2 :1;
        unsigned T2MODE3 :1;
        unsigned T2MODE4 :1;
    };
} T2HLTbits_t;
extern volatile T2HLTbits_t T2HLTbits __attribute__((address(0x28F)));
// bitfield macros
# 9418 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T2CLKCON

extern volatile unsigned char T2CLKCON __attribute__((address(0x290)));

__asm("T2CLKCON equ 0290h");

// aliases
extern volatile unsigned char T2CLK __attribute__((address(0x290)));

__asm("T2CLK equ 0290h");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T2CS :4;
    };
    struct {
        unsigned T2CS0 :1;
        unsigned T2CS1 :1;
        unsigned T2CS2 :1;
        unsigned T2CS3 :1;
    };
} T2CLKCONbits_t;
extern volatile T2CLKCONbits_t T2CLKCONbits __attribute__((address(0x290)));
// bitfield macros
# 9502 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T2CS :4;
    };
    struct {
        unsigned T2CS0 :1;
        unsigned T2CS1 :1;
        unsigned T2CS2 :1;
        unsigned T2CS3 :1;
    };
} T2CLKbits_t;
extern volatile T2CLKbits_t T2CLKbits __attribute__((address(0x290)));
// bitfield macros
# 9576 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T2RST

extern volatile unsigned char T2RST __attribute__((address(0x291)));

__asm("T2RST equ 0291h");

// bitfield definitions
typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T2RSEL :5;
    };
    struct {
        unsigned T2RSEL0 :1;
        unsigned T2RSEL1 :1;
        unsigned T2RSEL2 :1;
        unsigned T2RSEL3 :1;
        unsigned T2RSEL4 :1;
    };
} T2RSTbits_t;
extern volatile T2RSTbits_t T2RSTbits __attribute__((address(0x291)));
// bitfield macros
# 9668 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T4TMR

extern volatile unsigned char T4TMR __attribute__((address(0x292)));

__asm("T4TMR equ 0292h");

// aliases
extern volatile unsigned char TMR4 __attribute__((address(0x292)));

__asm("TMR4 equ 0292h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR4 :8;
    };
} T4TMRbits_t;
extern volatile T4TMRbits_t T4TMRbits __attribute__((address(0x292)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned TMR4 :8;
    };
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __attribute__((address(0x292)));
// bitfield macros






// Register: T4PR

extern volatile unsigned char T4PR __attribute__((address(0x293)));

__asm("T4PR equ 0293h");

// aliases
extern volatile unsigned char PR4 __attribute__((address(0x293)));

__asm("PR4 equ 0293h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR4 :8;
    };
} T4PRbits_t;
extern volatile T4PRbits_t T4PRbits __attribute__((address(0x293)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned PR4 :8;
    };
} PR4bits_t;
extern volatile PR4bits_t PR4bits __attribute__((address(0x293)));
// bitfield macros






// Register: T4CON

extern volatile unsigned char T4CON __attribute__((address(0x294)));

__asm("T4CON equ 0294h");

// bitfield definitions
typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned T4OUTPS :4;
        unsigned T4CKPS :3;
        unsigned T4ON :1;
    };
    struct {
        unsigned T4OUTPS0 :1;
        unsigned T4OUTPS1 :1;
        unsigned T4OUTPS2 :1;
        unsigned T4OUTPS3 :1;
        unsigned T4CKPS0 :1;
        unsigned T4CKPS1 :1;
        unsigned T4CKPS2 :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned TMR4ON :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0x294)));
// bitfield macros
# 9890 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T4HLT

extern volatile unsigned char T4HLT __attribute__((address(0x295)));

__asm("T4HLT equ 0295h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T4MODE :5;
        unsigned T4CKSYNC :1;
        unsigned T4CKPOL :1;
        unsigned T4PSYNC :1;
    };
    struct {
        unsigned T4MODE0 :1;
        unsigned T4MODE1 :1;
        unsigned T4MODE2 :1;
        unsigned T4MODE3 :1;
        unsigned T4MODE4 :1;
    };
} T4HLTbits_t;
extern volatile T4HLTbits_t T4HLTbits __attribute__((address(0x295)));
// bitfield macros
# 10018 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T4CLKCON

extern volatile unsigned char T4CLKCON __attribute__((address(0x296)));

__asm("T4CLKCON equ 0296h");

// aliases
extern volatile unsigned char T4CLK __attribute__((address(0x296)));

__asm("T4CLK equ 0296h");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T4CS :4;
    };
    struct {
        unsigned T4CS0 :1;
        unsigned T4CS1 :1;
        unsigned T4CS2 :1;
        unsigned T4CS3 :1;
    };
} T4CLKCONbits_t;
extern volatile T4CLKCONbits_t T4CLKCONbits __attribute__((address(0x296)));
// bitfield macros
# 10102 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T4CS :4;
    };
    struct {
        unsigned T4CS0 :1;
        unsigned T4CS1 :1;
        unsigned T4CS2 :1;
        unsigned T4CS3 :1;
    };
} T4CLKbits_t;
extern volatile T4CLKbits_t T4CLKbits __attribute__((address(0x296)));
// bitfield macros
# 10176 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T4RST

extern volatile unsigned char T4RST __attribute__((address(0x297)));

__asm("T4RST equ 0297h");

// bitfield definitions
typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T4RSEL :5;
    };
    struct {
        unsigned T4RSEL0 :1;
        unsigned T4RSEL1 :1;
        unsigned T4RSEL2 :1;
        unsigned T4RSEL3 :1;
        unsigned T4RSEL4 :1;
    };
} T4RSTbits_t;
extern volatile T4RSTbits_t T4RSTbits __attribute__((address(0x297)));
// bitfield macros
# 10268 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T6TMR

extern volatile unsigned char T6TMR __attribute__((address(0x298)));

__asm("T6TMR equ 0298h");

// aliases
extern volatile unsigned char TMR6 __attribute__((address(0x298)));

__asm("TMR6 equ 0298h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR6 :8;
    };
} T6TMRbits_t;
extern volatile T6TMRbits_t T6TMRbits __attribute__((address(0x298)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned TMR6 :8;
    };
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __attribute__((address(0x298)));
// bitfield macros






// Register: T6PR

extern volatile unsigned char T6PR __attribute__((address(0x299)));

__asm("T6PR equ 0299h");

// aliases
extern volatile unsigned char PR6 __attribute__((address(0x299)));

__asm("PR6 equ 0299h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR6 :8;
    };
} T6PRbits_t;
extern volatile T6PRbits_t T6PRbits __attribute__((address(0x299)));
// bitfield macros





// alias bitfield definitions
typedef union {
    struct {
        unsigned PR6 :8;
    };
} PR6bits_t;
extern volatile PR6bits_t PR6bits __attribute__((address(0x299)));
// bitfield macros






// Register: T6CON

extern volatile unsigned char T6CON __attribute__((address(0x29A)));

__asm("T6CON equ 029Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned T6OUTPS :4;
        unsigned T6CKPS :3;
        unsigned T6ON :1;
    };
    struct {
        unsigned T6OUTPS0 :1;
        unsigned T6OUTPS1 :1;
        unsigned T6OUTPS2 :1;
        unsigned T6OUTPS3 :1;
        unsigned T6CKPS0 :1;
        unsigned T6CKPS1 :1;
        unsigned T6CKPS2 :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned TMR6ON :1;
    };
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __attribute__((address(0x29A)));
// bitfield macros
# 10490 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T6HLT

extern volatile unsigned char T6HLT __attribute__((address(0x29B)));

__asm("T6HLT equ 029Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T6MODE :5;
        unsigned T6CKSYNC :1;
        unsigned T6CKPOL :1;
        unsigned T6PSYNC :1;
    };
    struct {
        unsigned T6MODE0 :1;
        unsigned T6MODE1 :1;
        unsigned T6MODE2 :1;
        unsigned T6MODE3 :1;
        unsigned T6MODE4 :1;
    };
} T6HLTbits_t;
extern volatile T6HLTbits_t T6HLTbits __attribute__((address(0x29B)));
// bitfield macros
# 10618 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T6CLKCON

extern volatile unsigned char T6CLKCON __attribute__((address(0x29C)));

__asm("T6CLKCON equ 029Ch");

// aliases
extern volatile unsigned char T6CLK __attribute__((address(0x29C)));

__asm("T6CLK equ 029Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T6CS :4;
    };
    struct {
        unsigned T6CS0 :1;
        unsigned T6CS1 :1;
        unsigned T6CS2 :1;
        unsigned T6CS3 :1;
    };
} T6CLKCONbits_t;
extern volatile T6CLKCONbits_t T6CLKCONbits __attribute__((address(0x29C)));
// bitfield macros
# 10702 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T6CS :4;
    };
    struct {
        unsigned T6CS0 :1;
        unsigned T6CS1 :1;
        unsigned T6CS2 :1;
        unsigned T6CS3 :1;
    };
} T6CLKbits_t;
extern volatile T6CLKbits_t T6CLKbits __attribute__((address(0x29C)));
// bitfield macros
# 10776 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T6RST

extern volatile unsigned char T6RST __attribute__((address(0x29D)));

__asm("T6RST equ 029Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T6RSEL :5;
    };
    struct {
        unsigned T6RSEL0 :1;
        unsigned T6RSEL1 :1;
        unsigned T6RSEL2 :1;
        unsigned T6RSEL3 :1;
        unsigned T6RSEL4 :1;
    };
} T6RSTbits_t;
extern volatile T6RSTbits_t T6RSTbits __attribute__((address(0x29D)));
// bitfield macros
# 10868 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPR1

extern volatile unsigned short CCPR1 __attribute__((address(0x30C)));

__asm("CCPR1 equ 030Ch");


// Register: CCPR1L

extern volatile unsigned char CCPR1L __attribute__((address(0x30C)));

__asm("CCPR1L equ 030Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x30C)));
// bitfield macros






// Register: CCPR1H

extern volatile unsigned char CCPR1H __attribute__((address(0x30D)));

__asm("CCPR1H equ 030Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x30D)));
// bitfield macros






// Register: CCP1CON

extern volatile unsigned char CCP1CON __attribute__((address(0x30E)));

__asm("CCP1CON equ 030Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP1MODE :4;
        unsigned CCP1FMT :1;
        unsigned CCP1OUT :1;
        unsigned :1;
        unsigned CCP1EN :1;
    };
    struct {
        unsigned CCP1MODE0 :1;
        unsigned CCP1MODE1 :1;
        unsigned CCP1MODE2 :1;
        unsigned CCP1MODE3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x30E)));
// bitfield macros
# 11033 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP1CAP

extern volatile unsigned char CCP1CAP __attribute__((address(0x30F)));

__asm("CCP1CAP equ 030Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP1CTS :8;
    };
    struct {
        unsigned CCP1CTS0 :1;
        unsigned CCP1CTS1 :1;
        unsigned CCP1CTS2 :1;
    };
} CCP1CAPbits_t;
extern volatile CCP1CAPbits_t CCP1CAPbits __attribute__((address(0x30F)));
// bitfield macros
# 11101 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPR2

extern volatile unsigned short CCPR2 __attribute__((address(0x310)));

__asm("CCPR2 equ 0310h");


// Register: CCPR2L

extern volatile unsigned char CCPR2L __attribute__((address(0x310)));

__asm("CCPR2L equ 0310h");

// bitfield definitions
typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x310)));
// bitfield macros






// Register: CCPR2H

extern volatile unsigned char CCPR2H __attribute__((address(0x311)));

__asm("CCPR2H equ 0311h");

// bitfield definitions
typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x311)));
// bitfield macros






// Register: CCP2CON

extern volatile unsigned char CCP2CON __attribute__((address(0x312)));

__asm("CCP2CON equ 0312h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP2MODE :4;
        unsigned CCP2FMT :1;
        unsigned CCP2OUT :1;
        unsigned :1;
        unsigned CCP2EN :1;
    };
    struct {
        unsigned CCP2MODE0 :1;
        unsigned CCP2MODE1 :1;
        unsigned CCP2MODE2 :1;
        unsigned CCP2MODE3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x312)));
// bitfield macros
# 11266 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP2CAP

extern volatile unsigned char CCP2CAP __attribute__((address(0x313)));

__asm("CCP2CAP equ 0313h");

// bitfield definitions
typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP2CTS :8;
    };
    struct {
        unsigned CCP2CTS0 :1;
        unsigned CCP2CTS1 :1;
        unsigned CCP2CTS2 :1;
    };
} CCP2CAPbits_t;
extern volatile CCP2CAPbits_t CCP2CAPbits __attribute__((address(0x313)));
// bitfield macros
# 11334 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPR3

extern volatile unsigned short CCPR3 __attribute__((address(0x314)));

__asm("CCPR3 equ 0314h");


// Register: CCPR3L

extern volatile unsigned char CCPR3L __attribute__((address(0x314)));

__asm("CCPR3L equ 0314h");

// bitfield definitions
typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __attribute__((address(0x314)));
// bitfield macros






// Register: CCPR3H

extern volatile unsigned char CCPR3H __attribute__((address(0x315)));

__asm("CCPR3H equ 0315h");

// bitfield definitions
typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __attribute__((address(0x315)));
// bitfield macros






// Register: CCP3CON

extern volatile unsigned char CCP3CON __attribute__((address(0x316)));

__asm("CCP3CON equ 0316h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP3MODE :4;
        unsigned CCP3FMT :1;
        unsigned CCP3OUT :1;
        unsigned :1;
        unsigned CCP3EN :1;
    };
    struct {
        unsigned CCP3MODE0 :1;
        unsigned CCP3MODE1 :1;
        unsigned CCP3MODE2 :1;
        unsigned CCP3MODE3 :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0x316)));
// bitfield macros
# 11499 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP3CAP

extern volatile unsigned char CCP3CAP __attribute__((address(0x317)));

__asm("CCP3CAP equ 0317h");

// bitfield definitions
typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP3CTS :8;
    };
    struct {
        unsigned CCP3CTS0 :1;
        unsigned CCP3CTS1 :1;
        unsigned CCP3CTS2 :1;
    };
} CCP3CAPbits_t;
extern volatile CCP3CAPbits_t CCP3CAPbits __attribute__((address(0x317)));
// bitfield macros
# 11567 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPR4

extern volatile unsigned short CCPR4 __attribute__((address(0x318)));

__asm("CCPR4 equ 0318h");


// Register: CCPR4L

extern volatile unsigned char CCPR4L __attribute__((address(0x318)));

__asm("CCPR4L equ 0318h");

// bitfield definitions
typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR4Lbits_t;
extern volatile CCPR4Lbits_t CCPR4Lbits __attribute__((address(0x318)));
// bitfield macros






// Register: CCPR4H

extern volatile unsigned char CCPR4H __attribute__((address(0x319)));

__asm("CCPR4H equ 0319h");

// bitfield definitions
typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR4Hbits_t;
extern volatile CCPR4Hbits_t CCPR4Hbits __attribute__((address(0x319)));
// bitfield macros






// Register: CCP4CON

extern volatile unsigned char CCP4CON __attribute__((address(0x31A)));

__asm("CCP4CON equ 031Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP4MODE :4;
        unsigned CCP4FMT :1;
        unsigned CCP4OUT :1;
        unsigned :1;
        unsigned CCP4EN :1;
    };
    struct {
        unsigned CCP4MODE0 :1;
        unsigned CCP4MODE1 :1;
        unsigned CCP4MODE2 :1;
        unsigned CCP4MODE3 :1;
    };
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __attribute__((address(0x31A)));
// bitfield macros
# 11732 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP4CAP

extern volatile unsigned char CCP4CAP __attribute__((address(0x31B)));

__asm("CCP4CAP equ 031Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP4CTS :8;
    };
    struct {
        unsigned CCP4CTS0 :1;
        unsigned CCP4CTS1 :1;
        unsigned CCP4CTS2 :1;
    };
} CCP4CAPbits_t;
extern volatile CCP4CAPbits_t CCP4CAPbits __attribute__((address(0x31B)));
// bitfield macros
# 11800 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCPR5

extern volatile unsigned short CCPR5 __attribute__((address(0x31C)));

__asm("CCPR5 equ 031Ch");


// Register: CCPR5L

extern volatile unsigned char CCPR5L __attribute__((address(0x31C)));

__asm("CCPR5L equ 031Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR5Lbits_t;
extern volatile CCPR5Lbits_t CCPR5Lbits __attribute__((address(0x31C)));
// bitfield macros






// Register: CCPR5H

extern volatile unsigned char CCPR5H __attribute__((address(0x31D)));

__asm("CCPR5H equ 031Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR5Hbits_t;
extern volatile CCPR5Hbits_t CCPR5Hbits __attribute__((address(0x31D)));
// bitfield macros






// Register: CCP5CON

extern volatile unsigned char CCP5CON __attribute__((address(0x31E)));

__asm("CCP5CON equ 031Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP5MODE :4;
        unsigned CCP5FMT :1;
        unsigned CCP5OUT :1;
        unsigned :1;
        unsigned CCP5EN :1;
    };
    struct {
        unsigned CCP5MODE0 :1;
        unsigned CCP5MODE1 :1;
        unsigned CCP5MODE2 :1;
        unsigned CCP5MODE3 :1;
    };
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __attribute__((address(0x31E)));
// bitfield macros
# 11965 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP5CAP

extern volatile unsigned char CCP5CAP __attribute__((address(0x31F)));

__asm("CCP5CAP equ 031Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP5CTS :8;
    };
    struct {
        unsigned CCP5CTS0 :1;
        unsigned CCP5CTS1 :1;
        unsigned CCP5CTS2 :1;
    };
} CCP5CAPbits_t;
extern volatile CCP5CAPbits_t CCP5CAPbits __attribute__((address(0x31F)));
// bitfield macros
# 12033 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PWM6DC

extern volatile unsigned short PWM6DC __attribute__((address(0x38C)));

__asm("PWM6DC equ 038Ch");


// Register: PWM6DCL

extern volatile unsigned char PWM6DCL __attribute__((address(0x38C)));

__asm("PWM6DCL equ 038Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned :6;
        unsigned DC :2;
    };
    struct {
        unsigned :6;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWM6DC0 :1;
        unsigned PWM6DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWMPW0 :1;
        unsigned PWMPW1 :1;
    };
} PWM6DCLbits_t;
extern volatile PWM6DCLbits_t PWM6DCLbits __attribute__((address(0x38C)));
// bitfield macros
# 12106 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PWM6DCH

extern volatile unsigned char PWM6DCH __attribute__((address(0x38D)));

__asm("PWM6DCH equ 038Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned DC :8;
    };
    struct {
        unsigned DC2 :1;
        unsigned DC3 :1;
        unsigned DC4 :1;
        unsigned DC5 :1;
        unsigned DC6 :1;
        unsigned DC7 :1;
        unsigned DC8 :1;
        unsigned DC9 :1;
    };
    struct {
        unsigned PWM6DC2 :1;
        unsigned PWM6DC3 :1;
        unsigned PWM6DC4 :1;
        unsigned PWM6DC5 :1;
        unsigned PWM6DC6 :1;
        unsigned PWM6DC7 :1;
        unsigned PWM6DC8 :1;
        unsigned PWM6DC9 :1;
    };
    struct {
        unsigned PWMPW2 :1;
        unsigned PWMPW3 :1;
        unsigned PWMPW4 :1;
        unsigned PWMPW5 :1;
        unsigned PWMPW6 :1;
        unsigned PWMPW7 :1;
        unsigned PWMPW8 :1;
        unsigned PWMPW9 :1;
    };
} PWM6DCHbits_t;
extern volatile PWM6DCHbits_t PWM6DCHbits __attribute__((address(0x38D)));
// bitfield macros
# 12276 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PWM6CON

extern volatile unsigned char PWM6CON __attribute__((address(0x38E)));

__asm("PWM6CON equ 038Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned :4;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PWM6POL :1;
        unsigned PWM6OUT :1;
        unsigned :1;
        unsigned PWM6EN :1;
    };
} PWM6CONbits_t;
extern volatile PWM6CONbits_t PWM6CONbits __attribute__((address(0x38E)));
// bitfield macros
# 12332 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PWM7DC

extern volatile unsigned short PWM7DC __attribute__((address(0x390)));

__asm("PWM7DC equ 0390h");


// Register: PWM7DCL

extern volatile unsigned char PWM7DCL __attribute__((address(0x390)));

__asm("PWM7DCL equ 0390h");

// bitfield definitions
typedef union {
    struct {
        unsigned :6;
        unsigned DC :2;
    };
    struct {
        unsigned :6;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWM7DC0 :1;
        unsigned PWM7DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWMPW0 :1;
        unsigned PWMPW1 :1;
    };
} PWM7DCLbits_t;
extern volatile PWM7DCLbits_t PWM7DCLbits __attribute__((address(0x390)));
// bitfield macros
# 12405 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PWM7DCH

extern volatile unsigned char PWM7DCH __attribute__((address(0x391)));

__asm("PWM7DCH equ 0391h");

// bitfield definitions
typedef union {
    struct {
        unsigned DC :8;
    };
    struct {
        unsigned DC2 :1;
        unsigned DC3 :1;
        unsigned DC4 :1;
        unsigned DC5 :1;
        unsigned DC6 :1;
        unsigned DC7 :1;
        unsigned DC8 :1;
        unsigned DC9 :1;
    };
    struct {
        unsigned PWM7DC2 :1;
        unsigned PWM7DC3 :1;
        unsigned PWM7DC4 :1;
        unsigned PWM7DC5 :1;
        unsigned PWM7DC6 :1;
        unsigned PWM7DC7 :1;
        unsigned PWM7DC8 :1;
        unsigned PWM7DC9 :1;
    };
    struct {
        unsigned PWMPW2 :1;
        unsigned PWMPW3 :1;
        unsigned PWMPW4 :1;
        unsigned PWMPW5 :1;
        unsigned PWMPW6 :1;
        unsigned PWMPW7 :1;
        unsigned PWMPW8 :1;
        unsigned PWMPW9 :1;
    };
} PWM7DCHbits_t;
extern volatile PWM7DCHbits_t PWM7DCHbits __attribute__((address(0x391)));
// bitfield macros
# 12575 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PWM7CON

extern volatile unsigned char PWM7CON __attribute__((address(0x392)));

__asm("PWM7CON equ 0392h");

// bitfield definitions
typedef union {
    struct {
        unsigned :4;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PWM7POL :1;
        unsigned PWM7OUT :1;
        unsigned :1;
        unsigned PWM7EN :1;
    };
} PWM7CONbits_t;
extern volatile PWM7CONbits_t PWM7CONbits __attribute__((address(0x392)));
// bitfield macros
# 12631 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SCANLADRL

extern volatile unsigned char SCANLADRL __attribute__((address(0x40C)));

__asm("SCANLADRL equ 040Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned LADRL :8;
    };
    struct {
        unsigned LADR0 :1;
        unsigned LADR1 :1;
        unsigned LADR2 :1;
        unsigned LADR3 :1;
        unsigned LADR4 :1;
        unsigned LADR5 :1;
        unsigned LADR6 :1;
        unsigned LADR7 :1;
    };
    struct {
        unsigned SCANLADRL :8;
    };
    struct {
        unsigned SCANLADR0 :1;
        unsigned SCANLADR1 :1;
        unsigned SCANLADR2 :1;
        unsigned SCANLADR3 :1;
        unsigned SCANLADR4 :1;
        unsigned SCANLADR5 :1;
        unsigned SCANLADR6 :1;
        unsigned SCANLADR7 :1;
    };
} SCANLADRLbits_t;
extern volatile SCANLADRLbits_t SCANLADRLbits __attribute__((address(0x40C)));
// bitfield macros
# 12759 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SCANLADRH

extern volatile unsigned char SCANLADRH __attribute__((address(0x40D)));

__asm("SCANLADRH equ 040Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned LADRH :8;
    };
    struct {
        unsigned LADR8 :1;
        unsigned LADR9 :1;
        unsigned LADR10 :1;
        unsigned LADR11 :1;
        unsigned LADR12 :1;
        unsigned LADR13 :1;
        unsigned LADR14 :1;
        unsigned LADR15 :1;
    };
    struct {
        unsigned SCANLADRH :8;
    };
    struct {
        unsigned SCANLADR8 :1;
        unsigned SCANLADR9 :1;
        unsigned SCANLADR10 :1;
        unsigned SCANLADR11 :1;
        unsigned SCANLADR12 :1;
        unsigned SCANLADR13 :1;
        unsigned SCANLADR14 :1;
        unsigned SCANLADR15 :1;
    };
} SCANLADRHbits_t;
extern volatile SCANLADRHbits_t SCANLADRHbits __attribute__((address(0x40D)));
// bitfield macros
# 12887 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SCANHADRL

extern volatile unsigned char SCANHADRL __attribute__((address(0x40E)));

__asm("SCANHADRL equ 040Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned HADRL :8;
    };
    struct {
        unsigned HADR0 :1;
        unsigned HADR1 :1;
        unsigned HADR2 :1;
        unsigned HADR3 :1;
        unsigned HADR4 :1;
        unsigned HADR5 :1;
        unsigned HADR6 :1;
        unsigned HADR7 :1;
    };
    struct {
        unsigned SCANHADRL :8;
    };
    struct {
        unsigned SCANHADR0 :1;
        unsigned SCANHADR1 :1;
        unsigned SCANHADR2 :1;
        unsigned SCANHADR3 :1;
        unsigned SCANHADR4 :1;
        unsigned SCANHADR5 :1;
        unsigned SCANHADR6 :1;
        unsigned SCANHADR7 :1;
    };
} SCANHADRLbits_t;
extern volatile SCANHADRLbits_t SCANHADRLbits __attribute__((address(0x40E)));
// bitfield macros
# 13015 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SCANHADRH

extern volatile unsigned char SCANHADRH __attribute__((address(0x40F)));

__asm("SCANHADRH equ 040Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned HADRH :8;
    };
    struct {
        unsigned HADR8 :1;
        unsigned HADR9 :1;
        unsigned HADR10 :1;
        unsigned HADR11 :1;
        unsigned HADR12 :1;
        unsigned HADR13 :1;
        unsigned HADR14 :1;
        unsigned HADR15 :1;
    };
    struct {
        unsigned SCANHADRH :8;
    };
    struct {
        unsigned SCANHADR8 :1;
        unsigned SCANHADR9 :1;
        unsigned SCANHADR10 :1;
        unsigned SCANHADR11 :1;
        unsigned SCANHADR12 :1;
        unsigned SCANHADR13 :1;
        unsigned SCANHADR14 :1;
        unsigned SCANHADR15 :1;
    };
} SCANHADRHbits_t;
extern volatile SCANHADRHbits_t SCANHADRHbits __attribute__((address(0x40F)));
// bitfield macros
# 13143 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SCANCON0

extern volatile unsigned char SCANCON0 __attribute__((address(0x410)));

__asm("SCANCON0 equ 0410h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :2;
        unsigned :1;
        unsigned INTM :1;
        unsigned INVALID :1;
        unsigned BUSY :1;
        unsigned SCANGO :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
    };
    struct {
        unsigned SCANMODE :2;
        unsigned :1;
        unsigned SCANINTM :1;
        unsigned SCANINVALID :1;
        unsigned SCANBUSY :1;
        unsigned :1;
        unsigned SCANEN :1;
    };
    struct {
        unsigned SCANMODE0 :1;
        unsigned SCANMODE1 :1;
    };
    struct {
        unsigned :4;
        unsigned DABORT :1;
    };
} SCANCON0bits_t;
extern volatile SCANCON0bits_t SCANCON0bits __attribute__((address(0x410)));
// bitfield macros
# 13265 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SCANTRIG

extern volatile unsigned char SCANTRIG __attribute__((address(0x411)));

__asm("SCANTRIG equ 0411h");

// bitfield definitions
typedef union {
    struct {
        unsigned TSEL :4;
    };
    struct {
        unsigned TSEL0 :1;
        unsigned TSEL1 :1;
        unsigned TSEL2 :1;
        unsigned TSEL3 :1;
    };
    struct {
        unsigned SCANTSEL :4;
    };
    struct {
        unsigned SCANTSEL0 :1;
        unsigned SCANTSEL1 :1;
        unsigned SCANTSEL2 :1;
        unsigned SCANTSEL3 :1;
    };
} SCANTRIGbits_t;
extern volatile SCANTRIGbits_t SCANTRIGbits __attribute__((address(0x411)));
// bitfield macros
# 13345 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCDATA

extern volatile unsigned short CRCDATA __attribute__((address(0x416)));

__asm("CRCDATA equ 0416h");


// Register: CRCDATL

extern volatile unsigned char CRCDATL __attribute__((address(0x416)));

__asm("CRCDATL equ 0416h");

// bitfield definitions
typedef union {
    struct {
        unsigned DATA0 :1;
        unsigned DATA1 :1;
        unsigned DATA2 :1;
        unsigned DATA3 :1;
        unsigned DATA4 :1;
        unsigned DATA5 :1;
        unsigned DATA6 :1;
        unsigned DATA7 :1;
    };
} CRCDATLbits_t;
extern volatile CRCDATLbits_t CRCDATLbits __attribute__((address(0x416)));
// bitfield macros
# 13414 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCDATH

extern volatile unsigned char CRCDATH __attribute__((address(0x417)));

__asm("CRCDATH equ 0417h");

// bitfield definitions
typedef union {
    struct {
        unsigned DATA8 :1;
        unsigned DATA9 :1;
        unsigned DATA10 :1;
        unsigned DATA11 :1;
        unsigned DATA12 :1;
        unsigned DATA13 :1;
        unsigned DATA14 :1;
        unsigned DATA15 :1;
    };
} CRCDATHbits_t;
extern volatile CRCDATHbits_t CRCDATHbits __attribute__((address(0x417)));
// bitfield macros
# 13476 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCACC

extern volatile unsigned short CRCACC __attribute__((address(0x418)));

__asm("CRCACC equ 0418h");


// Register: CRCACCL

extern volatile unsigned char CRCACCL __attribute__((address(0x418)));

__asm("CRCACCL equ 0418h");

// bitfield definitions
typedef union {
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
} CRCACCLbits_t;
extern volatile CRCACCLbits_t CRCACCLbits __attribute__((address(0x418)));
// bitfield macros
# 13545 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCACCH

extern volatile unsigned char CRCACCH __attribute__((address(0x419)));

__asm("CRCACCH equ 0419h");

// bitfield definitions
typedef union {
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
} CRCACCHbits_t;
extern volatile CRCACCHbits_t CRCACCHbits __attribute__((address(0x419)));
// bitfield macros
# 13607 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCSHFT

extern volatile unsigned short CRCSHFT __attribute__((address(0x41A)));

__asm("CRCSHFT equ 041Ah");


// Register: CRCSHIFTL

extern volatile unsigned char CRCSHIFTL __attribute__((address(0x41A)));

__asm("CRCSHIFTL equ 041Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned SHFT0 :1;
        unsigned SHFT1 :1;
        unsigned SHFT2 :1;
        unsigned SHFT3 :1;
        unsigned SHFT4 :1;
        unsigned SHFT5 :1;
        unsigned SHFT6 :1;
        unsigned SHFT7 :1;
    };
} CRCSHIFTLbits_t;
extern volatile CRCSHIFTLbits_t CRCSHIFTLbits __attribute__((address(0x41A)));
// bitfield macros
# 13676 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCSHIFTH

extern volatile unsigned char CRCSHIFTH __attribute__((address(0x41B)));

__asm("CRCSHIFTH equ 041Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned SHFT8 :1;
        unsigned SHFT9 :1;
        unsigned SHFT10 :1;
        unsigned SHFT11 :1;
        unsigned SHFT12 :1;
        unsigned SHFT13 :1;
        unsigned SHFT14 :1;
        unsigned SHFT15 :1;
    };
} CRCSHIFTHbits_t;
extern volatile CRCSHIFTHbits_t CRCSHIFTHbits __attribute__((address(0x41B)));
// bitfield macros
# 13738 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCXOR

extern volatile unsigned short CRCXOR __attribute__((address(0x41C)));

__asm("CRCXOR equ 041Ch");


// Register: CRCXORL

extern volatile unsigned char CRCXORL __attribute__((address(0x41C)));

__asm("CRCXORL equ 041Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned :1;
        unsigned X1 :1;
        unsigned X2 :1;
        unsigned X3 :1;
        unsigned X4 :1;
        unsigned X5 :1;
        unsigned X6 :1;
        unsigned X7 :1;
    };
} CRCXORLbits_t;
extern volatile CRCXORLbits_t CRCXORLbits __attribute__((address(0x41C)));
// bitfield macros
# 13802 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCXORH

extern volatile unsigned char CRCXORH __attribute__((address(0x41D)));

__asm("CRCXORH equ 041Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned X8 :1;
        unsigned X9 :1;
        unsigned X10 :1;
        unsigned X11 :1;
        unsigned X12 :1;
        unsigned X13 :1;
        unsigned X14 :1;
        unsigned X15 :1;
    };
} CRCXORHbits_t;
extern volatile CRCXORHbits_t CRCXORHbits __attribute__((address(0x41D)));
// bitfield macros
# 13864 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCCON0

extern volatile unsigned char CRCCON0 __attribute__((address(0x41E)));

__asm("CRCCON0 equ 041Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned FULL :1;
        unsigned SHIFTM :1;
        unsigned :2;
        unsigned ACCM :1;
        unsigned BUSY :1;
        unsigned CRCGO :1;
        unsigned EN :1;
    };
    struct {
        unsigned :7;
        unsigned CRCEN :1;
    };
} CRCCON0bits_t;
extern volatile CRCCON0bits_t CRCCON0bits __attribute__((address(0x41E)));
// bitfield macros
# 13924 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CRCCON1

extern volatile unsigned char CRCCON1 __attribute__((address(0x41F)));

__asm("CRCCON1 equ 041Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned PLEN :4;
        unsigned DLEN :4;
    };
    struct {
        unsigned PLEN0 :1;
        unsigned PLEN1 :1;
        unsigned PLEN2 :1;
        unsigned PLEN3 :1;
        unsigned DLEN0 :1;
        unsigned DLEN1 :1;
        unsigned DLEN2 :1;
        unsigned DLEN3 :1;
    };
} CRCCON1bits_t;
extern volatile CRCCON1bits_t CRCCON1bits __attribute__((address(0x41F)));
// bitfield macros
# 14000 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1TMR


extern volatile __uint24 SMT1TMR __attribute__((address(0x48C)));


__asm("SMT1TMR equ 048Ch");


// Register: SMT1TMRL

extern volatile unsigned char SMT1TMRL __attribute__((address(0x48C)));

__asm("SMT1TMRL equ 048Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR0 :1;
        unsigned TMR1 :1;
        unsigned TMR2 :1;
        unsigned TMR3 :1;
        unsigned TMR4 :1;
        unsigned TMR5 :1;
        unsigned TMR6 :1;
        unsigned TMR7 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR0 :1;
        unsigned SMT1TMR1 :1;
        unsigned SMT1TMR2 :1;
        unsigned SMT1TMR3 :1;
        unsigned SMT1TMR4 :1;
        unsigned SMT1TMR5 :1;
        unsigned SMT1TMR6 :1;
        unsigned SMT1TMR7 :1;
    };
} SMT1TMRLbits_t;
extern volatile SMT1TMRLbits_t SMT1TMRLbits __attribute__((address(0x48C)));
// bitfield macros
# 14137 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1TMRH

extern volatile unsigned char SMT1TMRH __attribute__((address(0x48D)));

__asm("SMT1TMRH equ 048Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR8 :1;
        unsigned TMR9 :1;
        unsigned TMR10 :1;
        unsigned TMR11 :1;
        unsigned TMR12 :1;
        unsigned TMR13 :1;
        unsigned TMR14 :1;
        unsigned TMR15 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR8 :1;
        unsigned SMT1TMR9 :1;
        unsigned SMT1TMR10 :1;
        unsigned SMT1TMR11 :1;
        unsigned SMT1TMR12 :1;
        unsigned SMT1TMR13 :1;
        unsigned SMT1TMR14 :1;
        unsigned SMT1TMR15 :1;
    };
} SMT1TMRHbits_t;
extern volatile SMT1TMRHbits_t SMT1TMRHbits __attribute__((address(0x48D)));
// bitfield macros
# 14265 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1TMRU

extern volatile unsigned char SMT1TMRU __attribute__((address(0x48E)));

__asm("SMT1TMRU equ 048Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR16 :1;
        unsigned TMR17 :1;
        unsigned TMR18 :1;
        unsigned TMR19 :1;
        unsigned TMR20 :1;
        unsigned TMR21 :1;
        unsigned TMR22 :1;
        unsigned TMR23 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR16 :1;
        unsigned SMT1TMR17 :1;
        unsigned SMT1TMR18 :1;
        unsigned SMT1TMR19 :1;
        unsigned SMT1TMR20 :1;
        unsigned SMT1TMR21 :1;
        unsigned SMT1TMR22 :1;
        unsigned SMT1TMR23 :1;
    };
} SMT1TMRUbits_t;
extern volatile SMT1TMRUbits_t SMT1TMRUbits __attribute__((address(0x48E)));
// bitfield macros
# 14393 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CPR


extern volatile __uint24 SMT1CPR __attribute__((address(0x48F)));


__asm("SMT1CPR equ 048Fh");


// Register: SMT1CPRL

extern volatile unsigned char SMT1CPRL __attribute__((address(0x48F)));

__asm("SMT1CPRL equ 048Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR0 :1;
        unsigned CPR1 :1;
        unsigned CPR2 :1;
        unsigned CPR3 :1;
        unsigned CPR4 :1;
        unsigned CPR5 :1;
        unsigned CPR6 :1;
        unsigned CPR7 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
    struct {
        unsigned SMT1CPR0 :1;
        unsigned SMT1CPR1 :1;
        unsigned SMT1CPR2 :1;
        unsigned SMT1CPR3 :1;
        unsigned SMT1CPR4 :1;
        unsigned SMT1CPR5 :1;
        unsigned SMT1CPR6 :1;
        unsigned SMT1CPR7 :1;
    };
} SMT1CPRLbits_t;
extern volatile SMT1CPRLbits_t SMT1CPRLbits __attribute__((address(0x48F)));
// bitfield macros
# 14530 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CPRH

extern volatile unsigned char SMT1CPRH __attribute__((address(0x490)));

__asm("SMT1CPRH equ 0490h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR8 :1;
        unsigned CPR9 :1;
        unsigned CPR10 :1;
        unsigned CPR11 :1;
        unsigned CPR12 :1;
        unsigned CPR13 :1;
        unsigned CPR14 :1;
        unsigned CPR15 :1;
    };
    struct {
        unsigned SMT1CPR8 :1;
        unsigned SMT1CPR9 :1;
        unsigned SMT1CPR10 :1;
        unsigned SMT1CPR11 :1;
        unsigned SMT1CPR12 :1;
        unsigned SMT1CPR13 :1;
        unsigned SMT1CPR14 :1;
        unsigned SMT1CPR15 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
} SMT1CPRHbits_t;
extern volatile SMT1CPRHbits_t SMT1CPRHbits __attribute__((address(0x490)));
// bitfield macros
# 14658 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CPRU

extern volatile unsigned char SMT1CPRU __attribute__((address(0x491)));

__asm("SMT1CPRU equ 0491h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR16 :1;
        unsigned CPR17 :1;
        unsigned CPR18 :1;
        unsigned CPR19 :1;
        unsigned CPR20 :1;
        unsigned CPR21 :1;
        unsigned CPR22 :1;
        unsigned CPR23 :1;
    };
    struct {
        unsigned SMT1CPR16 :1;
        unsigned SMT1CPR17 :1;
        unsigned SMT1CPR18 :1;
        unsigned SMT1CPR19 :1;
        unsigned SMT1CPR20 :1;
        unsigned SMT1CPR21 :1;
        unsigned SMT1CPR22 :1;
        unsigned SMT1CPR23 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
} SMT1CPRUbits_t;
extern volatile SMT1CPRUbits_t SMT1CPRUbits __attribute__((address(0x491)));
// bitfield macros
# 14786 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CPW


extern volatile __uint24 SMT1CPW __attribute__((address(0x492)));


__asm("SMT1CPW equ 0492h");


// Register: SMT1CPWL

extern volatile unsigned char SMT1CPWL __attribute__((address(0x492)));

__asm("SMT1CPWL equ 0492h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW0 :1;
        unsigned CPW1 :1;
        unsigned CPW2 :1;
        unsigned CPW3 :1;
        unsigned CPW4 :1;
        unsigned CPW5 :1;
        unsigned CPW6 :1;
        unsigned CPW7 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW0 :1;
        unsigned SMT1CPW1 :1;
        unsigned SMT1CPW2 :1;
        unsigned SMT1CPW3 :1;
        unsigned SMT1CPW4 :1;
        unsigned SMT1CPW5 :1;
        unsigned SMT1CPW6 :1;
        unsigned SMT1CPW7 :1;
    };
} SMT1CPWLbits_t;
extern volatile SMT1CPWLbits_t SMT1CPWLbits __attribute__((address(0x492)));
// bitfield macros
# 14923 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CPWH

extern volatile unsigned char SMT1CPWH __attribute__((address(0x493)));

__asm("SMT1CPWH equ 0493h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW8 :1;
        unsigned CPW9 :1;
        unsigned CPW10 :1;
        unsigned CPW11 :1;
        unsigned CPW12 :1;
        unsigned CPW13 :1;
        unsigned CPW14 :1;
        unsigned CPW15 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW8 :1;
        unsigned SMT1CPW9 :1;
        unsigned SMT1CPW10 :1;
        unsigned SMT1CPW11 :1;
        unsigned SMT1CPW12 :1;
        unsigned SMT1CPW13 :1;
        unsigned SMT1CPW14 :1;
        unsigned SMT1CPW15 :1;
    };
} SMT1CPWHbits_t;
extern volatile SMT1CPWHbits_t SMT1CPWHbits __attribute__((address(0x493)));
// bitfield macros
# 15051 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CPWU

extern volatile unsigned char SMT1CPWU __attribute__((address(0x494)));

__asm("SMT1CPWU equ 0494h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW16 :1;
        unsigned CPW17 :1;
        unsigned CPW18 :1;
        unsigned CPW19 :1;
        unsigned CPW20 :1;
        unsigned CPW21 :1;
        unsigned CPW22 :1;
        unsigned CPW23 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW16 :1;
        unsigned SMT1CPW17 :1;
        unsigned SMT1CPW18 :1;
        unsigned SMT1CPW19 :1;
        unsigned SMT1CPW20 :1;
        unsigned SMT1CPW21 :1;
        unsigned SMT1CPW22 :1;
        unsigned SMT1CPW23 :1;
    };
} SMT1CPWUbits_t;
extern volatile SMT1CPWUbits_t SMT1CPWUbits __attribute__((address(0x494)));
// bitfield macros
# 15179 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1PR


extern volatile __uint24 SMT1PR __attribute__((address(0x495)));


__asm("SMT1PR equ 0495h");


// Register: SMT1PRL

extern volatile unsigned char SMT1PRL __attribute__((address(0x495)));

__asm("SMT1PRL equ 0495h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
        unsigned PR3 :1;
        unsigned PR4 :1;
        unsigned PR5 :1;
        unsigned PR6 :1;
        unsigned PR7 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR0 :1;
        unsigned SMT1PR1 :1;
        unsigned SMT1PR2 :1;
        unsigned SMT1PR3 :1;
        unsigned SMT1PR4 :1;
        unsigned SMT1PR5 :1;
        unsigned SMT1PR6 :1;
        unsigned SMT1PR7 :1;
    };
} SMT1PRLbits_t;
extern volatile SMT1PRLbits_t SMT1PRLbits __attribute__((address(0x495)));
// bitfield macros
# 15316 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1PRH

extern volatile unsigned char SMT1PRH __attribute__((address(0x496)));

__asm("SMT1PRH equ 0496h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR8 :1;
        unsigned PR9 :1;
        unsigned PR10 :1;
        unsigned PR11 :1;
        unsigned PR12 :1;
        unsigned PR13 :1;
        unsigned PR14 :1;
        unsigned PR15 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR8 :1;
        unsigned SMT1PR9 :1;
        unsigned SMT1PR10 :1;
        unsigned SMT1PR11 :1;
        unsigned SMT1PR12 :1;
        unsigned SMT1PR13 :1;
        unsigned SMT1PR14 :1;
        unsigned SMT1PR15 :1;
    };
} SMT1PRHbits_t;
extern volatile SMT1PRHbits_t SMT1PRHbits __attribute__((address(0x496)));
// bitfield macros
# 15444 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1PRU

extern volatile unsigned char SMT1PRU __attribute__((address(0x497)));

__asm("SMT1PRU equ 0497h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR16 :1;
        unsigned PR17 :1;
        unsigned PR18 :1;
        unsigned PR19 :1;
        unsigned PR20 :1;
        unsigned PR21 :1;
        unsigned PR22 :1;
        unsigned PR23 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR16 :1;
        unsigned SMT1PR17 :1;
        unsigned SMT1PR18 :1;
        unsigned SMT1PR19 :1;
        unsigned SMT1PR20 :1;
        unsigned SMT1PR21 :1;
        unsigned SMT1PR22 :1;
        unsigned SMT1PR23 :1;
    };
} SMT1PRUbits_t;
extern volatile SMT1PRUbits_t SMT1PRUbits __attribute__((address(0x497)));
// bitfield macros
# 15572 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CON0

extern volatile unsigned char SMT1CON0 __attribute__((address(0x498)));

__asm("SMT1CON0 equ 0498h");

// bitfield definitions
typedef union {
    struct {
        unsigned PS :2;
        unsigned CPOL :1;
        unsigned SPOL :1;
        unsigned WPOL :1;
        unsigned STP :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned SMT1PS :2;
        unsigned SMT1CPOL :1;
        unsigned SMT1SPOL :1;
        unsigned SMT1WOL :1;
        unsigned SMT1STP :1;
        unsigned :1;
        unsigned SMT1EN :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
    };
    struct {
        unsigned SMT1PS0 :1;
        unsigned SMT1PS1 :1;
    };
} SMT1CON0bits_t;
extern volatile SMT1CON0bits_t SMT1CON0bits __attribute__((address(0x498)));
// bitfield macros
# 15690 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CON1

extern volatile unsigned char SMT1CON1 __attribute__((address(0x499)));

__asm("SMT1CON1 equ 0499h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned :2;
        unsigned REPEAT :1;
        unsigned GO :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned :2;
        unsigned SMT1REPEAT :1;
        unsigned SMT1GO :1;
    };
    struct {
        unsigned SMT1MODE :4;
    };
} SMT1CON1bits_t;
extern volatile SMT1CON1bits_t SMT1CON1bits __attribute__((address(0x499)));
// bitfield macros
# 15770 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1STAT

extern volatile unsigned char SMT1STAT __attribute__((address(0x49A)));

__asm("SMT1STAT equ 049Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned AS :1;
        unsigned WS :1;
        unsigned TS :1;
        unsigned :2;
        unsigned RST :1;
        unsigned CPWUP :1;
        unsigned CPRUP :1;
    };
    struct {
        unsigned SMT1AS :1;
        unsigned SMT1WS :1;
        unsigned SMT1TS :1;
        unsigned :2;
        unsigned SMT1RESET :1;
        unsigned SMT1CPWUP :1;
        unsigned SMT1CPRUP :1;
    };
    struct {
        unsigned :5;
        unsigned SMT1RST :1;
    };
} SMT1STATbits_t;
extern volatile SMT1STATbits_t SMT1STATbits __attribute__((address(0x49A)));
// bitfield macros
# 15869 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1CLK

extern volatile unsigned char SMT1CLK __attribute__((address(0x49B)));

__asm("SMT1CLK equ 049Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned CSEL :3;
    };
    struct {
        unsigned CSEL0 :1;
        unsigned CSEL1 :1;
        unsigned CSEL2 :1;
    };
    struct {
        unsigned SMT1CSEL :3;
    };
    struct {
        unsigned SMT1CSEL0 :1;
        unsigned SMT1CSEL1 :1;
        unsigned SMT1CSEL2 :1;
    };
} SMT1CLKbits_t;
extern volatile SMT1CLKbits_t SMT1CLKbits __attribute__((address(0x49B)));
// bitfield macros
# 15937 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1SIG

extern volatile unsigned char SMT1SIG __attribute__((address(0x49C)));

__asm("SMT1SIG equ 049Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned SSEL :5;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
        unsigned SSEL3 :1;
        unsigned SSEL4 :1;
    };
    struct {
        unsigned SMT1SSEL :5;
    };
    struct {
        unsigned SMT1SSEL0 :1;
        unsigned SMT1SSEL1 :1;
        unsigned SMT1SSEL2 :1;
        unsigned SMT1SSEL3 :1;
        unsigned SMT1SSEL4 :1;
    };
} SMT1SIGbits_t;
extern volatile SMT1SIGbits_t SMT1SIGbits __attribute__((address(0x49C)));
// bitfield macros
# 16029 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1WIN

extern volatile unsigned char SMT1WIN __attribute__((address(0x49D)));

__asm("SMT1WIN equ 049Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned WSEL :5;
    };
    struct {
        unsigned WSEL0 :1;
        unsigned WSEL1 :1;
        unsigned WSEL2 :1;
        unsigned WSEL3 :1;
        unsigned WSEL4 :1;
    };
    struct {
        unsigned SMT1WSEL :5;
    };
    struct {
        unsigned SMT1WSEL0 :1;
        unsigned SMT1WSEL1 :1;
        unsigned SMT1WSEL2 :1;
        unsigned SMT1WSEL3 :1;
        unsigned SMT1WSEL4 :1;
    };
} SMT1WINbits_t;
extern volatile SMT1WINbits_t SMT1WINbits __attribute__((address(0x49D)));
// bitfield macros
# 16121 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2TMR


extern volatile __uint24 SMT2TMR __attribute__((address(0x50C)));


__asm("SMT2TMR equ 050Ch");


// Register: SMT2TMRL

extern volatile unsigned char SMT2TMRL __attribute__((address(0x50C)));

__asm("SMT2TMRL equ 050Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR0 :1;
        unsigned TMR1 :1;
        unsigned TMR2 :1;
        unsigned TMR3 :1;
        unsigned TMR4 :1;
        unsigned TMR5 :1;
        unsigned TMR6 :1;
        unsigned TMR7 :1;
    };
    struct {
        unsigned SMT2TMR :8;
    };
    struct {
        unsigned SMT2TMR0 :1;
        unsigned SMT2TMR1 :1;
        unsigned SMT2TMR2 :1;
        unsigned SMT2TMR3 :1;
        unsigned SMT2TMR4 :1;
        unsigned SMT2TMR5 :1;
        unsigned SMT2TMR6 :1;
        unsigned SMT2TMR7 :1;
    };
} SMT2TMRLbits_t;
extern volatile SMT2TMRLbits_t SMT2TMRLbits __attribute__((address(0x50C)));
// bitfield macros
# 16258 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2TMRH

extern volatile unsigned char SMT2TMRH __attribute__((address(0x50D)));

__asm("SMT2TMRH equ 050Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR8 :1;
        unsigned TMR9 :1;
        unsigned TMR10 :1;
        unsigned TMR11 :1;
        unsigned TMR12 :1;
        unsigned TMR13 :1;
        unsigned TMR14 :1;
        unsigned TMR15 :1;
    };
    struct {
        unsigned SMT2TMR :8;
    };
    struct {
        unsigned SMT2TMR8 :1;
        unsigned SMT2TMR9 :1;
        unsigned SMT2TMR10 :1;
        unsigned SMT2TMR11 :1;
        unsigned SMT2TMR12 :1;
        unsigned SMT2TMR13 :1;
        unsigned SMT2TMR14 :1;
        unsigned SMT2TMR15 :1;
    };
} SMT2TMRHbits_t;
extern volatile SMT2TMRHbits_t SMT2TMRHbits __attribute__((address(0x50D)));
// bitfield macros
# 16386 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2TMRU

extern volatile unsigned char SMT2TMRU __attribute__((address(0x50E)));

__asm("SMT2TMRU equ 050Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR16 :1;
        unsigned TMR17 :1;
        unsigned TMR18 :1;
        unsigned TMR19 :1;
        unsigned TMR20 :1;
        unsigned TMR21 :1;
        unsigned TMR22 :1;
        unsigned TMR23 :1;
    };
    struct {
        unsigned SMT2TMR :8;
    };
    struct {
        unsigned SMT2TMR16 :1;
        unsigned SMT2TMR17 :1;
        unsigned SMT2TMR18 :1;
        unsigned SMT2TMR19 :1;
        unsigned SMT2TMR20 :1;
        unsigned SMT2TMR21 :1;
        unsigned SMT2TMR22 :1;
        unsigned SMT2TMR23 :1;
    };
} SMT2TMRUbits_t;
extern volatile SMT2TMRUbits_t SMT2TMRUbits __attribute__((address(0x50E)));
// bitfield macros
# 16514 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CPR


extern volatile __uint24 SMT2CPR __attribute__((address(0x50F)));


__asm("SMT2CPR equ 050Fh");


// Register: SMT2CPRL

extern volatile unsigned char SMT2CPRL __attribute__((address(0x50F)));

__asm("SMT2CPRL equ 050Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR0 :1;
        unsigned CPR1 :1;
        unsigned CPR2 :1;
        unsigned CPR3 :1;
        unsigned CPR4 :1;
        unsigned CPR5 :1;
        unsigned CPR6 :1;
        unsigned CPR7 :1;
    };
    struct {
        unsigned SMT2CPR :8;
    };
    struct {
        unsigned SMT2CPR0 :1;
        unsigned SMT2CPR1 :1;
        unsigned SMT2CPR2 :1;
        unsigned SMT2CPR3 :1;
        unsigned SMT2CPR4 :1;
        unsigned SMT2CPR5 :1;
        unsigned SMT2CPR6 :1;
        unsigned SMT2CPR7 :1;
    };
} SMT2CPRLbits_t;
extern volatile SMT2CPRLbits_t SMT2CPRLbits __attribute__((address(0x50F)));
// bitfield macros
# 16651 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CPRH

extern volatile unsigned char SMT2CPRH __attribute__((address(0x510)));

__asm("SMT2CPRH equ 0510h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR8 :1;
        unsigned CPR9 :1;
        unsigned CPR10 :1;
        unsigned CPR11 :1;
        unsigned CPR12 :1;
        unsigned CPR13 :1;
        unsigned CPR14 :1;
        unsigned CPR15 :1;
    };
    struct {
        unsigned SMT2CPR8 :1;
        unsigned SMT2CPR9 :1;
        unsigned SMT2CPR10 :1;
        unsigned SMT2CPR11 :1;
        unsigned SMT2CPR12 :1;
        unsigned SMT2CPR13 :1;
        unsigned SMT2CPR14 :1;
        unsigned SMT2CPR15 :1;
    };
    struct {
        unsigned SMT2CPR :8;
    };
} SMT2CPRHbits_t;
extern volatile SMT2CPRHbits_t SMT2CPRHbits __attribute__((address(0x510)));
// bitfield macros
# 16779 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CPRU

extern volatile unsigned char SMT2CPRU __attribute__((address(0x511)));

__asm("SMT2CPRU equ 0511h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR16 :1;
        unsigned CPR17 :1;
        unsigned CPR18 :1;
        unsigned CPR19 :1;
        unsigned CPR20 :1;
        unsigned CPR21 :1;
        unsigned CPR22 :1;
        unsigned CPR23 :1;
    };
    struct {
        unsigned SMT2CPR16 :1;
        unsigned SMT2CPR17 :1;
        unsigned SMT2CPR18 :1;
        unsigned SMT2CPR19 :1;
        unsigned SMT2CPR20 :1;
        unsigned SMT2CPR21 :1;
        unsigned SMT2CPR22 :1;
        unsigned SMT2CPR23 :1;
    };
    struct {
        unsigned SMT2CPR :8;
    };
} SMT2CPRUbits_t;
extern volatile SMT2CPRUbits_t SMT2CPRUbits __attribute__((address(0x511)));
// bitfield macros
# 16907 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CPW


extern volatile __uint24 SMT2CPW __attribute__((address(0x512)));


__asm("SMT2CPW equ 0512h");


// Register: SMT2CPWL

extern volatile unsigned char SMT2CPWL __attribute__((address(0x512)));

__asm("SMT2CPWL equ 0512h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW0 :1;
        unsigned CPW1 :1;
        unsigned CPW2 :1;
        unsigned CPW3 :1;
        unsigned CPW4 :1;
        unsigned CPW5 :1;
        unsigned CPW6 :1;
        unsigned CPW7 :1;
    };
    struct {
        unsigned SMT2CPW :8;
    };
    struct {
        unsigned SMT2CPW0 :1;
        unsigned SMT2CPW1 :1;
        unsigned SMT2CPW2 :1;
        unsigned SMT2CPW3 :1;
        unsigned SMT2CPW4 :1;
        unsigned SMT2CPW5 :1;
        unsigned SMT2CPW6 :1;
        unsigned SMT2CPW7 :1;
    };
} SMT2CPWLbits_t;
extern volatile SMT2CPWLbits_t SMT2CPWLbits __attribute__((address(0x512)));
// bitfield macros
# 17044 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CPWH

extern volatile unsigned char SMT2CPWH __attribute__((address(0x513)));

__asm("SMT2CPWH equ 0513h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW8 :1;
        unsigned CPW9 :1;
        unsigned CPW10 :1;
        unsigned CPW11 :1;
        unsigned CPW12 :1;
        unsigned CPW13 :1;
        unsigned CPW14 :1;
        unsigned CPW15 :1;
    };
    struct {
        unsigned SMT2CPW :8;
    };
    struct {
        unsigned SMT2CPW8 :1;
        unsigned SMT2CPW9 :1;
        unsigned SMT2CPW10 :1;
        unsigned SMT2CPW11 :1;
        unsigned SMT2CPW12 :1;
        unsigned SMT2CPW13 :1;
        unsigned SMT2CPW14 :1;
        unsigned SMT2CPW15 :1;
    };
} SMT2CPWHbits_t;
extern volatile SMT2CPWHbits_t SMT2CPWHbits __attribute__((address(0x513)));
// bitfield macros
# 17172 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CPWU

extern volatile unsigned char SMT2CPWU __attribute__((address(0x514)));

__asm("SMT2CPWU equ 0514h");

// bitfield definitions
typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW16 :1;
        unsigned CPW17 :1;
        unsigned CPW18 :1;
        unsigned CPW19 :1;
        unsigned CPW20 :1;
        unsigned CPW21 :1;
        unsigned CPW22 :1;
        unsigned CPW23 :1;
    };
    struct {
        unsigned SMT2CPW :8;
    };
    struct {
        unsigned SMT2CPW16 :1;
        unsigned SMT2CPW17 :1;
        unsigned SMT2CPW18 :1;
        unsigned SMT2CPW19 :1;
        unsigned SMT2CPW20 :1;
        unsigned SMT2CPW21 :1;
        unsigned SMT2CPW22 :1;
        unsigned SMT2CPW23 :1;
    };
} SMT2CPWUbits_t;
extern volatile SMT2CPWUbits_t SMT2CPWUbits __attribute__((address(0x514)));
// bitfield macros
# 17300 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2PR


extern volatile __uint24 SMT2PR __attribute__((address(0x515)));


__asm("SMT2PR equ 0515h");


// Register: SMT2PRL

extern volatile unsigned char SMT2PRL __attribute__((address(0x515)));

__asm("SMT2PRL equ 0515h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
        unsigned PR3 :1;
        unsigned PR4 :1;
        unsigned PR5 :1;
        unsigned PR6 :1;
        unsigned PR7 :1;
    };
    struct {
        unsigned SMT2PR :8;
    };
    struct {
        unsigned SMT2PR0 :1;
        unsigned SMT2PR1 :1;
        unsigned SMT2PR2 :1;
        unsigned SMT2PR3 :1;
        unsigned SMT2PR4 :1;
        unsigned SMT2PR5 :1;
        unsigned SMT2PR6 :1;
        unsigned SMT2PR7 :1;
    };
} SMT2PRLbits_t;
extern volatile SMT2PRLbits_t SMT2PRLbits __attribute__((address(0x515)));
// bitfield macros
# 17437 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2PRH

extern volatile unsigned char SMT2PRH __attribute__((address(0x516)));

__asm("SMT2PRH equ 0516h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR8 :1;
        unsigned PR9 :1;
        unsigned PR10 :1;
        unsigned PR11 :1;
        unsigned PR12 :1;
        unsigned PR13 :1;
        unsigned PR14 :1;
        unsigned PR15 :1;
    };
    struct {
        unsigned SMT2PR :8;
    };
    struct {
        unsigned SMT2PR8 :1;
        unsigned SMT2PR9 :1;
        unsigned SMT2PR10 :1;
        unsigned SMT2PR11 :1;
        unsigned SMT2PR12 :1;
        unsigned SMT2PR13 :1;
        unsigned SMT2PR14 :1;
        unsigned SMT2PR15 :1;
    };
} SMT2PRHbits_t;
extern volatile SMT2PRHbits_t SMT2PRHbits __attribute__((address(0x516)));
// bitfield macros
# 17565 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2PRU

extern volatile unsigned char SMT2PRU __attribute__((address(0x517)));

__asm("SMT2PRU equ 0517h");

// bitfield definitions
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR16 :1;
        unsigned PR17 :1;
        unsigned PR18 :1;
        unsigned PR19 :1;
        unsigned PR20 :1;
        unsigned PR21 :1;
        unsigned PR22 :1;
        unsigned PR23 :1;
    };
    struct {
        unsigned SMT2PR :8;
    };
    struct {
        unsigned SMT2PR16 :1;
        unsigned SMT2PR17 :1;
        unsigned SMT2PR18 :1;
        unsigned SMT2PR19 :1;
        unsigned SMT2PR20 :1;
        unsigned SMT2PR21 :1;
        unsigned SMT2PR22 :1;
        unsigned SMT2PR23 :1;
    };
} SMT2PRUbits_t;
extern volatile SMT2PRUbits_t SMT2PRUbits __attribute__((address(0x517)));
// bitfield macros
# 17693 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CON0

extern volatile unsigned char SMT2CON0 __attribute__((address(0x518)));

__asm("SMT2CON0 equ 0518h");

// bitfield definitions
typedef union {
    struct {
        unsigned PS :2;
        unsigned CPOL :1;
        unsigned SPOL :1;
        unsigned WPOL :1;
        unsigned STP :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned SMT2PS :2;
        unsigned SMT2CPOL :1;
        unsigned SMT2SPOL :1;
        unsigned SMT2WOL :1;
        unsigned SMT2STP :1;
        unsigned :1;
        unsigned SMT2EN :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
    };
    struct {
        unsigned SMT2PS0 :1;
        unsigned SMT2PS1 :1;
    };
} SMT2CON0bits_t;
extern volatile SMT2CON0bits_t SMT2CON0bits __attribute__((address(0x518)));
// bitfield macros
# 17811 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CON1

extern volatile unsigned char SMT2CON1 __attribute__((address(0x519)));

__asm("SMT2CON1 equ 0519h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :4;
        unsigned :2;
        unsigned REPEAT :1;
        unsigned GO :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned :2;
        unsigned SMT2REPEAT :1;
        unsigned SMT2GO :1;
    };
    struct {
        unsigned SMT2MODE :4;
    };
} SMT2CON1bits_t;
extern volatile SMT2CON1bits_t SMT2CON1bits __attribute__((address(0x519)));
// bitfield macros
# 17891 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2STAT

extern volatile unsigned char SMT2STAT __attribute__((address(0x51A)));

__asm("SMT2STAT equ 051Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned AS :1;
        unsigned WS :1;
        unsigned TS :1;
        unsigned :2;
        unsigned RST :1;
        unsigned CPWUP :1;
        unsigned CPRUP :1;
    };
    struct {
        unsigned SMT2AS :1;
        unsigned SMT2WS :1;
        unsigned SMT2TS :1;
        unsigned :2;
        unsigned SMT2RESET :1;
        unsigned SMT2CPWUP :1;
        unsigned SMT2CPRUP :1;
    };
    struct {
        unsigned :5;
        unsigned SMT2RST :1;
    };
} SMT2STATbits_t;
extern volatile SMT2STATbits_t SMT2STATbits __attribute__((address(0x51A)));
// bitfield macros
# 17990 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2CLK

extern volatile unsigned char SMT2CLK __attribute__((address(0x51B)));

__asm("SMT2CLK equ 051Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned CSEL :3;
    };
    struct {
        unsigned CSEL0 :1;
        unsigned CSEL1 :1;
        unsigned CSEL2 :1;
    };
    struct {
        unsigned SMT2CSEL :3;
    };
    struct {
        unsigned SMT2CSEL0 :1;
        unsigned SMT2CSEL1 :1;
        unsigned SMT2CSEL2 :1;
    };
} SMT2CLKbits_t;
extern volatile SMT2CLKbits_t SMT2CLKbits __attribute__((address(0x51B)));
// bitfield macros
# 18058 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2SIG

extern volatile unsigned char SMT2SIG __attribute__((address(0x51C)));

__asm("SMT2SIG equ 051Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned SSEL :5;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
        unsigned SSEL3 :1;
        unsigned SSEL4 :1;
    };
    struct {
        unsigned SMT2SSEL :5;
    };
    struct {
        unsigned SMT2SSEL0 :1;
        unsigned SMT2SSEL1 :1;
        unsigned SMT2SSEL2 :1;
        unsigned SMT2SSEL3 :1;
        unsigned SMT2SSEL4 :1;
    };
} SMT2SIGbits_t;
extern volatile SMT2SIGbits_t SMT2SIGbits __attribute__((address(0x51C)));
// bitfield macros
# 18150 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2WIN

extern volatile unsigned char SMT2WIN __attribute__((address(0x51D)));

__asm("SMT2WIN equ 051Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned WSEL :5;
    };
    struct {
        unsigned WSEL0 :1;
        unsigned WSEL1 :1;
        unsigned WSEL2 :1;
        unsigned WSEL3 :1;
        unsigned WSEL4 :1;
    };
    struct {
        unsigned SMT2WSEL :5;
    };
    struct {
        unsigned SMT2WSEL0 :1;
        unsigned SMT2WSEL1 :1;
        unsigned SMT2WSEL2 :1;
        unsigned SMT2WSEL3 :1;
        unsigned SMT2WSEL4 :1;
    };
} SMT2WINbits_t;
extern volatile SMT2WINbits_t SMT2WINbits __attribute__((address(0x51D)));
// bitfield macros
# 18242 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1ACC


extern volatile __uint24 NCO1ACC __attribute__((address(0x58C)));


__asm("NCO1ACC equ 058Ch");


// Register: NCO1ACCL

extern volatile unsigned char NCO1ACCL __attribute__((address(0x58C)));

__asm("NCO1ACCL equ 058Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned NCO1ACC0 :1;
        unsigned NCO1ACC1 :1;
        unsigned NCO1ACC2 :1;
        unsigned NCO1ACC3 :1;
        unsigned NCO1ACC4 :1;
        unsigned NCO1ACC5 :1;
        unsigned NCO1ACC6 :1;
        unsigned NCO1ACC7 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCLbits_t;
extern volatile NCO1ACCLbits_t NCO1ACCLbits __attribute__((address(0x58C)));
// bitfield macros
# 18321 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1ACCH

extern volatile unsigned char NCO1ACCH __attribute__((address(0x58D)));

__asm("NCO1ACCH equ 058Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned NCO1ACC8 :1;
        unsigned NCO1ACC9 :1;
        unsigned NCO1ACC10 :1;
        unsigned NCO1ACC11 :1;
        unsigned NCO1ACC12 :1;
        unsigned NCO1ACC13 :1;
        unsigned NCO1ACC14 :1;
        unsigned NCO1ACC15 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCHbits_t;
extern volatile NCO1ACCHbits_t NCO1ACCHbits __attribute__((address(0x58D)));
// bitfield macros
# 18391 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1ACCU

extern volatile unsigned char NCO1ACCU __attribute__((address(0x58E)));

__asm("NCO1ACCU equ 058Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned NCO1ACC16 :1;
        unsigned NCO1ACC17 :1;
        unsigned NCO1ACC18 :1;
        unsigned NCO1ACC19 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCUbits_t;
extern volatile NCO1ACCUbits_t NCO1ACCUbits __attribute__((address(0x58E)));
// bitfield macros
# 18437 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1INC


extern volatile __uint24 NCO1INC __attribute__((address(0x58F)));


__asm("NCO1INC equ 058Fh");


// Register: NCO1INCL

extern volatile unsigned char NCO1INCL __attribute__((address(0x58F)));

__asm("NCO1INCL equ 058Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned NCO1INC0 :1;
        unsigned NCO1INC1 :1;
        unsigned NCO1INC2 :1;
        unsigned NCO1INC3 :1;
        unsigned NCO1INC4 :1;
        unsigned NCO1INC5 :1;
        unsigned NCO1INC6 :1;
        unsigned NCO1INC7 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCLbits_t;
extern volatile NCO1INCLbits_t NCO1INCLbits __attribute__((address(0x58F)));
// bitfield macros
# 18516 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1INCH

extern volatile unsigned char NCO1INCH __attribute__((address(0x590)));

__asm("NCO1INCH equ 0590h");

// bitfield definitions
typedef union {
    struct {
        unsigned NCO1INC8 :1;
        unsigned NCO1INC9 :1;
        unsigned NCO1INC10 :1;
        unsigned NCO1INC11 :1;
        unsigned NCO1INC12 :1;
        unsigned NCO1INC13 :1;
        unsigned NCO1INC14 :1;
        unsigned NCO1INC15 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCHbits_t;
extern volatile NCO1INCHbits_t NCO1INCHbits __attribute__((address(0x590)));
// bitfield macros
# 18586 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1INCU

extern volatile unsigned char NCO1INCU __attribute__((address(0x591)));

__asm("NCO1INCU equ 0591h");

// bitfield definitions
typedef union {
    struct {
        unsigned NCO1INC16 :1;
        unsigned NCO1INC17 :1;
        unsigned NCO1INC18 :1;
        unsigned NCO1INC19 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCUbits_t;
extern volatile NCO1INCUbits_t NCO1INCUbits __attribute__((address(0x591)));
// bitfield macros
# 18632 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1CON

extern volatile unsigned char NCO1CON __attribute__((address(0x592)));

__asm("NCO1CON equ 0592h");

// bitfield definitions
typedef union {
    struct {
        unsigned N1PFM :1;
        unsigned :3;
        unsigned N1POL :1;
        unsigned N1OUT :1;
        unsigned :1;
        unsigned N1EN :1;
    };
} NCO1CONbits_t;
extern volatile NCO1CONbits_t NCO1CONbits __attribute__((address(0x592)));
// bitfield macros
# 18672 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NCO1CLK

extern volatile unsigned char NCO1CLK __attribute__((address(0x593)));

__asm("NCO1CLK equ 0593h");

// bitfield definitions
typedef union {
    struct {
        unsigned N1CKS0 :1;
        unsigned N1CKS1 :1;
        unsigned N1CKS2 :1;
        unsigned :2;
        unsigned N1PWS0 :1;
        unsigned N1PWS1 :1;
        unsigned N1PWS2 :1;
    };
    struct {
        unsigned N1CKS :4;
        unsigned :1;
        unsigned N1PWS :3;
    };
} NCO1CLKbits_t;
extern volatile NCO1CLKbits_t NCO1CLKbits __attribute__((address(0x593)));
// bitfield macros
# 18738 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1CLKCON

extern volatile unsigned char CWG1CLKCON __attribute__((address(0x60C)));

__asm("CWG1CLKCON equ 060Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG1CS :1;
    };
} CWG1CLKCONbits_t;
extern volatile CWG1CLKCONbits_t CWG1CLKCONbits __attribute__((address(0x60C)));
// bitfield macros
# 18766 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1ISM

extern volatile unsigned char CWG1ISM __attribute__((address(0x60D)));

__asm("CWG1ISM equ 060Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned IS :4;
    };
    struct {
        unsigned CWG1ISM0 :1;
        unsigned CWG1ISM1 :1;
        unsigned CWG1ISM2 :1;
        unsigned CWG1ISM3 :1;
    };
} CWG1ISMbits_t;
extern volatile CWG1ISMbits_t CWG1ISMbits __attribute__((address(0x60D)));
// bitfield macros
# 18812 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1DBR

extern volatile unsigned char CWG1DBR __attribute__((address(0x60E)));

__asm("CWG1DBR equ 060Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
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
extern volatile CWG1DBRbits_t CWG1DBRbits __attribute__((address(0x60E)));
// bitfield macros
# 18916 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1DBF

extern volatile unsigned char CWG1DBF __attribute__((address(0x60F)));

__asm("CWG1DBF equ 060Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
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
extern volatile CWG1DBFbits_t CWG1DBFbits __attribute__((address(0x60F)));
// bitfield macros
# 19020 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1CON0

extern volatile unsigned char CWG1CON0 __attribute__((address(0x610)));

__asm("CWG1CON0 equ 0610h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G1EN :1;
    };
    struct {
        unsigned CWG1MODE :3;
        unsigned :3;
        unsigned CWG1LD :1;
        unsigned CWG1EN :1;
    };
    struct {
        unsigned CWG1MODE0 :1;
        unsigned CWG1MODE1 :1;
        unsigned CWG1MODE2 :1;
    };
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __attribute__((address(0x610)));
// bitfield macros
# 19121 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1CON1

extern volatile unsigned char CWG1CON1 __attribute__((address(0x611)));

__asm("CWG1CON1 equ 0611h");

// bitfield definitions
typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG1POLA :1;
        unsigned CWG1POLB :1;
        unsigned CWG1POLC :1;
        unsigned CWG1POLD :1;
        unsigned :1;
        unsigned CWG1IN :1;
    };
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __attribute__((address(0x611)));
// bitfield macros
# 19199 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1AS0

extern volatile unsigned char CWG1AS0 __attribute__((address(0x612)));

__asm("CWG1AS0 equ 0612h");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC :2;
        unsigned CWG1LSBD :2;
        unsigned CWG1REN :1;
        unsigned CWG1SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC0 :1;
        unsigned CWG1LSAC1 :1;
        unsigned CWG1LSBD0 :1;
        unsigned CWG1LSBD1 :1;
    };
} CWG1AS0bits_t;
extern volatile CWG1AS0bits_t CWG1AS0bits __attribute__((address(0x612)));
// bitfield macros
# 19319 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1AS1

extern volatile unsigned char CWG1AS1 __attribute__((address(0x613)));

__asm("CWG1AS1 equ 0613h");

// bitfield definitions
typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
    };
} CWG1AS1bits_t;
extern volatile CWG1AS1bits_t CWG1AS1bits __attribute__((address(0x613)));
// bitfield macros
# 19375 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1STR

extern volatile unsigned char CWG1STR __attribute__((address(0x614)));

__asm("CWG1STR equ 0614h");

// bitfield definitions
typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG1STRA :1;
        unsigned CWG1STRB :1;
        unsigned CWG1STRC :1;
        unsigned CWG1STRD :1;
        unsigned CWG1OVRA :1;
        unsigned CWG1OVRB :1;
        unsigned CWG1OVRC :1;
        unsigned CWG1OVRD :1;
    };
} CWG1STRbits_t;
extern volatile CWG1STRbits_t CWG1STRbits __attribute__((address(0x614)));
// bitfield macros
# 19487 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2CLKCON

extern volatile unsigned char CWG2CLKCON __attribute__((address(0x616)));

__asm("CWG2CLKCON equ 0616h");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG2CS :1;
    };
} CWG2CLKCONbits_t;
extern volatile CWG2CLKCONbits_t CWG2CLKCONbits __attribute__((address(0x616)));
// bitfield macros
# 19515 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2ISM

extern volatile unsigned char CWG2ISM __attribute__((address(0x617)));

__asm("CWG2ISM equ 0617h");

// bitfield definitions
typedef union {
    struct {
        unsigned IS :4;
    };
    struct {
        unsigned CWG2ISM0 :1;
        unsigned CWG2ISM1 :1;
        unsigned CWG2ISM2 :1;
        unsigned CWG2ISM3 :1;
    };
} CWG2ISMbits_t;
extern volatile CWG2ISMbits_t CWG2ISMbits __attribute__((address(0x617)));
// bitfield macros
# 19561 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2DBR

extern volatile unsigned char CWG2DBR __attribute__((address(0x618)));

__asm("CWG2DBR equ 0618h");

// bitfield definitions
typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG2DBR :6;
    };
    struct {
        unsigned CWG2DBR0 :1;
        unsigned CWG2DBR1 :1;
        unsigned CWG2DBR2 :1;
        unsigned CWG2DBR3 :1;
        unsigned CWG2DBR4 :1;
        unsigned CWG2DBR5 :1;
    };
} CWG2DBRbits_t;
extern volatile CWG2DBRbits_t CWG2DBRbits __attribute__((address(0x618)));
// bitfield macros
# 19665 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2DBF

extern volatile unsigned char CWG2DBF __attribute__((address(0x619)));

__asm("CWG2DBF equ 0619h");

// bitfield definitions
typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG2DBF :6;
    };
    struct {
        unsigned CWG2DBF0 :1;
        unsigned CWG2DBF1 :1;
        unsigned CWG2DBF2 :1;
        unsigned CWG2DBF3 :1;
        unsigned CWG2DBF4 :1;
        unsigned CWG2DBF5 :1;
    };
} CWG2DBFbits_t;
extern volatile CWG2DBFbits_t CWG2DBFbits __attribute__((address(0x619)));
// bitfield macros
# 19769 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2CON0

extern volatile unsigned char CWG2CON0 __attribute__((address(0x61A)));

__asm("CWG2CON0 equ 061Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G2EN :1;
    };
    struct {
        unsigned CWG2MODE :3;
        unsigned :3;
        unsigned CWG2LD :1;
        unsigned CWG2EN :1;
    };
    struct {
        unsigned CWG2MODE0 :1;
        unsigned CWG2MODE1 :1;
        unsigned CWG2MODE2 :1;
    };
} CWG2CON0bits_t;
extern volatile CWG2CON0bits_t CWG2CON0bits __attribute__((address(0x61A)));
// bitfield macros
# 19870 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2CON1

extern volatile unsigned char CWG2CON1 __attribute__((address(0x61B)));

__asm("CWG2CON1 equ 061Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG2POLA :1;
        unsigned CWG2POLB :1;
        unsigned CWG2POLC :1;
        unsigned CWG2POLD :1;
        unsigned :1;
        unsigned CWG2IN :1;
    };
} CWG2CON1bits_t;
extern volatile CWG2CON1bits_t CWG2CON1bits __attribute__((address(0x61B)));
// bitfield macros
# 19948 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2AS0

extern volatile unsigned char CWG2AS0 __attribute__((address(0x61C)));

__asm("CWG2AS0 equ 061Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG2LSAC :2;
        unsigned CWG2LSBD :2;
        unsigned CWG2REN :1;
        unsigned CWG2SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG2LSAC0 :1;
        unsigned CWG2LSAC1 :1;
        unsigned CWG2LSBD0 :1;
        unsigned CWG2LSBD1 :1;
    };
} CWG2AS0bits_t;
extern volatile CWG2AS0bits_t CWG2AS0bits __attribute__((address(0x61C)));
// bitfield macros
# 20068 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2AS1

extern volatile unsigned char CWG2AS1 __attribute__((address(0x61D)));

__asm("CWG2AS1 equ 061Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
    };
} CWG2AS1bits_t;
extern volatile CWG2AS1bits_t CWG2AS1bits __attribute__((address(0x61D)));
// bitfield macros
# 20124 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2STR

extern volatile unsigned char CWG2STR __attribute__((address(0x61E)));

__asm("CWG2STR equ 061Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG2STRA :1;
        unsigned CWG2STRB :1;
        unsigned CWG2STRC :1;
        unsigned CWG2STRD :1;
        unsigned CWG2OVRA :1;
        unsigned CWG2OVRB :1;
        unsigned CWG2OVRC :1;
        unsigned CWG2OVRD :1;
    };
} CWG2STRbits_t;
extern volatile CWG2STRbits_t CWG2STRbits __attribute__((address(0x61E)));
// bitfield macros
# 20236 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3CLKCON

extern volatile unsigned char CWG3CLKCON __attribute__((address(0x68C)));

__asm("CWG3CLKCON equ 068Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG3CS :1;
    };
} CWG3CLKCONbits_t;
extern volatile CWG3CLKCONbits_t CWG3CLKCONbits __attribute__((address(0x68C)));
// bitfield macros
# 20264 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3ISM

extern volatile unsigned char CWG3ISM __attribute__((address(0x68D)));

__asm("CWG3ISM equ 068Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned IS :4;
    };
    struct {
        unsigned CWG3ISM0 :1;
        unsigned CWG3ISM1 :1;
        unsigned CWG3ISM2 :1;
        unsigned CWG3ISM3 :1;
    };
} CWG3ISMbits_t;
extern volatile CWG3ISMbits_t CWG3ISMbits __attribute__((address(0x68D)));
// bitfield macros
# 20310 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3DBR

extern volatile unsigned char CWG3DBR __attribute__((address(0x68E)));

__asm("CWG3DBR equ 068Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG3DBR :6;
    };
    struct {
        unsigned CWG3DBR0 :1;
        unsigned CWG3DBR1 :1;
        unsigned CWG3DBR2 :1;
        unsigned CWG3DBR3 :1;
        unsigned CWG3DBR4 :1;
        unsigned CWG3DBR5 :1;
    };
} CWG3DBRbits_t;
extern volatile CWG3DBRbits_t CWG3DBRbits __attribute__((address(0x68E)));
// bitfield macros
# 20414 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3DBF

extern volatile unsigned char CWG3DBF __attribute__((address(0x68F)));

__asm("CWG3DBF equ 068Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG3DBF :6;
    };
    struct {
        unsigned CWG3DBF0 :1;
        unsigned CWG3DBF1 :1;
        unsigned CWG3DBF2 :1;
        unsigned CWG3DBF3 :1;
        unsigned CWG3DBF4 :1;
        unsigned CWG3DBF5 :1;
    };
} CWG3DBFbits_t;
extern volatile CWG3DBFbits_t CWG3DBFbits __attribute__((address(0x68F)));
// bitfield macros
# 20518 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3CON0

extern volatile unsigned char CWG3CON0 __attribute__((address(0x690)));

__asm("CWG3CON0 equ 0690h");

// bitfield definitions
typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G3EN :1;
    };
    struct {
        unsigned CWG3MODE :3;
        unsigned :3;
        unsigned CWG3LD :1;
        unsigned CWG3EN :1;
    };
    struct {
        unsigned CWG3MODE0 :1;
        unsigned CWG3MODE1 :1;
        unsigned CWG3MODE2 :1;
    };
} CWG3CON0bits_t;
extern volatile CWG3CON0bits_t CWG3CON0bits __attribute__((address(0x690)));
// bitfield macros
# 20619 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3CON1

extern volatile unsigned char CWG3CON1 __attribute__((address(0x691)));

__asm("CWG3CON1 equ 0691h");

// bitfield definitions
typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG3POLA :1;
        unsigned CWG3POLB :1;
        unsigned CWG3POLC :1;
        unsigned CWG3POLD :1;
        unsigned :1;
        unsigned CWG3IN :1;
    };
} CWG3CON1bits_t;
extern volatile CWG3CON1bits_t CWG3CON1bits __attribute__((address(0x691)));
// bitfield macros
# 20697 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3AS0

extern volatile unsigned char CWG3AS0 __attribute__((address(0x692)));

__asm("CWG3AS0 equ 0692h");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG3LSAC :2;
        unsigned CWG3LSBD :2;
        unsigned CWG3REN :1;
        unsigned CWG3SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG3LSAC0 :1;
        unsigned CWG3LSAC1 :1;
        unsigned CWG3LSBD0 :1;
        unsigned CWG3LSBD1 :1;
    };
} CWG3AS0bits_t;
extern volatile CWG3AS0bits_t CWG3AS0bits __attribute__((address(0x692)));
// bitfield macros
# 20817 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3AS1

extern volatile unsigned char CWG3AS1 __attribute__((address(0x693)));

__asm("CWG3AS1 equ 0693h");

// bitfield definitions
typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
    };
} CWG3AS1bits_t;
extern volatile CWG3AS1bits_t CWG3AS1bits __attribute__((address(0x693)));
// bitfield macros
# 20873 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3STR

extern volatile unsigned char CWG3STR __attribute__((address(0x694)));

__asm("CWG3STR equ 0694h");

// bitfield definitions
typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG3STRA :1;
        unsigned CWG3STRB :1;
        unsigned CWG3STRC :1;
        unsigned CWG3STRD :1;
        unsigned CWG3OVRA :1;
        unsigned CWG3OVRB :1;
        unsigned CWG3OVRC :1;
        unsigned CWG3OVRD :1;
    };
} CWG3STRbits_t;
extern volatile CWG3STRbits_t CWG3STRbits __attribute__((address(0x694)));
// bitfield macros
# 20985 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR0

extern volatile unsigned char PIR0 __attribute__((address(0x70C)));

__asm("PIR0 equ 070Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned INTF :1;
        unsigned :3;
        unsigned IOCIF :1;
        unsigned TMR0IF :1;
    };
} PIR0bits_t;
extern volatile PIR0bits_t PIR0bits __attribute__((address(0x70C)));
// bitfield macros
# 21018 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR1

extern volatile unsigned char PIR1 __attribute__((address(0x70D)));

__asm("PIR1 equ 070Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADIF :1;
        unsigned ADTIF :1;
        unsigned :4;
        unsigned CSWIF :1;
        unsigned OSFIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x70D)));
// bitfield macros
# 21057 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR2

extern volatile unsigned char PIR2 __attribute__((address(0x70E)));

__asm("PIR2 equ 070Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned C1IF :1;
        unsigned C2IF :1;
        unsigned :4;
        unsigned ZCDIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x70E)));
// bitfield macros
# 21090 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR3

extern volatile unsigned char PIR3 __attribute__((address(0x70F)));

__asm("PIR3 equ 070Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP1IF :1;
        unsigned BCL1IF :1;
        unsigned SSP2IF :1;
        unsigned BCL2IF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x70F)));
// bitfield macros
# 21140 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR4

extern volatile unsigned char PIR4 __attribute__((address(0x710)));

__asm("PIR4 equ 0710h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned TMR3IF :1;
        unsigned TMR4IF :1;
        unsigned TMR5IF :1;
        unsigned TMR6IF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x710)));
// bitfield macros
# 21190 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR5

extern volatile unsigned char PIR5 __attribute__((address(0x711)));

__asm("PIR5 equ 0711h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1GIF :1;
        unsigned TMR3GIF :1;
        unsigned TMR5GIF :1;
        unsigned :1;
        unsigned CLC1IF :1;
        unsigned CLC2IF :1;
        unsigned CLC3IF :1;
        unsigned CLC4IF :1;
    };
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __attribute__((address(0x711)));
// bitfield macros
# 21247 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR6

extern volatile unsigned char PIR6 __attribute__((address(0x712)));

__asm("PIR6 equ 0712h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP1IF :1;
        unsigned CCP2IF :1;
        unsigned CCP3IF :1;
        unsigned CCP4IF :1;
        unsigned CCP5IF :1;
    };
} PIR6bits_t;
extern volatile PIR6bits_t PIR6bits __attribute__((address(0x712)));
// bitfield macros
# 21291 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR7

extern volatile unsigned char PIR7 __attribute__((address(0x713)));

__asm("PIR7 equ 0713h");

// bitfield definitions
typedef union {
    struct {
        unsigned CWG1IF :1;
        unsigned CWG2IF :1;
        unsigned CWG3IF :1;
        unsigned :1;
        unsigned NCO1IF :1;
        unsigned NVMIF :1;
        unsigned CRCIF :1;
        unsigned SCANIF :1;
    };
    struct {
        unsigned :4;
        unsigned NCOIF :1;
    };
} PIR7bits_t;
extern volatile PIR7bits_t PIR7bits __attribute__((address(0x713)));
// bitfield macros
# 21357 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIR8

extern volatile unsigned char PIR8 __attribute__((address(0x714)));

__asm("PIR8 equ 0714h");

// bitfield definitions
typedef union {
    struct {
        unsigned SMT1IF :1;
        unsigned SMT1PRAIF :1;
        unsigned SMT1PWAIF :1;
        unsigned SMT2IF :1;
        unsigned SMT2PRAIF :1;
        unsigned SMT2PWAIF :1;
    };
} PIR8bits_t;
extern volatile PIR8bits_t PIR8bits __attribute__((address(0x714)));
// bitfield macros
# 21407 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE0

extern volatile unsigned char PIE0 __attribute__((address(0x716)));

__asm("PIE0 equ 0716h");

// bitfield definitions
typedef union {
    struct {
        unsigned INTE :1;
        unsigned :3;
        unsigned IOCIE :1;
        unsigned TMR0IE :1;
    };
} PIE0bits_t;
extern volatile PIE0bits_t PIE0bits __attribute__((address(0x716)));
// bitfield macros
# 21440 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE1

extern volatile unsigned char PIE1 __attribute__((address(0x717)));

__asm("PIE1 equ 0717h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADIE :1;
        unsigned ADTIE :1;
        unsigned :4;
        unsigned CSWIE :1;
        unsigned OSFIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x717)));
// bitfield macros
# 21479 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE2

extern volatile unsigned char PIE2 __attribute__((address(0x718)));

__asm("PIE2 equ 0718h");

// bitfield definitions
typedef union {
    struct {
        unsigned C1IE :1;
        unsigned C2IE :1;
        unsigned :4;
        unsigned ZCDIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x718)));
// bitfield macros
# 21512 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE3

extern volatile unsigned char PIE3 __attribute__((address(0x719)));

__asm("PIE3 equ 0719h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP1IE :1;
        unsigned BCL1IE :1;
        unsigned SSP2IE :1;
        unsigned BCL2IE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x719)));
// bitfield macros
# 21562 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE4

extern volatile unsigned char PIE4 __attribute__((address(0x71A)));

__asm("PIE4 equ 071Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned TMR3IE :1;
        unsigned TMR4IE :1;
        unsigned TMR5IE :1;
        unsigned TMR6IE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x71A)));
// bitfield macros
# 21612 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE5

extern volatile unsigned char PIE5 __attribute__((address(0x71B)));

__asm("PIE5 equ 071Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1GIE :1;
        unsigned TMR3GIE :1;
        unsigned TMR5GIE :1;
        unsigned :1;
        unsigned CLC1IE :1;
        unsigned CLC2IE :1;
        unsigned CLC3IE :1;
        unsigned CLC4IE :1;
    };
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __attribute__((address(0x71B)));
// bitfield macros
# 21669 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE6

extern volatile unsigned char PIE6 __attribute__((address(0x71C)));

__asm("PIE6 equ 071Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP1IE :1;
        unsigned CCP2IE :1;
        unsigned CCP3IE :1;
        unsigned CCP4IE :1;
        unsigned CCP5IE :1;
    };
} PIE6bits_t;
extern volatile PIE6bits_t PIE6bits __attribute__((address(0x71C)));
// bitfield macros
# 21713 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE7

extern volatile unsigned char PIE7 __attribute__((address(0x71D)));

__asm("PIE7 equ 071Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned CWG1IE :1;
        unsigned CWG2IE :1;
        unsigned CWG3IE :1;
        unsigned :1;
        unsigned NCO1IE :1;
        unsigned NVMIE :1;
        unsigned CRCIE :1;
        unsigned SCANIE :1;
    };
    struct {
        unsigned :4;
        unsigned NCOIE :1;
    };
} PIE7bits_t;
extern volatile PIE7bits_t PIE7bits __attribute__((address(0x71D)));
// bitfield macros
# 21779 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PIE8

extern volatile unsigned char PIE8 __attribute__((address(0x71E)));

__asm("PIE8 equ 071Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned SMT1IE :1;
        unsigned SMT1PRAIE :1;
        unsigned SMT1PWAIE :1;
        unsigned SMT2IE :1;
        unsigned SMT2PRAIE :1;
        unsigned SMT2PWAIE :1;
    };
} PIE8bits_t;
extern volatile PIE8bits_t PIE8bits __attribute__((address(0x71E)));
// bitfield macros
# 21829 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PMD0

extern volatile unsigned char PMD0 __attribute__((address(0x796)));

__asm("PMD0 equ 0796h");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCMD :1;
        unsigned CLKRMD :1;
        unsigned NVMMD :1;
        unsigned SCANMD :1;
        unsigned CRCMD :1;
        unsigned :1;
        unsigned FVRMD :1;
        unsigned SYSCMD :1;
    };
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __attribute__((address(0x796)));
// bitfield macros
# 21886 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PMD1

extern volatile unsigned char PMD1 __attribute__((address(0x797)));

__asm("PMD1 equ 0797h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR0MD :1;
        unsigned TMR1MD :1;
        unsigned TMR2MD :1;
        unsigned TMR3MD :1;
        unsigned TMR4MD :1;
        unsigned TMR5MD :1;
        unsigned TMR6MD :1;
        unsigned NCOMD :1;
    };
    struct {
        unsigned :7;
        unsigned NCO1MD :1;
    };
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __attribute__((address(0x797)));
// bitfield macros
# 21957 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PMD2

extern volatile unsigned char PMD2 __attribute__((address(0x798)));

__asm("PMD2 equ 0798h");

// bitfield definitions
typedef union {
    struct {
        unsigned ZCDMD :1;
        unsigned CMP1MD :1;
        unsigned CMP2MD :1;
        unsigned :2;
        unsigned ADCMD :1;
        unsigned DACMD :1;
    };
} PMD2bits_t;
extern volatile PMD2bits_t PMD2bits __attribute__((address(0x798)));
// bitfield macros
# 22002 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PMD3

extern volatile unsigned char PMD3 __attribute__((address(0x799)));

__asm("PMD3 equ 0799h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP1MD :1;
        unsigned CCP2MD :1;
        unsigned CCP3MD :1;
        unsigned CCP4MD :1;
        unsigned CCP5MD :1;
        unsigned PWM6MD :1;
        unsigned PWM7MD :1;
    };
} PMD3bits_t;
extern volatile PMD3bits_t PMD3bits __attribute__((address(0x799)));
// bitfield macros
# 22058 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PMD4

extern volatile unsigned char PMD4 __attribute__((address(0x79A)));

__asm("PMD4 equ 079Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned CWG1MD :1;
        unsigned CWG2MD :1;
        unsigned CWG3MD :1;
        unsigned :1;
        unsigned MSSP1MD :1;
        unsigned MSSP2MD :1;
        unsigned UART1MD :1;
    };
} PMD4bits_t;
extern volatile PMD4bits_t PMD4bits __attribute__((address(0x79A)));
// bitfield macros
# 22109 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PMD5

extern volatile unsigned char PMD5 __attribute__((address(0x79B)));

__asm("PMD5 equ 079Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned DSMMD :1;
        unsigned CLC1MD :1;
        unsigned CLC2MD :1;
        unsigned CLC3MD :1;
        unsigned CLC4MD :1;
        unsigned :1;
        unsigned SMT1MD :1;
        unsigned SMT2MD :1;
    };
} PMD5bits_t;
extern volatile PMD5bits_t PMD5bits __attribute__((address(0x79B)));
// bitfield macros
# 22166 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WDTCON0

extern volatile unsigned char WDTCON0 __attribute__((address(0x80C)));

__asm("WDTCON0 equ 080Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned SEN :1;
        unsigned WDTPS :5;
    };
    struct {
        unsigned SWDTEN :1;
    };
    struct {
        unsigned WDTSEN :1;
    };
    struct {
        unsigned :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
} WDTCON0bits_t;
extern volatile WDTCON0bits_t WDTCON0bits __attribute__((address(0x80C)));
// bitfield macros
# 22241 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WDTCON1

extern volatile unsigned char WDTCON1 __attribute__((address(0x80D)));

__asm("WDTCON1 equ 080Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned WINDOW :3;
        unsigned :1;
        unsigned WDTCS :3;
    };
    struct {
        unsigned WINDOW0 :1;
        unsigned WINDOW1 :1;
        unsigned WINDOW2 :1;
    };
    struct {
        unsigned WDTWINDOW :3;
    };
    struct {
        unsigned WDTWINDOW0 :1;
        unsigned WDTWINDOW1 :1;
        unsigned WDTWINDOW2 :1;
        unsigned :1;
        unsigned WDTCS0 :1;
        unsigned WDTCS1 :1;
        unsigned WDTCS2 :1;
    };
} WDTCON1bits_t;
extern volatile WDTCON1bits_t WDTCON1bits __attribute__((address(0x80D)));
// bitfield macros
# 22335 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WDTPSL

extern volatile unsigned char WDTPSL __attribute__((address(0x80E)));

__asm("WDTPSL equ 080Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT0 :1;
        unsigned PSCNT1 :1;
        unsigned PSCNT2 :1;
        unsigned PSCNT3 :1;
        unsigned PSCNT4 :1;
        unsigned PSCNT5 :1;
        unsigned PSCNT6 :1;
        unsigned PSCNT7 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT0 :1;
        unsigned WDTPSCNT1 :1;
        unsigned WDTPSCNT2 :1;
        unsigned WDTPSCNT3 :1;
        unsigned WDTPSCNT4 :1;
        unsigned WDTPSCNT5 :1;
        unsigned WDTPSCNT6 :1;
        unsigned WDTPSCNT7 :1;
    };
} WDTPSLbits_t;
extern volatile WDTPSLbits_t WDTPSLbits __attribute__((address(0x80E)));
// bitfield macros
# 22463 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WDTPSH

extern volatile unsigned char WDTPSH __attribute__((address(0x80F)));

__asm("WDTPSH equ 080Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT8 :1;
        unsigned PSCNT9 :1;
        unsigned PSCNT10 :1;
        unsigned PSCNT11 :1;
        unsigned PSCNT12 :1;
        unsigned PSCNT13 :1;
        unsigned PSCNT14 :1;
        unsigned PSCNT15 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT8 :1;
        unsigned WDTPSCNT9 :1;
        unsigned WDTPSCNT10 :1;
        unsigned WDTPSCNT11 :1;
        unsigned WDTPSCNT12 :1;
        unsigned WDTPSCNT13 :1;
        unsigned WDTPSCNT14 :1;
        unsigned WDTPSCNT15 :1;
    };
} WDTPSHbits_t;
extern volatile WDTPSHbits_t WDTPSHbits __attribute__((address(0x80F)));
// bitfield macros
# 22591 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WDTTMR

extern volatile unsigned char WDTTMR __attribute__((address(0x810)));

__asm("WDTTMR equ 0810h");

// bitfield definitions
typedef union {
    struct {
        unsigned PSCNT16 :1;
        unsigned PSCNT17 :1;
        unsigned STATE :1;
        unsigned WDTTMR :5;
    };
    struct {
        unsigned WDTPSCNT16 :1;
        unsigned WDTPSCNT17 :1;
        unsigned WDTSTATE :1;
        unsigned WDTTMR0 :1;
        unsigned WDTTMR1 :1;
        unsigned WDTTMR2 :1;
        unsigned WDTTMR3 :1;
    };
} WDTTMRbits_t;
extern volatile WDTTMRbits_t WDTTMRbits __attribute__((address(0x810)));
// bitfield macros
# 22673 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: BORCON

extern volatile unsigned char BORCON __attribute__((address(0x811)));

__asm("BORCON equ 0811h");

// bitfield definitions
typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :6;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x811)));
// bitfield macros
# 22700 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: VREGCON

extern volatile unsigned char VREGCON __attribute__((address(0x812)));

__asm("VREGCON equ 0812h");

// bitfield definitions
typedef union {
    struct {
        unsigned VREGPM0 :1;
        unsigned VREGPM1 :1;
    };
    struct {
        unsigned :1;
        unsigned VREGPM :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x812)));
// bitfield macros
# 22735 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PCON0

extern volatile unsigned char PCON0 __attribute__((address(0x813)));

__asm("PCON0 equ 0813h");

// bitfield definitions
typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned nWDTWV :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
} PCON0bits_t;
extern volatile PCON0bits_t PCON0bits __attribute__((address(0x813)));
// bitfield macros
# 22797 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDCON

extern volatile unsigned char CCDCON __attribute__((address(0x814)));

__asm("CCDCON equ 0814h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDS0 :1;
        unsigned CCDS1 :1;
        unsigned :5;
        unsigned CCDEN :1;
    };
} CCDCONbits_t;
extern volatile CCDCONbits_t CCDCONbits __attribute__((address(0x814)));
// bitfield macros
# 22830 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NVMADRL

extern volatile unsigned char NVMADRL __attribute__((address(0x81A)));

__asm("NVMADRL equ 081Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned NVMADR0 :1;
        unsigned NVMADR1 :1;
        unsigned NVMADR2 :1;
        unsigned NVMADR3 :1;
        unsigned NVMADR4 :1;
        unsigned NVMADR5 :1;
        unsigned NVMADR6 :1;
        unsigned NVMADR7 :1;
    };
} NVMADRLbits_t;
extern volatile NVMADRLbits_t NVMADRLbits __attribute__((address(0x81A)));
// bitfield macros
# 22892 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NVMADRH

extern volatile unsigned char NVMADRH __attribute__((address(0x81B)));

__asm("NVMADRH equ 081Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned NVMADR8 :1;
        unsigned NVMADR9 :1;
        unsigned NVMADR10 :1;
        unsigned NVMADR11 :1;
        unsigned NVMADR12 :1;
        unsigned NVMADR13 :1;
        unsigned NVMADR14 :1;
    };
} NVMADRHbits_t;
extern volatile NVMADRHbits_t NVMADRHbits __attribute__((address(0x81B)));
// bitfield macros
# 22948 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NVMDATL

extern volatile unsigned char NVMDATL __attribute__((address(0x81C)));

__asm("NVMDATL equ 081Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned NVMDAT0 :1;
        unsigned NVMDAT1 :1;
        unsigned NVMDAT2 :1;
        unsigned NVMDAT3 :1;
        unsigned NVMDAT4 :1;
        unsigned NVMDAT5 :1;
        unsigned NVMDAT6 :1;
        unsigned NVMDAT7 :1;
    };
} NVMDATLbits_t;
extern volatile NVMDATLbits_t NVMDATLbits __attribute__((address(0x81C)));
// bitfield macros
# 23010 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NVMDATH

extern volatile unsigned char NVMDATH __attribute__((address(0x81D)));

__asm("NVMDATH equ 081Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned NVMDAT8 :1;
        unsigned NVMDAT9 :1;
        unsigned NVMDAT10 :1;
        unsigned NVMDAT11 :1;
        unsigned NVMDAT12 :1;
        unsigned NVMDAT13 :1;
    };
} NVMDATHbits_t;
extern volatile NVMDATHbits_t NVMDATHbits __attribute__((address(0x81D)));
// bitfield macros
# 23060 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NVMCON1

extern volatile unsigned char NVMCON1 __attribute__((address(0x81E)));

__asm("NVMCON1 equ 081Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned LWLO :1;
        unsigned NVMREGS :1;
    };
} NVMCON1bits_t;
extern volatile NVMCON1bits_t NVMCON1bits __attribute__((address(0x81E)));
// bitfield macros
# 23116 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: NVMCON2

extern volatile unsigned char NVMCON2 __attribute__((address(0x81F)));

__asm("NVMCON2 equ 081Fh");


// Register: CPUDOZE

extern volatile unsigned char CPUDOZE __attribute__((address(0x88C)));

__asm("CPUDOZE equ 088Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned DOZE0 :1;
        unsigned DOZE1 :1;
        unsigned DOZE2 :1;
        unsigned :1;
        unsigned DOE :1;
        unsigned ROI :1;
        unsigned DOZEN :1;
        unsigned IDLEN :1;
    };
} CPUDOZEbits_t;
extern volatile CPUDOZEbits_t CPUDOZEbits __attribute__((address(0x88C)));
// bitfield macros
# 23180 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCCON1

extern volatile unsigned char OSCCON1 __attribute__((address(0x88D)));

__asm("OSCCON1 equ 088Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned NDIV :4;
        unsigned NOSC :3;
    };
    struct {
        unsigned NDIV0 :1;
        unsigned NDIV1 :1;
        unsigned NDIV2 :1;
        unsigned NDIV3 :1;
        unsigned NOSC0 :1;
        unsigned NOSC1 :1;
        unsigned NOSC2 :1;
    };
} OSCCON1bits_t;
extern volatile OSCCON1bits_t OSCCON1bits __attribute__((address(0x88D)));
// bitfield macros
# 23250 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCCON2

extern volatile unsigned char OSCCON2 __attribute__((address(0x88E)));

__asm("OSCCON2 equ 088Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned CDIV :4;
        unsigned COSC :3;
    };
    struct {
        unsigned CDIV0 :1;
        unsigned CDIV1 :1;
        unsigned CDIV2 :1;
        unsigned CDIV3 :1;
        unsigned COSC0 :1;
        unsigned COSC1 :1;
        unsigned COSC2 :1;
    };
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __attribute__((address(0x88E)));
// bitfield macros
# 23320 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCCON3

extern volatile unsigned char OSCCON3 __attribute__((address(0x88F)));

__asm("OSCCON3 equ 088Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned NOSCR :1;
        unsigned ORDY :1;
        unsigned :1;
        unsigned SOSCPWR :1;
        unsigned CSWHOLD :1;
    };
} OSCCON3bits_t;
extern volatile OSCCON3bits_t OSCCON3bits __attribute__((address(0x88F)));
// bitfield macros
# 23360 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCSTAT

extern volatile unsigned char OSCSTAT __attribute__((address(0x890)));

__asm("OSCSTAT equ 0890h");

// bitfield definitions
typedef union {
    struct {
        unsigned PLLR :1;
        unsigned :1;
        unsigned ADOR :1;
        unsigned SOR :1;
        unsigned LFOR :1;
        unsigned MFOR :1;
        unsigned HFOR :1;
        unsigned EXTOR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x890)));
// bitfield macros
# 23417 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCEN

extern volatile unsigned char OSCEN __attribute__((address(0x891)));

__asm("OSCEN equ 0891h");

// bitfield definitions
typedef union {
    struct {
        unsigned :2;
        unsigned ADOEN :1;
        unsigned SOSCEN :1;
        unsigned LFOEN :1;
        unsigned MFOEN :1;
        unsigned HFOEN :1;
        unsigned EXTOEN :1;
    };
} OSCENbits_t;
extern volatile OSCENbits_t OSCENbits __attribute__((address(0x891)));
// bitfield macros
# 23468 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCTUNE

extern volatile unsigned char OSCTUNE __attribute__((address(0x892)));

__asm("OSCTUNE equ 0892h");

// bitfield definitions
typedef union {
    struct {
        unsigned HFTUN :6;
    };
    struct {
        unsigned HFTUN0 :1;
        unsigned HFTUN1 :1;
        unsigned HFTUN2 :1;
        unsigned HFTUN3 :1;
        unsigned HFTUN4 :1;
        unsigned HFTUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x892)));
// bitfield macros
# 23526 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: OSCFRQ

extern volatile unsigned char OSCFRQ __attribute__((address(0x893)));

__asm("OSCFRQ equ 0893h");

// bitfield definitions
typedef union {
    struct {
        unsigned HFFRQ :3;
    };
    struct {
        unsigned HFFRQ0 :1;
        unsigned HFFRQ1 :1;
        unsigned HFFRQ2 :1;
    };
} OSCFRQbits_t;
extern volatile OSCFRQbits_t OSCFRQbits __attribute__((address(0x893)));
// bitfield macros
# 23566 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLKRCON

extern volatile unsigned char CLKRCON __attribute__((address(0x895)));

__asm("CLKRCON equ 0895h");

// bitfield definitions
typedef union {
    struct {
        unsigned CLKRDIV :3;
        unsigned CLKRDC :2;
        unsigned :2;
        unsigned CLKREN :1;
    };
    struct {
        unsigned CLKRDIV0 :1;
        unsigned CLKRDIV1 :1;
        unsigned CLKRDIV2 :1;
        unsigned CLKRDC0 :1;
        unsigned CLKRDC1 :1;
    };
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __attribute__((address(0x895)));
// bitfield macros
# 23631 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLKRCLK

extern volatile unsigned char CLKRCLK __attribute__((address(0x896)));

__asm("CLKRCLK equ 0896h");

// bitfield definitions
typedef union {
    struct {
        unsigned CLKRCLK :4;
    };
    struct {
        unsigned CLKRCLK0 :1;
        unsigned CLKRCLK1 :1;
        unsigned CLKRCLK2 :1;
        unsigned CLKRCLK3 :1;
    };
} CLKRCLKbits_t;
extern volatile CLKRCLKbits_t CLKRCLKbits __attribute__((address(0x896)));
// bitfield macros
# 23677 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDCON0

extern volatile unsigned char MDCON0 __attribute__((address(0x897)));

__asm("MDCON0 equ 0897h");

// bitfield definitions
typedef union {
    struct {
        unsigned MDBIT :1;
        unsigned :3;
        unsigned MDOPOL :1;
        unsigned MDOUT :1;
        unsigned :1;
        unsigned MDEN :1;
    };
} MDCON0bits_t;
extern volatile MDCON0bits_t MDCON0bits __attribute__((address(0x897)));
// bitfield macros
# 23717 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDCON1

extern volatile unsigned char MDCON1 __attribute__((address(0x898)));

__asm("MDCON1 equ 0898h");

// bitfield definitions
typedef union {
    struct {
        unsigned MDCLSYNC :1;
        unsigned MDCLPOL :1;
        unsigned :2;
        unsigned MDCHSYNC :1;
        unsigned MDCHPOL :1;
    };
} MDCON1bits_t;
extern volatile MDCON1bits_t MDCON1bits __attribute__((address(0x898)));
// bitfield macros
# 23756 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDSRC

extern volatile unsigned char MDSRC __attribute__((address(0x899)));

__asm("MDSRC equ 0899h");

// bitfield definitions
typedef union {
    struct {
        unsigned MDMS :5;
    };
    struct {
        unsigned MDMS0 :1;
        unsigned MDMS1 :1;
        unsigned MDMS2 :1;
        unsigned MDMS3 :1;
        unsigned MDMS4 :1;
    };
} MDSRCbits_t;
extern volatile MDSRCbits_t MDSRCbits __attribute__((address(0x899)));
// bitfield macros
# 23808 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDCARL

extern volatile unsigned char MDCARL __attribute__((address(0x89A)));

__asm("MDCARL equ 089Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned MDCL :4;
    };
    struct {
        unsigned MDCL0 :1;
        unsigned MDCL1 :1;
        unsigned MDCL2 :1;
        unsigned MDCL3 :1;
    };
} MDCARLbits_t;
extern volatile MDCARLbits_t MDCARLbits __attribute__((address(0x89A)));
// bitfield macros
# 23854 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDCARH

extern volatile unsigned char MDCARH __attribute__((address(0x89B)));

__asm("MDCARH equ 089Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned MDCH :4;
    };
    struct {
        unsigned MDCH0 :1;
        unsigned MDCH1 :1;
        unsigned MDCH2 :1;
        unsigned MDCH3 :1;
    };
} MDCARHbits_t;
extern volatile MDCARHbits_t MDCARHbits __attribute__((address(0x89B)));
// bitfield macros
# 23900 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: FVRCON

extern volatile unsigned char FVRCON __attribute__((address(0x90C)));

__asm("FVRCON equ 090Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
        unsigned TSRNG :1;
        unsigned TSEN :1;
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
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x90C)));
// bitfield macros
# 23976 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: DAC1CON0

extern volatile unsigned char DAC1CON0 __attribute__((address(0x90E)));

__asm("DAC1CON0 equ 090Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned NSS :1;
        unsigned :1;
        unsigned PSS :2;
        unsigned OE2 :1;
        unsigned OE1 :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned DAC1NSS :1;
        unsigned :1;
        unsigned DAC1PSS0 :1;
        unsigned DAC1PSS1 :1;
        unsigned DAC1OE2 :1;
        unsigned DAC1OE1 :1;
        unsigned :1;
        unsigned DAC1EN :1;
    };
    struct {
        unsigned :2;
        unsigned PSS0 :1;
        unsigned PSS1 :1;
    };
} DAC1CON0bits_t;
extern volatile DAC1CON0bits_t DAC1CON0bits __attribute__((address(0x90E)));
// bitfield macros
# 24077 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: DAC1CON1

extern volatile unsigned char DAC1CON1 __attribute__((address(0x90F)));

__asm("DAC1CON1 equ 090Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned DAC1R :5;
    };
    struct {
        unsigned DAC1R0 :1;
        unsigned DAC1R1 :1;
        unsigned DAC1R2 :1;
        unsigned DAC1R3 :1;
        unsigned DAC1R4 :1;
    };
} DAC1CON1bits_t;
extern volatile DAC1CON1bits_t DAC1CON1bits __attribute__((address(0x90F)));
// bitfield macros
# 24129 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ZCDCON

extern volatile unsigned char ZCDCON __attribute__((address(0x91F)));

__asm("ZCDCON equ 091Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned ZCDINTN :1;
        unsigned ZCDINTP :1;
        unsigned :2;
        unsigned ZCDPOL :1;
        unsigned ZCDOUT :1;
        unsigned :1;
        unsigned ZCDSEN :1;
    };
} ZCDCONbits_t;
extern volatile ZCDCONbits_t ZCDCONbits __attribute__((address(0x91F)));
// bitfield macros
# 24175 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CMOUT

extern volatile unsigned char CMOUT __attribute__((address(0x98F)));

__asm("CMOUT equ 098Fh");

// aliases
extern volatile unsigned char CMSTAT __attribute__((address(0x98F)));

__asm("CMSTAT equ 098Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
    struct {
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x98F)));
// bitfield macros
# 24219 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// alias bitfield definitions
typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
    struct {
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __attribute__((address(0x98F)));
// bitfield macros
# 24253 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM1CON0

extern volatile unsigned char CM1CON0 __attribute__((address(0x990)));

__asm("CM1CON0 equ 0990h");

// bitfield definitions
typedef union {
    struct {
        unsigned SYNC :1;
        unsigned HYS :1;
        unsigned :2;
        unsigned POL :1;
        unsigned :1;
        unsigned OUT :1;
        unsigned ON :1;
    };
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned :1;
        unsigned C1POL :1;
        unsigned :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x990)));
// bitfield macros
# 24339 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM1CON1

extern volatile unsigned char CM1CON1 __attribute__((address(0x991)));

__asm("CM1CON1 equ 0991h");

// bitfield definitions
typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
    };
    struct {
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x991)));
// bitfield macros
# 24379 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM1NSEL

extern volatile unsigned char CM1NSEL __attribute__((address(0x992)));

__asm("CM1NSEL equ 0992h");

// bitfield definitions
typedef union {
    struct {
        unsigned NCH :3;
    };
    struct {
        unsigned NCH0 :1;
        unsigned NCH1 :1;
        unsigned NCH2 :1;
    };
    struct {
        unsigned C1NCH :3;
    };
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
    };
} CM1NSELbits_t;
extern volatile CM1NSELbits_t CM1NSELbits __attribute__((address(0x992)));
// bitfield macros
# 24447 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM1PSEL

extern volatile unsigned char CM1PSEL __attribute__((address(0x993)));

__asm("CM1PSEL equ 0993h");

// bitfield definitions
typedef union {
    struct {
        unsigned PCH :4;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
    };
    struct {
        unsigned C1PCH :4;
    };
    struct {
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1PCH2 :1;
    };
} CM1PSELbits_t;
extern volatile CM1PSELbits_t CM1PSELbits __attribute__((address(0x993)));
// bitfield macros
# 24515 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM2CON0

extern volatile unsigned char CM2CON0 __attribute__((address(0x994)));

__asm("CM2CON0 equ 0994h");

// bitfield definitions
typedef union {
    struct {
        unsigned SYNC :1;
        unsigned HYS :1;
        unsigned :2;
        unsigned POL :1;
        unsigned :1;
        unsigned OUT :1;
        unsigned ON :1;
    };
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned :1;
        unsigned C2POL :1;
        unsigned :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x994)));
// bitfield macros
# 24601 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM2CON1

extern volatile unsigned char CM2CON1 __attribute__((address(0x995)));

__asm("CM2CON1 equ 0995h");

// bitfield definitions
typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
    };
    struct {
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x995)));
// bitfield macros
# 24641 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM2NSEL

extern volatile unsigned char CM2NSEL __attribute__((address(0x996)));

__asm("CM2NSEL equ 0996h");

// bitfield definitions
typedef union {
    struct {
        unsigned NCH :3;
    };
    struct {
        unsigned NCH0 :1;
        unsigned NCH1 :1;
        unsigned NCH2 :1;
    };
    struct {
        unsigned C2NCH :3;
    };
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
    };
} CM2NSELbits_t;
extern volatile CM2NSELbits_t CM2NSELbits __attribute__((address(0x996)));
// bitfield macros
# 24709 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CM2PSEL

extern volatile unsigned char CM2PSEL __attribute__((address(0x997)));

__asm("CM2PSEL equ 0997h");

// bitfield definitions
typedef union {
    struct {
        unsigned PCH :4;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
    };
    struct {
        unsigned C2PCH :4;
    };
    struct {
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2PCH2 :1;
    };
} CM2PSELbits_t;
extern volatile CM2PSELbits_t CM2PSELbits __attribute__((address(0x997)));
// bitfield macros
# 24777 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLCDATA

extern volatile unsigned char CLCDATA __attribute__((address(0xE0F)));

__asm("CLCDATA equ 0E0Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned MLC1OUT :1;
        unsigned MLC2OUT :1;
        unsigned MLC3OUT :1;
        unsigned MLC4OUT :1;
    };
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __attribute__((address(0xE0F)));
// bitfield macros
# 24815 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1CON

extern volatile unsigned char CLC1CON __attribute__((address(0xE10)));

__asm("CLC1CON equ 0E10h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1MODE :3;
        unsigned LC1INTN :1;
        unsigned LC1INTP :1;
        unsigned LC1OUT :1;
        unsigned :1;
        unsigned LC1EN :1;
    };
    struct {
        unsigned LC1MODE0 :1;
        unsigned LC1MODE1 :1;
        unsigned LC1MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __attribute__((address(0xE10)));
// bitfield macros
# 24933 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1POL

extern volatile unsigned char CLC1POL __attribute__((address(0xE11)));

__asm("CLC1POL equ 0E11h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1G1POL :1;
        unsigned LC1G2POL :1;
        unsigned LC1G3POL :1;
        unsigned LC1G4POL :1;
        unsigned :3;
        unsigned LC1POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __attribute__((address(0xE11)));
// bitfield macros
# 25011 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1SEL0

extern volatile unsigned char CLC1SEL0 __attribute__((address(0xE12)));

__asm("CLC1SEL0 equ 0E12h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1D1S0 :1;
        unsigned LC1D1S1 :1;
        unsigned LC1D1S2 :1;
        unsigned LC1D1S3 :1;
        unsigned LC1D1S4 :1;
        unsigned LC1D1S5 :1;
        unsigned LC1D1S6 :1;
        unsigned LC1D1S7 :1;
    };
    struct {
        unsigned LC1D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
        unsigned D1S6 :1;
        unsigned D1S7 :1;
    };
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __attribute__((address(0xE12)));
// bitfield macros
# 25139 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1SEL1

extern volatile unsigned char CLC1SEL1 __attribute__((address(0xE13)));

__asm("CLC1SEL1 equ 0E13h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1D2S0 :1;
        unsigned LC1D2S1 :1;
        unsigned LC1D2S2 :1;
        unsigned LC1D2S3 :1;
        unsigned LC1D2S4 :1;
        unsigned LC1D2S5 :1;
        unsigned LC1D2S6 :1;
        unsigned LC1D2S7 :1;
    };
    struct {
        unsigned LC1D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
        unsigned D2S6 :1;
        unsigned D2S7 :1;
    };
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __attribute__((address(0xE13)));
// bitfield macros
# 25267 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1SEL2

extern volatile unsigned char CLC1SEL2 __attribute__((address(0xE14)));

__asm("CLC1SEL2 equ 0E14h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1D3S0 :1;
        unsigned LC1D3S1 :1;
        unsigned LC1D3S2 :1;
        unsigned LC1D3S3 :1;
        unsigned LC1D3S4 :1;
        unsigned LC1D3S5 :1;
        unsigned LC1D3S6 :1;
        unsigned LC1D3S7 :1;
    };
    struct {
        unsigned LC1D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
        unsigned D3S6 :1;
        unsigned D3S7 :1;
    };
} CLC1SEL2bits_t;
extern volatile CLC1SEL2bits_t CLC1SEL2bits __attribute__((address(0xE14)));
// bitfield macros
# 25395 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1SEL3

extern volatile unsigned char CLC1SEL3 __attribute__((address(0xE15)));

__asm("CLC1SEL3 equ 0E15h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1D4S0 :1;
        unsigned LC1D4S1 :1;
        unsigned LC1D4S2 :1;
        unsigned LC1D4S3 :1;
        unsigned LC1D4S4 :1;
        unsigned LC1D4S5 :1;
        unsigned LC1D4S6 :1;
        unsigned LC1D4S7 :1;
    };
    struct {
        unsigned LC1D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
        unsigned D4S6 :1;
        unsigned D4S7 :1;
    };
} CLC1SEL3bits_t;
extern volatile CLC1SEL3bits_t CLC1SEL3bits __attribute__((address(0xE15)));
// bitfield macros
# 25523 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1GLS0

extern volatile unsigned char CLC1GLS0 __attribute__((address(0xE16)));

__asm("CLC1GLS0 equ 0E16h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1G1D1N :1;
        unsigned LC1G1D1T :1;
        unsigned LC1G1D2N :1;
        unsigned LC1G1D2T :1;
        unsigned LC1G1D3N :1;
        unsigned LC1G1D3T :1;
        unsigned LC1G1D4N :1;
        unsigned LC1G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __attribute__((address(0xE16)));
// bitfield macros
# 25635 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1GLS1

extern volatile unsigned char CLC1GLS1 __attribute__((address(0xE17)));

__asm("CLC1GLS1 equ 0E17h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1G2D1N :1;
        unsigned LC1G2D1T :1;
        unsigned LC1G2D2N :1;
        unsigned LC1G2D2T :1;
        unsigned LC1G2D3N :1;
        unsigned LC1G2D3T :1;
        unsigned LC1G2D4N :1;
        unsigned LC1G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __attribute__((address(0xE17)));
// bitfield macros
# 25747 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1GLS2

extern volatile unsigned char CLC1GLS2 __attribute__((address(0xE18)));

__asm("CLC1GLS2 equ 0E18h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1G3D1N :1;
        unsigned LC1G3D1T :1;
        unsigned LC1G3D2N :1;
        unsigned LC1G3D2T :1;
        unsigned LC1G3D3N :1;
        unsigned LC1G3D3T :1;
        unsigned LC1G3D4N :1;
        unsigned LC1G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __attribute__((address(0xE18)));
// bitfield macros
# 25859 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC1GLS3

extern volatile unsigned char CLC1GLS3 __attribute__((address(0xE19)));

__asm("CLC1GLS3 equ 0E19h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC1G4D1N :1;
        unsigned LC1G4D1T :1;
        unsigned LC1G4D2N :1;
        unsigned LC1G4D2T :1;
        unsigned LC1G4D3N :1;
        unsigned LC1G4D3T :1;
        unsigned LC1G4D4N :1;
        unsigned LC1G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __attribute__((address(0xE19)));
// bitfield macros
# 25971 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2CON

extern volatile unsigned char CLC2CON __attribute__((address(0xE1A)));

__asm("CLC2CON equ 0E1Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2MODE :3;
        unsigned LC2INTN :1;
        unsigned LC2INTP :1;
        unsigned LC2OUT :1;
        unsigned :1;
        unsigned LC2EN :1;
    };
    struct {
        unsigned LC2MODE0 :1;
        unsigned LC2MODE1 :1;
        unsigned LC2MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __attribute__((address(0xE1A)));
// bitfield macros
# 26089 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2POL

extern volatile unsigned char CLC2POL __attribute__((address(0xE1B)));

__asm("CLC2POL equ 0E1Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2G1POL :1;
        unsigned LC2G2POL :1;
        unsigned LC2G3POL :1;
        unsigned LC2G4POL :1;
        unsigned :3;
        unsigned LC2POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __attribute__((address(0xE1B)));
// bitfield macros
# 26167 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2SEL0

extern volatile unsigned char CLC2SEL0 __attribute__((address(0xE1C)));

__asm("CLC2SEL0 equ 0E1Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2D1S0 :1;
        unsigned LC2D1S1 :1;
        unsigned LC2D1S2 :1;
        unsigned LC2D1S3 :1;
        unsigned LC2D1S4 :1;
        unsigned LC2D1S5 :1;
        unsigned LC2D1S6 :1;
        unsigned LC2D1S7 :1;
    };
    struct {
        unsigned LC2D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
        unsigned D1S6 :1;
        unsigned D1S7 :1;
    };
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __attribute__((address(0xE1C)));
// bitfield macros
# 26295 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2SEL1

extern volatile unsigned char CLC2SEL1 __attribute__((address(0xE1D)));

__asm("CLC2SEL1 equ 0E1Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2D2S0 :1;
        unsigned LC2D2S1 :1;
        unsigned LC2D2S2 :1;
        unsigned LC2D2S3 :1;
        unsigned LC2D2S4 :1;
        unsigned LC2D2S5 :1;
        unsigned LC2D2S6 :1;
        unsigned LC2D2S7 :1;
    };
    struct {
        unsigned LC2D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
        unsigned D2S6 :1;
        unsigned D2S7 :1;
    };
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __attribute__((address(0xE1D)));
// bitfield macros
# 26423 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2SEL2

extern volatile unsigned char CLC2SEL2 __attribute__((address(0xE1E)));

__asm("CLC2SEL2 equ 0E1Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2D3S0 :1;
        unsigned LC2D3S1 :1;
        unsigned LC2D3S2 :1;
        unsigned LC2D3S3 :1;
        unsigned LC2D3S4 :1;
        unsigned LC2D3S5 :1;
        unsigned LC2D3S6 :1;
        unsigned LC2D3S7 :1;
    };
    struct {
        unsigned LC2D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
        unsigned D3S6 :1;
        unsigned D3S7 :1;
    };
} CLC2SEL2bits_t;
extern volatile CLC2SEL2bits_t CLC2SEL2bits __attribute__((address(0xE1E)));
// bitfield macros
# 26551 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2SEL3

extern volatile unsigned char CLC2SEL3 __attribute__((address(0xE1F)));

__asm("CLC2SEL3 equ 0E1Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2D4S0 :1;
        unsigned LC2D4S1 :1;
        unsigned LC2D4S2 :1;
        unsigned LC2D4S3 :1;
        unsigned LC2D4S4 :1;
        unsigned LC2D4S5 :1;
        unsigned LC2D4S6 :1;
        unsigned LC2D4S7 :1;
    };
    struct {
        unsigned LC2D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
        unsigned D4S6 :1;
        unsigned D4S7 :1;
    };
} CLC2SEL3bits_t;
extern volatile CLC2SEL3bits_t CLC2SEL3bits __attribute__((address(0xE1F)));
// bitfield macros
# 26679 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2GLS0

extern volatile unsigned char CLC2GLS0 __attribute__((address(0xE20)));

__asm("CLC2GLS0 equ 0E20h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2G1D1N :1;
        unsigned LC2G1D1T :1;
        unsigned LC2G1D2N :1;
        unsigned LC2G1D2T :1;
        unsigned LC2G1D3N :1;
        unsigned LC2G1D3T :1;
        unsigned LC2G1D4N :1;
        unsigned LC2G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __attribute__((address(0xE20)));
// bitfield macros
# 26791 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2GLS1

extern volatile unsigned char CLC2GLS1 __attribute__((address(0xE21)));

__asm("CLC2GLS1 equ 0E21h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2G2D1N :1;
        unsigned LC2G2D1T :1;
        unsigned LC2G2D2N :1;
        unsigned LC2G2D2T :1;
        unsigned LC2G2D3N :1;
        unsigned LC2G2D3T :1;
        unsigned LC2G2D4N :1;
        unsigned LC2G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __attribute__((address(0xE21)));
// bitfield macros
# 26903 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2GLS2

extern volatile unsigned char CLC2GLS2 __attribute__((address(0xE22)));

__asm("CLC2GLS2 equ 0E22h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2G3D1N :1;
        unsigned LC2G3D1T :1;
        unsigned LC2G3D2N :1;
        unsigned LC2G3D2T :1;
        unsigned LC2G3D3N :1;
        unsigned LC2G3D3T :1;
        unsigned LC2G3D4N :1;
        unsigned LC2G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __attribute__((address(0xE22)));
// bitfield macros
# 27015 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC2GLS3

extern volatile unsigned char CLC2GLS3 __attribute__((address(0xE23)));

__asm("CLC2GLS3 equ 0E23h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC2G4D1N :1;
        unsigned LC2G4D1T :1;
        unsigned LC2G4D2N :1;
        unsigned LC2G4D2T :1;
        unsigned LC2G4D3N :1;
        unsigned LC2G4D3T :1;
        unsigned LC2G4D4N :1;
        unsigned LC2G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __attribute__((address(0xE23)));
// bitfield macros
# 27127 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3CON

extern volatile unsigned char CLC3CON __attribute__((address(0xE24)));

__asm("CLC3CON equ 0E24h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3MODE :3;
        unsigned LC3INTN :1;
        unsigned LC3INTP :1;
        unsigned LC3OUT :1;
        unsigned :1;
        unsigned LC3EN :1;
    };
    struct {
        unsigned LC3MODE0 :1;
        unsigned LC3MODE1 :1;
        unsigned LC3MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __attribute__((address(0xE24)));
// bitfield macros
# 27245 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3POL

extern volatile unsigned char CLC3POL __attribute__((address(0xE25)));

__asm("CLC3POL equ 0E25h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3G1POL :1;
        unsigned LC3G2POL :1;
        unsigned LC3G3POL :1;
        unsigned LC3G4POL :1;
        unsigned :3;
        unsigned LC3POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __attribute__((address(0xE25)));
// bitfield macros
# 27323 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3SEL0

extern volatile unsigned char CLC3SEL0 __attribute__((address(0xE26)));

__asm("CLC3SEL0 equ 0E26h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3D1S0 :1;
        unsigned LC3D1S1 :1;
        unsigned LC3D1S2 :1;
        unsigned LC3D1S3 :1;
        unsigned LC3D1S4 :1;
        unsigned LC3D1S5 :1;
        unsigned LC3D1S6 :1;
        unsigned LC3D1S7 :1;
    };
    struct {
        unsigned LC3D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
        unsigned D1S6 :1;
        unsigned D1S7 :1;
    };
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __attribute__((address(0xE26)));
// bitfield macros
# 27451 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3SEL1

extern volatile unsigned char CLC3SEL1 __attribute__((address(0xE27)));

__asm("CLC3SEL1 equ 0E27h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3D2S0 :1;
        unsigned LC3D2S1 :1;
        unsigned LC3D2S2 :1;
        unsigned LC3D2S3 :1;
        unsigned LC3D2S4 :1;
        unsigned LC3D2S5 :1;
        unsigned LC3D2S6 :1;
        unsigned LC3D2S7 :1;
    };
    struct {
        unsigned LC3D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
        unsigned D2S6 :1;
        unsigned D2S7 :1;
    };
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __attribute__((address(0xE27)));
// bitfield macros
# 27579 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3SEL2

extern volatile unsigned char CLC3SEL2 __attribute__((address(0xE28)));

__asm("CLC3SEL2 equ 0E28h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3D3S0 :1;
        unsigned LC3D3S1 :1;
        unsigned LC3D3S2 :1;
        unsigned LC3D3S3 :1;
        unsigned LC3D3S4 :1;
        unsigned LC3D3S5 :1;
        unsigned LC3D3S6 :1;
        unsigned LC3D3S7 :1;
    };
    struct {
        unsigned LC3D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
        unsigned D3S6 :1;
        unsigned D3S7 :1;
    };
} CLC3SEL2bits_t;
extern volatile CLC3SEL2bits_t CLC3SEL2bits __attribute__((address(0xE28)));
// bitfield macros
# 27707 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3SEL3

extern volatile unsigned char CLC3SEL3 __attribute__((address(0xE29)));

__asm("CLC3SEL3 equ 0E29h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3D4S0 :1;
        unsigned LC3D4S1 :1;
        unsigned LC3D4S2 :1;
        unsigned LC3D4S3 :1;
        unsigned LC3D4S4 :1;
        unsigned LC3D4S5 :1;
        unsigned LC3D4S6 :1;
        unsigned LC3D4S7 :1;
    };
    struct {
        unsigned LC3D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
        unsigned D4S6 :1;
        unsigned D4S7 :1;
    };
} CLC3SEL3bits_t;
extern volatile CLC3SEL3bits_t CLC3SEL3bits __attribute__((address(0xE29)));
// bitfield macros
# 27835 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3GLS0

extern volatile unsigned char CLC3GLS0 __attribute__((address(0xE2A)));

__asm("CLC3GLS0 equ 0E2Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3G1D1N :1;
        unsigned LC3G1D1T :1;
        unsigned LC3G1D2N :1;
        unsigned LC3G1D2T :1;
        unsigned LC3G1D3N :1;
        unsigned LC3G1D3T :1;
        unsigned LC3G1D4N :1;
        unsigned LC3G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __attribute__((address(0xE2A)));
// bitfield macros
# 27947 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3GLS1

extern volatile unsigned char CLC3GLS1 __attribute__((address(0xE2B)));

__asm("CLC3GLS1 equ 0E2Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3G2D1N :1;
        unsigned LC3G2D1T :1;
        unsigned LC3G2D2N :1;
        unsigned LC3G2D2T :1;
        unsigned LC3G2D3N :1;
        unsigned LC3G2D3T :1;
        unsigned LC3G2D4N :1;
        unsigned LC3G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __attribute__((address(0xE2B)));
// bitfield macros
# 28059 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3GLS2

extern volatile unsigned char CLC3GLS2 __attribute__((address(0xE2C)));

__asm("CLC3GLS2 equ 0E2Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3G3D1N :1;
        unsigned LC3G3D1T :1;
        unsigned LC3G3D2N :1;
        unsigned LC3G3D2T :1;
        unsigned LC3G3D3N :1;
        unsigned LC3G3D3T :1;
        unsigned LC3G3D4N :1;
        unsigned LC3G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __attribute__((address(0xE2C)));
// bitfield macros
# 28171 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC3GLS3

extern volatile unsigned char CLC3GLS3 __attribute__((address(0xE2D)));

__asm("CLC3GLS3 equ 0E2Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC3G4D1N :1;
        unsigned LC3G4D1T :1;
        unsigned LC3G4D2N :1;
        unsigned LC3G4D2T :1;
        unsigned LC3G4D3N :1;
        unsigned LC3G4D3T :1;
        unsigned LC3G4D4N :1;
        unsigned LC3G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __attribute__((address(0xE2D)));
// bitfield macros
# 28283 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4CON

extern volatile unsigned char CLC4CON __attribute__((address(0xE2E)));

__asm("CLC4CON equ 0E2Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4MODE :3;
        unsigned LC4INTN :1;
        unsigned LC4INTP :1;
        unsigned LC4OUT :1;
        unsigned :1;
        unsigned LC4EN :1;
    };
    struct {
        unsigned LC4MODE0 :1;
        unsigned LC4MODE1 :1;
        unsigned LC4MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC4CONbits_t;
extern volatile CLC4CONbits_t CLC4CONbits __attribute__((address(0xE2E)));
// bitfield macros
# 28401 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4POL

extern volatile unsigned char CLC4POL __attribute__((address(0xE2F)));

__asm("CLC4POL equ 0E2Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4G1POL :1;
        unsigned LC4G2POL :1;
        unsigned LC4G3POL :1;
        unsigned LC4G4POL :1;
        unsigned :3;
        unsigned LC4POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC4POLbits_t;
extern volatile CLC4POLbits_t CLC4POLbits __attribute__((address(0xE2F)));
// bitfield macros
# 28479 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4SEL0

extern volatile unsigned char CLC4SEL0 __attribute__((address(0xE30)));

__asm("CLC4SEL0 equ 0E30h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4D1S0 :1;
        unsigned LC4D1S1 :1;
        unsigned LC4D1S2 :1;
        unsigned LC4D1S3 :1;
        unsigned LC4D1S4 :1;
        unsigned LC4D1S5 :1;
        unsigned LC4D1S6 :1;
        unsigned LC4D1S7 :1;
    };
    struct {
        unsigned LC4D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
        unsigned D1S6 :1;
        unsigned D1S7 :1;
    };
} CLC4SEL0bits_t;
extern volatile CLC4SEL0bits_t CLC4SEL0bits __attribute__((address(0xE30)));
// bitfield macros
# 28607 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4SEL1

extern volatile unsigned char CLC4SEL1 __attribute__((address(0xE31)));

__asm("CLC4SEL1 equ 0E31h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4D2S0 :1;
        unsigned LC4D2S1 :1;
        unsigned LC4D2S2 :1;
        unsigned LC4D2S3 :1;
        unsigned LC4D2S4 :1;
        unsigned LC4D2S5 :1;
        unsigned LC4D2S6 :1;
        unsigned LC4D2S7 :1;
    };
    struct {
        unsigned LC4D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
        unsigned D2S6 :1;
        unsigned D2S7 :1;
    };
} CLC4SEL1bits_t;
extern volatile CLC4SEL1bits_t CLC4SEL1bits __attribute__((address(0xE31)));
// bitfield macros
# 28735 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4SEL2

extern volatile unsigned char CLC4SEL2 __attribute__((address(0xE32)));

__asm("CLC4SEL2 equ 0E32h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4D3S0 :1;
        unsigned LC4D3S1 :1;
        unsigned LC4D3S2 :1;
        unsigned LC4D3S3 :1;
        unsigned LC4D3S4 :1;
        unsigned LC4D3S5 :1;
        unsigned LC4D3S6 :1;
        unsigned LC4D3S7 :1;
    };
    struct {
        unsigned LC4D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
        unsigned D3S6 :1;
        unsigned D3S7 :1;
    };
} CLC4SEL2bits_t;
extern volatile CLC4SEL2bits_t CLC4SEL2bits __attribute__((address(0xE32)));
// bitfield macros
# 28863 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4SEL3

extern volatile unsigned char CLC4SEL3 __attribute__((address(0xE33)));

__asm("CLC4SEL3 equ 0E33h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4D4S0 :1;
        unsigned LC4D4S1 :1;
        unsigned LC4D4S2 :1;
        unsigned LC4D4S3 :1;
        unsigned LC4D4S4 :1;
        unsigned LC4D4S5 :1;
        unsigned LC4D4S6 :1;
        unsigned LC4D4S7 :1;
    };
    struct {
        unsigned LC4D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
        unsigned D4S6 :1;
        unsigned D4S7 :1;
    };
} CLC4SEL3bits_t;
extern volatile CLC4SEL3bits_t CLC4SEL3bits __attribute__((address(0xE33)));
// bitfield macros
# 28991 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4GLS0

extern volatile unsigned char CLC4GLS0 __attribute__((address(0xE34)));

__asm("CLC4GLS0 equ 0E34h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4G1D1N :1;
        unsigned LC4G1D1T :1;
        unsigned LC4G1D2N :1;
        unsigned LC4G1D2T :1;
        unsigned LC4G1D3N :1;
        unsigned LC4G1D3T :1;
        unsigned LC4G1D4N :1;
        unsigned LC4G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS0bits_t;
extern volatile CLC4GLS0bits_t CLC4GLS0bits __attribute__((address(0xE34)));
// bitfield macros
# 29103 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4GLS1

extern volatile unsigned char CLC4GLS1 __attribute__((address(0xE35)));

__asm("CLC4GLS1 equ 0E35h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4G2D1N :1;
        unsigned LC4G2D1T :1;
        unsigned LC4G2D2N :1;
        unsigned LC4G2D2T :1;
        unsigned LC4G2D3N :1;
        unsigned LC4G2D3T :1;
        unsigned LC4G2D4N :1;
        unsigned LC4G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS1bits_t;
extern volatile CLC4GLS1bits_t CLC4GLS1bits __attribute__((address(0xE35)));
// bitfield macros
# 29215 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4GLS2

extern volatile unsigned char CLC4GLS2 __attribute__((address(0xE36)));

__asm("CLC4GLS2 equ 0E36h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4G3D1N :1;
        unsigned LC4G3D1T :1;
        unsigned LC4G3D2N :1;
        unsigned LC4G3D2T :1;
        unsigned LC4G3D3N :1;
        unsigned LC4G3D3T :1;
        unsigned LC4G3D4N :1;
        unsigned LC4G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS2bits_t;
extern volatile CLC4GLS2bits_t CLC4GLS2bits __attribute__((address(0xE36)));
// bitfield macros
# 29327 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLC4GLS3

extern volatile unsigned char CLC4GLS3 __attribute__((address(0xE37)));

__asm("CLC4GLS3 equ 0E37h");

// bitfield definitions
typedef union {
    struct {
        unsigned LC4G4D1N :1;
        unsigned LC4G4D1T :1;
        unsigned LC4G4D2N :1;
        unsigned LC4G4D2T :1;
        unsigned LC4G4D3N :1;
        unsigned LC4G4D3T :1;
        unsigned LC4G4D4N :1;
        unsigned LC4G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC4GLS3bits_t;
extern volatile CLC4GLS3bits_t CLC4GLS3bits __attribute__((address(0xE37)));
// bitfield macros
# 29439 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: PPSLOCK

extern volatile unsigned char PPSLOCK __attribute__((address(0xE8F)));

__asm("PPSLOCK equ 0E8Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned PPSLOCKED :1;
    };
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __attribute__((address(0xE8F)));
// bitfield macros






// Register: INTPPS

extern volatile unsigned char INTPPS __attribute__((address(0xE90)));

__asm("INTPPS equ 0E90h");

// bitfield definitions
typedef union {
    struct {
        unsigned INTPPS :4;
    };
    struct {
        unsigned INTPPS0 :1;
        unsigned INTPPS1 :1;
        unsigned INTPPS2 :1;
        unsigned INTPPS3 :1;
    };
} INTPPSbits_t;
extern volatile INTPPSbits_t INTPPSbits __attribute__((address(0xE90)));
// bitfield macros
# 29505 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T0CKIPPS

extern volatile unsigned char T0CKIPPS __attribute__((address(0xE91)));

__asm("T0CKIPPS equ 0E91h");

// bitfield definitions
typedef union {
    struct {
        unsigned T0CKIPPS :4;
    };
    struct {
        unsigned T0CKIPPS0 :1;
        unsigned T0CKIPPS1 :1;
        unsigned T0CKIPPS2 :1;
        unsigned T0CKIPPS3 :1;
    };
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __attribute__((address(0xE91)));
// bitfield macros
# 29551 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T1CKIPPS

extern volatile unsigned char T1CKIPPS __attribute__((address(0xE92)));

__asm("T1CKIPPS equ 0E92h");

// bitfield definitions
typedef union {
    struct {
        unsigned T1CKIPPS :5;
    };
    struct {
        unsigned T1CKIPPS0 :1;
        unsigned T1CKIPPS1 :1;
        unsigned T1CKIPPS2 :1;
        unsigned T1CKIPPS3 :1;
        unsigned T1CKIPPS4 :1;
    };
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __attribute__((address(0xE92)));
// bitfield macros
# 29603 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T1GPPS

extern volatile unsigned char T1GPPS __attribute__((address(0xE93)));

__asm("T1GPPS equ 0E93h");

// bitfield definitions
typedef union {
    struct {
        unsigned T1GPPS :5;
    };
    struct {
        unsigned T1GPPS0 :1;
        unsigned T1GPPS1 :1;
        unsigned T1GPPS2 :1;
        unsigned T1GPPS3 :1;
        unsigned T1GPPS4 :1;
    };
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __attribute__((address(0xE93)));
// bitfield macros
# 29655 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T3CKIPPS

extern volatile unsigned char T3CKIPPS __attribute__((address(0xE94)));

__asm("T3CKIPPS equ 0E94h");

// bitfield definitions
typedef union {
    struct {
        unsigned T3CKIPPS :5;
    };
    struct {
        unsigned T3CKIPPS0 :1;
        unsigned T3CKIPPS1 :1;
        unsigned T3CKIPPS2 :1;
        unsigned T3CKIPPS3 :1;
        unsigned T3CKIPPS4 :1;
    };
} T3CKIPPSbits_t;
extern volatile T3CKIPPSbits_t T3CKIPPSbits __attribute__((address(0xE94)));
// bitfield macros
# 29707 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T3GPPS

extern volatile unsigned char T3GPPS __attribute__((address(0xE95)));

__asm("T3GPPS equ 0E95h");

// bitfield definitions
typedef union {
    struct {
        unsigned T3GPPS :5;
    };
    struct {
        unsigned T3GPPS0 :1;
        unsigned T3GPPS1 :1;
        unsigned T3GPPS2 :1;
        unsigned T3GPPS3 :1;
        unsigned T3GPPS4 :1;
    };
} T3GPPSbits_t;
extern volatile T3GPPSbits_t T3GPPSbits __attribute__((address(0xE95)));
// bitfield macros
# 29759 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T5CKIPPS

extern volatile unsigned char T5CKIPPS __attribute__((address(0xE96)));

__asm("T5CKIPPS equ 0E96h");

// bitfield definitions
typedef union {
    struct {
        unsigned T5CKIPPS :5;
    };
    struct {
        unsigned T5CKIPPS0 :1;
        unsigned T5CKIPPS1 :1;
        unsigned T5CKIPPS2 :1;
        unsigned T5CKIPPS3 :1;
        unsigned T5CKIPPS4 :1;
    };
} T5CKIPPSbits_t;
extern volatile T5CKIPPSbits_t T5CKIPPSbits __attribute__((address(0xE96)));
// bitfield macros
# 29811 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T5GPPS

extern volatile unsigned char T5GPPS __attribute__((address(0xE97)));

__asm("T5GPPS equ 0E97h");

// bitfield definitions
typedef union {
    struct {
        unsigned T5GPPS :5;
    };
    struct {
        unsigned T5GPPS0 :1;
        unsigned T5GPPS1 :1;
        unsigned T5GPPS2 :1;
        unsigned T5GPPS3 :1;
        unsigned T5GPPS4 :1;
    };
} T5GPPSbits_t;
extern volatile T5GPPSbits_t T5GPPSbits __attribute__((address(0xE97)));
// bitfield macros
# 29863 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T2AINPPS

extern volatile unsigned char T2AINPPS __attribute__((address(0xE9C)));

__asm("T2AINPPS equ 0E9Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned T2AINPPS :5;
    };
    struct {
        unsigned T2AINPPS0 :1;
        unsigned T2AINPPS1 :1;
        unsigned T2AINPPS2 :1;
        unsigned T2AINPPS3 :1;
        unsigned T2AINPPS4 :1;
    };
} T2AINPPSbits_t;
extern volatile T2AINPPSbits_t T2AINPPSbits __attribute__((address(0xE9C)));
// bitfield macros
# 29915 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T4AINPPS

extern volatile unsigned char T4AINPPS __attribute__((address(0xE9D)));

__asm("T4AINPPS equ 0E9Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned T4AINPPS :5;
    };
    struct {
        unsigned T4AINPPS0 :1;
        unsigned T4AINPPS1 :1;
        unsigned T4AINPPS2 :1;
        unsigned T4AINPPS3 :1;
        unsigned T4AINPPS4 :1;
    };
} T4AINPPSbits_t;
extern volatile T4AINPPSbits_t T4AINPPSbits __attribute__((address(0xE9D)));
// bitfield macros
# 29967 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: T6AINPPS

extern volatile unsigned char T6AINPPS __attribute__((address(0xE9E)));

__asm("T6AINPPS equ 0E9Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned T6AINPPS :5;
    };
    struct {
        unsigned T6AINPPS0 :1;
        unsigned T6AINPPS1 :1;
        unsigned T6AINPPS2 :1;
        unsigned T6AINPPS3 :1;
        unsigned T6AINPPS4 :1;
    };
} T6AINPPSbits_t;
extern volatile T6AINPPSbits_t T6AINPPSbits __attribute__((address(0xE9E)));
// bitfield macros
# 30019 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP1PPS

extern volatile unsigned char CCP1PPS __attribute__((address(0xEA1)));

__asm("CCP1PPS equ 0EA1h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP1PPS :5;
    };
    struct {
        unsigned CCP1PPS0 :1;
        unsigned CCP1PPS1 :1;
        unsigned CCP1PPS2 :1;
        unsigned CCP1PPS3 :1;
        unsigned CCP1PPS4 :1;
    };
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __attribute__((address(0xEA1)));
// bitfield macros
# 30071 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP2PPS

extern volatile unsigned char CCP2PPS __attribute__((address(0xEA2)));

__asm("CCP2PPS equ 0EA2h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP2PPS :5;
    };
    struct {
        unsigned CCP2PPS0 :1;
        unsigned CCP2PPS1 :1;
        unsigned CCP2PPS2 :1;
        unsigned CCP2PPS3 :1;
        unsigned CCP2PPS4 :1;
    };
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __attribute__((address(0xEA2)));
// bitfield macros
# 30123 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP3PPS

extern volatile unsigned char CCP3PPS __attribute__((address(0xEA3)));

__asm("CCP3PPS equ 0EA3h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP3PPS :5;
    };
    struct {
        unsigned CCP3PPS0 :1;
        unsigned CCP3PPS1 :1;
        unsigned CCP3PPS2 :1;
        unsigned CCP3PPS3 :1;
        unsigned CCP3PPS4 :1;
    };
} CCP3PPSbits_t;
extern volatile CCP3PPSbits_t CCP3PPSbits __attribute__((address(0xEA3)));
// bitfield macros
# 30175 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP4PPS

extern volatile unsigned char CCP4PPS __attribute__((address(0xEA4)));

__asm("CCP4PPS equ 0EA4h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP4PPS :5;
    };
    struct {
        unsigned CCP4PPS0 :1;
        unsigned CCP4PPS1 :1;
        unsigned CCP4PPS2 :1;
        unsigned CCP4PPS3 :1;
        unsigned CCP4PPS4 :1;
    };
} CCP4PPSbits_t;
extern volatile CCP4PPSbits_t CCP4PPSbits __attribute__((address(0xEA4)));
// bitfield macros
# 30227 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCP5PPS

extern volatile unsigned char CCP5PPS __attribute__((address(0xEA5)));

__asm("CCP5PPS equ 0EA5h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP5PPS :5;
    };
    struct {
        unsigned CCP5PPS0 :1;
        unsigned CCP5PPS1 :1;
        unsigned CCP5PPS2 :1;
        unsigned CCP5PPS3 :1;
        unsigned CCP5PPS4 :1;
    };
} CCP5PPSbits_t;
extern volatile CCP5PPSbits_t CCP5PPSbits __attribute__((address(0xEA5)));
// bitfield macros
# 30279 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1WINPPS

extern volatile unsigned char SMT1WINPPS __attribute__((address(0xEA9)));

__asm("SMT1WINPPS equ 0EA9h");

// bitfield definitions
typedef union {
    struct {
        unsigned SMT1WINPPS :5;
    };
    struct {
        unsigned SMU1WINPPS0 :1;
        unsigned SMU1WINPPS1 :1;
        unsigned SMU1WINPPS2 :1;
        unsigned SMU1WINPPS3 :1;
        unsigned SMU1WINPPS4 :1;
    };
} SMT1WINPPSbits_t;
extern volatile SMT1WINPPSbits_t SMT1WINPPSbits __attribute__((address(0xEA9)));
// bitfield macros
# 30331 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT1SIGPPS

extern volatile unsigned char SMT1SIGPPS __attribute__((address(0xEAA)));

__asm("SMT1SIGPPS equ 0EAAh");

// bitfield definitions
typedef union {
    struct {
        unsigned SMT1SIGPPS :5;
    };
    struct {
        unsigned SMU1SIGPPS0 :1;
        unsigned SMU1SIGPPS1 :1;
        unsigned SMU1SIGPPS2 :1;
        unsigned SMU1SIGPPS3 :1;
        unsigned SMU1SIGPPS4 :1;
    };
} SMT1SIGPPSbits_t;
extern volatile SMT1SIGPPSbits_t SMT1SIGPPSbits __attribute__((address(0xEAA)));
// bitfield macros
# 30383 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2WINPPS

extern volatile unsigned char SMT2WINPPS __attribute__((address(0xEAB)));

__asm("SMT2WINPPS equ 0EABh");

// bitfield definitions
typedef union {
    struct {
        unsigned SMT2WINPPS :5;
    };
    struct {
        unsigned SMU2WINPPS0 :1;
        unsigned SMU2WINPPS1 :1;
        unsigned SMU2WINPPS2 :1;
        unsigned SMU2WINPPS3 :1;
        unsigned SMU2WINPPS4 :1;
    };
} SMT2WINPPSbits_t;
extern volatile SMT2WINPPSbits_t SMT2WINPPSbits __attribute__((address(0xEAB)));
// bitfield macros
# 30435 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SMT2SIGPPS

extern volatile unsigned char SMT2SIGPPS __attribute__((address(0xEAC)));

__asm("SMT2SIGPPS equ 0EACh");

// bitfield definitions
typedef union {
    struct {
        unsigned SMT2SIGPPS :5;
    };
    struct {
        unsigned SMU2SIGPPS0 :1;
        unsigned SMU2SIGPPS1 :1;
        unsigned SMU2SIGPPS2 :1;
        unsigned SMU2SIGPPS3 :1;
        unsigned SMU2SIGPPS4 :1;
    };
} SMT2SIGPPSbits_t;
extern volatile SMT2SIGPPSbits_t SMT2SIGPPSbits __attribute__((address(0xEAC)));
// bitfield macros
# 30487 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG1PPS

extern volatile unsigned char CWG1PPS __attribute__((address(0xEB1)));

__asm("CWG1PPS equ 0EB1h");

// bitfield definitions
typedef union {
    struct {
        unsigned CWG1PPS :5;
    };
    struct {
        unsigned CWG1PPS0 :1;
        unsigned CWG1PPS1 :1;
        unsigned CWG1PPS2 :1;
        unsigned CWG1PPS3 :1;
        unsigned CWG1PPS4 :1;
    };
} CWG1PPSbits_t;
extern volatile CWG1PPSbits_t CWG1PPSbits __attribute__((address(0xEB1)));
// bitfield macros
# 30539 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG2PPS

extern volatile unsigned char CWG2PPS __attribute__((address(0xEB2)));

__asm("CWG2PPS equ 0EB2h");

// bitfield definitions
typedef union {
    struct {
        unsigned CWG2PPS :5;
    };
    struct {
        unsigned CWG2PPS0 :1;
        unsigned CWG2PPS1 :1;
        unsigned CWG2PPS2 :1;
        unsigned CWG2PPS3 :1;
        unsigned CWG2PPS4 :1;
    };
} CWG2PPSbits_t;
extern volatile CWG2PPSbits_t CWG2PPSbits __attribute__((address(0xEB2)));
// bitfield macros
# 30591 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CWG3PPS

extern volatile unsigned char CWG3PPS __attribute__((address(0xEB3)));

__asm("CWG3PPS equ 0EB3h");

// bitfield definitions
typedef union {
    struct {
        unsigned CWG3PPS :5;
    };
    struct {
        unsigned CWG3PPS0 :1;
        unsigned CWG3PPS1 :1;
        unsigned CWG3PPS2 :1;
        unsigned CWG3PPS3 :1;
        unsigned CWG3PPS4 :1;
    };
} CWG3PPSbits_t;
extern volatile CWG3PPSbits_t CWG3PPSbits __attribute__((address(0xEB3)));
// bitfield macros
# 30643 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDCARLPPS

extern volatile unsigned char MDCARLPPS __attribute__((address(0xEB8)));

__asm("MDCARLPPS equ 0EB8h");

// bitfield definitions
typedef union {
    struct {
        unsigned MDCARLPPS :5;
    };
    struct {
        unsigned MDCARLPPS0 :1;
        unsigned MDCARLPPS1 :1;
        unsigned MDCARLPPS2 :1;
        unsigned MDCARLPPS3 :1;
        unsigned MDCARLPPS4 :1;
    };
} MDCARLPPSbits_t;
extern volatile MDCARLPPSbits_t MDCARLPPSbits __attribute__((address(0xEB8)));
// bitfield macros
# 30695 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDCARHPPS

extern volatile unsigned char MDCARHPPS __attribute__((address(0xEB9)));

__asm("MDCARHPPS equ 0EB9h");

// bitfield definitions
typedef union {
    struct {
        unsigned MDCARHPPS :5;
    };
    struct {
        unsigned MDCARHPPS0 :1;
        unsigned MDCARHPPS1 :1;
        unsigned MDCARHPPS2 :1;
        unsigned MDCARHPPS3 :1;
        unsigned MDCARHPPS4 :1;
    };
} MDCARHPPSbits_t;
extern volatile MDCARHPPSbits_t MDCARHPPSbits __attribute__((address(0xEB9)));
// bitfield macros
# 30747 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: MDSRCPPS

extern volatile unsigned char MDSRCPPS __attribute__((address(0xEBA)));

__asm("MDSRCPPS equ 0EBAh");

// bitfield definitions
typedef union {
    struct {
        unsigned MDSRCPPS :5;
    };
    struct {
        unsigned MDSRCPPS0 :1;
        unsigned MDSRCPPS1 :1;
        unsigned MDSRCPPS2 :1;
        unsigned MDSRCPPS3 :1;
        unsigned MDSRCPPS4 :1;
    };
} MDSRCPPSbits_t;
extern volatile MDSRCPPSbits_t MDSRCPPSbits __attribute__((address(0xEBA)));
// bitfield macros
# 30799 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLCIN0PPS

extern volatile unsigned char CLCIN0PPS __attribute__((address(0xEBB)));

__asm("CLCIN0PPS equ 0EBBh");

// bitfield definitions
typedef union {
    struct {
        unsigned CLCIN0PPS :5;
    };
    struct {
        unsigned CLCIN0PPS0 :1;
        unsigned CLCIN0PPS1 :1;
        unsigned CLCIN0PPS2 :1;
        unsigned CLCIN0PPS3 :1;
        unsigned CLCIN0PPS4 :1;
    };
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __attribute__((address(0xEBB)));
// bitfield macros
# 30851 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLCIN1PPS

extern volatile unsigned char CLCIN1PPS __attribute__((address(0xEBC)));

__asm("CLCIN1PPS equ 0EBCh");

// bitfield definitions
typedef union {
    struct {
        unsigned CLCIN1PPS :5;
    };
    struct {
        unsigned CLCIN1PPS0 :1;
        unsigned CLCIN1PPS1 :1;
        unsigned CLCIN1PPS2 :1;
        unsigned CLCIN1PPS3 :1;
        unsigned CLCIN1PPS4 :1;
    };
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __attribute__((address(0xEBC)));
// bitfield macros
# 30903 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLCIN2PPS

extern volatile unsigned char CLCIN2PPS __attribute__((address(0xEBD)));

__asm("CLCIN2PPS equ 0EBDh");

// bitfield definitions
typedef union {
    struct {
        unsigned CLCIN2PPS :5;
    };
    struct {
        unsigned CLCIN2PPS0 :1;
        unsigned CLCIN2PPS1 :1;
        unsigned CLCIN2PPS2 :1;
        unsigned CLCIN2PPS3 :1;
        unsigned CLCIN2PPS4 :1;
    };
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __attribute__((address(0xEBD)));
// bitfield macros
# 30955 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CLCIN3PPS

extern volatile unsigned char CLCIN3PPS __attribute__((address(0xEBE)));

__asm("CLCIN3PPS equ 0EBEh");

// bitfield definitions
typedef union {
    struct {
        unsigned CLCIN3PPS :5;
    };
    struct {
        unsigned CLCIN3PPS0 :1;
        unsigned CLCIN3PPS1 :1;
        unsigned CLCIN3PPS2 :1;
        unsigned CLCIN3PPS3 :1;
        unsigned CLCIN3PPS4 :1;
    };
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __attribute__((address(0xEBE)));
// bitfield macros
# 31007 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ADCACTPPS

extern volatile unsigned char ADCACTPPS __attribute__((address(0xEC3)));

__asm("ADCACTPPS equ 0EC3h");

// bitfield definitions
typedef union {
    struct {
        unsigned ADCACTPPS :5;
    };
    struct {
        unsigned ADCACTPPS0 :1;
        unsigned ADCACTPPS1 :1;
        unsigned ADCACTPPS2 :1;
        unsigned ADCACTPPS3 :1;
        unsigned ADCACTPPS4 :1;
    };
} ADCACTPPSbits_t;
extern volatile ADCACTPPSbits_t ADCACTPPSbits __attribute__((address(0xEC3)));
// bitfield macros
# 31059 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1CLKPPS

extern volatile unsigned char SSP1CLKPPS __attribute__((address(0xEC5)));

__asm("SSP1CLKPPS equ 0EC5h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP1CLKPPS0 :1;
        unsigned SSP1CLKPPS1 :1;
        unsigned SSP1CLKPPS2 :1;
        unsigned SSP1CLKPPS3 :1;
        unsigned SSP1CLKPPS4 :1;
    };
    struct {
        unsigned SSP1CLKPPS :5;
    };
} SSP1CLKPPSbits_t;
extern volatile SSP1CLKPPSbits_t SSP1CLKPPSbits __attribute__((address(0xEC5)));
// bitfield macros
# 31111 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1DATPPS

extern volatile unsigned char SSP1DATPPS __attribute__((address(0xEC6)));

__asm("SSP1DATPPS equ 0EC6h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP1DATPPS0 :1;
        unsigned SSP1DATPPS1 :1;
        unsigned SSP1DATPPS2 :1;
        unsigned SSP1DATPPS3 :1;
        unsigned SSP1DATPPS4 :1;
    };
    struct {
        unsigned SSP1DATPPS :5;
    };
} SSP1DATPPSbits_t;
extern volatile SSP1DATPPSbits_t SSP1DATPPSbits __attribute__((address(0xEC6)));
// bitfield macros
# 31163 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP1SSPPS

extern volatile unsigned char SSP1SSPPS __attribute__((address(0xEC7)));

__asm("SSP1SSPPS equ 0EC7h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP1SSPPS0 :1;
        unsigned SSP1SSPPS1 :1;
        unsigned SSP1SSPPS2 :1;
        unsigned SSP1SSPPS3 :1;
        unsigned SSP1SSPPS4 :1;
    };
    struct {
        unsigned SSP1SSPPS :5;
    };
} SSP1SSPPSbits_t;
extern volatile SSP1SSPPSbits_t SSP1SSPPSbits __attribute__((address(0xEC7)));
// bitfield macros
# 31215 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2CLKPPS

extern volatile unsigned char SSP2CLKPPS __attribute__((address(0xEC8)));

__asm("SSP2CLKPPS equ 0EC8h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP2CLKPPS0 :1;
        unsigned SSP2CLKPPS1 :1;
        unsigned SSP2CLKPPS2 :1;
        unsigned SSP2CLKPPS3 :1;
        unsigned SSP2CLKPPS4 :1;
    };
    struct {
        unsigned SSP2CLKPPS :5;
    };
} SSP2CLKPPSbits_t;
extern volatile SSP2CLKPPSbits_t SSP2CLKPPSbits __attribute__((address(0xEC8)));
// bitfield macros
# 31267 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2DATPPS

extern volatile unsigned char SSP2DATPPS __attribute__((address(0xEC9)));

__asm("SSP2DATPPS equ 0EC9h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP2DATPPS0 :1;
        unsigned SSP2DATPPS1 :1;
        unsigned SSP2DATPPS2 :1;
        unsigned SSP2DATPPS3 :1;
        unsigned SSP2DATPPS4 :1;
    };
    struct {
        unsigned SSP2DATPPS :5;
    };
} SSP2DATPPSbits_t;
extern volatile SSP2DATPPSbits_t SSP2DATPPSbits __attribute__((address(0xEC9)));
// bitfield macros
# 31319 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SSP2SSPPS

extern volatile unsigned char SSP2SSPPS __attribute__((address(0xECA)));

__asm("SSP2SSPPS equ 0ECAh");

// bitfield definitions
typedef union {
    struct {
        unsigned SSP2SSPPS0 :1;
        unsigned SSP2SSPPS1 :1;
        unsigned SSP2SSPPS2 :1;
        unsigned SSP2SSPPS3 :1;
        unsigned SSP2SSPPS4 :1;
    };
    struct {
        unsigned SSP2SSPPS :5;
    };
} SSP2SSPPSbits_t;
extern volatile SSP2SSPPSbits_t SSP2SSPPSbits __attribute__((address(0xECA)));
// bitfield macros
# 31371 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RXPPS

extern volatile unsigned char RXPPS __attribute__((address(0xECB)));

__asm("RXPPS equ 0ECBh");

// bitfield definitions
typedef union {
    struct {
        unsigned RXPPS0 :1;
        unsigned RXPPS1 :1;
        unsigned RXPPS2 :1;
        unsigned RXPPS3 :1;
        unsigned RXPPS4 :1;
    };
    struct {
        unsigned RXPPS :5;
    };
} RXPPSbits_t;
extern volatile RXPPSbits_t RXPPSbits __attribute__((address(0xECB)));
// bitfield macros
# 31423 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: TXPPS

extern volatile unsigned char TXPPS __attribute__((address(0xECC)));

__asm("TXPPS equ 0ECCh");

// bitfield definitions
typedef union {
    struct {
        unsigned TXPPS0 :1;
        unsigned TXPPS1 :1;
        unsigned TXPPS2 :1;
        unsigned TXPPS3 :1;
        unsigned TXPPS4 :1;
    };
    struct {
        unsigned TXPPS :5;
    };
} TXPPSbits_t;
extern volatile TXPPSbits_t TXPPSbits __attribute__((address(0xECC)));
// bitfield macros
# 31475 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA0PPS

extern volatile unsigned char RA0PPS __attribute__((address(0xF10)));

__asm("RA0PPS equ 0F10h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA0PPS0 :1;
        unsigned RA0PPS1 :1;
        unsigned RA0PPS2 :1;
        unsigned RA0PPS3 :1;
        unsigned RA0PPS4 :1;
        unsigned RA0PPS5 :1;
    };
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __attribute__((address(0xF10)));
// bitfield macros
# 31525 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA1PPS

extern volatile unsigned char RA1PPS __attribute__((address(0xF11)));

__asm("RA1PPS equ 0F11h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA1PPS0 :1;
        unsigned RA1PPS1 :1;
        unsigned RA1PPS2 :1;
        unsigned RA1PPS3 :1;
        unsigned RA1PPS4 :1;
        unsigned RA1PPS5 :1;
    };
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __attribute__((address(0xF11)));
// bitfield macros
# 31575 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA2PPS

extern volatile unsigned char RA2PPS __attribute__((address(0xF12)));

__asm("RA2PPS equ 0F12h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA2PPS0 :1;
        unsigned RA2PPS1 :1;
        unsigned RA2PPS2 :1;
        unsigned RA2PPS3 :1;
        unsigned RA2PPS4 :1;
        unsigned RA2PPS5 :1;
    };
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __attribute__((address(0xF12)));
// bitfield macros
# 31625 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA3PPS

extern volatile unsigned char RA3PPS __attribute__((address(0xF13)));

__asm("RA3PPS equ 0F13h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA3PPS0 :1;
        unsigned RA3PPS1 :1;
        unsigned RA3PPS2 :1;
        unsigned RA3PPS3 :1;
        unsigned RA3PPS4 :1;
        unsigned RA3PPS5 :1;
    };
} RA3PPSbits_t;
extern volatile RA3PPSbits_t RA3PPSbits __attribute__((address(0xF13)));
// bitfield macros
# 31675 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA4PPS

extern volatile unsigned char RA4PPS __attribute__((address(0xF14)));

__asm("RA4PPS equ 0F14h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA4PPS0 :1;
        unsigned RA4PPS1 :1;
        unsigned RA4PPS2 :1;
        unsigned RA4PPS3 :1;
        unsigned RA4PPS4 :1;
        unsigned RA4PPS5 :1;
    };
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __attribute__((address(0xF14)));
// bitfield macros
# 31725 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA5PPS

extern volatile unsigned char RA5PPS __attribute__((address(0xF15)));

__asm("RA5PPS equ 0F15h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA5PPS0 :1;
        unsigned RA5PPS1 :1;
        unsigned RA5PPS2 :1;
        unsigned RA5PPS3 :1;
        unsigned RA5PPS4 :1;
        unsigned RA5PPS5 :1;
    };
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __attribute__((address(0xF15)));
// bitfield macros
# 31775 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA6PPS

extern volatile unsigned char RA6PPS __attribute__((address(0xF16)));

__asm("RA6PPS equ 0F16h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA6PPS0 :1;
        unsigned RA6PPS1 :1;
        unsigned RA6PPS2 :1;
        unsigned RA6PPS3 :1;
        unsigned RA6PPS4 :1;
        unsigned RA6PPS5 :1;
    };
} RA6PPSbits_t;
extern volatile RA6PPSbits_t RA6PPSbits __attribute__((address(0xF16)));
// bitfield macros
# 31825 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RA7PPS

extern volatile unsigned char RA7PPS __attribute__((address(0xF17)));

__asm("RA7PPS equ 0F17h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA7PPS0 :1;
        unsigned RA7PPS1 :1;
        unsigned RA7PPS2 :1;
        unsigned RA7PPS3 :1;
        unsigned RA7PPS4 :1;
        unsigned RA7PPS5 :1;
    };
} RA7PPSbits_t;
extern volatile RA7PPSbits_t RA7PPSbits __attribute__((address(0xF17)));
// bitfield macros
# 31875 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB0PPS

extern volatile unsigned char RB0PPS __attribute__((address(0xF18)));

__asm("RB0PPS equ 0F18h");

// bitfield definitions
typedef union {
    struct {
        unsigned RB0PPS0 :1;
        unsigned RB0PPS1 :1;
        unsigned RB0PPS2 :1;
        unsigned RB0PPS3 :1;
        unsigned RB0PPS4 :1;
        unsigned RB0PPS5 :1;
    };
} RB0PPSbits_t;
extern volatile RB0PPSbits_t RB0PPSbits __attribute__((address(0xF18)));
// bitfield macros
# 31925 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB1PPS

extern volatile unsigned char RB1PPS __attribute__((address(0xF19)));

__asm("RB1PPS equ 0F19h");

// bitfield definitions
typedef union {
    struct {
        unsigned RB1PPS0 :1;
        unsigned RB1PPS1 :1;
        unsigned RB1PPS2 :1;
        unsigned RB1PPS3 :1;
        unsigned RB1PPS4 :1;
        unsigned RB1PPS5 :1;
    };
} RB1PPSbits_t;
extern volatile RB1PPSbits_t RB1PPSbits __attribute__((address(0xF19)));
// bitfield macros
# 31975 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB2PPS

extern volatile unsigned char RB2PPS __attribute__((address(0xF1A)));

__asm("RB2PPS equ 0F1Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned RB2PPS0 :1;
        unsigned RB2PPS1 :1;
        unsigned RB2PPS2 :1;
        unsigned RB2PPS3 :1;
        unsigned RB2PPS4 :1;
        unsigned RB2PPS5 :1;
    };
} RB2PPSbits_t;
extern volatile RB2PPSbits_t RB2PPSbits __attribute__((address(0xF1A)));
// bitfield macros
# 32025 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB3PPS

extern volatile unsigned char RB3PPS __attribute__((address(0xF1B)));

__asm("RB3PPS equ 0F1Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned RB3PPS0 :1;
        unsigned RB3PPS1 :1;
        unsigned RB3PPS2 :1;
        unsigned RB3PPS3 :1;
        unsigned RB3PPS4 :1;
        unsigned RB3PPS5 :1;
    };
} RB3PPSbits_t;
extern volatile RB3PPSbits_t RB3PPSbits __attribute__((address(0xF1B)));
// bitfield macros
# 32075 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB4PPS

extern volatile unsigned char RB4PPS __attribute__((address(0xF1C)));

__asm("RB4PPS equ 0F1Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned RB4PPS0 :1;
        unsigned RB4PPS1 :1;
        unsigned RB4PPS2 :1;
        unsigned RB4PPS3 :1;
        unsigned RB4PPS4 :1;
        unsigned RB4PPS5 :1;
    };
} RB4PPSbits_t;
extern volatile RB4PPSbits_t RB4PPSbits __attribute__((address(0xF1C)));
// bitfield macros
# 32125 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB5PPS

extern volatile unsigned char RB5PPS __attribute__((address(0xF1D)));

__asm("RB5PPS equ 0F1Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned RB5PPS0 :1;
        unsigned RB5PPS1 :1;
        unsigned RB5PPS2 :1;
        unsigned RB5PPS3 :1;
        unsigned RB5PPS4 :1;
        unsigned RB5PPS5 :1;
    };
} RB5PPSbits_t;
extern volatile RB5PPSbits_t RB5PPSbits __attribute__((address(0xF1D)));
// bitfield macros
# 32175 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB6PPS

extern volatile unsigned char RB6PPS __attribute__((address(0xF1E)));

__asm("RB6PPS equ 0F1Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned RB6PPS0 :1;
        unsigned RB6PPS1 :1;
        unsigned RB6PPS2 :1;
        unsigned RB6PPS3 :1;
        unsigned RB6PPS4 :1;
        unsigned RB6PPS5 :1;
    };
} RB6PPSbits_t;
extern volatile RB6PPSbits_t RB6PPSbits __attribute__((address(0xF1E)));
// bitfield macros
# 32225 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RB7PPS

extern volatile unsigned char RB7PPS __attribute__((address(0xF1F)));

__asm("RB7PPS equ 0F1Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned RB7PPS0 :1;
        unsigned RB7PPS1 :1;
        unsigned RB7PPS2 :1;
        unsigned RB7PPS3 :1;
        unsigned RB7PPS4 :1;
        unsigned RB7PPS5 :1;
    };
} RB7PPSbits_t;
extern volatile RB7PPSbits_t RB7PPSbits __attribute__((address(0xF1F)));
// bitfield macros
# 32275 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC0PPS

extern volatile unsigned char RC0PPS __attribute__((address(0xF20)));

__asm("RC0PPS equ 0F20h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC0PPS0 :1;
        unsigned RC0PPS1 :1;
        unsigned RC0PPS2 :1;
        unsigned RC0PPS3 :1;
        unsigned RC0PPS4 :1;
        unsigned RC0PPS5 :1;
    };
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __attribute__((address(0xF20)));
// bitfield macros
# 32325 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC1PPS

extern volatile unsigned char RC1PPS __attribute__((address(0xF21)));

__asm("RC1PPS equ 0F21h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC1PPS0 :1;
        unsigned RC1PPS1 :1;
        unsigned RC1PPS2 :1;
        unsigned RC1PPS3 :1;
        unsigned RC1PPS4 :1;
        unsigned RC1PPS5 :1;
    };
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __attribute__((address(0xF21)));
// bitfield macros
# 32375 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC2PPS

extern volatile unsigned char RC2PPS __attribute__((address(0xF22)));

__asm("RC2PPS equ 0F22h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC2PPS0 :1;
        unsigned RC2PPS1 :1;
        unsigned RC2PPS2 :1;
        unsigned RC2PPS3 :1;
        unsigned RC2PPS4 :1;
        unsigned RC2PPS5 :1;
    };
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __attribute__((address(0xF22)));
// bitfield macros
# 32425 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC3PPS

extern volatile unsigned char RC3PPS __attribute__((address(0xF23)));

__asm("RC3PPS equ 0F23h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC3PPS0 :1;
        unsigned RC3PPS1 :1;
        unsigned RC3PPS2 :1;
        unsigned RC3PPS3 :1;
        unsigned RC3PPS4 :1;
        unsigned RC3PPS5 :1;
    };
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __attribute__((address(0xF23)));
// bitfield macros
# 32475 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC4PPS

extern volatile unsigned char RC4PPS __attribute__((address(0xF24)));

__asm("RC4PPS equ 0F24h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC4PPS0 :1;
        unsigned RC4PPS1 :1;
        unsigned RC4PPS2 :1;
        unsigned RC4PPS3 :1;
        unsigned RC4PPS4 :1;
        unsigned RC4PPS5 :1;
    };
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __attribute__((address(0xF24)));
// bitfield macros
# 32525 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC5PPS

extern volatile unsigned char RC5PPS __attribute__((address(0xF25)));

__asm("RC5PPS equ 0F25h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC5PPS0 :1;
        unsigned RC5PPS1 :1;
        unsigned RC5PPS2 :1;
        unsigned RC5PPS3 :1;
        unsigned RC5PPS4 :1;
        unsigned RC5PPS5 :1;
    };
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __attribute__((address(0xF25)));
// bitfield macros
# 32575 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC6PPS

extern volatile unsigned char RC6PPS __attribute__((address(0xF26)));

__asm("RC6PPS equ 0F26h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC6PPS0 :1;
        unsigned RC6PPS1 :1;
        unsigned RC6PPS2 :1;
        unsigned RC6PPS3 :1;
        unsigned RC6PPS4 :1;
        unsigned RC6PPS5 :1;
    };
} RC6PPSbits_t;
extern volatile RC6PPSbits_t RC6PPSbits __attribute__((address(0xF26)));
// bitfield macros
# 32625 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: RC7PPS

extern volatile unsigned char RC7PPS __attribute__((address(0xF27)));

__asm("RC7PPS equ 0F27h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC7PPS0 :1;
        unsigned RC7PPS1 :1;
        unsigned RC7PPS2 :1;
        unsigned RC7PPS3 :1;
        unsigned RC7PPS4 :1;
        unsigned RC7PPS5 :1;
    };
} RC7PPSbits_t;
extern volatile RC7PPSbits_t RC7PPSbits __attribute__((address(0xF27)));
// bitfield macros
# 32675 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ANSELA

extern volatile unsigned char ANSELA __attribute__((address(0xF38)));

__asm("ANSELA equ 0F38h");

// bitfield definitions
typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned ANSA3 :1;
        unsigned ANSA4 :1;
        unsigned ANSA5 :1;
        unsigned ANSA6 :1;
        unsigned ANSA7 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0xF38)));
// bitfield macros
# 32737 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WPUA

extern volatile unsigned char WPUA __attribute__((address(0xF39)));

__asm("WPUA equ 0F39h");

// bitfield definitions
typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
        unsigned WPUA6 :1;
        unsigned WPUA7 :1;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0xF39)));
// bitfield macros
# 32799 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ODCONA

extern volatile unsigned char ODCONA __attribute__((address(0xF3A)));

__asm("ODCONA equ 0F3Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned ODCA0 :1;
        unsigned ODCA1 :1;
        unsigned ODCA2 :1;
        unsigned ODCA3 :1;
        unsigned ODCA4 :1;
        unsigned ODCA5 :1;
        unsigned ODCA6 :1;
        unsigned ODCA7 :1;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0xF3A)));
// bitfield macros
# 32861 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SLRCONA

extern volatile unsigned char SLRCONA __attribute__((address(0xF3B)));

__asm("SLRCONA equ 0F3Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned SLRA0 :1;
        unsigned SLRA1 :1;
        unsigned SLRA2 :1;
        unsigned SLRA3 :1;
        unsigned SLRA4 :1;
        unsigned SLRA5 :1;
        unsigned SLRA6 :1;
        unsigned SLRA7 :1;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0xF3B)));
// bitfield macros
# 32923 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: INLVLA

extern volatile unsigned char INLVLA __attribute__((address(0xF3C)));

__asm("INLVLA equ 0F3Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned INLVLA0 :1;
        unsigned INLVLA1 :1;
        unsigned INLVLA2 :1;
        unsigned INLVLA3 :1;
        unsigned INLVLA4 :1;
        unsigned INLVLA5 :1;
        unsigned INLVLA6 :1;
        unsigned INLVLA7 :1;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0xF3C)));
// bitfield macros
# 32985 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCAP

extern volatile unsigned char IOCAP __attribute__((address(0xF3D)));

__asm("IOCAP equ 0F3Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
        unsigned IOCAP6 :1;
        unsigned IOCAP7 :1;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0xF3D)));
// bitfield macros
# 33047 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCAN

extern volatile unsigned char IOCAN __attribute__((address(0xF3E)));

__asm("IOCAN equ 0F3Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
        unsigned IOCAN6 :1;
        unsigned IOCAN7 :1;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0xF3E)));
// bitfield macros
# 33109 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCAF

extern volatile unsigned char IOCAF __attribute__((address(0xF3F)));

__asm("IOCAF equ 0F3Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
        unsigned IOCAF6 :1;
        unsigned IOCAF7 :1;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0xF3F)));
// bitfield macros
# 33171 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDNA

extern volatile unsigned char CCDNA __attribute__((address(0xF40)));

__asm("CCDNA equ 0F40h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDNA0 :1;
        unsigned CCDNA1 :1;
        unsigned CCDNA2 :1;
        unsigned CCDNA3 :1;
        unsigned CCDNA4 :1;
        unsigned CCDNA5 :1;
        unsigned CCDNA6 :1;
        unsigned CCDNA7 :1;
    };
} CCDNAbits_t;
extern volatile CCDNAbits_t CCDNAbits __attribute__((address(0xF40)));
// bitfield macros
# 33233 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDPA

extern volatile unsigned char CCDPA __attribute__((address(0xF41)));

__asm("CCDPA equ 0F41h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDPA0 :1;
        unsigned CCDPA1 :1;
        unsigned CCDPA2 :1;
        unsigned CCDPA3 :1;
        unsigned CCDPA4 :1;
        unsigned CCDPA5 :1;
        unsigned CCDPA6 :1;
        unsigned CCDPA7 :1;
    };
} CCDPAbits_t;
extern volatile CCDPAbits_t CCDPAbits __attribute__((address(0xF41)));
// bitfield macros
# 33295 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ANSELB

extern volatile unsigned char ANSELB __attribute__((address(0xF43)));

__asm("ANSELB equ 0F43h");

// bitfield definitions
typedef union {
    struct {
        unsigned ANSB0 :1;
        unsigned ANSB1 :1;
        unsigned ANSB2 :1;
        unsigned ANSB3 :1;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
        unsigned ANSB6 :1;
        unsigned ANSB7 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0xF43)));
// bitfield macros
# 33357 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WPUB

extern volatile unsigned char WPUB __attribute__((address(0xF44)));

__asm("WPUB equ 0F44h");

// bitfield definitions
typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0xF44)));
// bitfield macros
# 33419 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ODCONB

extern volatile unsigned char ODCONB __attribute__((address(0xF45)));

__asm("ODCONB equ 0F45h");

// bitfield definitions
typedef union {
    struct {
        unsigned ODCB0 :1;
        unsigned ODCB1 :1;
        unsigned ODCB2 :1;
        unsigned ODCB3 :1;
        unsigned ODCB4 :1;
        unsigned ODCB5 :1;
        unsigned ODCB6 :1;
        unsigned ODCB7 :1;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0xF45)));
// bitfield macros
# 33481 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SLRCONB

extern volatile unsigned char SLRCONB __attribute__((address(0xF46)));

__asm("SLRCONB equ 0F46h");

// bitfield definitions
typedef union {
    struct {
        unsigned SLRB0 :1;
        unsigned SLRB1 :1;
        unsigned SLRB2 :1;
        unsigned SLRB3 :1;
        unsigned SLRB4 :1;
        unsigned SLRB5 :1;
        unsigned SLRB6 :1;
        unsigned SLRB7 :1;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0xF46)));
// bitfield macros
# 33543 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: INLVLB

extern volatile unsigned char INLVLB __attribute__((address(0xF47)));

__asm("INLVLB equ 0F47h");

// bitfield definitions
typedef union {
    struct {
        unsigned INLVLB0 :1;
        unsigned INLVLB1 :1;
        unsigned INLVLB2 :1;
        unsigned INLVLB3 :1;
        unsigned INLVLB4 :1;
        unsigned INLVLB5 :1;
        unsigned INLVLB6 :1;
        unsigned INLVLB7 :1;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0xF47)));
// bitfield macros
# 33605 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCBP

extern volatile unsigned char IOCBP __attribute__((address(0xF48)));

__asm("IOCBP equ 0F48h");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCBP0 :1;
        unsigned IOCBP1 :1;
        unsigned IOCBP2 :1;
        unsigned IOCBP3 :1;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0xF48)));
// bitfield macros
# 33667 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCBN

extern volatile unsigned char IOCBN __attribute__((address(0xF49)));

__asm("IOCBN equ 0F49h");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCBN0 :1;
        unsigned IOCBN1 :1;
        unsigned IOCBN2 :1;
        unsigned IOCBN3 :1;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0xF49)));
// bitfield macros
# 33729 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCBF

extern volatile unsigned char IOCBF __attribute__((address(0xF4A)));

__asm("IOCBF equ 0F4Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCBF0 :1;
        unsigned IOCBF1 :1;
        unsigned IOCBF2 :1;
        unsigned IOCBF3 :1;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0xF4A)));
// bitfield macros
# 33791 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDNB

extern volatile unsigned char CCDNB __attribute__((address(0xF4B)));

__asm("CCDNB equ 0F4Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDNB0 :1;
        unsigned CCDNB1 :1;
        unsigned CCDNB2 :1;
        unsigned CCDNB3 :1;
        unsigned CCDNB4 :1;
        unsigned CCDNB5 :1;
        unsigned CCDNB6 :1;
        unsigned CCDNB7 :1;
    };
} CCDNBbits_t;
extern volatile CCDNBbits_t CCDNBbits __attribute__((address(0xF4B)));
// bitfield macros
# 33853 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDPB

extern volatile unsigned char CCDPB __attribute__((address(0xF4C)));

__asm("CCDPB equ 0F4Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDPB0 :1;
        unsigned CCDPB1 :1;
        unsigned CCDPB2 :1;
        unsigned CCDPB3 :1;
        unsigned CCDPB4 :1;
        unsigned CCDPB5 :1;
        unsigned CCDPB6 :1;
        unsigned CCDPB7 :1;
    };
} CCDPBbits_t;
extern volatile CCDPBbits_t CCDPBbits __attribute__((address(0xF4C)));
// bitfield macros
# 33915 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ANSELC

extern volatile unsigned char ANSELC __attribute__((address(0xF4E)));

__asm("ANSELC equ 0F4Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned ANSC0 :1;
        unsigned ANSC1 :1;
        unsigned ANSC2 :1;
        unsigned ANSC3 :1;
        unsigned ANSC4 :1;
        unsigned ANSC5 :1;
        unsigned ANSC6 :1;
        unsigned ANSC7 :1;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0xF4E)));
// bitfield macros
# 33977 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WPUC

extern volatile unsigned char WPUC __attribute__((address(0xF4F)));

__asm("WPUC equ 0F4Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned WPUC0 :1;
        unsigned WPUC1 :1;
        unsigned WPUC2 :1;
        unsigned WPUC3 :1;
        unsigned WPUC4 :1;
        unsigned WPUC5 :1;
        unsigned WPUC6 :1;
        unsigned WPUC7 :1;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0xF4F)));
// bitfield macros
# 34039 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: ODCONC

extern volatile unsigned char ODCONC __attribute__((address(0xF50)));

__asm("ODCONC equ 0F50h");

// bitfield definitions
typedef union {
    struct {
        unsigned ODCC0 :1;
        unsigned ODCC1 :1;
        unsigned ODCC2 :1;
        unsigned ODCC3 :1;
        unsigned ODCC4 :1;
        unsigned ODCC5 :1;
        unsigned ODCC6 :1;
        unsigned ODCC7 :1;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0xF50)));
// bitfield macros
# 34101 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: SLRCONC

extern volatile unsigned char SLRCONC __attribute__((address(0xF51)));

__asm("SLRCONC equ 0F51h");

// bitfield definitions
typedef union {
    struct {
        unsigned SLRC0 :1;
        unsigned SLRC1 :1;
        unsigned SLRC2 :1;
        unsigned SLRC3 :1;
        unsigned SLRC4 :1;
        unsigned SLRC5 :1;
        unsigned SLRC6 :1;
        unsigned SLRC7 :1;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0xF51)));
// bitfield macros
# 34163 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: INLVLC

extern volatile unsigned char INLVLC __attribute__((address(0xF52)));

__asm("INLVLC equ 0F52h");

// bitfield definitions
typedef union {
    struct {
        unsigned INLVLC0 :1;
        unsigned INLVLC1 :1;
        unsigned INLVLC2 :1;
        unsigned INLVLC3 :1;
        unsigned INLVLC4 :1;
        unsigned INLVLC5 :1;
        unsigned INLVLC6 :1;
        unsigned INLVLC7 :1;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0xF52)));
// bitfield macros
# 34225 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCCP

extern volatile unsigned char IOCCP __attribute__((address(0xF53)));

__asm("IOCCP equ 0F53h");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCCP0 :1;
        unsigned IOCCP1 :1;
        unsigned IOCCP2 :1;
        unsigned IOCCP3 :1;
        unsigned IOCCP4 :1;
        unsigned IOCCP5 :1;
        unsigned IOCCP6 :1;
        unsigned IOCCP7 :1;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0xF53)));
// bitfield macros
# 34287 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCCN

extern volatile unsigned char IOCCN __attribute__((address(0xF54)));

__asm("IOCCN equ 0F54h");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCCN0 :1;
        unsigned IOCCN1 :1;
        unsigned IOCCN2 :1;
        unsigned IOCCN3 :1;
        unsigned IOCCN4 :1;
        unsigned IOCCN5 :1;
        unsigned IOCCN6 :1;
        unsigned IOCCN7 :1;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0xF54)));
// bitfield macros
# 34349 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: IOCCF

extern volatile unsigned char IOCCF __attribute__((address(0xF55)));

__asm("IOCCF equ 0F55h");

// bitfield definitions
typedef union {
    struct {
        unsigned IOCCF0 :1;
        unsigned IOCCF1 :1;
        unsigned IOCCF2 :1;
        unsigned IOCCF3 :1;
        unsigned IOCCF4 :1;
        unsigned IOCCF5 :1;
        unsigned IOCCF6 :1;
        unsigned IOCCF7 :1;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0xF55)));
// bitfield macros
# 34411 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDNC

extern volatile unsigned char CCDNC __attribute__((address(0xF56)));

__asm("CCDNC equ 0F56h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDNC0 :1;
        unsigned CCDNC1 :1;
        unsigned CCDNC2 :1;
        unsigned CCDNC3 :1;
        unsigned CCDNC4 :1;
        unsigned CCDNC5 :1;
        unsigned CCDNC6 :1;
        unsigned CCDNC7 :1;
    };
} CCDNCbits_t;
extern volatile CCDNCbits_t CCDNCbits __attribute__((address(0xF56)));
// bitfield macros
# 34473 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: CCDPC

extern volatile unsigned char CCDPC __attribute__((address(0xF57)));

__asm("CCDPC equ 0F57h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCDPC0 :1;
        unsigned CCDPC1 :1;
        unsigned CCDPC2 :1;
        unsigned CCDPC3 :1;
        unsigned CCDPC4 :1;
        unsigned CCDPC5 :1;
        unsigned CCDPC6 :1;
        unsigned CCDPC7 :1;
    };
} CCDPCbits_t;
extern volatile CCDPCbits_t CCDPCbits __attribute__((address(0xF57)));
// bitfield macros
# 34535 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WPUE

extern volatile unsigned char WPUE __attribute__((address(0xF65)));

__asm("WPUE equ 0F65h");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned WPUE3 :1;
    };
} WPUEbits_t;
extern volatile WPUEbits_t WPUEbits __attribute__((address(0xF65)));
// bitfield macros






// Register: INLVLE

extern volatile unsigned char INLVLE __attribute__((address(0xF68)));

__asm("INLVLE equ 0F68h");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned INLVLE3 :1;
    };
} INLVLEbits_t;
extern volatile INLVLEbits_t INLVLEbits __attribute__((address(0xF68)));
// bitfield macros






// Register: IOCEP

extern volatile unsigned char IOCEP __attribute__((address(0xF69)));

__asm("IOCEP equ 0F69h");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned IOCEP3 :1;
    };
} IOCEPbits_t;
extern volatile IOCEPbits_t IOCEPbits __attribute__((address(0xF69)));
// bitfield macros






// Register: IOCEN

extern volatile unsigned char IOCEN __attribute__((address(0xF6A)));

__asm("IOCEN equ 0F6Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned IOCEN3 :1;
    };
} IOCENbits_t;
extern volatile IOCENbits_t IOCENbits __attribute__((address(0xF6A)));
// bitfield macros






// Register: IOCEF

extern volatile unsigned char IOCEF __attribute__((address(0xF6B)));

__asm("IOCEF equ 0F6Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned :3;
        unsigned IOCEF3 :1;
    };
} IOCEFbits_t;
extern volatile IOCEFbits_t IOCEFbits __attribute__((address(0xF6B)));
// bitfield macros






// Register: STATUS_SHAD

extern volatile unsigned char STATUS_SHAD __attribute__((address(0xFE4)));

__asm("STATUS_SHAD equ 0FE4h");

// bitfield definitions
typedef union {
    struct {
        unsigned C_SHAD :1;
        unsigned DC_SHAD :1;
        unsigned Z_SHAD :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0xFE4)));
// bitfield macros
# 34672 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// Register: WREG_SHAD

extern volatile unsigned char WREG_SHAD __attribute__((address(0xFE5)));

__asm("WREG_SHAD equ 0FE5h");

// bitfield definitions
typedef union {
    struct {
        unsigned WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0xFE5)));
// bitfield macros






// Register: BSR_SHAD

extern volatile unsigned char BSR_SHAD __attribute__((address(0xFE6)));

__asm("BSR_SHAD equ 0FE6h");

// bitfield definitions
typedef union {
    struct {
        unsigned BSR_SHAD :5;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0xFE6)));
// bitfield macros






// Register: PCLATH_SHAD

extern volatile unsigned char PCLATH_SHAD __attribute__((address(0xFE7)));

__asm("PCLATH_SHAD equ 0FE7h");

// bitfield definitions
typedef union {
    struct {
        unsigned PCLATH_SHAD :7;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0xFE7)));
// bitfield macros






// Register: FSR0L_SHAD

extern volatile unsigned char FSR0L_SHAD __attribute__((address(0xFE8)));

__asm("FSR0L_SHAD equ 0FE8h");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0xFE8)));
// bitfield macros






// Register: FSR0H_SHAD

extern volatile unsigned char FSR0H_SHAD __attribute__((address(0xFE9)));

__asm("FSR0H_SHAD equ 0FE9h");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0xFE9)));
// bitfield macros






// Register: FSR1L_SHAD

extern volatile unsigned char FSR1L_SHAD __attribute__((address(0xFEA)));

__asm("FSR1L_SHAD equ 0FEAh");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0xFEA)));
// bitfield macros






// Register: FSR1H_SHAD

extern volatile unsigned char FSR1H_SHAD __attribute__((address(0xFEB)));

__asm("FSR1H_SHAD equ 0FEBh");

// bitfield definitions
typedef union {
    struct {
        unsigned FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0xFEB)));
// bitfield macros






// Register: STKPTR

extern volatile unsigned char STKPTR __attribute__((address(0xFED)));

__asm("STKPTR equ 0FEDh");

// bitfield definitions
typedef union {
    struct {
        unsigned STKPTR :5;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFED)));
// bitfield macros






// Register: TOSL

extern volatile unsigned char TOSL __attribute__((address(0xFEE)));

__asm("TOSL equ 0FEEh");

// bitfield definitions
typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFEE)));
// bitfield macros






// Register: TOSH

extern volatile unsigned char TOSH __attribute__((address(0xFEF)));

__asm("TOSH equ 0FEFh");

// bitfield definitions
typedef union {
    struct {
        unsigned TOSH :7;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFEF)));
// bitfield macros
# 34883 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include\\proc/pic16f18856.h" 3
// BAUD1CON<ABDEN>
extern volatile __bit ABDEN __attribute__((address(0x8F8))); // @ (0x11F * 8 + 0)

// BAUD1CON<ABDOVF>
extern volatile __bit ABDOVF __attribute__((address(0x8FF))); // @ (0x11F * 8 + 7)

// CRCACCL<ACC0>
extern volatile __bit ACC0 __attribute__((address(0x20C0))); // @ (0x418 * 8 + 0)

// CRCACCL<ACC1>
extern volatile __bit ACC1 __attribute__((address(0x20C1))); // @ (0x418 * 8 + 1)

// CRCACCH<ACC10>
extern volatile __bit ACC10 __attribute__((address(0x20CA))); // @ (0x419 * 8 + 2)

// CRCACCH<ACC11>
extern volatile __bit ACC11 __attribute__((address(0x20CB))); // @ (0x419 * 8 + 3)

// CRCACCH<ACC12>
extern volatile __bit ACC12 __attribute__((address(0x20CC))); // @ (0x419 * 8 + 4)

// CRCACCH<ACC13>
extern volatile __bit ACC13 __attribute__((address(0x20CD))); // @ (0x419 * 8 + 5)

// CRCACCH<ACC14>
extern volatile __bit ACC14 __attribute__((address(0x20CE))); // @ (0x419 * 8 + 6)

// CRCACCH<ACC15>
extern volatile __bit ACC15 __attribute__((address(0x20CF))); // @ (0x419 * 8 + 7)

// CRCACCL<ACC2>
extern volatile __bit ACC2 __attribute__((address(0x20C2))); // @ (0x418 * 8 + 2)

// CRCACCL<ACC3>
extern volatile __bit ACC3 __attribute__((address(0x20C3))); // @ (0x418 * 8 + 3)

// CRCACCL<ACC4>
extern volatile __bit ACC4 __attribute__((address(0x20C4))); // @ (0x418 * 8 + 4)

// CRCACCL<ACC5>
extern volatile __bit ACC5 __attribute__((address(0x20C5))); // @ (0x418 * 8 + 5)

// CRCACCL<ACC6>
extern volatile __bit ACC6 __attribute__((address(0x20C6))); // @ (0x418 * 8 + 6)

// CRCACCL<ACC7>
extern volatile __bit ACC7 __attribute__((address(0x20C7))); // @ (0x418 * 8 + 7)

// CRCACCH<ACC8>
extern volatile __bit ACC8 __attribute__((address(0x20C8))); // @ (0x419 * 8 + 0)

// CRCACCH<ACC9>
extern volatile __bit ACC9 __attribute__((address(0x20C9))); // @ (0x419 * 8 + 1)

// CRCCON0<ACCM>
extern volatile __bit ACCM __attribute__((address(0x20F4))); // @ (0x41E * 8 + 4)

// SSP1CON2<ACKDT1>
extern volatile __bit ACKDT1 __attribute__((address(0xC8D))); // @ (0x191 * 8 + 5)

// SSP2CON2<ACKDT2>
extern volatile __bit ACKDT2 __attribute__((address(0xCDD))); // @ (0x19B * 8 + 5)

// SSP1CON2<ACKEN1>
extern volatile __bit ACKEN1 __attribute__((address(0xC8C))); // @ (0x191 * 8 + 4)

// SSP2CON2<ACKEN2>
extern volatile __bit ACKEN2 __attribute__((address(0xCDC))); // @ (0x19B * 8 + 4)

// SSP1CON2<ACKSTAT1>
extern volatile __bit ACKSTAT1 __attribute__((address(0xC8E))); // @ (0x191 * 8 + 6)

// SSP2CON2<ACKSTAT2>
extern volatile __bit ACKSTAT2 __attribute__((address(0xCDE))); // @ (0x19B * 8 + 6)

// ADACCL<ADACC0>
extern volatile __bit ADACC0 __attribute__((address(0x480))); // @ (0x90 * 8 + 0)

// ADACCL<ADACC1>
extern volatile __bit ADACC1 __attribute__((address(0x481))); // @ (0x90 * 8 + 1)

// ADACCH<ADACC10>
extern volatile __bit ADACC10 __attribute__((address(0x48A))); // @ (0x91 * 8 + 2)

// ADACCH<ADACC11>
extern volatile __bit ADACC11 __attribute__((address(0x48B))); // @ (0x91 * 8 + 3)

// ADACCH<ADACC12>
extern volatile __bit ADACC12 __attribute__((address(0x48C))); // @ (0x91 * 8 + 4)

// ADACCH<ADACC13>
extern volatile __bit ADACC13 __attribute__((address(0x48D))); // @ (0x91 * 8 + 5)

// ADACCH<ADACC14>
extern volatile __bit ADACC14 __attribute__((address(0x48E))); // @ (0x91 * 8 + 6)

// ADACCH<ADACC15>
extern volatile __bit ADACC15 __attribute__((address(0x48F))); // @ (0x91 * 8 + 7)

// ADACCL<ADACC2>
extern volatile __bit ADACC2 __attribute__((address(0x482))); // @ (0x90 * 8 + 2)

// ADACCL<ADACC3>
extern volatile __bit ADACC3 __attribute__((address(0x483))); // @ (0x90 * 8 + 3)

// ADACCL<ADACC4>
extern volatile __bit ADACC4 __attribute__((address(0x484))); // @ (0x90 * 8 + 4)

// ADACCL<ADACC5>
extern volatile __bit ADACC5 __attribute__((address(0x485))); // @ (0x90 * 8 + 5)

// ADACCL<ADACC6>
extern volatile __bit ADACC6 __attribute__((address(0x486))); // @ (0x90 * 8 + 6)

// ADACCL<ADACC7>
extern volatile __bit ADACC7 __attribute__((address(0x487))); // @ (0x90 * 8 + 7)

// ADACCH<ADACC8>
extern volatile __bit ADACC8 __attribute__((address(0x488))); // @ (0x91 * 8 + 0)

// ADACCH<ADACC9>
extern volatile __bit ADACC9 __attribute__((address(0x489))); // @ (0x91 * 8 + 1)

// ADCON2<ADACLR>
extern volatile __bit ADACLR __attribute__((address(0x4AB))); // @ (0x95 * 8 + 3)

// ADACQ<ADACQ0>
extern volatile __bit ADACQ0 __attribute__((address(0x4E8))); // @ (0x9D * 8 + 0)

// ADACQ<ADACQ1>
extern volatile __bit ADACQ1 __attribute__((address(0x4E9))); // @ (0x9D * 8 + 1)

// ADACQ<ADACQ2>
extern volatile __bit ADACQ2 __attribute__((address(0x4EA))); // @ (0x9D * 8 + 2)

// ADACQ<ADACQ3>
extern volatile __bit ADACQ3 __attribute__((address(0x4EB))); // @ (0x9D * 8 + 3)

// ADACQ<ADACQ4>
extern volatile __bit ADACQ4 __attribute__((address(0x4EC))); // @ (0x9D * 8 + 4)

// ADACQ<ADACQ5>
extern volatile __bit ADACQ5 __attribute__((address(0x4ED))); // @ (0x9D * 8 + 5)

// ADACQ<ADACQ6>
extern volatile __bit ADACQ6 __attribute__((address(0x4EE))); // @ (0x9D * 8 + 6)

// ADACQ<ADACQ7>
extern volatile __bit ADACQ7 __attribute__((address(0x4EF))); // @ (0x9D * 8 + 7)

// ADACT<ADACT0>
extern volatile __bit ADACT0 __attribute__((address(0x4C8))); // @ (0x99 * 8 + 0)

// ADACT<ADACT1>
extern volatile __bit ADACT1 __attribute__((address(0x4C9))); // @ (0x99 * 8 + 1)

// ADACT<ADACT2>
extern volatile __bit ADACT2 __attribute__((address(0x4CA))); // @ (0x99 * 8 + 2)

// ADACT<ADACT3>
extern volatile __bit ADACT3 __attribute__((address(0x4CB))); // @ (0x99 * 8 + 3)

// ADACT<ADACT4>
extern volatile __bit ADACT4 __attribute__((address(0x4CC))); // @ (0x99 * 8 + 4)

// ADSTAT<ADAOV>
extern volatile __bit ADAOV __attribute__((address(0x4BF))); // @ (0x97 * 8 + 7)

// ADCACTPPS<ADCACTPPS0>
extern volatile __bit ADCACTPPS0 __attribute__((address(0x7618))); // @ (0xEC3 * 8 + 0)

// ADCACTPPS<ADCACTPPS1>
extern volatile __bit ADCACTPPS1 __attribute__((address(0x7619))); // @ (0xEC3 * 8 + 1)

// ADCACTPPS<ADCACTPPS2>
extern volatile __bit ADCACTPPS2 __attribute__((address(0x761A))); // @ (0xEC3 * 8 + 2)

// ADCACTPPS<ADCACTPPS3>
extern volatile __bit ADCACTPPS3 __attribute__((address(0x761B))); // @ (0xEC3 * 8 + 3)

// ADCACTPPS<ADCACTPPS4>
extern volatile __bit ADCACTPPS4 __attribute__((address(0x761C))); // @ (0xEC3 * 8 + 4)

// ADCON3<ADCALC0>
extern volatile __bit ADCALC0 __attribute__((address(0x4B4))); // @ (0x96 * 8 + 4)

// ADCON3<ADCALC1>
extern volatile __bit ADCALC1 __attribute__((address(0x4B5))); // @ (0x96 * 8 + 5)

// ADCON3<ADCALC2>
extern volatile __bit ADCALC2 __attribute__((address(0x4B6))); // @ (0x96 * 8 + 6)

// ADCAP<ADCAP0>
extern volatile __bit ADCAP0 __attribute__((address(0x4D8))); // @ (0x9B * 8 + 0)

// ADCAP<ADCAP1>
extern volatile __bit ADCAP1 __attribute__((address(0x4D9))); // @ (0x9B * 8 + 1)

// ADCAP<ADCAP2>
extern volatile __bit ADCAP2 __attribute__((address(0x4DA))); // @ (0x9B * 8 + 2)

// ADCAP<ADCAP3>
extern volatile __bit ADCAP3 __attribute__((address(0x4DB))); // @ (0x9B * 8 + 3)

// ADCAP<ADCAP4>
extern volatile __bit ADCAP4 __attribute__((address(0x4DC))); // @ (0x9B * 8 + 4)

// ADCLK<ADCCS0>
extern volatile __bit ADCCS0 __attribute__((address(0x4C0))); // @ (0x98 * 8 + 0)

// ADCLK<ADCCS1>
extern volatile __bit ADCCS1 __attribute__((address(0x4C1))); // @ (0x98 * 8 + 1)

// ADCLK<ADCCS2>
extern volatile __bit ADCCS2 __attribute__((address(0x4C2))); // @ (0x98 * 8 + 2)

// ADCLK<ADCCS3>
extern volatile __bit ADCCS3 __attribute__((address(0x4C3))); // @ (0x98 * 8 + 3)

// ADCLK<ADCCS4>
extern volatile __bit ADCCS4 __attribute__((address(0x4C4))); // @ (0x98 * 8 + 4)

// ADCLK<ADCCS5>
extern volatile __bit ADCCS5 __attribute__((address(0x4C5))); // @ (0x98 * 8 + 5)

// PMD2<ADCMD>
extern volatile __bit ADCMD __attribute__((address(0x3CC5))); // @ (0x798 * 8 + 5)

// ADCNT<ADCNT0>
extern volatile __bit ADCNT0 __attribute__((address(0x860))); // @ (0x10C * 8 + 0)

// ADCNT<ADCNT1>
extern volatile __bit ADCNT1 __attribute__((address(0x861))); // @ (0x10C * 8 + 1)

// ADCNT<ADCNT2>
extern volatile __bit ADCNT2 __attribute__((address(0x862))); // @ (0x10C * 8 + 2)

// ADCNT<ADCNT3>
extern volatile __bit ADCNT3 __attribute__((address(0x863))); // @ (0x10C * 8 + 3)

// ADCNT<ADCNT4>
extern volatile __bit ADCNT4 __attribute__((address(0x864))); // @ (0x10C * 8 + 4)

// ADCNT<ADCNT5>
extern volatile __bit ADCNT5 __attribute__((address(0x865))); // @ (0x10C * 8 + 5)

// ADCNT<ADCNT6>
extern volatile __bit ADCNT6 __attribute__((address(0x866))); // @ (0x10C * 8 + 6)

// ADCNT<ADCNT7>
extern volatile __bit ADCNT7 __attribute__((address(0x867))); // @ (0x10C * 8 + 7)

// ADCON0<ADCONT>
extern volatile __bit ADCONT __attribute__((address(0x49E))); // @ (0x93 * 8 + 6)

// ADCON2<ADCRS0>
extern volatile __bit ADCRS0 __attribute__((address(0x4AC))); // @ (0x95 * 8 + 4)

// ADCON2<ADCRS1>
extern volatile __bit ADCRS1 __attribute__((address(0x4AD))); // @ (0x95 * 8 + 5)

// ADCON2<ADCRS2>
extern volatile __bit ADCRS2 __attribute__((address(0x4AE))); // @ (0x95 * 8 + 6)

// ADCON0<ADCS>
extern volatile __bit ADCS __attribute__((address(0x49C))); // @ (0x93 * 8 + 4)

// RC1STA<ADDEN>
extern volatile __bit ADDEN __attribute__((address(0x8EB))); // @ (0x11D * 8 + 3)

// ADCON1<ADDSEN>
extern volatile __bit ADDSEN __attribute__((address(0x4A0))); // @ (0x94 * 8 + 0)

// ADERRL<ADERR0>
extern volatile __bit ADERR0 __attribute__((address(0x8B0))); // @ (0x116 * 8 + 0)

// ADERRL<ADERR1>
extern volatile __bit ADERR1 __attribute__((address(0x8B1))); // @ (0x116 * 8 + 1)

// ADERRH<ADERR10>
extern volatile __bit ADERR10 __attribute__((address(0x8BA))); // @ (0x117 * 8 + 2)

// ADERRH<ADERR11>
extern volatile __bit ADERR11 __attribute__((address(0x8BB))); // @ (0x117 * 8 + 3)

// ADERRH<ADERR12>
extern volatile __bit ADERR12 __attribute__((address(0x8BC))); // @ (0x117 * 8 + 4)

// ADERRH<ADERR13>
extern volatile __bit ADERR13 __attribute__((address(0x8BD))); // @ (0x117 * 8 + 5)

// ADERRH<ADERR14>
extern volatile __bit ADERR14 __attribute__((address(0x8BE))); // @ (0x117 * 8 + 6)

// ADERRH<ADERR15>
extern volatile __bit ADERR15 __attribute__((address(0x8BF))); // @ (0x117 * 8 + 7)

// ADERRL<ADERR2>
extern volatile __bit ADERR2 __attribute__((address(0x8B2))); // @ (0x116 * 8 + 2)

// ADERRL<ADERR3>
extern volatile __bit ADERR3 __attribute__((address(0x8B3))); // @ (0x116 * 8 + 3)

// ADERRL<ADERR4>
extern volatile __bit ADERR4 __attribute__((address(0x8B4))); // @ (0x116 * 8 + 4)

// ADERRL<ADERR5>
extern volatile __bit ADERR5 __attribute__((address(0x8B5))); // @ (0x116 * 8 + 5)

// ADERRL<ADERR6>
extern volatile __bit ADERR6 __attribute__((address(0x8B6))); // @ (0x116 * 8 + 6)

// ADERRL<ADERR7>
extern volatile __bit ADERR7 __attribute__((address(0x8B7))); // @ (0x116 * 8 + 7)

// ADERRH<ADERR8>
extern volatile __bit ADERR8 __attribute__((address(0x8B8))); // @ (0x117 * 8 + 0)

// ADERRH<ADERR9>
extern volatile __bit ADERR9 __attribute__((address(0x8B9))); // @ (0x117 * 8 + 1)

// ADFLTRL<ADFLTR0>
extern volatile __bit ADFLTR0 __attribute__((address(0x8A0))); // @ (0x114 * 8 + 0)

// ADFLTRL<ADFLTR1>
extern volatile __bit ADFLTR1 __attribute__((address(0x8A1))); // @ (0x114 * 8 + 1)

// ADFLTRH<ADFLTR10>
extern volatile __bit ADFLTR10 __attribute__((address(0x8AA))); // @ (0x115 * 8 + 2)

// ADFLTRH<ADFLTR11>
extern volatile __bit ADFLTR11 __attribute__((address(0x8AB))); // @ (0x115 * 8 + 3)

// ADFLTRH<ADFLTR12>
extern volatile __bit ADFLTR12 __attribute__((address(0x8AC))); // @ (0x115 * 8 + 4)

// ADFLTRH<ADFLTR13>
extern volatile __bit ADFLTR13 __attribute__((address(0x8AD))); // @ (0x115 * 8 + 5)

// ADFLTRH<ADFLTR14>
extern volatile __bit ADFLTR14 __attribute__((address(0x8AE))); // @ (0x115 * 8 + 6)

// ADFLTRH<ADFLTR15>
extern volatile __bit ADFLTR15 __attribute__((address(0x8AF))); // @ (0x115 * 8 + 7)

// ADFLTRL<ADFLTR2>
extern volatile __bit ADFLTR2 __attribute__((address(0x8A2))); // @ (0x114 * 8 + 2)

// ADFLTRL<ADFLTR3>
extern volatile __bit ADFLTR3 __attribute__((address(0x8A3))); // @ (0x114 * 8 + 3)

// ADFLTRL<ADFLTR4>
extern volatile __bit ADFLTR4 __attribute__((address(0x8A4))); // @ (0x114 * 8 + 4)

// ADFLTRL<ADFLTR5>
extern volatile __bit ADFLTR5 __attribute__((address(0x8A5))); // @ (0x114 * 8 + 5)

// ADFLTRL<ADFLTR6>
extern volatile __bit ADFLTR6 __attribute__((address(0x8A6))); // @ (0x114 * 8 + 6)

// ADFLTRL<ADFLTR7>
extern volatile __bit ADFLTR7 __attribute__((address(0x8A7))); // @ (0x114 * 8 + 7)

// ADFLTRH<ADFLTR8>
extern volatile __bit ADFLTR8 __attribute__((address(0x8A8))); // @ (0x115 * 8 + 0)

// ADFLTRH<ADFLTR9>
extern volatile __bit ADFLTR9 __attribute__((address(0x8A9))); // @ (0x115 * 8 + 1)

// ADCON0<ADFM0>
extern volatile __bit ADFM0 __attribute__((address(0x49A))); // @ (0x93 * 8 + 2)

// ADCON0<ADFM1>
extern volatile __bit ADFM1 __attribute__((address(0x49B))); // @ (0x93 * 8 + 3)

// ADCON0<ADFRM0>
extern volatile __bit ADFRM0 __attribute__((address(0x49A))); // @ (0x93 * 8 + 2)

// ADCON0<ADFRM1>
extern volatile __bit ADFRM1 __attribute__((address(0x49B))); // @ (0x93 * 8 + 3)

// FVRCON<ADFVR0>
extern volatile __bit ADFVR0 __attribute__((address(0x4860))); // @ (0x90C * 8 + 0)

// FVRCON<ADFVR1>
extern volatile __bit ADFVR1 __attribute__((address(0x4861))); // @ (0x90C * 8 + 1)

// ADCON0<ADGO>
extern volatile __bit ADGO __attribute__((address(0x498))); // @ (0x93 * 8 + 0)

// ADCON1<ADGPOL>
extern volatile __bit ADGPOL __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// PIE1<ADIE>
extern volatile __bit ADIE __attribute__((address(0x38B8))); // @ (0x717 * 8 + 0)

// PIR1<ADIF>
extern volatile __bit ADIF __attribute__((address(0x3868))); // @ (0x70D * 8 + 0)

// ADCON1<ADIPEN>
extern volatile __bit ADIPEN __attribute__((address(0x4A6))); // @ (0x94 * 8 + 6)

// ADLTHL<ADLTH0>
extern volatile __bit ADLTH0 __attribute__((address(0x870))); // @ (0x10E * 8 + 0)

// ADLTHL<ADLTH1>
extern volatile __bit ADLTH1 __attribute__((address(0x871))); // @ (0x10E * 8 + 1)

// ADLTHH<ADLTH10>
extern volatile __bit ADLTH10 __attribute__((address(0x87A))); // @ (0x10F * 8 + 2)

// ADLTHH<ADLTH11>
extern volatile __bit ADLTH11 __attribute__((address(0x87B))); // @ (0x10F * 8 + 3)

// ADLTHH<ADLTH12>
extern volatile __bit ADLTH12 __attribute__((address(0x87C))); // @ (0x10F * 8 + 4)

// ADLTHH<ADLTH13>
extern volatile __bit ADLTH13 __attribute__((address(0x87D))); // @ (0x10F * 8 + 5)

// ADLTHH<ADLTH14>
extern volatile __bit ADLTH14 __attribute__((address(0x87E))); // @ (0x10F * 8 + 6)

// ADLTHH<ADLTH15>
extern volatile __bit ADLTH15 __attribute__((address(0x87F))); // @ (0x10F * 8 + 7)

// ADLTHL<ADLTH2>
extern volatile __bit ADLTH2 __attribute__((address(0x872))); // @ (0x10E * 8 + 2)

// ADLTHL<ADLTH3>
extern volatile __bit ADLTH3 __attribute__((address(0x873))); // @ (0x10E * 8 + 3)

// ADLTHL<ADLTH4>
extern volatile __bit ADLTH4 __attribute__((address(0x874))); // @ (0x10E * 8 + 4)

// ADLTHL<ADLTH5>
extern volatile __bit ADLTH5 __attribute__((address(0x875))); // @ (0x10E * 8 + 5)

// ADLTHL<ADLTH6>
extern volatile __bit ADLTH6 __attribute__((address(0x876))); // @ (0x10E * 8 + 6)

// ADLTHL<ADLTH7>
extern volatile __bit ADLTH7 __attribute__((address(0x877))); // @ (0x10E * 8 + 7)

// ADLTHH<ADLTH8>
extern volatile __bit ADLTH8 __attribute__((address(0x878))); // @ (0x10F * 8 + 0)

// ADLTHH<ADLTH9>
extern volatile __bit ADLTH9 __attribute__((address(0x879))); // @ (0x10F * 8 + 1)

// ADSTAT<ADLTHR>
extern volatile __bit ADLTHR __attribute__((address(0x4BD))); // @ (0x97 * 8 + 5)

// ADSTAT<ADMACT>
extern volatile __bit ADMACT __attribute__((address(0x4BB))); // @ (0x97 * 8 + 3)

// ADSTAT<ADMATH>
extern volatile __bit ADMATH __attribute__((address(0x4BC))); // @ (0x97 * 8 + 4)

// ADCON2<ADMD0>
extern volatile __bit ADMD0 __attribute__((address(0x4A8))); // @ (0x95 * 8 + 0)

// ADCON2<ADMD1>
extern volatile __bit ADMD1 __attribute__((address(0x4A9))); // @ (0x95 * 8 + 1)

// ADCON2<ADMD2>
extern volatile __bit ADMD2 __attribute__((address(0x4AA))); // @ (0x95 * 8 + 2)

// SSP1CON2<ADMSK11>
extern volatile __bit ADMSK11 __attribute__((address(0xC89))); // @ (0x191 * 8 + 1)

// SSP2CON2<ADMSK12>
extern volatile __bit ADMSK12 __attribute__((address(0xCD9))); // @ (0x19B * 8 + 1)

// SSP1CON2<ADMSK21>
extern volatile __bit ADMSK21 __attribute__((address(0xC8A))); // @ (0x191 * 8 + 2)

// SSP2CON2<ADMSK22>
extern volatile __bit ADMSK22 __attribute__((address(0xCDA))); // @ (0x19B * 8 + 2)

// SSP1CON2<ADMSK31>
extern volatile __bit ADMSK31 __attribute__((address(0xC8B))); // @ (0x191 * 8 + 3)

// SSP2CON2<ADMSK32>
extern volatile __bit ADMSK32 __attribute__((address(0xCDB))); // @ (0x19B * 8 + 3)

// SSP1CON2<ADMSK41>
extern volatile __bit ADMSK41 __attribute__((address(0xC8C))); // @ (0x191 * 8 + 4)

// SSP2CON2<ADMSK42>
extern volatile __bit ADMSK42 __attribute__((address(0xCDC))); // @ (0x19B * 8 + 4)

// SSP1CON2<ADMSK51>
extern volatile __bit ADMSK51 __attribute__((address(0xC8D))); // @ (0x191 * 8 + 5)

// SSP2CON2<ADMSK52>
extern volatile __bit ADMSK52 __attribute__((address(0xCDD))); // @ (0x19B * 8 + 5)

// ADREF<ADNREF>
extern volatile __bit ADNREF __attribute__((address(0x4D4))); // @ (0x9A * 8 + 4)

// OSCEN<ADOEN>
extern volatile __bit ADOEN __attribute__((address(0x448A))); // @ (0x891 * 8 + 2)

// ADCON0<ADON>
extern volatile __bit ADON __attribute__((address(0x49F))); // @ (0x93 * 8 + 7)

// OSCSTAT<ADOR>
extern volatile __bit ADOR __attribute__((address(0x4482))); // @ (0x890 * 8 + 2)

// ADPCH<ADPCH0>
extern volatile __bit ADPCH0 __attribute__((address(0x4F0))); // @ (0x9E * 8 + 0)

// ADPCH<ADPCH1>
extern volatile __bit ADPCH1 __attribute__((address(0x4F1))); // @ (0x9E * 8 + 1)

// ADPCH<ADPCH2>
extern volatile __bit ADPCH2 __attribute__((address(0x4F2))); // @ (0x9E * 8 + 2)

// ADPCH<ADPCH3>
extern volatile __bit ADPCH3 __attribute__((address(0x4F3))); // @ (0x9E * 8 + 3)

// ADPCH<ADPCH4>
extern volatile __bit ADPCH4 __attribute__((address(0x4F4))); // @ (0x9E * 8 + 4)

// ADPCH<ADPCH5>
extern volatile __bit ADPCH5 __attribute__((address(0x4F5))); // @ (0x9E * 8 + 5)

// ADCON1<ADPPOL>
extern volatile __bit ADPPOL __attribute__((address(0x4A7))); // @ (0x94 * 8 + 7)

// ADPRE<ADPRE0>
extern volatile __bit ADPRE0 __attribute__((address(0x4E0))); // @ (0x9C * 8 + 0)

// ADPRE<ADPRE1>
extern volatile __bit ADPRE1 __attribute__((address(0x4E1))); // @ (0x9C * 8 + 1)

// ADPRE<ADPRE2>
extern volatile __bit ADPRE2 __attribute__((address(0x4E2))); // @ (0x9C * 8 + 2)

// ADPRE<ADPRE3>
extern volatile __bit ADPRE3 __attribute__((address(0x4E3))); // @ (0x9C * 8 + 3)

// ADPRE<ADPRE4>
extern volatile __bit ADPRE4 __attribute__((address(0x4E4))); // @ (0x9C * 8 + 4)

// ADPRE<ADPRE5>
extern volatile __bit ADPRE5 __attribute__((address(0x4E5))); // @ (0x9C * 8 + 5)

// ADPRE<ADPRE6>
extern volatile __bit ADPRE6 __attribute__((address(0x4E6))); // @ (0x9C * 8 + 6)

// ADPRE<ADPRE7>
extern volatile __bit ADPRE7 __attribute__((address(0x4E7))); // @ (0x9C * 8 + 7)

// ADREF<ADPREF0>
extern volatile __bit ADPREF0 __attribute__((address(0x4D0))); // @ (0x9A * 8 + 0)

// ADREF<ADPREF1>
extern volatile __bit ADPREF1 __attribute__((address(0x4D1))); // @ (0x9A * 8 + 1)

// ADPREVL<ADPREV0>
extern volatile __bit ADPREV0 __attribute__((address(0x470))); // @ (0x8E * 8 + 0)

// ADPREVL<ADPREV1>
extern volatile __bit ADPREV1 __attribute__((address(0x471))); // @ (0x8E * 8 + 1)

// ADPREVH<ADPREV10>
extern volatile __bit ADPREV10 __attribute__((address(0x47A))); // @ (0x8F * 8 + 2)

// ADPREVH<ADPREV11>
extern volatile __bit ADPREV11 __attribute__((address(0x47B))); // @ (0x8F * 8 + 3)

// ADPREVH<ADPREV12>
extern volatile __bit ADPREV12 __attribute__((address(0x47C))); // @ (0x8F * 8 + 4)

// ADPREVH<ADPREV13>
extern volatile __bit ADPREV13 __attribute__((address(0x47D))); // @ (0x8F * 8 + 5)

// ADPREVH<ADPREV14>
extern volatile __bit ADPREV14 __attribute__((address(0x47E))); // @ (0x8F * 8 + 6)

// ADPREVH<ADPREV15>
extern volatile __bit ADPREV15 __attribute__((address(0x47F))); // @ (0x8F * 8 + 7)

// ADPREVL<ADPREV2>
extern volatile __bit ADPREV2 __attribute__((address(0x472))); // @ (0x8E * 8 + 2)

// ADPREVL<ADPREV3>
extern volatile __bit ADPREV3 __attribute__((address(0x473))); // @ (0x8E * 8 + 3)

// ADPREVL<ADPREV4>
extern volatile __bit ADPREV4 __attribute__((address(0x474))); // @ (0x8E * 8 + 4)

// ADPREVL<ADPREV5>
extern volatile __bit ADPREV5 __attribute__((address(0x475))); // @ (0x8E * 8 + 5)

// ADPREVL<ADPREV6>
extern volatile __bit ADPREV6 __attribute__((address(0x476))); // @ (0x8E * 8 + 6)

// ADPREVL<ADPREV7>
extern volatile __bit ADPREV7 __attribute__((address(0x477))); // @ (0x8E * 8 + 7)

// ADPREVH<ADPREV8>
extern volatile __bit ADPREV8 __attribute__((address(0x478))); // @ (0x8F * 8 + 0)

// ADPREVH<ADPREV9>
extern volatile __bit ADPREV9 __attribute__((address(0x479))); // @ (0x8F * 8 + 1)

// ADCON2<ADPSIS>
extern volatile __bit ADPSIS __attribute__((address(0x4AF))); // @ (0x95 * 8 + 7)

// ADRPT<ADRPT0>
extern volatile __bit ADRPT0 __attribute__((address(0x868))); // @ (0x10D * 8 + 0)

// ADRPT<ADRPT1>
extern volatile __bit ADRPT1 __attribute__((address(0x869))); // @ (0x10D * 8 + 1)

// ADRPT<ADRPT2>
extern volatile __bit ADRPT2 __attribute__((address(0x86A))); // @ (0x10D * 8 + 2)

// ADRPT<ADRPT3>
extern volatile __bit ADRPT3 __attribute__((address(0x86B))); // @ (0x10D * 8 + 3)

// ADRPT<ADRPT4>
extern volatile __bit ADRPT4 __attribute__((address(0x86C))); // @ (0x10D * 8 + 4)

// ADRPT<ADRPT5>
extern volatile __bit ADRPT5 __attribute__((address(0x86D))); // @ (0x10D * 8 + 5)

// ADRPT<ADRPT6>
extern volatile __bit ADRPT6 __attribute__((address(0x86E))); // @ (0x10D * 8 + 6)

// ADRPT<ADRPT7>
extern volatile __bit ADRPT7 __attribute__((address(0x86F))); // @ (0x10D * 8 + 7)

// ADCON3<ADSOI>
extern volatile __bit ADSOI __attribute__((address(0x4B3))); // @ (0x96 * 8 + 3)

// ADSTAT<ADSTAT0>
extern volatile __bit ADSTAT0 __attribute__((address(0x4B8))); // @ (0x97 * 8 + 0)

// ADSTAT<ADSTAT1>
extern volatile __bit ADSTAT1 __attribute__((address(0x4B9))); // @ (0x97 * 8 + 1)

// ADSTAT<ADSTAT2>
extern volatile __bit ADSTAT2 __attribute__((address(0x4BA))); // @ (0x97 * 8 + 2)

// ADSTPTL<ADSTPT0>
extern volatile __bit ADSTPT0 __attribute__((address(0x890))); // @ (0x112 * 8 + 0)

// ADSTPTL<ADSTPT1>
extern volatile __bit ADSTPT1 __attribute__((address(0x891))); // @ (0x112 * 8 + 1)

// ADSTPTH<ADSTPT10>
extern volatile __bit ADSTPT10 __attribute__((address(0x89A))); // @ (0x113 * 8 + 2)

// ADSTPTH<ADSTPT11>
extern volatile __bit ADSTPT11 __attribute__((address(0x89B))); // @ (0x113 * 8 + 3)

// ADSTPTH<ADSTPT12>
extern volatile __bit ADSTPT12 __attribute__((address(0x89C))); // @ (0x113 * 8 + 4)

// ADSTPTH<ADSTPT13>
extern volatile __bit ADSTPT13 __attribute__((address(0x89D))); // @ (0x113 * 8 + 5)

// ADSTPTH<ADSTPT14>
extern volatile __bit ADSTPT14 __attribute__((address(0x89E))); // @ (0x113 * 8 + 6)

// ADSTPTH<ADSTPT15>
extern volatile __bit ADSTPT15 __attribute__((address(0x89F))); // @ (0x113 * 8 + 7)

// ADSTPTL<ADSTPT2>
extern volatile __bit ADSTPT2 __attribute__((address(0x892))); // @ (0x112 * 8 + 2)

// ADSTPTL<ADSTPT3>
extern volatile __bit ADSTPT3 __attribute__((address(0x893))); // @ (0x112 * 8 + 3)

// ADSTPTL<ADSTPT4>
extern volatile __bit ADSTPT4 __attribute__((address(0x894))); // @ (0x112 * 8 + 4)

// ADSTPTL<ADSTPT5>
extern volatile __bit ADSTPT5 __attribute__((address(0x895))); // @ (0x112 * 8 + 5)

// ADSTPTL<ADSTPT6>
extern volatile __bit ADSTPT6 __attribute__((address(0x896))); // @ (0x112 * 8 + 6)

// ADSTPTL<ADSTPT7>
extern volatile __bit ADSTPT7 __attribute__((address(0x897))); // @ (0x112 * 8 + 7)

// ADSTPTH<ADSTPT8>
extern volatile __bit ADSTPT8 __attribute__((address(0x898))); // @ (0x113 * 8 + 0)

// ADSTPTH<ADSTPT9>
extern volatile __bit ADSTPT9 __attribute__((address(0x899))); // @ (0x113 * 8 + 1)

// PIE1<ADTIE>
extern volatile __bit ADTIE __attribute__((address(0x38B9))); // @ (0x717 * 8 + 1)

// PIR1<ADTIF>
extern volatile __bit ADTIF __attribute__((address(0x3869))); // @ (0x70D * 8 + 1)

// ADCON3<ADTMD0>
extern volatile __bit ADTMD0 __attribute__((address(0x4B0))); // @ (0x96 * 8 + 0)

// ADCON3<ADTMD1>
extern volatile __bit ADTMD1 __attribute__((address(0x4B1))); // @ (0x96 * 8 + 1)

// ADCON3<ADTMD2>
extern volatile __bit ADTMD2 __attribute__((address(0x4B2))); // @ (0x96 * 8 + 2)

// ADUTHL<ADUTH0>
extern volatile __bit ADUTH0 __attribute__((address(0x880))); // @ (0x110 * 8 + 0)

// ADUTHL<ADUTH1>
extern volatile __bit ADUTH1 __attribute__((address(0x881))); // @ (0x110 * 8 + 1)

// ADUTHH<ADUTH10>
extern volatile __bit ADUTH10 __attribute__((address(0x88A))); // @ (0x111 * 8 + 2)

// ADUTHH<ADUTH11>
extern volatile __bit ADUTH11 __attribute__((address(0x88B))); // @ (0x111 * 8 + 3)

// ADUTHH<ADUTH12>
extern volatile __bit ADUTH12 __attribute__((address(0x88C))); // @ (0x111 * 8 + 4)

// ADUTHH<ADUTH13>
extern volatile __bit ADUTH13 __attribute__((address(0x88D))); // @ (0x111 * 8 + 5)

// ADUTHH<ADUTH14>
extern volatile __bit ADUTH14 __attribute__((address(0x88E))); // @ (0x111 * 8 + 6)

// ADUTHH<ADUTH15>
extern volatile __bit ADUTH15 __attribute__((address(0x88F))); // @ (0x111 * 8 + 7)

// ADUTHL<ADUTH2>
extern volatile __bit ADUTH2 __attribute__((address(0x882))); // @ (0x110 * 8 + 2)

// ADUTHL<ADUTH3>
extern volatile __bit ADUTH3 __attribute__((address(0x883))); // @ (0x110 * 8 + 3)

// ADUTHL<ADUTH4>
extern volatile __bit ADUTH4 __attribute__((address(0x884))); // @ (0x110 * 8 + 4)

// ADUTHL<ADUTH5>
extern volatile __bit ADUTH5 __attribute__((address(0x885))); // @ (0x110 * 8 + 5)

// ADUTHL<ADUTH6>
extern volatile __bit ADUTH6 __attribute__((address(0x886))); // @ (0x110 * 8 + 6)

// ADUTHL<ADUTH7>
extern volatile __bit ADUTH7 __attribute__((address(0x887))); // @ (0x110 * 8 + 7)

// ADUTHH<ADUTH8>
extern volatile __bit ADUTH8 __attribute__((address(0x888))); // @ (0x111 * 8 + 0)

// ADUTHH<ADUTH9>
extern volatile __bit ADUTH9 __attribute__((address(0x889))); // @ (0x111 * 8 + 1)

// ADSTAT<ADUTHR>
extern volatile __bit ADUTHR __attribute__((address(0x4BE))); // @ (0x97 * 8 + 6)

// ANSELA<ANSA0>
extern volatile __bit ANSA0 __attribute__((address(0x79C0))); // @ (0xF38 * 8 + 0)

// ANSELA<ANSA1>
extern volatile __bit ANSA1 __attribute__((address(0x79C1))); // @ (0xF38 * 8 + 1)

// ANSELA<ANSA2>
extern volatile __bit ANSA2 __attribute__((address(0x79C2))); // @ (0xF38 * 8 + 2)

// ANSELA<ANSA3>
extern volatile __bit ANSA3 __attribute__((address(0x79C3))); // @ (0xF38 * 8 + 3)

// ANSELA<ANSA4>
extern volatile __bit ANSA4 __attribute__((address(0x79C4))); // @ (0xF38 * 8 + 4)

// ANSELA<ANSA5>
extern volatile __bit ANSA5 __attribute__((address(0x79C5))); // @ (0xF38 * 8 + 5)

// ANSELA<ANSA6>
extern volatile __bit ANSA6 __attribute__((address(0x79C6))); // @ (0xF38 * 8 + 6)

// ANSELA<ANSA7>
extern volatile __bit ANSA7 __attribute__((address(0x79C7))); // @ (0xF38 * 8 + 7)

// ANSELB<ANSB0>
extern volatile __bit ANSB0 __attribute__((address(0x7A18))); // @ (0xF43 * 8 + 0)

// ANSELB<ANSB1>
extern volatile __bit ANSB1 __attribute__((address(0x7A19))); // @ (0xF43 * 8 + 1)

// ANSELB<ANSB2>
extern volatile __bit ANSB2 __attribute__((address(0x7A1A))); // @ (0xF43 * 8 + 2)

// ANSELB<ANSB3>
extern volatile __bit ANSB3 __attribute__((address(0x7A1B))); // @ (0xF43 * 8 + 3)

// ANSELB<ANSB4>
extern volatile __bit ANSB4 __attribute__((address(0x7A1C))); // @ (0xF43 * 8 + 4)

// ANSELB<ANSB5>
extern volatile __bit ANSB5 __attribute__((address(0x7A1D))); // @ (0xF43 * 8 + 5)

// ANSELB<ANSB6>
extern volatile __bit ANSB6 __attribute__((address(0x7A1E))); // @ (0xF43 * 8 + 6)

// ANSELB<ANSB7>
extern volatile __bit ANSB7 __attribute__((address(0x7A1F))); // @ (0xF43 * 8 + 7)

// ANSELC<ANSC0>
extern volatile __bit ANSC0 __attribute__((address(0x7A70))); // @ (0xF4E * 8 + 0)

// ANSELC<ANSC1>
extern volatile __bit ANSC1 __attribute__((address(0x7A71))); // @ (0xF4E * 8 + 1)

// ANSELC<ANSC2>
extern volatile __bit ANSC2 __attribute__((address(0x7A72))); // @ (0xF4E * 8 + 2)

// ANSELC<ANSC3>
extern volatile __bit ANSC3 __attribute__((address(0x7A73))); // @ (0xF4E * 8 + 3)

// ANSELC<ANSC4>
extern volatile __bit ANSC4 __attribute__((address(0x7A74))); // @ (0xF4E * 8 + 4)

// ANSELC<ANSC5>
extern volatile __bit ANSC5 __attribute__((address(0x7A75))); // @ (0xF4E * 8 + 5)

// ANSELC<ANSC6>
extern volatile __bit ANSC6 __attribute__((address(0x7A76))); // @ (0xF4E * 8 + 6)

// ANSELC<ANSC7>
extern volatile __bit ANSC7 __attribute__((address(0x7A77))); // @ (0xF4E * 8 + 7)

// PIE3<BCL1IE>
extern volatile __bit BCL1IE __attribute__((address(0x38C9))); // @ (0x719 * 8 + 1)

// PIR3<BCL1IF>
extern volatile __bit BCL1IF __attribute__((address(0x3879))); // @ (0x70F * 8 + 1)

// PIE3<BCL2IE>
extern volatile __bit BCL2IE __attribute__((address(0x38CB))); // @ (0x719 * 8 + 3)

// PIR3<BCL2IF>
extern volatile __bit BCL2IF __attribute__((address(0x387B))); // @ (0x70F * 8 + 3)

// SSP1STAT<BF1>
extern volatile __bit BF1 __attribute__((address(0xC78))); // @ (0x18F * 8 + 0)

// SSP2STAT<BF2>
extern volatile __bit BF2 __attribute__((address(0xCC8))); // @ (0x199 * 8 + 0)

// BORCON<BORRDY>
extern volatile __bit BORRDY __attribute__((address(0x4088))); // @ (0x811 * 8 + 0)

// BAUD1CON<BRG16>
extern volatile __bit BRG16 __attribute__((address(0x8FB))); // @ (0x11F * 8 + 3)

// TX1STA<BRGH>
extern volatile __bit BRGH __attribute__((address(0x8F2))); // @ (0x11E * 8 + 2)

// BSR<BSR0>
extern volatile __bit BSR0 __attribute__((address(0x40))); // @ (0x8 * 8 + 0)

// BSR<BSR1>
extern volatile __bit BSR1 __attribute__((address(0x41))); // @ (0x8 * 8 + 1)

// BSR<BSR2>
extern volatile __bit BSR2 __attribute__((address(0x42))); // @ (0x8 * 8 + 2)

// BSR<BSR3>
extern volatile __bit BSR3 __attribute__((address(0x43))); // @ (0x8 * 8 + 3)

// BSR<BSR4>
extern volatile __bit BSR4 __attribute__((address(0x44))); // @ (0x8 * 8 + 4)

// CM1CON0<C1HYS>
extern volatile __bit C1HYS __attribute__((address(0x4C81))); // @ (0x990 * 8 + 1)

// PIE2<C1IE>
extern volatile __bit C1IE __attribute__((address(0x38C0))); // @ (0x718 * 8 + 0)

// PIR2<C1IF>
extern volatile __bit C1IF __attribute__((address(0x3870))); // @ (0x70E * 8 + 0)

// CM1CON1<C1INTN>
extern volatile __bit C1INTN __attribute__((address(0x4C88))); // @ (0x991 * 8 + 0)

// CM1CON1<C1INTP>
extern volatile __bit C1INTP __attribute__((address(0x4C89))); // @ (0x991 * 8 + 1)

// CM1NSEL<C1NCH0>
extern volatile __bit C1NCH0 __attribute__((address(0x4C90))); // @ (0x992 * 8 + 0)

// CM1NSEL<C1NCH1>
extern volatile __bit C1NCH1 __attribute__((address(0x4C91))); // @ (0x992 * 8 + 1)

// CM1NSEL<C1NCH2>
extern volatile __bit C1NCH2 __attribute__((address(0x4C92))); // @ (0x992 * 8 + 2)

// CM1CON0<C1ON>
extern volatile __bit C1ON __attribute__((address(0x4C87))); // @ (0x990 * 8 + 7)

// CM1PSEL<C1PCH0>
extern volatile __bit C1PCH0 __attribute__((address(0x4C98))); // @ (0x993 * 8 + 0)

// CM1PSEL<C1PCH1>
extern volatile __bit C1PCH1 __attribute__((address(0x4C99))); // @ (0x993 * 8 + 1)

// CM1PSEL<C1PCH2>
extern volatile __bit C1PCH2 __attribute__((address(0x4C9A))); // @ (0x993 * 8 + 2)

// CM1CON0<C1POL>
extern volatile __bit C1POL __attribute__((address(0x4C84))); // @ (0x990 * 8 + 4)

// CM1CON0<C1SP>
extern volatile __bit C1SP __attribute__((address(0x4C82))); // @ (0x990 * 8 + 2)

// CM1CON0<C1SYNC>
extern volatile __bit C1SYNC __attribute__((address(0x4C80))); // @ (0x990 * 8 + 0)

// CCPTMRS0<C1TSEL0>
extern volatile __bit C1TSEL0 __attribute__((address(0x10F0))); // @ (0x21E * 8 + 0)

// CCPTMRS0<C1TSEL1>
extern volatile __bit C1TSEL1 __attribute__((address(0x10F1))); // @ (0x21E * 8 + 1)

// CM2CON0<C2HYS>
extern volatile __bit C2HYS __attribute__((address(0x4CA1))); // @ (0x994 * 8 + 1)

// PIE2<C2IE>
extern volatile __bit C2IE __attribute__((address(0x38C1))); // @ (0x718 * 8 + 1)

// PIR2<C2IF>
extern volatile __bit C2IF __attribute__((address(0x3871))); // @ (0x70E * 8 + 1)

// CM2CON1<C2INTN>
extern volatile __bit C2INTN __attribute__((address(0x4CA8))); // @ (0x995 * 8 + 0)

// CM2CON1<C2INTP>
extern volatile __bit C2INTP __attribute__((address(0x4CA9))); // @ (0x995 * 8 + 1)

// CM2NSEL<C2NCH0>
extern volatile __bit C2NCH0 __attribute__((address(0x4CB0))); // @ (0x996 * 8 + 0)

// CM2NSEL<C2NCH1>
extern volatile __bit C2NCH1 __attribute__((address(0x4CB1))); // @ (0x996 * 8 + 1)

// CM2NSEL<C2NCH2>
extern volatile __bit C2NCH2 __attribute__((address(0x4CB2))); // @ (0x996 * 8 + 2)

// CM2CON0<C2ON>
extern volatile __bit C2ON __attribute__((address(0x4CA7))); // @ (0x994 * 8 + 7)

// CM2PSEL<C2PCH0>
extern volatile __bit C2PCH0 __attribute__((address(0x4CB8))); // @ (0x997 * 8 + 0)

// CM2PSEL<C2PCH1>
extern volatile __bit C2PCH1 __attribute__((address(0x4CB9))); // @ (0x997 * 8 + 1)

// CM2PSEL<C2PCH2>
extern volatile __bit C2PCH2 __attribute__((address(0x4CBA))); // @ (0x997 * 8 + 2)

// CM2CON0<C2POL>
extern volatile __bit C2POL __attribute__((address(0x4CA4))); // @ (0x994 * 8 + 4)

// CM2CON0<C2SP>
extern volatile __bit C2SP __attribute__((address(0x4CA2))); // @ (0x994 * 8 + 2)

// CM2CON0<C2SYNC>
extern volatile __bit C2SYNC __attribute__((address(0x4CA0))); // @ (0x994 * 8 + 0)

// CCPTMRS0<C2TSEL0>
extern volatile __bit C2TSEL0 __attribute__((address(0x10F2))); // @ (0x21E * 8 + 2)

// CCPTMRS0<C2TSEL1>
extern volatile __bit C2TSEL1 __attribute__((address(0x10F3))); // @ (0x21E * 8 + 3)

// CCPTMRS0<C3TSEL0>
extern volatile __bit C3TSEL0 __attribute__((address(0x10F4))); // @ (0x21E * 8 + 4)

// CCPTMRS0<C3TSEL1>
extern volatile __bit C3TSEL1 __attribute__((address(0x10F5))); // @ (0x21E * 8 + 5)

// CCPTMRS0<C4TSEL0>
extern volatile __bit C4TSEL0 __attribute__((address(0x10F6))); // @ (0x21E * 8 + 6)

// CCPTMRS0<C4TSEL1>
extern volatile __bit C4TSEL1 __attribute__((address(0x10F7))); // @ (0x21E * 8 + 7)

// CCPTMRS1<C5TSEL0>
extern volatile __bit C5TSEL0 __attribute__((address(0x10F8))); // @ (0x21F * 8 + 0)

// CCPTMRS1<C5TSEL1>
extern volatile __bit C5TSEL1 __attribute__((address(0x10F9))); // @ (0x21F * 8 + 1)

// TMR1L<CAL01>
extern volatile __bit CAL01 __attribute__((address(0x1060))); // @ (0x20C * 8 + 0)

// TMR3L<CAL03>
extern volatile __bit CAL03 __attribute__((address(0x1090))); // @ (0x212 * 8 + 0)

// TMR5L<CAL05>
extern volatile __bit CAL05 __attribute__((address(0x10C0))); // @ (0x218 * 8 + 0)

// TMR1L<CAL11>
extern volatile __bit CAL11 __attribute__((address(0x1061))); // @ (0x20C * 8 + 1)

// TMR3L<CAL13>
extern volatile __bit CAL13 __attribute__((address(0x1091))); // @ (0x212 * 8 + 1)

// TMR5L<CAL15>
extern volatile __bit CAL15 __attribute__((address(0x10C1))); // @ (0x218 * 8 + 1)

// TMR1L<CAL21>
extern volatile __bit CAL21 __attribute__((address(0x1062))); // @ (0x20C * 8 + 2)

// TMR3L<CAL23>
extern volatile __bit CAL23 __attribute__((address(0x1092))); // @ (0x212 * 8 + 2)

// TMR5L<CAL25>
extern volatile __bit CAL25 __attribute__((address(0x10C2))); // @ (0x218 * 8 + 2)

// TMR1L<CAL31>
extern volatile __bit CAL31 __attribute__((address(0x1063))); // @ (0x20C * 8 + 3)

// TMR3L<CAL33>
extern volatile __bit CAL33 __attribute__((address(0x1093))); // @ (0x212 * 8 + 3)

// TMR5L<CAL35>
extern volatile __bit CAL35 __attribute__((address(0x10C3))); // @ (0x218 * 8 + 3)

// TMR1L<CAL41>
extern volatile __bit CAL41 __attribute__((address(0x1064))); // @ (0x20C * 8 + 4)

// TMR3L<CAL43>
extern volatile __bit CAL43 __attribute__((address(0x1094))); // @ (0x212 * 8 + 4)

// TMR5L<CAL45>
extern volatile __bit CAL45 __attribute__((address(0x10C4))); // @ (0x218 * 8 + 4)

// TMR1L<CAL51>
extern volatile __bit CAL51 __attribute__((address(0x1065))); // @ (0x20C * 8 + 5)

// TMR3L<CAL53>
extern volatile __bit CAL53 __attribute__((address(0x1095))); // @ (0x212 * 8 + 5)

// TMR5L<CAL55>
extern volatile __bit CAL55 __attribute__((address(0x10C5))); // @ (0x218 * 8 + 5)

// TMR1L<CAL61>
extern volatile __bit CAL61 __attribute__((address(0x1066))); // @ (0x20C * 8 + 6)

// TMR3L<CAL63>
extern volatile __bit CAL63 __attribute__((address(0x1096))); // @ (0x212 * 8 + 6)

// TMR5L<CAL65>
extern volatile __bit CAL65 __attribute__((address(0x10C6))); // @ (0x218 * 8 + 6)

// TMR1L<CAL71>
extern volatile __bit CAL71 __attribute__((address(0x1067))); // @ (0x20C * 8 + 7)

// TMR3L<CAL73>
extern volatile __bit CAL73 __attribute__((address(0x1097))); // @ (0x212 * 8 + 7)

// TMR5L<CAL75>
extern volatile __bit CAL75 __attribute__((address(0x10C7))); // @ (0x218 * 8 + 7)

// STATUS<CARRY>
extern volatile __bit CARRY __attribute__((address(0x18))); // @ (0x3 * 8 + 0)

// CCDCON<CCDEN>
extern volatile __bit CCDEN __attribute__((address(0x40A7))); // @ (0x814 * 8 + 7)

// CCDNA<CCDNA0>
extern volatile __bit CCDNA0 __attribute__((address(0x7A00))); // @ (0xF40 * 8 + 0)

// CCDNA<CCDNA1>
extern volatile __bit CCDNA1 __attribute__((address(0x7A01))); // @ (0xF40 * 8 + 1)

// CCDNA<CCDNA2>
extern volatile __bit CCDNA2 __attribute__((address(0x7A02))); // @ (0xF40 * 8 + 2)

// CCDNA<CCDNA3>
extern volatile __bit CCDNA3 __attribute__((address(0x7A03))); // @ (0xF40 * 8 + 3)

// CCDNA<CCDNA4>
extern volatile __bit CCDNA4 __attribute__((address(0x7A04))); // @ (0xF40 * 8 + 4)

// CCDNA<CCDNA5>
extern volatile __bit CCDNA5 __attribute__((address(0x7A05))); // @ (0xF40 * 8 + 5)

// CCDNA<CCDNA6>
extern volatile __bit CCDNA6 __attribute__((address(0x7A06))); // @ (0xF40 * 8 + 6)

// CCDNA<CCDNA7>
extern volatile __bit CCDNA7 __attribute__((address(0x7A07))); // @ (0xF40 * 8 + 7)

// CCDNB<CCDNB0>
extern volatile __bit CCDNB0 __attribute__((address(0x7A58))); // @ (0xF4B * 8 + 0)

// CCDNB<CCDNB1>
extern volatile __bit CCDNB1 __attribute__((address(0x7A59))); // @ (0xF4B * 8 + 1)

// CCDNB<CCDNB2>
extern volatile __bit CCDNB2 __attribute__((address(0x7A5A))); // @ (0xF4B * 8 + 2)

// CCDNB<CCDNB3>
extern volatile __bit CCDNB3 __attribute__((address(0x7A5B))); // @ (0xF4B * 8 + 3)

// CCDNB<CCDNB4>
extern volatile __bit CCDNB4 __attribute__((address(0x7A5C))); // @ (0xF4B * 8 + 4)

// CCDNB<CCDNB5>
extern volatile __bit CCDNB5 __attribute__((address(0x7A5D))); // @ (0xF4B * 8 + 5)

// CCDNB<CCDNB6>
extern volatile __bit CCDNB6 __attribute__((address(0x7A5E))); // @ (0xF4B * 8 + 6)

// CCDNB<CCDNB7>
extern volatile __bit CCDNB7 __attribute__((address(0x7A5F))); // @ (0xF4B * 8 + 7)

// CCDNC<CCDNC0>
extern volatile __bit CCDNC0 __attribute__((address(0x7AB0))); // @ (0xF56 * 8 + 0)

// CCDNC<CCDNC1>
extern volatile __bit CCDNC1 __attribute__((address(0x7AB1))); // @ (0xF56 * 8 + 1)

// CCDNC<CCDNC2>
extern volatile __bit CCDNC2 __attribute__((address(0x7AB2))); // @ (0xF56 * 8 + 2)

// CCDNC<CCDNC3>
extern volatile __bit CCDNC3 __attribute__((address(0x7AB3))); // @ (0xF56 * 8 + 3)

// CCDNC<CCDNC4>
extern volatile __bit CCDNC4 __attribute__((address(0x7AB4))); // @ (0xF56 * 8 + 4)

// CCDNC<CCDNC5>
extern volatile __bit CCDNC5 __attribute__((address(0x7AB5))); // @ (0xF56 * 8 + 5)

// CCDNC<CCDNC6>
extern volatile __bit CCDNC6 __attribute__((address(0x7AB6))); // @ (0xF56 * 8 + 6)

// CCDNC<CCDNC7>
extern volatile __bit CCDNC7 __attribute__((address(0x7AB7))); // @ (0xF56 * 8 + 7)

// CCDPA<CCDPA0>
extern volatile __bit CCDPA0 __attribute__((address(0x7A08))); // @ (0xF41 * 8 + 0)

// CCDPA<CCDPA1>
extern volatile __bit CCDPA1 __attribute__((address(0x7A09))); // @ (0xF41 * 8 + 1)

// CCDPA<CCDPA2>
extern volatile __bit CCDPA2 __attribute__((address(0x7A0A))); // @ (0xF41 * 8 + 2)

// CCDPA<CCDPA3>
extern volatile __bit CCDPA3 __attribute__((address(0x7A0B))); // @ (0xF41 * 8 + 3)

// CCDPA<CCDPA4>
extern volatile __bit CCDPA4 __attribute__((address(0x7A0C))); // @ (0xF41 * 8 + 4)

// CCDPA<CCDPA5>
extern volatile __bit CCDPA5 __attribute__((address(0x7A0D))); // @ (0xF41 * 8 + 5)

// CCDPA<CCDPA6>
extern volatile __bit CCDPA6 __attribute__((address(0x7A0E))); // @ (0xF41 * 8 + 6)

// CCDPA<CCDPA7>
extern volatile __bit CCDPA7 __attribute__((address(0x7A0F))); // @ (0xF41 * 8 + 7)

// CCDPB<CCDPB0>
extern volatile __bit CCDPB0 __attribute__((address(0x7A60))); // @ (0xF4C * 8 + 0)

// CCDPB<CCDPB1>
extern volatile __bit CCDPB1 __attribute__((address(0x7A61))); // @ (0xF4C * 8 + 1)

// CCDPB<CCDPB2>
extern volatile __bit CCDPB2 __attribute__((address(0x7A62))); // @ (0xF4C * 8 + 2)

// CCDPB<CCDPB3>
extern volatile __bit CCDPB3 __attribute__((address(0x7A63))); // @ (0xF4C * 8 + 3)

// CCDPB<CCDPB4>
extern volatile __bit CCDPB4 __attribute__((address(0x7A64))); // @ (0xF4C * 8 + 4)

// CCDPB<CCDPB5>
extern volatile __bit CCDPB5 __attribute__((address(0x7A65))); // @ (0xF4C * 8 + 5)

// CCDPB<CCDPB6>
extern volatile __bit CCDPB6 __attribute__((address(0x7A66))); // @ (0xF4C * 8 + 6)

// CCDPB<CCDPB7>
extern volatile __bit CCDPB7 __attribute__((address(0x7A67))); // @ (0xF4C * 8 + 7)

// CCDPC<CCDPC0>
extern volatile __bit CCDPC0 __attribute__((address(0x7AB8))); // @ (0xF57 * 8 + 0)

// CCDPC<CCDPC1>
extern volatile __bit CCDPC1 __attribute__((address(0x7AB9))); // @ (0xF57 * 8 + 1)

// CCDPC<CCDPC2>
extern volatile __bit CCDPC2 __attribute__((address(0x7ABA))); // @ (0xF57 * 8 + 2)

// CCDPC<CCDPC3>
extern volatile __bit CCDPC3 __attribute__((address(0x7ABB))); // @ (0xF57 * 8 + 3)

// CCDPC<CCDPC4>
extern volatile __bit CCDPC4 __attribute__((address(0x7ABC))); // @ (0xF57 * 8 + 4)

// CCDPC<CCDPC5>
extern volatile __bit CCDPC5 __attribute__((address(0x7ABD))); // @ (0xF57 * 8 + 5)

// CCDPC<CCDPC6>
extern volatile __bit CCDPC6 __attribute__((address(0x7ABE))); // @ (0xF57 * 8 + 6)

// CCDPC<CCDPC7>
extern volatile __bit CCDPC7 __attribute__((address(0x7ABF))); // @ (0xF57 * 8 + 7)

// CCDCON<CCDS0>
extern volatile __bit CCDS0 __attribute__((address(0x40A0))); // @ (0x814 * 8 + 0)

// CCDCON<CCDS1>
extern volatile __bit CCDS1 __attribute__((address(0x40A1))); // @ (0x814 * 8 + 1)

// CCP1CAP<CCP1CTS0>
extern volatile __bit CCP1CTS0 __attribute__((address(0x1878))); // @ (0x30F * 8 + 0)

// CCP1CAP<CCP1CTS1>
extern volatile __bit CCP1CTS1 __attribute__((address(0x1879))); // @ (0x30F * 8 + 1)

// CCP1CAP<CCP1CTS2>
extern volatile __bit CCP1CTS2 __attribute__((address(0x187A))); // @ (0x30F * 8 + 2)

// CCP1CON<CCP1EN>
extern volatile __bit CCP1EN __attribute__((address(0x1877))); // @ (0x30E * 8 + 7)

// CCP1CON<CCP1FMT>
extern volatile __bit CCP1FMT __attribute__((address(0x1874))); // @ (0x30E * 8 + 4)

// PIE6<CCP1IE>
extern volatile __bit CCP1IE __attribute__((address(0x38E0))); // @ (0x71C * 8 + 0)

// PIR6<CCP1IF>
extern volatile __bit CCP1IF __attribute__((address(0x3890))); // @ (0x712 * 8 + 0)

// PMD3<CCP1MD>
extern volatile __bit CCP1MD __attribute__((address(0x3CC8))); // @ (0x799 * 8 + 0)

// CCP1CON<CCP1MODE0>
extern volatile __bit CCP1MODE0 __attribute__((address(0x1870))); // @ (0x30E * 8 + 0)

// CCP1CON<CCP1MODE1>
extern volatile __bit CCP1MODE1 __attribute__((address(0x1871))); // @ (0x30E * 8 + 1)

// CCP1CON<CCP1MODE2>
extern volatile __bit CCP1MODE2 __attribute__((address(0x1872))); // @ (0x30E * 8 + 2)

// CCP1CON<CCP1MODE3>
extern volatile __bit CCP1MODE3 __attribute__((address(0x1873))); // @ (0x30E * 8 + 3)

// CCP1CON<CCP1OUT>
extern volatile __bit CCP1OUT __attribute__((address(0x1875))); // @ (0x30E * 8 + 5)

// CCP1PPS<CCP1PPS0>
extern volatile __bit CCP1PPS0 __attribute__((address(0x7508))); // @ (0xEA1 * 8 + 0)

// CCP1PPS<CCP1PPS1>
extern volatile __bit CCP1PPS1 __attribute__((address(0x7509))); // @ (0xEA1 * 8 + 1)

// CCP1PPS<CCP1PPS2>
extern volatile __bit CCP1PPS2 __attribute__((address(0x750A))); // @ (0xEA1 * 8 + 2)

// CCP1PPS<CCP1PPS3>
extern volatile __bit CCP1PPS3 __attribute__((address(0x750B))); // @ (0xEA1 * 8 + 3)

// CCP1PPS<CCP1PPS4>
extern volatile __bit CCP1PPS4 __attribute__((address(0x750C))); // @ (0xEA1 * 8 + 4)

// CCP2CAP<CCP2CTS0>
extern volatile __bit CCP2CTS0 __attribute__((address(0x1898))); // @ (0x313 * 8 + 0)

// CCP2CAP<CCP2CTS1>
extern volatile __bit CCP2CTS1 __attribute__((address(0x1899))); // @ (0x313 * 8 + 1)

// CCP2CAP<CCP2CTS2>
extern volatile __bit CCP2CTS2 __attribute__((address(0x189A))); // @ (0x313 * 8 + 2)

// CCP2CON<CCP2EN>
extern volatile __bit CCP2EN __attribute__((address(0x1897))); // @ (0x312 * 8 + 7)

// CCP2CON<CCP2FMT>
extern volatile __bit CCP2FMT __attribute__((address(0x1894))); // @ (0x312 * 8 + 4)

// PIE6<CCP2IE>
extern volatile __bit CCP2IE __attribute__((address(0x38E1))); // @ (0x71C * 8 + 1)

// PIR6<CCP2IF>
extern volatile __bit CCP2IF __attribute__((address(0x3891))); // @ (0x712 * 8 + 1)

// PMD3<CCP2MD>
extern volatile __bit CCP2MD __attribute__((address(0x3CC9))); // @ (0x799 * 8 + 1)

// CCP2CON<CCP2MODE0>
extern volatile __bit CCP2MODE0 __attribute__((address(0x1890))); // @ (0x312 * 8 + 0)

// CCP2CON<CCP2MODE1>
extern volatile __bit CCP2MODE1 __attribute__((address(0x1891))); // @ (0x312 * 8 + 1)

// CCP2CON<CCP2MODE2>
extern volatile __bit CCP2MODE2 __attribute__((address(0x1892))); // @ (0x312 * 8 + 2)

// CCP2CON<CCP2MODE3>
extern volatile __bit CCP2MODE3 __attribute__((address(0x1893))); // @ (0x312 * 8 + 3)

// CCP2CON<CCP2OUT>
extern volatile __bit CCP2OUT __attribute__((address(0x1895))); // @ (0x312 * 8 + 5)

// CCP2PPS<CCP2PPS0>
extern volatile __bit CCP2PPS0 __attribute__((address(0x7510))); // @ (0xEA2 * 8 + 0)

// CCP2PPS<CCP2PPS1>
extern volatile __bit CCP2PPS1 __attribute__((address(0x7511))); // @ (0xEA2 * 8 + 1)

// CCP2PPS<CCP2PPS2>
extern volatile __bit CCP2PPS2 __attribute__((address(0x7512))); // @ (0xEA2 * 8 + 2)

// CCP2PPS<CCP2PPS3>
extern volatile __bit CCP2PPS3 __attribute__((address(0x7513))); // @ (0xEA2 * 8 + 3)

// CCP2PPS<CCP2PPS4>
extern volatile __bit CCP2PPS4 __attribute__((address(0x7514))); // @ (0xEA2 * 8 + 4)

// CCP3CAP<CCP3CTS0>
extern volatile __bit CCP3CTS0 __attribute__((address(0x18B8))); // @ (0x317 * 8 + 0)

// CCP3CAP<CCP3CTS1>
extern volatile __bit CCP3CTS1 __attribute__((address(0x18B9))); // @ (0x317 * 8 + 1)

// CCP3CAP<CCP3CTS2>
extern volatile __bit CCP3CTS2 __attribute__((address(0x18BA))); // @ (0x317 * 8 + 2)

// CCP3CON<CCP3EN>
extern volatile __bit CCP3EN __attribute__((address(0x18B7))); // @ (0x316 * 8 + 7)

// CCP3CON<CCP3FMT>
extern volatile __bit CCP3FMT __attribute__((address(0x18B4))); // @ (0x316 * 8 + 4)

// PIE6<CCP3IE>
extern volatile __bit CCP3IE __attribute__((address(0x38E2))); // @ (0x71C * 8 + 2)

// PIR6<CCP3IF>
extern volatile __bit CCP3IF __attribute__((address(0x3892))); // @ (0x712 * 8 + 2)

// PMD3<CCP3MD>
extern volatile __bit CCP3MD __attribute__((address(0x3CCA))); // @ (0x799 * 8 + 2)

// CCP3CON<CCP3MODE0>
extern volatile __bit CCP3MODE0 __attribute__((address(0x18B0))); // @ (0x316 * 8 + 0)

// CCP3CON<CCP3MODE1>
extern volatile __bit CCP3MODE1 __attribute__((address(0x18B1))); // @ (0x316 * 8 + 1)

// CCP3CON<CCP3MODE2>
extern volatile __bit CCP3MODE2 __attribute__((address(0x18B2))); // @ (0x316 * 8 + 2)

// CCP3CON<CCP3MODE3>
extern volatile __bit CCP3MODE3 __attribute__((address(0x18B3))); // @ (0x316 * 8 + 3)

// CCP3CON<CCP3OUT>
extern volatile __bit CCP3OUT __attribute__((address(0x18B5))); // @ (0x316 * 8 + 5)

// CCP3PPS<CCP3PPS0>
extern volatile __bit CCP3PPS0 __attribute__((address(0x7518))); // @ (0xEA3 * 8 + 0)

// CCP3PPS<CCP3PPS1>
extern volatile __bit CCP3PPS1 __attribute__((address(0x7519))); // @ (0xEA3 * 8 + 1)

// CCP3PPS<CCP3PPS2>
extern volatile __bit CCP3PPS2 __attribute__((address(0x751A))); // @ (0xEA3 * 8 + 2)

// CCP3PPS<CCP3PPS3>
extern volatile __bit CCP3PPS3 __attribute__((address(0x751B))); // @ (0xEA3 * 8 + 3)

// CCP3PPS<CCP3PPS4>
extern volatile __bit CCP3PPS4 __attribute__((address(0x751C))); // @ (0xEA3 * 8 + 4)

// CCP4CAP<CCP4CTS0>
extern volatile __bit CCP4CTS0 __attribute__((address(0x18D8))); // @ (0x31B * 8 + 0)

// CCP4CAP<CCP4CTS1>
extern volatile __bit CCP4CTS1 __attribute__((address(0x18D9))); // @ (0x31B * 8 + 1)

// CCP4CAP<CCP4CTS2>
extern volatile __bit CCP4CTS2 __attribute__((address(0x18DA))); // @ (0x31B * 8 + 2)

// CCP4CON<CCP4EN>
extern volatile __bit CCP4EN __attribute__((address(0x18D7))); // @ (0x31A * 8 + 7)

// CCP4CON<CCP4FMT>
extern volatile __bit CCP4FMT __attribute__((address(0x18D4))); // @ (0x31A * 8 + 4)

// PIE6<CCP4IE>
extern volatile __bit CCP4IE __attribute__((address(0x38E3))); // @ (0x71C * 8 + 3)

// PIR6<CCP4IF>
extern volatile __bit CCP4IF __attribute__((address(0x3893))); // @ (0x712 * 8 + 3)

// PMD3<CCP4MD>
extern volatile __bit CCP4MD __attribute__((address(0x3CCB))); // @ (0x799 * 8 + 3)

// CCP4CON<CCP4MODE0>
extern volatile __bit CCP4MODE0 __attribute__((address(0x18D0))); // @ (0x31A * 8 + 0)

// CCP4CON<CCP4MODE1>
extern volatile __bit CCP4MODE1 __attribute__((address(0x18D1))); // @ (0x31A * 8 + 1)

// CCP4CON<CCP4MODE2>
extern volatile __bit CCP4MODE2 __attribute__((address(0x18D2))); // @ (0x31A * 8 + 2)

// CCP4CON<CCP4MODE3>
extern volatile __bit CCP4MODE3 __attribute__((address(0x18D3))); // @ (0x31A * 8 + 3)

// CCP4CON<CCP4OUT>
extern volatile __bit CCP4OUT __attribute__((address(0x18D5))); // @ (0x31A * 8 + 5)

// CCP4PPS<CCP4PPS0>
extern volatile __bit CCP4PPS0 __attribute__((address(0x7520))); // @ (0xEA4 * 8 + 0)

// CCP4PPS<CCP4PPS1>
extern volatile __bit CCP4PPS1 __attribute__((address(0x7521))); // @ (0xEA4 * 8 + 1)

// CCP4PPS<CCP4PPS2>
extern volatile __bit CCP4PPS2 __attribute__((address(0x7522))); // @ (0xEA4 * 8 + 2)

// CCP4PPS<CCP4PPS3>
extern volatile __bit CCP4PPS3 __attribute__((address(0x7523))); // @ (0xEA4 * 8 + 3)

// CCP4PPS<CCP4PPS4>
extern volatile __bit CCP4PPS4 __attribute__((address(0x7524))); // @ (0xEA4 * 8 + 4)

// CCP5CAP<CCP5CTS0>
extern volatile __bit CCP5CTS0 __attribute__((address(0x18F8))); // @ (0x31F * 8 + 0)

// CCP5CAP<CCP5CTS1>
extern volatile __bit CCP5CTS1 __attribute__((address(0x18F9))); // @ (0x31F * 8 + 1)

// CCP5CAP<CCP5CTS2>
extern volatile __bit CCP5CTS2 __attribute__((address(0x18FA))); // @ (0x31F * 8 + 2)

// CCP5CON<CCP5EN>
extern volatile __bit CCP5EN __attribute__((address(0x18F7))); // @ (0x31E * 8 + 7)

// CCP5CON<CCP5FMT>
extern volatile __bit CCP5FMT __attribute__((address(0x18F4))); // @ (0x31E * 8 + 4)

// PIE6<CCP5IE>
extern volatile __bit CCP5IE __attribute__((address(0x38E4))); // @ (0x71C * 8 + 4)

// PIR6<CCP5IF>
extern volatile __bit CCP5IF __attribute__((address(0x3894))); // @ (0x712 * 8 + 4)

// PMD3<CCP5MD>
extern volatile __bit CCP5MD __attribute__((address(0x3CCC))); // @ (0x799 * 8 + 4)

// CCP5CON<CCP5MODE0>
extern volatile __bit CCP5MODE0 __attribute__((address(0x18F0))); // @ (0x31E * 8 + 0)

// CCP5CON<CCP5MODE1>
extern volatile __bit CCP5MODE1 __attribute__((address(0x18F1))); // @ (0x31E * 8 + 1)

// CCP5CON<CCP5MODE2>
extern volatile __bit CCP5MODE2 __attribute__((address(0x18F2))); // @ (0x31E * 8 + 2)

// CCP5CON<CCP5MODE3>
extern volatile __bit CCP5MODE3 __attribute__((address(0x18F3))); // @ (0x31E * 8 + 3)

// CCP5CON<CCP5OUT>
extern volatile __bit CCP5OUT __attribute__((address(0x18F5))); // @ (0x31E * 8 + 5)

// CCP5PPS<CCP5PPS0>
extern volatile __bit CCP5PPS0 __attribute__((address(0x7528))); // @ (0xEA5 * 8 + 0)

// CCP5PPS<CCP5PPS1>
extern volatile __bit CCP5PPS1 __attribute__((address(0x7529))); // @ (0xEA5 * 8 + 1)

// CCP5PPS<CCP5PPS2>
extern volatile __bit CCP5PPS2 __attribute__((address(0x752A))); // @ (0xEA5 * 8 + 2)

// CCP5PPS<CCP5PPS3>
extern volatile __bit CCP5PPS3 __attribute__((address(0x752B))); // @ (0xEA5 * 8 + 3)

// CCP5PPS<CCP5PPS4>
extern volatile __bit CCP5PPS4 __attribute__((address(0x752C))); // @ (0xEA5 * 8 + 4)

// FVRCON<CDAFVR0>
extern volatile __bit CDAFVR0 __attribute__((address(0x4862))); // @ (0x90C * 8 + 2)

// FVRCON<CDAFVR1>
extern volatile __bit CDAFVR1 __attribute__((address(0x4863))); // @ (0x90C * 8 + 3)

// OSCCON2<CDIV0>
extern volatile __bit CDIV0 __attribute__((address(0x4470))); // @ (0x88E * 8 + 0)

// OSCCON2<CDIV1>
extern volatile __bit CDIV1 __attribute__((address(0x4471))); // @ (0x88E * 8 + 1)

// OSCCON2<CDIV2>
extern volatile __bit CDIV2 __attribute__((address(0x4472))); // @ (0x88E * 8 + 2)

// OSCCON2<CDIV3>
extern volatile __bit CDIV3 __attribute__((address(0x4473))); // @ (0x88E * 8 + 3)

// SSP1STAT<CKE1>
extern volatile __bit CKE1 __attribute__((address(0xC7E))); // @ (0x18F * 8 + 6)

// SSP2STAT<CKE2>
extern volatile __bit CKE2 __attribute__((address(0xCCE))); // @ (0x199 * 8 + 6)

// SSP1CON1<CKP1>
extern volatile __bit CKP1 __attribute__((address(0xC84))); // @ (0x190 * 8 + 4)

// SSP2CON1<CKP2>
extern volatile __bit CKP2 __attribute__((address(0xCD4))); // @ (0x19A * 8 + 4)

// PIE5<CLC1IE>
extern volatile __bit CLC1IE __attribute__((address(0x38DC))); // @ (0x71B * 8 + 4)

// PIR5<CLC1IF>
extern volatile __bit CLC1IF __attribute__((address(0x388C))); // @ (0x711 * 8 + 4)

// PMD5<CLC1MD>
extern volatile __bit CLC1MD __attribute__((address(0x3CD9))); // @ (0x79B * 8 + 1)

// PIE5<CLC2IE>
extern volatile __bit CLC2IE __attribute__((address(0x38DD))); // @ (0x71B * 8 + 5)

// PIR5<CLC2IF>
extern volatile __bit CLC2IF __attribute__((address(0x388D))); // @ (0x711 * 8 + 5)

// PMD5<CLC2MD>
extern volatile __bit CLC2MD __attribute__((address(0x3CDA))); // @ (0x79B * 8 + 2)

// PIE5<CLC3IE>
extern volatile __bit CLC3IE __attribute__((address(0x38DE))); // @ (0x71B * 8 + 6)

// PIR5<CLC3IF>
extern volatile __bit CLC3IF __attribute__((address(0x388E))); // @ (0x711 * 8 + 6)

// PMD5<CLC3MD>
extern volatile __bit CLC3MD __attribute__((address(0x3CDB))); // @ (0x79B * 8 + 3)

// PIE5<CLC4IE>
extern volatile __bit CLC4IE __attribute__((address(0x38DF))); // @ (0x71B * 8 + 7)

// PIR5<CLC4IF>
extern volatile __bit CLC4IF __attribute__((address(0x388F))); // @ (0x711 * 8 + 7)

// PMD5<CLC4MD>
extern volatile __bit CLC4MD __attribute__((address(0x3CDC))); // @ (0x79B * 8 + 4)

// CLCIN0PPS<CLCIN0PPS0>
extern volatile __bit CLCIN0PPS0 __attribute__((address(0x75D8))); // @ (0xEBB * 8 + 0)

// CLCIN0PPS<CLCIN0PPS1>
extern volatile __bit CLCIN0PPS1 __attribute__((address(0x75D9))); // @ (0xEBB * 8 + 1)

// CLCIN0PPS<CLCIN0PPS2>
extern volatile __bit CLCIN0PPS2 __attribute__((address(0x75DA))); // @ (0xEBB * 8 + 2)

// CLCIN0PPS<CLCIN0PPS3>
extern volatile __bit CLCIN0PPS3 __attribute__((address(0x75DB))); // @ (0xEBB * 8 + 3)

// CLCIN0PPS<CLCIN0PPS4>
extern volatile __bit CLCIN0PPS4 __attribute__((address(0x75DC))); // @ (0xEBB * 8 + 4)

// CLCIN1PPS<CLCIN1PPS0>
extern volatile __bit CLCIN1PPS0 __attribute__((address(0x75E0))); // @ (0xEBC * 8 + 0)

// CLCIN1PPS<CLCIN1PPS1>
extern volatile __bit CLCIN1PPS1 __attribute__((address(0x75E1))); // @ (0xEBC * 8 + 1)

// CLCIN1PPS<CLCIN1PPS2>
extern volatile __bit CLCIN1PPS2 __attribute__((address(0x75E2))); // @ (0xEBC * 8 + 2)

// CLCIN1PPS<CLCIN1PPS3>
extern volatile __bit CLCIN1PPS3 __attribute__((address(0x75E3))); // @ (0xEBC * 8 + 3)

// CLCIN1PPS<CLCIN1PPS4>
extern volatile __bit CLCIN1PPS4 __attribute__((address(0x75E4))); // @ (0xEBC * 8 + 4)

// CLCIN2PPS<CLCIN2PPS0>
extern volatile __bit CLCIN2PPS0 __attribute__((address(0x75E8))); // @ (0xEBD * 8 + 0)

// CLCIN2PPS<CLCIN2PPS1>
extern volatile __bit CLCIN2PPS1 __attribute__((address(0x75E9))); // @ (0xEBD * 8 + 1)

// CLCIN2PPS<CLCIN2PPS2>
extern volatile __bit CLCIN2PPS2 __attribute__((address(0x75EA))); // @ (0xEBD * 8 + 2)

// CLCIN2PPS<CLCIN2PPS3>
extern volatile __bit CLCIN2PPS3 __attribute__((address(0x75EB))); // @ (0xEBD * 8 + 3)

// CLCIN2PPS<CLCIN2PPS4>
extern volatile __bit CLCIN2PPS4 __attribute__((address(0x75EC))); // @ (0xEBD * 8 + 4)

// CLCIN3PPS<CLCIN3PPS0>
extern volatile __bit CLCIN3PPS0 __attribute__((address(0x75F0))); // @ (0xEBE * 8 + 0)

// CLCIN3PPS<CLCIN3PPS1>
extern volatile __bit CLCIN3PPS1 __attribute__((address(0x75F1))); // @ (0xEBE * 8 + 1)

// CLCIN3PPS<CLCIN3PPS2>
extern volatile __bit CLCIN3PPS2 __attribute__((address(0x75F2))); // @ (0xEBE * 8 + 2)

// CLCIN3PPS<CLCIN3PPS3>
extern volatile __bit CLCIN3PPS3 __attribute__((address(0x75F3))); // @ (0xEBE * 8 + 3)

// CLCIN3PPS<CLCIN3PPS4>
extern volatile __bit CLCIN3PPS4 __attribute__((address(0x75F4))); // @ (0xEBE * 8 + 4)

// CLKRCLK<CLKRCLK0>
extern volatile __bit CLKRCLK0 __attribute__((address(0x44B0))); // @ (0x896 * 8 + 0)

// CLKRCLK<CLKRCLK1>
extern volatile __bit CLKRCLK1 __attribute__((address(0x44B1))); // @ (0x896 * 8 + 1)

// CLKRCLK<CLKRCLK2>
extern volatile __bit CLKRCLK2 __attribute__((address(0x44B2))); // @ (0x896 * 8 + 2)

// CLKRCLK<CLKRCLK3>
extern volatile __bit CLKRCLK3 __attribute__((address(0x44B3))); // @ (0x896 * 8 + 3)

// CLKRCON<CLKRDC0>
extern volatile __bit CLKRDC0 __attribute__((address(0x44AB))); // @ (0x895 * 8 + 3)

// CLKRCON<CLKRDC1>
extern volatile __bit CLKRDC1 __attribute__((address(0x44AC))); // @ (0x895 * 8 + 4)

// CLKRCON<CLKRDIV0>
extern volatile __bit CLKRDIV0 __attribute__((address(0x44A8))); // @ (0x895 * 8 + 0)

// CLKRCON<CLKRDIV1>
extern volatile __bit CLKRDIV1 __attribute__((address(0x44A9))); // @ (0x895 * 8 + 1)

// CLKRCON<CLKRDIV2>
extern volatile __bit CLKRDIV2 __attribute__((address(0x44AA))); // @ (0x895 * 8 + 2)

// CLKRCON<CLKREN>
extern volatile __bit CLKREN __attribute__((address(0x44AF))); // @ (0x895 * 8 + 7)

// PMD0<CLKRMD>
extern volatile __bit CLKRMD __attribute__((address(0x3CB1))); // @ (0x796 * 8 + 1)

// PMD2<CMP1MD>
extern volatile __bit CMP1MD __attribute__((address(0x3CC1))); // @ (0x798 * 8 + 1)

// PMD2<CMP2MD>
extern volatile __bit CMP2MD __attribute__((address(0x3CC2))); // @ (0x798 * 8 + 2)

// OSCCON2<COSC0>
extern volatile __bit COSC0 __attribute__((address(0x4474))); // @ (0x88E * 8 + 4)

// OSCCON2<COSC1>
extern volatile __bit COSC1 __attribute__((address(0x4475))); // @ (0x88E * 8 + 5)

// OSCCON2<COSC2>
extern volatile __bit COSC2 __attribute__((address(0x4476))); // @ (0x88E * 8 + 6)

// CRCCON0<CRCEN>
extern volatile __bit CRCEN __attribute__((address(0x20F7))); // @ (0x41E * 8 + 7)

// CRCCON0<CRCGO>
extern volatile __bit CRCGO __attribute__((address(0x20F6))); // @ (0x41E * 8 + 6)

// PIE7<CRCIE>
extern volatile __bit CRCIE __attribute__((address(0x38EE))); // @ (0x71D * 8 + 6)

// PIR7<CRCIF>
extern volatile __bit CRCIF __attribute__((address(0x389E))); // @ (0x713 * 8 + 6)

// PMD0<CRCMD>
extern volatile __bit CRCMD __attribute__((address(0x3CB4))); // @ (0x796 * 8 + 4)

// RC1STA<CREN>
extern volatile __bit CREN __attribute__((address(0x8EC))); // @ (0x11D * 8 + 4)

// TX1STA<CSRC>
extern volatile __bit CSRC __attribute__((address(0x8F7))); // @ (0x11E * 8 + 7)

// OSCCON3<CSWHOLD>
extern volatile __bit CSWHOLD __attribute__((address(0x447F))); // @ (0x88F * 8 + 7)

// PIE1<CSWIE>
extern volatile __bit CSWIE __attribute__((address(0x38BE))); // @ (0x717 * 8 + 6)

// PIR1<CSWIF>
extern volatile __bit CSWIF __attribute__((address(0x386E))); // @ (0x70D * 8 + 6)

// CWG1CLKCON<CWG1CS>
extern volatile __bit CWG1CS __attribute__((address(0x3060))); // @ (0x60C * 8 + 0)

// CWG1DBF<CWG1DBF0>
extern volatile __bit CWG1DBF0 __attribute__((address(0x3078))); // @ (0x60F * 8 + 0)

// CWG1DBF<CWG1DBF1>
extern volatile __bit CWG1DBF1 __attribute__((address(0x3079))); // @ (0x60F * 8 + 1)

// CWG1DBF<CWG1DBF2>
extern volatile __bit CWG1DBF2 __attribute__((address(0x307A))); // @ (0x60F * 8 + 2)

// CWG1DBF<CWG1DBF3>
extern volatile __bit CWG1DBF3 __attribute__((address(0x307B))); // @ (0x60F * 8 + 3)

// CWG1DBF<CWG1DBF4>
extern volatile __bit CWG1DBF4 __attribute__((address(0x307C))); // @ (0x60F * 8 + 4)

// CWG1DBF<CWG1DBF5>
extern volatile __bit CWG1DBF5 __attribute__((address(0x307D))); // @ (0x60F * 8 + 5)

// CWG1DBR<CWG1DBR0>
extern volatile __bit CWG1DBR0 __attribute__((address(0x3070))); // @ (0x60E * 8 + 0)

// CWG1DBR<CWG1DBR1>
extern volatile __bit CWG1DBR1 __attribute__((address(0x3071))); // @ (0x60E * 8 + 1)

// CWG1DBR<CWG1DBR2>
extern volatile __bit CWG1DBR2 __attribute__((address(0x3072))); // @ (0x60E * 8 + 2)

// CWG1DBR<CWG1DBR3>
extern volatile __bit CWG1DBR3 __attribute__((address(0x3073))); // @ (0x60E * 8 + 3)

// CWG1DBR<CWG1DBR4>
extern volatile __bit CWG1DBR4 __attribute__((address(0x3074))); // @ (0x60E * 8 + 4)

// CWG1DBR<CWG1DBR5>
extern volatile __bit CWG1DBR5 __attribute__((address(0x3075))); // @ (0x60E * 8 + 5)

// CWG1CON0<CWG1EN>
extern volatile __bit CWG1EN __attribute__((address(0x3087))); // @ (0x610 * 8 + 7)

// PIE7<CWG1IE>
extern volatile __bit CWG1IE __attribute__((address(0x38E8))); // @ (0x71D * 8 + 0)

// PIR7<CWG1IF>
extern volatile __bit CWG1IF __attribute__((address(0x3898))); // @ (0x713 * 8 + 0)

// CWG1CON1<CWG1IN>
extern volatile __bit CWG1IN __attribute__((address(0x308D))); // @ (0x611 * 8 + 5)

// CWG1ISM<CWG1ISM0>
extern volatile __bit CWG1ISM0 __attribute__((address(0x3068))); // @ (0x60D * 8 + 0)

// CWG1ISM<CWG1ISM1>
extern volatile __bit CWG1ISM1 __attribute__((address(0x3069))); // @ (0x60D * 8 + 1)

// CWG1ISM<CWG1ISM2>
extern volatile __bit CWG1ISM2 __attribute__((address(0x306A))); // @ (0x60D * 8 + 2)

// CWG1ISM<CWG1ISM3>
extern volatile __bit CWG1ISM3 __attribute__((address(0x306B))); // @ (0x60D * 8 + 3)

// CWG1CON0<CWG1LD>
extern volatile __bit CWG1LD __attribute__((address(0x3086))); // @ (0x610 * 8 + 6)

// CWG1AS0<CWG1LSAC0>
extern volatile __bit CWG1LSAC0 __attribute__((address(0x3092))); // @ (0x612 * 8 + 2)

// CWG1AS0<CWG1LSAC1>
extern volatile __bit CWG1LSAC1 __attribute__((address(0x3093))); // @ (0x612 * 8 + 3)

// CWG1AS0<CWG1LSBD0>
extern volatile __bit CWG1LSBD0 __attribute__((address(0x3094))); // @ (0x612 * 8 + 4)

// CWG1AS0<CWG1LSBD1>
extern volatile __bit CWG1LSBD1 __attribute__((address(0x3095))); // @ (0x612 * 8 + 5)

// PMD4<CWG1MD>
extern volatile __bit CWG1MD __attribute__((address(0x3CD0))); // @ (0x79A * 8 + 0)

// CWG1CON0<CWG1MODE0>
extern volatile __bit CWG1MODE0 __attribute__((address(0x3080))); // @ (0x610 * 8 + 0)

// CWG1CON0<CWG1MODE1>
extern volatile __bit CWG1MODE1 __attribute__((address(0x3081))); // @ (0x610 * 8 + 1)

// CWG1CON0<CWG1MODE2>
extern volatile __bit CWG1MODE2 __attribute__((address(0x3082))); // @ (0x610 * 8 + 2)

// CWG1STR<CWG1OVRA>
extern volatile __bit CWG1OVRA __attribute__((address(0x30A4))); // @ (0x614 * 8 + 4)

// CWG1STR<CWG1OVRB>
extern volatile __bit CWG1OVRB __attribute__((address(0x30A5))); // @ (0x614 * 8 + 5)

// CWG1STR<CWG1OVRC>
extern volatile __bit CWG1OVRC __attribute__((address(0x30A6))); // @ (0x614 * 8 + 6)

// CWG1STR<CWG1OVRD>
extern volatile __bit CWG1OVRD __attribute__((address(0x30A7))); // @ (0x614 * 8 + 7)

// CWG1CON1<CWG1POLA>
extern volatile __bit CWG1POLA __attribute__((address(0x3088))); // @ (0x611 * 8 + 0)

// CWG1CON1<CWG1POLB>
extern volatile __bit CWG1POLB __attribute__((address(0x3089))); // @ (0x611 * 8 + 1)

// CWG1CON1<CWG1POLC>
extern volatile __bit CWG1POLC __attribute__((address(0x308A))); // @ (0x611 * 8 + 2)

// CWG1CON1<CWG1POLD>
extern volatile __bit CWG1POLD __attribute__((address(0x308B))); // @ (0x611 * 8 + 3)

// CWG1PPS<CWG1PPS0>
extern volatile __bit CWG1PPS0 __attribute__((address(0x7588))); // @ (0xEB1 * 8 + 0)

// CWG1PPS<CWG1PPS1>
extern volatile __bit CWG1PPS1 __attribute__((address(0x7589))); // @ (0xEB1 * 8 + 1)

// CWG1PPS<CWG1PPS2>
extern volatile __bit CWG1PPS2 __attribute__((address(0x758A))); // @ (0xEB1 * 8 + 2)

// CWG1PPS<CWG1PPS3>
extern volatile __bit CWG1PPS3 __attribute__((address(0x758B))); // @ (0xEB1 * 8 + 3)

// CWG1PPS<CWG1PPS4>
extern volatile __bit CWG1PPS4 __attribute__((address(0x758C))); // @ (0xEB1 * 8 + 4)

// CWG1AS0<CWG1REN>
extern volatile __bit CWG1REN __attribute__((address(0x3096))); // @ (0x612 * 8 + 6)

// CWG1AS0<CWG1SHUTDOWN>
extern volatile __bit CWG1SHUTDOWN __attribute__((address(0x3097))); // @ (0x612 * 8 + 7)

// CWG1STR<CWG1STRA>
extern volatile __bit CWG1STRA __attribute__((address(0x30A0))); // @ (0x614 * 8 + 0)

// CWG1STR<CWG1STRB>
extern volatile __bit CWG1STRB __attribute__((address(0x30A1))); // @ (0x614 * 8 + 1)

// CWG1STR<CWG1STRC>
extern volatile __bit CWG1STRC __attribute__((address(0x30A2))); // @ (0x614 * 8 + 2)

// CWG1STR<CWG1STRD>
extern volatile __bit CWG1STRD __attribute__((address(0x30A3))); // @ (0x614 * 8 + 3)

// CWG2CLKCON<CWG2CS>
extern volatile __bit CWG2CS __attribute__((address(0x30B0))); // @ (0x616 * 8 + 0)

// CWG2DBF<CWG2DBF0>
extern volatile __bit CWG2DBF0 __attribute__((address(0x30C8))); // @ (0x619 * 8 + 0)

// CWG2DBF<CWG2DBF1>
extern volatile __bit CWG2DBF1 __attribute__((address(0x30C9))); // @ (0x619 * 8 + 1)

// CWG2DBF<CWG2DBF2>
extern volatile __bit CWG2DBF2 __attribute__((address(0x30CA))); // @ (0x619 * 8 + 2)

// CWG2DBF<CWG2DBF3>
extern volatile __bit CWG2DBF3 __attribute__((address(0x30CB))); // @ (0x619 * 8 + 3)

// CWG2DBF<CWG2DBF4>
extern volatile __bit CWG2DBF4 __attribute__((address(0x30CC))); // @ (0x619 * 8 + 4)

// CWG2DBF<CWG2DBF5>
extern volatile __bit CWG2DBF5 __attribute__((address(0x30CD))); // @ (0x619 * 8 + 5)

// CWG2DBR<CWG2DBR0>
extern volatile __bit CWG2DBR0 __attribute__((address(0x30C0))); // @ (0x618 * 8 + 0)

// CWG2DBR<CWG2DBR1>
extern volatile __bit CWG2DBR1 __attribute__((address(0x30C1))); // @ (0x618 * 8 + 1)

// CWG2DBR<CWG2DBR2>
extern volatile __bit CWG2DBR2 __attribute__((address(0x30C2))); // @ (0x618 * 8 + 2)

// CWG2DBR<CWG2DBR3>
extern volatile __bit CWG2DBR3 __attribute__((address(0x30C3))); // @ (0x618 * 8 + 3)

// CWG2DBR<CWG2DBR4>
extern volatile __bit CWG2DBR4 __attribute__((address(0x30C4))); // @ (0x618 * 8 + 4)

// CWG2DBR<CWG2DBR5>
extern volatile __bit CWG2DBR5 __attribute__((address(0x30C5))); // @ (0x618 * 8 + 5)

// CWG2CON0<CWG2EN>
extern volatile __bit CWG2EN __attribute__((address(0x30D7))); // @ (0x61A * 8 + 7)

// PIE7<CWG2IE>
extern volatile __bit CWG2IE __attribute__((address(0x38E9))); // @ (0x71D * 8 + 1)

// PIR7<CWG2IF>
extern volatile __bit CWG2IF __attribute__((address(0x3899))); // @ (0x713 * 8 + 1)

// CWG2CON1<CWG2IN>
extern volatile __bit CWG2IN __attribute__((address(0x30DD))); // @ (0x61B * 8 + 5)

// CWG2ISM<CWG2ISM0>
extern volatile __bit CWG2ISM0 __attribute__((address(0x30B8))); // @ (0x617 * 8 + 0)

// CWG2ISM<CWG2ISM1>
extern volatile __bit CWG2ISM1 __attribute__((address(0x30B9))); // @ (0x617 * 8 + 1)

// CWG2ISM<CWG2ISM2>
extern volatile __bit CWG2ISM2 __attribute__((address(0x30BA))); // @ (0x617 * 8 + 2)

// CWG2ISM<CWG2ISM3>
extern volatile __bit CWG2ISM3 __attribute__((address(0x30BB))); // @ (0x617 * 8 + 3)

// CWG2CON0<CWG2LD>
extern volatile __bit CWG2LD __attribute__((address(0x30D6))); // @ (0x61A * 8 + 6)

// CWG2AS0<CWG2LSAC0>
extern volatile __bit CWG2LSAC0 __attribute__((address(0x30E2))); // @ (0x61C * 8 + 2)

// CWG2AS0<CWG2LSAC1>
extern volatile __bit CWG2LSAC1 __attribute__((address(0x30E3))); // @ (0x61C * 8 + 3)

// CWG2AS0<CWG2LSBD0>
extern volatile __bit CWG2LSBD0 __attribute__((address(0x30E4))); // @ (0x61C * 8 + 4)

// CWG2AS0<CWG2LSBD1>
extern volatile __bit CWG2LSBD1 __attribute__((address(0x30E5))); // @ (0x61C * 8 + 5)

// PMD4<CWG2MD>
extern volatile __bit CWG2MD __attribute__((address(0x3CD1))); // @ (0x79A * 8 + 1)

// CWG2CON0<CWG2MODE0>
extern volatile __bit CWG2MODE0 __attribute__((address(0x30D0))); // @ (0x61A * 8 + 0)

// CWG2CON0<CWG2MODE1>
extern volatile __bit CWG2MODE1 __attribute__((address(0x30D1))); // @ (0x61A * 8 + 1)

// CWG2CON0<CWG2MODE2>
extern volatile __bit CWG2MODE2 __attribute__((address(0x30D2))); // @ (0x61A * 8 + 2)

// CWG2STR<CWG2OVRA>
extern volatile __bit CWG2OVRA __attribute__((address(0x30F4))); // @ (0x61E * 8 + 4)

// CWG2STR<CWG2OVRB>
extern volatile __bit CWG2OVRB __attribute__((address(0x30F5))); // @ (0x61E * 8 + 5)

// CWG2STR<CWG2OVRC>
extern volatile __bit CWG2OVRC __attribute__((address(0x30F6))); // @ (0x61E * 8 + 6)

// CWG2STR<CWG2OVRD>
extern volatile __bit CWG2OVRD __attribute__((address(0x30F7))); // @ (0x61E * 8 + 7)

// CWG2CON1<CWG2POLA>
extern volatile __bit CWG2POLA __attribute__((address(0x30D8))); // @ (0x61B * 8 + 0)

// CWG2CON1<CWG2POLB>
extern volatile __bit CWG2POLB __attribute__((address(0x30D9))); // @ (0x61B * 8 + 1)

// CWG2CON1<CWG2POLC>
extern volatile __bit CWG2POLC __attribute__((address(0x30DA))); // @ (0x61B * 8 + 2)

// CWG2CON1<CWG2POLD>
extern volatile __bit CWG2POLD __attribute__((address(0x30DB))); // @ (0x61B * 8 + 3)

// CWG2PPS<CWG2PPS0>
extern volatile __bit CWG2PPS0 __attribute__((address(0x7590))); // @ (0xEB2 * 8 + 0)

// CWG2PPS<CWG2PPS1>
extern volatile __bit CWG2PPS1 __attribute__((address(0x7591))); // @ (0xEB2 * 8 + 1)

// CWG2PPS<CWG2PPS2>
extern volatile __bit CWG2PPS2 __attribute__((address(0x7592))); // @ (0xEB2 * 8 + 2)

// CWG2PPS<CWG2PPS3>
extern volatile __bit CWG2PPS3 __attribute__((address(0x7593))); // @ (0xEB2 * 8 + 3)

// CWG2PPS<CWG2PPS4>
extern volatile __bit CWG2PPS4 __attribute__((address(0x7594))); // @ (0xEB2 * 8 + 4)

// CWG2AS0<CWG2REN>
extern volatile __bit CWG2REN __attribute__((address(0x30E6))); // @ (0x61C * 8 + 6)

// CWG2AS0<CWG2SHUTDOWN>
extern volatile __bit CWG2SHUTDOWN __attribute__((address(0x30E7))); // @ (0x61C * 8 + 7)

// CWG2STR<CWG2STRA>
extern volatile __bit CWG2STRA __attribute__((address(0x30F0))); // @ (0x61E * 8 + 0)

// CWG2STR<CWG2STRB>
extern volatile __bit CWG2STRB __attribute__((address(0x30F1))); // @ (0x61E * 8 + 1)

// CWG2STR<CWG2STRC>
extern volatile __bit CWG2STRC __attribute__((address(0x30F2))); // @ (0x61E * 8 + 2)

// CWG2STR<CWG2STRD>
extern volatile __bit CWG2STRD __attribute__((address(0x30F3))); // @ (0x61E * 8 + 3)

// CWG3CLKCON<CWG3CS>
extern volatile __bit CWG3CS __attribute__((address(0x3460))); // @ (0x68C * 8 + 0)

// CWG3DBF<CWG3DBF0>
extern volatile __bit CWG3DBF0 __attribute__((address(0x3478))); // @ (0x68F * 8 + 0)

// CWG3DBF<CWG3DBF1>
extern volatile __bit CWG3DBF1 __attribute__((address(0x3479))); // @ (0x68F * 8 + 1)

// CWG3DBF<CWG3DBF2>
extern volatile __bit CWG3DBF2 __attribute__((address(0x347A))); // @ (0x68F * 8 + 2)

// CWG3DBF<CWG3DBF3>
extern volatile __bit CWG3DBF3 __attribute__((address(0x347B))); // @ (0x68F * 8 + 3)

// CWG3DBF<CWG3DBF4>
extern volatile __bit CWG3DBF4 __attribute__((address(0x347C))); // @ (0x68F * 8 + 4)

// CWG3DBF<CWG3DBF5>
extern volatile __bit CWG3DBF5 __attribute__((address(0x347D))); // @ (0x68F * 8 + 5)

// CWG3DBR<CWG3DBR0>
extern volatile __bit CWG3DBR0 __attribute__((address(0x3470))); // @ (0x68E * 8 + 0)

// CWG3DBR<CWG3DBR1>
extern volatile __bit CWG3DBR1 __attribute__((address(0x3471))); // @ (0x68E * 8 + 1)

// CWG3DBR<CWG3DBR2>
extern volatile __bit CWG3DBR2 __attribute__((address(0x3472))); // @ (0x68E * 8 + 2)

// CWG3DBR<CWG3DBR3>
extern volatile __bit CWG3DBR3 __attribute__((address(0x3473))); // @ (0x68E * 8 + 3)

// CWG3DBR<CWG3DBR4>
extern volatile __bit CWG3DBR4 __attribute__((address(0x3474))); // @ (0x68E * 8 + 4)

// CWG3DBR<CWG3DBR5>
extern volatile __bit CWG3DBR5 __attribute__((address(0x3475))); // @ (0x68E * 8 + 5)

// CWG3CON0<CWG3EN>
extern volatile __bit CWG3EN __attribute__((address(0x3487))); // @ (0x690 * 8 + 7)

// PIE7<CWG3IE>
extern volatile __bit CWG3IE __attribute__((address(0x38EA))); // @ (0x71D * 8 + 2)

// PIR7<CWG3IF>
extern volatile __bit CWG3IF __attribute__((address(0x389A))); // @ (0x713 * 8 + 2)

// CWG3CON1<CWG3IN>
extern volatile __bit CWG3IN __attribute__((address(0x348D))); // @ (0x691 * 8 + 5)

// CWG3ISM<CWG3ISM0>
extern volatile __bit CWG3ISM0 __attribute__((address(0x3468))); // @ (0x68D * 8 + 0)

// CWG3ISM<CWG3ISM1>
extern volatile __bit CWG3ISM1 __attribute__((address(0x3469))); // @ (0x68D * 8 + 1)

// CWG3ISM<CWG3ISM2>
extern volatile __bit CWG3ISM2 __attribute__((address(0x346A))); // @ (0x68D * 8 + 2)

// CWG3ISM<CWG3ISM3>
extern volatile __bit CWG3ISM3 __attribute__((address(0x346B))); // @ (0x68D * 8 + 3)

// CWG3CON0<CWG3LD>
extern volatile __bit CWG3LD __attribute__((address(0x3486))); // @ (0x690 * 8 + 6)

// CWG3AS0<CWG3LSAC0>
extern volatile __bit CWG3LSAC0 __attribute__((address(0x3492))); // @ (0x692 * 8 + 2)

// CWG3AS0<CWG3LSAC1>
extern volatile __bit CWG3LSAC1 __attribute__((address(0x3493))); // @ (0x692 * 8 + 3)

// CWG3AS0<CWG3LSBD0>
extern volatile __bit CWG3LSBD0 __attribute__((address(0x3494))); // @ (0x692 * 8 + 4)

// CWG3AS0<CWG3LSBD1>
extern volatile __bit CWG3LSBD1 __attribute__((address(0x3495))); // @ (0x692 * 8 + 5)

// PMD4<CWG3MD>
extern volatile __bit CWG3MD __attribute__((address(0x3CD2))); // @ (0x79A * 8 + 2)

// CWG3CON0<CWG3MODE0>
extern volatile __bit CWG3MODE0 __attribute__((address(0x3480))); // @ (0x690 * 8 + 0)

// CWG3CON0<CWG3MODE1>
extern volatile __bit CWG3MODE1 __attribute__((address(0x3481))); // @ (0x690 * 8 + 1)

// CWG3CON0<CWG3MODE2>
extern volatile __bit CWG3MODE2 __attribute__((address(0x3482))); // @ (0x690 * 8 + 2)

// CWG3STR<CWG3OVRA>
extern volatile __bit CWG3OVRA __attribute__((address(0x34A4))); // @ (0x694 * 8 + 4)

// CWG3STR<CWG3OVRB>
extern volatile __bit CWG3OVRB __attribute__((address(0x34A5))); // @ (0x694 * 8 + 5)

// CWG3STR<CWG3OVRC>
extern volatile __bit CWG3OVRC __attribute__((address(0x34A6))); // @ (0x694 * 8 + 6)

// CWG3STR<CWG3OVRD>
extern volatile __bit CWG3OVRD __attribute__((address(0x34A7))); // @ (0x694 * 8 + 7)

// CWG3CON1<CWG3POLA>
extern volatile __bit CWG3POLA __attribute__((address(0x3488))); // @ (0x691 * 8 + 0)

// CWG3CON1<CWG3POLB>
extern volatile __bit CWG3POLB __attribute__((address(0x3489))); // @ (0x691 * 8 + 1)

// CWG3CON1<CWG3POLC>
extern volatile __bit CWG3POLC __attribute__((address(0x348A))); // @ (0x691 * 8 + 2)

// CWG3CON1<CWG3POLD>
extern volatile __bit CWG3POLD __attribute__((address(0x348B))); // @ (0x691 * 8 + 3)

// CWG3PPS<CWG3PPS0>
extern volatile __bit CWG3PPS0 __attribute__((address(0x7598))); // @ (0xEB3 * 8 + 0)

// CWG3PPS<CWG3PPS1>
extern volatile __bit CWG3PPS1 __attribute__((address(0x7599))); // @ (0xEB3 * 8 + 1)

// CWG3PPS<CWG3PPS2>
extern volatile __bit CWG3PPS2 __attribute__((address(0x759A))); // @ (0xEB3 * 8 + 2)

// CWG3PPS<CWG3PPS3>
extern volatile __bit CWG3PPS3 __attribute__((address(0x759B))); // @ (0xEB3 * 8 + 3)

// CWG3PPS<CWG3PPS4>
extern volatile __bit CWG3PPS4 __attribute__((address(0x759C))); // @ (0xEB3 * 8 + 4)

// CWG3AS0<CWG3REN>
extern volatile __bit CWG3REN __attribute__((address(0x3496))); // @ (0x692 * 8 + 6)

// CWG3AS0<CWG3SHUTDOWN>
extern volatile __bit CWG3SHUTDOWN __attribute__((address(0x3497))); // @ (0x692 * 8 + 7)

// CWG3STR<CWG3STRA>
extern volatile __bit CWG3STRA __attribute__((address(0x34A0))); // @ (0x694 * 8 + 0)

// CWG3STR<CWG3STRB>
extern volatile __bit CWG3STRB __attribute__((address(0x34A1))); // @ (0x694 * 8 + 1)

// CWG3STR<CWG3STRC>
extern volatile __bit CWG3STRC __attribute__((address(0x34A2))); // @ (0x694 * 8 + 2)

// CWG3STR<CWG3STRD>
extern volatile __bit CWG3STRD __attribute__((address(0x34A3))); // @ (0x694 * 8 + 3)

// STATUS_SHAD<C_SHAD>
extern volatile __bit C_SHAD __attribute__((address(0x7F20))); // @ (0xFE4 * 8 + 0)

// SSP1STAT<DA1>
extern volatile __bit DA1 __attribute__((address(0xC7D))); // @ (0x18F * 8 + 5)

// SSP2STAT<DA2>
extern volatile __bit DA2 __attribute__((address(0xCCD))); // @ (0x199 * 8 + 5)

// SCANCON0<DABORT>
extern volatile __bit DABORT __attribute__((address(0x2084))); // @ (0x410 * 8 + 4)

// DAC1CON0<DAC1EN>
extern volatile __bit DAC1EN __attribute__((address(0x4877))); // @ (0x90E * 8 + 7)

// DAC1CON0<DAC1NSS>
extern volatile __bit DAC1NSS __attribute__((address(0x4870))); // @ (0x90E * 8 + 0)

// DAC1CON0<DAC1OE1>
extern volatile __bit DAC1OE1 __attribute__((address(0x4875))); // @ (0x90E * 8 + 5)

// DAC1CON0<DAC1OE2>
extern volatile __bit DAC1OE2 __attribute__((address(0x4874))); // @ (0x90E * 8 + 4)

// DAC1CON0<DAC1PSS0>
extern volatile __bit DAC1PSS0 __attribute__((address(0x4872))); // @ (0x90E * 8 + 2)

// DAC1CON0<DAC1PSS1>
extern volatile __bit DAC1PSS1 __attribute__((address(0x4873))); // @ (0x90E * 8 + 3)

// DAC1CON1<DAC1R0>
extern volatile __bit DAC1R0 __attribute__((address(0x4878))); // @ (0x90F * 8 + 0)

// DAC1CON1<DAC1R1>
extern volatile __bit DAC1R1 __attribute__((address(0x4879))); // @ (0x90F * 8 + 1)

// DAC1CON1<DAC1R2>
extern volatile __bit DAC1R2 __attribute__((address(0x487A))); // @ (0x90F * 8 + 2)

// DAC1CON1<DAC1R3>
extern volatile __bit DAC1R3 __attribute__((address(0x487B))); // @ (0x90F * 8 + 3)

// DAC1CON1<DAC1R4>
extern volatile __bit DAC1R4 __attribute__((address(0x487C))); // @ (0x90F * 8 + 4)

// PMD2<DACMD>
extern volatile __bit DACMD __attribute__((address(0x3CC6))); // @ (0x798 * 8 + 6)

// CRCDATL<DATA0>
extern volatile __bit DATA0 __attribute__((address(0x20B0))); // @ (0x416 * 8 + 0)

// CRCDATL<DATA1>
extern volatile __bit DATA1 __attribute__((address(0x20B1))); // @ (0x416 * 8 + 1)

// CRCDATH<DATA10>
extern volatile __bit DATA10 __attribute__((address(0x20BA))); // @ (0x417 * 8 + 2)

// CRCDATH<DATA11>
extern volatile __bit DATA11 __attribute__((address(0x20BB))); // @ (0x417 * 8 + 3)

// CRCDATH<DATA12>
extern volatile __bit DATA12 __attribute__((address(0x20BC))); // @ (0x417 * 8 + 4)

// CRCDATH<DATA13>
extern volatile __bit DATA13 __attribute__((address(0x20BD))); // @ (0x417 * 8 + 5)

// CRCDATH<DATA14>
extern volatile __bit DATA14 __attribute__((address(0x20BE))); // @ (0x417 * 8 + 6)

// CRCDATH<DATA15>
extern volatile __bit DATA15 __attribute__((address(0x20BF))); // @ (0x417 * 8 + 7)

// CRCDATL<DATA2>
extern volatile __bit DATA2 __attribute__((address(0x20B2))); // @ (0x416 * 8 + 2)

// CRCDATL<DATA3>
extern volatile __bit DATA3 __attribute__((address(0x20B3))); // @ (0x416 * 8 + 3)

// CRCDATL<DATA4>
extern volatile __bit DATA4 __attribute__((address(0x20B4))); // @ (0x416 * 8 + 4)

// CRCDATL<DATA5>
extern volatile __bit DATA5 __attribute__((address(0x20B5))); // @ (0x416 * 8 + 5)

// CRCDATL<DATA6>
extern volatile __bit DATA6 __attribute__((address(0x20B6))); // @ (0x416 * 8 + 6)

// CRCDATL<DATA7>
extern volatile __bit DATA7 __attribute__((address(0x20B7))); // @ (0x416 * 8 + 7)

// CRCDATH<DATA8>
extern volatile __bit DATA8 __attribute__((address(0x20B8))); // @ (0x417 * 8 + 0)

// CRCDATH<DATA9>
extern volatile __bit DATA9 __attribute__((address(0x20B9))); // @ (0x417 * 8 + 1)

// SSP1STAT<DATA_ADDRESS1>
extern volatile __bit DATA_ADDRESS1 __attribute__((address(0xC7D))); // @ (0x18F * 8 + 5)

// SSP2STAT<DATA_ADDRESS2>
extern volatile __bit DATA_ADDRESS2 __attribute__((address(0xCCD))); // @ (0x199 * 8 + 5)

// STATUS<DC>
extern volatile __bit DC __attribute__((address(0x19))); // @ (0x3 * 8 + 1)

// STATUS_SHAD<DC_SHAD>
extern volatile __bit DC_SHAD __attribute__((address(0x7F21))); // @ (0xFE4 * 8 + 1)

// CRCCON1<DLEN0>
extern volatile __bit DLEN0 __attribute__((address(0x20FC))); // @ (0x41F * 8 + 4)

// CRCCON1<DLEN1>
extern volatile __bit DLEN1 __attribute__((address(0x20FD))); // @ (0x41F * 8 + 5)

// CRCCON1<DLEN2>
extern volatile __bit DLEN2 __attribute__((address(0x20FE))); // @ (0x41F * 8 + 6)

// CRCCON1<DLEN3>
extern volatile __bit DLEN3 __attribute__((address(0x20FF))); // @ (0x41F * 8 + 7)

// CPUDOZE<DOE>
extern volatile __bit DOE __attribute__((address(0x4464))); // @ (0x88C * 8 + 4)

// ADCON0<DONE>
extern volatile __bit DONE __attribute__((address(0x498))); // @ (0x93 * 8 + 0)

// CPUDOZE<DOZE0>
extern volatile __bit DOZE0 __attribute__((address(0x4460))); // @ (0x88C * 8 + 0)

// CPUDOZE<DOZE1>
extern volatile __bit DOZE1 __attribute__((address(0x4461))); // @ (0x88C * 8 + 1)

// CPUDOZE<DOZE2>
extern volatile __bit DOZE2 __attribute__((address(0x4462))); // @ (0x88C * 8 + 2)

// CPUDOZE<DOZEN>
extern volatile __bit DOZEN __attribute__((address(0x4466))); // @ (0x88C * 8 + 6)

// PMD5<DSMMD>
extern volatile __bit DSMMD __attribute__((address(0x3CD8))); // @ (0x79B * 8 + 0)

// SSP1STAT<D_A1>
extern volatile __bit D_A1 __attribute__((address(0xC7D))); // @ (0x18F * 8 + 5)

// SSP2STAT<D_A2>
extern volatile __bit D_A2 __attribute__((address(0xCCD))); // @ (0x199 * 8 + 5)

// SSP1STAT<D_nA1>
extern volatile __bit D_nA1 __attribute__((address(0xC7D))); // @ (0x18F * 8 + 5)

// SSP2STAT<D_nA2>
extern volatile __bit D_nA2 __attribute__((address(0xCCD))); // @ (0x199 * 8 + 5)

// OSCEN<EXTOEN>
extern volatile __bit EXTOEN __attribute__((address(0x448F))); // @ (0x891 * 8 + 7)

// OSCSTAT<EXTOR>
extern volatile __bit EXTOR __attribute__((address(0x4487))); // @ (0x890 * 8 + 7)

// RC1STA<FERR>
extern volatile __bit FERR __attribute__((address(0x8EA))); // @ (0x11D * 8 + 2)

// NVMCON1<FREE>
extern volatile __bit FREE __attribute__((address(0x40F4))); // @ (0x81E * 8 + 4)

// CRCCON0<FULL>
extern volatile __bit FULL __attribute__((address(0x20F0))); // @ (0x41E * 8 + 0)

// FVRCON<FVREN>
extern volatile __bit FVREN __attribute__((address(0x4867))); // @ (0x90C * 8 + 7)

// PMD0<FVRMD>
extern volatile __bit FVRMD __attribute__((address(0x3CB6))); // @ (0x796 * 8 + 6)

// FVRCON<FVRRDY>
extern volatile __bit FVRRDY __attribute__((address(0x4866))); // @ (0x90C * 8 + 6)

// CWG1CON0<G1EN>
extern volatile __bit G1EN __attribute__((address(0x3087))); // @ (0x610 * 8 + 7)

// CWG2CON0<G2EN>
extern volatile __bit G2EN __attribute__((address(0x30D7))); // @ (0x61A * 8 + 7)

// CWG3CON0<G3EN>
extern volatile __bit G3EN __attribute__((address(0x3487))); // @ (0x690 * 8 + 7)

// SSP1CON2<GCEN1>
extern volatile __bit GCEN1 __attribute__((address(0xC8F))); // @ (0x191 * 8 + 7)

// SSP2CON2<GCEN2>
extern volatile __bit GCEN2 __attribute__((address(0xCDF))); // @ (0x19B * 8 + 7)

// INTCON<GIE>
extern volatile __bit GIE __attribute__((address(0x5F))); // @ (0xB * 8 + 7)

// ADCON0<GO_nDONE>
extern volatile __bit GO_nDONE __attribute__((address(0x498))); // @ (0x93 * 8 + 0)

// SCANHADRL<HADR0>
extern volatile __bit HADR0 __attribute__((address(0x2070))); // @ (0x40E * 8 + 0)

// SCANHADRL<HADR1>
extern volatile __bit HADR1 __attribute__((address(0x2071))); // @ (0x40E * 8 + 1)

// SCANHADRH<HADR10>
extern volatile __bit HADR10 __attribute__((address(0x207A))); // @ (0x40F * 8 + 2)

// SCANHADRH<HADR11>
extern volatile __bit HADR11 __attribute__((address(0x207B))); // @ (0x40F * 8 + 3)

// SCANHADRH<HADR12>
extern volatile __bit HADR12 __attribute__((address(0x207C))); // @ (0x40F * 8 + 4)

// SCANHADRH<HADR13>
extern volatile __bit HADR13 __attribute__((address(0x207D))); // @ (0x40F * 8 + 5)

// SCANHADRH<HADR14>
extern volatile __bit HADR14 __attribute__((address(0x207E))); // @ (0x40F * 8 + 6)

// SCANHADRH<HADR15>
extern volatile __bit HADR15 __attribute__((address(0x207F))); // @ (0x40F * 8 + 7)

// SCANHADRL<HADR2>
extern volatile __bit HADR2 __attribute__((address(0x2072))); // @ (0x40E * 8 + 2)

// SCANHADRL<HADR3>
extern volatile __bit HADR3 __attribute__((address(0x2073))); // @ (0x40E * 8 + 3)

// SCANHADRL<HADR4>
extern volatile __bit HADR4 __attribute__((address(0x2074))); // @ (0x40E * 8 + 4)

// SCANHADRL<HADR5>
extern volatile __bit HADR5 __attribute__((address(0x2075))); // @ (0x40E * 8 + 5)

// SCANHADRL<HADR6>
extern volatile __bit HADR6 __attribute__((address(0x2076))); // @ (0x40E * 8 + 6)

// SCANHADRL<HADR7>
extern volatile __bit HADR7 __attribute__((address(0x2077))); // @ (0x40E * 8 + 7)

// SCANHADRH<HADR8>
extern volatile __bit HADR8 __attribute__((address(0x2078))); // @ (0x40F * 8 + 0)

// SCANHADRH<HADR9>
extern volatile __bit HADR9 __attribute__((address(0x2079))); // @ (0x40F * 8 + 1)

// OSCFRQ<HFFRQ0>
extern volatile __bit HFFRQ0 __attribute__((address(0x4498))); // @ (0x893 * 8 + 0)

// OSCFRQ<HFFRQ1>
extern volatile __bit HFFRQ1 __attribute__((address(0x4499))); // @ (0x893 * 8 + 1)

// OSCFRQ<HFFRQ2>
extern volatile __bit HFFRQ2 __attribute__((address(0x449A))); // @ (0x893 * 8 + 2)

// OSCEN<HFOEN>
extern volatile __bit HFOEN __attribute__((address(0x448E))); // @ (0x891 * 8 + 6)

// OSCSTAT<HFOR>
extern volatile __bit HFOR __attribute__((address(0x4486))); // @ (0x890 * 8 + 6)

// OSCTUNE<HFTUN0>
extern volatile __bit HFTUN0 __attribute__((address(0x4490))); // @ (0x892 * 8 + 0)

// OSCTUNE<HFTUN1>
extern volatile __bit HFTUN1 __attribute__((address(0x4491))); // @ (0x892 * 8 + 1)

// OSCTUNE<HFTUN2>
extern volatile __bit HFTUN2 __attribute__((address(0x4492))); // @ (0x892 * 8 + 2)

// OSCTUNE<HFTUN3>
extern volatile __bit HFTUN3 __attribute__((address(0x4493))); // @ (0x892 * 8 + 3)

// OSCTUNE<HFTUN4>
extern volatile __bit HFTUN4 __attribute__((address(0x4494))); // @ (0x892 * 8 + 4)

// OSCTUNE<HFTUN5>
extern volatile __bit HFTUN5 __attribute__((address(0x4495))); // @ (0x892 * 8 + 5)

// SSP1STAT<I2C_DAT1>
extern volatile __bit I2C_DAT1 __attribute__((address(0xC7D))); // @ (0x18F * 8 + 5)

// SSP2STAT<I2C_DAT2>
extern volatile __bit I2C_DAT2 __attribute__((address(0xCCD))); // @ (0x199 * 8 + 5)

// SSP1STAT<I2C_READ1>
extern volatile __bit I2C_READ1 __attribute__((address(0xC7A))); // @ (0x18F * 8 + 2)

// SSP2STAT<I2C_READ2>
extern volatile __bit I2C_READ2 __attribute__((address(0xCCA))); // @ (0x199 * 8 + 2)

// SSP1STAT<I2C_START1>
extern volatile __bit I2C_START1 __attribute__((address(0xC7B))); // @ (0x18F * 8 + 3)

// SSP2STAT<I2C_START2>
extern volatile __bit I2C_START2 __attribute__((address(0xCCB))); // @ (0x199 * 8 + 3)

// CPUDOZE<IDLEN>
extern volatile __bit IDLEN __attribute__((address(0x4467))); // @ (0x88C * 8 + 7)

// INLVLA<INLVLA0>
extern volatile __bit INLVLA0 __attribute__((address(0x79E0))); // @ (0xF3C * 8 + 0)

// INLVLA<INLVLA1>
extern volatile __bit INLVLA1 __attribute__((address(0x79E1))); // @ (0xF3C * 8 + 1)

// INLVLA<INLVLA2>
extern volatile __bit INLVLA2 __attribute__((address(0x79E2))); // @ (0xF3C * 8 + 2)

// INLVLA<INLVLA3>
extern volatile __bit INLVLA3 __attribute__((address(0x79E3))); // @ (0xF3C * 8 + 3)

// INLVLA<INLVLA4>
extern volatile __bit INLVLA4 __attribute__((address(0x79E4))); // @ (0xF3C * 8 + 4)

// INLVLA<INLVLA5>
extern volatile __bit INLVLA5 __attribute__((address(0x79E5))); // @ (0xF3C * 8 + 5)

// INLVLA<INLVLA6>
extern volatile __bit INLVLA6 __attribute__((address(0x79E6))); // @ (0xF3C * 8 + 6)

// INLVLA<INLVLA7>
extern volatile __bit INLVLA7 __attribute__((address(0x79E7))); // @ (0xF3C * 8 + 7)

// INLVLB<INLVLB0>
extern volatile __bit INLVLB0 __attribute__((address(0x7A38))); // @ (0xF47 * 8 + 0)

// INLVLB<INLVLB1>
extern volatile __bit INLVLB1 __attribute__((address(0x7A39))); // @ (0xF47 * 8 + 1)

// INLVLB<INLVLB2>
extern volatile __bit INLVLB2 __attribute__((address(0x7A3A))); // @ (0xF47 * 8 + 2)

// INLVLB<INLVLB3>
extern volatile __bit INLVLB3 __attribute__((address(0x7A3B))); // @ (0xF47 * 8 + 3)

// INLVLB<INLVLB4>
extern volatile __bit INLVLB4 __attribute__((address(0x7A3C))); // @ (0xF47 * 8 + 4)

// INLVLB<INLVLB5>
extern volatile __bit INLVLB5 __attribute__((address(0x7A3D))); // @ (0xF47 * 8 + 5)

// INLVLB<INLVLB6>
extern volatile __bit INLVLB6 __attribute__((address(0x7A3E))); // @ (0xF47 * 8 + 6)

// INLVLB<INLVLB7>
extern volatile __bit INLVLB7 __attribute__((address(0x7A3F))); // @ (0xF47 * 8 + 7)

// INLVLC<INLVLC0>
extern volatile __bit INLVLC0 __attribute__((address(0x7A90))); // @ (0xF52 * 8 + 0)

// INLVLC<INLVLC1>
extern volatile __bit INLVLC1 __attribute__((address(0x7A91))); // @ (0xF52 * 8 + 1)

// INLVLC<INLVLC2>
extern volatile __bit INLVLC2 __attribute__((address(0x7A92))); // @ (0xF52 * 8 + 2)

// INLVLC<INLVLC3>
extern volatile __bit INLVLC3 __attribute__((address(0x7A93))); // @ (0xF52 * 8 + 3)

// INLVLC<INLVLC4>
extern volatile __bit INLVLC4 __attribute__((address(0x7A94))); // @ (0xF52 * 8 + 4)

// INLVLC<INLVLC5>
extern volatile __bit INLVLC5 __attribute__((address(0x7A95))); // @ (0xF52 * 8 + 5)

// INLVLC<INLVLC6>
extern volatile __bit INLVLC6 __attribute__((address(0x7A96))); // @ (0xF52 * 8 + 6)

// INLVLC<INLVLC7>
extern volatile __bit INLVLC7 __attribute__((address(0x7A97))); // @ (0xF52 * 8 + 7)

// INLVLE<INLVLE3>
extern volatile __bit INLVLE3 __attribute__((address(0x7B43))); // @ (0xF68 * 8 + 3)

// PIE0<INTE>
extern volatile __bit INTE __attribute__((address(0x38B0))); // @ (0x716 * 8 + 0)

// INTCON<INTEDG>
extern volatile __bit INTEDG __attribute__((address(0x58))); // @ (0xB * 8 + 0)

// PIR0<INTF>
extern volatile __bit INTF __attribute__((address(0x3860))); // @ (0x70C * 8 + 0)

// SCANCON0<INTM>
extern volatile __bit INTM __attribute__((address(0x2083))); // @ (0x410 * 8 + 3)

// INTPPS<INTPPS0>
extern volatile __bit INTPPS0 __attribute__((address(0x7480))); // @ (0xE90 * 8 + 0)

// INTPPS<INTPPS1>
extern volatile __bit INTPPS1 __attribute__((address(0x7481))); // @ (0xE90 * 8 + 1)

// INTPPS<INTPPS2>
extern volatile __bit INTPPS2 __attribute__((address(0x7482))); // @ (0xE90 * 8 + 2)

// INTPPS<INTPPS3>
extern volatile __bit INTPPS3 __attribute__((address(0x7483))); // @ (0xE90 * 8 + 3)

// SCANCON0<INVALID>
extern volatile __bit INVALID __attribute__((address(0x2084))); // @ (0x410 * 8 + 4)

// IOCAF<IOCAF0>
extern volatile __bit IOCAF0 __attribute__((address(0x79F8))); // @ (0xF3F * 8 + 0)

// IOCAF<IOCAF1>
extern volatile __bit IOCAF1 __attribute__((address(0x79F9))); // @ (0xF3F * 8 + 1)

// IOCAF<IOCAF2>
extern volatile __bit IOCAF2 __attribute__((address(0x79FA))); // @ (0xF3F * 8 + 2)

// IOCAF<IOCAF3>
extern volatile __bit IOCAF3 __attribute__((address(0x79FB))); // @ (0xF3F * 8 + 3)

// IOCAF<IOCAF4>
extern volatile __bit IOCAF4 __attribute__((address(0x79FC))); // @ (0xF3F * 8 + 4)

// IOCAF<IOCAF5>
extern volatile __bit IOCAF5 __attribute__((address(0x79FD))); // @ (0xF3F * 8 + 5)

// IOCAF<IOCAF6>
extern volatile __bit IOCAF6 __attribute__((address(0x79FE))); // @ (0xF3F * 8 + 6)

// IOCAF<IOCAF7>
extern volatile __bit IOCAF7 __attribute__((address(0x79FF))); // @ (0xF3F * 8 + 7)

// IOCAN<IOCAN0>
extern volatile __bit IOCAN0 __attribute__((address(0x79F0))); // @ (0xF3E * 8 + 0)

// IOCAN<IOCAN1>
extern volatile __bit IOCAN1 __attribute__((address(0x79F1))); // @ (0xF3E * 8 + 1)

// IOCAN<IOCAN2>
extern volatile __bit IOCAN2 __attribute__((address(0x79F2))); // @ (0xF3E * 8 + 2)

// IOCAN<IOCAN3>
extern volatile __bit IOCAN3 __attribute__((address(0x79F3))); // @ (0xF3E * 8 + 3)

// IOCAN<IOCAN4>
extern volatile __bit IOCAN4 __attribute__((address(0x79F4))); // @ (0xF3E * 8 + 4)

// IOCAN<IOCAN5>
extern volatile __bit IOCAN5 __attribute__((address(0x79F5))); // @ (0xF3E * 8 + 5)

// IOCAN<IOCAN6>
extern volatile __bit IOCAN6 __attribute__((address(0x79F6))); // @ (0xF3E * 8 + 6)

// IOCAN<IOCAN7>
extern volatile __bit IOCAN7 __attribute__((address(0x79F7))); // @ (0xF3E * 8 + 7)

// IOCAP<IOCAP0>
extern volatile __bit IOCAP0 __attribute__((address(0x79E8))); // @ (0xF3D * 8 + 0)

// IOCAP<IOCAP1>
extern volatile __bit IOCAP1 __attribute__((address(0x79E9))); // @ (0xF3D * 8 + 1)

// IOCAP<IOCAP2>
extern volatile __bit IOCAP2 __attribute__((address(0x79EA))); // @ (0xF3D * 8 + 2)

// IOCAP<IOCAP3>
extern volatile __bit IOCAP3 __attribute__((address(0x79EB))); // @ (0xF3D * 8 + 3)

// IOCAP<IOCAP4>
extern volatile __bit IOCAP4 __attribute__((address(0x79EC))); // @ (0xF3D * 8 + 4)

// IOCAP<IOCAP5>
extern volatile __bit IOCAP5 __attribute__((address(0x79ED))); // @ (0xF3D * 8 + 5)

// IOCAP<IOCAP6>
extern volatile __bit IOCAP6 __attribute__((address(0x79EE))); // @ (0xF3D * 8 + 6)

// IOCAP<IOCAP7>
extern volatile __bit IOCAP7 __attribute__((address(0x79EF))); // @ (0xF3D * 8 + 7)

// IOCBF<IOCBF0>
extern volatile __bit IOCBF0 __attribute__((address(0x7A50))); // @ (0xF4A * 8 + 0)

// IOCBF<IOCBF1>
extern volatile __bit IOCBF1 __attribute__((address(0x7A51))); // @ (0xF4A * 8 + 1)

// IOCBF<IOCBF2>
extern volatile __bit IOCBF2 __attribute__((address(0x7A52))); // @ (0xF4A * 8 + 2)

// IOCBF<IOCBF3>
extern volatile __bit IOCBF3 __attribute__((address(0x7A53))); // @ (0xF4A * 8 + 3)

// IOCBF<IOCBF4>
extern volatile __bit IOCBF4 __attribute__((address(0x7A54))); // @ (0xF4A * 8 + 4)

// IOCBF<IOCBF5>
extern volatile __bit IOCBF5 __attribute__((address(0x7A55))); // @ (0xF4A * 8 + 5)

// IOCBF<IOCBF6>
extern volatile __bit IOCBF6 __attribute__((address(0x7A56))); // @ (0xF4A * 8 + 6)

// IOCBF<IOCBF7>
extern volatile __bit IOCBF7 __attribute__((address(0x7A57))); // @ (0xF4A * 8 + 7)

// IOCBN<IOCBN0>
extern volatile __bit IOCBN0 __attribute__((address(0x7A48))); // @ (0xF49 * 8 + 0)

// IOCBN<IOCBN1>
extern volatile __bit IOCBN1 __attribute__((address(0x7A49))); // @ (0xF49 * 8 + 1)

// IOCBN<IOCBN2>
extern volatile __bit IOCBN2 __attribute__((address(0x7A4A))); // @ (0xF49 * 8 + 2)

// IOCBN<IOCBN3>
extern volatile __bit IOCBN3 __attribute__((address(0x7A4B))); // @ (0xF49 * 8 + 3)

// IOCBN<IOCBN4>
extern volatile __bit IOCBN4 __attribute__((address(0x7A4C))); // @ (0xF49 * 8 + 4)

// IOCBN<IOCBN5>
extern volatile __bit IOCBN5 __attribute__((address(0x7A4D))); // @ (0xF49 * 8 + 5)

// IOCBN<IOCBN6>
extern volatile __bit IOCBN6 __attribute__((address(0x7A4E))); // @ (0xF49 * 8 + 6)

// IOCBN<IOCBN7>
extern volatile __bit IOCBN7 __attribute__((address(0x7A4F))); // @ (0xF49 * 8 + 7)

// IOCBP<IOCBP0>
extern volatile __bit IOCBP0 __attribute__((address(0x7A40))); // @ (0xF48 * 8 + 0)

// IOCBP<IOCBP1>
extern volatile __bit IOCBP1 __attribute__((address(0x7A41))); // @ (0xF48 * 8 + 1)

// IOCBP<IOCBP2>
extern volatile __bit IOCBP2 __attribute__((address(0x7A42))); // @ (0xF48 * 8 + 2)

// IOCBP<IOCBP3>
extern volatile __bit IOCBP3 __attribute__((address(0x7A43))); // @ (0xF48 * 8 + 3)

// IOCBP<IOCBP4>
extern volatile __bit IOCBP4 __attribute__((address(0x7A44))); // @ (0xF48 * 8 + 4)

// IOCBP<IOCBP5>
extern volatile __bit IOCBP5 __attribute__((address(0x7A45))); // @ (0xF48 * 8 + 5)

// IOCBP<IOCBP6>
extern volatile __bit IOCBP6 __attribute__((address(0x7A46))); // @ (0xF48 * 8 + 6)

// IOCBP<IOCBP7>
extern volatile __bit IOCBP7 __attribute__((address(0x7A47))); // @ (0xF48 * 8 + 7)

// IOCCF<IOCCF0>
extern volatile __bit IOCCF0 __attribute__((address(0x7AA8))); // @ (0xF55 * 8 + 0)

// IOCCF<IOCCF1>
extern volatile __bit IOCCF1 __attribute__((address(0x7AA9))); // @ (0xF55 * 8 + 1)

// IOCCF<IOCCF2>
extern volatile __bit IOCCF2 __attribute__((address(0x7AAA))); // @ (0xF55 * 8 + 2)

// IOCCF<IOCCF3>
extern volatile __bit IOCCF3 __attribute__((address(0x7AAB))); // @ (0xF55 * 8 + 3)

// IOCCF<IOCCF4>
extern volatile __bit IOCCF4 __attribute__((address(0x7AAC))); // @ (0xF55 * 8 + 4)

// IOCCF<IOCCF5>
extern volatile __bit IOCCF5 __attribute__((address(0x7AAD))); // @ (0xF55 * 8 + 5)

// IOCCF<IOCCF6>
extern volatile __bit IOCCF6 __attribute__((address(0x7AAE))); // @ (0xF55 * 8 + 6)

// IOCCF<IOCCF7>
extern volatile __bit IOCCF7 __attribute__((address(0x7AAF))); // @ (0xF55 * 8 + 7)

// IOCCN<IOCCN0>
extern volatile __bit IOCCN0 __attribute__((address(0x7AA0))); // @ (0xF54 * 8 + 0)

// IOCCN<IOCCN1>
extern volatile __bit IOCCN1 __attribute__((address(0x7AA1))); // @ (0xF54 * 8 + 1)

// IOCCN<IOCCN2>
extern volatile __bit IOCCN2 __attribute__((address(0x7AA2))); // @ (0xF54 * 8 + 2)

// IOCCN<IOCCN3>
extern volatile __bit IOCCN3 __attribute__((address(0x7AA3))); // @ (0xF54 * 8 + 3)

// IOCCN<IOCCN4>
extern volatile __bit IOCCN4 __attribute__((address(0x7AA4))); // @ (0xF54 * 8 + 4)

// IOCCN<IOCCN5>
extern volatile __bit IOCCN5 __attribute__((address(0x7AA5))); // @ (0xF54 * 8 + 5)

// IOCCN<IOCCN6>
extern volatile __bit IOCCN6 __attribute__((address(0x7AA6))); // @ (0xF54 * 8 + 6)

// IOCCN<IOCCN7>
extern volatile __bit IOCCN7 __attribute__((address(0x7AA7))); // @ (0xF54 * 8 + 7)

// IOCCP<IOCCP0>
extern volatile __bit IOCCP0 __attribute__((address(0x7A98))); // @ (0xF53 * 8 + 0)

// IOCCP<IOCCP1>
extern volatile __bit IOCCP1 __attribute__((address(0x7A99))); // @ (0xF53 * 8 + 1)

// IOCCP<IOCCP2>
extern volatile __bit IOCCP2 __attribute__((address(0x7A9A))); // @ (0xF53 * 8 + 2)

// IOCCP<IOCCP3>
extern volatile __bit IOCCP3 __attribute__((address(0x7A9B))); // @ (0xF53 * 8 + 3)

// IOCCP<IOCCP4>
extern volatile __bit IOCCP4 __attribute__((address(0x7A9C))); // @ (0xF53 * 8 + 4)

// IOCCP<IOCCP5>
extern volatile __bit IOCCP5 __attribute__((address(0x7A9D))); // @ (0xF53 * 8 + 5)

// IOCCP<IOCCP6>
extern volatile __bit IOCCP6 __attribute__((address(0x7A9E))); // @ (0xF53 * 8 + 6)

// IOCCP<IOCCP7>
extern volatile __bit IOCCP7 __attribute__((address(0x7A9F))); // @ (0xF53 * 8 + 7)

// IOCEF<IOCEF3>
extern volatile __bit IOCEF3 __attribute__((address(0x7B5B))); // @ (0xF6B * 8 + 3)

// IOCEN<IOCEN3>
extern volatile __bit IOCEN3 __attribute__((address(0x7B53))); // @ (0xF6A * 8 + 3)

// IOCEP<IOCEP3>
extern volatile __bit IOCEP3 __attribute__((address(0x7B4B))); // @ (0xF69 * 8 + 3)

// PIE0<IOCIE>
extern volatile __bit IOCIE __attribute__((address(0x38B4))); // @ (0x716 * 8 + 4)

// PIR0<IOCIF>
extern volatile __bit IOCIF __attribute__((address(0x3864))); // @ (0x70C * 8 + 4)

// PMD0<IOCMD>
extern volatile __bit IOCMD __attribute__((address(0x3CB0))); // @ (0x796 * 8 + 0)

// SCANLADRL<LADR0>
extern volatile __bit LADR0 __attribute__((address(0x2060))); // @ (0x40C * 8 + 0)

// SCANLADRL<LADR1>
extern volatile __bit LADR1 __attribute__((address(0x2061))); // @ (0x40C * 8 + 1)

// SCANLADRH<LADR10>
extern volatile __bit LADR10 __attribute__((address(0x206A))); // @ (0x40D * 8 + 2)

// SCANLADRH<LADR11>
extern volatile __bit LADR11 __attribute__((address(0x206B))); // @ (0x40D * 8 + 3)

// SCANLADRH<LADR12>
extern volatile __bit LADR12 __attribute__((address(0x206C))); // @ (0x40D * 8 + 4)

// SCANLADRH<LADR13>
extern volatile __bit LADR13 __attribute__((address(0x206D))); // @ (0x40D * 8 + 5)

// SCANLADRH<LADR14>
extern volatile __bit LADR14 __attribute__((address(0x206E))); // @ (0x40D * 8 + 6)

// SCANLADRH<LADR15>
extern volatile __bit LADR15 __attribute__((address(0x206F))); // @ (0x40D * 8 + 7)

// SCANLADRL<LADR2>
extern volatile __bit LADR2 __attribute__((address(0x2062))); // @ (0x40C * 8 + 2)

// SCANLADRL<LADR3>
extern volatile __bit LADR3 __attribute__((address(0x2063))); // @ (0x40C * 8 + 3)

// SCANLADRL<LADR4>
extern volatile __bit LADR4 __attribute__((address(0x2064))); // @ (0x40C * 8 + 4)

// SCANLADRL<LADR5>
extern volatile __bit LADR5 __attribute__((address(0x2065))); // @ (0x40C * 8 + 5)

// SCANLADRL<LADR6>
extern volatile __bit LADR6 __attribute__((address(0x2066))); // @ (0x40C * 8 + 6)

// SCANLADRL<LADR7>
extern volatile __bit LADR7 __attribute__((address(0x2067))); // @ (0x40C * 8 + 7)

// SCANLADRH<LADR8>
extern volatile __bit LADR8 __attribute__((address(0x2068))); // @ (0x40D * 8 + 0)

// SCANLADRH<LADR9>
extern volatile __bit LADR9 __attribute__((address(0x2069))); // @ (0x40D * 8 + 1)

// LATA<LATA0>
extern volatile __bit LATA0 __attribute__((address(0xB0))); // @ (0x16 * 8 + 0)

// LATA<LATA1>
extern volatile __bit LATA1 __attribute__((address(0xB1))); // @ (0x16 * 8 + 1)

// LATA<LATA2>
extern volatile __bit LATA2 __attribute__((address(0xB2))); // @ (0x16 * 8 + 2)

// LATA<LATA3>
extern volatile __bit LATA3 __attribute__((address(0xB3))); // @ (0x16 * 8 + 3)

// LATA<LATA4>
extern volatile __bit LATA4 __attribute__((address(0xB4))); // @ (0x16 * 8 + 4)

// LATA<LATA5>
extern volatile __bit LATA5 __attribute__((address(0xB5))); // @ (0x16 * 8 + 5)

// LATA<LATA6>
extern volatile __bit LATA6 __attribute__((address(0xB6))); // @ (0x16 * 8 + 6)

// LATA<LATA7>
extern volatile __bit LATA7 __attribute__((address(0xB7))); // @ (0x16 * 8 + 7)

// LATB<LATB0>
extern volatile __bit LATB0 __attribute__((address(0xB8))); // @ (0x17 * 8 + 0)

// LATB<LATB1>
extern volatile __bit LATB1 __attribute__((address(0xB9))); // @ (0x17 * 8 + 1)

// LATB<LATB2>
extern volatile __bit LATB2 __attribute__((address(0xBA))); // @ (0x17 * 8 + 2)

// LATB<LATB3>
extern volatile __bit LATB3 __attribute__((address(0xBB))); // @ (0x17 * 8 + 3)

// LATB<LATB4>
extern volatile __bit LATB4 __attribute__((address(0xBC))); // @ (0x17 * 8 + 4)

// LATB<LATB5>
extern volatile __bit LATB5 __attribute__((address(0xBD))); // @ (0x17 * 8 + 5)

// LATB<LATB6>
extern volatile __bit LATB6 __attribute__((address(0xBE))); // @ (0x17 * 8 + 6)

// LATB<LATB7>
extern volatile __bit LATB7 __attribute__((address(0xBF))); // @ (0x17 * 8 + 7)

// LATC<LATC0>
extern volatile __bit LATC0 __attribute__((address(0xC0))); // @ (0x18 * 8 + 0)

// LATC<LATC1>
extern volatile __bit LATC1 __attribute__((address(0xC1))); // @ (0x18 * 8 + 1)

// LATC<LATC2>
extern volatile __bit LATC2 __attribute__((address(0xC2))); // @ (0x18 * 8 + 2)

// LATC<LATC3>
extern volatile __bit LATC3 __attribute__((address(0xC3))); // @ (0x18 * 8 + 3)

// LATC<LATC4>
extern volatile __bit LATC4 __attribute__((address(0xC4))); // @ (0x18 * 8 + 4)

// LATC<LATC5>
extern volatile __bit LATC5 __attribute__((address(0xC5))); // @ (0x18 * 8 + 5)

// LATC<LATC6>
extern volatile __bit LATC6 __attribute__((address(0xC6))); // @ (0x18 * 8 + 6)

// LATC<LATC7>
extern volatile __bit LATC7 __attribute__((address(0xC7))); // @ (0x18 * 8 + 7)

// CLC1SEL0<LC1D1S0>
extern volatile __bit LC1D1S0 __attribute__((address(0x7090))); // @ (0xE12 * 8 + 0)

// CLC1SEL0<LC1D1S1>
extern volatile __bit LC1D1S1 __attribute__((address(0x7091))); // @ (0xE12 * 8 + 1)

// CLC1SEL0<LC1D1S2>
extern volatile __bit LC1D1S2 __attribute__((address(0x7092))); // @ (0xE12 * 8 + 2)

// CLC1SEL0<LC1D1S3>
extern volatile __bit LC1D1S3 __attribute__((address(0x7093))); // @ (0xE12 * 8 + 3)

// CLC1SEL0<LC1D1S4>
extern volatile __bit LC1D1S4 __attribute__((address(0x7094))); // @ (0xE12 * 8 + 4)

// CLC1SEL0<LC1D1S5>
extern volatile __bit LC1D1S5 __attribute__((address(0x7095))); // @ (0xE12 * 8 + 5)

// CLC1SEL0<LC1D1S6>
extern volatile __bit LC1D1S6 __attribute__((address(0x7096))); // @ (0xE12 * 8 + 6)

// CLC1SEL0<LC1D1S7>
extern volatile __bit LC1D1S7 __attribute__((address(0x7097))); // @ (0xE12 * 8 + 7)

// CLC1SEL1<LC1D2S0>
extern volatile __bit LC1D2S0 __attribute__((address(0x7098))); // @ (0xE13 * 8 + 0)

// CLC1SEL1<LC1D2S1>
extern volatile __bit LC1D2S1 __attribute__((address(0x7099))); // @ (0xE13 * 8 + 1)

// CLC1SEL1<LC1D2S2>
extern volatile __bit LC1D2S2 __attribute__((address(0x709A))); // @ (0xE13 * 8 + 2)

// CLC1SEL1<LC1D2S3>
extern volatile __bit LC1D2S3 __attribute__((address(0x709B))); // @ (0xE13 * 8 + 3)

// CLC1SEL1<LC1D2S4>
extern volatile __bit LC1D2S4 __attribute__((address(0x709C))); // @ (0xE13 * 8 + 4)

// CLC1SEL1<LC1D2S5>
extern volatile __bit LC1D2S5 __attribute__((address(0x709D))); // @ (0xE13 * 8 + 5)

// CLC1SEL1<LC1D2S6>
extern volatile __bit LC1D2S6 __attribute__((address(0x709E))); // @ (0xE13 * 8 + 6)

// CLC1SEL1<LC1D2S7>
extern volatile __bit LC1D2S7 __attribute__((address(0x709F))); // @ (0xE13 * 8 + 7)

// CLC1SEL2<LC1D3S0>
extern volatile __bit LC1D3S0 __attribute__((address(0x70A0))); // @ (0xE14 * 8 + 0)

// CLC1SEL2<LC1D3S1>
extern volatile __bit LC1D3S1 __attribute__((address(0x70A1))); // @ (0xE14 * 8 + 1)

// CLC1SEL2<LC1D3S2>
extern volatile __bit LC1D3S2 __attribute__((address(0x70A2))); // @ (0xE14 * 8 + 2)

// CLC1SEL2<LC1D3S3>
extern volatile __bit LC1D3S3 __attribute__((address(0x70A3))); // @ (0xE14 * 8 + 3)

// CLC1SEL2<LC1D3S4>
extern volatile __bit LC1D3S4 __attribute__((address(0x70A4))); // @ (0xE14 * 8 + 4)

// CLC1SEL2<LC1D3S5>
extern volatile __bit LC1D3S5 __attribute__((address(0x70A5))); // @ (0xE14 * 8 + 5)

// CLC1SEL2<LC1D3S6>
extern volatile __bit LC1D3S6 __attribute__((address(0x70A6))); // @ (0xE14 * 8 + 6)

// CLC1SEL2<LC1D3S7>
extern volatile __bit LC1D3S7 __attribute__((address(0x70A7))); // @ (0xE14 * 8 + 7)

// CLC1SEL3<LC1D4S0>
extern volatile __bit LC1D4S0 __attribute__((address(0x70A8))); // @ (0xE15 * 8 + 0)

// CLC1SEL3<LC1D4S1>
extern volatile __bit LC1D4S1 __attribute__((address(0x70A9))); // @ (0xE15 * 8 + 1)

// CLC1SEL3<LC1D4S2>
extern volatile __bit LC1D4S2 __attribute__((address(0x70AA))); // @ (0xE15 * 8 + 2)

// CLC1SEL3<LC1D4S3>
extern volatile __bit LC1D4S3 __attribute__((address(0x70AB))); // @ (0xE15 * 8 + 3)

// CLC1SEL3<LC1D4S4>
extern volatile __bit LC1D4S4 __attribute__((address(0x70AC))); // @ (0xE15 * 8 + 4)

// CLC1SEL3<LC1D4S5>
extern volatile __bit LC1D4S5 __attribute__((address(0x70AD))); // @ (0xE15 * 8 + 5)

// CLC1SEL3<LC1D4S6>
extern volatile __bit LC1D4S6 __attribute__((address(0x70AE))); // @ (0xE15 * 8 + 6)

// CLC1SEL3<LC1D4S7>
extern volatile __bit LC1D4S7 __attribute__((address(0x70AF))); // @ (0xE15 * 8 + 7)

// CLC1CON<LC1EN>
extern volatile __bit LC1EN __attribute__((address(0x7087))); // @ (0xE10 * 8 + 7)

// CLC1GLS0<LC1G1D1N>
extern volatile __bit LC1G1D1N __attribute__((address(0x70B0))); // @ (0xE16 * 8 + 0)

// CLC1GLS0<LC1G1D1T>
extern volatile __bit LC1G1D1T __attribute__((address(0x70B1))); // @ (0xE16 * 8 + 1)

// CLC1GLS0<LC1G1D2N>
extern volatile __bit LC1G1D2N __attribute__((address(0x70B2))); // @ (0xE16 * 8 + 2)

// CLC1GLS0<LC1G1D2T>
extern volatile __bit LC1G1D2T __attribute__((address(0x70B3))); // @ (0xE16 * 8 + 3)

// CLC1GLS0<LC1G1D3N>
extern volatile __bit LC1G1D3N __attribute__((address(0x70B4))); // @ (0xE16 * 8 + 4)

// CLC1GLS0<LC1G1D3T>
extern volatile __bit LC1G1D3T __attribute__((address(0x70B5))); // @ (0xE16 * 8 + 5)

// CLC1GLS0<LC1G1D4N>
extern volatile __bit LC1G1D4N __attribute__((address(0x70B6))); // @ (0xE16 * 8 + 6)

// CLC1GLS0<LC1G1D4T>
extern volatile __bit LC1G1D4T __attribute__((address(0x70B7))); // @ (0xE16 * 8 + 7)

// CLC1POL<LC1G1POL>
extern volatile __bit LC1G1POL __attribute__((address(0x7088))); // @ (0xE11 * 8 + 0)

// CLC1GLS1<LC1G2D1N>
extern volatile __bit LC1G2D1N __attribute__((address(0x70B8))); // @ (0xE17 * 8 + 0)

// CLC1GLS1<LC1G2D1T>
extern volatile __bit LC1G2D1T __attribute__((address(0x70B9))); // @ (0xE17 * 8 + 1)

// CLC1GLS1<LC1G2D2N>
extern volatile __bit LC1G2D2N __attribute__((address(0x70BA))); // @ (0xE17 * 8 + 2)

// CLC1GLS1<LC1G2D2T>
extern volatile __bit LC1G2D2T __attribute__((address(0x70BB))); // @ (0xE17 * 8 + 3)

// CLC1GLS1<LC1G2D3N>
extern volatile __bit LC1G2D3N __attribute__((address(0x70BC))); // @ (0xE17 * 8 + 4)

// CLC1GLS1<LC1G2D3T>
extern volatile __bit LC1G2D3T __attribute__((address(0x70BD))); // @ (0xE17 * 8 + 5)

// CLC1GLS1<LC1G2D4N>
extern volatile __bit LC1G2D4N __attribute__((address(0x70BE))); // @ (0xE17 * 8 + 6)

// CLC1GLS1<LC1G2D4T>
extern volatile __bit LC1G2D4T __attribute__((address(0x70BF))); // @ (0xE17 * 8 + 7)

// CLC1POL<LC1G2POL>
extern volatile __bit LC1G2POL __attribute__((address(0x7089))); // @ (0xE11 * 8 + 1)

// CLC1GLS2<LC1G3D1N>
extern volatile __bit LC1G3D1N __attribute__((address(0x70C0))); // @ (0xE18 * 8 + 0)

// CLC1GLS2<LC1G3D1T>
extern volatile __bit LC1G3D1T __attribute__((address(0x70C1))); // @ (0xE18 * 8 + 1)

// CLC1GLS2<LC1G3D2N>
extern volatile __bit LC1G3D2N __attribute__((address(0x70C2))); // @ (0xE18 * 8 + 2)

// CLC1GLS2<LC1G3D2T>
extern volatile __bit LC1G3D2T __attribute__((address(0x70C3))); // @ (0xE18 * 8 + 3)

// CLC1GLS2<LC1G3D3N>
extern volatile __bit LC1G3D3N __attribute__((address(0x70C4))); // @ (0xE18 * 8 + 4)

// CLC1GLS2<LC1G3D3T>
extern volatile __bit LC1G3D3T __attribute__((address(0x70C5))); // @ (0xE18 * 8 + 5)

// CLC1GLS2<LC1G3D4N>
extern volatile __bit LC1G3D4N __attribute__((address(0x70C6))); // @ (0xE18 * 8 + 6)

// CLC1GLS2<LC1G3D4T>
extern volatile __bit LC1G3D4T __attribute__((address(0x70C7))); // @ (0xE18 * 8 + 7)

// CLC1POL<LC1G3POL>
extern volatile __bit LC1G3POL __attribute__((address(0x708A))); // @ (0xE11 * 8 + 2)

// CLC1GLS3<LC1G4D1N>
extern volatile __bit LC1G4D1N __attribute__((address(0x70C8))); // @ (0xE19 * 8 + 0)

// CLC1GLS3<LC1G4D1T>
extern volatile __bit LC1G4D1T __attribute__((address(0x70C9))); // @ (0xE19 * 8 + 1)

// CLC1GLS3<LC1G4D2N>
extern volatile __bit LC1G4D2N __attribute__((address(0x70CA))); // @ (0xE19 * 8 + 2)

// CLC1GLS3<LC1G4D2T>
extern volatile __bit LC1G4D2T __attribute__((address(0x70CB))); // @ (0xE19 * 8 + 3)

// CLC1GLS3<LC1G4D3N>
extern volatile __bit LC1G4D3N __attribute__((address(0x70CC))); // @ (0xE19 * 8 + 4)

// CLC1GLS3<LC1G4D3T>
extern volatile __bit LC1G4D3T __attribute__((address(0x70CD))); // @ (0xE19 * 8 + 5)

// CLC1GLS3<LC1G4D4N>
extern volatile __bit LC1G4D4N __attribute__((address(0x70CE))); // @ (0xE19 * 8 + 6)

// CLC1GLS3<LC1G4D4T>
extern volatile __bit LC1G4D4T __attribute__((address(0x70CF))); // @ (0xE19 * 8 + 7)

// CLC1POL<LC1G4POL>
extern volatile __bit LC1G4POL __attribute__((address(0x708B))); // @ (0xE11 * 8 + 3)

// CLC1CON<LC1INTN>
extern volatile __bit LC1INTN __attribute__((address(0x7083))); // @ (0xE10 * 8 + 3)

// CLC1CON<LC1INTP>
extern volatile __bit LC1INTP __attribute__((address(0x7084))); // @ (0xE10 * 8 + 4)

// CLC1CON<LC1MODE0>
extern volatile __bit LC1MODE0 __attribute__((address(0x7080))); // @ (0xE10 * 8 + 0)

// CLC1CON<LC1MODE1>
extern volatile __bit LC1MODE1 __attribute__((address(0x7081))); // @ (0xE10 * 8 + 1)

// CLC1CON<LC1MODE2>
extern volatile __bit LC1MODE2 __attribute__((address(0x7082))); // @ (0xE10 * 8 + 2)

// CLC1CON<LC1OUT>
extern volatile __bit LC1OUT __attribute__((address(0x7085))); // @ (0xE10 * 8 + 5)

// CLC1POL<LC1POL>
extern volatile __bit LC1POL __attribute__((address(0x708F))); // @ (0xE11 * 8 + 7)

// CLC2SEL0<LC2D1S0>
extern volatile __bit LC2D1S0 __attribute__((address(0x70E0))); // @ (0xE1C * 8 + 0)

// CLC2SEL0<LC2D1S1>
extern volatile __bit LC2D1S1 __attribute__((address(0x70E1))); // @ (0xE1C * 8 + 1)

// CLC2SEL0<LC2D1S2>
extern volatile __bit LC2D1S2 __attribute__((address(0x70E2))); // @ (0xE1C * 8 + 2)

// CLC2SEL0<LC2D1S3>
extern volatile __bit LC2D1S3 __attribute__((address(0x70E3))); // @ (0xE1C * 8 + 3)

// CLC2SEL0<LC2D1S4>
extern volatile __bit LC2D1S4 __attribute__((address(0x70E4))); // @ (0xE1C * 8 + 4)

// CLC2SEL0<LC2D1S5>
extern volatile __bit LC2D1S5 __attribute__((address(0x70E5))); // @ (0xE1C * 8 + 5)

// CLC2SEL0<LC2D1S6>
extern volatile __bit LC2D1S6 __attribute__((address(0x70E6))); // @ (0xE1C * 8 + 6)

// CLC2SEL0<LC2D1S7>
extern volatile __bit LC2D1S7 __attribute__((address(0x70E7))); // @ (0xE1C * 8 + 7)

// CLC2SEL1<LC2D2S0>
extern volatile __bit LC2D2S0 __attribute__((address(0x70E8))); // @ (0xE1D * 8 + 0)

// CLC2SEL1<LC2D2S1>
extern volatile __bit LC2D2S1 __attribute__((address(0x70E9))); // @ (0xE1D * 8 + 1)

// CLC2SEL1<LC2D2S2>
extern volatile __bit LC2D2S2 __attribute__((address(0x70EA))); // @ (0xE1D * 8 + 2)

// CLC2SEL1<LC2D2S3>
extern volatile __bit LC2D2S3 __attribute__((address(0x70EB))); // @ (0xE1D * 8 + 3)

// CLC2SEL1<LC2D2S4>
extern volatile __bit LC2D2S4 __attribute__((address(0x70EC))); // @ (0xE1D * 8 + 4)

// CLC2SEL1<LC2D2S5>
extern volatile __bit LC2D2S5 __attribute__((address(0x70ED))); // @ (0xE1D * 8 + 5)

// CLC2SEL1<LC2D2S6>
extern volatile __bit LC2D2S6 __attribute__((address(0x70EE))); // @ (0xE1D * 8 + 6)

// CLC2SEL1<LC2D2S7>
extern volatile __bit LC2D2S7 __attribute__((address(0x70EF))); // @ (0xE1D * 8 + 7)

// CLC2SEL2<LC2D3S0>
extern volatile __bit LC2D3S0 __attribute__((address(0x70F0))); // @ (0xE1E * 8 + 0)

// CLC2SEL2<LC2D3S1>
extern volatile __bit LC2D3S1 __attribute__((address(0x70F1))); // @ (0xE1E * 8 + 1)

// CLC2SEL2<LC2D3S2>
extern volatile __bit LC2D3S2 __attribute__((address(0x70F2))); // @ (0xE1E * 8 + 2)

// CLC2SEL2<LC2D3S3>
extern volatile __bit LC2D3S3 __attribute__((address(0x70F3))); // @ (0xE1E * 8 + 3)

// CLC2SEL2<LC2D3S4>
extern volatile __bit LC2D3S4 __attribute__((address(0x70F4))); // @ (0xE1E * 8 + 4)

// CLC2SEL2<LC2D3S5>
extern volatile __bit LC2D3S5 __attribute__((address(0x70F5))); // @ (0xE1E * 8 + 5)

// CLC2SEL2<LC2D3S6>
extern volatile __bit LC2D3S6 __attribute__((address(0x70F6))); // @ (0xE1E * 8 + 6)

// CLC2SEL2<LC2D3S7>
extern volatile __bit LC2D3S7 __attribute__((address(0x70F7))); // @ (0xE1E * 8 + 7)

// CLC2SEL3<LC2D4S0>
extern volatile __bit LC2D4S0 __attribute__((address(0x70F8))); // @ (0xE1F * 8 + 0)

// CLC2SEL3<LC2D4S1>
extern volatile __bit LC2D4S1 __attribute__((address(0x70F9))); // @ (0xE1F * 8 + 1)

// CLC2SEL3<LC2D4S2>
extern volatile __bit LC2D4S2 __attribute__((address(0x70FA))); // @ (0xE1F * 8 + 2)

// CLC2SEL3<LC2D4S3>
extern volatile __bit LC2D4S3 __attribute__((address(0x70FB))); // @ (0xE1F * 8 + 3)

// CLC2SEL3<LC2D4S4>
extern volatile __bit LC2D4S4 __attribute__((address(0x70FC))); // @ (0xE1F * 8 + 4)

// CLC2SEL3<LC2D4S5>
extern volatile __bit LC2D4S5 __attribute__((address(0x70FD))); // @ (0xE1F * 8 + 5)

// CLC2SEL3<LC2D4S6>
extern volatile __bit LC2D4S6 __attribute__((address(0x70FE))); // @ (0xE1F * 8 + 6)

// CLC2SEL3<LC2D4S7>
extern volatile __bit LC2D4S7 __attribute__((address(0x70FF))); // @ (0xE1F * 8 + 7)

// CLC2CON<LC2EN>
extern volatile __bit LC2EN __attribute__((address(0x70D7))); // @ (0xE1A * 8 + 7)

// CLC2GLS0<LC2G1D1N>
extern volatile __bit LC2G1D1N __attribute__((address(0x7100))); // @ (0xE20 * 8 + 0)

// CLC2GLS0<LC2G1D1T>
extern volatile __bit LC2G1D1T __attribute__((address(0x7101))); // @ (0xE20 * 8 + 1)

// CLC2GLS0<LC2G1D2N>
extern volatile __bit LC2G1D2N __attribute__((address(0x7102))); // @ (0xE20 * 8 + 2)

// CLC2GLS0<LC2G1D2T>
extern volatile __bit LC2G1D2T __attribute__((address(0x7103))); // @ (0xE20 * 8 + 3)

// CLC2GLS0<LC2G1D3N>
extern volatile __bit LC2G1D3N __attribute__((address(0x7104))); // @ (0xE20 * 8 + 4)

// CLC2GLS0<LC2G1D3T>
extern volatile __bit LC2G1D3T __attribute__((address(0x7105))); // @ (0xE20 * 8 + 5)

// CLC2GLS0<LC2G1D4N>
extern volatile __bit LC2G1D4N __attribute__((address(0x7106))); // @ (0xE20 * 8 + 6)

// CLC2GLS0<LC2G1D4T>
extern volatile __bit LC2G1D4T __attribute__((address(0x7107))); // @ (0xE20 * 8 + 7)

// CLC2POL<LC2G1POL>
extern volatile __bit LC2G1POL __attribute__((address(0x70D8))); // @ (0xE1B * 8 + 0)

// CLC2GLS1<LC2G2D1N>
extern volatile __bit LC2G2D1N __attribute__((address(0x7108))); // @ (0xE21 * 8 + 0)

// CLC2GLS1<LC2G2D1T>
extern volatile __bit LC2G2D1T __attribute__((address(0x7109))); // @ (0xE21 * 8 + 1)

// CLC2GLS1<LC2G2D2N>
extern volatile __bit LC2G2D2N __attribute__((address(0x710A))); // @ (0xE21 * 8 + 2)

// CLC2GLS1<LC2G2D2T>
extern volatile __bit LC2G2D2T __attribute__((address(0x710B))); // @ (0xE21 * 8 + 3)

// CLC2GLS1<LC2G2D3N>
extern volatile __bit LC2G2D3N __attribute__((address(0x710C))); // @ (0xE21 * 8 + 4)

// CLC2GLS1<LC2G2D3T>
extern volatile __bit LC2G2D3T __attribute__((address(0x710D))); // @ (0xE21 * 8 + 5)

// CLC2GLS1<LC2G2D4N>
extern volatile __bit LC2G2D4N __attribute__((address(0x710E))); // @ (0xE21 * 8 + 6)

// CLC2GLS1<LC2G2D4T>
extern volatile __bit LC2G2D4T __attribute__((address(0x710F))); // @ (0xE21 * 8 + 7)

// CLC2POL<LC2G2POL>
extern volatile __bit LC2G2POL __attribute__((address(0x70D9))); // @ (0xE1B * 8 + 1)

// CLC2GLS2<LC2G3D1N>
extern volatile __bit LC2G3D1N __attribute__((address(0x7110))); // @ (0xE22 * 8 + 0)

// CLC2GLS2<LC2G3D1T>
extern volatile __bit LC2G3D1T __attribute__((address(0x7111))); // @ (0xE22 * 8 + 1)

// CLC2GLS2<LC2G3D2N>
extern volatile __bit LC2G3D2N __attribute__((address(0x7112))); // @ (0xE22 * 8 + 2)

// CLC2GLS2<LC2G3D2T>
extern volatile __bit LC2G3D2T __attribute__((address(0x7113))); // @ (0xE22 * 8 + 3)

// CLC2GLS2<LC2G3D3N>
extern volatile __bit LC2G3D3N __attribute__((address(0x7114))); // @ (0xE22 * 8 + 4)

// CLC2GLS2<LC2G3D3T>
extern volatile __bit LC2G3D3T __attribute__((address(0x7115))); // @ (0xE22 * 8 + 5)

// CLC2GLS2<LC2G3D4N>
extern volatile __bit LC2G3D4N __attribute__((address(0x7116))); // @ (0xE22 * 8 + 6)

// CLC2GLS2<LC2G3D4T>
extern volatile __bit LC2G3D4T __attribute__((address(0x7117))); // @ (0xE22 * 8 + 7)

// CLC2POL<LC2G3POL>
extern volatile __bit LC2G3POL __attribute__((address(0x70DA))); // @ (0xE1B * 8 + 2)

// CLC2GLS3<LC2G4D1N>
extern volatile __bit LC2G4D1N __attribute__((address(0x7118))); // @ (0xE23 * 8 + 0)

// CLC2GLS3<LC2G4D1T>
extern volatile __bit LC2G4D1T __attribute__((address(0x7119))); // @ (0xE23 * 8 + 1)

// CLC2GLS3<LC2G4D2N>
extern volatile __bit LC2G4D2N __attribute__((address(0x711A))); // @ (0xE23 * 8 + 2)

// CLC2GLS3<LC2G4D2T>
extern volatile __bit LC2G4D2T __attribute__((address(0x711B))); // @ (0xE23 * 8 + 3)

// CLC2GLS3<LC2G4D3N>
extern volatile __bit LC2G4D3N __attribute__((address(0x711C))); // @ (0xE23 * 8 + 4)

// CLC2GLS3<LC2G4D3T>
extern volatile __bit LC2G4D3T __attribute__((address(0x711D))); // @ (0xE23 * 8 + 5)

// CLC2GLS3<LC2G4D4N>
extern volatile __bit LC2G4D4N __attribute__((address(0x711E))); // @ (0xE23 * 8 + 6)

// CLC2GLS3<LC2G4D4T>
extern volatile __bit LC2G4D4T __attribute__((address(0x711F))); // @ (0xE23 * 8 + 7)

// CLC2POL<LC2G4POL>
extern volatile __bit LC2G4POL __attribute__((address(0x70DB))); // @ (0xE1B * 8 + 3)

// CLC2CON<LC2INTN>
extern volatile __bit LC2INTN __attribute__((address(0x70D3))); // @ (0xE1A * 8 + 3)

// CLC2CON<LC2INTP>
extern volatile __bit LC2INTP __attribute__((address(0x70D4))); // @ (0xE1A * 8 + 4)

// CLC2CON<LC2MODE0>
extern volatile __bit LC2MODE0 __attribute__((address(0x70D0))); // @ (0xE1A * 8 + 0)

// CLC2CON<LC2MODE1>
extern volatile __bit LC2MODE1 __attribute__((address(0x70D1))); // @ (0xE1A * 8 + 1)

// CLC2CON<LC2MODE2>
extern volatile __bit LC2MODE2 __attribute__((address(0x70D2))); // @ (0xE1A * 8 + 2)

// CLC2CON<LC2OUT>
extern volatile __bit LC2OUT __attribute__((address(0x70D5))); // @ (0xE1A * 8 + 5)

// CLC2POL<LC2POL>
extern volatile __bit LC2POL __attribute__((address(0x70DF))); // @ (0xE1B * 8 + 7)

// CLC3SEL0<LC3D1S0>
extern volatile __bit LC3D1S0 __attribute__((address(0x7130))); // @ (0xE26 * 8 + 0)

// CLC3SEL0<LC3D1S1>
extern volatile __bit LC3D1S1 __attribute__((address(0x7131))); // @ (0xE26 * 8 + 1)

// CLC3SEL0<LC3D1S2>
extern volatile __bit LC3D1S2 __attribute__((address(0x7132))); // @ (0xE26 * 8 + 2)

// CLC3SEL0<LC3D1S3>
extern volatile __bit LC3D1S3 __attribute__((address(0x7133))); // @ (0xE26 * 8 + 3)

// CLC3SEL0<LC3D1S4>
extern volatile __bit LC3D1S4 __attribute__((address(0x7134))); // @ (0xE26 * 8 + 4)

// CLC3SEL0<LC3D1S5>
extern volatile __bit LC3D1S5 __attribute__((address(0x7135))); // @ (0xE26 * 8 + 5)

// CLC3SEL0<LC3D1S6>
extern volatile __bit LC3D1S6 __attribute__((address(0x7136))); // @ (0xE26 * 8 + 6)

// CLC3SEL0<LC3D1S7>
extern volatile __bit LC3D1S7 __attribute__((address(0x7137))); // @ (0xE26 * 8 + 7)

// CLC3SEL1<LC3D2S0>
extern volatile __bit LC3D2S0 __attribute__((address(0x7138))); // @ (0xE27 * 8 + 0)

// CLC3SEL1<LC3D2S1>
extern volatile __bit LC3D2S1 __attribute__((address(0x7139))); // @ (0xE27 * 8 + 1)

// CLC3SEL1<LC3D2S2>
extern volatile __bit LC3D2S2 __attribute__((address(0x713A))); // @ (0xE27 * 8 + 2)

// CLC3SEL1<LC3D2S3>
extern volatile __bit LC3D2S3 __attribute__((address(0x713B))); // @ (0xE27 * 8 + 3)

// CLC3SEL1<LC3D2S4>
extern volatile __bit LC3D2S4 __attribute__((address(0x713C))); // @ (0xE27 * 8 + 4)

// CLC3SEL1<LC3D2S5>
extern volatile __bit LC3D2S5 __attribute__((address(0x713D))); // @ (0xE27 * 8 + 5)

// CLC3SEL1<LC3D2S6>
extern volatile __bit LC3D2S6 __attribute__((address(0x713E))); // @ (0xE27 * 8 + 6)

// CLC3SEL1<LC3D2S7>
extern volatile __bit LC3D2S7 __attribute__((address(0x713F))); // @ (0xE27 * 8 + 7)

// CLC3SEL2<LC3D3S0>
extern volatile __bit LC3D3S0 __attribute__((address(0x7140))); // @ (0xE28 * 8 + 0)

// CLC3SEL2<LC3D3S1>
extern volatile __bit LC3D3S1 __attribute__((address(0x7141))); // @ (0xE28 * 8 + 1)

// CLC3SEL2<LC3D3S2>
extern volatile __bit LC3D3S2 __attribute__((address(0x7142))); // @ (0xE28 * 8 + 2)

// CLC3SEL2<LC3D3S3>
extern volatile __bit LC3D3S3 __attribute__((address(0x7143))); // @ (0xE28 * 8 + 3)

// CLC3SEL2<LC3D3S4>
extern volatile __bit LC3D3S4 __attribute__((address(0x7144))); // @ (0xE28 * 8 + 4)

// CLC3SEL2<LC3D3S5>
extern volatile __bit LC3D3S5 __attribute__((address(0x7145))); // @ (0xE28 * 8 + 5)

// CLC3SEL2<LC3D3S6>
extern volatile __bit LC3D3S6 __attribute__((address(0x7146))); // @ (0xE28 * 8 + 6)

// CLC3SEL2<LC3D3S7>
extern volatile __bit LC3D3S7 __attribute__((address(0x7147))); // @ (0xE28 * 8 + 7)

// CLC3SEL3<LC3D4S0>
extern volatile __bit LC3D4S0 __attribute__((address(0x7148))); // @ (0xE29 * 8 + 0)

// CLC3SEL3<LC3D4S1>
extern volatile __bit LC3D4S1 __attribute__((address(0x7149))); // @ (0xE29 * 8 + 1)

// CLC3SEL3<LC3D4S2>
extern volatile __bit LC3D4S2 __attribute__((address(0x714A))); // @ (0xE29 * 8 + 2)

// CLC3SEL3<LC3D4S3>
extern volatile __bit LC3D4S3 __attribute__((address(0x714B))); // @ (0xE29 * 8 + 3)

// CLC3SEL3<LC3D4S4>
extern volatile __bit LC3D4S4 __attribute__((address(0x714C))); // @ (0xE29 * 8 + 4)

// CLC3SEL3<LC3D4S5>
extern volatile __bit LC3D4S5 __attribute__((address(0x714D))); // @ (0xE29 * 8 + 5)

// CLC3SEL3<LC3D4S6>
extern volatile __bit LC3D4S6 __attribute__((address(0x714E))); // @ (0xE29 * 8 + 6)

// CLC3SEL3<LC3D4S7>
extern volatile __bit LC3D4S7 __attribute__((address(0x714F))); // @ (0xE29 * 8 + 7)

// CLC3CON<LC3EN>
extern volatile __bit LC3EN __attribute__((address(0x7127))); // @ (0xE24 * 8 + 7)

// CLC3GLS0<LC3G1D1N>
extern volatile __bit LC3G1D1N __attribute__((address(0x7150))); // @ (0xE2A * 8 + 0)

// CLC3GLS0<LC3G1D1T>
extern volatile __bit LC3G1D1T __attribute__((address(0x7151))); // @ (0xE2A * 8 + 1)

// CLC3GLS0<LC3G1D2N>
extern volatile __bit LC3G1D2N __attribute__((address(0x7152))); // @ (0xE2A * 8 + 2)

// CLC3GLS0<LC3G1D2T>
extern volatile __bit LC3G1D2T __attribute__((address(0x7153))); // @ (0xE2A * 8 + 3)

// CLC3GLS0<LC3G1D3N>
extern volatile __bit LC3G1D3N __attribute__((address(0x7154))); // @ (0xE2A * 8 + 4)

// CLC3GLS0<LC3G1D3T>
extern volatile __bit LC3G1D3T __attribute__((address(0x7155))); // @ (0xE2A * 8 + 5)

// CLC3GLS0<LC3G1D4N>
extern volatile __bit LC3G1D4N __attribute__((address(0x7156))); // @ (0xE2A * 8 + 6)

// CLC3GLS0<LC3G1D4T>
extern volatile __bit LC3G1D4T __attribute__((address(0x7157))); // @ (0xE2A * 8 + 7)

// CLC3POL<LC3G1POL>
extern volatile __bit LC3G1POL __attribute__((address(0x7128))); // @ (0xE25 * 8 + 0)

// CLC3GLS1<LC3G2D1N>
extern volatile __bit LC3G2D1N __attribute__((address(0x7158))); // @ (0xE2B * 8 + 0)

// CLC3GLS1<LC3G2D1T>
extern volatile __bit LC3G2D1T __attribute__((address(0x7159))); // @ (0xE2B * 8 + 1)

// CLC3GLS1<LC3G2D2N>
extern volatile __bit LC3G2D2N __attribute__((address(0x715A))); // @ (0xE2B * 8 + 2)

// CLC3GLS1<LC3G2D2T>
extern volatile __bit LC3G2D2T __attribute__((address(0x715B))); // @ (0xE2B * 8 + 3)

// CLC3GLS1<LC3G2D3N>
extern volatile __bit LC3G2D3N __attribute__((address(0x715C))); // @ (0xE2B * 8 + 4)

// CLC3GLS1<LC3G2D3T>
extern volatile __bit LC3G2D3T __attribute__((address(0x715D))); // @ (0xE2B * 8 + 5)

// CLC3GLS1<LC3G2D4N>
extern volatile __bit LC3G2D4N __attribute__((address(0x715E))); // @ (0xE2B * 8 + 6)

// CLC3GLS1<LC3G2D4T>
extern volatile __bit LC3G2D4T __attribute__((address(0x715F))); // @ (0xE2B * 8 + 7)

// CLC3POL<LC3G2POL>
extern volatile __bit LC3G2POL __attribute__((address(0x7129))); // @ (0xE25 * 8 + 1)

// CLC3GLS2<LC3G3D1N>
extern volatile __bit LC3G3D1N __attribute__((address(0x7160))); // @ (0xE2C * 8 + 0)

// CLC3GLS2<LC3G3D1T>
extern volatile __bit LC3G3D1T __attribute__((address(0x7161))); // @ (0xE2C * 8 + 1)

// CLC3GLS2<LC3G3D2N>
extern volatile __bit LC3G3D2N __attribute__((address(0x7162))); // @ (0xE2C * 8 + 2)

// CLC3GLS2<LC3G3D2T>
extern volatile __bit LC3G3D2T __attribute__((address(0x7163))); // @ (0xE2C * 8 + 3)

// CLC3GLS2<LC3G3D3N>
extern volatile __bit LC3G3D3N __attribute__((address(0x7164))); // @ (0xE2C * 8 + 4)

// CLC3GLS2<LC3G3D3T>
extern volatile __bit LC3G3D3T __attribute__((address(0x7165))); // @ (0xE2C * 8 + 5)

// CLC3GLS2<LC3G3D4N>
extern volatile __bit LC3G3D4N __attribute__((address(0x7166))); // @ (0xE2C * 8 + 6)

// CLC3GLS2<LC3G3D4T>
extern volatile __bit LC3G3D4T __attribute__((address(0x7167))); // @ (0xE2C * 8 + 7)

// CLC3POL<LC3G3POL>
extern volatile __bit LC3G3POL __attribute__((address(0x712A))); // @ (0xE25 * 8 + 2)

// CLC3GLS3<LC3G4D1N>
extern volatile __bit LC3G4D1N __attribute__((address(0x7168))); // @ (0xE2D * 8 + 0)

// CLC3GLS3<LC3G4D1T>
extern volatile __bit LC3G4D1T __attribute__((address(0x7169))); // @ (0xE2D * 8 + 1)

// CLC3GLS3<LC3G4D2N>
extern volatile __bit LC3G4D2N __attribute__((address(0x716A))); // @ (0xE2D * 8 + 2)

// CLC3GLS3<LC3G4D2T>
extern volatile __bit LC3G4D2T __attribute__((address(0x716B))); // @ (0xE2D * 8 + 3)

// CLC3GLS3<LC3G4D3N>
extern volatile __bit LC3G4D3N __attribute__((address(0x716C))); // @ (0xE2D * 8 + 4)

// CLC3GLS3<LC3G4D3T>
extern volatile __bit LC3G4D3T __attribute__((address(0x716D))); // @ (0xE2D * 8 + 5)

// CLC3GLS3<LC3G4D4N>
extern volatile __bit LC3G4D4N __attribute__((address(0x716E))); // @ (0xE2D * 8 + 6)

// CLC3GLS3<LC3G4D4T>
extern volatile __bit LC3G4D4T __attribute__((address(0x716F))); // @ (0xE2D * 8 + 7)

// CLC3POL<LC3G4POL>
extern volatile __bit LC3G4POL __attribute__((address(0x712B))); // @ (0xE25 * 8 + 3)

// CLC3CON<LC3INTN>
extern volatile __bit LC3INTN __attribute__((address(0x7123))); // @ (0xE24 * 8 + 3)

// CLC3CON<LC3INTP>
extern volatile __bit LC3INTP __attribute__((address(0x7124))); // @ (0xE24 * 8 + 4)

// CLC3CON<LC3MODE0>
extern volatile __bit LC3MODE0 __attribute__((address(0x7120))); // @ (0xE24 * 8 + 0)

// CLC3CON<LC3MODE1>
extern volatile __bit LC3MODE1 __attribute__((address(0x7121))); // @ (0xE24 * 8 + 1)

// CLC3CON<LC3MODE2>
extern volatile __bit LC3MODE2 __attribute__((address(0x7122))); // @ (0xE24 * 8 + 2)

// CLC3CON<LC3OUT>
extern volatile __bit LC3OUT __attribute__((address(0x7125))); // @ (0xE24 * 8 + 5)

// CLC3POL<LC3POL>
extern volatile __bit LC3POL __attribute__((address(0x712F))); // @ (0xE25 * 8 + 7)

// CLC4SEL0<LC4D1S0>
extern volatile __bit LC4D1S0 __attribute__((address(0x7180))); // @ (0xE30 * 8 + 0)

// CLC4SEL0<LC4D1S1>
extern volatile __bit LC4D1S1 __attribute__((address(0x7181))); // @ (0xE30 * 8 + 1)

// CLC4SEL0<LC4D1S2>
extern volatile __bit LC4D1S2 __attribute__((address(0x7182))); // @ (0xE30 * 8 + 2)

// CLC4SEL0<LC4D1S3>
extern volatile __bit LC4D1S3 __attribute__((address(0x7183))); // @ (0xE30 * 8 + 3)

// CLC4SEL0<LC4D1S4>
extern volatile __bit LC4D1S4 __attribute__((address(0x7184))); // @ (0xE30 * 8 + 4)

// CLC4SEL0<LC4D1S5>
extern volatile __bit LC4D1S5 __attribute__((address(0x7185))); // @ (0xE30 * 8 + 5)

// CLC4SEL0<LC4D1S6>
extern volatile __bit LC4D1S6 __attribute__((address(0x7186))); // @ (0xE30 * 8 + 6)

// CLC4SEL0<LC4D1S7>
extern volatile __bit LC4D1S7 __attribute__((address(0x7187))); // @ (0xE30 * 8 + 7)

// CLC4SEL1<LC4D2S0>
extern volatile __bit LC4D2S0 __attribute__((address(0x7188))); // @ (0xE31 * 8 + 0)

// CLC4SEL1<LC4D2S1>
extern volatile __bit LC4D2S1 __attribute__((address(0x7189))); // @ (0xE31 * 8 + 1)

// CLC4SEL1<LC4D2S2>
extern volatile __bit LC4D2S2 __attribute__((address(0x718A))); // @ (0xE31 * 8 + 2)

// CLC4SEL1<LC4D2S3>
extern volatile __bit LC4D2S3 __attribute__((address(0x718B))); // @ (0xE31 * 8 + 3)

// CLC4SEL1<LC4D2S4>
extern volatile __bit LC4D2S4 __attribute__((address(0x718C))); // @ (0xE31 * 8 + 4)

// CLC4SEL1<LC4D2S5>
extern volatile __bit LC4D2S5 __attribute__((address(0x718D))); // @ (0xE31 * 8 + 5)

// CLC4SEL1<LC4D2S6>
extern volatile __bit LC4D2S6 __attribute__((address(0x718E))); // @ (0xE31 * 8 + 6)

// CLC4SEL1<LC4D2S7>
extern volatile __bit LC4D2S7 __attribute__((address(0x718F))); // @ (0xE31 * 8 + 7)

// CLC4SEL2<LC4D3S0>
extern volatile __bit LC4D3S0 __attribute__((address(0x7190))); // @ (0xE32 * 8 + 0)

// CLC4SEL2<LC4D3S1>
extern volatile __bit LC4D3S1 __attribute__((address(0x7191))); // @ (0xE32 * 8 + 1)

// CLC4SEL2<LC4D3S2>
extern volatile __bit LC4D3S2 __attribute__((address(0x7192))); // @ (0xE32 * 8 + 2)

// CLC4SEL2<LC4D3S3>
extern volatile __bit LC4D3S3 __attribute__((address(0x7193))); // @ (0xE32 * 8 + 3)

// CLC4SEL2<LC4D3S4>
extern volatile __bit LC4D3S4 __attribute__((address(0x7194))); // @ (0xE32 * 8 + 4)

// CLC4SEL2<LC4D3S5>
extern volatile __bit LC4D3S5 __attribute__((address(0x7195))); // @ (0xE32 * 8 + 5)

// CLC4SEL2<LC4D3S6>
extern volatile __bit LC4D3S6 __attribute__((address(0x7196))); // @ (0xE32 * 8 + 6)

// CLC4SEL2<LC4D3S7>
extern volatile __bit LC4D3S7 __attribute__((address(0x7197))); // @ (0xE32 * 8 + 7)

// CLC4SEL3<LC4D4S0>
extern volatile __bit LC4D4S0 __attribute__((address(0x7198))); // @ (0xE33 * 8 + 0)

// CLC4SEL3<LC4D4S1>
extern volatile __bit LC4D4S1 __attribute__((address(0x7199))); // @ (0xE33 * 8 + 1)

// CLC4SEL3<LC4D4S2>
extern volatile __bit LC4D4S2 __attribute__((address(0x719A))); // @ (0xE33 * 8 + 2)

// CLC4SEL3<LC4D4S3>
extern volatile __bit LC4D4S3 __attribute__((address(0x719B))); // @ (0xE33 * 8 + 3)

// CLC4SEL3<LC4D4S4>
extern volatile __bit LC4D4S4 __attribute__((address(0x719C))); // @ (0xE33 * 8 + 4)

// CLC4SEL3<LC4D4S5>
extern volatile __bit LC4D4S5 __attribute__((address(0x719D))); // @ (0xE33 * 8 + 5)

// CLC4SEL3<LC4D4S6>
extern volatile __bit LC4D4S6 __attribute__((address(0x719E))); // @ (0xE33 * 8 + 6)

// CLC4SEL3<LC4D4S7>
extern volatile __bit LC4D4S7 __attribute__((address(0x719F))); // @ (0xE33 * 8 + 7)

// CLC4CON<LC4EN>
extern volatile __bit LC4EN __attribute__((address(0x7177))); // @ (0xE2E * 8 + 7)

// CLC4GLS0<LC4G1D1N>
extern volatile __bit LC4G1D1N __attribute__((address(0x71A0))); // @ (0xE34 * 8 + 0)

// CLC4GLS0<LC4G1D1T>
extern volatile __bit LC4G1D1T __attribute__((address(0x71A1))); // @ (0xE34 * 8 + 1)

// CLC4GLS0<LC4G1D2N>
extern volatile __bit LC4G1D2N __attribute__((address(0x71A2))); // @ (0xE34 * 8 + 2)

// CLC4GLS0<LC4G1D2T>
extern volatile __bit LC4G1D2T __attribute__((address(0x71A3))); // @ (0xE34 * 8 + 3)

// CLC4GLS0<LC4G1D3N>
extern volatile __bit LC4G1D3N __attribute__((address(0x71A4))); // @ (0xE34 * 8 + 4)

// CLC4GLS0<LC4G1D3T>
extern volatile __bit LC4G1D3T __attribute__((address(0x71A5))); // @ (0xE34 * 8 + 5)

// CLC4GLS0<LC4G1D4N>
extern volatile __bit LC4G1D4N __attribute__((address(0x71A6))); // @ (0xE34 * 8 + 6)

// CLC4GLS0<LC4G1D4T>
extern volatile __bit LC4G1D4T __attribute__((address(0x71A7))); // @ (0xE34 * 8 + 7)

// CLC4POL<LC4G1POL>
extern volatile __bit LC4G1POL __attribute__((address(0x7178))); // @ (0xE2F * 8 + 0)

// CLC4GLS1<LC4G2D1N>
extern volatile __bit LC4G2D1N __attribute__((address(0x71A8))); // @ (0xE35 * 8 + 0)

// CLC4GLS1<LC4G2D1T>
extern volatile __bit LC4G2D1T __attribute__((address(0x71A9))); // @ (0xE35 * 8 + 1)

// CLC4GLS1<LC4G2D2N>
extern volatile __bit LC4G2D2N __attribute__((address(0x71AA))); // @ (0xE35 * 8 + 2)

// CLC4GLS1<LC4G2D2T>
extern volatile __bit LC4G2D2T __attribute__((address(0x71AB))); // @ (0xE35 * 8 + 3)

// CLC4GLS1<LC4G2D3N>
extern volatile __bit LC4G2D3N __attribute__((address(0x71AC))); // @ (0xE35 * 8 + 4)

// CLC4GLS1<LC4G2D3T>
extern volatile __bit LC4G2D3T __attribute__((address(0x71AD))); // @ (0xE35 * 8 + 5)

// CLC4GLS1<LC4G2D4N>
extern volatile __bit LC4G2D4N __attribute__((address(0x71AE))); // @ (0xE35 * 8 + 6)

// CLC4GLS1<LC4G2D4T>
extern volatile __bit LC4G2D4T __attribute__((address(0x71AF))); // @ (0xE35 * 8 + 7)

// CLC4POL<LC4G2POL>
extern volatile __bit LC4G2POL __attribute__((address(0x7179))); // @ (0xE2F * 8 + 1)

// CLC4GLS2<LC4G3D1N>
extern volatile __bit LC4G3D1N __attribute__((address(0x71B0))); // @ (0xE36 * 8 + 0)

// CLC4GLS2<LC4G3D1T>
extern volatile __bit LC4G3D1T __attribute__((address(0x71B1))); // @ (0xE36 * 8 + 1)

// CLC4GLS2<LC4G3D2N>
extern volatile __bit LC4G3D2N __attribute__((address(0x71B2))); // @ (0xE36 * 8 + 2)

// CLC4GLS2<LC4G3D2T>
extern volatile __bit LC4G3D2T __attribute__((address(0x71B3))); // @ (0xE36 * 8 + 3)

// CLC4GLS2<LC4G3D3N>
extern volatile __bit LC4G3D3N __attribute__((address(0x71B4))); // @ (0xE36 * 8 + 4)

// CLC4GLS2<LC4G3D3T>
extern volatile __bit LC4G3D3T __attribute__((address(0x71B5))); // @ (0xE36 * 8 + 5)

// CLC4GLS2<LC4G3D4N>
extern volatile __bit LC4G3D4N __attribute__((address(0x71B6))); // @ (0xE36 * 8 + 6)

// CLC4GLS2<LC4G3D4T>
extern volatile __bit LC4G3D4T __attribute__((address(0x71B7))); // @ (0xE36 * 8 + 7)

// CLC4POL<LC4G3POL>
extern volatile __bit LC4G3POL __attribute__((address(0x717A))); // @ (0xE2F * 8 + 2)

// CLC4GLS3<LC4G4D1N>
extern volatile __bit LC4G4D1N __attribute__((address(0x71B8))); // @ (0xE37 * 8 + 0)

// CLC4GLS3<LC4G4D1T>
extern volatile __bit LC4G4D1T __attribute__((address(0x71B9))); // @ (0xE37 * 8 + 1)

// CLC4GLS3<LC4G4D2N>
extern volatile __bit LC4G4D2N __attribute__((address(0x71BA))); // @ (0xE37 * 8 + 2)

// CLC4GLS3<LC4G4D2T>
extern volatile __bit LC4G4D2T __attribute__((address(0x71BB))); // @ (0xE37 * 8 + 3)

// CLC4GLS3<LC4G4D3N>
extern volatile __bit LC4G4D3N __attribute__((address(0x71BC))); // @ (0xE37 * 8 + 4)

// CLC4GLS3<LC4G4D3T>
extern volatile __bit LC4G4D3T __attribute__((address(0x71BD))); // @ (0xE37 * 8 + 5)

// CLC4GLS3<LC4G4D4N>
extern volatile __bit LC4G4D4N __attribute__((address(0x71BE))); // @ (0xE37 * 8 + 6)

// CLC4GLS3<LC4G4D4T>
extern volatile __bit LC4G4D4T __attribute__((address(0x71BF))); // @ (0xE37 * 8 + 7)

// CLC4POL<LC4G4POL>
extern volatile __bit LC4G4POL __attribute__((address(0x717B))); // @ (0xE2F * 8 + 3)

// CLC4CON<LC4INTN>
extern volatile __bit LC4INTN __attribute__((address(0x7173))); // @ (0xE2E * 8 + 3)

// CLC4CON<LC4INTP>
extern volatile __bit LC4INTP __attribute__((address(0x7174))); // @ (0xE2E * 8 + 4)

// CLC4CON<LC4MODE0>
extern volatile __bit LC4MODE0 __attribute__((address(0x7170))); // @ (0xE2E * 8 + 0)

// CLC4CON<LC4MODE1>
extern volatile __bit LC4MODE1 __attribute__((address(0x7171))); // @ (0xE2E * 8 + 1)

// CLC4CON<LC4MODE2>
extern volatile __bit LC4MODE2 __attribute__((address(0x7172))); // @ (0xE2E * 8 + 2)

// CLC4CON<LC4OUT>
extern volatile __bit LC4OUT __attribute__((address(0x7175))); // @ (0xE2E * 8 + 5)

// CLC4POL<LC4POL>
extern volatile __bit LC4POL __attribute__((address(0x717F))); // @ (0xE2F * 8 + 7)

// OSCEN<LFOEN>
extern volatile __bit LFOEN __attribute__((address(0x448C))); // @ (0x891 * 8 + 4)

// OSCSTAT<LFOR>
extern volatile __bit LFOR __attribute__((address(0x4484))); // @ (0x890 * 8 + 4)

// NVMCON1<LWLO>
extern volatile __bit LWLO __attribute__((address(0x40F5))); // @ (0x81E * 8 + 5)

// CMOUT<MC1OUT>
extern volatile __bit MC1OUT __attribute__((address(0x4C78))); // @ (0x98F * 8 + 0)

// CMOUT<MC2OUT>
extern volatile __bit MC2OUT __attribute__((address(0x4C79))); // @ (0x98F * 8 + 1)

// MDCON0<MDBIT>
extern volatile __bit MDBIT __attribute__((address(0x44B8))); // @ (0x897 * 8 + 0)

// MDCARHPPS<MDCARHPPS0>
extern volatile __bit MDCARHPPS0 __attribute__((address(0x75C8))); // @ (0xEB9 * 8 + 0)

// MDCARHPPS<MDCARHPPS1>
extern volatile __bit MDCARHPPS1 __attribute__((address(0x75C9))); // @ (0xEB9 * 8 + 1)

// MDCARHPPS<MDCARHPPS2>
extern volatile __bit MDCARHPPS2 __attribute__((address(0x75CA))); // @ (0xEB9 * 8 + 2)

// MDCARHPPS<MDCARHPPS3>
extern volatile __bit MDCARHPPS3 __attribute__((address(0x75CB))); // @ (0xEB9 * 8 + 3)

// MDCARHPPS<MDCARHPPS4>
extern volatile __bit MDCARHPPS4 __attribute__((address(0x75CC))); // @ (0xEB9 * 8 + 4)

// MDCARLPPS<MDCARLPPS0>
extern volatile __bit MDCARLPPS0 __attribute__((address(0x75C0))); // @ (0xEB8 * 8 + 0)

// MDCARLPPS<MDCARLPPS1>
extern volatile __bit MDCARLPPS1 __attribute__((address(0x75C1))); // @ (0xEB8 * 8 + 1)

// MDCARLPPS<MDCARLPPS2>
extern volatile __bit MDCARLPPS2 __attribute__((address(0x75C2))); // @ (0xEB8 * 8 + 2)

// MDCARLPPS<MDCARLPPS3>
extern volatile __bit MDCARLPPS3 __attribute__((address(0x75C3))); // @ (0xEB8 * 8 + 3)

// MDCARLPPS<MDCARLPPS4>
extern volatile __bit MDCARLPPS4 __attribute__((address(0x75C4))); // @ (0xEB8 * 8 + 4)

// MDCARH<MDCH0>
extern volatile __bit MDCH0 __attribute__((address(0x44D8))); // @ (0x89B * 8 + 0)

// MDCARH<MDCH1>
extern volatile __bit MDCH1 __attribute__((address(0x44D9))); // @ (0x89B * 8 + 1)

// MDCARH<MDCH2>
extern volatile __bit MDCH2 __attribute__((address(0x44DA))); // @ (0x89B * 8 + 2)

// MDCARH<MDCH3>
extern volatile __bit MDCH3 __attribute__((address(0x44DB))); // @ (0x89B * 8 + 3)

// MDCON1<MDCHPOL>
extern volatile __bit MDCHPOL __attribute__((address(0x44C5))); // @ (0x898 * 8 + 5)

// MDCON1<MDCHSYNC>
extern volatile __bit MDCHSYNC __attribute__((address(0x44C4))); // @ (0x898 * 8 + 4)

// MDCARL<MDCL0>
extern volatile __bit MDCL0 __attribute__((address(0x44D0))); // @ (0x89A * 8 + 0)

// MDCARL<MDCL1>
extern volatile __bit MDCL1 __attribute__((address(0x44D1))); // @ (0x89A * 8 + 1)

// MDCARL<MDCL2>
extern volatile __bit MDCL2 __attribute__((address(0x44D2))); // @ (0x89A * 8 + 2)

// MDCARL<MDCL3>
extern volatile __bit MDCL3 __attribute__((address(0x44D3))); // @ (0x89A * 8 + 3)

// MDCON1<MDCLPOL>
extern volatile __bit MDCLPOL __attribute__((address(0x44C1))); // @ (0x898 * 8 + 1)

// MDCON1<MDCLSYNC>
extern volatile __bit MDCLSYNC __attribute__((address(0x44C0))); // @ (0x898 * 8 + 0)

// MDCON0<MDEN>
extern volatile __bit MDEN __attribute__((address(0x44BF))); // @ (0x897 * 8 + 7)

// MDSRC<MDMS0>
extern volatile __bit MDMS0 __attribute__((address(0x44C8))); // @ (0x899 * 8 + 0)

// MDSRC<MDMS1>
extern volatile __bit MDMS1 __attribute__((address(0x44C9))); // @ (0x899 * 8 + 1)

// MDSRC<MDMS2>
extern volatile __bit MDMS2 __attribute__((address(0x44CA))); // @ (0x899 * 8 + 2)

// MDSRC<MDMS3>
extern volatile __bit MDMS3 __attribute__((address(0x44CB))); // @ (0x899 * 8 + 3)

// MDSRC<MDMS4>
extern volatile __bit MDMS4 __attribute__((address(0x44CC))); // @ (0x899 * 8 + 4)

// MDCON0<MDOPOL>
extern volatile __bit MDOPOL __attribute__((address(0x44BC))); // @ (0x897 * 8 + 4)

// MDCON0<MDOUT>
extern volatile __bit MDOUT __attribute__((address(0x44BD))); // @ (0x897 * 8 + 5)

// MDSRCPPS<MDSRCPPS0>
extern volatile __bit MDSRCPPS0 __attribute__((address(0x75D0))); // @ (0xEBA * 8 + 0)

// MDSRCPPS<MDSRCPPS1>
extern volatile __bit MDSRCPPS1 __attribute__((address(0x75D1))); // @ (0xEBA * 8 + 1)

// MDSRCPPS<MDSRCPPS2>
extern volatile __bit MDSRCPPS2 __attribute__((address(0x75D2))); // @ (0xEBA * 8 + 2)

// MDSRCPPS<MDSRCPPS3>
extern volatile __bit MDSRCPPS3 __attribute__((address(0x75D3))); // @ (0xEBA * 8 + 3)

// MDSRCPPS<MDSRCPPS4>
extern volatile __bit MDSRCPPS4 __attribute__((address(0x75D4))); // @ (0xEBA * 8 + 4)

// OSCEN<MFOEN>
extern volatile __bit MFOEN __attribute__((address(0x448D))); // @ (0x891 * 8 + 5)

// OSCSTAT<MFOR>
extern volatile __bit MFOR __attribute__((address(0x4485))); // @ (0x890 * 8 + 5)

// CLCDATA<MLC1OUT>
extern volatile __bit MLC1OUT __attribute__((address(0x7078))); // @ (0xE0F * 8 + 0)

// CLCDATA<MLC2OUT>
extern volatile __bit MLC2OUT __attribute__((address(0x7079))); // @ (0xE0F * 8 + 1)

// CLCDATA<MLC3OUT>
extern volatile __bit MLC3OUT __attribute__((address(0x707A))); // @ (0xE0F * 8 + 2)

// CLCDATA<MLC4OUT>
extern volatile __bit MLC4OUT __attribute__((address(0x707B))); // @ (0xE0F * 8 + 3)

// SSP1ADD<MSK01>
extern volatile __bit MSK01 __attribute__((address(0xC68))); // @ (0x18D * 8 + 0)

// SSP2ADD<MSK02>
extern volatile __bit MSK02 __attribute__((address(0xCB8))); // @ (0x197 * 8 + 0)

// SSP1ADD<MSK11>
extern volatile __bit MSK11 __attribute__((address(0xC69))); // @ (0x18D * 8 + 1)

// SSP2ADD<MSK12>
extern volatile __bit MSK12 __attribute__((address(0xCB9))); // @ (0x197 * 8 + 1)

// SSP1ADD<MSK21>
extern volatile __bit MSK21 __attribute__((address(0xC6A))); // @ (0x18D * 8 + 2)

// SSP2ADD<MSK22>
extern volatile __bit MSK22 __attribute__((address(0xCBA))); // @ (0x197 * 8 + 2)

// SSP1ADD<MSK31>
extern volatile __bit MSK31 __attribute__((address(0xC6B))); // @ (0x18D * 8 + 3)

// SSP2ADD<MSK32>
extern volatile __bit MSK32 __attribute__((address(0xCBB))); // @ (0x197 * 8 + 3)

// SSP1ADD<MSK41>
extern volatile __bit MSK41 __attribute__((address(0xC6C))); // @ (0x18D * 8 + 4)

// SSP2ADD<MSK42>
extern volatile __bit MSK42 __attribute__((address(0xCBC))); // @ (0x197 * 8 + 4)

// SSP1ADD<MSK51>
extern volatile __bit MSK51 __attribute__((address(0xC6D))); // @ (0x18D * 8 + 5)

// SSP2ADD<MSK52>
extern volatile __bit MSK52 __attribute__((address(0xCBD))); // @ (0x197 * 8 + 5)

// SSP1ADD<MSK61>
extern volatile __bit MSK61 __attribute__((address(0xC6E))); // @ (0x18D * 8 + 6)

// SSP2ADD<MSK62>
extern volatile __bit MSK62 __attribute__((address(0xCBE))); // @ (0x197 * 8 + 6)

// SSP1ADD<MSK71>
extern volatile __bit MSK71 __attribute__((address(0xC6F))); // @ (0x18D * 8 + 7)

// SSP2ADD<MSK72>
extern volatile __bit MSK72 __attribute__((address(0xCBF))); // @ (0x197 * 8 + 7)

// PMD4<MSSP1MD>
extern volatile __bit MSSP1MD __attribute__((address(0x3CD4))); // @ (0x79A * 8 + 4)

// PMD4<MSSP2MD>
extern volatile __bit MSSP2MD __attribute__((address(0x3CD5))); // @ (0x79A * 8 + 5)

// NCO1CLK<N1CKS0>
extern volatile __bit N1CKS0 __attribute__((address(0x2C98))); // @ (0x593 * 8 + 0)

// NCO1CLK<N1CKS1>
extern volatile __bit N1CKS1 __attribute__((address(0x2C99))); // @ (0x593 * 8 + 1)

// NCO1CLK<N1CKS2>
extern volatile __bit N1CKS2 __attribute__((address(0x2C9A))); // @ (0x593 * 8 + 2)

// NCO1CON<N1EN>
extern volatile __bit N1EN __attribute__((address(0x2C97))); // @ (0x592 * 8 + 7)

// NCO1CON<N1OUT>
extern volatile __bit N1OUT __attribute__((address(0x2C95))); // @ (0x592 * 8 + 5)

// NCO1CON<N1PFM>
extern volatile __bit N1PFM __attribute__((address(0x2C90))); // @ (0x592 * 8 + 0)

// NCO1CON<N1POL>
extern volatile __bit N1POL __attribute__((address(0x2C94))); // @ (0x592 * 8 + 4)

// NCO1CLK<N1PWS0>
extern volatile __bit N1PWS0 __attribute__((address(0x2C9D))); // @ (0x593 * 8 + 5)

// NCO1CLK<N1PWS1>
extern volatile __bit N1PWS1 __attribute__((address(0x2C9E))); // @ (0x593 * 8 + 6)

// NCO1CLK<N1PWS2>
extern volatile __bit N1PWS2 __attribute__((address(0x2C9F))); // @ (0x593 * 8 + 7)

// NCO1ACCL<NCO1ACC0>
extern volatile __bit NCO1ACC0 __attribute__((address(0x2C60))); // @ (0x58C * 8 + 0)

// NCO1ACCL<NCO1ACC1>
extern volatile __bit NCO1ACC1 __attribute__((address(0x2C61))); // @ (0x58C * 8 + 1)

// NCO1ACCH<NCO1ACC10>
extern volatile __bit NCO1ACC10 __attribute__((address(0x2C6A))); // @ (0x58D * 8 + 2)

// NCO1ACCH<NCO1ACC11>
extern volatile __bit NCO1ACC11 __attribute__((address(0x2C6B))); // @ (0x58D * 8 + 3)

// NCO1ACCH<NCO1ACC12>
extern volatile __bit NCO1ACC12 __attribute__((address(0x2C6C))); // @ (0x58D * 8 + 4)

// NCO1ACCH<NCO1ACC13>
extern volatile __bit NCO1ACC13 __attribute__((address(0x2C6D))); // @ (0x58D * 8 + 5)

// NCO1ACCH<NCO1ACC14>
extern volatile __bit NCO1ACC14 __attribute__((address(0x2C6E))); // @ (0x58D * 8 + 6)

// NCO1ACCH<NCO1ACC15>
extern volatile __bit NCO1ACC15 __attribute__((address(0x2C6F))); // @ (0x58D * 8 + 7)

// NCO1ACCU<NCO1ACC16>
extern volatile __bit NCO1ACC16 __attribute__((address(0x2C70))); // @ (0x58E * 8 + 0)

// NCO1ACCU<NCO1ACC17>
extern volatile __bit NCO1ACC17 __attribute__((address(0x2C71))); // @ (0x58E * 8 + 1)

// NCO1ACCU<NCO1ACC18>
extern volatile __bit NCO1ACC18 __attribute__((address(0x2C72))); // @ (0x58E * 8 + 2)

// NCO1ACCU<NCO1ACC19>
extern volatile __bit NCO1ACC19 __attribute__((address(0x2C73))); // @ (0x58E * 8 + 3)

// NCO1ACCL<NCO1ACC2>
extern volatile __bit NCO1ACC2 __attribute__((address(0x2C62))); // @ (0x58C * 8 + 2)

// NCO1ACCL<NCO1ACC3>
extern volatile __bit NCO1ACC3 __attribute__((address(0x2C63))); // @ (0x58C * 8 + 3)

// NCO1ACCL<NCO1ACC4>
extern volatile __bit NCO1ACC4 __attribute__((address(0x2C64))); // @ (0x58C * 8 + 4)

// NCO1ACCL<NCO1ACC5>
extern volatile __bit NCO1ACC5 __attribute__((address(0x2C65))); // @ (0x58C * 8 + 5)

// NCO1ACCL<NCO1ACC6>
extern volatile __bit NCO1ACC6 __attribute__((address(0x2C66))); // @ (0x58C * 8 + 6)

// NCO1ACCL<NCO1ACC7>
extern volatile __bit NCO1ACC7 __attribute__((address(0x2C67))); // @ (0x58C * 8 + 7)

// NCO1ACCH<NCO1ACC8>
extern volatile __bit NCO1ACC8 __attribute__((address(0x2C68))); // @ (0x58D * 8 + 0)

// NCO1ACCH<NCO1ACC9>
extern volatile __bit NCO1ACC9 __attribute__((address(0x2C69))); // @ (0x58D * 8 + 1)

// PIE7<NCO1IE>
extern volatile __bit NCO1IE __attribute__((address(0x38EC))); // @ (0x71D * 8 + 4)

// PIR7<NCO1IF>
extern volatile __bit NCO1IF __attribute__((address(0x389C))); // @ (0x713 * 8 + 4)

// NCO1INCL<NCO1INC0>
extern volatile __bit NCO1INC0 __attribute__((address(0x2C78))); // @ (0x58F * 8 + 0)

// NCO1INCL<NCO1INC1>
extern volatile __bit NCO1INC1 __attribute__((address(0x2C79))); // @ (0x58F * 8 + 1)

// NCO1INCH<NCO1INC10>
extern volatile __bit NCO1INC10 __attribute__((address(0x2C82))); // @ (0x590 * 8 + 2)

// NCO1INCH<NCO1INC11>
extern volatile __bit NCO1INC11 __attribute__((address(0x2C83))); // @ (0x590 * 8 + 3)

// NCO1INCH<NCO1INC12>
extern volatile __bit NCO1INC12 __attribute__((address(0x2C84))); // @ (0x590 * 8 + 4)

// NCO1INCH<NCO1INC13>
extern volatile __bit NCO1INC13 __attribute__((address(0x2C85))); // @ (0x590 * 8 + 5)

// NCO1INCH<NCO1INC14>
extern volatile __bit NCO1INC14 __attribute__((address(0x2C86))); // @ (0x590 * 8 + 6)

// NCO1INCH<NCO1INC15>
extern volatile __bit NCO1INC15 __attribute__((address(0x2C87))); // @ (0x590 * 8 + 7)

// NCO1INCU<NCO1INC16>
extern volatile __bit NCO1INC16 __attribute__((address(0x2C88))); // @ (0x591 * 8 + 0)

// NCO1INCU<NCO1INC17>
extern volatile __bit NCO1INC17 __attribute__((address(0x2C89))); // @ (0x591 * 8 + 1)

// NCO1INCU<NCO1INC18>
extern volatile __bit NCO1INC18 __attribute__((address(0x2C8A))); // @ (0x591 * 8 + 2)

// NCO1INCU<NCO1INC19>
extern volatile __bit NCO1INC19 __attribute__((address(0x2C8B))); // @ (0x591 * 8 + 3)

// NCO1INCL<NCO1INC2>
extern volatile __bit NCO1INC2 __attribute__((address(0x2C7A))); // @ (0x58F * 8 + 2)

// NCO1INCL<NCO1INC3>
extern volatile __bit NCO1INC3 __attribute__((address(0x2C7B))); // @ (0x58F * 8 + 3)

// NCO1INCL<NCO1INC4>
extern volatile __bit NCO1INC4 __attribute__((address(0x2C7C))); // @ (0x58F * 8 + 4)

// NCO1INCL<NCO1INC5>
extern volatile __bit NCO1INC5 __attribute__((address(0x2C7D))); // @ (0x58F * 8 + 5)

// NCO1INCL<NCO1INC6>
extern volatile __bit NCO1INC6 __attribute__((address(0x2C7E))); // @ (0x58F * 8 + 6)

// NCO1INCL<NCO1INC7>
extern volatile __bit NCO1INC7 __attribute__((address(0x2C7F))); // @ (0x58F * 8 + 7)

// NCO1INCH<NCO1INC8>
extern volatile __bit NCO1INC8 __attribute__((address(0x2C80))); // @ (0x590 * 8 + 0)

// NCO1INCH<NCO1INC9>
extern volatile __bit NCO1INC9 __attribute__((address(0x2C81))); // @ (0x590 * 8 + 1)

// PMD1<NCO1MD>
extern volatile __bit NCO1MD __attribute__((address(0x3CBF))); // @ (0x797 * 8 + 7)

// PIE7<NCOIE>
extern volatile __bit NCOIE __attribute__((address(0x38EC))); // @ (0x71D * 8 + 4)

// PIR7<NCOIF>
extern volatile __bit NCOIF __attribute__((address(0x389C))); // @ (0x713 * 8 + 4)

// PMD1<NCOMD>
extern volatile __bit NCOMD __attribute__((address(0x3CBF))); // @ (0x797 * 8 + 7)

// OSCCON1<NDIV0>
extern volatile __bit NDIV0 __attribute__((address(0x4468))); // @ (0x88D * 8 + 0)

// OSCCON1<NDIV1>
extern volatile __bit NDIV1 __attribute__((address(0x4469))); // @ (0x88D * 8 + 1)

// OSCCON1<NDIV2>
extern volatile __bit NDIV2 __attribute__((address(0x446A))); // @ (0x88D * 8 + 2)

// OSCCON1<NDIV3>
extern volatile __bit NDIV3 __attribute__((address(0x446B))); // @ (0x88D * 8 + 3)

// OSCCON1<NOSC0>
extern volatile __bit NOSC0 __attribute__((address(0x446C))); // @ (0x88D * 8 + 4)

// OSCCON1<NOSC1>
extern volatile __bit NOSC1 __attribute__((address(0x446D))); // @ (0x88D * 8 + 5)

// OSCCON1<NOSC2>
extern volatile __bit NOSC2 __attribute__((address(0x446E))); // @ (0x88D * 8 + 6)

// OSCCON3<NOSCR>
extern volatile __bit NOSCR __attribute__((address(0x447B))); // @ (0x88F * 8 + 3)

// DAC1CON0<NSS>
extern volatile __bit NSS __attribute__((address(0x4870))); // @ (0x90E * 8 + 0)

// NVMADRL<NVMADR0>
extern volatile __bit NVMADR0 __attribute__((address(0x40D0))); // @ (0x81A * 8 + 0)

// NVMADRL<NVMADR1>
extern volatile __bit NVMADR1 __attribute__((address(0x40D1))); // @ (0x81A * 8 + 1)

// NVMADRH<NVMADR10>
extern volatile __bit NVMADR10 __attribute__((address(0x40DA))); // @ (0x81B * 8 + 2)

// NVMADRH<NVMADR11>
extern volatile __bit NVMADR11 __attribute__((address(0x40DB))); // @ (0x81B * 8 + 3)

// NVMADRH<NVMADR12>
extern volatile __bit NVMADR12 __attribute__((address(0x40DC))); // @ (0x81B * 8 + 4)

// NVMADRH<NVMADR13>
extern volatile __bit NVMADR13 __attribute__((address(0x40DD))); // @ (0x81B * 8 + 5)

// NVMADRH<NVMADR14>
extern volatile __bit NVMADR14 __attribute__((address(0x40DE))); // @ (0x81B * 8 + 6)

// NVMADRL<NVMADR2>
extern volatile __bit NVMADR2 __attribute__((address(0x40D2))); // @ (0x81A * 8 + 2)

// NVMADRL<NVMADR3>
extern volatile __bit NVMADR3 __attribute__((address(0x40D3))); // @ (0x81A * 8 + 3)

// NVMADRL<NVMADR4>
extern volatile __bit NVMADR4 __attribute__((address(0x40D4))); // @ (0x81A * 8 + 4)

// NVMADRL<NVMADR5>
extern volatile __bit NVMADR5 __attribute__((address(0x40D5))); // @ (0x81A * 8 + 5)

// NVMADRL<NVMADR6>
extern volatile __bit NVMADR6 __attribute__((address(0x40D6))); // @ (0x81A * 8 + 6)

// NVMADRL<NVMADR7>
extern volatile __bit NVMADR7 __attribute__((address(0x40D7))); // @ (0x81A * 8 + 7)

// NVMADRH<NVMADR8>
extern volatile __bit NVMADR8 __attribute__((address(0x40D8))); // @ (0x81B * 8 + 0)

// NVMADRH<NVMADR9>
extern volatile __bit NVMADR9 __attribute__((address(0x40D9))); // @ (0x81B * 8 + 1)

// NVMDATL<NVMDAT0>
extern volatile __bit NVMDAT0 __attribute__((address(0x40E0))); // @ (0x81C * 8 + 0)

// NVMDATL<NVMDAT1>
extern volatile __bit NVMDAT1 __attribute__((address(0x40E1))); // @ (0x81C * 8 + 1)

// NVMDATH<NVMDAT10>
extern volatile __bit NVMDAT10 __attribute__((address(0x40EA))); // @ (0x81D * 8 + 2)

// NVMDATH<NVMDAT11>
extern volatile __bit NVMDAT11 __attribute__((address(0x40EB))); // @ (0x81D * 8 + 3)

// NVMDATH<NVMDAT12>
extern volatile __bit NVMDAT12 __attribute__((address(0x40EC))); // @ (0x81D * 8 + 4)

// NVMDATH<NVMDAT13>
extern volatile __bit NVMDAT13 __attribute__((address(0x40ED))); // @ (0x81D * 8 + 5)

// NVMDATL<NVMDAT2>
extern volatile __bit NVMDAT2 __attribute__((address(0x40E2))); // @ (0x81C * 8 + 2)

// NVMDATL<NVMDAT3>
extern volatile __bit NVMDAT3 __attribute__((address(0x40E3))); // @ (0x81C * 8 + 3)

// NVMDATL<NVMDAT4>
extern volatile __bit NVMDAT4 __attribute__((address(0x40E4))); // @ (0x81C * 8 + 4)

// NVMDATL<NVMDAT5>
extern volatile __bit NVMDAT5 __attribute__((address(0x40E5))); // @ (0x81C * 8 + 5)

// NVMDATL<NVMDAT6>
extern volatile __bit NVMDAT6 __attribute__((address(0x40E6))); // @ (0x81C * 8 + 6)

// NVMDATL<NVMDAT7>
extern volatile __bit NVMDAT7 __attribute__((address(0x40E7))); // @ (0x81C * 8 + 7)

// NVMDATH<NVMDAT8>
extern volatile __bit NVMDAT8 __attribute__((address(0x40E8))); // @ (0x81D * 8 + 0)

// NVMDATH<NVMDAT9>
extern volatile __bit NVMDAT9 __attribute__((address(0x40E9))); // @ (0x81D * 8 + 1)

// PIE7<NVMIE>
extern volatile __bit NVMIE __attribute__((address(0x38ED))); // @ (0x71D * 8 + 5)

// PIR7<NVMIF>
extern volatile __bit NVMIF __attribute__((address(0x389D))); // @ (0x713 * 8 + 5)

// PMD0<NVMMD>
extern volatile __bit NVMMD __attribute__((address(0x3CB2))); // @ (0x796 * 8 + 2)

// NVMCON1<NVMREGS>
extern volatile __bit NVMREGS __attribute__((address(0x40F6))); // @ (0x81E * 8 + 6)

// ODCONA<ODCA0>
extern volatile __bit ODCA0 __attribute__((address(0x79D0))); // @ (0xF3A * 8 + 0)

// ODCONA<ODCA1>
extern volatile __bit ODCA1 __attribute__((address(0x79D1))); // @ (0xF3A * 8 + 1)

// ODCONA<ODCA2>
extern volatile __bit ODCA2 __attribute__((address(0x79D2))); // @ (0xF3A * 8 + 2)

// ODCONA<ODCA3>
extern volatile __bit ODCA3 __attribute__((address(0x79D3))); // @ (0xF3A * 8 + 3)

// ODCONA<ODCA4>
extern volatile __bit ODCA4 __attribute__((address(0x79D4))); // @ (0xF3A * 8 + 4)

// ODCONA<ODCA5>
extern volatile __bit ODCA5 __attribute__((address(0x79D5))); // @ (0xF3A * 8 + 5)

// ODCONA<ODCA6>
extern volatile __bit ODCA6 __attribute__((address(0x79D6))); // @ (0xF3A * 8 + 6)

// ODCONA<ODCA7>
extern volatile __bit ODCA7 __attribute__((address(0x79D7))); // @ (0xF3A * 8 + 7)

// ODCONB<ODCB0>
extern volatile __bit ODCB0 __attribute__((address(0x7A28))); // @ (0xF45 * 8 + 0)

// ODCONB<ODCB1>
extern volatile __bit ODCB1 __attribute__((address(0x7A29))); // @ (0xF45 * 8 + 1)

// ODCONB<ODCB2>
extern volatile __bit ODCB2 __attribute__((address(0x7A2A))); // @ (0xF45 * 8 + 2)

// ODCONB<ODCB3>
extern volatile __bit ODCB3 __attribute__((address(0x7A2B))); // @ (0xF45 * 8 + 3)

// ODCONB<ODCB4>
extern volatile __bit ODCB4 __attribute__((address(0x7A2C))); // @ (0xF45 * 8 + 4)

// ODCONB<ODCB5>
extern volatile __bit ODCB5 __attribute__((address(0x7A2D))); // @ (0xF45 * 8 + 5)

// ODCONB<ODCB6>
extern volatile __bit ODCB6 __attribute__((address(0x7A2E))); // @ (0xF45 * 8 + 6)

// ODCONB<ODCB7>
extern volatile __bit ODCB7 __attribute__((address(0x7A2F))); // @ (0xF45 * 8 + 7)

// ODCONC<ODCC0>
extern volatile __bit ODCC0 __attribute__((address(0x7A80))); // @ (0xF50 * 8 + 0)

// ODCONC<ODCC1>
extern volatile __bit ODCC1 __attribute__((address(0x7A81))); // @ (0xF50 * 8 + 1)

// ODCONC<ODCC2>
extern volatile __bit ODCC2 __attribute__((address(0x7A82))); // @ (0xF50 * 8 + 2)

// ODCONC<ODCC3>
extern volatile __bit ODCC3 __attribute__((address(0x7A83))); // @ (0xF50 * 8 + 3)

// ODCONC<ODCC4>
extern volatile __bit ODCC4 __attribute__((address(0x7A84))); // @ (0xF50 * 8 + 4)

// ODCONC<ODCC5>
extern volatile __bit ODCC5 __attribute__((address(0x7A85))); // @ (0xF50 * 8 + 5)

// ODCONC<ODCC6>
extern volatile __bit ODCC6 __attribute__((address(0x7A86))); // @ (0xF50 * 8 + 6)

// ODCONC<ODCC7>
extern volatile __bit ODCC7 __attribute__((address(0x7A87))); // @ (0xF50 * 8 + 7)

// DAC1CON0<OE1>
extern volatile __bit OE1 __attribute__((address(0x4875))); // @ (0x90E * 8 + 5)

// DAC1CON0<OE2>
extern volatile __bit OE2 __attribute__((address(0x4874))); // @ (0x90E * 8 + 4)

// RC1STA<OERR>
extern volatile __bit OERR __attribute__((address(0x8E9))); // @ (0x11D * 8 + 1)

// OSCCON3<ORDY>
extern volatile __bit ORDY __attribute__((address(0x447C))); // @ (0x88F * 8 + 4)

// PIE1<OSFIE>
extern volatile __bit OSFIE __attribute__((address(0x38BF))); // @ (0x717 * 8 + 7)

// PIR1<OSFIF>
extern volatile __bit OSFIF __attribute__((address(0x386F))); // @ (0x70D * 8 + 7)

// CCPTMRS1<P6TSEL0>
extern volatile __bit P6TSEL0 __attribute__((address(0x10FA))); // @ (0x21F * 8 + 2)

// CCPTMRS1<P6TSEL1>
extern volatile __bit P6TSEL1 __attribute__((address(0x10FB))); // @ (0x21F * 8 + 3)

// CCPTMRS1<P7TSEL0>
extern volatile __bit P7TSEL0 __attribute__((address(0x10FC))); // @ (0x21F * 8 + 4)

// CCPTMRS1<P7TSEL1>
extern volatile __bit P7TSEL1 __attribute__((address(0x10FD))); // @ (0x21F * 8 + 5)

// INTCON<PEIE>
extern volatile __bit PEIE __attribute__((address(0x5E))); // @ (0xB * 8 + 6)

// SSP1CON2<PEN1>
extern volatile __bit PEN1 __attribute__((address(0xC8A))); // @ (0x191 * 8 + 2)

// SSP2CON2<PEN2>
extern volatile __bit PEN2 __attribute__((address(0xCDA))); // @ (0x19B * 8 + 2)

// CRCCON1<PLEN0>
extern volatile __bit PLEN0 __attribute__((address(0x20F8))); // @ (0x41F * 8 + 0)

// CRCCON1<PLEN1>
extern volatile __bit PLEN1 __attribute__((address(0x20F9))); // @ (0x41F * 8 + 1)

// CRCCON1<PLEN2>
extern volatile __bit PLEN2 __attribute__((address(0x20FA))); // @ (0x41F * 8 + 2)

// CRCCON1<PLEN3>
extern volatile __bit PLEN3 __attribute__((address(0x20FB))); // @ (0x41F * 8 + 3)

// OSCSTAT<PLLR>
extern volatile __bit PLLR __attribute__((address(0x4480))); // @ (0x890 * 8 + 0)

// PPSLOCK<PPSLOCKED>
extern volatile __bit PPSLOCKED __attribute__((address(0x7478))); // @ (0xE8F * 8 + 0)

// WDTPSL<PSCNT0>
extern volatile __bit PSCNT0 __attribute__((address(0x4070))); // @ (0x80E * 8 + 0)

// WDTPSL<PSCNT1>
extern volatile __bit PSCNT1 __attribute__((address(0x4071))); // @ (0x80E * 8 + 1)

// WDTPSH<PSCNT10>
extern volatile __bit PSCNT10 __attribute__((address(0x407A))); // @ (0x80F * 8 + 2)

// WDTPSH<PSCNT11>
extern volatile __bit PSCNT11 __attribute__((address(0x407B))); // @ (0x80F * 8 + 3)

// WDTPSH<PSCNT12>
extern volatile __bit PSCNT12 __attribute__((address(0x407C))); // @ (0x80F * 8 + 4)

// WDTPSH<PSCNT13>
extern volatile __bit PSCNT13 __attribute__((address(0x407D))); // @ (0x80F * 8 + 5)

// WDTPSH<PSCNT14>
extern volatile __bit PSCNT14 __attribute__((address(0x407E))); // @ (0x80F * 8 + 6)

// WDTPSH<PSCNT15>
extern volatile __bit PSCNT15 __attribute__((address(0x407F))); // @ (0x80F * 8 + 7)

// WDTTMR<PSCNT16>
extern volatile __bit PSCNT16 __attribute__((address(0x4080))); // @ (0x810 * 8 + 0)

// WDTTMR<PSCNT17>
extern volatile __bit PSCNT17 __attribute__((address(0x4081))); // @ (0x810 * 8 + 1)

// WDTPSL<PSCNT2>
extern volatile __bit PSCNT2 __attribute__((address(0x4072))); // @ (0x80E * 8 + 2)

// WDTPSL<PSCNT3>
extern volatile __bit PSCNT3 __attribute__((address(0x4073))); // @ (0x80E * 8 + 3)

// WDTPSL<PSCNT4>
extern volatile __bit PSCNT4 __attribute__((address(0x4074))); // @ (0x80E * 8 + 4)

// WDTPSL<PSCNT5>
extern volatile __bit PSCNT5 __attribute__((address(0x4075))); // @ (0x80E * 8 + 5)

// WDTPSL<PSCNT6>
extern volatile __bit PSCNT6 __attribute__((address(0x4076))); // @ (0x80E * 8 + 6)

// WDTPSL<PSCNT7>
extern volatile __bit PSCNT7 __attribute__((address(0x4077))); // @ (0x80E * 8 + 7)

// WDTPSH<PSCNT8>
extern volatile __bit PSCNT8 __attribute__((address(0x4078))); // @ (0x80F * 8 + 0)

// WDTPSH<PSCNT9>
extern volatile __bit PSCNT9 __attribute__((address(0x4079))); // @ (0x80F * 8 + 1)

// DAC1CON0<PSS0>
extern volatile __bit PSS0 __attribute__((address(0x4872))); // @ (0x90E * 8 + 2)

// DAC1CON0<PSS1>
extern volatile __bit PSS1 __attribute__((address(0x4873))); // @ (0x90E * 8 + 3)

// PWM6DCL<PWM6DC0>
extern volatile __bit PWM6DC0 __attribute__((address(0x1C66))); // @ (0x38C * 8 + 6)

// PWM6DCL<PWM6DC1>
extern volatile __bit PWM6DC1 __attribute__((address(0x1C67))); // @ (0x38C * 8 + 7)

// PWM6DCH<PWM6DC2>
extern volatile __bit PWM6DC2 __attribute__((address(0x1C68))); // @ (0x38D * 8 + 0)

// PWM6DCH<PWM6DC3>
extern volatile __bit PWM6DC3 __attribute__((address(0x1C69))); // @ (0x38D * 8 + 1)

// PWM6DCH<PWM6DC4>
extern volatile __bit PWM6DC4 __attribute__((address(0x1C6A))); // @ (0x38D * 8 + 2)

// PWM6DCH<PWM6DC5>
extern volatile __bit PWM6DC5 __attribute__((address(0x1C6B))); // @ (0x38D * 8 + 3)

// PWM6DCH<PWM6DC6>
extern volatile __bit PWM6DC6 __attribute__((address(0x1C6C))); // @ (0x38D * 8 + 4)

// PWM6DCH<PWM6DC7>
extern volatile __bit PWM6DC7 __attribute__((address(0x1C6D))); // @ (0x38D * 8 + 5)

// PWM6DCH<PWM6DC8>
extern volatile __bit PWM6DC8 __attribute__((address(0x1C6E))); // @ (0x38D * 8 + 6)

// PWM6DCH<PWM6DC9>
extern volatile __bit PWM6DC9 __attribute__((address(0x1C6F))); // @ (0x38D * 8 + 7)

// PWM6CON<PWM6EN>
extern volatile __bit PWM6EN __attribute__((address(0x1C77))); // @ (0x38E * 8 + 7)

// PMD3<PWM6MD>
extern volatile __bit PWM6MD __attribute__((address(0x3CCD))); // @ (0x799 * 8 + 5)

// PWM6CON<PWM6OUT>
extern volatile __bit PWM6OUT __attribute__((address(0x1C75))); // @ (0x38E * 8 + 5)

// PWM6CON<PWM6POL>
extern volatile __bit PWM6POL __attribute__((address(0x1C74))); // @ (0x38E * 8 + 4)

// PWM7DCL<PWM7DC0>
extern volatile __bit PWM7DC0 __attribute__((address(0x1C86))); // @ (0x390 * 8 + 6)

// PWM7DCL<PWM7DC1>
extern volatile __bit PWM7DC1 __attribute__((address(0x1C87))); // @ (0x390 * 8 + 7)

// PWM7DCH<PWM7DC2>
extern volatile __bit PWM7DC2 __attribute__((address(0x1C88))); // @ (0x391 * 8 + 0)

// PWM7DCH<PWM7DC3>
extern volatile __bit PWM7DC3 __attribute__((address(0x1C89))); // @ (0x391 * 8 + 1)

// PWM7DCH<PWM7DC4>
extern volatile __bit PWM7DC4 __attribute__((address(0x1C8A))); // @ (0x391 * 8 + 2)

// PWM7DCH<PWM7DC5>
extern volatile __bit PWM7DC5 __attribute__((address(0x1C8B))); // @ (0x391 * 8 + 3)

// PWM7DCH<PWM7DC6>
extern volatile __bit PWM7DC6 __attribute__((address(0x1C8C))); // @ (0x391 * 8 + 4)

// PWM7DCH<PWM7DC7>
extern volatile __bit PWM7DC7 __attribute__((address(0x1C8D))); // @ (0x391 * 8 + 5)

// PWM7DCH<PWM7DC8>
extern volatile __bit PWM7DC8 __attribute__((address(0x1C8E))); // @ (0x391 * 8 + 6)

// PWM7DCH<PWM7DC9>
extern volatile __bit PWM7DC9 __attribute__((address(0x1C8F))); // @ (0x391 * 8 + 7)

// PWM7CON<PWM7EN>
extern volatile __bit PWM7EN __attribute__((address(0x1C97))); // @ (0x392 * 8 + 7)

// PMD3<PWM7MD>
extern volatile __bit PWM7MD __attribute__((address(0x3CCE))); // @ (0x799 * 8 + 6)

// PWM7CON<PWM7OUT>
extern volatile __bit PWM7OUT __attribute__((address(0x1C95))); // @ (0x392 * 8 + 5)

// PWM7CON<PWM7POL>
extern volatile __bit PWM7POL __attribute__((address(0x1C94))); // @ (0x392 * 8 + 4)

// PORTA<RA0>
extern volatile __bit RA0 __attribute__((address(0x60))); // @ (0xC * 8 + 0)

// RA0PPS<RA0PPS0>
extern volatile __bit RA0PPS0 __attribute__((address(0x7880))); // @ (0xF10 * 8 + 0)

// RA0PPS<RA0PPS1>
extern volatile __bit RA0PPS1 __attribute__((address(0x7881))); // @ (0xF10 * 8 + 1)

// RA0PPS<RA0PPS2>
extern volatile __bit RA0PPS2 __attribute__((address(0x7882))); // @ (0xF10 * 8 + 2)

// RA0PPS<RA0PPS3>
extern volatile __bit RA0PPS3 __attribute__((address(0x7883))); // @ (0xF10 * 8 + 3)

// RA0PPS<RA0PPS4>
extern volatile __bit RA0PPS4 __attribute__((address(0x7884))); // @ (0xF10 * 8 + 4)

// RA0PPS<RA0PPS5>
extern volatile __bit RA0PPS5 __attribute__((address(0x7885))); // @ (0xF10 * 8 + 5)

// PORTA<RA1>
extern volatile __bit RA1 __attribute__((address(0x61))); // @ (0xC * 8 + 1)

// RA1PPS<RA1PPS0>
extern volatile __bit RA1PPS0 __attribute__((address(0x7888))); // @ (0xF11 * 8 + 0)

// RA1PPS<RA1PPS1>
extern volatile __bit RA1PPS1 __attribute__((address(0x7889))); // @ (0xF11 * 8 + 1)

// RA1PPS<RA1PPS2>
extern volatile __bit RA1PPS2 __attribute__((address(0x788A))); // @ (0xF11 * 8 + 2)

// RA1PPS<RA1PPS3>
extern volatile __bit RA1PPS3 __attribute__((address(0x788B))); // @ (0xF11 * 8 + 3)

// RA1PPS<RA1PPS4>
extern volatile __bit RA1PPS4 __attribute__((address(0x788C))); // @ (0xF11 * 8 + 4)

// RA1PPS<RA1PPS5>
extern volatile __bit RA1PPS5 __attribute__((address(0x788D))); // @ (0xF11 * 8 + 5)

// PORTA<RA2>
extern volatile __bit RA2 __attribute__((address(0x62))); // @ (0xC * 8 + 2)

// RA2PPS<RA2PPS0>
extern volatile __bit RA2PPS0 __attribute__((address(0x7890))); // @ (0xF12 * 8 + 0)

// RA2PPS<RA2PPS1>
extern volatile __bit RA2PPS1 __attribute__((address(0x7891))); // @ (0xF12 * 8 + 1)

// RA2PPS<RA2PPS2>
extern volatile __bit RA2PPS2 __attribute__((address(0x7892))); // @ (0xF12 * 8 + 2)

// RA2PPS<RA2PPS3>
extern volatile __bit RA2PPS3 __attribute__((address(0x7893))); // @ (0xF12 * 8 + 3)

// RA2PPS<RA2PPS4>
extern volatile __bit RA2PPS4 __attribute__((address(0x7894))); // @ (0xF12 * 8 + 4)

// RA2PPS<RA2PPS5>
extern volatile __bit RA2PPS5 __attribute__((address(0x7895))); // @ (0xF12 * 8 + 5)

// PORTA<RA3>
extern volatile __bit RA3 __attribute__((address(0x63))); // @ (0xC * 8 + 3)

// RA3PPS<RA3PPS0>
extern volatile __bit RA3PPS0 __attribute__((address(0x7898))); // @ (0xF13 * 8 + 0)

// RA3PPS<RA3PPS1>
extern volatile __bit RA3PPS1 __attribute__((address(0x7899))); // @ (0xF13 * 8 + 1)

// RA3PPS<RA3PPS2>
extern volatile __bit RA3PPS2 __attribute__((address(0x789A))); // @ (0xF13 * 8 + 2)

// RA3PPS<RA3PPS3>
extern volatile __bit RA3PPS3 __attribute__((address(0x789B))); // @ (0xF13 * 8 + 3)

// RA3PPS<RA3PPS4>
extern volatile __bit RA3PPS4 __attribute__((address(0x789C))); // @ (0xF13 * 8 + 4)

// RA3PPS<RA3PPS5>
extern volatile __bit RA3PPS5 __attribute__((address(0x789D))); // @ (0xF13 * 8 + 5)

// PORTA<RA4>
extern volatile __bit RA4 __attribute__((address(0x64))); // @ (0xC * 8 + 4)

// RA4PPS<RA4PPS0>
extern volatile __bit RA4PPS0 __attribute__((address(0x78A0))); // @ (0xF14 * 8 + 0)

// RA4PPS<RA4PPS1>
extern volatile __bit RA4PPS1 __attribute__((address(0x78A1))); // @ (0xF14 * 8 + 1)

// RA4PPS<RA4PPS2>
extern volatile __bit RA4PPS2 __attribute__((address(0x78A2))); // @ (0xF14 * 8 + 2)

// RA4PPS<RA4PPS3>
extern volatile __bit RA4PPS3 __attribute__((address(0x78A3))); // @ (0xF14 * 8 + 3)

// RA4PPS<RA4PPS4>
extern volatile __bit RA4PPS4 __attribute__((address(0x78A4))); // @ (0xF14 * 8 + 4)

// RA4PPS<RA4PPS5>
extern volatile __bit RA4PPS5 __attribute__((address(0x78A5))); // @ (0xF14 * 8 + 5)

// PORTA<RA5>
extern volatile __bit RA5 __attribute__((address(0x65))); // @ (0xC * 8 + 5)

// RA5PPS<RA5PPS0>
extern volatile __bit RA5PPS0 __attribute__((address(0x78A8))); // @ (0xF15 * 8 + 0)

// RA5PPS<RA5PPS1>
extern volatile __bit RA5PPS1 __attribute__((address(0x78A9))); // @ (0xF15 * 8 + 1)

// RA5PPS<RA5PPS2>
extern volatile __bit RA5PPS2 __attribute__((address(0x78AA))); // @ (0xF15 * 8 + 2)

// RA5PPS<RA5PPS3>
extern volatile __bit RA5PPS3 __attribute__((address(0x78AB))); // @ (0xF15 * 8 + 3)

// RA5PPS<RA5PPS4>
extern volatile __bit RA5PPS4 __attribute__((address(0x78AC))); // @ (0xF15 * 8 + 4)

// RA5PPS<RA5PPS5>
extern volatile __bit RA5PPS5 __attribute__((address(0x78AD))); // @ (0xF15 * 8 + 5)

// PORTA<RA6>
extern volatile __bit RA6 __attribute__((address(0x66))); // @ (0xC * 8 + 6)

// RA6PPS<RA6PPS0>
extern volatile __bit RA6PPS0 __attribute__((address(0x78B0))); // @ (0xF16 * 8 + 0)

// RA6PPS<RA6PPS1>
extern volatile __bit RA6PPS1 __attribute__((address(0x78B1))); // @ (0xF16 * 8 + 1)

// RA6PPS<RA6PPS2>
extern volatile __bit RA6PPS2 __attribute__((address(0x78B2))); // @ (0xF16 * 8 + 2)

// RA6PPS<RA6PPS3>
extern volatile __bit RA6PPS3 __attribute__((address(0x78B3))); // @ (0xF16 * 8 + 3)

// RA6PPS<RA6PPS4>
extern volatile __bit RA6PPS4 __attribute__((address(0x78B4))); // @ (0xF16 * 8 + 4)

// RA6PPS<RA6PPS5>
extern volatile __bit RA6PPS5 __attribute__((address(0x78B5))); // @ (0xF16 * 8 + 5)

// PORTA<RA7>
extern volatile __bit RA7 __attribute__((address(0x67))); // @ (0xC * 8 + 7)

// RA7PPS<RA7PPS0>
extern volatile __bit RA7PPS0 __attribute__((address(0x78B8))); // @ (0xF17 * 8 + 0)

// RA7PPS<RA7PPS1>
extern volatile __bit RA7PPS1 __attribute__((address(0x78B9))); // @ (0xF17 * 8 + 1)

// RA7PPS<RA7PPS2>
extern volatile __bit RA7PPS2 __attribute__((address(0x78BA))); // @ (0xF17 * 8 + 2)

// RA7PPS<RA7PPS3>
extern volatile __bit RA7PPS3 __attribute__((address(0x78BB))); // @ (0xF17 * 8 + 3)

// RA7PPS<RA7PPS4>
extern volatile __bit RA7PPS4 __attribute__((address(0x78BC))); // @ (0xF17 * 8 + 4)

// RA7PPS<RA7PPS5>
extern volatile __bit RA7PPS5 __attribute__((address(0x78BD))); // @ (0xF17 * 8 + 5)

// PORTB<RB0>
extern volatile __bit RB0 __attribute__((address(0x68))); // @ (0xD * 8 + 0)

// RB0PPS<RB0PPS0>
extern volatile __bit RB0PPS0 __attribute__((address(0x78C0))); // @ (0xF18 * 8 + 0)

// RB0PPS<RB0PPS1>
extern volatile __bit RB0PPS1 __attribute__((address(0x78C1))); // @ (0xF18 * 8 + 1)

// RB0PPS<RB0PPS2>
extern volatile __bit RB0PPS2 __attribute__((address(0x78C2))); // @ (0xF18 * 8 + 2)

// RB0PPS<RB0PPS3>
extern volatile __bit RB0PPS3 __attribute__((address(0x78C3))); // @ (0xF18 * 8 + 3)

// RB0PPS<RB0PPS4>
extern volatile __bit RB0PPS4 __attribute__((address(0x78C4))); // @ (0xF18 * 8 + 4)

// RB0PPS<RB0PPS5>
extern volatile __bit RB0PPS5 __attribute__((address(0x78C5))); // @ (0xF18 * 8 + 5)

// PORTB<RB1>
extern volatile __bit RB1 __attribute__((address(0x69))); // @ (0xD * 8 + 1)

// RB1PPS<RB1PPS0>
extern volatile __bit RB1PPS0 __attribute__((address(0x78C8))); // @ (0xF19 * 8 + 0)

// RB1PPS<RB1PPS1>
extern volatile __bit RB1PPS1 __attribute__((address(0x78C9))); // @ (0xF19 * 8 + 1)

// RB1PPS<RB1PPS2>
extern volatile __bit RB1PPS2 __attribute__((address(0x78CA))); // @ (0xF19 * 8 + 2)

// RB1PPS<RB1PPS3>
extern volatile __bit RB1PPS3 __attribute__((address(0x78CB))); // @ (0xF19 * 8 + 3)

// RB1PPS<RB1PPS4>
extern volatile __bit RB1PPS4 __attribute__((address(0x78CC))); // @ (0xF19 * 8 + 4)

// RB1PPS<RB1PPS5>
extern volatile __bit RB1PPS5 __attribute__((address(0x78CD))); // @ (0xF19 * 8 + 5)

// PORTB<RB2>
extern volatile __bit RB2 __attribute__((address(0x6A))); // @ (0xD * 8 + 2)

// RB2PPS<RB2PPS0>
extern volatile __bit RB2PPS0 __attribute__((address(0x78D0))); // @ (0xF1A * 8 + 0)

// RB2PPS<RB2PPS1>
extern volatile __bit RB2PPS1 __attribute__((address(0x78D1))); // @ (0xF1A * 8 + 1)

// RB2PPS<RB2PPS2>
extern volatile __bit RB2PPS2 __attribute__((address(0x78D2))); // @ (0xF1A * 8 + 2)

// RB2PPS<RB2PPS3>
extern volatile __bit RB2PPS3 __attribute__((address(0x78D3))); // @ (0xF1A * 8 + 3)

// RB2PPS<RB2PPS4>
extern volatile __bit RB2PPS4 __attribute__((address(0x78D4))); // @ (0xF1A * 8 + 4)

// RB2PPS<RB2PPS5>
extern volatile __bit RB2PPS5 __attribute__((address(0x78D5))); // @ (0xF1A * 8 + 5)

// PORTB<RB3>
extern volatile __bit RB3 __attribute__((address(0x6B))); // @ (0xD * 8 + 3)

// RB3PPS<RB3PPS0>
extern volatile __bit RB3PPS0 __attribute__((address(0x78D8))); // @ (0xF1B * 8 + 0)

// RB3PPS<RB3PPS1>
extern volatile __bit RB3PPS1 __attribute__((address(0x78D9))); // @ (0xF1B * 8 + 1)

// RB3PPS<RB3PPS2>
extern volatile __bit RB3PPS2 __attribute__((address(0x78DA))); // @ (0xF1B * 8 + 2)

// RB3PPS<RB3PPS3>
extern volatile __bit RB3PPS3 __attribute__((address(0x78DB))); // @ (0xF1B * 8 + 3)

// RB3PPS<RB3PPS4>
extern volatile __bit RB3PPS4 __attribute__((address(0x78DC))); // @ (0xF1B * 8 + 4)

// RB3PPS<RB3PPS5>
extern volatile __bit RB3PPS5 __attribute__((address(0x78DD))); // @ (0xF1B * 8 + 5)

// PORTB<RB4>
extern volatile __bit RB4 __attribute__((address(0x6C))); // @ (0xD * 8 + 4)

// RB4PPS<RB4PPS0>
extern volatile __bit RB4PPS0 __attribute__((address(0x78E0))); // @ (0xF1C * 8 + 0)

// RB4PPS<RB4PPS1>
extern volatile __bit RB4PPS1 __attribute__((address(0x78E1))); // @ (0xF1C * 8 + 1)

// RB4PPS<RB4PPS2>
extern volatile __bit RB4PPS2 __attribute__((address(0x78E2))); // @ (0xF1C * 8 + 2)

// RB4PPS<RB4PPS3>
extern volatile __bit RB4PPS3 __attribute__((address(0x78E3))); // @ (0xF1C * 8 + 3)

// RB4PPS<RB4PPS4>
extern volatile __bit RB4PPS4 __attribute__((address(0x78E4))); // @ (0xF1C * 8 + 4)

// RB4PPS<RB4PPS5>
extern volatile __bit RB4PPS5 __attribute__((address(0x78E5))); // @ (0xF1C * 8 + 5)

// PORTB<RB5>
extern volatile __bit RB5 __attribute__((address(0x6D))); // @ (0xD * 8 + 5)

// RB5PPS<RB5PPS0>
extern volatile __bit RB5PPS0 __attribute__((address(0x78E8))); // @ (0xF1D * 8 + 0)

// RB5PPS<RB5PPS1>
extern volatile __bit RB5PPS1 __attribute__((address(0x78E9))); // @ (0xF1D * 8 + 1)

// RB5PPS<RB5PPS2>
extern volatile __bit RB5PPS2 __attribute__((address(0x78EA))); // @ (0xF1D * 8 + 2)

// RB5PPS<RB5PPS3>
extern volatile __bit RB5PPS3 __attribute__((address(0x78EB))); // @ (0xF1D * 8 + 3)

// RB5PPS<RB5PPS4>
extern volatile __bit RB5PPS4 __attribute__((address(0x78EC))); // @ (0xF1D * 8 + 4)

// RB5PPS<RB5PPS5>
extern volatile __bit RB5PPS5 __attribute__((address(0x78ED))); // @ (0xF1D * 8 + 5)

// PORTB<RB6>
extern volatile __bit RB6 __attribute__((address(0x6E))); // @ (0xD * 8 + 6)

// RB6PPS<RB6PPS0>
extern volatile __bit RB6PPS0 __attribute__((address(0x78F0))); // @ (0xF1E * 8 + 0)

// RB6PPS<RB6PPS1>
extern volatile __bit RB6PPS1 __attribute__((address(0x78F1))); // @ (0xF1E * 8 + 1)

// RB6PPS<RB6PPS2>
extern volatile __bit RB6PPS2 __attribute__((address(0x78F2))); // @ (0xF1E * 8 + 2)

// RB6PPS<RB6PPS3>
extern volatile __bit RB6PPS3 __attribute__((address(0x78F3))); // @ (0xF1E * 8 + 3)

// RB6PPS<RB6PPS4>
extern volatile __bit RB6PPS4 __attribute__((address(0x78F4))); // @ (0xF1E * 8 + 4)

// RB6PPS<RB6PPS5>
extern volatile __bit RB6PPS5 __attribute__((address(0x78F5))); // @ (0xF1E * 8 + 5)

// PORTB<RB7>
extern volatile __bit RB7 __attribute__((address(0x6F))); // @ (0xD * 8 + 7)

// RB7PPS<RB7PPS0>
extern volatile __bit RB7PPS0 __attribute__((address(0x78F8))); // @ (0xF1F * 8 + 0)

// RB7PPS<RB7PPS1>
extern volatile __bit RB7PPS1 __attribute__((address(0x78F9))); // @ (0xF1F * 8 + 1)

// RB7PPS<RB7PPS2>
extern volatile __bit RB7PPS2 __attribute__((address(0x78FA))); // @ (0xF1F * 8 + 2)

// RB7PPS<RB7PPS3>
extern volatile __bit RB7PPS3 __attribute__((address(0x78FB))); // @ (0xF1F * 8 + 3)

// RB7PPS<RB7PPS4>
extern volatile __bit RB7PPS4 __attribute__((address(0x78FC))); // @ (0xF1F * 8 + 4)

// RB7PPS<RB7PPS5>
extern volatile __bit RB7PPS5 __attribute__((address(0x78FD))); // @ (0xF1F * 8 + 5)

// PORTC<RC0>
extern volatile __bit RC0 __attribute__((address(0x70))); // @ (0xE * 8 + 0)

// RC0PPS<RC0PPS0>
extern volatile __bit RC0PPS0 __attribute__((address(0x7900))); // @ (0xF20 * 8 + 0)

// RC0PPS<RC0PPS1>
extern volatile __bit RC0PPS1 __attribute__((address(0x7901))); // @ (0xF20 * 8 + 1)

// RC0PPS<RC0PPS2>
extern volatile __bit RC0PPS2 __attribute__((address(0x7902))); // @ (0xF20 * 8 + 2)

// RC0PPS<RC0PPS3>
extern volatile __bit RC0PPS3 __attribute__((address(0x7903))); // @ (0xF20 * 8 + 3)

// RC0PPS<RC0PPS4>
extern volatile __bit RC0PPS4 __attribute__((address(0x7904))); // @ (0xF20 * 8 + 4)

// RC0PPS<RC0PPS5>
extern volatile __bit RC0PPS5 __attribute__((address(0x7905))); // @ (0xF20 * 8 + 5)

// PORTC<RC1>
extern volatile __bit RC1 __attribute__((address(0x71))); // @ (0xE * 8 + 1)

// RC1PPS<RC1PPS0>
extern volatile __bit RC1PPS0 __attribute__((address(0x7908))); // @ (0xF21 * 8 + 0)

// RC1PPS<RC1PPS1>
extern volatile __bit RC1PPS1 __attribute__((address(0x7909))); // @ (0xF21 * 8 + 1)

// RC1PPS<RC1PPS2>
extern volatile __bit RC1PPS2 __attribute__((address(0x790A))); // @ (0xF21 * 8 + 2)

// RC1PPS<RC1PPS3>
extern volatile __bit RC1PPS3 __attribute__((address(0x790B))); // @ (0xF21 * 8 + 3)

// RC1PPS<RC1PPS4>
extern volatile __bit RC1PPS4 __attribute__((address(0x790C))); // @ (0xF21 * 8 + 4)

// RC1PPS<RC1PPS5>
extern volatile __bit RC1PPS5 __attribute__((address(0x790D))); // @ (0xF21 * 8 + 5)

// PORTC<RC2>
extern volatile __bit RC2 __attribute__((address(0x72))); // @ (0xE * 8 + 2)

// RC2PPS<RC2PPS0>
extern volatile __bit RC2PPS0 __attribute__((address(0x7910))); // @ (0xF22 * 8 + 0)

// RC2PPS<RC2PPS1>
extern volatile __bit RC2PPS1 __attribute__((address(0x7911))); // @ (0xF22 * 8 + 1)

// RC2PPS<RC2PPS2>
extern volatile __bit RC2PPS2 __attribute__((address(0x7912))); // @ (0xF22 * 8 + 2)

// RC2PPS<RC2PPS3>
extern volatile __bit RC2PPS3 __attribute__((address(0x7913))); // @ (0xF22 * 8 + 3)

// RC2PPS<RC2PPS4>
extern volatile __bit RC2PPS4 __attribute__((address(0x7914))); // @ (0xF22 * 8 + 4)

// RC2PPS<RC2PPS5>
extern volatile __bit RC2PPS5 __attribute__((address(0x7915))); // @ (0xF22 * 8 + 5)

// PORTC<RC3>
extern volatile __bit RC3 __attribute__((address(0x73))); // @ (0xE * 8 + 3)

// RC3PPS<RC3PPS0>
extern volatile __bit RC3PPS0 __attribute__((address(0x7918))); // @ (0xF23 * 8 + 0)

// RC3PPS<RC3PPS1>
extern volatile __bit RC3PPS1 __attribute__((address(0x7919))); // @ (0xF23 * 8 + 1)

// RC3PPS<RC3PPS2>
extern volatile __bit RC3PPS2 __attribute__((address(0x791A))); // @ (0xF23 * 8 + 2)

// RC3PPS<RC3PPS3>
extern volatile __bit RC3PPS3 __attribute__((address(0x791B))); // @ (0xF23 * 8 + 3)

// RC3PPS<RC3PPS4>
extern volatile __bit RC3PPS4 __attribute__((address(0x791C))); // @ (0xF23 * 8 + 4)

// RC3PPS<RC3PPS5>
extern volatile __bit RC3PPS5 __attribute__((address(0x791D))); // @ (0xF23 * 8 + 5)

// PORTC<RC4>
extern volatile __bit RC4 __attribute__((address(0x74))); // @ (0xE * 8 + 4)

// RC4PPS<RC4PPS0>
extern volatile __bit RC4PPS0 __attribute__((address(0x7920))); // @ (0xF24 * 8 + 0)

// RC4PPS<RC4PPS1>
extern volatile __bit RC4PPS1 __attribute__((address(0x7921))); // @ (0xF24 * 8 + 1)

// RC4PPS<RC4PPS2>
extern volatile __bit RC4PPS2 __attribute__((address(0x7922))); // @ (0xF24 * 8 + 2)

// RC4PPS<RC4PPS3>
extern volatile __bit RC4PPS3 __attribute__((address(0x7923))); // @ (0xF24 * 8 + 3)

// RC4PPS<RC4PPS4>
extern volatile __bit RC4PPS4 __attribute__((address(0x7924))); // @ (0xF24 * 8 + 4)

// RC4PPS<RC4PPS5>
extern volatile __bit RC4PPS5 __attribute__((address(0x7925))); // @ (0xF24 * 8 + 5)

// PORTC<RC5>
extern volatile __bit RC5 __attribute__((address(0x75))); // @ (0xE * 8 + 5)

// RC5PPS<RC5PPS0>
extern volatile __bit RC5PPS0 __attribute__((address(0x7928))); // @ (0xF25 * 8 + 0)

// RC5PPS<RC5PPS1>
extern volatile __bit RC5PPS1 __attribute__((address(0x7929))); // @ (0xF25 * 8 + 1)

// RC5PPS<RC5PPS2>
extern volatile __bit RC5PPS2 __attribute__((address(0x792A))); // @ (0xF25 * 8 + 2)

// RC5PPS<RC5PPS3>
extern volatile __bit RC5PPS3 __attribute__((address(0x792B))); // @ (0xF25 * 8 + 3)

// RC5PPS<RC5PPS4>
extern volatile __bit RC5PPS4 __attribute__((address(0x792C))); // @ (0xF25 * 8 + 4)

// RC5PPS<RC5PPS5>
extern volatile __bit RC5PPS5 __attribute__((address(0x792D))); // @ (0xF25 * 8 + 5)

// PORTC<RC6>
extern volatile __bit RC6 __attribute__((address(0x76))); // @ (0xE * 8 + 6)

// RC6PPS<RC6PPS0>
extern volatile __bit RC6PPS0 __attribute__((address(0x7930))); // @ (0xF26 * 8 + 0)

// RC6PPS<RC6PPS1>
extern volatile __bit RC6PPS1 __attribute__((address(0x7931))); // @ (0xF26 * 8 + 1)

// RC6PPS<RC6PPS2>
extern volatile __bit RC6PPS2 __attribute__((address(0x7932))); // @ (0xF26 * 8 + 2)

// RC6PPS<RC6PPS3>
extern volatile __bit RC6PPS3 __attribute__((address(0x7933))); // @ (0xF26 * 8 + 3)

// RC6PPS<RC6PPS4>
extern volatile __bit RC6PPS4 __attribute__((address(0x7934))); // @ (0xF26 * 8 + 4)

// RC6PPS<RC6PPS5>
extern volatile __bit RC6PPS5 __attribute__((address(0x7935))); // @ (0xF26 * 8 + 5)

// PORTC<RC7>
extern volatile __bit RC7 __attribute__((address(0x77))); // @ (0xE * 8 + 7)

// RC7PPS<RC7PPS0>
extern volatile __bit RC7PPS0 __attribute__((address(0x7938))); // @ (0xF27 * 8 + 0)

// RC7PPS<RC7PPS1>
extern volatile __bit RC7PPS1 __attribute__((address(0x7939))); // @ (0xF27 * 8 + 1)

// RC7PPS<RC7PPS2>
extern volatile __bit RC7PPS2 __attribute__((address(0x793A))); // @ (0xF27 * 8 + 2)

// RC7PPS<RC7PPS3>
extern volatile __bit RC7PPS3 __attribute__((address(0x793B))); // @ (0xF27 * 8 + 3)

// RC7PPS<RC7PPS4>
extern volatile __bit RC7PPS4 __attribute__((address(0x793C))); // @ (0xF27 * 8 + 4)

// RC7PPS<RC7PPS5>
extern volatile __bit RC7PPS5 __attribute__((address(0x793D))); // @ (0xF27 * 8 + 5)

// SSP1CON2<RCEN1>
extern volatile __bit RCEN1 __attribute__((address(0xC8B))); // @ (0x191 * 8 + 3)

// SSP2CON2<RCEN2>
extern volatile __bit RCEN2 __attribute__((address(0xCDB))); // @ (0x19B * 8 + 3)

// BAUD1CON<RCIDL>
extern volatile __bit RCIDL __attribute__((address(0x8FE))); // @ (0x11F * 8 + 6)

// PIE3<RCIE>
extern volatile __bit RCIE __attribute__((address(0x38CD))); // @ (0x719 * 8 + 5)

// PIR3<RCIF>
extern volatile __bit RCIF __attribute__((address(0x387D))); // @ (0x70F * 8 + 5)

// NVMCON1<RD>
extern volatile __bit RD __attribute__((address(0x40F0))); // @ (0x81E * 8 + 0)

// T1CON<RD161>
extern volatile __bit RD161 __attribute__((address(0x1071))); // @ (0x20E * 8 + 1)

// T3CON<RD163>
extern volatile __bit RD163 __attribute__((address(0x10A1))); // @ (0x214 * 8 + 1)

// T5CON<RD165>
extern volatile __bit RD165 __attribute__((address(0x10D1))); // @ (0x21A * 8 + 1)

// PORTE<RE3>
extern volatile __bit RE3 __attribute__((address(0x83))); // @ (0x10 * 8 + 3)

// SSP1STAT<READ_WRITE1>
extern volatile __bit READ_WRITE1 __attribute__((address(0xC7A))); // @ (0x18F * 8 + 2)

// SSP2STAT<READ_WRITE2>
extern volatile __bit READ_WRITE2 __attribute__((address(0xCCA))); // @ (0x199 * 8 + 2)

// CPUDOZE<ROI>
extern volatile __bit ROI __attribute__((address(0x4465))); // @ (0x88C * 8 + 5)

// SSP1CON2<RSEN1>
extern volatile __bit RSEN1 __attribute__((address(0xC89))); // @ (0x191 * 8 + 1)

// SSP2CON2<RSEN2>
extern volatile __bit RSEN2 __attribute__((address(0xCD9))); // @ (0x19B * 8 + 1)

// SSP1STAT<RW1>
extern volatile __bit RW1 __attribute__((address(0xC7A))); // @ (0x18F * 8 + 2)

// SSP2STAT<RW2>
extern volatile __bit RW2 __attribute__((address(0xCCA))); // @ (0x199 * 8 + 2)

// RC1STA<RX9>
extern volatile __bit RX9 __attribute__((address(0x8EE))); // @ (0x11D * 8 + 6)

// RC1STA<RX9D>
extern volatile __bit RX9D __attribute__((address(0x8E8))); // @ (0x11D * 8 + 0)

// RXPPS<RXPPS0>
extern volatile __bit RXPPS0 __attribute__((address(0x7658))); // @ (0xECB * 8 + 0)

// RXPPS<RXPPS1>
extern volatile __bit RXPPS1 __attribute__((address(0x7659))); // @ (0xECB * 8 + 1)

// RXPPS<RXPPS2>
extern volatile __bit RXPPS2 __attribute__((address(0x765A))); // @ (0xECB * 8 + 2)

// RXPPS<RXPPS3>
extern volatile __bit RXPPS3 __attribute__((address(0x765B))); // @ (0xECB * 8 + 3)

// RXPPS<RXPPS4>
extern volatile __bit RXPPS4 __attribute__((address(0x765C))); // @ (0xECB * 8 + 4)

// SSP1STAT<R_W1>
extern volatile __bit R_W1 __attribute__((address(0xC7A))); // @ (0x18F * 8 + 2)

// SSP2STAT<R_W2>
extern volatile __bit R_W2 __attribute__((address(0xCCA))); // @ (0x199 * 8 + 2)

// SSP1STAT<R_nW1>
extern volatile __bit R_nW1 __attribute__((address(0xC7A))); // @ (0x18F * 8 + 2)

// SSP2STAT<R_nW2>
extern volatile __bit R_nW2 __attribute__((address(0xCCA))); // @ (0x199 * 8 + 2)

// BORCON<SBOREN>
extern volatile __bit SBOREN __attribute__((address(0x408F))); // @ (0x811 * 8 + 7)

// SCANCON0<SCANBUSY>
extern volatile __bit SCANBUSY __attribute__((address(0x2085))); // @ (0x410 * 8 + 5)

// SCANCON0<SCANEN>
extern volatile __bit SCANEN __attribute__((address(0x2087))); // @ (0x410 * 8 + 7)

// SCANCON0<SCANGO>
extern volatile __bit SCANGO __attribute__((address(0x2086))); // @ (0x410 * 8 + 6)

// SCANHADRL<SCANHADR0>
extern volatile __bit SCANHADR0 __attribute__((address(0x2070))); // @ (0x40E * 8 + 0)

// SCANHADRL<SCANHADR1>
extern volatile __bit SCANHADR1 __attribute__((address(0x2071))); // @ (0x40E * 8 + 1)

// SCANHADRH<SCANHADR10>
extern volatile __bit SCANHADR10 __attribute__((address(0x207A))); // @ (0x40F * 8 + 2)

// SCANHADRH<SCANHADR11>
extern volatile __bit SCANHADR11 __attribute__((address(0x207B))); // @ (0x40F * 8 + 3)

// SCANHADRH<SCANHADR12>
extern volatile __bit SCANHADR12 __attribute__((address(0x207C))); // @ (0x40F * 8 + 4)

// SCANHADRH<SCANHADR13>
extern volatile __bit SCANHADR13 __attribute__((address(0x207D))); // @ (0x40F * 8 + 5)

// SCANHADRH<SCANHADR14>
extern volatile __bit SCANHADR14 __attribute__((address(0x207E))); // @ (0x40F * 8 + 6)

// SCANHADRH<SCANHADR15>
extern volatile __bit SCANHADR15 __attribute__((address(0x207F))); // @ (0x40F * 8 + 7)

// SCANHADRL<SCANHADR2>
extern volatile __bit SCANHADR2 __attribute__((address(0x2072))); // @ (0x40E * 8 + 2)

// SCANHADRL<SCANHADR3>
extern volatile __bit SCANHADR3 __attribute__((address(0x2073))); // @ (0x40E * 8 + 3)

// SCANHADRL<SCANHADR4>
extern volatile __bit SCANHADR4 __attribute__((address(0x2074))); // @ (0x40E * 8 + 4)

// SCANHADRL<SCANHADR5>
extern volatile __bit SCANHADR5 __attribute__((address(0x2075))); // @ (0x40E * 8 + 5)

// SCANHADRL<SCANHADR6>
extern volatile __bit SCANHADR6 __attribute__((address(0x2076))); // @ (0x40E * 8 + 6)

// SCANHADRL<SCANHADR7>
extern volatile __bit SCANHADR7 __attribute__((address(0x2077))); // @ (0x40E * 8 + 7)

// SCANHADRH<SCANHADR8>
extern volatile __bit SCANHADR8 __attribute__((address(0x2078))); // @ (0x40F * 8 + 0)

// SCANHADRH<SCANHADR9>
extern volatile __bit SCANHADR9 __attribute__((address(0x2079))); // @ (0x40F * 8 + 1)

// PIE7<SCANIE>
extern volatile __bit SCANIE __attribute__((address(0x38EF))); // @ (0x71D * 8 + 7)

// PIR7<SCANIF>
extern volatile __bit SCANIF __attribute__((address(0x389F))); // @ (0x713 * 8 + 7)

// SCANCON0<SCANINTM>
extern volatile __bit SCANINTM __attribute__((address(0x2083))); // @ (0x410 * 8 + 3)

// SCANCON0<SCANINVALID>
extern volatile __bit SCANINVALID __attribute__((address(0x2084))); // @ (0x410 * 8 + 4)

// SCANLADRL<SCANLADR0>
extern volatile __bit SCANLADR0 __attribute__((address(0x2060))); // @ (0x40C * 8 + 0)

// SCANLADRL<SCANLADR1>
extern volatile __bit SCANLADR1 __attribute__((address(0x2061))); // @ (0x40C * 8 + 1)

// SCANLADRH<SCANLADR10>
extern volatile __bit SCANLADR10 __attribute__((address(0x206A))); // @ (0x40D * 8 + 2)

// SCANLADRH<SCANLADR11>
extern volatile __bit SCANLADR11 __attribute__((address(0x206B))); // @ (0x40D * 8 + 3)

// SCANLADRH<SCANLADR12>
extern volatile __bit SCANLADR12 __attribute__((address(0x206C))); // @ (0x40D * 8 + 4)

// SCANLADRH<SCANLADR13>
extern volatile __bit SCANLADR13 __attribute__((address(0x206D))); // @ (0x40D * 8 + 5)

// SCANLADRH<SCANLADR14>
extern volatile __bit SCANLADR14 __attribute__((address(0x206E))); // @ (0x40D * 8 + 6)

// SCANLADRH<SCANLADR15>
extern volatile __bit SCANLADR15 __attribute__((address(0x206F))); // @ (0x40D * 8 + 7)

// SCANLADRL<SCANLADR2>
extern volatile __bit SCANLADR2 __attribute__((address(0x2062))); // @ (0x40C * 8 + 2)

// SCANLADRL<SCANLADR3>
extern volatile __bit SCANLADR3 __attribute__((address(0x2063))); // @ (0x40C * 8 + 3)

// SCANLADRL<SCANLADR4>
extern volatile __bit SCANLADR4 __attribute__((address(0x2064))); // @ (0x40C * 8 + 4)

// SCANLADRL<SCANLADR5>
extern volatile __bit SCANLADR5 __attribute__((address(0x2065))); // @ (0x40C * 8 + 5)

// SCANLADRL<SCANLADR6>
extern volatile __bit SCANLADR6 __attribute__((address(0x2066))); // @ (0x40C * 8 + 6)

// SCANLADRL<SCANLADR7>
extern volatile __bit SCANLADR7 __attribute__((address(0x2067))); // @ (0x40C * 8 + 7)

// SCANLADRH<SCANLADR8>
extern volatile __bit SCANLADR8 __attribute__((address(0x2068))); // @ (0x40D * 8 + 0)

// SCANLADRH<SCANLADR9>
extern volatile __bit SCANLADR9 __attribute__((address(0x2069))); // @ (0x40D * 8 + 1)

// PMD0<SCANMD>
extern volatile __bit SCANMD __attribute__((address(0x3CB3))); // @ (0x796 * 8 + 3)

// SCANCON0<SCANMODE0>
extern volatile __bit SCANMODE0 __attribute__((address(0x2080))); // @ (0x410 * 8 + 0)

// SCANCON0<SCANMODE1>
extern volatile __bit SCANMODE1 __attribute__((address(0x2081))); // @ (0x410 * 8 + 1)

// SCANTRIG<SCANTSEL0>
extern volatile __bit SCANTSEL0 __attribute__((address(0x2088))); // @ (0x411 * 8 + 0)

// SCANTRIG<SCANTSEL1>
extern volatile __bit SCANTSEL1 __attribute__((address(0x2089))); // @ (0x411 * 8 + 1)

// SCANTRIG<SCANTSEL2>
extern volatile __bit SCANTSEL2 __attribute__((address(0x208A))); // @ (0x411 * 8 + 2)

// SCANTRIG<SCANTSEL3>
extern volatile __bit SCANTSEL3 __attribute__((address(0x208B))); // @ (0x411 * 8 + 3)

// BAUD1CON<SCKP>
extern volatile __bit SCKP __attribute__((address(0x8FC))); // @ (0x11F * 8 + 4)

// SSP1CON2<SEN1>
extern volatile __bit SEN1 __attribute__((address(0xC88))); // @ (0x191 * 8 + 0)

// SSP2CON2<SEN2>
extern volatile __bit SEN2 __attribute__((address(0xCD8))); // @ (0x19B * 8 + 0)

// TX1STA<SENDB>
extern volatile __bit SENDB __attribute__((address(0x8F3))); // @ (0x11E * 8 + 3)

// CRCSHIFTL<SHFT0>
extern volatile __bit SHFT0 __attribute__((address(0x20D0))); // @ (0x41A * 8 + 0)

// CRCSHIFTL<SHFT1>
extern volatile __bit SHFT1 __attribute__((address(0x20D1))); // @ (0x41A * 8 + 1)

// CRCSHIFTH<SHFT10>
extern volatile __bit SHFT10 __attribute__((address(0x20DA))); // @ (0x41B * 8 + 2)

// CRCSHIFTH<SHFT11>
extern volatile __bit SHFT11 __attribute__((address(0x20DB))); // @ (0x41B * 8 + 3)

// CRCSHIFTH<SHFT12>
extern volatile __bit SHFT12 __attribute__((address(0x20DC))); // @ (0x41B * 8 + 4)

// CRCSHIFTH<SHFT13>
extern volatile __bit SHFT13 __attribute__((address(0x20DD))); // @ (0x41B * 8 + 5)

// CRCSHIFTH<SHFT14>
extern volatile __bit SHFT14 __attribute__((address(0x20DE))); // @ (0x41B * 8 + 6)

// CRCSHIFTH<SHFT15>
extern volatile __bit SHFT15 __attribute__((address(0x20DF))); // @ (0x41B * 8 + 7)

// CRCSHIFTL<SHFT2>
extern volatile __bit SHFT2 __attribute__((address(0x20D2))); // @ (0x41A * 8 + 2)

// CRCSHIFTL<SHFT3>
extern volatile __bit SHFT3 __attribute__((address(0x20D3))); // @ (0x41A * 8 + 3)

// CRCSHIFTL<SHFT4>
extern volatile __bit SHFT4 __attribute__((address(0x20D4))); // @ (0x41A * 8 + 4)

// CRCSHIFTL<SHFT5>
extern volatile __bit SHFT5 __attribute__((address(0x20D5))); // @ (0x41A * 8 + 5)

// CRCSHIFTL<SHFT6>
extern volatile __bit SHFT6 __attribute__((address(0x20D6))); // @ (0x41A * 8 + 6)

// CRCSHIFTL<SHFT7>
extern volatile __bit SHFT7 __attribute__((address(0x20D7))); // @ (0x41A * 8 + 7)

// CRCSHIFTH<SHFT8>
extern volatile __bit SHFT8 __attribute__((address(0x20D8))); // @ (0x41B * 8 + 0)

// CRCSHIFTH<SHFT9>
extern volatile __bit SHFT9 __attribute__((address(0x20D9))); // @ (0x41B * 8 + 1)

// CRCCON0<SHIFTM>
extern volatile __bit SHIFTM __attribute__((address(0x20F1))); // @ (0x41E * 8 + 1)

// SLRCONA<SLRA0>
extern volatile __bit SLRA0 __attribute__((address(0x79D8))); // @ (0xF3B * 8 + 0)

// SLRCONA<SLRA1>
extern volatile __bit SLRA1 __attribute__((address(0x79D9))); // @ (0xF3B * 8 + 1)

// SLRCONA<SLRA2>
extern volatile __bit SLRA2 __attribute__((address(0x79DA))); // @ (0xF3B * 8 + 2)

// SLRCONA<SLRA3>
extern volatile __bit SLRA3 __attribute__((address(0x79DB))); // @ (0xF3B * 8 + 3)

// SLRCONA<SLRA4>
extern volatile __bit SLRA4 __attribute__((address(0x79DC))); // @ (0xF3B * 8 + 4)

// SLRCONA<SLRA5>
extern volatile __bit SLRA5 __attribute__((address(0x79DD))); // @ (0xF3B * 8 + 5)

// SLRCONA<SLRA6>
extern volatile __bit SLRA6 __attribute__((address(0x79DE))); // @ (0xF3B * 8 + 6)

// SLRCONA<SLRA7>
extern volatile __bit SLRA7 __attribute__((address(0x79DF))); // @ (0xF3B * 8 + 7)

// SLRCONB<SLRB0>
extern volatile __bit SLRB0 __attribute__((address(0x7A30))); // @ (0xF46 * 8 + 0)

// SLRCONB<SLRB1>
extern volatile __bit SLRB1 __attribute__((address(0x7A31))); // @ (0xF46 * 8 + 1)

// SLRCONB<SLRB2>
extern volatile __bit SLRB2 __attribute__((address(0x7A32))); // @ (0xF46 * 8 + 2)

// SLRCONB<SLRB3>
extern volatile __bit SLRB3 __attribute__((address(0x7A33))); // @ (0xF46 * 8 + 3)

// SLRCONB<SLRB4>
extern volatile __bit SLRB4 __attribute__((address(0x7A34))); // @ (0xF46 * 8 + 4)

// SLRCONB<SLRB5>
extern volatile __bit SLRB5 __attribute__((address(0x7A35))); // @ (0xF46 * 8 + 5)

// SLRCONB<SLRB6>
extern volatile __bit SLRB6 __attribute__((address(0x7A36))); // @ (0xF46 * 8 + 6)

// SLRCONB<SLRB7>
extern volatile __bit SLRB7 __attribute__((address(0x7A37))); // @ (0xF46 * 8 + 7)

// SLRCONC<SLRC0>
extern volatile __bit SLRC0 __attribute__((address(0x7A88))); // @ (0xF51 * 8 + 0)

// SLRCONC<SLRC1>
extern volatile __bit SLRC1 __attribute__((address(0x7A89))); // @ (0xF51 * 8 + 1)

// SLRCONC<SLRC2>
extern volatile __bit SLRC2 __attribute__((address(0x7A8A))); // @ (0xF51 * 8 + 2)

// SLRCONC<SLRC3>
extern volatile __bit SLRC3 __attribute__((address(0x7A8B))); // @ (0xF51 * 8 + 3)

// SLRCONC<SLRC4>
extern volatile __bit SLRC4 __attribute__((address(0x7A8C))); // @ (0xF51 * 8 + 4)

// SLRCONC<SLRC5>
extern volatile __bit SLRC5 __attribute__((address(0x7A8D))); // @ (0xF51 * 8 + 5)

// SLRCONC<SLRC6>
extern volatile __bit SLRC6 __attribute__((address(0x7A8E))); // @ (0xF51 * 8 + 6)

// SLRCONC<SLRC7>
extern volatile __bit SLRC7 __attribute__((address(0x7A8F))); // @ (0xF51 * 8 + 7)

// SSP1STAT<SMP1>
extern volatile __bit SMP1 __attribute__((address(0xC7F))); // @ (0x18F * 8 + 7)

// SSP2STAT<SMP2>
extern volatile __bit SMP2 __attribute__((address(0xCCF))); // @ (0x199 * 8 + 7)

// SMT1STAT<SMT1AS>
extern volatile __bit SMT1AS __attribute__((address(0x24D0))); // @ (0x49A * 8 + 0)

// SMT1CON0<SMT1CPOL>
extern volatile __bit SMT1CPOL __attribute__((address(0x24C2))); // @ (0x498 * 8 + 2)

// SMT1CPRL<SMT1CPR0>
extern volatile __bit SMT1CPR0 __attribute__((address(0x2478))); // @ (0x48F * 8 + 0)

// SMT1CPRL<SMT1CPR1>
extern volatile __bit SMT1CPR1 __attribute__((address(0x2479))); // @ (0x48F * 8 + 1)

// SMT1CPRH<SMT1CPR10>
extern volatile __bit SMT1CPR10 __attribute__((address(0x2482))); // @ (0x490 * 8 + 2)

// SMT1CPRH<SMT1CPR11>
extern volatile __bit SMT1CPR11 __attribute__((address(0x2483))); // @ (0x490 * 8 + 3)

// SMT1CPRH<SMT1CPR12>
extern volatile __bit SMT1CPR12 __attribute__((address(0x2484))); // @ (0x490 * 8 + 4)

// SMT1CPRH<SMT1CPR13>
extern volatile __bit SMT1CPR13 __attribute__((address(0x2485))); // @ (0x490 * 8 + 5)

// SMT1CPRH<SMT1CPR14>
extern volatile __bit SMT1CPR14 __attribute__((address(0x2486))); // @ (0x490 * 8 + 6)

// SMT1CPRH<SMT1CPR15>
extern volatile __bit SMT1CPR15 __attribute__((address(0x2487))); // @ (0x490 * 8 + 7)

// SMT1CPRU<SMT1CPR16>
extern volatile __bit SMT1CPR16 __attribute__((address(0x2488))); // @ (0x491 * 8 + 0)

// SMT1CPRU<SMT1CPR17>
extern volatile __bit SMT1CPR17 __attribute__((address(0x2489))); // @ (0x491 * 8 + 1)

// SMT1CPRU<SMT1CPR18>
extern volatile __bit SMT1CPR18 __attribute__((address(0x248A))); // @ (0x491 * 8 + 2)

// SMT1CPRU<SMT1CPR19>
extern volatile __bit SMT1CPR19 __attribute__((address(0x248B))); // @ (0x491 * 8 + 3)

// SMT1CPRL<SMT1CPR2>
extern volatile __bit SMT1CPR2 __attribute__((address(0x247A))); // @ (0x48F * 8 + 2)

// SMT1CPRU<SMT1CPR20>
extern volatile __bit SMT1CPR20 __attribute__((address(0x248C))); // @ (0x491 * 8 + 4)

// SMT1CPRU<SMT1CPR21>
extern volatile __bit SMT1CPR21 __attribute__((address(0x248D))); // @ (0x491 * 8 + 5)

// SMT1CPRU<SMT1CPR22>
extern volatile __bit SMT1CPR22 __attribute__((address(0x248E))); // @ (0x491 * 8 + 6)

// SMT1CPRU<SMT1CPR23>
extern volatile __bit SMT1CPR23 __attribute__((address(0x248F))); // @ (0x491 * 8 + 7)

// SMT1CPRL<SMT1CPR3>
extern volatile __bit SMT1CPR3 __attribute__((address(0x247B))); // @ (0x48F * 8 + 3)

// SMT1CPRL<SMT1CPR4>
extern volatile __bit SMT1CPR4 __attribute__((address(0x247C))); // @ (0x48F * 8 + 4)

// SMT1CPRL<SMT1CPR5>
extern volatile __bit SMT1CPR5 __attribute__((address(0x247D))); // @ (0x48F * 8 + 5)

// SMT1CPRL<SMT1CPR6>
extern volatile __bit SMT1CPR6 __attribute__((address(0x247E))); // @ (0x48F * 8 + 6)

// SMT1CPRL<SMT1CPR7>
extern volatile __bit SMT1CPR7 __attribute__((address(0x247F))); // @ (0x48F * 8 + 7)

// SMT1CPRH<SMT1CPR8>
extern volatile __bit SMT1CPR8 __attribute__((address(0x2480))); // @ (0x490 * 8 + 0)

// SMT1CPRH<SMT1CPR9>
extern volatile __bit SMT1CPR9 __attribute__((address(0x2481))); // @ (0x490 * 8 + 1)

// SMT1STAT<SMT1CPRUP>
extern volatile __bit SMT1CPRUP __attribute__((address(0x24D7))); // @ (0x49A * 8 + 7)

// SMT1CPWL<SMT1CPW0>
extern volatile __bit SMT1CPW0 __attribute__((address(0x2490))); // @ (0x492 * 8 + 0)

// SMT1CPWL<SMT1CPW1>
extern volatile __bit SMT1CPW1 __attribute__((address(0x2491))); // @ (0x492 * 8 + 1)

// SMT1CPWH<SMT1CPW10>
extern volatile __bit SMT1CPW10 __attribute__((address(0x249A))); // @ (0x493 * 8 + 2)

// SMT1CPWH<SMT1CPW11>
extern volatile __bit SMT1CPW11 __attribute__((address(0x249B))); // @ (0x493 * 8 + 3)

// SMT1CPWH<SMT1CPW12>
extern volatile __bit SMT1CPW12 __attribute__((address(0x249C))); // @ (0x493 * 8 + 4)

// SMT1CPWH<SMT1CPW13>
extern volatile __bit SMT1CPW13 __attribute__((address(0x249D))); // @ (0x493 * 8 + 5)

// SMT1CPWH<SMT1CPW14>
extern volatile __bit SMT1CPW14 __attribute__((address(0x249E))); // @ (0x493 * 8 + 6)

// SMT1CPWH<SMT1CPW15>
extern volatile __bit SMT1CPW15 __attribute__((address(0x249F))); // @ (0x493 * 8 + 7)

// SMT1CPWU<SMT1CPW16>
extern volatile __bit SMT1CPW16 __attribute__((address(0x24A0))); // @ (0x494 * 8 + 0)

// SMT1CPWU<SMT1CPW17>
extern volatile __bit SMT1CPW17 __attribute__((address(0x24A1))); // @ (0x494 * 8 + 1)

// SMT1CPWU<SMT1CPW18>
extern volatile __bit SMT1CPW18 __attribute__((address(0x24A2))); // @ (0x494 * 8 + 2)

// SMT1CPWU<SMT1CPW19>
extern volatile __bit SMT1CPW19 __attribute__((address(0x24A3))); // @ (0x494 * 8 + 3)

// SMT1CPWL<SMT1CPW2>
extern volatile __bit SMT1CPW2 __attribute__((address(0x2492))); // @ (0x492 * 8 + 2)

// SMT1CPWU<SMT1CPW20>
extern volatile __bit SMT1CPW20 __attribute__((address(0x24A4))); // @ (0x494 * 8 + 4)

// SMT1CPWU<SMT1CPW21>
extern volatile __bit SMT1CPW21 __attribute__((address(0x24A5))); // @ (0x494 * 8 + 5)

// SMT1CPWU<SMT1CPW22>
extern volatile __bit SMT1CPW22 __attribute__((address(0x24A6))); // @ (0x494 * 8 + 6)

// SMT1CPWU<SMT1CPW23>
extern volatile __bit SMT1CPW23 __attribute__((address(0x24A7))); // @ (0x494 * 8 + 7)

// SMT1CPWL<SMT1CPW3>
extern volatile __bit SMT1CPW3 __attribute__((address(0x2493))); // @ (0x492 * 8 + 3)

// SMT1CPWL<SMT1CPW4>
extern volatile __bit SMT1CPW4 __attribute__((address(0x2494))); // @ (0x492 * 8 + 4)

// SMT1CPWL<SMT1CPW5>
extern volatile __bit SMT1CPW5 __attribute__((address(0x2495))); // @ (0x492 * 8 + 5)

// SMT1CPWL<SMT1CPW6>
extern volatile __bit SMT1CPW6 __attribute__((address(0x2496))); // @ (0x492 * 8 + 6)

// SMT1CPWL<SMT1CPW7>
extern volatile __bit SMT1CPW7 __attribute__((address(0x2497))); // @ (0x492 * 8 + 7)

// SMT1CPWH<SMT1CPW8>
extern volatile __bit SMT1CPW8 __attribute__((address(0x2498))); // @ (0x493 * 8 + 0)

// SMT1CPWH<SMT1CPW9>
extern volatile __bit SMT1CPW9 __attribute__((address(0x2499))); // @ (0x493 * 8 + 1)

// SMT1STAT<SMT1CPWUP>
extern volatile __bit SMT1CPWUP __attribute__((address(0x24D6))); // @ (0x49A * 8 + 6)

// SMT1CLK<SMT1CSEL0>
extern volatile __bit SMT1CSEL0 __attribute__((address(0x24D8))); // @ (0x49B * 8 + 0)

// SMT1CLK<SMT1CSEL1>
extern volatile __bit SMT1CSEL1 __attribute__((address(0x24D9))); // @ (0x49B * 8 + 1)

// SMT1CLK<SMT1CSEL2>
extern volatile __bit SMT1CSEL2 __attribute__((address(0x24DA))); // @ (0x49B * 8 + 2)

// SMT1CON0<SMT1EN>
extern volatile __bit SMT1EN __attribute__((address(0x24C7))); // @ (0x498 * 8 + 7)

// SMT1CON1<SMT1GO>
extern volatile __bit SMT1GO __attribute__((address(0x24CF))); // @ (0x499 * 8 + 7)

// PIE8<SMT1IE>
extern volatile __bit SMT1IE __attribute__((address(0x38F0))); // @ (0x71E * 8 + 0)

// PIR8<SMT1IF>
extern volatile __bit SMT1IF __attribute__((address(0x38A0))); // @ (0x714 * 8 + 0)

// PMD5<SMT1MD>
extern volatile __bit SMT1MD __attribute__((address(0x3CDE))); // @ (0x79B * 8 + 6)

// SMT1PRL<SMT1PR0>
extern volatile __bit SMT1PR0 __attribute__((address(0x24A8))); // @ (0x495 * 8 + 0)

// SMT1PRL<SMT1PR1>
extern volatile __bit SMT1PR1 __attribute__((address(0x24A9))); // @ (0x495 * 8 + 1)

// SMT1PRH<SMT1PR10>
extern volatile __bit SMT1PR10 __attribute__((address(0x24B2))); // @ (0x496 * 8 + 2)

// SMT1PRH<SMT1PR11>
extern volatile __bit SMT1PR11 __attribute__((address(0x24B3))); // @ (0x496 * 8 + 3)

// SMT1PRH<SMT1PR12>
extern volatile __bit SMT1PR12 __attribute__((address(0x24B4))); // @ (0x496 * 8 + 4)

// SMT1PRH<SMT1PR13>
extern volatile __bit SMT1PR13 __attribute__((address(0x24B5))); // @ (0x496 * 8 + 5)

// SMT1PRH<SMT1PR14>
extern volatile __bit SMT1PR14 __attribute__((address(0x24B6))); // @ (0x496 * 8 + 6)

// SMT1PRH<SMT1PR15>
extern volatile __bit SMT1PR15 __attribute__((address(0x24B7))); // @ (0x496 * 8 + 7)

// SMT1PRU<SMT1PR16>
extern volatile __bit SMT1PR16 __attribute__((address(0x24B8))); // @ (0x497 * 8 + 0)

// SMT1PRU<SMT1PR17>
extern volatile __bit SMT1PR17 __attribute__((address(0x24B9))); // @ (0x497 * 8 + 1)

// SMT1PRU<SMT1PR18>
extern volatile __bit SMT1PR18 __attribute__((address(0x24BA))); // @ (0x497 * 8 + 2)

// SMT1PRU<SMT1PR19>
extern volatile __bit SMT1PR19 __attribute__((address(0x24BB))); // @ (0x497 * 8 + 3)

// SMT1PRL<SMT1PR2>
extern volatile __bit SMT1PR2 __attribute__((address(0x24AA))); // @ (0x495 * 8 + 2)

// SMT1PRU<SMT1PR20>
extern volatile __bit SMT1PR20 __attribute__((address(0x24BC))); // @ (0x497 * 8 + 4)

// SMT1PRU<SMT1PR21>
extern volatile __bit SMT1PR21 __attribute__((address(0x24BD))); // @ (0x497 * 8 + 5)

// SMT1PRU<SMT1PR22>
extern volatile __bit SMT1PR22 __attribute__((address(0x24BE))); // @ (0x497 * 8 + 6)

// SMT1PRU<SMT1PR23>
extern volatile __bit SMT1PR23 __attribute__((address(0x24BF))); // @ (0x497 * 8 + 7)

// SMT1PRL<SMT1PR3>
extern volatile __bit SMT1PR3 __attribute__((address(0x24AB))); // @ (0x495 * 8 + 3)

// SMT1PRL<SMT1PR4>
extern volatile __bit SMT1PR4 __attribute__((address(0x24AC))); // @ (0x495 * 8 + 4)

// SMT1PRL<SMT1PR5>
extern volatile __bit SMT1PR5 __attribute__((address(0x24AD))); // @ (0x495 * 8 + 5)

// SMT1PRL<SMT1PR6>
extern volatile __bit SMT1PR6 __attribute__((address(0x24AE))); // @ (0x495 * 8 + 6)

// SMT1PRL<SMT1PR7>
extern volatile __bit SMT1PR7 __attribute__((address(0x24AF))); // @ (0x495 * 8 + 7)

// SMT1PRH<SMT1PR8>
extern volatile __bit SMT1PR8 __attribute__((address(0x24B0))); // @ (0x496 * 8 + 0)

// SMT1PRH<SMT1PR9>
extern volatile __bit SMT1PR9 __attribute__((address(0x24B1))); // @ (0x496 * 8 + 1)

// PIE8<SMT1PRAIE>
extern volatile __bit SMT1PRAIE __attribute__((address(0x38F1))); // @ (0x71E * 8 + 1)

// PIR8<SMT1PRAIF>
extern volatile __bit SMT1PRAIF __attribute__((address(0x38A1))); // @ (0x714 * 8 + 1)

// SMT1CON0<SMT1PS0>
extern volatile __bit SMT1PS0 __attribute__((address(0x24C0))); // @ (0x498 * 8 + 0)

// SMT1CON0<SMT1PS1>
extern volatile __bit SMT1PS1 __attribute__((address(0x24C1))); // @ (0x498 * 8 + 1)

// PIE8<SMT1PWAIE>
extern volatile __bit SMT1PWAIE __attribute__((address(0x38F2))); // @ (0x71E * 8 + 2)

// PIR8<SMT1PWAIF>
extern volatile __bit SMT1PWAIF __attribute__((address(0x38A2))); // @ (0x714 * 8 + 2)

// SMT1CON1<SMT1REPEAT>
extern volatile __bit SMT1REPEAT __attribute__((address(0x24CE))); // @ (0x499 * 8 + 6)

// SMT1STAT<SMT1RESET>
extern volatile __bit SMT1RESET __attribute__((address(0x24D5))); // @ (0x49A * 8 + 5)

// SMT1STAT<SMT1RST>
extern volatile __bit SMT1RST __attribute__((address(0x24D5))); // @ (0x49A * 8 + 5)

// SMT1CON0<SMT1SPOL>
extern volatile __bit SMT1SPOL __attribute__((address(0x24C3))); // @ (0x498 * 8 + 3)

// SMT1SIG<SMT1SSEL0>
extern volatile __bit SMT1SSEL0 __attribute__((address(0x24E0))); // @ (0x49C * 8 + 0)

// SMT1SIG<SMT1SSEL1>
extern volatile __bit SMT1SSEL1 __attribute__((address(0x24E1))); // @ (0x49C * 8 + 1)

// SMT1SIG<SMT1SSEL2>
extern volatile __bit SMT1SSEL2 __attribute__((address(0x24E2))); // @ (0x49C * 8 + 2)

// SMT1SIG<SMT1SSEL3>
extern volatile __bit SMT1SSEL3 __attribute__((address(0x24E3))); // @ (0x49C * 8 + 3)

// SMT1SIG<SMT1SSEL4>
extern volatile __bit SMT1SSEL4 __attribute__((address(0x24E4))); // @ (0x49C * 8 + 4)

// SMT1CON0<SMT1STP>
extern volatile __bit SMT1STP __attribute__((address(0x24C5))); // @ (0x498 * 8 + 5)

// SMT1TMRL<SMT1TMR0>
extern volatile __bit SMT1TMR0 __attribute__((address(0x2460))); // @ (0x48C * 8 + 0)

// SMT1TMRL<SMT1TMR1>
extern volatile __bit SMT1TMR1 __attribute__((address(0x2461))); // @ (0x48C * 8 + 1)

// SMT1TMRH<SMT1TMR10>
extern volatile __bit SMT1TMR10 __attribute__((address(0x246A))); // @ (0x48D * 8 + 2)

// SMT1TMRH<SMT1TMR11>
extern volatile __bit SMT1TMR11 __attribute__((address(0x246B))); // @ (0x48D * 8 + 3)

// SMT1TMRH<SMT1TMR12>
extern volatile __bit SMT1TMR12 __attribute__((address(0x246C))); // @ (0x48D * 8 + 4)

// SMT1TMRH<SMT1TMR13>
extern volatile __bit SMT1TMR13 __attribute__((address(0x246D))); // @ (0x48D * 8 + 5)

// SMT1TMRH<SMT1TMR14>
extern volatile __bit SMT1TMR14 __attribute__((address(0x246E))); // @ (0x48D * 8 + 6)

// SMT1TMRH<SMT1TMR15>
extern volatile __bit SMT1TMR15 __attribute__((address(0x246F))); // @ (0x48D * 8 + 7)

// SMT1TMRU<SMT1TMR16>
extern volatile __bit SMT1TMR16 __attribute__((address(0x2470))); // @ (0x48E * 8 + 0)

// SMT1TMRU<SMT1TMR17>
extern volatile __bit SMT1TMR17 __attribute__((address(0x2471))); // @ (0x48E * 8 + 1)

// SMT1TMRU<SMT1TMR18>
extern volatile __bit SMT1TMR18 __attribute__((address(0x2472))); // @ (0x48E * 8 + 2)

// SMT1TMRU<SMT1TMR19>
extern volatile __bit SMT1TMR19 __attribute__((address(0x2473))); // @ (0x48E * 8 + 3)

// SMT1TMRL<SMT1TMR2>
extern volatile __bit SMT1TMR2 __attribute__((address(0x2462))); // @ (0x48C * 8 + 2)

// SMT1TMRU<SMT1TMR20>
extern volatile __bit SMT1TMR20 __attribute__((address(0x2474))); // @ (0x48E * 8 + 4)

// SMT1TMRU<SMT1TMR21>
extern volatile __bit SMT1TMR21 __attribute__((address(0x2475))); // @ (0x48E * 8 + 5)

// SMT1TMRU<SMT1TMR22>
extern volatile __bit SMT1TMR22 __attribute__((address(0x2476))); // @ (0x48E * 8 + 6)

// SMT1TMRU<SMT1TMR23>
extern volatile __bit SMT1TMR23 __attribute__((address(0x2477))); // @ (0x48E * 8 + 7)

// SMT1TMRL<SMT1TMR3>
extern volatile __bit SMT1TMR3 __attribute__((address(0x2463))); // @ (0x48C * 8 + 3)

// SMT1TMRL<SMT1TMR4>
extern volatile __bit SMT1TMR4 __attribute__((address(0x2464))); // @ (0x48C * 8 + 4)

// SMT1TMRL<SMT1TMR5>
extern volatile __bit SMT1TMR5 __attribute__((address(0x2465))); // @ (0x48C * 8 + 5)

// SMT1TMRL<SMT1TMR6>
extern volatile __bit SMT1TMR6 __attribute__((address(0x2466))); // @ (0x48C * 8 + 6)

// SMT1TMRL<SMT1TMR7>
extern volatile __bit SMT1TMR7 __attribute__((address(0x2467))); // @ (0x48C * 8 + 7)

// SMT1TMRH<SMT1TMR8>
extern volatile __bit SMT1TMR8 __attribute__((address(0x2468))); // @ (0x48D * 8 + 0)

// SMT1TMRH<SMT1TMR9>
extern volatile __bit SMT1TMR9 __attribute__((address(0x2469))); // @ (0x48D * 8 + 1)

// SMT1STAT<SMT1TS>
extern volatile __bit SMT1TS __attribute__((address(0x24D2))); // @ (0x49A * 8 + 2)

// SMT1CON0<SMT1WOL>
extern volatile __bit SMT1WOL __attribute__((address(0x24C4))); // @ (0x498 * 8 + 4)

// SMT1STAT<SMT1WS>
extern volatile __bit SMT1WS __attribute__((address(0x24D1))); // @ (0x49A * 8 + 1)

// SMT1WIN<SMT1WSEL0>
extern volatile __bit SMT1WSEL0 __attribute__((address(0x24E8))); // @ (0x49D * 8 + 0)

// SMT1WIN<SMT1WSEL1>
extern volatile __bit SMT1WSEL1 __attribute__((address(0x24E9))); // @ (0x49D * 8 + 1)

// SMT1WIN<SMT1WSEL2>
extern volatile __bit SMT1WSEL2 __attribute__((address(0x24EA))); // @ (0x49D * 8 + 2)

// SMT1WIN<SMT1WSEL3>
extern volatile __bit SMT1WSEL3 __attribute__((address(0x24EB))); // @ (0x49D * 8 + 3)

// SMT1WIN<SMT1WSEL4>
extern volatile __bit SMT1WSEL4 __attribute__((address(0x24EC))); // @ (0x49D * 8 + 4)

// SMT2STAT<SMT2AS>
extern volatile __bit SMT2AS __attribute__((address(0x28D0))); // @ (0x51A * 8 + 0)

// SMT2CON0<SMT2CPOL>
extern volatile __bit SMT2CPOL __attribute__((address(0x28C2))); // @ (0x518 * 8 + 2)

// SMT2CPRL<SMT2CPR0>
extern volatile __bit SMT2CPR0 __attribute__((address(0x2878))); // @ (0x50F * 8 + 0)

// SMT2CPRL<SMT2CPR1>
extern volatile __bit SMT2CPR1 __attribute__((address(0x2879))); // @ (0x50F * 8 + 1)

// SMT2CPRH<SMT2CPR10>
extern volatile __bit SMT2CPR10 __attribute__((address(0x2882))); // @ (0x510 * 8 + 2)

// SMT2CPRH<SMT2CPR11>
extern volatile __bit SMT2CPR11 __attribute__((address(0x2883))); // @ (0x510 * 8 + 3)

// SMT2CPRH<SMT2CPR12>
extern volatile __bit SMT2CPR12 __attribute__((address(0x2884))); // @ (0x510 * 8 + 4)

// SMT2CPRH<SMT2CPR13>
extern volatile __bit SMT2CPR13 __attribute__((address(0x2885))); // @ (0x510 * 8 + 5)

// SMT2CPRH<SMT2CPR14>
extern volatile __bit SMT2CPR14 __attribute__((address(0x2886))); // @ (0x510 * 8 + 6)

// SMT2CPRH<SMT2CPR15>
extern volatile __bit SMT2CPR15 __attribute__((address(0x2887))); // @ (0x510 * 8 + 7)

// SMT2CPRU<SMT2CPR16>
extern volatile __bit SMT2CPR16 __attribute__((address(0x2888))); // @ (0x511 * 8 + 0)

// SMT2CPRU<SMT2CPR17>
extern volatile __bit SMT2CPR17 __attribute__((address(0x2889))); // @ (0x511 * 8 + 1)

// SMT2CPRU<SMT2CPR18>
extern volatile __bit SMT2CPR18 __attribute__((address(0x288A))); // @ (0x511 * 8 + 2)

// SMT2CPRU<SMT2CPR19>
extern volatile __bit SMT2CPR19 __attribute__((address(0x288B))); // @ (0x511 * 8 + 3)

// SMT2CPRL<SMT2CPR2>
extern volatile __bit SMT2CPR2 __attribute__((address(0x287A))); // @ (0x50F * 8 + 2)

// SMT2CPRU<SMT2CPR20>
extern volatile __bit SMT2CPR20 __attribute__((address(0x288C))); // @ (0x511 * 8 + 4)

// SMT2CPRU<SMT2CPR21>
extern volatile __bit SMT2CPR21 __attribute__((address(0x288D))); // @ (0x511 * 8 + 5)

// SMT2CPRU<SMT2CPR22>
extern volatile __bit SMT2CPR22 __attribute__((address(0x288E))); // @ (0x511 * 8 + 6)

// SMT2CPRU<SMT2CPR23>
extern volatile __bit SMT2CPR23 __attribute__((address(0x288F))); // @ (0x511 * 8 + 7)

// SMT2CPRL<SMT2CPR3>
extern volatile __bit SMT2CPR3 __attribute__((address(0x287B))); // @ (0x50F * 8 + 3)

// SMT2CPRL<SMT2CPR4>
extern volatile __bit SMT2CPR4 __attribute__((address(0x287C))); // @ (0x50F * 8 + 4)

// SMT2CPRL<SMT2CPR5>
extern volatile __bit SMT2CPR5 __attribute__((address(0x287D))); // @ (0x50F * 8 + 5)

// SMT2CPRL<SMT2CPR6>
extern volatile __bit SMT2CPR6 __attribute__((address(0x287E))); // @ (0x50F * 8 + 6)

// SMT2CPRL<SMT2CPR7>
extern volatile __bit SMT2CPR7 __attribute__((address(0x287F))); // @ (0x50F * 8 + 7)

// SMT2CPRH<SMT2CPR8>
extern volatile __bit SMT2CPR8 __attribute__((address(0x2880))); // @ (0x510 * 8 + 0)

// SMT2CPRH<SMT2CPR9>
extern volatile __bit SMT2CPR9 __attribute__((address(0x2881))); // @ (0x510 * 8 + 1)

// SMT2STAT<SMT2CPRUP>
extern volatile __bit SMT2CPRUP __attribute__((address(0x28D7))); // @ (0x51A * 8 + 7)

// SMT2CPWL<SMT2CPW0>
extern volatile __bit SMT2CPW0 __attribute__((address(0x2890))); // @ (0x512 * 8 + 0)

// SMT2CPWL<SMT2CPW1>
extern volatile __bit SMT2CPW1 __attribute__((address(0x2891))); // @ (0x512 * 8 + 1)

// SMT2CPWH<SMT2CPW10>
extern volatile __bit SMT2CPW10 __attribute__((address(0x289A))); // @ (0x513 * 8 + 2)

// SMT2CPWH<SMT2CPW11>
extern volatile __bit SMT2CPW11 __attribute__((address(0x289B))); // @ (0x513 * 8 + 3)

// SMT2CPWH<SMT2CPW12>
extern volatile __bit SMT2CPW12 __attribute__((address(0x289C))); // @ (0x513 * 8 + 4)

// SMT2CPWH<SMT2CPW13>
extern volatile __bit SMT2CPW13 __attribute__((address(0x289D))); // @ (0x513 * 8 + 5)

// SMT2CPWH<SMT2CPW14>
extern volatile __bit SMT2CPW14 __attribute__((address(0x289E))); // @ (0x513 * 8 + 6)

// SMT2CPWH<SMT2CPW15>
extern volatile __bit SMT2CPW15 __attribute__((address(0x289F))); // @ (0x513 * 8 + 7)

// SMT2CPWU<SMT2CPW16>
extern volatile __bit SMT2CPW16 __attribute__((address(0x28A0))); // @ (0x514 * 8 + 0)

// SMT2CPWU<SMT2CPW17>
extern volatile __bit SMT2CPW17 __attribute__((address(0x28A1))); // @ (0x514 * 8 + 1)

// SMT2CPWU<SMT2CPW18>
extern volatile __bit SMT2CPW18 __attribute__((address(0x28A2))); // @ (0x514 * 8 + 2)

// SMT2CPWU<SMT2CPW19>
extern volatile __bit SMT2CPW19 __attribute__((address(0x28A3))); // @ (0x514 * 8 + 3)

// SMT2CPWL<SMT2CPW2>
extern volatile __bit SMT2CPW2 __attribute__((address(0x2892))); // @ (0x512 * 8 + 2)

// SMT2CPWU<SMT2CPW20>
extern volatile __bit SMT2CPW20 __attribute__((address(0x28A4))); // @ (0x514 * 8 + 4)

// SMT2CPWU<SMT2CPW21>
extern volatile __bit SMT2CPW21 __attribute__((address(0x28A5))); // @ (0x514 * 8 + 5)

// SMT2CPWU<SMT2CPW22>
extern volatile __bit SMT2CPW22 __attribute__((address(0x28A6))); // @ (0x514 * 8 + 6)

// SMT2CPWU<SMT2CPW23>
extern volatile __bit SMT2CPW23 __attribute__((address(0x28A7))); // @ (0x514 * 8 + 7)

// SMT2CPWL<SMT2CPW3>
extern volatile __bit SMT2CPW3 __attribute__((address(0x2893))); // @ (0x512 * 8 + 3)

// SMT2CPWL<SMT2CPW4>
extern volatile __bit SMT2CPW4 __attribute__((address(0x2894))); // @ (0x512 * 8 + 4)

// SMT2CPWL<SMT2CPW5>
extern volatile __bit SMT2CPW5 __attribute__((address(0x2895))); // @ (0x512 * 8 + 5)

// SMT2CPWL<SMT2CPW6>
extern volatile __bit SMT2CPW6 __attribute__((address(0x2896))); // @ (0x512 * 8 + 6)

// SMT2CPWL<SMT2CPW7>
extern volatile __bit SMT2CPW7 __attribute__((address(0x2897))); // @ (0x512 * 8 + 7)

// SMT2CPWH<SMT2CPW8>
extern volatile __bit SMT2CPW8 __attribute__((address(0x2898))); // @ (0x513 * 8 + 0)

// SMT2CPWH<SMT2CPW9>
extern volatile __bit SMT2CPW9 __attribute__((address(0x2899))); // @ (0x513 * 8 + 1)

// SMT2STAT<SMT2CPWUP>
extern volatile __bit SMT2CPWUP __attribute__((address(0x28D6))); // @ (0x51A * 8 + 6)

// SMT2CLK<SMT2CSEL0>
extern volatile __bit SMT2CSEL0 __attribute__((address(0x28D8))); // @ (0x51B * 8 + 0)

// SMT2CLK<SMT2CSEL1>
extern volatile __bit SMT2CSEL1 __attribute__((address(0x28D9))); // @ (0x51B * 8 + 1)

// SMT2CLK<SMT2CSEL2>
extern volatile __bit SMT2CSEL2 __attribute__((address(0x28DA))); // @ (0x51B * 8 + 2)

// SMT2CON0<SMT2EN>
extern volatile __bit SMT2EN __attribute__((address(0x28C7))); // @ (0x518 * 8 + 7)

// SMT2CON1<SMT2GO>
extern volatile __bit SMT2GO __attribute__((address(0x28CF))); // @ (0x519 * 8 + 7)

// PIE8<SMT2IE>
extern volatile __bit SMT2IE __attribute__((address(0x38F3))); // @ (0x71E * 8 + 3)

// PIR8<SMT2IF>
extern volatile __bit SMT2IF __attribute__((address(0x38A3))); // @ (0x714 * 8 + 3)

// PMD5<SMT2MD>
extern volatile __bit SMT2MD __attribute__((address(0x3CDF))); // @ (0x79B * 8 + 7)

// SMT2PRL<SMT2PR0>
extern volatile __bit SMT2PR0 __attribute__((address(0x28A8))); // @ (0x515 * 8 + 0)

// SMT2PRL<SMT2PR1>
extern volatile __bit SMT2PR1 __attribute__((address(0x28A9))); // @ (0x515 * 8 + 1)

// SMT2PRH<SMT2PR10>
extern volatile __bit SMT2PR10 __attribute__((address(0x28B2))); // @ (0x516 * 8 + 2)

// SMT2PRH<SMT2PR11>
extern volatile __bit SMT2PR11 __attribute__((address(0x28B3))); // @ (0x516 * 8 + 3)

// SMT2PRH<SMT2PR12>
extern volatile __bit SMT2PR12 __attribute__((address(0x28B4))); // @ (0x516 * 8 + 4)

// SMT2PRH<SMT2PR13>
extern volatile __bit SMT2PR13 __attribute__((address(0x28B5))); // @ (0x516 * 8 + 5)

// SMT2PRH<SMT2PR14>
extern volatile __bit SMT2PR14 __attribute__((address(0x28B6))); // @ (0x516 * 8 + 6)

// SMT2PRH<SMT2PR15>
extern volatile __bit SMT2PR15 __attribute__((address(0x28B7))); // @ (0x516 * 8 + 7)

// SMT2PRU<SMT2PR16>
extern volatile __bit SMT2PR16 __attribute__((address(0x28B8))); // @ (0x517 * 8 + 0)

// SMT2PRU<SMT2PR17>
extern volatile __bit SMT2PR17 __attribute__((address(0x28B9))); // @ (0x517 * 8 + 1)

// SMT2PRU<SMT2PR18>
extern volatile __bit SMT2PR18 __attribute__((address(0x28BA))); // @ (0x517 * 8 + 2)

// SMT2PRU<SMT2PR19>
extern volatile __bit SMT2PR19 __attribute__((address(0x28BB))); // @ (0x517 * 8 + 3)

// SMT2PRL<SMT2PR2>
extern volatile __bit SMT2PR2 __attribute__((address(0x28AA))); // @ (0x515 * 8 + 2)

// SMT2PRU<SMT2PR20>
extern volatile __bit SMT2PR20 __attribute__((address(0x28BC))); // @ (0x517 * 8 + 4)

// SMT2PRU<SMT2PR21>
extern volatile __bit SMT2PR21 __attribute__((address(0x28BD))); // @ (0x517 * 8 + 5)

// SMT2PRU<SMT2PR22>
extern volatile __bit SMT2PR22 __attribute__((address(0x28BE))); // @ (0x517 * 8 + 6)

// SMT2PRU<SMT2PR23>
extern volatile __bit SMT2PR23 __attribute__((address(0x28BF))); // @ (0x517 * 8 + 7)

// SMT2PRL<SMT2PR3>
extern volatile __bit SMT2PR3 __attribute__((address(0x28AB))); // @ (0x515 * 8 + 3)

// SMT2PRL<SMT2PR4>
extern volatile __bit SMT2PR4 __attribute__((address(0x28AC))); // @ (0x515 * 8 + 4)

// SMT2PRL<SMT2PR5>
extern volatile __bit SMT2PR5 __attribute__((address(0x28AD))); // @ (0x515 * 8 + 5)

// SMT2PRL<SMT2PR6>
extern volatile __bit SMT2PR6 __attribute__((address(0x28AE))); // @ (0x515 * 8 + 6)

// SMT2PRL<SMT2PR7>
extern volatile __bit SMT2PR7 __attribute__((address(0x28AF))); // @ (0x515 * 8 + 7)

// SMT2PRH<SMT2PR8>
extern volatile __bit SMT2PR8 __attribute__((address(0x28B0))); // @ (0x516 * 8 + 0)

// SMT2PRH<SMT2PR9>
extern volatile __bit SMT2PR9 __attribute__((address(0x28B1))); // @ (0x516 * 8 + 1)

// PIE8<SMT2PRAIE>
extern volatile __bit SMT2PRAIE __attribute__((address(0x38F4))); // @ (0x71E * 8 + 4)

// PIR8<SMT2PRAIF>
extern volatile __bit SMT2PRAIF __attribute__((address(0x38A4))); // @ (0x714 * 8 + 4)

// SMT2CON0<SMT2PS0>
extern volatile __bit SMT2PS0 __attribute__((address(0x28C0))); // @ (0x518 * 8 + 0)

// SMT2CON0<SMT2PS1>
extern volatile __bit SMT2PS1 __attribute__((address(0x28C1))); // @ (0x518 * 8 + 1)

// PIE8<SMT2PWAIE>
extern volatile __bit SMT2PWAIE __attribute__((address(0x38F5))); // @ (0x71E * 8 + 5)

// PIR8<SMT2PWAIF>
extern volatile __bit SMT2PWAIF __attribute__((address(0x38A5))); // @ (0x714 * 8 + 5)

// SMT2CON1<SMT2REPEAT>
extern volatile __bit SMT2REPEAT __attribute__((address(0x28CE))); // @ (0x519 * 8 + 6)

// SMT2STAT<SMT2RESET>
extern volatile __bit SMT2RESET __attribute__((address(0x28D5))); // @ (0x51A * 8 + 5)

// SMT2STAT<SMT2RST>
extern volatile __bit SMT2RST __attribute__((address(0x28D5))); // @ (0x51A * 8 + 5)

// SMT2CON0<SMT2SPOL>
extern volatile __bit SMT2SPOL __attribute__((address(0x28C3))); // @ (0x518 * 8 + 3)

// SMT2SIG<SMT2SSEL0>
extern volatile __bit SMT2SSEL0 __attribute__((address(0x28E0))); // @ (0x51C * 8 + 0)

// SMT2SIG<SMT2SSEL1>
extern volatile __bit SMT2SSEL1 __attribute__((address(0x28E1))); // @ (0x51C * 8 + 1)

// SMT2SIG<SMT2SSEL2>
extern volatile __bit SMT2SSEL2 __attribute__((address(0x28E2))); // @ (0x51C * 8 + 2)

// SMT2SIG<SMT2SSEL3>
extern volatile __bit SMT2SSEL3 __attribute__((address(0x28E3))); // @ (0x51C * 8 + 3)

// SMT2SIG<SMT2SSEL4>
extern volatile __bit SMT2SSEL4 __attribute__((address(0x28E4))); // @ (0x51C * 8 + 4)

// SMT2CON0<SMT2STP>
extern volatile __bit SMT2STP __attribute__((address(0x28C5))); // @ (0x518 * 8 + 5)

// SMT2TMRL<SMT2TMR0>
extern volatile __bit SMT2TMR0 __attribute__((address(0x2860))); // @ (0x50C * 8 + 0)

// SMT2TMRL<SMT2TMR1>
extern volatile __bit SMT2TMR1 __attribute__((address(0x2861))); // @ (0x50C * 8 + 1)

// SMT2TMRH<SMT2TMR10>
extern volatile __bit SMT2TMR10 __attribute__((address(0x286A))); // @ (0x50D * 8 + 2)

// SMT2TMRH<SMT2TMR11>
extern volatile __bit SMT2TMR11 __attribute__((address(0x286B))); // @ (0x50D * 8 + 3)

// SMT2TMRH<SMT2TMR12>
extern volatile __bit SMT2TMR12 __attribute__((address(0x286C))); // @ (0x50D * 8 + 4)

// SMT2TMRH<SMT2TMR13>
extern volatile __bit SMT2TMR13 __attribute__((address(0x286D))); // @ (0x50D * 8 + 5)

// SMT2TMRH<SMT2TMR14>
extern volatile __bit SMT2TMR14 __attribute__((address(0x286E))); // @ (0x50D * 8 + 6)

// SMT2TMRH<SMT2TMR15>
extern volatile __bit SMT2TMR15 __attribute__((address(0x286F))); // @ (0x50D * 8 + 7)

// SMT2TMRU<SMT2TMR16>
extern volatile __bit SMT2TMR16 __attribute__((address(0x2870))); // @ (0x50E * 8 + 0)

// SMT2TMRU<SMT2TMR17>
extern volatile __bit SMT2TMR17 __attribute__((address(0x2871))); // @ (0x50E * 8 + 1)

// SMT2TMRU<SMT2TMR18>
extern volatile __bit SMT2TMR18 __attribute__((address(0x2872))); // @ (0x50E * 8 + 2)

// SMT2TMRU<SMT2TMR19>
extern volatile __bit SMT2TMR19 __attribute__((address(0x2873))); // @ (0x50E * 8 + 3)

// SMT2TMRL<SMT2TMR2>
extern volatile __bit SMT2TMR2 __attribute__((address(0x2862))); // @ (0x50C * 8 + 2)

// SMT2TMRU<SMT2TMR20>
extern volatile __bit SMT2TMR20 __attribute__((address(0x2874))); // @ (0x50E * 8 + 4)

// SMT2TMRU<SMT2TMR21>
extern volatile __bit SMT2TMR21 __attribute__((address(0x2875))); // @ (0x50E * 8 + 5)

// SMT2TMRU<SMT2TMR22>
extern volatile __bit SMT2TMR22 __attribute__((address(0x2876))); // @ (0x50E * 8 + 6)

// SMT2TMRU<SMT2TMR23>
extern volatile __bit SMT2TMR23 __attribute__((address(0x2877))); // @ (0x50E * 8 + 7)

// SMT2TMRL<SMT2TMR3>
extern volatile __bit SMT2TMR3 __attribute__((address(0x2863))); // @ (0x50C * 8 + 3)

// SMT2TMRL<SMT2TMR4>
extern volatile __bit SMT2TMR4 __attribute__((address(0x2864))); // @ (0x50C * 8 + 4)

// SMT2TMRL<SMT2TMR5>
extern volatile __bit SMT2TMR5 __attribute__((address(0x2865))); // @ (0x50C * 8 + 5)

// SMT2TMRL<SMT2TMR6>
extern volatile __bit SMT2TMR6 __attribute__((address(0x2866))); // @ (0x50C * 8 + 6)

// SMT2TMRL<SMT2TMR7>
extern volatile __bit SMT2TMR7 __attribute__((address(0x2867))); // @ (0x50C * 8 + 7)

// SMT2TMRH<SMT2TMR8>
extern volatile __bit SMT2TMR8 __attribute__((address(0x2868))); // @ (0x50D * 8 + 0)

// SMT2TMRH<SMT2TMR9>
extern volatile __bit SMT2TMR9 __attribute__((address(0x2869))); // @ (0x50D * 8 + 1)

// SMT2STAT<SMT2TS>
extern volatile __bit SMT2TS __attribute__((address(0x28D2))); // @ (0x51A * 8 + 2)

// SMT2CON0<SMT2WOL>
extern volatile __bit SMT2WOL __attribute__((address(0x28C4))); // @ (0x518 * 8 + 4)

// SMT2STAT<SMT2WS>
extern volatile __bit SMT2WS __attribute__((address(0x28D1))); // @ (0x51A * 8 + 1)

// SMT2WIN<SMT2WSEL0>
extern volatile __bit SMT2WSEL0 __attribute__((address(0x28E8))); // @ (0x51D * 8 + 0)

// SMT2WIN<SMT2WSEL1>
extern volatile __bit SMT2WSEL1 __attribute__((address(0x28E9))); // @ (0x51D * 8 + 1)

// SMT2WIN<SMT2WSEL2>
extern volatile __bit SMT2WSEL2 __attribute__((address(0x28EA))); // @ (0x51D * 8 + 2)

// SMT2WIN<SMT2WSEL3>
extern volatile __bit SMT2WSEL3 __attribute__((address(0x28EB))); // @ (0x51D * 8 + 3)

// SMT2WIN<SMT2WSEL4>
extern volatile __bit SMT2WSEL4 __attribute__((address(0x28EC))); // @ (0x51D * 8 + 4)

// SMT1SIGPPS<SMU1SIGPPS0>
extern volatile __bit SMU1SIGPPS0 __attribute__((address(0x7550))); // @ (0xEAA * 8 + 0)

// SMT1SIGPPS<SMU1SIGPPS1>
extern volatile __bit SMU1SIGPPS1 __attribute__((address(0x7551))); // @ (0xEAA * 8 + 1)

// SMT1SIGPPS<SMU1SIGPPS2>
extern volatile __bit SMU1SIGPPS2 __attribute__((address(0x7552))); // @ (0xEAA * 8 + 2)

// SMT1SIGPPS<SMU1SIGPPS3>
extern volatile __bit SMU1SIGPPS3 __attribute__((address(0x7553))); // @ (0xEAA * 8 + 3)

// SMT1SIGPPS<SMU1SIGPPS4>
extern volatile __bit SMU1SIGPPS4 __attribute__((address(0x7554))); // @ (0xEAA * 8 + 4)

// SMT1WINPPS<SMU1WINPPS0>
extern volatile __bit SMU1WINPPS0 __attribute__((address(0x7548))); // @ (0xEA9 * 8 + 0)

// SMT1WINPPS<SMU1WINPPS1>
extern volatile __bit SMU1WINPPS1 __attribute__((address(0x7549))); // @ (0xEA9 * 8 + 1)

// SMT1WINPPS<SMU1WINPPS2>
extern volatile __bit SMU1WINPPS2 __attribute__((address(0x754A))); // @ (0xEA9 * 8 + 2)

// SMT1WINPPS<SMU1WINPPS3>
extern volatile __bit SMU1WINPPS3 __attribute__((address(0x754B))); // @ (0xEA9 * 8 + 3)

// SMT1WINPPS<SMU1WINPPS4>
extern volatile __bit SMU1WINPPS4 __attribute__((address(0x754C))); // @ (0xEA9 * 8 + 4)

// SMT2SIGPPS<SMU2SIGPPS0>
extern volatile __bit SMU2SIGPPS0 __attribute__((address(0x7560))); // @ (0xEAC * 8 + 0)

// SMT2SIGPPS<SMU2SIGPPS1>
extern volatile __bit SMU2SIGPPS1 __attribute__((address(0x7561))); // @ (0xEAC * 8 + 1)

// SMT2SIGPPS<SMU2SIGPPS2>
extern volatile __bit SMU2SIGPPS2 __attribute__((address(0x7562))); // @ (0xEAC * 8 + 2)

// SMT2SIGPPS<SMU2SIGPPS3>
extern volatile __bit SMU2SIGPPS3 __attribute__((address(0x7563))); // @ (0xEAC * 8 + 3)

// SMT2SIGPPS<SMU2SIGPPS4>
extern volatile __bit SMU2SIGPPS4 __attribute__((address(0x7564))); // @ (0xEAC * 8 + 4)

// SMT2WINPPS<SMU2WINPPS0>
extern volatile __bit SMU2WINPPS0 __attribute__((address(0x7558))); // @ (0xEAB * 8 + 0)

// SMT2WINPPS<SMU2WINPPS1>
extern volatile __bit SMU2WINPPS1 __attribute__((address(0x7559))); // @ (0xEAB * 8 + 1)

// SMT2WINPPS<SMU2WINPPS2>
extern volatile __bit SMU2WINPPS2 __attribute__((address(0x755A))); // @ (0xEAB * 8 + 2)

// SMT2WINPPS<SMU2WINPPS3>
extern volatile __bit SMU2WINPPS3 __attribute__((address(0x755B))); // @ (0xEAB * 8 + 3)

// SMT2WINPPS<SMU2WINPPS4>
extern volatile __bit SMU2WINPPS4 __attribute__((address(0x755C))); // @ (0xEAB * 8 + 4)

// OSCSTAT<SOR>
extern volatile __bit SOR __attribute__((address(0x4483))); // @ (0x890 * 8 + 3)

// OSCEN<SOSCEN>
extern volatile __bit SOSCEN __attribute__((address(0x448B))); // @ (0x891 * 8 + 3)

// OSCCON3<SOSCPWR>
extern volatile __bit SOSCPWR __attribute__((address(0x447E))); // @ (0x88F * 8 + 6)

// RC1STA<SPEN>
extern volatile __bit SPEN __attribute__((address(0x8EF))); // @ (0x11D * 8 + 7)

// RC1STA<SREN>
extern volatile __bit SREN __attribute__((address(0x8ED))); // @ (0x11D * 8 + 5)

// SSP1CLKPPS<SSP1CLKPPS0>
extern volatile __bit SSP1CLKPPS0 __attribute__((address(0x7628))); // @ (0xEC5 * 8 + 0)

// SSP1CLKPPS<SSP1CLKPPS1>
extern volatile __bit SSP1CLKPPS1 __attribute__((address(0x7629))); // @ (0xEC5 * 8 + 1)

// SSP1CLKPPS<SSP1CLKPPS2>
extern volatile __bit SSP1CLKPPS2 __attribute__((address(0x762A))); // @ (0xEC5 * 8 + 2)

// SSP1CLKPPS<SSP1CLKPPS3>
extern volatile __bit SSP1CLKPPS3 __attribute__((address(0x762B))); // @ (0xEC5 * 8 + 3)

// SSP1CLKPPS<SSP1CLKPPS4>
extern volatile __bit SSP1CLKPPS4 __attribute__((address(0x762C))); // @ (0xEC5 * 8 + 4)

// SSP1DATPPS<SSP1DATPPS0>
extern volatile __bit SSP1DATPPS0 __attribute__((address(0x7630))); // @ (0xEC6 * 8 + 0)

// SSP1DATPPS<SSP1DATPPS1>
extern volatile __bit SSP1DATPPS1 __attribute__((address(0x7631))); // @ (0xEC6 * 8 + 1)

// SSP1DATPPS<SSP1DATPPS2>
extern volatile __bit SSP1DATPPS2 __attribute__((address(0x7632))); // @ (0xEC6 * 8 + 2)

// SSP1DATPPS<SSP1DATPPS3>
extern volatile __bit SSP1DATPPS3 __attribute__((address(0x7633))); // @ (0xEC6 * 8 + 3)

// SSP1DATPPS<SSP1DATPPS4>
extern volatile __bit SSP1DATPPS4 __attribute__((address(0x7634))); // @ (0xEC6 * 8 + 4)

// PIE3<SSP1IE>
extern volatile __bit SSP1IE __attribute__((address(0x38C8))); // @ (0x719 * 8 + 0)

// PIR3<SSP1IF>
extern volatile __bit SSP1IF __attribute__((address(0x3878))); // @ (0x70F * 8 + 0)

// SSP1SSPPS<SSP1SSPPS0>
extern volatile __bit SSP1SSPPS0 __attribute__((address(0x7638))); // @ (0xEC7 * 8 + 0)

// SSP1SSPPS<SSP1SSPPS1>
extern volatile __bit SSP1SSPPS1 __attribute__((address(0x7639))); // @ (0xEC7 * 8 + 1)

// SSP1SSPPS<SSP1SSPPS2>
extern volatile __bit SSP1SSPPS2 __attribute__((address(0x763A))); // @ (0xEC7 * 8 + 2)

// SSP1SSPPS<SSP1SSPPS3>
extern volatile __bit SSP1SSPPS3 __attribute__((address(0x763B))); // @ (0xEC7 * 8 + 3)

// SSP1SSPPS<SSP1SSPPS4>
extern volatile __bit SSP1SSPPS4 __attribute__((address(0x763C))); // @ (0xEC7 * 8 + 4)

// SSP2CLKPPS<SSP2CLKPPS0>
extern volatile __bit SSP2CLKPPS0 __attribute__((address(0x7640))); // @ (0xEC8 * 8 + 0)

// SSP2CLKPPS<SSP2CLKPPS1>
extern volatile __bit SSP2CLKPPS1 __attribute__((address(0x7641))); // @ (0xEC8 * 8 + 1)

// SSP2CLKPPS<SSP2CLKPPS2>
extern volatile __bit SSP2CLKPPS2 __attribute__((address(0x7642))); // @ (0xEC8 * 8 + 2)

// SSP2CLKPPS<SSP2CLKPPS3>
extern volatile __bit SSP2CLKPPS3 __attribute__((address(0x7643))); // @ (0xEC8 * 8 + 3)

// SSP2CLKPPS<SSP2CLKPPS4>
extern volatile __bit SSP2CLKPPS4 __attribute__((address(0x7644))); // @ (0xEC8 * 8 + 4)

// SSP2DATPPS<SSP2DATPPS0>
extern volatile __bit SSP2DATPPS0 __attribute__((address(0x7648))); // @ (0xEC9 * 8 + 0)

// SSP2DATPPS<SSP2DATPPS1>
extern volatile __bit SSP2DATPPS1 __attribute__((address(0x7649))); // @ (0xEC9 * 8 + 1)

// SSP2DATPPS<SSP2DATPPS2>
extern volatile __bit SSP2DATPPS2 __attribute__((address(0x764A))); // @ (0xEC9 * 8 + 2)

// SSP2DATPPS<SSP2DATPPS3>
extern volatile __bit SSP2DATPPS3 __attribute__((address(0x764B))); // @ (0xEC9 * 8 + 3)

// SSP2DATPPS<SSP2DATPPS4>
extern volatile __bit SSP2DATPPS4 __attribute__((address(0x764C))); // @ (0xEC9 * 8 + 4)

// PIE3<SSP2IE>
extern volatile __bit SSP2IE __attribute__((address(0x38CA))); // @ (0x719 * 8 + 2)

// PIR3<SSP2IF>
extern volatile __bit SSP2IF __attribute__((address(0x387A))); // @ (0x70F * 8 + 2)

// SSP2SSPPS<SSP2SSPPS0>
extern volatile __bit SSP2SSPPS0 __attribute__((address(0x7650))); // @ (0xECA * 8 + 0)

// SSP2SSPPS<SSP2SSPPS1>
extern volatile __bit SSP2SSPPS1 __attribute__((address(0x7651))); // @ (0xECA * 8 + 1)

// SSP2SSPPS<SSP2SSPPS2>
extern volatile __bit SSP2SSPPS2 __attribute__((address(0x7652))); // @ (0xECA * 8 + 2)

// SSP2SSPPS<SSP2SSPPS3>
extern volatile __bit SSP2SSPPS3 __attribute__((address(0x7653))); // @ (0xECA * 8 + 3)

// SSP2SSPPS<SSP2SSPPS4>
extern volatile __bit SSP2SSPPS4 __attribute__((address(0x7654))); // @ (0xECA * 8 + 4)

// SSP1CON1<SSPEN1>
extern volatile __bit SSPEN1 __attribute__((address(0xC85))); // @ (0x190 * 8 + 5)

// SSP2CON1<SSPEN2>
extern volatile __bit SSPEN2 __attribute__((address(0xCD5))); // @ (0x19A * 8 + 5)

// SSP1CON1<SSPM01>
extern volatile __bit SSPM01 __attribute__((address(0xC80))); // @ (0x190 * 8 + 0)

// SSP2CON1<SSPM02>
extern volatile __bit SSPM02 __attribute__((address(0xCD0))); // @ (0x19A * 8 + 0)

// SSP1CON1<SSPM11>
extern volatile __bit SSPM11 __attribute__((address(0xC81))); // @ (0x190 * 8 + 1)

// SSP2CON1<SSPM12>
extern volatile __bit SSPM12 __attribute__((address(0xCD1))); // @ (0x19A * 8 + 1)

// SSP1CON1<SSPM21>
extern volatile __bit SSPM21 __attribute__((address(0xC82))); // @ (0x190 * 8 + 2)

// SSP2CON1<SSPM22>
extern volatile __bit SSPM22 __attribute__((address(0xCD2))); // @ (0x19A * 8 + 2)

// SSP1CON1<SSPM31>
extern volatile __bit SSPM31 __attribute__((address(0xC83))); // @ (0x190 * 8 + 3)

// SSP2CON1<SSPM32>
extern volatile __bit SSPM32 __attribute__((address(0xCD3))); // @ (0x19A * 8 + 3)

// SSP1CON1<SSPOV1>
extern volatile __bit SSPOV1 __attribute__((address(0xC86))); // @ (0x190 * 8 + 6)

// SSP2CON1<SSPOV2>
extern volatile __bit SSPOV2 __attribute__((address(0xCD6))); // @ (0x19A * 8 + 6)

// SSP1STAT<START1>
extern volatile __bit START1 __attribute__((address(0xC7B))); // @ (0x18F * 8 + 3)

// SSP2STAT<START2>
extern volatile __bit START2 __attribute__((address(0xCCB))); // @ (0x199 * 8 + 3)

// WDTTMR<STATE>
extern volatile __bit STATE __attribute__((address(0x4082))); // @ (0x810 * 8 + 2)

// PCON0<STKOVF>
extern volatile __bit STKOVF __attribute__((address(0x409F))); // @ (0x813 * 8 + 7)

// PCON0<STKUNF>
extern volatile __bit STKUNF __attribute__((address(0x409E))); // @ (0x813 * 8 + 6)

// SSP1STAT<STOP1>
extern volatile __bit STOP1 __attribute__((address(0xC7C))); // @ (0x18F * 8 + 4)

// SSP2STAT<STOP2>
extern volatile __bit STOP2 __attribute__((address(0xCCC))); // @ (0x199 * 8 + 4)

// WDTCON0<SWDTEN>
extern volatile __bit SWDTEN __attribute__((address(0x4060))); // @ (0x80C * 8 + 0)

// PMD0<SYSCMD>
extern volatile __bit SYSCMD __attribute__((address(0x3CB7))); // @ (0x796 * 8 + 7)

// T0CON0<T016BIT>
extern volatile __bit T016BIT __attribute__((address(0xF4))); // @ (0x1E * 8 + 4)

// T0CON1<T0ASYNC>
extern volatile __bit T0ASYNC __attribute__((address(0xFC))); // @ (0x1F * 8 + 4)

// T0CKIPPS<T0CKIPPS0>
extern volatile __bit T0CKIPPS0 __attribute__((address(0x7488))); // @ (0xE91 * 8 + 0)

// T0CKIPPS<T0CKIPPS1>
extern volatile __bit T0CKIPPS1 __attribute__((address(0x7489))); // @ (0xE91 * 8 + 1)

// T0CKIPPS<T0CKIPPS2>
extern volatile __bit T0CKIPPS2 __attribute__((address(0x748A))); // @ (0xE91 * 8 + 2)

// T0CKIPPS<T0CKIPPS3>
extern volatile __bit T0CKIPPS3 __attribute__((address(0x748B))); // @ (0xE91 * 8 + 3)

// T0CON1<T0CKPS0>
extern volatile __bit T0CKPS0 __attribute__((address(0xF8))); // @ (0x1F * 8 + 0)

// T0CON1<T0CKPS1>
extern volatile __bit T0CKPS1 __attribute__((address(0xF9))); // @ (0x1F * 8 + 1)

// T0CON1<T0CKPS2>
extern volatile __bit T0CKPS2 __attribute__((address(0xFA))); // @ (0x1F * 8 + 2)

// T0CON1<T0CKPS3>
extern volatile __bit T0CKPS3 __attribute__((address(0xFB))); // @ (0x1F * 8 + 3)

// T0CON1<T0CS0>
extern volatile __bit T0CS0 __attribute__((address(0xFD))); // @ (0x1F * 8 + 5)

// T0CON1<T0CS1>
extern volatile __bit T0CS1 __attribute__((address(0xFE))); // @ (0x1F * 8 + 6)

// T0CON1<T0CS2>
extern volatile __bit T0CS2 __attribute__((address(0xFF))); // @ (0x1F * 8 + 7)

// T0CON0<T0EN>
extern volatile __bit T0EN __attribute__((address(0xF7))); // @ (0x1E * 8 + 7)

// T0CON0<T0OUT>
extern volatile __bit T0OUT __attribute__((address(0xF5))); // @ (0x1E * 8 + 5)

// T0CON0<T0OUTPS0>
extern volatile __bit T0OUTPS0 __attribute__((address(0xF0))); // @ (0x1E * 8 + 0)

// T0CON0<T0OUTPS1>
extern volatile __bit T0OUTPS1 __attribute__((address(0xF1))); // @ (0x1E * 8 + 1)

// T0CON0<T0OUTPS2>
extern volatile __bit T0OUTPS2 __attribute__((address(0xF2))); // @ (0x1E * 8 + 2)

// T0CON0<T0OUTPS3>
extern volatile __bit T0OUTPS3 __attribute__((address(0xF3))); // @ (0x1E * 8 + 3)

// TMR0H<T0PR0>
extern volatile __bit T0PR0 __attribute__((address(0xE8))); // @ (0x1D * 8 + 0)

// TMR0H<T0PR1>
extern volatile __bit T0PR1 __attribute__((address(0xE9))); // @ (0x1D * 8 + 1)

// TMR0H<T0PR2>
extern volatile __bit T0PR2 __attribute__((address(0xEA))); // @ (0x1D * 8 + 2)

// TMR0H<T0PR3>
extern volatile __bit T0PR3 __attribute__((address(0xEB))); // @ (0x1D * 8 + 3)

// TMR0H<T0PR4>
extern volatile __bit T0PR4 __attribute__((address(0xEC))); // @ (0x1D * 8 + 4)

// TMR0H<T0PR5>
extern volatile __bit T0PR5 __attribute__((address(0xED))); // @ (0x1D * 8 + 5)

// TMR0H<T0PR6>
extern volatile __bit T0PR6 __attribute__((address(0xEE))); // @ (0x1D * 8 + 6)

// TMR0H<T0PR7>
extern volatile __bit T0PR7 __attribute__((address(0xEF))); // @ (0x1D * 8 + 7)

// T0CON1<T0PS0>
extern volatile __bit T0PS0 __attribute__((address(0xF8))); // @ (0x1F * 8 + 0)

// T0CON1<T0PS1>
extern volatile __bit T0PS1 __attribute__((address(0xF9))); // @ (0x1F * 8 + 1)

// T0CON1<T0PS2>
extern volatile __bit T0PS2 __attribute__((address(0xFA))); // @ (0x1F * 8 + 2)

// T0CON1<T0PS3>
extern volatile __bit T0PS3 __attribute__((address(0xFB))); // @ (0x1F * 8 + 3)

// T1CKIPPS<T1CKIPPS0>
extern volatile __bit T1CKIPPS0 __attribute__((address(0x7490))); // @ (0xE92 * 8 + 0)

// T1CKIPPS<T1CKIPPS1>
extern volatile __bit T1CKIPPS1 __attribute__((address(0x7491))); // @ (0xE92 * 8 + 1)

// T1CKIPPS<T1CKIPPS2>
extern volatile __bit T1CKIPPS2 __attribute__((address(0x7492))); // @ (0xE92 * 8 + 2)

// T1CKIPPS<T1CKIPPS3>
extern volatile __bit T1CKIPPS3 __attribute__((address(0x7493))); // @ (0xE92 * 8 + 3)

// T1CKIPPS<T1CKIPPS4>
extern volatile __bit T1CKIPPS4 __attribute__((address(0x7494))); // @ (0xE92 * 8 + 4)

// T1CON<T1CKPS0>
extern volatile __bit T1CKPS0 __attribute__((address(0x1074))); // @ (0x20E * 8 + 4)

// T1CON<T1CKPS1>
extern volatile __bit T1CKPS1 __attribute__((address(0x1075))); // @ (0x20E * 8 + 5)

// T1CLK<T1CS0>
extern volatile __bit T1CS0 __attribute__((address(0x1088))); // @ (0x211 * 8 + 0)

// T1CLK<T1CS1>
extern volatile __bit T1CS1 __attribute__((address(0x1089))); // @ (0x211 * 8 + 1)

// T1CLK<T1CS2>
extern volatile __bit T1CS2 __attribute__((address(0x108A))); // @ (0x211 * 8 + 2)

// T1CLK<T1CS3>
extern volatile __bit T1CS3 __attribute__((address(0x108B))); // @ (0x211 * 8 + 3)

// T1GCON<T1GE>
extern volatile __bit T1GE __attribute__((address(0x107F))); // @ (0x20F * 8 + 7)

// T1GCON<T1GGO>
extern volatile __bit T1GGO __attribute__((address(0x107B))); // @ (0x20F * 8 + 3)

// T1GCON<T1GGO_nDONE>
extern volatile __bit T1GGO_nDONE __attribute__((address(0x107B))); // @ (0x20F * 8 + 3)

// T1GCON<T1GPOL>
extern volatile __bit T1GPOL __attribute__((address(0x107E))); // @ (0x20F * 8 + 6)

// T1GPPS<T1GPPS0>
extern volatile __bit T1GPPS0 __attribute__((address(0x7498))); // @ (0xE93 * 8 + 0)

// T1GPPS<T1GPPS1>
extern volatile __bit T1GPPS1 __attribute__((address(0x7499))); // @ (0xE93 * 8 + 1)

// T1GPPS<T1GPPS2>
extern volatile __bit T1GPPS2 __attribute__((address(0x749A))); // @ (0xE93 * 8 + 2)

// T1GPPS<T1GPPS3>
extern volatile __bit T1GPPS3 __attribute__((address(0x749B))); // @ (0xE93 * 8 + 3)

// T1GPPS<T1GPPS4>
extern volatile __bit T1GPPS4 __attribute__((address(0x749C))); // @ (0xE93 * 8 + 4)

// T1GCON<T1GSPM>
extern volatile __bit T1GSPM __attribute__((address(0x107C))); // @ (0x20F * 8 + 4)

// T1GATE<T1GSS0>
extern volatile __bit T1GSS0 __attribute__((address(0x1080))); // @ (0x210 * 8 + 0)

// T1GATE<T1GSS1>
extern volatile __bit T1GSS1 __attribute__((address(0x1081))); // @ (0x210 * 8 + 1)

// T1GATE<T1GSS2>
extern volatile __bit T1GSS2 __attribute__((address(0x1082))); // @ (0x210 * 8 + 2)

// T1GATE<T1GSS3>
extern volatile __bit T1GSS3 __attribute__((address(0x1083))); // @ (0x210 * 8 + 3)

// T1GATE<T1GSS4>
extern volatile __bit T1GSS4 __attribute__((address(0x1084))); // @ (0x210 * 8 + 4)

// T1GCON<T1GTM>
extern volatile __bit T1GTM __attribute__((address(0x107D))); // @ (0x20F * 8 + 5)

// T1GCON<T1GVAL>
extern volatile __bit T1GVAL __attribute__((address(0x107A))); // @ (0x20F * 8 + 2)

// T1CON<T1RD16>
extern volatile __bit T1RD16 __attribute__((address(0x1071))); // @ (0x20E * 8 + 1)

// T2AINPPS<T2AINPPS0>
extern volatile __bit T2AINPPS0 __attribute__((address(0x74E0))); // @ (0xE9C * 8 + 0)

// T2AINPPS<T2AINPPS1>
extern volatile __bit T2AINPPS1 __attribute__((address(0x74E1))); // @ (0xE9C * 8 + 1)

// T2AINPPS<T2AINPPS2>
extern volatile __bit T2AINPPS2 __attribute__((address(0x74E2))); // @ (0xE9C * 8 + 2)

// T2AINPPS<T2AINPPS3>
extern volatile __bit T2AINPPS3 __attribute__((address(0x74E3))); // @ (0xE9C * 8 + 3)

// T2AINPPS<T2AINPPS4>
extern volatile __bit T2AINPPS4 __attribute__((address(0x74E4))); // @ (0xE9C * 8 + 4)

// T2HLT<T2CKPOL>
extern volatile __bit T2CKPOL __attribute__((address(0x147E))); // @ (0x28F * 8 + 6)

// T2CON<T2CKPS0>
extern volatile __bit T2CKPS0 __attribute__((address(0x1474))); // @ (0x28E * 8 + 4)

// T2CON<T2CKPS1>
extern volatile __bit T2CKPS1 __attribute__((address(0x1475))); // @ (0x28E * 8 + 5)

// T2CON<T2CKPS2>
extern volatile __bit T2CKPS2 __attribute__((address(0x1476))); // @ (0x28E * 8 + 6)

// T2HLT<T2CKSYNC>
extern volatile __bit T2CKSYNC __attribute__((address(0x147D))); // @ (0x28F * 8 + 5)

// T2CLKCON<T2CS0>
extern volatile __bit T2CS0 __attribute__((address(0x1480))); // @ (0x290 * 8 + 0)

// T2CLKCON<T2CS1>
extern volatile __bit T2CS1 __attribute__((address(0x1481))); // @ (0x290 * 8 + 1)

// T2CLKCON<T2CS2>
extern volatile __bit T2CS2 __attribute__((address(0x1482))); // @ (0x290 * 8 + 2)

// T2CLKCON<T2CS3>
extern volatile __bit T2CS3 __attribute__((address(0x1483))); // @ (0x290 * 8 + 3)

// T2HLT<T2MODE0>
extern volatile __bit T2MODE0 __attribute__((address(0x1478))); // @ (0x28F * 8 + 0)

// T2HLT<T2MODE1>
extern volatile __bit T2MODE1 __attribute__((address(0x1479))); // @ (0x28F * 8 + 1)

// T2HLT<T2MODE2>
extern volatile __bit T2MODE2 __attribute__((address(0x147A))); // @ (0x28F * 8 + 2)

// T2HLT<T2MODE3>
extern volatile __bit T2MODE3 __attribute__((address(0x147B))); // @ (0x28F * 8 + 3)

// T2HLT<T2MODE4>
extern volatile __bit T2MODE4 __attribute__((address(0x147C))); // @ (0x28F * 8 + 4)

// T2CON<T2ON>
extern volatile __bit T2ON __attribute__((address(0x1477))); // @ (0x28E * 8 + 7)

// T2CON<T2OUTPS0>
extern volatile __bit T2OUTPS0 __attribute__((address(0x1470))); // @ (0x28E * 8 + 0)

// T2CON<T2OUTPS1>
extern volatile __bit T2OUTPS1 __attribute__((address(0x1471))); // @ (0x28E * 8 + 1)

// T2CON<T2OUTPS2>
extern volatile __bit T2OUTPS2 __attribute__((address(0x1472))); // @ (0x28E * 8 + 2)

// T2CON<T2OUTPS3>
extern volatile __bit T2OUTPS3 __attribute__((address(0x1473))); // @ (0x28E * 8 + 3)

// T2HLT<T2PSYNC>
extern volatile __bit T2PSYNC __attribute__((address(0x147F))); // @ (0x28F * 8 + 7)

// T2RST<T2RSEL0>
extern volatile __bit T2RSEL0 __attribute__((address(0x1488))); // @ (0x291 * 8 + 0)

// T2RST<T2RSEL1>
extern volatile __bit T2RSEL1 __attribute__((address(0x1489))); // @ (0x291 * 8 + 1)

// T2RST<T2RSEL2>
extern volatile __bit T2RSEL2 __attribute__((address(0x148A))); // @ (0x291 * 8 + 2)

// T2RST<T2RSEL3>
extern volatile __bit T2RSEL3 __attribute__((address(0x148B))); // @ (0x291 * 8 + 3)

// T2RST<T2RSEL4>
extern volatile __bit T2RSEL4 __attribute__((address(0x148C))); // @ (0x291 * 8 + 4)

// T3CKIPPS<T3CKIPPS0>
extern volatile __bit T3CKIPPS0 __attribute__((address(0x74A0))); // @ (0xE94 * 8 + 0)

// T3CKIPPS<T3CKIPPS1>
extern volatile __bit T3CKIPPS1 __attribute__((address(0x74A1))); // @ (0xE94 * 8 + 1)

// T3CKIPPS<T3CKIPPS2>
extern volatile __bit T3CKIPPS2 __attribute__((address(0x74A2))); // @ (0xE94 * 8 + 2)

// T3CKIPPS<T3CKIPPS3>
extern volatile __bit T3CKIPPS3 __attribute__((address(0x74A3))); // @ (0xE94 * 8 + 3)

// T3CKIPPS<T3CKIPPS4>
extern volatile __bit T3CKIPPS4 __attribute__((address(0x74A4))); // @ (0xE94 * 8 + 4)

// T3CON<T3CKPS0>
extern volatile __bit T3CKPS0 __attribute__((address(0x10A4))); // @ (0x214 * 8 + 4)

// T3CON<T3CKPS1>
extern volatile __bit T3CKPS1 __attribute__((address(0x10A5))); // @ (0x214 * 8 + 5)

// T3CLK<T3CS0>
extern volatile __bit T3CS0 __attribute__((address(0x10B8))); // @ (0x217 * 8 + 0)

// T3CLK<T3CS1>
extern volatile __bit T3CS1 __attribute__((address(0x10B9))); // @ (0x217 * 8 + 1)

// T3CLK<T3CS2>
extern volatile __bit T3CS2 __attribute__((address(0x10BA))); // @ (0x217 * 8 + 2)

// T3CLK<T3CS3>
extern volatile __bit T3CS3 __attribute__((address(0x10BB))); // @ (0x217 * 8 + 3)

// T3GCON<T3GE>
extern volatile __bit T3GE __attribute__((address(0x10AF))); // @ (0x215 * 8 + 7)

// T3GCON<T3GGO>
extern volatile __bit T3GGO __attribute__((address(0x10AB))); // @ (0x215 * 8 + 3)

// T3GCON<T3GGO_nDONE>
extern volatile __bit T3GGO_nDONE __attribute__((address(0x10AB))); // @ (0x215 * 8 + 3)

// T3GCON<T3GPOL>
extern volatile __bit T3GPOL __attribute__((address(0x10AE))); // @ (0x215 * 8 + 6)

// T3GPPS<T3GPPS0>
extern volatile __bit T3GPPS0 __attribute__((address(0x74A8))); // @ (0xE95 * 8 + 0)

// T3GPPS<T3GPPS1>
extern volatile __bit T3GPPS1 __attribute__((address(0x74A9))); // @ (0xE95 * 8 + 1)

// T3GPPS<T3GPPS2>
extern volatile __bit T3GPPS2 __attribute__((address(0x74AA))); // @ (0xE95 * 8 + 2)

// T3GPPS<T3GPPS3>
extern volatile __bit T3GPPS3 __attribute__((address(0x74AB))); // @ (0xE95 * 8 + 3)

// T3GPPS<T3GPPS4>
extern volatile __bit T3GPPS4 __attribute__((address(0x74AC))); // @ (0xE95 * 8 + 4)

// T3GCON<T3GSPM>
extern volatile __bit T3GSPM __attribute__((address(0x10AC))); // @ (0x215 * 8 + 4)

// T3GATE<T3GSS0>
extern volatile __bit T3GSS0 __attribute__((address(0x10B0))); // @ (0x216 * 8 + 0)

// T3GATE<T3GSS1>
extern volatile __bit T3GSS1 __attribute__((address(0x10B1))); // @ (0x216 * 8 + 1)

// T3GATE<T3GSS2>
extern volatile __bit T3GSS2 __attribute__((address(0x10B2))); // @ (0x216 * 8 + 2)

// T3GATE<T3GSS3>
extern volatile __bit T3GSS3 __attribute__((address(0x10B3))); // @ (0x216 * 8 + 3)

// T3GATE<T3GSS4>
extern volatile __bit T3GSS4 __attribute__((address(0x10B4))); // @ (0x216 * 8 + 4)

// T3GCON<T3GTM>
extern volatile __bit T3GTM __attribute__((address(0x10AD))); // @ (0x215 * 8 + 5)

// T3GCON<T3GVAL>
extern volatile __bit T3GVAL __attribute__((address(0x10AA))); // @ (0x215 * 8 + 2)

// T3CON<T3RD16>
extern volatile __bit T3RD16 __attribute__((address(0x10A1))); // @ (0x214 * 8 + 1)

// T4AINPPS<T4AINPPS0>
extern volatile __bit T4AINPPS0 __attribute__((address(0x74E8))); // @ (0xE9D * 8 + 0)

// T4AINPPS<T4AINPPS1>
extern volatile __bit T4AINPPS1 __attribute__((address(0x74E9))); // @ (0xE9D * 8 + 1)

// T4AINPPS<T4AINPPS2>
extern volatile __bit T4AINPPS2 __attribute__((address(0x74EA))); // @ (0xE9D * 8 + 2)

// T4AINPPS<T4AINPPS3>
extern volatile __bit T4AINPPS3 __attribute__((address(0x74EB))); // @ (0xE9D * 8 + 3)

// T4AINPPS<T4AINPPS4>
extern volatile __bit T4AINPPS4 __attribute__((address(0x74EC))); // @ (0xE9D * 8 + 4)

// T4HLT<T4CKPOL>
extern volatile __bit T4CKPOL __attribute__((address(0x14AE))); // @ (0x295 * 8 + 6)

// T4CON<T4CKPS0>
extern volatile __bit T4CKPS0 __attribute__((address(0x14A4))); // @ (0x294 * 8 + 4)

// T4CON<T4CKPS1>
extern volatile __bit T4CKPS1 __attribute__((address(0x14A5))); // @ (0x294 * 8 + 5)

// T4CON<T4CKPS2>
extern volatile __bit T4CKPS2 __attribute__((address(0x14A6))); // @ (0x294 * 8 + 6)

// T4HLT<T4CKSYNC>
extern volatile __bit T4CKSYNC __attribute__((address(0x14AD))); // @ (0x295 * 8 + 5)

// T4CLKCON<T4CS0>
extern volatile __bit T4CS0 __attribute__((address(0x14B0))); // @ (0x296 * 8 + 0)

// T4CLKCON<T4CS1>
extern volatile __bit T4CS1 __attribute__((address(0x14B1))); // @ (0x296 * 8 + 1)

// T4CLKCON<T4CS2>
extern volatile __bit T4CS2 __attribute__((address(0x14B2))); // @ (0x296 * 8 + 2)

// T4CLKCON<T4CS3>
extern volatile __bit T4CS3 __attribute__((address(0x14B3))); // @ (0x296 * 8 + 3)

// T4HLT<T4MODE0>
extern volatile __bit T4MODE0 __attribute__((address(0x14A8))); // @ (0x295 * 8 + 0)

// T4HLT<T4MODE1>
extern volatile __bit T4MODE1 __attribute__((address(0x14A9))); // @ (0x295 * 8 + 1)

// T4HLT<T4MODE2>
extern volatile __bit T4MODE2 __attribute__((address(0x14AA))); // @ (0x295 * 8 + 2)

// T4HLT<T4MODE3>
extern volatile __bit T4MODE3 __attribute__((address(0x14AB))); // @ (0x295 * 8 + 3)

// T4HLT<T4MODE4>
extern volatile __bit T4MODE4 __attribute__((address(0x14AC))); // @ (0x295 * 8 + 4)

// T4CON<T4ON>
extern volatile __bit T4ON __attribute__((address(0x14A7))); // @ (0x294 * 8 + 7)

// T4CON<T4OUTPS0>
extern volatile __bit T4OUTPS0 __attribute__((address(0x14A0))); // @ (0x294 * 8 + 0)

// T4CON<T4OUTPS1>
extern volatile __bit T4OUTPS1 __attribute__((address(0x14A1))); // @ (0x294 * 8 + 1)

// T4CON<T4OUTPS2>
extern volatile __bit T4OUTPS2 __attribute__((address(0x14A2))); // @ (0x294 * 8 + 2)

// T4CON<T4OUTPS3>
extern volatile __bit T4OUTPS3 __attribute__((address(0x14A3))); // @ (0x294 * 8 + 3)

// T4HLT<T4PSYNC>
extern volatile __bit T4PSYNC __attribute__((address(0x14AF))); // @ (0x295 * 8 + 7)

// T4RST<T4RSEL0>
extern volatile __bit T4RSEL0 __attribute__((address(0x14B8))); // @ (0x297 * 8 + 0)

// T4RST<T4RSEL1>
extern volatile __bit T4RSEL1 __attribute__((address(0x14B9))); // @ (0x297 * 8 + 1)

// T4RST<T4RSEL2>
extern volatile __bit T4RSEL2 __attribute__((address(0x14BA))); // @ (0x297 * 8 + 2)

// T4RST<T4RSEL3>
extern volatile __bit T4RSEL3 __attribute__((address(0x14BB))); // @ (0x297 * 8 + 3)

// T4RST<T4RSEL4>
extern volatile __bit T4RSEL4 __attribute__((address(0x14BC))); // @ (0x297 * 8 + 4)

// T5CKIPPS<T5CKIPPS0>
extern volatile __bit T5CKIPPS0 __attribute__((address(0x74B0))); // @ (0xE96 * 8 + 0)

// T5CKIPPS<T5CKIPPS1>
extern volatile __bit T5CKIPPS1 __attribute__((address(0x74B1))); // @ (0xE96 * 8 + 1)

// T5CKIPPS<T5CKIPPS2>
extern volatile __bit T5CKIPPS2 __attribute__((address(0x74B2))); // @ (0xE96 * 8 + 2)

// T5CKIPPS<T5CKIPPS3>
extern volatile __bit T5CKIPPS3 __attribute__((address(0x74B3))); // @ (0xE96 * 8 + 3)

// T5CKIPPS<T5CKIPPS4>
extern volatile __bit T5CKIPPS4 __attribute__((address(0x74B4))); // @ (0xE96 * 8 + 4)

// T5CON<T5CKPS0>
extern volatile __bit T5CKPS0 __attribute__((address(0x10D4))); // @ (0x21A * 8 + 4)

// T5CON<T5CKPS1>
extern volatile __bit T5CKPS1 __attribute__((address(0x10D5))); // @ (0x21A * 8 + 5)

// T5CLK<T5CS0>
extern volatile __bit T5CS0 __attribute__((address(0x10E8))); // @ (0x21D * 8 + 0)

// T5CLK<T5CS1>
extern volatile __bit T5CS1 __attribute__((address(0x10E9))); // @ (0x21D * 8 + 1)

// T5CLK<T5CS2>
extern volatile __bit T5CS2 __attribute__((address(0x10EA))); // @ (0x21D * 8 + 2)

// T5CLK<T5CS3>
extern volatile __bit T5CS3 __attribute__((address(0x10EB))); // @ (0x21D * 8 + 3)

// T5GCON<T5GE>
extern volatile __bit T5GE __attribute__((address(0x10DF))); // @ (0x21B * 8 + 7)

// T5GCON<T5GGO>
extern volatile __bit T5GGO __attribute__((address(0x10DB))); // @ (0x21B * 8 + 3)

// T5GCON<T5GGO_nDONE>
extern volatile __bit T5GGO_nDONE __attribute__((address(0x10DB))); // @ (0x21B * 8 + 3)

// T5GCON<T5GPOL>
extern volatile __bit T5GPOL __attribute__((address(0x10DE))); // @ (0x21B * 8 + 6)

// T5GPPS<T5GPPS0>
extern volatile __bit T5GPPS0 __attribute__((address(0x74B8))); // @ (0xE97 * 8 + 0)

// T5GPPS<T5GPPS1>
extern volatile __bit T5GPPS1 __attribute__((address(0x74B9))); // @ (0xE97 * 8 + 1)

// T5GPPS<T5GPPS2>
extern volatile __bit T5GPPS2 __attribute__((address(0x74BA))); // @ (0xE97 * 8 + 2)

// T5GPPS<T5GPPS3>
extern volatile __bit T5GPPS3 __attribute__((address(0x74BB))); // @ (0xE97 * 8 + 3)

// T5GPPS<T5GPPS4>
extern volatile __bit T5GPPS4 __attribute__((address(0x74BC))); // @ (0xE97 * 8 + 4)

// T5GCON<T5GSPM>
extern volatile __bit T5GSPM __attribute__((address(0x10DC))); // @ (0x21B * 8 + 4)

// T5GATE<T5GSS0>
extern volatile __bit T5GSS0 __attribute__((address(0x10E0))); // @ (0x21C * 8 + 0)

// T5GATE<T5GSS1>
extern volatile __bit T5GSS1 __attribute__((address(0x10E1))); // @ (0x21C * 8 + 1)

// T5GATE<T5GSS2>
extern volatile __bit T5GSS2 __attribute__((address(0x10E2))); // @ (0x21C * 8 + 2)

// T5GATE<T5GSS3>
extern volatile __bit T5GSS3 __attribute__((address(0x10E3))); // @ (0x21C * 8 + 3)

// T5GATE<T5GSS4>
extern volatile __bit T5GSS4 __attribute__((address(0x10E4))); // @ (0x21C * 8 + 4)

// T5GCON<T5GTM>
extern volatile __bit T5GTM __attribute__((address(0x10DD))); // @ (0x21B * 8 + 5)

// T5GCON<T5GVAL>
extern volatile __bit T5GVAL __attribute__((address(0x10DA))); // @ (0x21B * 8 + 2)

// T5CON<T5RD16>
extern volatile __bit T5RD16 __attribute__((address(0x10D1))); // @ (0x21A * 8 + 1)

// T6AINPPS<T6AINPPS0>
extern volatile __bit T6AINPPS0 __attribute__((address(0x74F0))); // @ (0xE9E * 8 + 0)

// T6AINPPS<T6AINPPS1>
extern volatile __bit T6AINPPS1 __attribute__((address(0x74F1))); // @ (0xE9E * 8 + 1)

// T6AINPPS<T6AINPPS2>
extern volatile __bit T6AINPPS2 __attribute__((address(0x74F2))); // @ (0xE9E * 8 + 2)

// T6AINPPS<T6AINPPS3>
extern volatile __bit T6AINPPS3 __attribute__((address(0x74F3))); // @ (0xE9E * 8 + 3)

// T6AINPPS<T6AINPPS4>
extern volatile __bit T6AINPPS4 __attribute__((address(0x74F4))); // @ (0xE9E * 8 + 4)

// T6HLT<T6CKPOL>
extern volatile __bit T6CKPOL __attribute__((address(0x14DE))); // @ (0x29B * 8 + 6)

// T6CON<T6CKPS0>
extern volatile __bit T6CKPS0 __attribute__((address(0x14D4))); // @ (0x29A * 8 + 4)

// T6CON<T6CKPS1>
extern volatile __bit T6CKPS1 __attribute__((address(0x14D5))); // @ (0x29A * 8 + 5)

// T6CON<T6CKPS2>
extern volatile __bit T6CKPS2 __attribute__((address(0x14D6))); // @ (0x29A * 8 + 6)

// T6HLT<T6CKSYNC>
extern volatile __bit T6CKSYNC __attribute__((address(0x14DD))); // @ (0x29B * 8 + 5)

// T6CLKCON<T6CS0>
extern volatile __bit T6CS0 __attribute__((address(0x14E0))); // @ (0x29C * 8 + 0)

// T6CLKCON<T6CS1>
extern volatile __bit T6CS1 __attribute__((address(0x14E1))); // @ (0x29C * 8 + 1)

// T6CLKCON<T6CS2>
extern volatile __bit T6CS2 __attribute__((address(0x14E2))); // @ (0x29C * 8 + 2)

// T6CLKCON<T6CS3>
extern volatile __bit T6CS3 __attribute__((address(0x14E3))); // @ (0x29C * 8 + 3)

// T6HLT<T6MODE0>
extern volatile __bit T6MODE0 __attribute__((address(0x14D8))); // @ (0x29B * 8 + 0)

// T6HLT<T6MODE1>
extern volatile __bit T6MODE1 __attribute__((address(0x14D9))); // @ (0x29B * 8 + 1)

// T6HLT<T6MODE2>
extern volatile __bit T6MODE2 __attribute__((address(0x14DA))); // @ (0x29B * 8 + 2)

// T6HLT<T6MODE3>
extern volatile __bit T6MODE3 __attribute__((address(0x14DB))); // @ (0x29B * 8 + 3)

// T6HLT<T6MODE4>
extern volatile __bit T6MODE4 __attribute__((address(0x14DC))); // @ (0x29B * 8 + 4)

// T6CON<T6ON>
extern volatile __bit T6ON __attribute__((address(0x14D7))); // @ (0x29A * 8 + 7)

// T6CON<T6OUTPS0>
extern volatile __bit T6OUTPS0 __attribute__((address(0x14D0))); // @ (0x29A * 8 + 0)

// T6CON<T6OUTPS1>
extern volatile __bit T6OUTPS1 __attribute__((address(0x14D1))); // @ (0x29A * 8 + 1)

// T6CON<T6OUTPS2>
extern volatile __bit T6OUTPS2 __attribute__((address(0x14D2))); // @ (0x29A * 8 + 2)

// T6CON<T6OUTPS3>
extern volatile __bit T6OUTPS3 __attribute__((address(0x14D3))); // @ (0x29A * 8 + 3)

// T6HLT<T6PSYNC>
extern volatile __bit T6PSYNC __attribute__((address(0x14DF))); // @ (0x29B * 8 + 7)

// T6RST<T6RSEL0>
extern volatile __bit T6RSEL0 __attribute__((address(0x14E8))); // @ (0x29D * 8 + 0)

// T6RST<T6RSEL1>
extern volatile __bit T6RSEL1 __attribute__((address(0x14E9))); // @ (0x29D * 8 + 1)

// T6RST<T6RSEL2>
extern volatile __bit T6RSEL2 __attribute__((address(0x14EA))); // @ (0x29D * 8 + 2)

// T6RST<T6RSEL3>
extern volatile __bit T6RSEL3 __attribute__((address(0x14EB))); // @ (0x29D * 8 + 3)

// T6RST<T6RSEL4>
extern volatile __bit T6RSEL4 __attribute__((address(0x14EC))); // @ (0x29D * 8 + 4)

// TMR0H<TMR0H0>
extern volatile __bit TMR0H0 __attribute__((address(0xE8))); // @ (0x1D * 8 + 0)

// TMR0H<TMR0H1>
extern volatile __bit TMR0H1 __attribute__((address(0xE9))); // @ (0x1D * 8 + 1)

// TMR0H<TMR0H2>
extern volatile __bit TMR0H2 __attribute__((address(0xEA))); // @ (0x1D * 8 + 2)

// TMR0H<TMR0H3>
extern volatile __bit TMR0H3 __attribute__((address(0xEB))); // @ (0x1D * 8 + 3)

// TMR0H<TMR0H4>
extern volatile __bit TMR0H4 __attribute__((address(0xEC))); // @ (0x1D * 8 + 4)

// TMR0H<TMR0H5>
extern volatile __bit TMR0H5 __attribute__((address(0xED))); // @ (0x1D * 8 + 5)

// TMR0H<TMR0H6>
extern volatile __bit TMR0H6 __attribute__((address(0xEE))); // @ (0x1D * 8 + 6)

// TMR0H<TMR0H7>
extern volatile __bit TMR0H7 __attribute__((address(0xEF))); // @ (0x1D * 8 + 7)

// PIE0<TMR0IE>
extern volatile __bit TMR0IE __attribute__((address(0x38B5))); // @ (0x716 * 8 + 5)

// PIR0<TMR0IF>
extern volatile __bit TMR0IF __attribute__((address(0x3865))); // @ (0x70C * 8 + 5)

// TMR0L<TMR0L0>
extern volatile __bit TMR0L0 __attribute__((address(0xE0))); // @ (0x1C * 8 + 0)

// TMR0L<TMR0L1>
extern volatile __bit TMR0L1 __attribute__((address(0xE1))); // @ (0x1C * 8 + 1)

// TMR0L<TMR0L2>
extern volatile __bit TMR0L2 __attribute__((address(0xE2))); // @ (0x1C * 8 + 2)

// TMR0L<TMR0L3>
extern volatile __bit TMR0L3 __attribute__((address(0xE3))); // @ (0x1C * 8 + 3)

// TMR0L<TMR0L4>
extern volatile __bit TMR0L4 __attribute__((address(0xE4))); // @ (0x1C * 8 + 4)

// TMR0L<TMR0L5>
extern volatile __bit TMR0L5 __attribute__((address(0xE5))); // @ (0x1C * 8 + 5)

// TMR0L<TMR0L6>
extern volatile __bit TMR0L6 __attribute__((address(0xE6))); // @ (0x1C * 8 + 6)

// TMR0L<TMR0L7>
extern volatile __bit TMR0L7 __attribute__((address(0xE7))); // @ (0x1C * 8 + 7)

// PMD1<TMR0MD>
extern volatile __bit TMR0MD __attribute__((address(0x3CB8))); // @ (0x797 * 8 + 0)

// TMR1H<TMR110>
extern volatile __bit TMR110 __attribute__((address(0x106A))); // @ (0x20D * 8 + 2)

// TMR1H<TMR111>
extern volatile __bit TMR111 __attribute__((address(0x106B))); // @ (0x20D * 8 + 3)

// TMR1H<TMR112>
extern volatile __bit TMR112 __attribute__((address(0x106C))); // @ (0x20D * 8 + 4)

// TMR1H<TMR113>
extern volatile __bit TMR113 __attribute__((address(0x106D))); // @ (0x20D * 8 + 5)

// TMR1H<TMR114>
extern volatile __bit TMR114 __attribute__((address(0x106E))); // @ (0x20D * 8 + 6)

// TMR1H<TMR115>
extern volatile __bit TMR115 __attribute__((address(0x106F))); // @ (0x20D * 8 + 7)

// PIE5<TMR1GIE>
extern volatile __bit TMR1GIE __attribute__((address(0x38D8))); // @ (0x71B * 8 + 0)

// PIR5<TMR1GIF>
extern volatile __bit TMR1GIF __attribute__((address(0x3888))); // @ (0x711 * 8 + 0)

// TMR1H<TMR1H0>
extern volatile __bit TMR1H0 __attribute__((address(0x1068))); // @ (0x20D * 8 + 0)

// TMR1H<TMR1H1>
extern volatile __bit TMR1H1 __attribute__((address(0x1069))); // @ (0x20D * 8 + 1)

// TMR1H<TMR1H2>
extern volatile __bit TMR1H2 __attribute__((address(0x106A))); // @ (0x20D * 8 + 2)

// TMR1H<TMR1H3>
extern volatile __bit TMR1H3 __attribute__((address(0x106B))); // @ (0x20D * 8 + 3)

// TMR1H<TMR1H4>
extern volatile __bit TMR1H4 __attribute__((address(0x106C))); // @ (0x20D * 8 + 4)

// TMR1H<TMR1H5>
extern volatile __bit TMR1H5 __attribute__((address(0x106D))); // @ (0x20D * 8 + 5)

// TMR1H<TMR1H6>
extern volatile __bit TMR1H6 __attribute__((address(0x106E))); // @ (0x20D * 8 + 6)

// TMR1H<TMR1H7>
extern volatile __bit TMR1H7 __attribute__((address(0x106F))); // @ (0x20D * 8 + 7)

// PIE4<TMR1IE>
extern volatile __bit TMR1IE __attribute__((address(0x38D0))); // @ (0x71A * 8 + 0)

// PIR4<TMR1IF>
extern volatile __bit TMR1IF __attribute__((address(0x3880))); // @ (0x710 * 8 + 0)

// TMR1L<TMR1L0>
extern volatile __bit TMR1L0 __attribute__((address(0x1060))); // @ (0x20C * 8 + 0)

// TMR1L<TMR1L1>
extern volatile __bit TMR1L1 __attribute__((address(0x1061))); // @ (0x20C * 8 + 1)

// TMR1L<TMR1L2>
extern volatile __bit TMR1L2 __attribute__((address(0x1062))); // @ (0x20C * 8 + 2)

// TMR1L<TMR1L3>
extern volatile __bit TMR1L3 __attribute__((address(0x1063))); // @ (0x20C * 8 + 3)

// TMR1L<TMR1L4>
extern volatile __bit TMR1L4 __attribute__((address(0x1064))); // @ (0x20C * 8 + 4)

// TMR1L<TMR1L5>
extern volatile __bit TMR1L5 __attribute__((address(0x1065))); // @ (0x20C * 8 + 5)

// TMR1L<TMR1L6>
extern volatile __bit TMR1L6 __attribute__((address(0x1066))); // @ (0x20C * 8 + 6)

// TMR1L<TMR1L7>
extern volatile __bit TMR1L7 __attribute__((address(0x1067))); // @ (0x20C * 8 + 7)

// PMD1<TMR1MD>
extern volatile __bit TMR1MD __attribute__((address(0x3CB9))); // @ (0x797 * 8 + 1)

// T1CON<TMR1ON>
extern volatile __bit TMR1ON __attribute__((address(0x1070))); // @ (0x20E * 8 + 0)

// PIE4<TMR2IE>
extern volatile __bit TMR2IE __attribute__((address(0x38D1))); // @ (0x71A * 8 + 1)

// PIR4<TMR2IF>
extern volatile __bit TMR2IF __attribute__((address(0x3881))); // @ (0x710 * 8 + 1)

// PMD1<TMR2MD>
extern volatile __bit TMR2MD __attribute__((address(0x3CBA))); // @ (0x797 * 8 + 2)

// T2CON<TMR2ON>
extern volatile __bit TMR2ON __attribute__((address(0x1477))); // @ (0x28E * 8 + 7)

// TMR3L<TMR30>
extern volatile __bit TMR30 __attribute__((address(0x1090))); // @ (0x212 * 8 + 0)

// TMR3L<TMR31>
extern volatile __bit TMR31 __attribute__((address(0x1091))); // @ (0x212 * 8 + 1)

// TMR3H<TMR310>
extern volatile __bit TMR310 __attribute__((address(0x109A))); // @ (0x213 * 8 + 2)

// TMR3H<TMR311>
extern volatile __bit TMR311 __attribute__((address(0x109B))); // @ (0x213 * 8 + 3)

// TMR3H<TMR312>
extern volatile __bit TMR312 __attribute__((address(0x109C))); // @ (0x213 * 8 + 4)

// TMR3H<TMR313>
extern volatile __bit TMR313 __attribute__((address(0x109D))); // @ (0x213 * 8 + 5)

// TMR3H<TMR314>
extern volatile __bit TMR314 __attribute__((address(0x109E))); // @ (0x213 * 8 + 6)

// TMR3H<TMR315>
extern volatile __bit TMR315 __attribute__((address(0x109F))); // @ (0x213 * 8 + 7)

// TMR3L<TMR32>
extern volatile __bit TMR32 __attribute__((address(0x1092))); // @ (0x212 * 8 + 2)

// TMR3L<TMR33>
extern volatile __bit TMR33 __attribute__((address(0x1093))); // @ (0x212 * 8 + 3)

// TMR3L<TMR34>
extern volatile __bit TMR34 __attribute__((address(0x1094))); // @ (0x212 * 8 + 4)

// TMR3L<TMR35>
extern volatile __bit TMR35 __attribute__((address(0x1095))); // @ (0x212 * 8 + 5)

// TMR3L<TMR36>
extern volatile __bit TMR36 __attribute__((address(0x1096))); // @ (0x212 * 8 + 6)

// TMR3L<TMR37>
extern volatile __bit TMR37 __attribute__((address(0x1097))); // @ (0x212 * 8 + 7)

// TMR3H<TMR38>
extern volatile __bit TMR38 __attribute__((address(0x1098))); // @ (0x213 * 8 + 0)

// TMR3H<TMR39>
extern volatile __bit TMR39 __attribute__((address(0x1099))); // @ (0x213 * 8 + 1)

// PIE5<TMR3GIE>
extern volatile __bit TMR3GIE __attribute__((address(0x38D9))); // @ (0x71B * 8 + 1)

// PIR5<TMR3GIF>
extern volatile __bit TMR3GIF __attribute__((address(0x3889))); // @ (0x711 * 8 + 1)

// TMR3H<TMR3H0>
extern volatile __bit TMR3H0 __attribute__((address(0x1098))); // @ (0x213 * 8 + 0)

// TMR3H<TMR3H1>
extern volatile __bit TMR3H1 __attribute__((address(0x1099))); // @ (0x213 * 8 + 1)

// TMR3H<TMR3H2>
extern volatile __bit TMR3H2 __attribute__((address(0x109A))); // @ (0x213 * 8 + 2)

// TMR3H<TMR3H3>
extern volatile __bit TMR3H3 __attribute__((address(0x109B))); // @ (0x213 * 8 + 3)

// TMR3H<TMR3H4>
extern volatile __bit TMR3H4 __attribute__((address(0x109C))); // @ (0x213 * 8 + 4)

// TMR3H<TMR3H5>
extern volatile __bit TMR3H5 __attribute__((address(0x109D))); // @ (0x213 * 8 + 5)

// TMR3H<TMR3H6>
extern volatile __bit TMR3H6 __attribute__((address(0x109E))); // @ (0x213 * 8 + 6)

// TMR3H<TMR3H7>
extern volatile __bit TMR3H7 __attribute__((address(0x109F))); // @ (0x213 * 8 + 7)

// PIE4<TMR3IE>
extern volatile __bit TMR3IE __attribute__((address(0x38D2))); // @ (0x71A * 8 + 2)

// PIR4<TMR3IF>
extern volatile __bit TMR3IF __attribute__((address(0x3882))); // @ (0x710 * 8 + 2)

// TMR3L<TMR3L0>
extern volatile __bit TMR3L0 __attribute__((address(0x1090))); // @ (0x212 * 8 + 0)

// TMR3L<TMR3L1>
extern volatile __bit TMR3L1 __attribute__((address(0x1091))); // @ (0x212 * 8 + 1)

// TMR3L<TMR3L2>
extern volatile __bit TMR3L2 __attribute__((address(0x1092))); // @ (0x212 * 8 + 2)

// TMR3L<TMR3L3>
extern volatile __bit TMR3L3 __attribute__((address(0x1093))); // @ (0x212 * 8 + 3)

// TMR3L<TMR3L4>
extern volatile __bit TMR3L4 __attribute__((address(0x1094))); // @ (0x212 * 8 + 4)

// TMR3L<TMR3L5>
extern volatile __bit TMR3L5 __attribute__((address(0x1095))); // @ (0x212 * 8 + 5)

// TMR3L<TMR3L6>
extern volatile __bit TMR3L6 __attribute__((address(0x1096))); // @ (0x212 * 8 + 6)

// TMR3L<TMR3L7>
extern volatile __bit TMR3L7 __attribute__((address(0x1097))); // @ (0x212 * 8 + 7)

// PMD1<TMR3MD>
extern volatile __bit TMR3MD __attribute__((address(0x3CBB))); // @ (0x797 * 8 + 3)

// T3CON<TMR3ON>
extern volatile __bit TMR3ON __attribute__((address(0x10A0))); // @ (0x214 * 8 + 0)

// PIE4<TMR4IE>
extern volatile __bit TMR4IE __attribute__((address(0x38D3))); // @ (0x71A * 8 + 3)

// PIR4<TMR4IF>
extern volatile __bit TMR4IF __attribute__((address(0x3883))); // @ (0x710 * 8 + 3)

// PMD1<TMR4MD>
extern volatile __bit TMR4MD __attribute__((address(0x3CBC))); // @ (0x797 * 8 + 4)

// T4CON<TMR4ON>
extern volatile __bit TMR4ON __attribute__((address(0x14A7))); // @ (0x294 * 8 + 7)

// TMR5L<TMR50>
extern volatile __bit TMR50 __attribute__((address(0x10C0))); // @ (0x218 * 8 + 0)

// TMR5L<TMR51>
extern volatile __bit TMR51 __attribute__((address(0x10C1))); // @ (0x218 * 8 + 1)

// TMR5H<TMR510>
extern volatile __bit TMR510 __attribute__((address(0x10CA))); // @ (0x219 * 8 + 2)

// TMR5H<TMR511>
extern volatile __bit TMR511 __attribute__((address(0x10CB))); // @ (0x219 * 8 + 3)

// TMR5H<TMR512>
extern volatile __bit TMR512 __attribute__((address(0x10CC))); // @ (0x219 * 8 + 4)

// TMR5H<TMR513>
extern volatile __bit TMR513 __attribute__((address(0x10CD))); // @ (0x219 * 8 + 5)

// TMR5H<TMR514>
extern volatile __bit TMR514 __attribute__((address(0x10CE))); // @ (0x219 * 8 + 6)

// TMR5H<TMR515>
extern volatile __bit TMR515 __attribute__((address(0x10CF))); // @ (0x219 * 8 + 7)

// TMR5L<TMR52>
extern volatile __bit TMR52 __attribute__((address(0x10C2))); // @ (0x218 * 8 + 2)

// TMR5L<TMR53>
extern volatile __bit TMR53 __attribute__((address(0x10C3))); // @ (0x218 * 8 + 3)

// TMR5L<TMR54>
extern volatile __bit TMR54 __attribute__((address(0x10C4))); // @ (0x218 * 8 + 4)

// TMR5L<TMR55>
extern volatile __bit TMR55 __attribute__((address(0x10C5))); // @ (0x218 * 8 + 5)

// TMR5L<TMR56>
extern volatile __bit TMR56 __attribute__((address(0x10C6))); // @ (0x218 * 8 + 6)

// TMR5L<TMR57>
extern volatile __bit TMR57 __attribute__((address(0x10C7))); // @ (0x218 * 8 + 7)

// TMR5H<TMR58>
extern volatile __bit TMR58 __attribute__((address(0x10C8))); // @ (0x219 * 8 + 0)

// TMR5H<TMR59>
extern volatile __bit TMR59 __attribute__((address(0x10C9))); // @ (0x219 * 8 + 1)

// PIE5<TMR5GIE>
extern volatile __bit TMR5GIE __attribute__((address(0x38DA))); // @ (0x71B * 8 + 2)

// PIR5<TMR5GIF>
extern volatile __bit TMR5GIF __attribute__((address(0x388A))); // @ (0x711 * 8 + 2)

// TMR5H<TMR5H0>
extern volatile __bit TMR5H0 __attribute__((address(0x10C8))); // @ (0x219 * 8 + 0)

// TMR5H<TMR5H1>
extern volatile __bit TMR5H1 __attribute__((address(0x10C9))); // @ (0x219 * 8 + 1)

// TMR5H<TMR5H2>
extern volatile __bit TMR5H2 __attribute__((address(0x10CA))); // @ (0x219 * 8 + 2)

// TMR5H<TMR5H3>
extern volatile __bit TMR5H3 __attribute__((address(0x10CB))); // @ (0x219 * 8 + 3)

// TMR5H<TMR5H4>
extern volatile __bit TMR5H4 __attribute__((address(0x10CC))); // @ (0x219 * 8 + 4)

// TMR5H<TMR5H5>
extern volatile __bit TMR5H5 __attribute__((address(0x10CD))); // @ (0x219 * 8 + 5)

// TMR5H<TMR5H6>
extern volatile __bit TMR5H6 __attribute__((address(0x10CE))); // @ (0x219 * 8 + 6)

// TMR5H<TMR5H7>
extern volatile __bit TMR5H7 __attribute__((address(0x10CF))); // @ (0x219 * 8 + 7)

// PIE4<TMR5IE>
extern volatile __bit TMR5IE __attribute__((address(0x38D4))); // @ (0x71A * 8 + 4)

// PIR4<TMR5IF>
extern volatile __bit TMR5IF __attribute__((address(0x3884))); // @ (0x710 * 8 + 4)

// TMR5L<TMR5L0>
extern volatile __bit TMR5L0 __attribute__((address(0x10C0))); // @ (0x218 * 8 + 0)

// TMR5L<TMR5L1>
extern volatile __bit TMR5L1 __attribute__((address(0x10C1))); // @ (0x218 * 8 + 1)

// TMR5L<TMR5L2>
extern volatile __bit TMR5L2 __attribute__((address(0x10C2))); // @ (0x218 * 8 + 2)

// TMR5L<TMR5L3>
extern volatile __bit TMR5L3 __attribute__((address(0x10C3))); // @ (0x218 * 8 + 3)

// TMR5L<TMR5L4>
extern volatile __bit TMR5L4 __attribute__((address(0x10C4))); // @ (0x218 * 8 + 4)

// TMR5L<TMR5L5>
extern volatile __bit TMR5L5 __attribute__((address(0x10C5))); // @ (0x218 * 8 + 5)

// TMR5L<TMR5L6>
extern volatile __bit TMR5L6 __attribute__((address(0x10C6))); // @ (0x218 * 8 + 6)

// TMR5L<TMR5L7>
extern volatile __bit TMR5L7 __attribute__((address(0x10C7))); // @ (0x218 * 8 + 7)

// PMD1<TMR5MD>
extern volatile __bit TMR5MD __attribute__((address(0x3CBD))); // @ (0x797 * 8 + 5)

// T5CON<TMR5ON>
extern volatile __bit TMR5ON __attribute__((address(0x10D0))); // @ (0x21A * 8 + 0)

// PIE4<TMR6IE>
extern volatile __bit TMR6IE __attribute__((address(0x38D5))); // @ (0x71A * 8 + 5)

// PIR4<TMR6IF>
extern volatile __bit TMR6IF __attribute__((address(0x3885))); // @ (0x710 * 8 + 5)

// PMD1<TMR6MD>
extern volatile __bit TMR6MD __attribute__((address(0x3CBE))); // @ (0x797 * 8 + 6)

// T6CON<TMR6ON>
extern volatile __bit TMR6ON __attribute__((address(0x14D7))); // @ (0x29A * 8 + 7)

// TRISA<TRISA0>
extern volatile __bit TRISA0 __attribute__((address(0x88))); // @ (0x11 * 8 + 0)

// TRISA<TRISA1>
extern volatile __bit TRISA1 __attribute__((address(0x89))); // @ (0x11 * 8 + 1)

// TRISA<TRISA2>
extern volatile __bit TRISA2 __attribute__((address(0x8A))); // @ (0x11 * 8 + 2)

// TRISA<TRISA3>
extern volatile __bit TRISA3 __attribute__((address(0x8B))); // @ (0x11 * 8 + 3)

// TRISA<TRISA4>
extern volatile __bit TRISA4 __attribute__((address(0x8C))); // @ (0x11 * 8 + 4)

// TRISA<TRISA5>
extern volatile __bit TRISA5 __attribute__((address(0x8D))); // @ (0x11 * 8 + 5)

// TRISA<TRISA6>
extern volatile __bit TRISA6 __attribute__((address(0x8E))); // @ (0x11 * 8 + 6)

// TRISA<TRISA7>
extern volatile __bit TRISA7 __attribute__((address(0x8F))); // @ (0x11 * 8 + 7)

// TRISB<TRISB0>
extern volatile __bit TRISB0 __attribute__((address(0x90))); // @ (0x12 * 8 + 0)

// TRISB<TRISB1>
extern volatile __bit TRISB1 __attribute__((address(0x91))); // @ (0x12 * 8 + 1)

// TRISB<TRISB2>
extern volatile __bit TRISB2 __attribute__((address(0x92))); // @ (0x12 * 8 + 2)

// TRISB<TRISB3>
extern volatile __bit TRISB3 __attribute__((address(0x93))); // @ (0x12 * 8 + 3)

// TRISB<TRISB4>
extern volatile __bit TRISB4 __attribute__((address(0x94))); // @ (0x12 * 8 + 4)

// TRISB<TRISB5>
extern volatile __bit TRISB5 __attribute__((address(0x95))); // @ (0x12 * 8 + 5)

// TRISB<TRISB6>
extern volatile __bit TRISB6 __attribute__((address(0x96))); // @ (0x12 * 8 + 6)

// TRISB<TRISB7>
extern volatile __bit TRISB7 __attribute__((address(0x97))); // @ (0x12 * 8 + 7)

// TRISC<TRISC0>
extern volatile __bit TRISC0 __attribute__((address(0x98))); // @ (0x13 * 8 + 0)

// TRISC<TRISC1>
extern volatile __bit TRISC1 __attribute__((address(0x99))); // @ (0x13 * 8 + 1)

// TRISC<TRISC2>
extern volatile __bit TRISC2 __attribute__((address(0x9A))); // @ (0x13 * 8 + 2)

// TRISC<TRISC3>
extern volatile __bit TRISC3 __attribute__((address(0x9B))); // @ (0x13 * 8 + 3)

// TRISC<TRISC4>
extern volatile __bit TRISC4 __attribute__((address(0x9C))); // @ (0x13 * 8 + 4)

// TRISC<TRISC5>
extern volatile __bit TRISC5 __attribute__((address(0x9D))); // @ (0x13 * 8 + 5)

// TRISC<TRISC6>
extern volatile __bit TRISC6 __attribute__((address(0x9E))); // @ (0x13 * 8 + 6)

// TRISC<TRISC7>
extern volatile __bit TRISC7 __attribute__((address(0x9F))); // @ (0x13 * 8 + 7)

// TX1STA<TRMT>
extern volatile __bit TRMT __attribute__((address(0x8F1))); // @ (0x11E * 8 + 1)

// SCANTRIG<TSEL0>
extern volatile __bit TSEL0 __attribute__((address(0x2088))); // @ (0x411 * 8 + 0)

// SCANTRIG<TSEL1>
extern volatile __bit TSEL1 __attribute__((address(0x2089))); // @ (0x411 * 8 + 1)

// SCANTRIG<TSEL2>
extern volatile __bit TSEL2 __attribute__((address(0x208A))); // @ (0x411 * 8 + 2)

// SCANTRIG<TSEL3>
extern volatile __bit TSEL3 __attribute__((address(0x208B))); // @ (0x411 * 8 + 3)

// FVRCON<TSEN>
extern volatile __bit TSEN __attribute__((address(0x4865))); // @ (0x90C * 8 + 5)

// FVRCON<TSRNG>
extern volatile __bit TSRNG __attribute__((address(0x4864))); // @ (0x90C * 8 + 4)

// TX1STA<TX9>
extern volatile __bit TX9 __attribute__((address(0x8F6))); // @ (0x11E * 8 + 6)

// TX1STA<TX9D>
extern volatile __bit TX9D __attribute__((address(0x8F0))); // @ (0x11E * 8 + 0)

// TX1STA<TXEN>
extern volatile __bit TXEN __attribute__((address(0x8F5))); // @ (0x11E * 8 + 5)

// PIE3<TXIE>
extern volatile __bit TXIE __attribute__((address(0x38CC))); // @ (0x719 * 8 + 4)

// PIR3<TXIF>
extern volatile __bit TXIF __attribute__((address(0x387C))); // @ (0x70F * 8 + 4)

// TXPPS<TXPPS0>
extern volatile __bit TXPPS0 __attribute__((address(0x7660))); // @ (0xECC * 8 + 0)

// TXPPS<TXPPS1>
extern volatile __bit TXPPS1 __attribute__((address(0x7661))); // @ (0xECC * 8 + 1)

// TXPPS<TXPPS2>
extern volatile __bit TXPPS2 __attribute__((address(0x7662))); // @ (0xECC * 8 + 2)

// TXPPS<TXPPS3>
extern volatile __bit TXPPS3 __attribute__((address(0x7663))); // @ (0xECC * 8 + 3)

// TXPPS<TXPPS4>
extern volatile __bit TXPPS4 __attribute__((address(0x7664))); // @ (0xECC * 8 + 4)

// SSP1STAT<UA1>
extern volatile __bit UA1 __attribute__((address(0xC79))); // @ (0x18F * 8 + 1)

// SSP2STAT<UA2>
extern volatile __bit UA2 __attribute__((address(0xCC9))); // @ (0x199 * 8 + 1)

// PMD4<UART1MD>
extern volatile __bit UART1MD __attribute__((address(0x3CD6))); // @ (0x79A * 8 + 6)

// VREGCON<VREGPM>
extern volatile __bit VREGPM __attribute__((address(0x4091))); // @ (0x812 * 8 + 1)

// VREGCON<VREGPM0>
extern volatile __bit VREGPM0 __attribute__((address(0x4090))); // @ (0x812 * 8 + 0)

// VREGCON<VREGPM1>
extern volatile __bit VREGPM1 __attribute__((address(0x4091))); // @ (0x812 * 8 + 1)

// SSP1CON1<WCOL1>
extern volatile __bit WCOL1 __attribute__((address(0xC87))); // @ (0x190 * 8 + 7)

// SSP2CON1<WCOL2>
extern volatile __bit WCOL2 __attribute__((address(0xCD7))); // @ (0x19A * 8 + 7)

// WDTCON1<WDTCS0>
extern volatile __bit WDTCS0 __attribute__((address(0x406C))); // @ (0x80D * 8 + 4)

// WDTCON1<WDTCS1>
extern volatile __bit WDTCS1 __attribute__((address(0x406D))); // @ (0x80D * 8 + 5)

// WDTCON1<WDTCS2>
extern volatile __bit WDTCS2 __attribute__((address(0x406E))); // @ (0x80D * 8 + 6)

// WDTCON0<WDTPS0>
extern volatile __bit WDTPS0 __attribute__((address(0x4061))); // @ (0x80C * 8 + 1)

// WDTCON0<WDTPS1>
extern volatile __bit WDTPS1 __attribute__((address(0x4062))); // @ (0x80C * 8 + 2)

// WDTCON0<WDTPS2>
extern volatile __bit WDTPS2 __attribute__((address(0x4063))); // @ (0x80C * 8 + 3)

// WDTCON0<WDTPS3>
extern volatile __bit WDTPS3 __attribute__((address(0x4064))); // @ (0x80C * 8 + 4)

// WDTCON0<WDTPS4>
extern volatile __bit WDTPS4 __attribute__((address(0x4065))); // @ (0x80C * 8 + 5)

// WDTPSL<WDTPSCNT0>
extern volatile __bit WDTPSCNT0 __attribute__((address(0x4070))); // @ (0x80E * 8 + 0)

// WDTPSL<WDTPSCNT1>
extern volatile __bit WDTPSCNT1 __attribute__((address(0x4071))); // @ (0x80E * 8 + 1)

// WDTPSH<WDTPSCNT10>
extern volatile __bit WDTPSCNT10 __attribute__((address(0x407A))); // @ (0x80F * 8 + 2)

// WDTPSH<WDTPSCNT11>
extern volatile __bit WDTPSCNT11 __attribute__((address(0x407B))); // @ (0x80F * 8 + 3)

// WDTPSH<WDTPSCNT12>
extern volatile __bit WDTPSCNT12 __attribute__((address(0x407C))); // @ (0x80F * 8 + 4)

// WDTPSH<WDTPSCNT13>
extern volatile __bit WDTPSCNT13 __attribute__((address(0x407D))); // @ (0x80F * 8 + 5)

// WDTPSH<WDTPSCNT14>
extern volatile __bit WDTPSCNT14 __attribute__((address(0x407E))); // @ (0x80F * 8 + 6)

// WDTPSH<WDTPSCNT15>
extern volatile __bit WDTPSCNT15 __attribute__((address(0x407F))); // @ (0x80F * 8 + 7)

// WDTTMR<WDTPSCNT16>
extern volatile __bit WDTPSCNT16 __attribute__((address(0x4080))); // @ (0x810 * 8 + 0)

// WDTTMR<WDTPSCNT17>
extern volatile __bit WDTPSCNT17 __attribute__((address(0x4081))); // @ (0x810 * 8 + 1)

// WDTPSL<WDTPSCNT2>
extern volatile __bit WDTPSCNT2 __attribute__((address(0x4072))); // @ (0x80E * 8 + 2)

// WDTPSL<WDTPSCNT3>
extern volatile __bit WDTPSCNT3 __attribute__((address(0x4073))); // @ (0x80E * 8 + 3)

// WDTPSL<WDTPSCNT4>
extern volatile __bit WDTPSCNT4 __attribute__((address(0x4074))); // @ (0x80E * 8 + 4)

// WDTPSL<WDTPSCNT5>
extern volatile __bit WDTPSCNT5 __attribute__((address(0x4075))); // @ (0x80E * 8 + 5)

// WDTPSL<WDTPSCNT6>
extern volatile __bit WDTPSCNT6 __attribute__((address(0x4076))); // @ (0x80E * 8 + 6)

// WDTPSL<WDTPSCNT7>
extern volatile __bit WDTPSCNT7 __attribute__((address(0x4077))); // @ (0x80E * 8 + 7)

// WDTPSH<WDTPSCNT8>
extern volatile __bit WDTPSCNT8 __attribute__((address(0x4078))); // @ (0x80F * 8 + 0)

// WDTPSH<WDTPSCNT9>
extern volatile __bit WDTPSCNT9 __attribute__((address(0x4079))); // @ (0x80F * 8 + 1)

// WDTCON0<WDTSEN>
extern volatile __bit WDTSEN __attribute__((address(0x4060))); // @ (0x80C * 8 + 0)

// WDTTMR<WDTSTATE>
extern volatile __bit WDTSTATE __attribute__((address(0x4082))); // @ (0x810 * 8 + 2)

// WDTTMR<WDTTMR0>
extern volatile __bit WDTTMR0 __attribute__((address(0x4083))); // @ (0x810 * 8 + 3)

// WDTTMR<WDTTMR1>
extern volatile __bit WDTTMR1 __attribute__((address(0x4084))); // @ (0x810 * 8 + 4)

// WDTTMR<WDTTMR2>
extern volatile __bit WDTTMR2 __attribute__((address(0x4085))); // @ (0x810 * 8 + 5)

// WDTTMR<WDTTMR3>
extern volatile __bit WDTTMR3 __attribute__((address(0x4086))); // @ (0x810 * 8 + 6)

// WDTCON1<WDTWINDOW0>
extern volatile __bit WDTWINDOW0 __attribute__((address(0x4068))); // @ (0x80D * 8 + 0)

// WDTCON1<WDTWINDOW1>
extern volatile __bit WDTWINDOW1 __attribute__((address(0x4069))); // @ (0x80D * 8 + 1)

// WDTCON1<WDTWINDOW2>
extern volatile __bit WDTWINDOW2 __attribute__((address(0x406A))); // @ (0x80D * 8 + 2)

// WDTCON1<WINDOW0>
extern volatile __bit WINDOW0 __attribute__((address(0x4068))); // @ (0x80D * 8 + 0)

// WDTCON1<WINDOW1>
extern volatile __bit WINDOW1 __attribute__((address(0x4069))); // @ (0x80D * 8 + 1)

// WDTCON1<WINDOW2>
extern volatile __bit WINDOW2 __attribute__((address(0x406A))); // @ (0x80D * 8 + 2)

// WPUA<WPUA0>
extern volatile __bit WPUA0 __attribute__((address(0x79C8))); // @ (0xF39 * 8 + 0)

// WPUA<WPUA1>
extern volatile __bit WPUA1 __attribute__((address(0x79C9))); // @ (0xF39 * 8 + 1)

// WPUA<WPUA2>
extern volatile __bit WPUA2 __attribute__((address(0x79CA))); // @ (0xF39 * 8 + 2)

// WPUA<WPUA3>
extern volatile __bit WPUA3 __attribute__((address(0x79CB))); // @ (0xF39 * 8 + 3)

// WPUA<WPUA4>
extern volatile __bit WPUA4 __attribute__((address(0x79CC))); // @ (0xF39 * 8 + 4)

// WPUA<WPUA5>
extern volatile __bit WPUA5 __attribute__((address(0x79CD))); // @ (0xF39 * 8 + 5)

// WPUA<WPUA6>
extern volatile __bit WPUA6 __attribute__((address(0x79CE))); // @ (0xF39 * 8 + 6)

// WPUA<WPUA7>
extern volatile __bit WPUA7 __attribute__((address(0x79CF))); // @ (0xF39 * 8 + 7)

// WPUB<WPUB0>
extern volatile __bit WPUB0 __attribute__((address(0x7A20))); // @ (0xF44 * 8 + 0)

// WPUB<WPUB1>
extern volatile __bit WPUB1 __attribute__((address(0x7A21))); // @ (0xF44 * 8 + 1)

// WPUB<WPUB2>
extern volatile __bit WPUB2 __attribute__((address(0x7A22))); // @ (0xF44 * 8 + 2)

// WPUB<WPUB3>
extern volatile __bit WPUB3 __attribute__((address(0x7A23))); // @ (0xF44 * 8 + 3)

// WPUB<WPUB4>
extern volatile __bit WPUB4 __attribute__((address(0x7A24))); // @ (0xF44 * 8 + 4)

// WPUB<WPUB5>
extern volatile __bit WPUB5 __attribute__((address(0x7A25))); // @ (0xF44 * 8 + 5)

// WPUB<WPUB6>
extern volatile __bit WPUB6 __attribute__((address(0x7A26))); // @ (0xF44 * 8 + 6)

// WPUB<WPUB7>
extern volatile __bit WPUB7 __attribute__((address(0x7A27))); // @ (0xF44 * 8 + 7)

// WPUC<WPUC0>
extern volatile __bit WPUC0 __attribute__((address(0x7A78))); // @ (0xF4F * 8 + 0)

// WPUC<WPUC1>
extern volatile __bit WPUC1 __attribute__((address(0x7A79))); // @ (0xF4F * 8 + 1)

// WPUC<WPUC2>
extern volatile __bit WPUC2 __attribute__((address(0x7A7A))); // @ (0xF4F * 8 + 2)

// WPUC<WPUC3>
extern volatile __bit WPUC3 __attribute__((address(0x7A7B))); // @ (0xF4F * 8 + 3)

// WPUC<WPUC4>
extern volatile __bit WPUC4 __attribute__((address(0x7A7C))); // @ (0xF4F * 8 + 4)

// WPUC<WPUC5>
extern volatile __bit WPUC5 __attribute__((address(0x7A7D))); // @ (0xF4F * 8 + 5)

// WPUC<WPUC6>
extern volatile __bit WPUC6 __attribute__((address(0x7A7E))); // @ (0xF4F * 8 + 6)

// WPUC<WPUC7>
extern volatile __bit WPUC7 __attribute__((address(0x7A7F))); // @ (0xF4F * 8 + 7)

// WPUE<WPUE3>
extern volatile __bit WPUE3 __attribute__((address(0x7B2B))); // @ (0xF65 * 8 + 3)

// NVMCON1<WR>
extern volatile __bit WR __attribute__((address(0x40F1))); // @ (0x81E * 8 + 1)

// NVMCON1<WREN>
extern volatile __bit WREN __attribute__((address(0x40F2))); // @ (0x81E * 8 + 2)

// NVMCON1<WRERR>
extern volatile __bit WRERR __attribute__((address(0x40F3))); // @ (0x81E * 8 + 3)

// BAUD1CON<WUE>
extern volatile __bit WUE __attribute__((address(0x8F9))); // @ (0x11F * 8 + 1)

// CRCXORL<X1>
extern volatile __bit X1 __attribute__((address(0x20E1))); // @ (0x41C * 8 + 1)

// CRCXORH<X10>
extern volatile __bit X10 __attribute__((address(0x20EA))); // @ (0x41D * 8 + 2)

// CRCXORH<X11>
extern volatile __bit X11 __attribute__((address(0x20EB))); // @ (0x41D * 8 + 3)

// CRCXORH<X12>
extern volatile __bit X12 __attribute__((address(0x20EC))); // @ (0x41D * 8 + 4)

// CRCXORH<X13>
extern volatile __bit X13 __attribute__((address(0x20ED))); // @ (0x41D * 8 + 5)

// CRCXORH<X14>
extern volatile __bit X14 __attribute__((address(0x20EE))); // @ (0x41D * 8 + 6)

// CRCXORH<X15>
extern volatile __bit X15 __attribute__((address(0x20EF))); // @ (0x41D * 8 + 7)

// CRCXORL<X2>
extern volatile __bit X2 __attribute__((address(0x20E2))); // @ (0x41C * 8 + 2)

// CRCXORL<X3>
extern volatile __bit X3 __attribute__((address(0x20E3))); // @ (0x41C * 8 + 3)

// CRCXORL<X4>
extern volatile __bit X4 __attribute__((address(0x20E4))); // @ (0x41C * 8 + 4)

// CRCXORL<X5>
extern volatile __bit X5 __attribute__((address(0x20E5))); // @ (0x41C * 8 + 5)

// CRCXORL<X6>
extern volatile __bit X6 __attribute__((address(0x20E6))); // @ (0x41C * 8 + 6)

// CRCXORL<X7>
extern volatile __bit X7 __attribute__((address(0x20E7))); // @ (0x41C * 8 + 7)

// CRCXORH<X8>
extern volatile __bit X8 __attribute__((address(0x20E8))); // @ (0x41D * 8 + 0)

// CRCXORH<X9>
extern volatile __bit X9 __attribute__((address(0x20E9))); // @ (0x41D * 8 + 1)

// PIE2<ZCDIE>
extern volatile __bit ZCDIE __attribute__((address(0x38C6))); // @ (0x718 * 8 + 6)

// PIR2<ZCDIF>
extern volatile __bit ZCDIF __attribute__((address(0x3876))); // @ (0x70E * 8 + 6)

// ZCDCON<ZCDINTN>
extern volatile __bit ZCDINTN __attribute__((address(0x48F8))); // @ (0x91F * 8 + 0)

// ZCDCON<ZCDINTP>
extern volatile __bit ZCDINTP __attribute__((address(0x48F9))); // @ (0x91F * 8 + 1)

// PMD2<ZCDMD>
extern volatile __bit ZCDMD __attribute__((address(0x3CC0))); // @ (0x798 * 8 + 0)

// ZCDCON<ZCDOUT>
extern volatile __bit ZCDOUT __attribute__((address(0x48FD))); // @ (0x91F * 8 + 5)

// ZCDCON<ZCDPOL>
extern volatile __bit ZCDPOL __attribute__((address(0x48FC))); // @ (0x91F * 8 + 4)

// ZCDCON<ZCDSEN>
extern volatile __bit ZCDSEN __attribute__((address(0x48FF))); // @ (0x91F * 8 + 7)

// STATUS<ZERO>
extern volatile __bit ZERO __attribute__((address(0x1A))); // @ (0x3 * 8 + 2)

// STATUS_SHAD<Z_SHAD>
extern volatile __bit Z_SHAD __attribute__((address(0x7F22))); // @ (0xFE4 * 8 + 2)

// SSP1STAT<nADDRESS1>
extern volatile __bit nADDRESS1 __attribute__((address(0xC7D))); // @ (0x18F * 8 + 5)

// SSP2STAT<nADDRESS2>
extern volatile __bit nADDRESS2 __attribute__((address(0xCCD))); // @ (0x199 * 8 + 5)

// PCON0<nBOR>
extern volatile __bit nBOR __attribute__((address(0x4098))); // @ (0x813 * 8 + 0)

// ADCON0<nDONE>
extern volatile __bit nDONE __attribute__((address(0x498))); // @ (0x93 * 8 + 0)

// STATUS<nPD>
extern volatile __bit nPD __attribute__((address(0x1B))); // @ (0x3 * 8 + 3)

// PCON0<nPOR>
extern volatile __bit nPOR __attribute__((address(0x4099))); // @ (0x813 * 8 + 1)

// PCON0<nRI>
extern volatile __bit nRI __attribute__((address(0x409A))); // @ (0x813 * 8 + 2)

// PCON0<nRMCLR>
extern volatile __bit nRMCLR __attribute__((address(0x409B))); // @ (0x813 * 8 + 3)

// PCON0<nRWDT>
extern volatile __bit nRWDT __attribute__((address(0x409C))); // @ (0x813 * 8 + 4)

// T1CON<nT1SYNC>
extern volatile __bit nT1SYNC __attribute__((address(0x1072))); // @ (0x20E * 8 + 2)

// T3CON<nT3SYNC>
extern volatile __bit nT3SYNC __attribute__((address(0x10A2))); // @ (0x214 * 8 + 2)

// T5CON<nT5SYNC>
extern volatile __bit nT5SYNC __attribute__((address(0x10D2))); // @ (0x21A * 8 + 2)

// STATUS<nTO>
extern volatile __bit nTO __attribute__((address(0x1C))); // @ (0x3 * 8 + 4)

// PCON0<nWDTWV>
extern volatile __bit nWDTWV __attribute__((address(0x409D))); // @ (0x813 * 8 + 5)

// SSP1STAT<nWRITE1>
extern volatile __bit nWRITE1 __attribute__((address(0xC7A))); // @ (0x18F * 8 + 2)

// SSP2STAT<nWRITE2>
extern volatile __bit nWRITE2 __attribute__((address(0xCCA))); // @ (0x199 * 8 + 2)
# 590 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic_chip_select.h" 2 3
# 12 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 2 3
# 36 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 3
//
// Legacy Programming Macro Functions
//
# 58 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 3
// Flash memory read/write/erase macros are no longer supported.

__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 1 3
// This header file should not be included directly
// Inclusion of this file is provided indirectly by including htc.h
# 98 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 3
//
// General Macro Functions
//
# 114 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 68 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 2 3
# 102 "D:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\\pic\\include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 29 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 52 "mcc_generated_files/tmr1.c" 2
# 1 "mcc_generated_files/tmr1.h" 1
# 54 "mcc_generated_files/tmr1.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdbool.h" 1 3
# 55 "mcc_generated_files/tmr1.h" 2
# 101 "mcc_generated_files/tmr1.h"
void TMR1_Initialize(void);
# 130 "mcc_generated_files/tmr1.h"
void TMR1_StartTimer(void);
# 162 "mcc_generated_files/tmr1.h"
void TMR1_StopTimer(void);
# 197 "mcc_generated_files/tmr1.h"
uint16_t TMR1_ReadTimer(void);
# 236 "mcc_generated_files/tmr1.h"
void TMR1_WriteTimer(uint16_t timerVal);
# 272 "mcc_generated_files/tmr1.h"
void TMR1_Reload(void);
# 311 "mcc_generated_files/tmr1.h"
void TMR1_StartSinglePulseAcquisition(void);
# 350 "mcc_generated_files/tmr1.h"
uint8_t TMR1_CheckGateValueStatus(void);
# 368 "mcc_generated_files/tmr1.h"
void TMR1_ISR(void);
# 385 "mcc_generated_files/tmr1.h"
void TMR1_CallBack(void);
# 403 "mcc_generated_files/tmr1.h"
 void TMR1_SetInterruptHandler(void (* InterruptHandler)(void));
# 421 "mcc_generated_files/tmr1.h"
extern void (*TMR1_InterruptHandler)(void);
# 439 "mcc_generated_files/tmr1.h"
void TMR1_DefaultInterruptHandler(void);
# 53 "mcc_generated_files/tmr1.c" 2




volatile uint16_t timer1ReloadVal;
void (*TMR1_InterruptHandler)(void);





void TMR1_Initialize(void)
{
    //Set the Timer to the options selected in the GUI

    //T1GE disabled; T1GTM disabled; T1GPOL low; T1GGO done; T1GSPM disabled;
    T1GCON = 0x00;

    //GSS T1G_pin;
    T1GATE = 0x00;

    //CS FOSC/4;
    T1CLK = 0x01;

    //TMR1H 252;
    TMR1H = 0xFC;

    //TMR1L 24;
    TMR1L = 0x18;

    // Clearing IF flag before enabling the interrupt.
    PIR4bits.TMR1IF = 0;

    // Load the TMR value to reload variable
    timer1ReloadVal=(uint16_t)((TMR1H << 8) | TMR1L);

    // Enabling TMR1 interrupt.
    PIE4bits.TMR1IE = 1;

    // Set Default Interrupt Handler
// TMR1_SetInterruptHandler(TMR1_DefaultInterruptHandler);

    // CKPS 1:8; nT1SYNC synchronize; TMR1ON enabled; T1RD16 enabled;
    T1CON = 0x33;
}
