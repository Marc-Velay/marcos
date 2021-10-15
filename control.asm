;
; A simple boot sector program that demonstrates addressing.
;
    
    mov bx, 40

    cmp bx, 4
    jle first
    cmp bx, 40
    jl second
    mov al, 'C'
    jmp end

    first:
        mov al, 'A'
        jmp end
    second:
        mov al, 'B'
    end:
        mov ah, 0x0e
        int 0x10

    
    jmp $                   ; Jump forever.

the_secret :
    db "Booting OS", 0

; Padding and magic BIOS number.
times 510-($-$$ ) db 0
dw 0xaa55