; ex2: write a program to print a hello world in terminal

BITS 64;
  section .data 
	global msg ; let the pointer msg of a string global
	msg db `hello\n`; declare bytes (str)
	len equ $ - msg ; measure dinamically the length of byte (str)

  section .text
  global _start
  _start:
    mov rax, 1 ; syscall num to write
    mov rdi, 1 ; put the stdout
    mov rsi, msg ; store the pointer to message
    mov rdx, len ; store the len of string
    syscall ; call

    mov rax, 60 ; write code exit
    mov rdi, 0 ; write status code to exit
    syscall ; call