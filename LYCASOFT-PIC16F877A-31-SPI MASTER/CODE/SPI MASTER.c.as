opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 2 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_SPI_String
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNCALL	_SPI_String,_SPI_Send_Data
	FNROOT	_main
	global	_PORTC
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
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
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
STR_2	equ	STR_1+0
	file	"SPI MASTER.c.as"
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
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_SPI_Send_Data
?_SPI_Send_Data:	; 0 bytes @ 0x0
	global	??_SPI_Send_Data
??_SPI_Send_Data:	; 0 bytes @ 0x0
	global	?_SPI_String
?_SPI_String:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	SPI_Send_Data@x
SPI_Send_Data@x:	; 1 bytes @ 0x0
	ds	1
	global	??_SPI_String
??_SPI_String:	; 0 bytes @ 0x1
	ds	1
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	global	SPI_String@Str
SPI_String@Str:	; 1 bytes @ 0x3
	ds	1
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 10, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; SPI_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_2(CODE[10]), 
;;
;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_String
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;   _SPI_String->_SPI_Send_Data
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     165
;;                  _Lcd_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                         _SPI_String
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _SPI_String                                           3     3      0      45
;;                                              1 COMMON     3     3      0
;;                      _SPI_Send_Data
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _SPI_Send_Data                                        1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _SPI_String
;;     _SPI_Send_Data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\SPI MASTER.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_SPI_String
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\SPI MASTER.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l2684:	
;SPI MASTER.c: 22: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	23
;SPI MASTER.c: 23: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	24
	
l2686:	
;SPI MASTER.c: 24: TRISC=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	25
	
l2688:	
;SPI MASTER.c: 25: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	27
	
l2690:	
;SPI MASTER.c: 27: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	29
	
l2692:	
;SPI MASTER.c: 29: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	30
	
l2694:	
;SPI MASTER.c: 30: SSPCON=0X20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	32
	
l2696:	
;SPI MASTER.c: 32: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	33
	
l2698:	
;SPI MASTER.c: 33: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l2700
	line	35
;SPI MASTER.c: 35: while(1)
	
l714:	
	line	37
	
l2700:	
;SPI MASTER.c: 36: {
;SPI MASTER.c: 37: SPI_String("LYCA SOFT");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_SPI_String
	goto	l2700
	line	38
	
l715:	
	line	35
	goto	l2700
	
l716:	
	line	39
	
l717:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd_Intialization
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 49 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text119
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
	line	49
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l2682:	
;LCD 4 BIT.h: 50: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	51
;LCD 4 BIT.h: 51: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	52
;LCD 4 BIT.h: 52: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	53
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 41 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
	line	41
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	42
	
l2674:	
;LCD 4 BIT.h: 42: while(*Str != 0)
	goto	l2680
	
l694:	
	line	44
	
l2676:	
;LCD 4 BIT.h: 43: {
;LCD 4 BIT.h: 44: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2678:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2680
	line	45
	
l693:	
	line	42
	
l2680:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2676
u2260:
	goto	l696
	
l695:	
	line	46
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_SPI_String
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _SPI_String *****************
;; Defined at:
;;		line 12 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\SPI MASTER.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_2(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    3[COMMON] PTR const unsigned char 
;;		 -> STR_2(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SPI_Send_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\SPI MASTER.c"
	line	12
	global	__size_of_SPI_String
	__size_of_SPI_String	equ	__end_of_SPI_String-_SPI_String
	
_SPI_String:	
	opt	stack 6
; Regs used in _SPI_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SPI_String@Str stored from wreg
	movwf	(SPI_String@Str)
	line	13
	
l2664:	
;SPI MASTER.c: 13: while(*Str != 0)
	goto	l2672
	
l709:	
	line	15
	
l2666:	
;SPI MASTER.c: 14: {
;SPI MASTER.c: 15: SPI_Send_Data(*Str++);
	movf	(SPI_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_SPI_Send_Data
	
l2668:	
	movlw	(01h)
	movwf	(??_SPI_String+0)+0
	movf	(??_SPI_String+0)+0,w
	addwf	(SPI_String@Str),f
	line	16
	
l2670:	
;SPI MASTER.c: 16: _delay((unsigned long)((15)*(20e6/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_SPI_String+0)+0+1),f
	movlw	101
movwf	((??_SPI_String+0)+0),f
u2277:
	decfsz	((??_SPI_String+0)+0),f
	goto	u2277
	decfsz	((??_SPI_String+0)+0+1),f
	goto	u2277
	nop2
opt asmopt_on

	goto	l2672
	line	17
	
l708:	
	line	13
	
l2672:	
	movf	(SPI_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2666
u2250:
	goto	l711
	
l710:	
	line	18
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_String
	__end_of_SPI_String:
;; =============== function _SPI_String ends ============

	signat	_SPI_String,4216
	global	_Lcd_Data
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 26 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
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
;;		_Lcd_String
;; This function uses a non-reentrant model
;;
psect	text122
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
	line	26
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 6
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	27
	
l2644:	
;LCD 4 BIT.h: 27: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	28
	
l2646:	
;LCD 4 BIT.h: 28: RD2 = 1;
	bsf	(66/8),(66)&7
	line	29
	
l2648:	
;LCD 4 BIT.h: 29: RD3 = 1;
	bsf	(67/8),(67)&7
	line	30
	
l2650:	
;LCD 4 BIT.h: 30: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2287:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2287
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	31
	
l2652:	
;LCD 4 BIT.h: 31: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	33
	
l2654:	
;LCD 4 BIT.h: 33: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2245:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2245
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	34
	
l2656:	
;LCD 4 BIT.h: 34: RD2 = 1;
	bsf	(66/8),(66)&7
	line	35
	
l2658:	
;LCD 4 BIT.h: 35: RD3 = 1;
	bsf	(67/8),(67)&7
	line	36
	
l2660:	
;LCD 4 BIT.h: 36: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2297:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2297
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2297
	clrwdt
opt asmopt_on

	line	37
	
l2662:	
;LCD 4 BIT.h: 37: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	38
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 11 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
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
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text123
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\LCD 4 BIT.h"
	line	11
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	12
	
l2624:	
;LCD 4 BIT.h: 12: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l2626:	
;LCD 4 BIT.h: 13: RD2 = 0;
	bcf	(66/8),(66)&7
	line	14
	
l2628:	
;LCD 4 BIT.h: 14: RD3 = 1;
	bsf	(67/8),(67)&7
	line	15
	
l2630:	
;LCD 4 BIT.h: 15: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2307:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2307
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2307
	clrwdt
opt asmopt_on

	line	16
	
l2632:	
;LCD 4 BIT.h: 16: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	18
	
l2634:	
;LCD 4 BIT.h: 18: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	19
	
l2636:	
;LCD 4 BIT.h: 19: RD2 = 0;
	bcf	(66/8),(66)&7
	line	20
	
l2638:	
;LCD 4 BIT.h: 20: RD3 = 1;
	bsf	(67/8),(67)&7
	line	21
	
l2640:	
;LCD 4 BIT.h: 21: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2317:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2317
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2317
	clrwdt
opt asmopt_on

	line	22
	
l2642:	
;LCD 4 BIT.h: 22: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	23
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	_SPI_Send_Data
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:

;; *************** function _SPI_Send_Data *****************
;; Defined at:
;;		line 6 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\SPI MASTER.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPI_String
;; This function uses a non-reentrant model
;;
psect	text124
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\31-SPI MASTER\CODE\SPI MASTER.c"
	line	6
	global	__size_of_SPI_Send_Data
	__size_of_SPI_Send_Data	equ	__end_of_SPI_Send_Data-_SPI_Send_Data
	
_SPI_Send_Data:	
	opt	stack 6
; Regs used in _SPI_Send_Data: [wreg]
;SPI_Send_Data@x stored from wreg
	movwf	(SPI_Send_Data@x)
	line	7
	
l1764:	
;SPI MASTER.c: 7: SSPBUF = x;
	movf	(SPI_Send_Data@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	8
;SPI MASTER.c: 8: while(!SSPIF);
	goto	l702
	
l703:	
	
l702:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l702
u10:
	goto	l705
	
l704:	
	line	9
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Send_Data
	__end_of_SPI_Send_Data:
;; =============== function _SPI_Send_Data ends ============

	signat	_SPI_Send_Data,4216
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
