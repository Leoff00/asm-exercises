; ex3: write a program to print the sum of 2 numbers in terminal
; too advanced!

BITS 64;


section .bss
  buffer resb 20 ; reserved 20 bytes to store the converted number

section .text
  global _start
  _start: 

    mov rax, 10 ; load the number 10 in reg1
    mov rbx, 5 ; load the number 5 in reg2
    add rax, rbx ; sum these 2 values in register
    
    mov rcx, 10
    lea rsi, [buffer + 19]
    

    .loop:
      xor rdx, rdx ; clear rdx before division
      div rcx ; moving the value to be divised
      add dl, '0' ; convert digit to ascii
      mov [rsi], dl ; store digit in the buffer
      dec rsi ; walk backward in the buffer
      cmp rax, 0
      jne .loop ; repeat the loop until 10
      inc rsi ; adjust rsi to the start of the string

      mov rdx, buffer + 20 ; measure the buffer size of string to print
      sub rdx, rsi ; subtrate the of string

      mov rax, 1 ; syscall to write
      mov rdi, 1 ; put in the stdout 
      syscall  ; call

      mov rax, 60 ; write code exit 
      mov rdi, 0 ; write status code to exit
      syscall ; call

    