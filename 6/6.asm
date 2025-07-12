; ex6: loop count 5 til' 0 with print;
BITS 64;

section .data
  msg db `counting\n`
  len equ $-msg

section .text
  global _start
  _start:
    mov rbx, 5 ; add 5 in the register
    
    .loop:
    mov rax, 1 ; syscall to write
    mov rdi, 1 ; put in the stdout 
    mov rsi, msg ; store the pointer to message
    mov rdx, len ; store the len of string
    syscall  ; call
    dec rbx ; decrement value in the register
    cmp rbx, 0 ; compare value in register with zero
    jne .loop ; jump to 1st instruction if not equal to zero


    mov rax, 60 ; write code exit 
    mov rdi, 0 ; write status code to exit
    syscall ; call

