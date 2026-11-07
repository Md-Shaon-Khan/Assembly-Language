.MODEL SMALL
.STACK 100H

.DATA
   MSG DB 'Result: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, 7FH
    INC AL
    
    MOV AH, 09H
    LEA DX, MSG
    INT 21H
    
    MOV DL, '8'
    MOV AH, 02H
    INT 21H
    
    MOV DL, '0'
    MOV AH, 02H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN