.MODEL SMALL
.STACK 100H

.DATA
  NUM DB ?
 
.CODE  

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    
    SUB AL, 30H
    
    MOV NUM, AL
    
    MOV AH, 2
    MOV DL, 0DH
    
    MOV DL, 0AH
    INT 21H
    
    MOV DL, NUM
    ADD DL, 30H
    
    
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
            
            
MAIN ENDP
END MAIN