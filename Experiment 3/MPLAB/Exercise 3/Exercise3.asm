; init
BSF 03h, 5
MOVLW 0x00
MOVWF 86h ; Set all pin as outputs
BCF 03h, 5
goto START

; subroutine - Count Up
count_up:
CALL ZERO
CALL delay
CALL ONE
CALL delay
CALL TWO
CALL delay
CALL THREE
CALL delay
CALL FOUR
CALL delay
CALL FIVE
CALL delay
CALL SIX
CALL delay
CALL SEVEN
CALL delay
CALL EIGHT
CALL delay
CALL NINE
CALL delay
CALL A
CALL delay
CALL Bseg
CALL delay
CALL C
CALL delay
CALL D
CALL delay
CALL E
CALL delay
CALL F
CALL delay
return

; subroutine - Count Down
count_down:
CALL F
CALL delay
CALL E
CALL delay
CALL D
CALL delay
CALL C
CALL delay
CALL Bseg
CALL delay
CALL A
CALL delay
CALL NINE
CALL delay
CALL EIGHT
CALL delay
CALL SEVEN
CALL delay
CALL SIX
CALL delay
CALL FIVE
CALL delay
CALL FOUR
CALL delay
CALL THREE
CALL delay
CALL TWO
CALL delay
CALL ONE
CALL delay
CALL ZERO
CALL delay
return

; subroutine - Delay 1 second
delay:
MOVLW 0xFF
MOVWF 0Ch
    loop_1:
    DECFSZ 0Ch, 1
    goto loop_2
    return
    loop_2:
        MOVLW 0x82
        MOVWF 0Dh
            loop_3:
            DECFSZ 0Dh, 1
            goto loop_3
            goto loop_1

 ; Outputs
ZERO:
MOVLW 0x3F
MOVWF 06h
return

ONE:
MOVLW 0x06
MOVWF 06h
return

TWO:
MOVLW 0x5B
MOVWF 06h
return

THREE:
MOVLW 0x4F
MOVWF 06h
return

FOUR:
MOVLW 0x66
MOVWF 06h
return

FIVE:
MOVLW 0x6D
MOVWF 06h
return

SIX:
MOVLW 0x7D
MOVWF 06h
return

SEVEN:
MOVLW 0x07
MOVWF 06h
return

EIGHT:
MOVLW 0x7F
MOVWF 06h
return

NINE:
MOVLW 0x6F
MOVWF 06h
return

A:
MOVLW 0x77
MOVWF 06h
return

Bseg:
MOVLW 0x7C
MOVWF 06h
return

C:
MOVLW 0x39
MOVWF 06h
return

D:
MOVLW 0x5E
MOVWF 06h
return

E:
MOVLW 0x79
MOVWF 06h
return

F:
MOVLW 0x71
MOVWF 06h
return

; main
START:
CALL count_up
CALL count_down

END