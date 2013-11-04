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
	FNCALL	_main,_Write_data
	FNCALL	_main,_Sound
	FNCALL	_main,_Clear_display
	FNCALL	_main,_ADC_Read
	FNCALL	_main,_Write_voltage
	FNCALL	_Write_voltage,_Write_data
	FNCALL	_Write_voltage,_Write_digits
	FNCALL	_Write_digits,_Write_data
	FNCALL	_Init_lcd,_Clear_display
	FNROOT	_main
	global	_a
	global	_ADCON0
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:
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
	global	?_Write_data
?_Write_data:	; 0 bytes @ 0x0
	global	?_Sound
?_Sound:	; 0 bytes @ 0x0
	global	??_Sound
??_Sound:	; 0 bytes @ 0x0
	global	?_Clear_display
?_Clear_display:	; 0 bytes @ 0x0
	global	??_Clear_display
??_Clear_display:	; 0 bytes @ 0x0
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
	global	main@charWritten
main@charWritten:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
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
;; (0) _main                                                 3     3      0     775
;;                                             10 COMMON     3     3      0
;;                           _Init_lcd
;;                           _ADC_Init
;;                         _Write_data
;;                              _Sound
;;                      _Clear_display
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
;; (1) _Clear_display                                        2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Sound                                                4     4      0      24
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (3) _Write_data                                           4     3      1      44
;;                                              0 COMMON     4     3      1
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
;;   _Write_data
;;   _Sound
;;   _Clear_display
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
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       F       3        0.0%
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
;;DATA                 0      0      12      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  charWritten     2   11[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_lcd
;;		_ADC_Init
;;		_Write_data
;;		_Sound
;;		_Clear_display
;;		_ADC_Read
;;		_Write_voltage
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\main.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l4814:	
;main.c: 16: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	17
;main.c: 17: PORTB = 0x9;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	20
	
l4816:	
;main.c: 20: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	21
	
l4818:	
;main.c: 21: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	24
;main.c: 24: TRISA = 0b00010001;
	movlw	(011h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	27
	
l4820:	
;main.c: 27: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	30
	
l4822:	
;main.c: 30: Init_lcd();
	fcall	_Init_lcd
	line	33
	
l4824:	
;main.c: 33: ADC_Init();
	fcall	_ADC_Init
	line	39
	
l4826:	
;main.c: 39: int charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l4828
	line	40
;main.c: 40: while(1)
	
l657:	
	line	43
	
l4828:	
;main.c: 41: {
;main.c: 43: if(RA4 == 0 && charWritten == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l4838
u2730:
	
l4830:	
	movf	((main@charWritten+1)),w
	iorwf	((main@charWritten)),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l4838
u2740:
	line	45
	
l4832:	
;main.c: 44: {
;main.c: 45: Write_data(0b0100, 0b0011);
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	46
	
l4834:	
;main.c: 46: Sound();
	fcall	_Sound
	line	47
	
l4836:	
;main.c: 47: charWritten = 1;
	movlw	low(01h)
	movwf	(main@charWritten)
	movlw	high(01h)
	movwf	((main@charWritten))+1
	goto	l4838
	line	48
	
l658:	
	line	50
	
l4838:	
;main.c: 48: }
;main.c: 50: if(charWritten == 1 && RA4 == 1)
	movlw	01h
	xorwf	(main@charWritten),w
	iorwf	(main@charWritten+1),w
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l4844
u2750:
	
l4840:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l4844
u2760:
	line	52
	
l4842:	
;main.c: 51: {
;main.c: 52: charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l4844
	line	53
	
l659:	
	line	56
	
l4844:	
;main.c: 53: }
;main.c: 56: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l4828
u2770:
	line	58
	
l4846:	
;main.c: 57: {
;main.c: 58: Clear_display();
	fcall	_Clear_display
	line	59
;main.c: 59: Write_data(0b0101, 0b0110);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(05h)
	fcall	_Write_data
	line	60
;main.c: 60: Write_data(0b0100, 0b1111);
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	61
;main.c: 61: Write_data(0b0100, 0b1100);
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	62
;main.c: 62: Write_data(0b0101, 0b0100);
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(05h)
	fcall	_Write_data
	line	63
;main.c: 63: Write_data(0b0100, 0b0001);
	clrf	(?_Write_data)
	bsf	status,0
	rlf	(?_Write_data),f
	movlw	(04h)
	fcall	_Write_data
	line	64
;main.c: 64: Write_data(0b0100, 0b0111);
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	65
;main.c: 65: Write_data(0b0100, 0b0101);
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(04h)
	fcall	_Write_data
	line	66
;main.c: 66: Write_data(0b0011, 0b1101);
	movlw	(0Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	68
	
l4848:	
;main.c: 68: a = ADC_Read(0);
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

	line	70
	
l4850:	
;main.c: 70: Write_voltage(a);
	movf	(_a+1),w
	clrf	(?_Write_voltage+1)
	addwf	(?_Write_voltage+1)
	movf	(_a),w
	clrf	(?_Write_voltage)
	addwf	(?_Write_voltage)

	fcall	_Write_voltage
	goto	l4828
	line	71
	
l660:	
	goto	l4828
	line	73
	
l661:	
	line	40
	goto	l4828
	
l662:	
	line	87
	
l663:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Write_voltage
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function _Write_voltage *****************
;; Defined at:
;;		line 110 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
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
psect	text233
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	110
	global	__size_of_Write_voltage
	__size_of_Write_voltage	equ	__end_of_Write_voltage-_Write_voltage
	
_Write_voltage:	
	opt	stack 5
; Regs used in _Write_voltage: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	115
	
l4772:	
;LCD.c: 115: if(adc_measurement < 200)
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
	goto	l4778
u2630:
	line	117
	
l4774:	
;LCD.c: 116: {
;LCD.c: 117: Write_data(0b0011,0b0000);
	clrf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	118
	
l4776:	
;LCD.c: 118: Write_digits(adc_measurement);
	movf	(Write_voltage@adc_measurement+1),w
	clrf	(?_Write_digits+1)
	addwf	(?_Write_digits+1)
	movf	(Write_voltage@adc_measurement),w
	clrf	(?_Write_digits)
	addwf	(?_Write_digits)

	fcall	_Write_digits
	line	119
;LCD.c: 119: }
	goto	l1997
	line	120
	
l1986:	
	
l4778:	
;LCD.c: 120: else if(adc_measurement > 200 && adc_measurement < 400)
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
	goto	l4786
u2640:
	
l4780:	
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
	goto	l4786
u2650:
	line	122
	
l4782:	
;LCD.c: 121: {
;LCD.c: 122: Write_data(0b0011,0b0001);
	clrf	(?_Write_data)
	bsf	status,0
	rlf	(?_Write_data),f
	movlw	(03h)
	fcall	_Write_data
	line	123
	
l4784:	
;LCD.c: 123: Write_digits((adc_measurement-200));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-200)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-200)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	124
;LCD.c: 124: }
	goto	l1997
	line	125
	
l1988:	
	
l4786:	
;LCD.c: 125: else if(adc_measurement > 400 && adc_measurement < 600)
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
	goto	l4794
u2660:
	
l4788:	
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
	goto	l4794
u2670:
	line	127
	
l4790:	
;LCD.c: 126: {
;LCD.c: 127: Write_data(0b0011,0b0010);
	movlw	(02h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	128
	
l4792:	
;LCD.c: 128: Write_digits((adc_measurement-400));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-400)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-400)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	129
;LCD.c: 129: }
	goto	l1997
	line	130
	
l1990:	
	
l4794:	
;LCD.c: 130: else if(adc_measurement > 600 && adc_measurement < 800)
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
	goto	l4802
u2680:
	
l4796:	
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
	goto	l4802
u2690:
	line	132
	
l4798:	
;LCD.c: 131: {
;LCD.c: 132: Write_data(0b0011,0b0011);
	movlw	(03h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	133
	
l4800:	
;LCD.c: 133: Write_digits((adc_measurement-600));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-600)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-600)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	134
;LCD.c: 134: }
	goto	l1997
	line	135
	
l1992:	
	
l4802:	
;LCD.c: 135: else if(adc_measurement > 800 & adc_measurement < 1000)
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
	goto	l4810
u2700:
	
l4804:	
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
	goto	l4810
u2710:
	line	137
	
l4806:	
;LCD.c: 136: {
;LCD.c: 137: Write_data(0b0011,0b0100);
	movlw	(04h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	138
	
l4808:	
;LCD.c: 138: Write_digits((adc_measurement-800));
	movf	(Write_voltage@adc_measurement),w
	addlw	low(-800)
	movwf	(?_Write_digits)
	movf	(Write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-800)
	movwf	1+(?_Write_digits)
	fcall	_Write_digits
	line	139
;LCD.c: 139: }
	goto	l1997
	line	140
	
l1994:	
	
l4810:	
;LCD.c: 140: else if(adc_measurement > 1000)
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
	goto	l1997
u2720:
	line	142
	
l4812:	
;LCD.c: 141: {
;LCD.c: 142: Write_data(0b0011,0b0101);
	movlw	(05h)
	movwf	(??_Write_voltage+0)+0
	movf	(??_Write_voltage+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	goto	l1997
	line	143
	
l1996:	
	goto	l1997
	line	144
	
l1995:	
	goto	l1997
	
l1993:	
	goto	l1997
	
l1991:	
	goto	l1997
	
l1989:	
	goto	l1997
	
l1987:	
	
l1997:	
	return
	opt stack 0
GLOBAL	__end_of_Write_voltage
	__end_of_Write_voltage:
;; =============== function _Write_voltage ends ============

	signat	_Write_voltage,4216
	global	_Write_digits
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _Write_digits *****************
;; Defined at:
;;		line 64 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
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
psect	text234
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	64
	global	__size_of_Write_digits
	__size_of_Write_digits	equ	__end_of_Write_digits-_Write_digits
	
_Write_digits:	
	opt	stack 5
; Regs used in _Write_digits: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	65
	
l4732:	
;LCD.c: 65: Write_data(0b0010,0b1100);
	movlw	(0Ch)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(02h)
	fcall	_Write_data
	line	67
	
l4734:	
;LCD.c: 67: if(adc_measurement > 180)
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
	goto	l4738
u2530:
	line	69
	
l4736:	
;LCD.c: 68: {
;LCD.c: 69: Write_data(0b0011, 0b1001);
	movlw	(09h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	70
;LCD.c: 70: }
	goto	l1983
	line	71
	
l1964:	
	
l4738:	
;LCD.c: 71: else if(adc_measurement > 160)
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
	goto	l4742
u2540:
	line	73
	
l4740:	
;LCD.c: 72: {
;LCD.c: 73: Write_data(0b0011, 0b1000);
	movlw	(08h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	74
;LCD.c: 74: }
	goto	l1983
	line	75
	
l1966:	
	
l4742:	
;LCD.c: 75: else if(adc_measurement > 140)
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
	goto	l4746
u2550:
	line	77
	
l4744:	
;LCD.c: 76: {
;LCD.c: 77: Write_data(0b0011, 0b0111);
	movlw	(07h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	78
;LCD.c: 78: }
	goto	l1983
	line	79
	
l1968:	
	
l4746:	
;LCD.c: 79: else if(adc_measurement > 120)
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
	goto	l4750
u2560:
	line	81
	
l4748:	
;LCD.c: 80: {
;LCD.c: 81: Write_data(0b0011, 0b0110);
	movlw	(06h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	82
;LCD.c: 82: }
	goto	l1983
	line	83
	
l1970:	
	
l4750:	
;LCD.c: 83: else if(adc_measurement > 100)
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
	goto	l4754
u2570:
	line	85
	
l4752:	
;LCD.c: 84: {
;LCD.c: 85: Write_data(0b0011, 0b0101);
	movlw	(05h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	86
;LCD.c: 86: }
	goto	l1983
	line	87
	
l1972:	
	
l4754:	
;LCD.c: 87: else if(adc_measurement > 80)
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
	goto	l4758
u2580:
	line	89
	
l4756:	
;LCD.c: 88: {
;LCD.c: 89: Write_data(0b0011, 0b0100);
	movlw	(04h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	90
;LCD.c: 90: }
	goto	l1983
	line	91
	
l1974:	
	
l4758:	
;LCD.c: 91: else if(adc_measurement > 60)
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
	goto	l4762
u2590:
	line	93
	
l4760:	
;LCD.c: 92: {
;LCD.c: 93: Write_data(0b0011, 0b0011);
	movlw	(03h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	94
;LCD.c: 94: }
	goto	l1983
	line	95
	
l1976:	
	
l4762:	
;LCD.c: 95: else if(adc_measurement > 40)
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
	goto	l4766
u2600:
	line	97
	
l4764:	
;LCD.c: 96: {
;LCD.c: 97: Write_data(0b0011, 0b0010);
	movlw	(02h)
	movwf	(??_Write_digits+0)+0
	movf	(??_Write_digits+0)+0,w
	movwf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	line	98
;LCD.c: 98: }
	goto	l1983
	line	99
	
l1978:	
	
l4766:	
;LCD.c: 99: else if(adc_measurement > 20)
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
	goto	l1980
u2610:
	line	101
	
l4768:	
;LCD.c: 100: {
;LCD.c: 101: Write_data(0b0011, 0b0001);
	clrf	(?_Write_data)
	bsf	status,0
	rlf	(?_Write_data),f
	movlw	(03h)
	fcall	_Write_data
	line	102
;LCD.c: 102: }
	goto	l1983
	line	103
	
l1980:	
;LCD.c: 103: else if(adc_measurement >= 0)
	btfsc	(Write_digits@adc_measurement+1),7
	goto	u2621
	goto	u2620
u2621:
	goto	l1983
u2620:
	line	105
	
l4770:	
;LCD.c: 104: {
;LCD.c: 105: Write_data(0b0011, 0b0000);
	clrf	(?_Write_data)
	movlw	(03h)
	fcall	_Write_data
	goto	l1983
	line	106
	
l1982:	
	goto	l1983
	line	107
	
l1981:	
	goto	l1983
	
l1979:	
	goto	l1983
	
l1977:	
	goto	l1983
	
l1975:	
	goto	l1983
	
l1973:	
	goto	l1983
	
l1971:	
	goto	l1983
	
l1969:	
	goto	l1983
	
l1967:	
	goto	l1983
	
l1965:	
	
l1983:	
	return
	opt stack 0
GLOBAL	__end_of_Write_digits
	__end_of_Write_digits:
;; =============== function _Write_digits ends ============

	signat	_Write_digits,4216
	global	_Init_lcd
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _Init_lcd *****************
;; Defined at:
;;		line 25 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
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
psect	text235
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	25
	global	__size_of_Init_lcd
	__size_of_Init_lcd	equ	__end_of_Init_lcd-_Init_lcd
	
_Init_lcd:	
	opt	stack 6
; Regs used in _Init_lcd: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l4712:	
;LCD.c: 27: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	28
;LCD.c: 28: PORTD = 0b0010;
	movlw	(02h)
	movwf	(8)	;volatile
	line	29
	
l4714:	
;LCD.c: 29: PORTA = 0x00;
	clrf	(5)	;volatile
	line	30
	
l4716:	
;LCD.c: 30: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	31
	
l4718:	
;LCD.c: 31: PORTD = 0b1000;
	movlw	(08h)
	movwf	(8)	;volatile
	line	32
	
l4720:	
;LCD.c: 32: PORTA = 0x00;
	clrf	(5)	;volatile
	line	33
;LCD.c: 33: _delay(20000);
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

	line	36
;LCD.c: 36: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	37
	
l4722:	
;LCD.c: 37: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	38
	
l4724:	
;LCD.c: 38: PORTA = 0x00;
	clrf	(5)	;volatile
	line	39
;LCD.c: 39: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	40
;LCD.c: 40: PORTD = 0b1111;
	movlw	(0Fh)
	movwf	(8)	;volatile
	line	41
	
l4726:	
;LCD.c: 41: PORTA = 0x00;
	clrf	(5)	;volatile
	line	42
	
l4728:	
;LCD.c: 42: _delay(20000);
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

	line	44
	
l4730:	
;LCD.c: 44: Clear_display();
	fcall	_Clear_display
	line	47
	
l1958:	
	return
	opt stack 0
GLOBAL	__end_of_Init_lcd
	__end_of_Init_lcd:
;; =============== function _Init_lcd ends ============

	signat	_Init_lcd,88
	global	_ADC_Read
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 14 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
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
psect	text236
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
	line	14
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
	opt	stack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0+btemp+1]
;ADC_Read@channel stored from wreg
	movwf	(ADC_Read@channel)
	line	15
	
l4702:	
;ADC.c: 15: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	16
;ADC.c: 16: ADCON0 |= channel<<3;
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
	line	17
	
l4704:	
;ADC.c: 17: _delay((unsigned long)((2)*(4000000/4000.0)));
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

	line	18
	
l4706:	
;ADC.c: 18: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	19
;ADC.c: 19: while(GO_nDONE);
	goto	l1309
	
l1310:	
	
l1309:	
	btfsc	(250/8),(250)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1309
u2520:
	goto	l4708
	
l1311:	
	line	20
	
l4708:	
;ADC.c: 20: return ((ADRESH<<8)+ADRESL);
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
	goto	l1312
	
l4710:	
	line	21
	
l1312:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
;; =============== function _ADC_Read ends ============

	signat	_ADC_Read,4218
	global	_Clear_display
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:

;; *************** function _Clear_display *****************
;; Defined at:
;;		line 13 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
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
psect	text237
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	13
	global	__size_of_Clear_display
	__size_of_Clear_display	equ	__end_of_Clear_display-_Clear_display
	
_Clear_display:	
	opt	stack 7
; Regs used in _Clear_display: [wreg+status,2]
	line	15
	
l4692:	
;LCD.c: 15: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	16
	
l4694:	
;LCD.c: 16: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	17
	
l4696:	
;LCD.c: 17: PORTA = 0x00;
	clrf	(5)	;volatile
	line	18
;LCD.c: 18: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	19
;LCD.c: 19: PORTD = 0b0001;
	movlw	(01h)
	movwf	(8)	;volatile
	line	20
	
l4698:	
;LCD.c: 20: PORTA = 0x00;
	clrf	(5)	;volatile
	line	21
	
l4700:	
;LCD.c: 21: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Clear_display+0)+0+1),f
	movlw	248
movwf	((??_Clear_display+0)+0),f
u2817:
	decfsz	((??_Clear_display+0)+0),f
	goto	u2817
	decfsz	((??_Clear_display+0)+0+1),f
	goto	u2817
	clrwdt
opt asmopt_on

	line	22
	
l1955:	
	return
	opt stack 0
GLOBAL	__end_of_Clear_display
	__end_of_Clear_display:
;; =============== function _Clear_display ends ============

	signat	_Clear_display,88
	global	_Sound
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:

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
psect	text238
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\Sound.c"
	line	6
	global	__size_of_Sound
	__size_of_Sound	equ	__end_of_Sound-_Sound
	
_Sound:	
	opt	stack 7
; Regs used in _Sound: [wreg+status,2+btemp+1]
	line	8
	
l4684:	
;Sound.c: 8: int i = 0;
	clrf	(Sound@i)
	clrf	(Sound@i+1)
	line	11
;Sound.c: 11: while(i < 20)
	goto	l4690
	
l2641:	
	line	14
;Sound.c: 12: {
;Sound.c: 14: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	17
	
l4686:	
;Sound.c: 17: _delay(6000);
	opt asmopt_off
movlw	8
movwf	((??_Sound+0)+0+1),f
	movlw	201
movwf	((??_Sound+0)+0),f
u2827:
	decfsz	((??_Sound+0)+0),f
	goto	u2827
	decfsz	((??_Sound+0)+0+1),f
	goto	u2827
	nop2
opt asmopt_on

	line	19
	
l4688:	
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
	goto	l4690
	line	21
	
l2640:	
	line	11
	
l4690:	
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
	goto	l2641
u2500:
	goto	l2643
	
l2642:	
	line	22
	
l2643:	
	return
	opt stack 0
GLOBAL	__end_of_Sound
	__end_of_Sound:
;; =============== function _Sound ends ============

	signat	_Sound,88
	global	_Write_data
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function _Write_data *****************
;; Defined at:
;;		line 52 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
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
psect	text239
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.c"
	line	52
	global	__size_of_Write_data
	__size_of_Write_data	equ	__end_of_Write_data-_Write_data
	
_Write_data:	
	opt	stack 5
; Regs used in _Write_data: [wreg]
;Write_data@hb stored from wreg
	movwf	(Write_data@hb)
	line	53
	
l4682:	
;LCD.c: 53: PORTA = 0xA;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	54
;LCD.c: 54: PORTD = hb;
	movf	(Write_data@hb),w
	movwf	(8)	;volatile
	line	55
;LCD.c: 55: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	57
;LCD.c: 57: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	58
;LCD.c: 58: PORTD = lb;
	movf	(Write_data@lb),w
	movwf	(8)	;volatile
	line	59
;LCD.c: 59: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	61
;LCD.c: 61: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_Write_data+0)+0+1),f
	movlw	248
movwf	((??_Write_data+0)+0),f
u2837:
	decfsz	((??_Write_data+0)+0),f
	goto	u2837
	decfsz	((??_Write_data+0)+0+1),f
	goto	u2837
	clrwdt
opt asmopt_on

	line	62
	
l1961:	
	return
	opt stack 0
GLOBAL	__end_of_Write_data
	__end_of_Write_data:
;; =============== function _Write_data ends ============

	signat	_Write_data,8312
	global	_ADC_Init
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:

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
psect	text240
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.c"
	line	7
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg]
	line	8
	
l4680:	
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
	
l1306:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
