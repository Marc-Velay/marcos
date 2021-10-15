;
; A simple boot sector program that demonstrates addressing.
;

    [org 0x7c00]
    mov bp, 0x8000
    mov sp, bp

    mov bx, HELLO_MSG
    call print_string

    mov bx, BYE_MSG
    call print_string

    
    jmp $                   ; Jump forever.

%include "utils/print_string.asm"

HELLO_MSG :
    db "Booting OS", 0

BYE_MSG :
    db "GoodBye!", 0

; Padding and magic BIOS number.
times 510-($-$$ ) db 0
dw 0xaa55