BITS 32

extern printf

section .rodata
    hello_world: db "Namah Shivaya!", 10, 0

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        push hello_world
        call printf
        add esp, 4

        mov eax, 0
        mov esp, ebp
        pop ebp
        ret
