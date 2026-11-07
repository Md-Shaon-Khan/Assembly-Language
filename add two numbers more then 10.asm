.MODEL SMALL
.STACK 100H

.DATA
    A DB 7
    B DB 8
    SUM DB ?

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV AL, A
    ADD AL, B
    MOV SUM, AL

    ; Print tens digit
    MOV AH, 0
    MOV AL, SUM
    MOV BL, 10
    DIV BL

    MOV BH, AH

    ADD AL, 30H
    MOV DL, AL
    MOV AH, 2
    INT 21H

    ; Print units digit
    MOV DL, BH
    ADD DL, 30H
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN