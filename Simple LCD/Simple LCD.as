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
	FNROOT	_main
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA4
_RA4	set	44
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
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

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	2
	global	main@charWritten
main@charWritten:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0      30
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "C:\Users\Mads\Desktop\MPLAB Projects\PIC16F877\Simple LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  charWritten     2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Mads\Desktop\MPLAB Projects\PIC16F877\Simple LCD\main.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	14
	
l2513:	
;main.c: 14: TRISB = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	15
	
l2515:	
;main.c: 15: PORTB = 0x9;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	18
	
l2517:	
;main.c: 18: TRISA = 0b00010000;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	21
;main.c: 21: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	25
	
l2519:	
;main.c: 25: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	26
	
l2521:	
;main.c: 26: PORTD = 0b0010;
	movlw	(02h)
	movwf	(8)	;volatile
	line	27
;main.c: 27: PORTA = 0x00;
	clrf	(5)	;volatile
	line	28
	
l2523:	
;main.c: 28: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	29
	
l2525:	
;main.c: 29: PORTD = 0b1000;
	movlw	(08h)
	movwf	(8)	;volatile
	line	30
;main.c: 30: PORTA = 0x00;
	clrf	(5)	;volatile
	line	31
	
l2527:	
;main.c: 31: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u2267:
	decfsz	((??_main+0)+0),f
	goto	u2267
	decfsz	((??_main+0)+0+1),f
	goto	u2267
	clrwdt
opt asmopt_on

	line	34
	
l2529:	
;main.c: 34: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	35
;main.c: 35: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	36
;main.c: 36: PORTA = 0x00;
	clrf	(5)	;volatile
	line	37
	
l2531:	
;main.c: 37: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	38
	
l2533:	
;main.c: 38: PORTD = 0b1111;
	movlw	(0Fh)
	movwf	(8)	;volatile
	line	39
;main.c: 39: PORTA = 0x00;
	clrf	(5)	;volatile
	line	40
	
l2535:	
;main.c: 40: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u2277:
	decfsz	((??_main+0)+0),f
	goto	u2277
	decfsz	((??_main+0)+0+1),f
	goto	u2277
	clrwdt
opt asmopt_on

	line	43
	
l2537:	
;main.c: 43: PORTA = 0x2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	44
	
l2539:	
;main.c: 44: PORTD = 0b1000;
	movlw	(08h)
	movwf	(8)	;volatile
	line	45
	
l2541:	
;main.c: 45: PORTA = 0x00;
	clrf	(5)	;volatile
	line	46
;main.c: 46: PORTA = 0x2;
	movlw	(02h)
	movwf	(5)	;volatile
	line	47
	
l2543:	
;main.c: 47: PORTD = 0b0000;
	clrf	(8)	;volatile
	line	48
	
l2545:	
;main.c: 48: PORTA = 0x00;
	clrf	(5)	;volatile
	line	49
;main.c: 49: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	52
;main.c: 52: PORTA = 0xA;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	53
;main.c: 53: PORTD = 0b0100;
	movlw	(04h)
	movwf	(8)	;volatile
	line	54
;main.c: 54: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	56
;main.c: 56: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	57
;main.c: 57: PORTD = 0b0001;
	movlw	(01h)
	movwf	(8)	;volatile
	line	58
;main.c: 58: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	60
;main.c: 60: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u2297:
	decfsz	((??_main+0)+0),f
	goto	u2297
	decfsz	((??_main+0)+0+1),f
	goto	u2297
	clrwdt
opt asmopt_on

	line	63
	
l2547:	
;main.c: 63: int charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l2549
	line	65
;main.c: 65: while(1)
	
l643:	
	line	67
	
l2549:	
;main.c: 66: {
;main.c: 67: if(RA4 == 0 && charWritten == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l644
u2220:
	
l2551:	
	movf	((main@charWritten+1)),w
	iorwf	((main@charWritten)),w
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l644
u2230:
	line	69
	
l2553:	
;main.c: 68: {
;main.c: 69: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	70
;main.c: 70: PORTD = 0b0100;
	movlw	(04h)
	movwf	(8)	;volatile
	line	71
;main.c: 71: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	73
;main.c: 73: PORTA = 0xA;
	movlw	(0Ah)
	movwf	(5)	;volatile
	line	74
;main.c: 74: PORTD = 0b0001;
	movlw	(01h)
	movwf	(8)	;volatile
	line	75
;main.c: 75: PORTA = 0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	77
;main.c: 77: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	clrwdt
opt asmopt_on

	line	79
;main.c: 79: charWritten = 1;
	movlw	low(01h)
	movwf	(main@charWritten)
	movlw	high(01h)
	movwf	((main@charWritten))+1
	line	80
	
l644:	
	line	82
;main.c: 80: }
;main.c: 82: if(charWritten == 1 && RA4 == 1)
	movlw	01h
	xorwf	(main@charWritten),w
	iorwf	(main@charWritten+1),w
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2549
u2240:
	
l2555:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2549
u2250:
	line	84
	
l2557:	
;main.c: 83: {
;main.c: 84: charWritten = 0;
	clrf	(main@charWritten)
	clrf	(main@charWritten+1)
	goto	l2549
	line	85
	
l645:	
	goto	l2549
	line	86
	
l646:	
	line	65
	goto	l2549
	
l647:	
	line	87
	
l648:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
