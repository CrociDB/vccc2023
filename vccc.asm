    org 0x7c00

start:
    push cs
    push cs
    pop ds
    pop ss

    ; Set 80-25 text mode
    mov ax, 0x0002
    int 0x10

    mov ax, 0xb800                  ; Segment for the video data
    mov es, ax

    cld

    mov di, 00                      ; Adds offset to DI
    mov ax, 0x0f2a                  ; Copies the char to AX
    stosw

    times 510-($-$$) db 0x4f
    db 0x55, 0xaa                   ; bootable signature 
