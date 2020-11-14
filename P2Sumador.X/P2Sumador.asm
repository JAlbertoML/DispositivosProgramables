; SUMAR DOS CANTIDADES DE TRES BITS QUE INGRESAN POR EL PUERTO A Y EL RESULTADO SALE POR EL PUERTO B
    
    LIST P = 18F4550
    #INCLUDE<p18f4550.inc>
    
; CONFIG1L
  CONFIG  PLLDIV = 1            ; PLL Prescaler Selection bits (No prescale (4 MHz oscillator input drives PLL directly))
  CONFIG  CPUDIV = OSC1_PLL2    ; System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
  CONFIG  USBDIV = 1            ; USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes directly from the primary oscillator block with no postscale)

; CONFIG1H
  CONFIG  FOSC = INTOSCIO_EC    ; Oscillator Selection bits (Internal oscillator, port function on RA6, EC used by USB (INTIO))
  CONFIG  FCMEN = OFF           ; Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
  CONFIG  IESO = OFF            ; Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

; CONFIG2L
  CONFIG  PWRT = ON             ; Power-up Timer Enable bit (PWRT enabled)
  CONFIG  BOR = OFF             ; Brown-out Reset Enable bits (Brown-out Reset disabled in hardware and software)
  CONFIG  BORV = 3              ; Brown-out Reset Voltage bits (Minimum setting 2.05V)
  CONFIG  VREGEN = OFF          ; USB Voltage Regulator Enable bit (USB voltage regulator disabled)

; CONFIG2H
  CONFIG  WDT = OFF             ; Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
  CONFIG  WDTPS = 32768         ; Watchdog Timer Postscale Select bits (1:32768)

; CONFIG3H
  CONFIG  CCP2MX = ON           ; CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
  CONFIG  PBADEN = OFF          ; PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
  CONFIG  LPT1OSC = OFF         ; Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
  CONFIG  MCLRE = ON            ; MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

; CONFIG4L
  CONFIG  STVREN = ON           ; Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
  CONFIG  LVP = ON              ; Single-Supply ICSP Enable bit (Single-Supply ICSP enabled)
  CONFIG  ICPRT = OFF           ; Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
  CONFIG  XINST = OFF           ; Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

; CONFIG5L
  CONFIG  CP0 = OFF             ; Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
  CONFIG  CP1 = OFF             ; Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
  CONFIG  CP2 = OFF             ; Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
  CONFIG  CP3 = OFF             ; Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)

; CONFIG5H
  CONFIG  CPB = OFF             ; Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
  CONFIG  CPD = OFF             ; Data EEPROM Code Protection bit (Data EEPROM is not code-protected)

; CONFIG6L
  CONFIG  WRT0 = OFF            ; Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
  CONFIG  WRT1 = OFF            ; Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
  CONFIG  WRT2 = OFF            ; Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
  CONFIG  WRT3 = OFF            ; Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)

; CONFIG6H
  CONFIG  WRTC = OFF            ; Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
  CONFIG  WRTB = OFF            ; Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
  CONFIG  WRTD = OFF            ; Data EEPROM Write Protection bit (Data EEPROM is not write-protected)

; CONFIG7L
  CONFIG  EBTR0 = OFF           ; Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR1 = OFF           ; Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR2 = OFF           ; Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR3 = OFF           ; Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)

; CONFIG7H
  CONFIG  EBTRB = OFF           ; Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)

    
    #DEFINE N1	    H'10' ; SE ASIGNÓ LA DIRECCIÓN 16 DEL BANCO INDEFINIDO AL REGISTRO N1
    #DEFINE N2	    H'11' ; SE ASIGNÓ LA DIRECCIÓN 17 DEL BANCO INDEFINIDO AL REGISTRO N2
    #DEFINE SUMA    H'12' ; SE ASIGNÓ LA DIRECCIÓN 18 DEL BANCO INDEFINIDO AL REGISTRO SUMA
    
    ORG 0
    
; CONFIGURAR SFR's
    CONFIGURAR
	SETF	TRISA,  0    ; TRISA = 1111 1111 POR LO QUE LOS PINES DEL PUERTO A SE CONVIERTEN EN -EEE EEEE (ENTRADAS)
	MOVLW	H'07'	     ; W = 7
	MOVWF	CMCON,  0    ; CMCON = 7 Y EL COMPARADOR DE VOLTAJES UBICADO EN PORTA Y PORTE SE APAGA
	MOVLW	H'0F'	     ; W = 15
	MOVWF	ADCON1, 0    ; ADCON1 = 15 Y LOS PUERTOS A, B Y E DEL PIC SOLO PUEDEN FUNCIONAR COMO ENTRADAS DE TIPO ANALOGICO (EN EL CASO DE SER ENTRADAS)
	CLRF	PORTA,  0    ; PORTA = 0000 0000, ES DECIR QUE EL PUERTO A SE LIMPIA
	CLRF	TRISB,  0    ; TRISB = 0000 0000 POR LO QUE LOS PINES DEL PUERTO B SE CONVIERTEN EN SSSS SSSS (SALIDAS)
	CLRF	PORTB,	0    ; PORTB = 0000 0000
	
    MAIN
	MOVFF	PORTA, N2	; N2 = PORTA
	MOVLW	B'00000111'	; SELECCIONO LA MASCARA QUE VA A TENER N2
	ANDWF	N2, F, 1	; ENMASCARO N2 PARA QUEDARME CON EL SEGUNDO NIBBLE Y EL RESULTADO SE GUARDA EN N2
	MOVFF	PORTA, N1	; N1 = PORTA
	MOVLW	B'00111000'	; SELECCIONO LA MASCARA QUE VA A TENER N1
	ANDWF	N1, F, 1	; ENMASCARO N1 PARA QIEDARME CON EL PRIMER NIBLE Y EL RESULTADO SE GUARDA EN N1
	RRNCF	N1, F, 1	; HAGO LA ROTACIÓN 1
	RRNCF	N1, F, 1	; HAGO LA ROTACIÓN 2
	RRNCF	N1, F, 1	; HAGO LA ROTACIÓN 3
	MOVF	N1, W, 1	; W = N1
	ADDWF	N2, W, 1	; W = W + N2, ES DECIR, SE SUMAN N1 Y N2 Y EL RESULTADO SE GUARDA EN W
	MOVWF	SUMA, 1		; SUMA = W	
	MOVFF	SUMA, PORTB	; PORTB = SUMA
	GOTO	MAIN
	END