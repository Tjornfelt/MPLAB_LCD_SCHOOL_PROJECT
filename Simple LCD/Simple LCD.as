opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_Init_lcd
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_Thermal_Init
	FNCALL	_main,_Write_data_struct
	FNCALL	_main,_Sound
	FNCALL	_main,_Clear_display
	FNCALL	_main,_Write_data
	FNCALL	_main,_ADC_Read
	FNCALL	_main,_Write_voltage
	FNCALL	_Write_voltage,_Write_data
	FNCALL	_Write_voltage,_Write_digits
	FNCALL	_Write_digits,_Write_data
	FNCALL	_Init_lcd,_Clear_display
	FNROOT	_main
	global	_a
	global	_ADCON0
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RA4
_RA4	set	44
	global	_RB0
_RB0	set	48
	global	_RC2
_RC2	set	58
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"Simple LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Init_lcd
?_Init_lcd:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	?_Write_data_struct
?_Write_data_struct:	; 0 bytes @ 0x0
	global	??_Write_data_struct
??_Write_data_struct:	; 0 bytes @ 0x0
	global	?_Sound
?_Sound:	; 0 bytes @ 0x0
	global	??_Sound
??_Sound:	; 0 bytes @ 0x0
	global	?_Clear_display
?_Clear_display:	; 0 bytes @ 0x0
	global	??_Clear_display
??_Clear_display:	; 0 bytes @ 0x0
	global	?_Write_data
?_Write_data:	; 0 bytes @ 0x0
	global	?_Thermal_Init
?_Thermal_Init:	; 0 bytes @ 0x0
	global	??_Thermal_Init
??_Thermal_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x0
	global	Write_data@lb
Write_data@lb:	; 1 bytes @ 0x0
	ds	1
	global	??_Write_data
??_Write_data:	; 0 bytes @ 0x1
	ds	1
	global	??_Init_lcd
??_Init_lcd:	; 0 bytes @ 0x2
	global	??_ADC_Read
??_ADC_Read:	; 0 bytes @ 0x2
	global	Write_data_struct@chardata
Write_data_struct@chardata:	; 1 bytes @ 0x2
	global	Sound@i
Sound@i:	; 2 bytes @ 0x2
	ds	1
	global	Write_data@hb
Write_data@hb:	; 1 bytes @ 0x3
	ds	1
	global	?_Write_digits
?_Write_digits:	; 0 bytes @ 0x4
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x4
	global	Write_digits@adc_measurement
Write_digits@adc_measurement:	; 2 bytes @ 0x4
	ds	2
	global	??_Write_digits
??_Write_digits:	; 0 bytes @ 0x6
	ds	1
	global	?_Write_voltage
?_Write_voltage:	; 0 bytes @ 0x7
	global	Write_voltage@adc_measurement
Write_voltage@adc_measurement:	; 2 bytes @ 0x7
	ds	2
	global	??_Write_voltage
??_Write_voltage:	; 0 bytes @ 0x9
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	1
	global	main@char_c
main@char_c:	; 1 bytes @ 0xB
	ds	1
	global	main@charWritten
main@charWritten:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_ADC_Read	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Write_voltage
;;   _Write_voltage->_Write_digits
;;   _Write_digits->_Write_data
;;   _Init_lcd->_Clear_display
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0     843
;;                                             10 COMMON     4     4      0
;;                           _Init_lcd
;;                           _ADC_Init
;;                       _Thermal_Init
;;                  _Write_data_struct
;;                              _Sound
;;                      _Clear_display
;;                         _Write_data
;;                           _ADC_Read
;;                      _Write_voltage
;; ---------------------------------------------------------------------------------
;; (1) _Write_voltage                                        3     1      2     638
;;                                              7 COMMON     3     1      2
;;                         _Write_data
;;                       _Write_digits
;; ---------------------------------------------------------------------------------
;; (2) _Write_digits                                         3     1      2     264
;;                                              4 COMMON     3     1      2
;;                         _Write_data
;; ---------------------------------------------------------------------------------
;; (1) _Init_lcd                                             2     2      0       0
;;                                              2 COMMON     2     2      0
;;                      _Clear_display
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Read                                             5     3      2      22
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (3) _Write_data                                           4     3      1      44
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) _Clear_display                                        2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Sound                                                4     4      0      24
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Write_data_struct                                    3     3      0      44
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Thermal_Init                                         1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Init_lcd
;;     _Clear_display
;;   _ADC_Init
;;   _Thermal_Init
;;   _Write_data_struct
;;   _Sound
;;   _Clear_display
;;   _Write_data
;;   _ADC_Read
;;   _Write_voltage
;;     _Write_data
;;     _Write_digits
;;       _Write_data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      10       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      13      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  char_c          1   11[COMMON] struct byte_struct
;;  charWritten     2   12[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_lcd
;;		_ADC_Init
;;		_Thermal_Init
;;		_Write_data_struct
;;		_Sound
;;		_Clear_display
;;		_Write_data
;;		_ADC_Read
;;		_Write_voltage
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\main.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l4950:	
;main.c: 19: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	20
;main.c: 20: PORTB = 0x9;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	23
	
l4952:	
;main.c: 23: TRISC = 0b00000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	24
	
l4954:	
;main.c: 24: PORTC = 0b11000;
	movlw	(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	27
	
l4956:	
;main.c: 27: TRISA = 0b00010001;
	movlw	(011h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	30
	
l4958:	
;main.c: 30: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	33
	
l4960:	
;main.c: 33: Init_lcd();
	fcall	_Init_lcd
	line	36
	
l4962:	
;main.c: 36: ADC_Init();
	fcall	_ADC_Init
	line	39
	
l4964:	
;main.c: 39: Thermal_Init();
	fcall	_Thermal_Init
	line	46
	
l4966:	
;main.c: 46: int charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l4968
	line	47
;main.c: 47: while(1)
	
l664:	
	line	50
	
l4968:	
;main.c: 48: {
;main.c: 50: if(RA4 == 0 && charWritten == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l4980
u2730:
	
l4970:	
	movf	((main@charWritten+1)),w
	iorwf	((main@charWritten)),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l4980
u2740:
	line	53
	
l4972:	
;main.c: 51: {
;main.c: 52: struct byte_struct char_c;
;main.c: 53: char_c.hb = 0b0100;
	movf	(main@char_c),w
	andlw	not (((1<<4)-1)<<0)
	iorlw	(04h & ((1<<4)-1))<<0
	movwf	(main@char_c)
	line	54
;main.c: 54: char_c.lb = 0b0011;
	movf	(main@char_c),w
	andlw	not (((1<<4)-1)<<4)
	iorlw	(03h & ((1<<4)-1))<<4
	movwf	(main@char_c)
	line	56
	
l4974:	
;main.c: 56: Write_data_struct(char_c);
	movf	(main@char_c),w
	fcall	_Write_data_struct
	line	58
	
l4976:	
;main.c: 58: Sound();
	fcall	_Sound
	line	59
	
l4978:	
;main.c: 59: charWritten = 1;
	movlw	low(01h)
	movwf	(main@charWritten)
	movlw	high(01h)
	movwf	((main@charWritten))+1
	goto	l4980
	line	60
	
l665:	
	line	62
	
l4980:	
;main.c: 60: }
;main.c: 62: if(charWritten == 1 && RA4 == 1)
	movlw	01h
	xorwf	(main@charWritten),w
	iorwf	(main@charWritten+1),w
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l4986
u2750:
	
l4982:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l4986
u2760:
	line	64
	
l4984:	
;main.c: 63: {
;main.c: 64: charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l4986
	line	65
	
l666:	
	line	67
	
l4986:	
;main.c: 65: }
;main.c: 67: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l4968
u2770:
	line	69
	
l4988:	
;main.c: 68: {
;main.c: 69: Clear_display();
	fcall	_Clear_display
	line	70
;main.c: 70: Write_data(0b0101, 0b0110);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(05h)
	fcall	_Write_data
	line	71
;main.c: 71: Write_data(0b0100, 0b1111);
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	72
;main.c: 72: Write_data(0b0100, 0b1100);
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	73
;main.c: 73: Write_data(0b0101, 0b0100);
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(05h)
	fcall	_Write_data
	line	74
;main.c: 74: Write_data(0b0100, 0b0001);
	clrf	(?_Write_data)
	bsf	status,0
	rlf	(?_Write_data),f
	movlw	(04h)
	fcall	_Write_data
	line	75
;main.c: 75: Write_data(0b0100, 0b0111);
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	76
;main.c: 76: Write_data(0b0100, 0b0101);
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	77
;main.c: 77: Write_data(0b0011, 0b1101);
	movlw	(0Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	79
	
l4990:	
;main.c: 79: a = ADC_Read(0);
	movlw	(0)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?_ADC_Read)),w
	clrf	(_a)
	addwf	(_a)

	line	81
	
l4992:	
;main.c: 81: Write_voltage(a);
	movf	(_a+1),w
	clrf	(?_Write_voltage+1)
	addwf	(?_Write_voltage+1)
	movf	(_a),w
	clrf	(?_Write_voltage)
	addwf	(?_Write_voltage)

	fcall	_Write_voltage
	goto	l4968
	line	82
	
l667:	
	goto	l4968
	line	83
	
l668:	
	line	47
	goto	l4968
	
l669:	
	line	96
	
l670:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Write_voltage
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _Write_voltage *****************
;; Defined at:
;;		line 123 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;  adc_measurem    2    7[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_data
;;		_Write_digits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text281
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	123
	global	__size_of_Write_voltage
	__size_of_Write_voltage	equ	__end_of_Write_voltage-_Write_voltage
	
_Write_voltage:	
	opt	stack 5
; Regs used in _Write_voltage: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	128
	
l4908:	
;LCD.c: 128: if(adc_measurement < 200)
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2635
	movlw	low(0C8h)
	subwf	(Write_voltage@adc_measurement),w
u2635:

	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l4914
u2630:
	line	130
	
l4910:	
;LCD.c: 129: {
;LCD.c: 130: Write_data(0b0011,0b0000);
	clrf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	131
	
l4912:	
;LCD.c: 131: Write_digits(adc_measurement);
	movf	(Write_voltage@adc_measurement+1),w
	clrf	(?_Write_digits+1)
	addwf	(?_Write_digits+1)
	movf	(Write_voltage@adc_measurement),w
	clrf	(?_Write_digits)
	addwf	(?_Write_digits)

	fcall	_Write_digits
	line	132
;LCD.c: 132: }
	goto	l2007
	line	133
	
l1996:	
	
l4914:	
;LCD.c: 133: else if(adc_measurement > 200 && adc_measurement < 400)
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(0C9h)
	subwf	(Write_voltage@adc_measurement),w
u2645:

	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l4922
u2640:
	
l4916:	
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0190h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2655
	movlw	low(0190h)
	subwf	(Write_voltage@adc_measurement),w
u2655:

	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l4922
u2650:
	line	135
	
l4918:	
;LCD.c: 134: {
;LCD.c: 135: Write_data(0b0011,0b0001);
	clrf	(?_Write_data)
	bsf	status,0
	rlf	(?_Write_data),f
	movlw	(03h)
	fcall	_Write_data
	line	136
	
l4920:	
;LCD.c: 136: Write_digits((adc_measurement-200));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-200)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-200)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	137
;LCD.c: 137: }
	goto	l2007
	line	138
	
l1998:	
	
l4922:	
;LCD.c: 138: else if(adc_measurement > 400 && adc_measurement < 600)
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0191h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2665
	movlw	low(0191h)
	subwf	(Write_voltage@adc_measurement),w
u2665:

	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l4930
u2660:
	
l4924:	
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0258h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2675
	movlw	low(0258h)
	subwf	(Write_voltage@adc_measurement),w
u2675:

	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l4930
u2670:
	line	140
	
l4926:	
;LCD.c: 139: {
;LCD.c: 140: Write_data(0b0011,0b0010);
	movlw	(02h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	141
	
l4928:	
;LCD.c: 141: Write_digits((adc_measurement-400));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-400)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-400)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	142
;LCD.c: 142: }
	goto	l2007
	line	143
	
l2000:	
	
l4930:	
;LCD.c: 143: else if(adc_measurement > 600 && adc_measurement < 800)
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0259h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2685
	movlw	low(0259h)
	subwf	(Write_voltage@adc_measurement),w
u2685:

	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l4938
u2680:
	
l4932:	
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0320h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2695
	movlw	low(0320h)
	subwf	(Write_voltage@adc_measurement),w
u2695:

	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l4938
u2690:
	line	145
	
l4934:	
;LCD.c: 144: {
;LCD.c: 145: Write_data(0b0011,0b0011);
	movlw	(03h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	146
	
l4936:	
;LCD.c: 146: Write_digits((adc_measurement-600));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-600)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-600)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	147
;LCD.c: 147: }
	goto	l2007
	line	148
	
l2002:	
	
l4938:	
;LCD.c: 148: else if(adc_measurement > 800 & adc_measurement < 1000)
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0321h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2705
	movlw	low(0321h)
	subwf	(Write_voltage@adc_measurement),w
u2705:

	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l4946
u2700:
	
l4940:	
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2715
	movlw	low(03E8h)
	subwf	(Write_voltage@adc_measurement),w
u2715:

	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l4946
u2710:
	line	150
	
l4942:	
;LCD.c: 149: {
;LCD.c: 150: Write_data(0b0011,0b0100);
	movlw	(04h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	151
	
l4944:	
;LCD.c: 151: Write_digits((adc_measurement-800));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-800)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-800)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	152
;LCD.c: 152: }
	goto	l2007
	line	153
	
l2004:	
	
l4946:	
;LCD.c: 153: else if(adc_measurement > 1000)
	movf	(Write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2725
	movlw	low(03E9h)
	subwf	(Write_voltage@adc_measurement),w
u2725:

	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l2007
u2720:
	line	155
	
l4948:	
;LCD.c: 154: {
;LCD.c: 155: Write_data(0b0011,0b0101);
	movlw	(05h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	goto	l2007
	line	156
	
l2006:	
	goto	l2007
	line	157
	
l2005:	
	goto	l2007
	
l2003:	
	goto	l2007
	
l2001:	
	goto	l2007
	
l1999:	
	goto	l2007
	
l1997:	
	
l2007:	
	return
	opt stack 0
GLOBAL	__end_of_Write_voltage
	__end_of_Write_voltage:
;; =============== function _Write_voltage ends ============

	signat	_Write_voltage,4216
	global	_Write_digits
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _Write_digits *****************
;; Defined at:
;;		line 77 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;  adc_measurem    2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Write_data
;; This function is called by:
;;		_Write_voltage
;; This function uses a non-reentrant model
;;
psect	text282
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	77
	global	__size_of_Write_digits
	__size_of_Write_digits	equ	__end_of_Write_digits-_Write_digits
	
_Write_digits:	
	opt	stack 5
; Regs used in _Write_digits: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	78
	
l4868:	
;LCD.c: 78: Write_data(0b0010,0b1100);
	movlw	(0Ch)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(02h)
	fcall	_Write_data
	line	80
	
l4870:	
;LCD.c: 80: if(adc_measurement > 180)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0B5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2535
	movlw	low(0B5h)
	subwf	(Write_digits@adc_measurement),w
u2535:

	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l4874
u2530:
	line	82
	
l4872:	
;LCD.c: 81: {
;LCD.c: 82: Write_data(0b0011, 0b1001);
	movlw	(09h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	83
;LCD.c: 83: }
	goto	l1993
	line	84
	
l1974:	
	
l4874:	
;LCD.c: 84: else if(adc_measurement > 160)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0A1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(0A1h)
	subwf	(Write_digits@adc_measurement),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l4878
u2540:
	line	86
	
l4876:	
;LCD.c: 85: {
;LCD.c: 86: Write_data(0b0011, 0b1000);
	movlw	(08h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	87
;LCD.c: 87: }
	goto	l1993
	line	88
	
l1976:	
	
l4878:	
;LCD.c: 88: else if(adc_measurement > 140)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2555
	movlw	low(08Dh)
	subwf	(Write_digits@adc_measurement),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l4882
u2550:
	line	90
	
l4880:	
;LCD.c: 89: {
;LCD.c: 90: Write_data(0b0011, 0b0111);
	movlw	(07h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	91
;LCD.c: 91: }
	goto	l1993
	line	92
	
l1978:	
	
l4882:	
;LCD.c: 92: else if(adc_measurement > 120)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(079h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2565
	movlw	low(079h)
	subwf	(Write_digits@adc_measurement),w
u2565:

	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l4886
u2560:
	line	94
	
l4884:	
;LCD.c: 93: {
;LCD.c: 94: Write_data(0b0011, 0b0110);
	movlw	(06h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	95
;LCD.c: 95: }
	goto	l1993
	line	96
	
l1980:	
	
l4886:	
;LCD.c: 96: else if(adc_measurement > 100)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(065h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2575
	movlw	low(065h)
	subwf	(Write_digits@adc_measurement),w
u2575:

	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l4890
u2570:
	line	98
	
l4888:	
;LCD.c: 97: {
;LCD.c: 98: Write_data(0b0011, 0b0101);
	movlw	(05h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	99
;LCD.c: 99: }
	goto	l1993
	line	100
	
l1982:	
	
l4890:	
;LCD.c: 100: else if(adc_measurement > 80)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(051h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2585
	movlw	low(051h)
	subwf	(Write_digits@adc_measurement),w
u2585:

	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l4894
u2580:
	line	102
	
l4892:	
;LCD.c: 101: {
;LCD.c: 102: Write_data(0b0011, 0b0100);
	movlw	(04h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	103
;LCD.c: 103: }
	goto	l1993
	line	104
	
l1984:	
	
l4894:	
;LCD.c: 104: else if(adc_measurement > 60)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2595
	movlw	low(03Dh)
	subwf	(Write_digits@adc_measurement),w
u2595:

	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l4898
u2590:
	line	106
	
l4896:	
;LCD.c: 105: {
;LCD.c: 106: Write_data(0b0011, 0b0011);
	movlw	(03h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	107
;LCD.c: 107: }
	goto	l1993
	line	108
	
l1986:	
	
l4898:	
;LCD.c: 108: else if(adc_measurement > 40)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(029h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2605
	movlw	low(029h)
	subwf	(Write_digits@adc_measurement),w
u2605:

	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l4902
u2600:
	line	110
	
l4900:	
;LCD.c: 109: {
;LCD.c: 110: Write_data(0b0011, 0b0010);
	movlw	(02h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	111
;LCD.c: 111: }
	goto	l1993
	line	112
	
l1988:	
	
l4902:	
;LCD.c: 112: else if(adc_measurement > 20)
	movf	(Write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2615
	movlw	low(015h)
	subwf	(Write_digits@adc_measurement),w
u2615:

	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l1990
u2610:
	line	114
	
l4904:	
;LCD.c: 113: {
;LCD.c: 114: Write_data(0b0011, 0b0001);
	clrf	(?_Write_data)
	bsf	status,0
	rlf	(?_Write_data),f
	movlw	(03h)
	fcall	_Write_data
	line	115
;LCD.c: 115: }
	goto	l1993
	line	116
	
l1990:	
;LCD.c: 116: else if(adc_measurement >= 0)
	btfsc	(Write_digits@adc_measurement+1),7
	goto	u2621
	goto	u2620
u2621:
	goto	l1993
u2620:
	line	118
	
l4906:	
;LCD.c: 117: {
;LCD.c: 118: Write_data(0b0011, 0b0000);
	clrf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	goto	l1993
	line	119
	
l1992:	
	goto	l1993
	line	120
	
l1991:	
	goto	l1993
	
l1989:	
	goto	l1993
	
l1987:	
	goto	l1993
	
l1985:	
	goto	l1993
	
l1983:	
	goto	l1993
	
l1981:	
	goto	l1993
	
l1979:	
	goto	l1993
	
l1977:	
	goto	l1993
	
l1975:	
	
l1993:	
	return
	opt stack 0
GLOBAL	__end_of_Write_digits
	__end_of_Write_digits:
;; =============== function _Write_digits ends ============

	signat	_Write_digits,4216
	global	_Init_lcd
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _Init_lcd *****************
;; Defined at:
;;		line 26 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Clear_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text283
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	26
	global	__size_of_Init_lcd
	__size_of_Init_lcd	equ	__end_of_Init_lcd-_Init_lcd
	
_Init_lcd:	
	opt	stack 6
; Regs used in _Init_lcd: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l4848:	
;LCD.c: 28: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	29
;LCD.c: 29: PORTD = 0b0010;
	movlw	(02h)
	movwf	(8)	;volatile
	line	30
	
l4850:	
;LCD.c: 30: PORTA = 0x00;
	clrf	(5)	;volatile
	line	31
	
l4852:	
;LCD.c: 31: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	32
	
l4854:	
;LCD.c: 32: PORTD = 0b1000;
	movlw	(08h)
	movwf	(8)	;volatile
	line	33
	
l4856:	
;LCD.c: 33: PORTA = 0x00;
	clrf	(5)	;volatile
	line	34
;LCD.c: 34: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Init_lcd+0)+0+1),f
	movlw	248
movwf	((??_Init_lcd+0)+0),f
u2787:
	decfsz	((??_Init_lcd+0)+0),f
	goto	u2787
	decfsz	((??_Init_lcd+0)+0+1),f
	goto	u2787
	clrwdt
opt asmopt_on

	line	37
;LCD.c: 37: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	38
	
l4858:	
;LCD.c: 38: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	39
	
l4860:	
;LCD.c: 39: PORTA = 0x00;
	clrf	(5)	;volatile
	line	40
;LCD.c: 40: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	41
;LCD.c: 41: PORTD = 0b1111;
	movlw	(0Fh)
	movwf	(8)	;volatile
	line	42
	
l4862:	
;LCD.c: 42: PORTA = 0x00;
	clrf	(5)	;volatile
	line	43
	
l4864:	
;LCD.c: 43: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Init_lcd+0)+0+1),f
	movlw	248
movwf	((??_Init_lcd+0)+0),f
u2797:
	decfsz	((??_Init_lcd+0)+0),f
	goto	u2797
	decfsz	((??_Init_lcd+0)+0+1),f
	goto	u2797
	clrwdt
opt asmopt_on

	line	45
	
l4866:	
;LCD.c: 45: Clear_display();
	fcall	_Clear_display
	line	46
	
l1965:	
	return
	opt stack 0
GLOBAL	__end_of_Init_lcd
	__end_of_Init_lcd:
;; =============== function _Init_lcd ends ============

	signat	_Init_lcd,88
	global	_ADC_Read
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 15 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text284
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
	line	15
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
	opt	stack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0+btemp+1]
;ADC_Read@channel stored from wreg
	movwf	(ADC_Read@channel)
	line	16
	
l4838:	
;ADC.c: 16: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	17
;ADC.c: 17: ADCON0 |= channel<<3;
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u2515:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u2515
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	iorwf	(31),f	;volatile
	line	18
	
l4840:	
;ADC.c: 18: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_ADC_Read+0)+0+1),f
	movlw	151
movwf	((??_ADC_Read+0)+0),f
u2807:
	decfsz	((??_ADC_Read+0)+0),f
	goto	u2807
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u2807
	nop2
opt asmopt_on

	line	19
	
l4842:	
;ADC.c: 19: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	20
;ADC.c: 20: while(GO_nDONE);
	goto	l1316
	
l1317:	
	
l1316:	
	btfsc	(250/8),(250)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1316
u2520:
	goto	l4844
	
l1318:	
	line	21
	
l4844:	
;ADC.c: 21: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(??_ADC_Read+0)+0
	clrf	(??_ADC_Read+0)+0+1
	movf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+0)+1
	clrf	(??_ADC_Read+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_ADC_Read+0)+0,w
	movwf	(?_ADC_Read)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ADC_Read+0)+0,w
	movwf	1+(?_ADC_Read)
	goto	l1319
	
l4846:	
	line	22
	
l1319:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
;; =============== function _ADC_Read ends ============

	signat	_ADC_Read,4218
	global	_Write_data
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _Write_data *****************
;; Defined at:
;;		line 51 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;  hb              1    wreg     unsigned char 
;;  lb              1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hb              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Write_digits
;;		_Write_voltage
;; This function uses a non-reentrant model
;;
psect	text285
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	51
	global	__size_of_Write_data
	__size_of_Write_data	equ	__end_of_Write_data-_Write_data
	
_Write_data:	
	opt	stack 5
; Regs used in _Write_data: [wreg]
;Write_data@hb stored from wreg
	movwf	(Write_data@hb)
	line	52
	
l4836:	
;LCD.c: 52: PORTA = 0xA;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	53
;LCD.c: 53: PORTD = hb;
	movf	(Write_data@hb),w
	movwf	(8)	;volatile
	line	54
;LCD.c: 54: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	56
;LCD.c: 56: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	57
;LCD.c: 57: PORTD = lb;
	movf	(Write_data@lb),w
	movwf	(8)	;volatile
	line	58
;LCD.c: 58: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	60
;LCD.c: 60: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Write_data+0)+0+1),f
	movlw	248
movwf	((??_Write_data+0)+0),f
u2817:
	decfsz	((??_Write_data+0)+0),f
	goto	u2817
	decfsz	((??_Write_data+0)+0+1),f
	goto	u2817
	clrwdt
opt asmopt_on

	line	61
	
l1968:	
	return
	opt stack 0
GLOBAL	__end_of_Write_data
	__end_of_Write_data:
;; =============== function _Write_data ends ============

	signat	_Write_data,8312
	global	_Clear_display
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

;; *************** function _Clear_display *****************
;; Defined at:
;;		line 14 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Init_lcd
;; This function uses a non-reentrant model
;;
psect	text286
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	14
	global	__size_of_Clear_display
	__size_of_Clear_display	equ	__end_of_Clear_display-_Clear_display
	
_Clear_display:	
	opt	stack 7
; Regs used in _Clear_display: [wreg+status,2]
	line	16
	
l4826:	
;LCD.c: 16: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	17
	
l4828:	
;LCD.c: 17: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	18
	
l4830:	
;LCD.c: 18: PORTA = 0x00;
	clrf	(5)	;volatile
	line	19
;LCD.c: 19: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	20
;LCD.c: 20: PORTD = 0b0001;
	movlw	(01h)
	movwf	(8)	;volatile
	line	21
	
l4832:	
;LCD.c: 21: PORTA = 0x00;
	clrf	(5)	;volatile
	line	22
	
l4834:	
;LCD.c: 22: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Clear_display+0)+0+1),f
	movlw	248
movwf	((??_Clear_display+0)+0),f
u2827:
	decfsz	((??_Clear_display+0)+0),f
	goto	u2827
	decfsz	((??_Clear_display+0)+0+1),f
	goto	u2827
	clrwdt
opt asmopt_on

	line	23
	
l1962:	
	return
	opt stack 0
GLOBAL	__end_of_Clear_display
	__end_of_Clear_display:
;; =============== function _Clear_display ends ============

	signat	_Clear_display,88
	global	_Sound
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

;; *************** function _Sound *****************
;; Defined at:
;;		line 6 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\Sound.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text287
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\Sound.c"
	line	6
	global	__size_of_Sound
	__size_of_Sound	equ	__end_of_Sound-_Sound
	
_Sound:	
	opt	stack 7
; Regs used in _Sound: [wreg+status,2+btemp+1]
	line	8
	
l4818:	
;Sound.c: 8: int i = 0;
	clrf	(Sound@i)
	clrf	(Sound@i+1)
	line	11
;Sound.c: 11: while(i < 20)
	goto	l4824
	
l2651:	
	line	14
;Sound.c: 12: {
;Sound.c: 14: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	17
	
l4820:	
;Sound.c: 17: _delay(6000);
	opt asmopt_off
movlw	8
movwf	((??_Sound+0)+0+1),f
	movlw	201
movwf	((??_Sound+0)+0),f
u2837:
	decfsz	((??_Sound+0)+0),f
	goto	u2837
	decfsz	((??_Sound+0)+0+1),f
	goto	u2837
	nop2
opt asmopt_on

	line	19
	
l4822:	
;Sound.c: 19: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	20
;Sound.c: 20: i++;
	movlw	low(01h)
	addwf	(Sound@i),f
	skipnc
	incf	(Sound@i+1),f
	movlw	high(01h)
	addwf	(Sound@i+1),f
	goto	l4824
	line	21
	
l2650:	
	line	11
	
l4824:	
	movf	(Sound@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(014h)
	subwf	(Sound@i),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2651
u2500:
	goto	l2653
	
l2652:	
	line	22
	
l2653:	
	return
	opt stack 0
GLOBAL	__end_of_Sound
	__end_of_Sound:
;; =============== function _Sound ends ============

	signat	_Sound,88
	global	_Write_data_struct
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function _Write_data_struct *****************
;; Defined at:
;;		line 64 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;  chardata        1    wreg     struct byte_struct
;; Auto vars:     Size  Location     Type
;;  chardata        1    2[COMMON] struct byte_struct
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text288
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	64
	global	__size_of_Write_data_struct
	__size_of_Write_data_struct	equ	__end_of_Write_data_struct-_Write_data_struct
	
_Write_data_struct:	
	opt	stack 7
; Regs used in _Write_data_struct: [wreg+status,2+status,0]
;Write_data_struct@chardata stored from wreg
	movwf	(Write_data_struct@chardata)
	line	65
	
l4808:	
;LCD.c: 65: PORTA = 0xA;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	66
	
l4810:	
;LCD.c: 66: PORTD = chardata.hb;
	movf	(Write_data_struct@chardata),w
	andlw	(1<<4)-1
	movwf	(8)	;volatile
	line	67
	
l4812:	
;LCD.c: 67: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	69
	
l4814:	
;LCD.c: 69: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	70
	
l4816:	
;LCD.c: 70: PORTD = chardata.lb;
	swapf	(Write_data_struct@chardata),w
	andlw	(1<<4)-1
	movwf	(8)	;volatile
	line	71
;LCD.c: 71: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	73
;LCD.c: 73: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Write_data_struct+0)+0+1),f
	movlw	248
movwf	((??_Write_data_struct+0)+0),f
u2847:
	decfsz	((??_Write_data_struct+0)+0),f
	goto	u2847
	decfsz	((??_Write_data_struct+0)+0+1),f
	goto	u2847
	clrwdt
opt asmopt_on

	line	74
	
l1971:	
	return
	opt stack 0
GLOBAL	__end_of_Write_data_struct
	__end_of_Write_data_struct:
;; =============== function _Write_data_struct ends ============

	signat	_Write_data_struct,4216
	global	_Thermal_Init
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

;; *************** function _Thermal_Init *****************
;; Defined at:
;;		line 2 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\Thermometer.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text289
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\Thermometer.h"
	line	2
	global	__size_of_Thermal_Init
	__size_of_Thermal_Init	equ	__end_of_Thermal_Init-_Thermal_Init
	
_Thermal_Init:	
	opt	stack 7
; Regs used in _Thermal_Init: [wreg+status,2]
	line	4
	
l4758:	
;Thermometer.h: 4: PORTC = 0b01000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	5
;Thermometer.h: 5: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2857:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2857
	nop2	;nop
	clrwdt
opt asmopt_on

	line	6
	
l4760:	
;Thermometer.h: 6: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	12
	
l4762:	
;Thermometer.h: 12: PORTC = 0b10000;
	movlw	(010h)
	movwf	(7)	;volatile
	line	13
	
l4764:	
;Thermometer.h: 13: PORTC = 0b11000;
	movlw	(018h)
	movwf	(7)	;volatile
	line	14
	
l4766:	
;Thermometer.h: 14: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2867:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2867
	nop2	;nop
	clrwdt
opt asmopt_on

	line	15
;Thermometer.h: 15: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	18
;Thermometer.h: 18: PORTC = 0b00000;
	clrf	(7)	;volatile
	line	19
	
l4768:	
;Thermometer.h: 19: PORTC = 0b01000;
	movlw	(08h)
	movwf	(7)	;volatile
	line	20
	
l4770:	
;Thermometer.h: 20: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2877:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2877
	nop2	;nop
	clrwdt
opt asmopt_on

	line	21
;Thermometer.h: 21: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	24
;Thermometer.h: 24: PORTC = 0b00000;
	clrf	(7)	;volatile
	line	25
	
l4772:	
;Thermometer.h: 25: PORTC = 0b01000;
	movlw	(08h)
	movwf	(7)	;volatile
	line	26
	
l4774:	
;Thermometer.h: 26: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2887:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2887
	nop2	;nop
	clrwdt
opt asmopt_on

	line	27
;Thermometer.h: 27: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	31
	
l4776:	
;Thermometer.h: 31: PORTC = 0b10000;
	movlw	(010h)
	movwf	(7)	;volatile
	line	32
	
l4778:	
;Thermometer.h: 32: PORTC = 0b11000;
	movlw	(018h)
	movwf	(7)	;volatile
	line	33
	
l4780:	
;Thermometer.h: 33: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2897:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2897
	nop2	;nop
	clrwdt
opt asmopt_on

	line	34
	
l4782:	
;Thermometer.h: 34: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	37
;Thermometer.h: 37: PORTC = 0b10000;
	movlw	(010h)
	movwf	(7)	;volatile
	line	38
;Thermometer.h: 38: PORTC = 0b01000;
	movlw	(08h)
	movwf	(7)	;volatile
	line	39
;Thermometer.h: 39: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2907:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2907
	nop2	;nop
	clrwdt
opt asmopt_on

	line	40
	
l4784:	
;Thermometer.h: 40: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	43
	
l4786:	
;Thermometer.h: 43: PORTC = 0b00000;
	clrf	(7)	;volatile
	line	44
;Thermometer.h: 44: PORTC = 0b01000;
	movlw	(08h)
	movwf	(7)	;volatile
	line	45
;Thermometer.h: 45: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2917:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2917
	nop2	;nop
	clrwdt
opt asmopt_on

	line	46
	
l4788:	
;Thermometer.h: 46: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	49
	
l4790:	
;Thermometer.h: 49: PORTC = 0b10000;
	movlw	(010h)
	movwf	(7)	;volatile
	line	50
	
l4792:	
;Thermometer.h: 50: PORTC = 0b11000;
	movlw	(018h)
	movwf	(7)	;volatile
	line	51
	
l4794:	
;Thermometer.h: 51: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2927:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2927
	nop2	;nop
	clrwdt
opt asmopt_on

	line	52
;Thermometer.h: 52: PORTC = 0b00000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	55
	
l4796:	
;Thermometer.h: 55: PORTC = 0b10000;
	movlw	(010h)
	movwf	(7)	;volatile
	line	56
	
l4798:	
;Thermometer.h: 56: PORTC = 0b11000;
	movlw	(018h)
	movwf	(7)	;volatile
	line	57
	
l4800:	
;Thermometer.h: 57: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Thermal_Init+0)+0,f
u2937:
	clrwdt
decfsz	(??_Thermal_Init+0)+0,f
	goto	u2937
	nop2	;nop
	clrwdt
opt asmopt_on

	line	58
	
l4802:	
;Thermometer.h: 58: PORTC = 0b10000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	61
	
l4804:	
;Thermometer.h: 61: TRISC = 0b01000;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	62
	
l4806:	
;Thermometer.h: 62: PORTC = 0b01000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	63
;Thermometer.h: 63: PORTC = 0b00000;
	clrf	(7)	;volatile
	line	66
;Thermometer.h: 66: TRISC = 0b0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	67
	
l661:	
	return
	opt stack 0
GLOBAL	__end_of_Thermal_Init
	__end_of_Thermal_Init:
;; =============== function _Thermal_Init ends ============

	signat	_Thermal_Init,88
	global	_ADC_Init
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 7 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text290
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
	line	7
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg]
	line	8
	
l4756:	
;ADC.c: 8: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	9
;ADC.c: 9: ADCON1 = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	11
	
l1313:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
