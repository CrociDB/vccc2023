    org 0x7c00
start:
    push cs
    push cs
    pop ds
    pop ss
    mov ax, 0x0002
    int 0x10
    mov ax, 0xb800
    mov es, ax
    cld
    mov di, 0x00
    mov bx, 0
    mov cx, 19
_line:
    push cx
    mov cx, 19
    mov ax, -3
_loop:
    cmp ax, 3
    jnz _1
    mov ax, -3
_1:
    cmp ax, bx
    jz _print
    neg ax
    cmp ax, bx
    jz _print_0
    neg ax
    add di, 2  
    inc ax
    loop _loop
    jmp exit_line
_print_0:
    neg ax
_print:
    push ax
    mov ax, 0x0f2a
    stosw
    pop ax
    inc ax
    loop _loop
exit_line:
    inc bx
    cmp bx, 3
    jnz _2
    mov bx, -3
_2:
    add di, 122
    pop cx
    loop _line
    times 510-($-$$) db 0x4f
    db 0x55, 0xaa