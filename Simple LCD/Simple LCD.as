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
	FNCALL	_main,_init_lcd
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_write_data
	FNCALL	_main,_sound
	FNCALL	_main,_clear_display
	FNCALL	_main,_ADC_Read
	FNCALL	_main,_write_voltage
	FNCALL	_write_voltage,_write_data
	FNCALL	_write_voltage,_write_digits
	FNCALL	_write_digits,_write_data
	FNCALL	_init_lcd,_clear_display
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
	global	?_sound
?_sound:	; 0 bytes @ 0x0
	global	??_sound
??_sound:	; 0 bytes @ 0x0
	global	?_clear_display
?_clear_display:	; 0 bytes @ 0x0
	global	??_clear_display
??_clear_display:	; 0 bytes @ 0x0
	global	?_init_lcd
?_init_lcd:	; 0 bytes @ 0x0
	global	?_write_data
?_write_data:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x0
	global	write_data@lb
write_data@lb:	; 1 bytes @ 0x0
	ds	1
	global	??_write_data
??_write_data:	; 0 bytes @ 0x1
	ds	1
	global	??_init_lcd
??_init_lcd:	; 0 bytes @ 0x2
	global	??_ADC_Read
??_ADC_Read:	; 0 bytes @ 0x2
	global	sound@i
sound@i:	; 2 bytes @ 0x2
	ds	1
	global	write_data@hb
write_data@hb:	; 1 bytes @ 0x3
	ds	1
	global	?_write_digits
?_write_digits:	; 0 bytes @ 0x4
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x4
	global	write_digits@adc_measurement
write_digits@adc_measurement:	; 2 bytes @ 0x4
	ds	2
	global	??_write_digits
??_write_digits:	; 0 bytes @ 0x6
	ds	1
	global	?_write_voltage
?_write_voltage:	; 0 bytes @ 0x7
	global	write_voltage@adc_measurement
write_voltage@adc_measurement:	; 2 bytes @ 0x7
	ds	2
	global	??_write_voltage
??_write_voltage:	; 0 bytes @ 0x9
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
;;   _main->_write_voltage
;;   _write_voltage->_write_digits
;;   _write_digits->_write_data
;;   _init_lcd->_clear_display
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
;;                           _init_lcd
;;                           _ADC_Init
;;                         _write_data
;;                              _sound
;;                      _clear_display
;;                           _ADC_Read
;;                      _write_voltage
;; ---------------------------------------------------------------------------------
;; (1) _write_voltage                                        3     1      2     638
;;                                              7 COMMON     3     1      2
;;                         _write_data
;;                       _write_digits
;; ---------------------------------------------------------------------------------
;; (2) _write_digits                                         3     1      2     264
;;                                              4 COMMON     3     1      2
;;                         _write_data
;; ---------------------------------------------------------------------------------
;; (1) _init_lcd                                             2     2      0       0
;;                                              2 COMMON     2     2      0
;;                      _clear_display
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Read                                             5     3      2      22
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (3) _write_data                                           4     3      1      44
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) _clear_display                                        2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _sound                                                4     4      0      24
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_lcd
;;     _clear_display
;;   _ADC_Init
;;   _write_data
;;   _sound
;;   _clear_display
;;   _ADC_Read
;;   _write_voltage
;;     _write_data
;;     _write_digits
;;       _write_data
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
;;		_init_lcd
;;		_ADC_Init
;;		_write_data
;;		_sound
;;		_clear_display
;;		_ADC_Read
;;		_write_voltage
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
	
l2882:	
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
	
l2884:	
;main.c: 20: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	21
	
l2886:	
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
	
l2888:	
;main.c: 27: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	30
	
l2890:	
;main.c: 30: init_lcd();
	fcall	_init_lcd
	line	33
	
l2892:	
;main.c: 33: ADC_Init();
	fcall	_ADC_Init
	line	40
	
l2894:	
;main.c: 40: int charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l2896
	line	41
;main.c: 41: while(1)
	
l705:	
	line	44
	
l2896:	
;main.c: 42: {
;main.c: 44: if(RA4 == 0 && charWritten == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l2906
u2730:
	
l2898:	
	movf	((main@charWritten+1)),w
	iorwf	((main@charWritten)),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2906
u2740:
	line	46
	
l2900:	
;main.c: 45: {
;main.c: 46: write_data(0b0100, 0b0011);
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(04h)
	fcall	_write_data
	line	47
	
l2902:	
;main.c: 47: sound();
	fcall	_sound
	line	48
	
l2904:	
;main.c: 48: charWritten = 1;
	movlw	low(01h)
	movwf	(main@charWritten)
	movlw	high(01h)
	movwf	((main@charWritten))+1
	goto	l2906
	line	49
	
l706:	
	line	51
	
l2906:	
;main.c: 49: }
;main.c: 51: if(charWritten == 1 && RA4 == 1)
	movlw	01h
	xorwf	(main@charWritten),w
	iorwf	(main@charWritten+1),w
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l2912
u2750:
	
l2908:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2912
u2760:
	line	53
	
l2910:	
;main.c: 52: {
;main.c: 53: charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l2912
	line	54
	
l707:	
	line	57
	
l2912:	
;main.c: 54: }
;main.c: 57: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2896
u2770:
	line	59
	
l2914:	
;main.c: 58: {
;main.c: 59: clear_display();
	fcall	_clear_display
	line	60
;main.c: 60: write_data(0b0101, 0b0110);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(05h)
	fcall	_write_data
	line	61
;main.c: 61: write_data(0b0100, 0b1111);
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(04h)
	fcall	_write_data
	line	62
;main.c: 62: write_data(0b0100, 0b1100);
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(04h)
	fcall	_write_data
	line	63
;main.c: 63: write_data(0b0101, 0b0100);
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(05h)
	fcall	_write_data
	line	64
;main.c: 64: write_data(0b0100, 0b0001);
	clrf	(?_write_data)
	bsf	status,0
	rlf	(?_write_data),f
	movlw	(04h)
	fcall	_write_data
	line	65
;main.c: 65: write_data(0b0100, 0b0111);
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(04h)
	fcall	_write_data
	line	66
;main.c: 66: write_data(0b0100, 0b0101);
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(04h)
	fcall	_write_data
	line	67
;main.c: 67: write_data(0b0011, 0b1101);
	movlw	(0Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	69
	
l2916:	
;main.c: 69: a = ADC_Read(0);
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

	line	71
	
l2918:	
;main.c: 71: write_voltage(a);
	movf	(_a+1),w
	clrf	(?_write_voltage+1)
	addwf	(?_write_voltage+1)
	movf	(_a),w
	clrf	(?_write_voltage)
	addwf	(?_write_voltage)

	fcall	_write_voltage
	goto	l2896
	line	72
	
l708:	
	goto	l2896
	line	74
	
l709:	
	line	41
	goto	l2896
	
l710:	
	line	88
	
l711:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_write_voltage
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function _write_voltage *****************
;; Defined at:
;;		line 108 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
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
;;		_write_data
;;		_write_digits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text233
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
	line	108
	global	__size_of_write_voltage
	__size_of_write_voltage	equ	__end_of_write_voltage-_write_voltage
	
_write_voltage:	
	opt	stack 5
; Regs used in _write_voltage: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	111
	
l2840:	
;LCD.h: 111: if(adc_measurement < 200)
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2635
	movlw	low(0C8h)
	subwf	(write_voltage@adc_measurement),w
u2635:

	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l2846
u2630:
	line	113
	
l2842:	
;LCD.h: 112: {
;LCD.h: 113: write_data(0b0011,0b0000);
	clrf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	114
	
l2844:	
;LCD.h: 114: write_digits(adc_measurement);
	movf	(write_voltage@adc_measurement+1),w
	clrf	(?_write_digits+1)
	addwf	(?_write_digits+1)
	movf	(write_voltage@adc_measurement),w
	clrf	(?_write_digits)
	addwf	(?_write_digits)

	fcall	_write_digits
	line	115
;LCD.h: 115: }
	goto	l693
	line	116
	
l682:	
	
l2846:	
;LCD.h: 116: else if(adc_measurement > 200 && adc_measurement < 400)
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(0C9h)
	subwf	(write_voltage@adc_measurement),w
u2645:

	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2854
u2640:
	
l2848:	
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0190h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2655
	movlw	low(0190h)
	subwf	(write_voltage@adc_measurement),w
u2655:

	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l2854
u2650:
	line	118
	
l2850:	
;LCD.h: 117: {
;LCD.h: 118: write_data(0b0011,0b0001);
	clrf	(?_write_data)
	bsf	status,0
	rlf	(?_write_data),f
	movlw	(03h)
	fcall	_write_data
	line	119
	
l2852:	
;LCD.h: 119: write_digits((adc_measurement-200));
	movf	(write_voltage@adc_measurement),w
	addlw	low(-200)
	movwf	(?_write_digits)
	movf	(write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-200)
	movwf	1+(?_write_digits)
	fcall	_write_digits
	line	120
;LCD.h: 120: }
	goto	l693
	line	121
	
l684:	
	
l2854:	
;LCD.h: 121: else if(adc_measurement > 400 && adc_measurement < 600)
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0191h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2665
	movlw	low(0191h)
	subwf	(write_voltage@adc_measurement),w
u2665:

	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2862
u2660:
	
l2856:	
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0258h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2675
	movlw	low(0258h)
	subwf	(write_voltage@adc_measurement),w
u2675:

	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l2862
u2670:
	line	123
	
l2858:	
;LCD.h: 122: {
;LCD.h: 123: write_data(0b0011,0b0010);
	movlw	(02h)
	movwf	(??_write_voltage+0)+0
	movf	(??_write_voltage+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	124
	
l2860:	
;LCD.h: 124: write_digits((adc_measurement-400));
	movf	(write_voltage@adc_measurement),w
	addlw	low(-400)
	movwf	(?_write_digits)
	movf	(write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-400)
	movwf	1+(?_write_digits)
	fcall	_write_digits
	line	125
;LCD.h: 125: }
	goto	l693
	line	126
	
l686:	
	
l2862:	
;LCD.h: 126: else if(adc_measurement > 600 && adc_measurement < 800)
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0259h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2685
	movlw	low(0259h)
	subwf	(write_voltage@adc_measurement),w
u2685:

	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2870
u2680:
	
l2864:	
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0320h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2695
	movlw	low(0320h)
	subwf	(write_voltage@adc_measurement),w
u2695:

	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l2870
u2690:
	line	128
	
l2866:	
;LCD.h: 127: {
;LCD.h: 128: write_data(0b0011,0b0011);
	movlw	(03h)
	movwf	(??_write_voltage+0)+0
	movf	(??_write_voltage+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	129
	
l2868:	
;LCD.h: 129: write_digits((adc_measurement-600));
	movf	(write_voltage@adc_measurement),w
	addlw	low(-600)
	movwf	(?_write_digits)
	movf	(write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-600)
	movwf	1+(?_write_digits)
	fcall	_write_digits
	line	130
;LCD.h: 130: }
	goto	l693
	line	131
	
l688:	
	
l2870:	
;LCD.h: 131: else if(adc_measurement > 800 & adc_measurement < 1000)
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0321h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2705
	movlw	low(0321h)
	subwf	(write_voltage@adc_measurement),w
u2705:

	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l2878
u2700:
	
l2872:	
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2715
	movlw	low(03E8h)
	subwf	(write_voltage@adc_measurement),w
u2715:

	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l2878
u2710:
	line	133
	
l2874:	
;LCD.h: 132: {
;LCD.h: 133: write_data(0b0011,0b0100);
	movlw	(04h)
	movwf	(??_write_voltage+0)+0
	movf	(??_write_voltage+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	134
	
l2876:	
;LCD.h: 134: write_digits((adc_measurement-800));
	movf	(write_voltage@adc_measurement),w
	addlw	low(-800)
	movwf	(?_write_digits)
	movf	(write_voltage@adc_measurement+1),w
	skipnc
	addlw	1
	addlw	high(-800)
	movwf	1+(?_write_digits)
	fcall	_write_digits
	line	135
;LCD.h: 135: }
	goto	l693
	line	136
	
l690:	
	
l2878:	
;LCD.h: 136: else if(adc_measurement > 1000)
	movf	(write_voltage@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2725
	movlw	low(03E9h)
	subwf	(write_voltage@adc_measurement),w
u2725:

	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l693
u2720:
	line	138
	
l2880:	
;LCD.h: 137: {
;LCD.h: 138: write_data(0b0011,0b0101);
	movlw	(05h)
	movwf	(??_write_voltage+0)+0
	movf	(??_write_voltage+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	goto	l693
	line	139
	
l692:	
	goto	l693
	line	140
	
l691:	
	goto	l693
	
l689:	
	goto	l693
	
l687:	
	goto	l693
	
l685:	
	goto	l693
	
l683:	
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_write_voltage
	__end_of_write_voltage:
;; =============== function _write_voltage ends ============

	signat	_write_voltage,4216
	global	_write_digits
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _write_digits *****************
;; Defined at:
;;		line 62 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
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
;;		_write_data
;; This function is called by:
;;		_write_voltage
;; This function uses a non-reentrant model
;;
psect	text234
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
	line	62
	global	__size_of_write_digits
	__size_of_write_digits	equ	__end_of_write_digits-_write_digits
	
_write_digits:	
	opt	stack 5
; Regs used in _write_digits: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l2800:	
;LCD.h: 63: write_data(0b0010,0b1100);
	movlw	(0Ch)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(02h)
	fcall	_write_data
	line	65
	
l2802:	
;LCD.h: 65: if(adc_measurement > 180)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0B5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2535
	movlw	low(0B5h)
	subwf	(write_digits@adc_measurement),w
u2535:

	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l2806
u2530:
	line	67
	
l2804:	
;LCD.h: 66: {
;LCD.h: 67: write_data(0b0011, 0b1001);
	movlw	(09h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	68
;LCD.h: 68: }
	goto	l679
	line	69
	
l660:	
	
l2806:	
;LCD.h: 69: else if(adc_measurement > 160)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0A1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(0A1h)
	subwf	(write_digits@adc_measurement),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l2810
u2540:
	line	71
	
l2808:	
;LCD.h: 70: {
;LCD.h: 71: write_data(0b0011, 0b1000);
	movlw	(08h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	72
;LCD.h: 72: }
	goto	l679
	line	73
	
l662:	
	
l2810:	
;LCD.h: 73: else if(adc_measurement > 140)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2555
	movlw	low(08Dh)
	subwf	(write_digits@adc_measurement),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2814
u2550:
	line	75
	
l2812:	
;LCD.h: 74: {
;LCD.h: 75: write_data(0b0011, 0b0111);
	movlw	(07h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	76
;LCD.h: 76: }
	goto	l679
	line	77
	
l664:	
	
l2814:	
;LCD.h: 77: else if(adc_measurement > 120)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(079h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2565
	movlw	low(079h)
	subwf	(write_digits@adc_measurement),w
u2565:

	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l2818
u2560:
	line	79
	
l2816:	
;LCD.h: 78: {
;LCD.h: 79: write_data(0b0011, 0b0110);
	movlw	(06h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	80
;LCD.h: 80: }
	goto	l679
	line	81
	
l666:	
	
l2818:	
;LCD.h: 81: else if(adc_measurement > 100)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(065h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2575
	movlw	low(065h)
	subwf	(write_digits@adc_measurement),w
u2575:

	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2822
u2570:
	line	83
	
l2820:	
;LCD.h: 82: {
;LCD.h: 83: write_data(0b0011, 0b0101);
	movlw	(05h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	84
;LCD.h: 84: }
	goto	l679
	line	85
	
l668:	
	
l2822:	
;LCD.h: 85: else if(adc_measurement > 80)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(051h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2585
	movlw	low(051h)
	subwf	(write_digits@adc_measurement),w
u2585:

	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2826
u2580:
	line	87
	
l2824:	
;LCD.h: 86: {
;LCD.h: 87: write_data(0b0011, 0b0100);
	movlw	(04h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	88
;LCD.h: 88: }
	goto	l679
	line	89
	
l670:	
	
l2826:	
;LCD.h: 89: else if(adc_measurement > 60)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2595
	movlw	low(03Dh)
	subwf	(write_digits@adc_measurement),w
u2595:

	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2830
u2590:
	line	91
	
l2828:	
;LCD.h: 90: {
;LCD.h: 91: write_data(0b0011, 0b0011);
	movlw	(03h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	92
;LCD.h: 92: }
	goto	l679
	line	93
	
l672:	
	
l2830:	
;LCD.h: 93: else if(adc_measurement > 40)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(029h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2605
	movlw	low(029h)
	subwf	(write_digits@adc_measurement),w
u2605:

	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l2834
u2600:
	line	95
	
l2832:	
;LCD.h: 94: {
;LCD.h: 95: write_data(0b0011, 0b0010);
	movlw	(02h)
	movwf	(??_write_digits+0)+0
	movf	(??_write_digits+0)+0,w
	movwf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	line	96
;LCD.h: 96: }
	goto	l679
	line	97
	
l674:	
	
l2834:	
;LCD.h: 97: else if(adc_measurement > 20)
	movf	(write_digits@adc_measurement+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2615
	movlw	low(015h)
	subwf	(write_digits@adc_measurement),w
u2615:

	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l676
u2610:
	line	99
	
l2836:	
;LCD.h: 98: {
;LCD.h: 99: write_data(0b0011, 0b0001);
	clrf	(?_write_data)
	bsf	status,0
	rlf	(?_write_data),f
	movlw	(03h)
	fcall	_write_data
	line	100
;LCD.h: 100: }
	goto	l679
	line	101
	
l676:	
;LCD.h: 101: else if(adc_measurement >= 0)
	btfsc	(write_digits@adc_measurement+1),7
	goto	u2621
	goto	u2620
u2621:
	goto	l679
u2620:
	line	103
	
l2838:	
;LCD.h: 102: {
;LCD.h: 103: write_data(0b0011, 0b0000);
	clrf	(?_write_data)
	movlw	(03h)
	fcall	_write_data
	goto	l679
	line	104
	
l678:	
	goto	l679
	line	105
	
l677:	
	goto	l679
	
l675:	
	goto	l679
	
l673:	
	goto	l679
	
l671:	
	goto	l679
	
l669:	
	goto	l679
	
l667:	
	goto	l679
	
l665:	
	goto	l679
	
l663:	
	goto	l679
	
l661:	
	
l679:	
	return
	opt stack 0
GLOBAL	__end_of_write_digits
	__end_of_write_digits:
;; =============== function _write_digits ends ============

	signat	_write_digits,4216
	global	_init_lcd
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _init_lcd *****************
;; Defined at:
;;		line 23 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
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
;;		_clear_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text235
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
	line	23
	global	__size_of_init_lcd
	__size_of_init_lcd	equ	__end_of_init_lcd-_init_lcd
	
_init_lcd:	
	opt	stack 6
; Regs used in _init_lcd: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2780:	
;LCD.h: 25: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	26
;LCD.h: 26: PORTD = 0b0010;
	movlw	(02h)
	movwf	(8)	;volatile
	line	27
	
l2782:	
;LCD.h: 27: PORTA = 0x00;
	clrf	(5)	;volatile
	line	28
	
l2784:	
;LCD.h: 28: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	29
	
l2786:	
;LCD.h: 29: PORTD = 0b1000;
	movlw	(08h)
	movwf	(8)	;volatile
	line	30
	
l2788:	
;LCD.h: 30: PORTA = 0x00;
	clrf	(5)	;volatile
	line	31
;LCD.h: 31: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_init_lcd+0)+0+1),f
	movlw	248
movwf	((??_init_lcd+0)+0),f
u2787:
	decfsz	((??_init_lcd+0)+0),f
	goto	u2787
	decfsz	((??_init_lcd+0)+0+1),f
	goto	u2787
	clrwdt
opt asmopt_on

	line	34
;LCD.h: 34: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	35
	
l2790:	
;LCD.h: 35: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	36
	
l2792:	
;LCD.h: 36: PORTA = 0x00;
	clrf	(5)	;volatile
	line	37
;LCD.h: 37: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	38
;LCD.h: 38: PORTD = 0b1111;
	movlw	(0Fh)
	movwf	(8)	;volatile
	line	39
	
l2794:	
;LCD.h: 39: PORTA = 0x00;
	clrf	(5)	;volatile
	line	40
	
l2796:	
;LCD.h: 40: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_init_lcd+0)+0+1),f
	movlw	248
movwf	((??_init_lcd+0)+0),f
u2797:
	decfsz	((??_init_lcd+0)+0),f
	goto	u2797
	decfsz	((??_init_lcd+0)+0+1),f
	goto	u2797
	clrwdt
opt asmopt_on

	line	42
	
l2798:	
;LCD.h: 42: clear_display();
	fcall	_clear_display
	line	45
	
l654:	
	return
	opt stack 0
GLOBAL	__end_of_init_lcd
	__end_of_init_lcd:
;; =============== function _init_lcd ends ============

	signat	_init_lcd,88
	global	_ADC_Read
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 13 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.h"
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
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.h"
	line	13
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
	opt	stack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0+btemp+1]
;ADC_Read@channel stored from wreg
	movwf	(ADC_Read@channel)
	line	14
	
l2770:	
;ADC.h: 14: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	15
;ADC.h: 15: ADCON0 |= channel<<3;
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
	line	16
	
l2772:	
;ADC.h: 16: _delay((unsigned long)((2)*(10/4000.0)));
	
	line	17
	
l2774:	
;ADC.h: 17: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	18
;ADC.h: 18: while(GO_nDONE);
	goto	l699
	
l700:	
	
l699:	
	btfsc	(250/8),(250)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l699
u2520:
	goto	l2776
	
l701:	
	line	19
	
l2776:	
;ADC.h: 19: return ((ADRESH<<8)+ADRESL);
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
	goto	l702
	
l2778:	
	line	20
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
;; =============== function _ADC_Read ends ============

	signat	_ADC_Read,4218
	global	_write_data
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:

;; *************** function _write_data *****************
;; Defined at:
;;		line 50 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
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
;;		_write_digits
;;		_write_voltage
;;		_main
;; This function uses a non-reentrant model
;;
psect	text237
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
	line	50
	global	__size_of_write_data
	__size_of_write_data	equ	__end_of_write_data-_write_data
	
_write_data:	
	opt	stack 5
; Regs used in _write_data: [wreg]
;write_data@hb stored from wreg
	movwf	(write_data@hb)
	line	51
	
l2768:	
;LCD.h: 51: PORTA = 0xA;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	52
;LCD.h: 52: PORTD = hb;
	movf	(write_data@hb),w
	movwf	(8)	;volatile
	line	53
;LCD.h: 53: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	55
;LCD.h: 55: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	56
;LCD.h: 56: PORTD = lb;
	movf	(write_data@lb),w
	movwf	(8)	;volatile
	line	57
;LCD.h: 57: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	59
;LCD.h: 59: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_write_data+0)+0+1),f
	movlw	248
movwf	((??_write_data+0)+0),f
u2807:
	decfsz	((??_write_data+0)+0),f
	goto	u2807
	decfsz	((??_write_data+0)+0+1),f
	goto	u2807
	clrwdt
opt asmopt_on

	line	60
	
l657:	
	return
	opt stack 0
GLOBAL	__end_of_write_data
	__end_of_write_data:
;; =============== function _write_data ends ============

	signat	_write_data,8312
	global	_clear_display
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:

;; *************** function _clear_display *****************
;; Defined at:
;;		line 11 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
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
;;		_init_lcd
;;		_main
;; This function uses a non-reentrant model
;;
psect	text238
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\LCD.h"
	line	11
	global	__size_of_clear_display
	__size_of_clear_display	equ	__end_of_clear_display-_clear_display
	
_clear_display:	
	opt	stack 7
; Regs used in _clear_display: [wreg+status,2]
	line	13
	
l2758:	
;LCD.h: 13: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	14
	
l2760:	
;LCD.h: 14: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	15
	
l2762:	
;LCD.h: 15: PORTA = 0x00;
	clrf	(5)	;volatile
	line	16
;LCD.h: 16: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	17
;LCD.h: 17: PORTD = 0b0001;
	movlw	(01h)
	movwf	(8)	;volatile
	line	18
	
l2764:	
;LCD.h: 18: PORTA = 0x00;
	clrf	(5)	;volatile
	line	19
	
l2766:	
;LCD.h: 19: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_clear_display+0)+0+1),f
	movlw	248
movwf	((??_clear_display+0)+0),f
u2817:
	decfsz	((??_clear_display+0)+0),f
	goto	u2817
	decfsz	((??_clear_display+0)+0+1),f
	goto	u2817
	clrwdt
opt asmopt_on

	line	20
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_clear_display
	__end_of_clear_display:
;; =============== function _clear_display ends ============

	signat	_clear_display,88
	global	_sound
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function _sound *****************
;; Defined at:
;;		line 4 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\sound.h"
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
psect	text239
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\sound.h"
	line	4
	global	__size_of_sound
	__size_of_sound	equ	__end_of_sound-_sound
	
_sound:	
	opt	stack 7
; Regs used in _sound: [wreg+status,2+btemp+1]
	line	6
	
l2750:	
;sound.h: 6: int i = 0;
	clrf	(sound@i)
	clrf	(sound@i+1)
	line	9
;sound.h: 9: while(i < 20)
	goto	l2756
	
l646:	
	line	12
;sound.h: 10: {
;sound.h: 12: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	15
	
l2752:	
;sound.h: 15: _delay(6000);
	opt asmopt_off
movlw	8
movwf	((??_sound+0)+0+1),f
	movlw	201
movwf	((??_sound+0)+0),f
u2827:
	decfsz	((??_sound+0)+0),f
	goto	u2827
	decfsz	((??_sound+0)+0+1),f
	goto	u2827
	nop2
opt asmopt_on

	line	17
	
l2754:	
;sound.h: 17: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	18
;sound.h: 18: i++;
	movlw	low(01h)
	addwf	(sound@i),f
	skipnc
	incf	(sound@i+1),f
	movlw	high(01h)
	addwf	(sound@i+1),f
	goto	l2756
	line	19
	
l645:	
	line	9
	
l2756:	
	movf	(sound@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(014h)
	subwf	(sound@i),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l646
u2500:
	goto	l648
	
l647:	
	line	20
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_sound
	__end_of_sound:
;; =============== function _sound ends ============

	signat	_sound,88
	global	_ADC_Init
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.h"
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
	file	"C:\Users\Mads\Documents\GitHub\MPLAB_LCD_SCHOOL_PROJECT\Simple LCD\ADC.h"
	line	6
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg]
	line	7
	
l2748:	
;ADC.h: 7: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	8
;ADC.h: 8: ADCON1 = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	10
	
l696:	
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
