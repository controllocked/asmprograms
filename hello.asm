use16
org 100h

    mov dx,hello
    mov ah, 9
    int 21h

    mov ah, 4Ch
    mov al, 00h
    int 21h
hello db 'Hello, world!$'