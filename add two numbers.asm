.MODEL SMALL
.STACK 100H

.DATA 
   A DB 5
   B DB 3
   SUM DB ?
   
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, A
    ADD AL, B
    
    MOV SUM, AL
    
    ADD AL, 30H
    MOV DL, AL
    
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN