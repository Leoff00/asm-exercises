; ex7: accumulate multiply with loop
BITS 64;

section .text
  global _start
  _start:
  mov rax, 5 ; add 5 to register 1
  mov r9, 1 ; add 1 to accumulator

  .loop:
    imul r9, rax ; multiply accumulator by register 
    dec rax ; decrementing register
    cmp rax, 0 ; compare value in register with zero
    jne .loop ; jump to 1st instruction if not equal to zero

    ; factorial of rax is in r9

    mov rax, 60 ; write code exit 
    mov rdi, 0 ; write status code to exit
    syscall ; call

