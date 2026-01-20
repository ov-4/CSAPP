# OBJDUMP

# phase_5(char* input)
# %index = %rax
# %input = %rdi

# FOR loop, index = [0, 6)
  40108b:	0f b6 0c 03          	movzbl (%rbx,%index,1),%ecx     # rcx = *(input + index), get each input char
  40108f:	88 0c 24             	mov    %cl,(%rsp)               # stacktop = rcx
  401092:	48 8b 14 24          	mov    (%rsp),%rdx              # rdx = stacktop = rcx
  401096:	83 e2 0f             	and    $0xf,%edx                # rdx = stacktop & 0xF
  401099:	0f b6 92 b0 24 40 00 	movzbl 0x4024b0(%rdx),%edx      # rdx = *(0x4024b0 + rdx), get lower 4 bits

                                                                # rdx = *[*(input+index) & 0xF + 0x4024b0]
                                                                # find 0x4024b0 + bias

  4010a0:	88 54 04 10          	mov    %dl,0x10(%rsp,%index,1)  # *(rsp+index+10) = rdx (the correspoding data)
  4010a4:	48 83 c0 01          	add    $0x1,%index              # index++
  4010a8:	48 83 f8 06          	cmp    $0x6,%index              # if (index == 6) break
  4010ac:	75 dd                	jne    40108b <phase_5+0x29>
                                                                # rsp+(10 to 15) are where passwords are saved, on stack


  4010ae:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)          # \0
  4010b3:	be 5e 24 40 00       	mov    $0x40245e,%esi
  4010b8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi          # compare (coded input) against ($0x40245e)
  4010bd:	e8 76 02 00 00       	call   401338 <strings_not_equal>
  4010c2:	85 c0                	test   %index,%index
  4010c4:	74 13                	je     4010d9 <phase_5+0x77>
