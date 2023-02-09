; init
BSF 03h, 5 ; 1
MOVLW 0x00 ; 1
MOVWF 86h ; 1
BCF 03h, 5 ; 1

Start:
BSF 06h, 0 ; 1
Call delay ; 2 + 768 = 770usec
BCF 06h, 0 ; 1
Call delay ; 1
    goto Start ; 2

delay:
MOVLW 0xFF ; 1 x 1
MOVWF 0Ch ; 1 x 1
    yey:
    DECFSZ 0Ch, 1 ; 1 x 255
    goto yey_2 ; loop ; 2 x 254
    return ; (2+1) x 1
yey_2:
MOVLW 0xFF
MOVWF 0Eh
    yey_3:
    DECFSZ 0Eh, 1
    goto yey_3
    goto yey


