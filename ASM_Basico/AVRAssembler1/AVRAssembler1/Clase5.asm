/*
 * Clase 5.asm
 * Ejemplos basicos de intrucciones aritmetico logicas y acceso a memoria y registros. 
 * Para correr los ejemplos descomentar los bloques de codigo
 *
 *
 *  Created: 9/5/2020 20:45:11
 *   Author: Fabricio Baglivo
*/

.EQU TAMANIO_TABLA = 1 
 
.DSEG

.ORG $100 

VECTOR:  .BYTE TAMANIO_TABLA
RESULT:  .BYTE 2

.CSEG
	
		RJMP MAIN

.ORG INT_VECTORS_SIZE
 
MAIN:
//		CALL INIT_STACK


/*
ACCESO_A_PUERTOS:
		LDI R20, 0xFF
		OUT DDRB, R20
		LDI R20, 0X00
		OUT DDRC, R20

		IN R20, PINC
		OUT PORTB, R20
*/


/*
			
SUMA:
		LDI R20, 0x10 ; 16
		LDI R21, 0x12 ; 18
		ADD R21, R20  ; 34 
		
		LDI R20, 0x80
		LDI R21, 0x01 ; 256 + 128 = 384 
		LDI R22, 0x80 ;    
		LDI R23, 0x00 ; 128 
		
		CLC
		ADD R22, R20 ;
		ADC R23, R21 ; 512
		ADC R24,0    ; 

*/

/*

MULT:
		LDI R21, 0x80 ; 128
		LDI R22, 0X04 ; 4
    	MUL R21, R22  ; 512: R1: 0x02 R0: 0x00  

*/

/*
OP_LOGICAS:
		LDI R20, 0xFF
		ANDI R20, (1<<3 | 1<<1)	
		LDI R20, 0X00
		ORI R20, 0x55
		
		// PUERTO B PINES 1 y 3 COMO SALIDA,  0 y 2 COMO ENTRADA. 
		IN R21, DDRB
		ORI R21, (1<<3 | 1<<1)
		ANDI R21, (0<<2 | 0<<0)
		OUT DDRB, R21 

*/

/*

ACCESO_A_MEMORIA:
		// ACCESO A MEMORIA ROM.
		LDI Zl, LOW(TABLA_ROM<<1) 
		LDI Zh, HIGH(TABLA_ROM<<1)
		LPM R20, Z+
		LPM R21, Z

		// ACCESO A MEMORIA SRAM.
		LDI Yl, LOW(VECTOR)
		LDI Yh, HIGH(VECTOR)
		ST Y+, R20
		ST Y, R21

		LDI R26, LOW(RESULT)
		LDI R27, HIGH(RESULT)

		LD R24, X // R27:R26
*/

HERE:
		RJMP HERE
		
INIT_STACK:
		RET

TABLA_ROM: .db 10, 4, 1, 0 , 0, 6, 3, 10, 100, 100, 24, 23, 56, 4, 15, 16
