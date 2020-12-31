;/usr/local/bin/nasm -f macho64 64.asm && ld -macosx_version_min 10.7.0  -no_pie -lSystem -o 64 64.o && ./64
;
global start
section .text
start:
    mov     rax, 0x2000004  
    mov     rdi, 1 ; stdout
    mov     rsi, msg
    mov     rdx, 13 
    syscall
    mov     rax, 0x2000001  
    mov     rdi, 0
    syscall
section .data
   msg db "hello, world",10
