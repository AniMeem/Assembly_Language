
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0AH,0DH, 'SIMPLE MESSAGE$'

.CODE

MAIN PROC  
    MOV AL,'A'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'N'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'I'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'K'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'A'
    MOV AH,2
    MOV DL,AL
    INT 21H  
    
    MOV AL,' '
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'A'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'N'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'J'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'U'
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AL,'M'
    MOV AH,2
    MOV DL,AL
    INT 21H

    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

ret




