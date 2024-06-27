use16                 ;Генерировать 16-битный код
org 100h              ;Программа начинается с адреса 100h
 
    mov ax,word[x]
    add ax,word[y]
    mov word[z],ax
 
    mov ax,word[x+2]
    adc ax,word[y+2]
    mov word[z+2],ax
 
    mov ax,word[x+4]
    adc ax,word[y+4]
    mov word[z+4],ax
 
    mov al,byte[x+6]
    adc al,byte[y+6]
    mov byte[z+6],al
 
    mov ax,4C00h      ;\
    int 21h           ;/ Завершение программы
;-------------------------------------------------------
x dd 0xF1111111
  dw 0xF111
  db 0x11
y dd 0x22222222
  dw 0x2222
  db 0x22
z rb 7