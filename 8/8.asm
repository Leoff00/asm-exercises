; ex8: creata a routine that reads a file and print in stdout
BITS 64;

section .data
  file db 'foo.txt', 0 ; null-term string
  writein db `\tbar\n` ; char to be write in file foo
  len equ $-writein

section .text
  global _start
  _start:

    ; open syscall
    mov rax, 2 ; syscall to open
    mov rdi, file ; pointer to name of the file (bytes)
    mov rsi, 0x401 ; flag mode to open file
    mov rdx, 0o777; permission mode 
    syscall ; call

    mov r8, rax ; copy the fd returned to r8
    
    ; write syscall
    mov rax, 1 ; syscall to write
    mov rdi, r8 ; put the stdout
    mov rsi, writein ; buffer to be written
    mov rdx, len ; length of buffer
    syscall ; call
    
    ;close 
    mov rax, 3 ; syscall to close file
    mov rdi, r8 ; file descriptor to close
    syscall ; call

    ;exit syscall
    mov rax, 60 ; write code exit 
    xor rdi, rdi ; write status code to exit
    syscall ; call
