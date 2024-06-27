use16
org 100h

    mov al, [a]
    mov ah, [b]
    sub ah, [c]
    inc ah
    neg [d]
    sub al, ah
    add al, [d]
    mov [e], al

    mov ax, 4C00h
    int 21h

a db -8
b db 2
c db 3
d db -8
e db ?
