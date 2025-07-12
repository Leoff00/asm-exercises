; ex1: write a program to only terminate 
; with the exit 1

BITS 64;


section .text
global _start
_start:
  mov rax, 60 ; write code exit
  mov rdi, 0 ; the status code to exit
  syscall ; call the syscall