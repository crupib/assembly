; Define variables in the data section
section .data
	msg     db 'Hello world!',10,0
section .bss
; Code goes in the text section
section .text
	GLOBAL _start 
_start:
	mov rax,1            ; 'write' system call = 4
        mov rdi,1
	mov rsi,msg            ; file descriptor 1 = STDOUT
	mov rdx,13     ; length of string to write
        syscall
        mov rax,60
        mov rdi,0
        syscall
