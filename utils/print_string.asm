print_string:
    pusha
    mov ah, 0x0e

    compare:
        cmp byte [bx], 0
        je end_w

    mov al, [bx]
    int 0x10
    add bx, 1
    jmp compare

    end_w:
        popa
        ret