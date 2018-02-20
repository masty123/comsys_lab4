global add

add:
  push rbp
  mov rbp, rsp
  mov QWORD WORD [rbp-24], rdi
  mov DWORD WORD [rbp-28], esi
  mov DWORD WORD [rbp-8], 0
  mov DWORD WORD [rbp-4], 0
.L3:
  mov eax, DWORD WORD [rbp-4]
  cmp eax, DWORD WORD [rbp-28]
  jge .L2
  mov eax, DWORD WORD [rbp-4]
  cdqe
  lea rdx, [0+rax*4]
  mov rax, QWORD WORD [rbp-24]
  add rax, rdx
  mov edx, DWORD WORD [rax]
  mov eax, DWORD WORD [rbp-8]
  add eax, edx
  mov DWORD WORD [rbp-8], eax
  add DWORD WORD [rbp-4], 1
  jmp .L3
.L2:
  mov eax, DWORD WORD [rbp-8]
  pop rbp
  ret
