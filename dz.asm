use16
org 100h

    mov ah, [e]
    inc ah
    mov al, [k]
    dec al
    sub al, [m]
    sub ah, al
    mov [y], ah

    mov ax, 4C00h
    int 21h

e db 5
k db 3
m db 1
y db ?
