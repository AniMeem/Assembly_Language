
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
a db ?
b db ?

msg1 db 'THE SUM OF $'
msg2 db ' AND $'
msg3 db ' IS $'

.code
main proc
     
     mov ax,@data
     mov ds, ax
     
     mov bl,'?'
     mov ah,2
     mov dl,bl
     int 21h
     
     mov ah,1
     int 21h
     mov a,al
     
     mov ah,1
     int 21h
     mov b,al
     
     mov bl,a
     add bl,b  
     sub bl,48d
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     lea dx,msg1
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl,a
     int 21h
     
     lea dx,msg2
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl,b
     int 21h
     
     lea dx,msg3
     mov ah,9
     int 21h     
     
     mov ah,2
     mov dl,bl
     int 21h    
     
     mov ah,4ch
     int 21h
     main endp
end main

ret




