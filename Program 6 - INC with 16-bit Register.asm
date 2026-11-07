.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 'Result: $'

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 1234H
    INC AX

    MOV AH, 09H
    LEA DX, MSG
    INT 21H

    MOV DL, '1'
    MOV AH, 02H
    INT 21H

    MOV DL, '2'
    INT 21H

    MOV DL, '3'
    INT 21H

    MOV DL, '5'
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN