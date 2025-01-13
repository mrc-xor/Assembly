section .data
  msg db "Hello World",0x0a,0x0d
section .text
  global _start
  extern printf
_start:
  mov rdi,msg
  call printf
exit:
  mov rax,60
  xor rdi,rdi
  syscall
