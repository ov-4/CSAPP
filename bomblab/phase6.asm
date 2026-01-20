# OBJDUMP

# phase_6(char *input)
# %r12d = %index
# %rbx = %j

  4010f4:	push   %r14
  4010f6:	push   %r13
  4010f8:	push   %r12
  4010fa:	push   %rbp
  4010fb:	push   %rbx
  4010fc:	sub    $0x50,%rsp
  401100:	mov    %rsp,%r13                  # r13 = rsp
  401103:	mov    %rsp,%rsi
  401106:	call   40145c <read_six_numbers>

  # {step 1}
  # FOR initialization
  40110b:	mov    %rsp,%r14
  40110e:	mov    $0x0,%index              # index = 0

  # FOR loop 
  # inside this loop, always (rbp == r13), step +4, from stack top to last
  # rbp = r13 = [rsp, rsp+4n]
  # rsp is constant
  401114:	mov    %r13,%rbp
  401117:	mov    0x0(%r13),%eax           # rax = *rsp

  # if (1 <= rax <= 6) safe (for each element)
  40111b:	sub    $0x1,%eax
  40111e:	cmp    $0x5,%eax
  401121:	jbe    401128 <phase_6+0x34>
  401123:	call   40143a <explode_bomb>


  401128:	add    $0x1,%index              # index++, index=[1, 5], rbp = 4*[0, 5]
  40112c:	cmp    $0x6,%index
  401130:	je     401153 <phase_6+0x5f>    # if (index == 6) break


  # smaller loop j=[index, 5]
  401132:	mov    %index,%j

  401135:	movslq %j,%rax                  # rax = j
  401138:	mov    (%rsp,%rax,4),%eax       # rax = *(rsp + 4*j) --- array[j]
  40113b:	cmp    %eax,0x0(%rbp)
  40113e:	jne    401145 <phase_6+0x51>    # if (rax == a[j]) die
  401140:	call   40143a <explode_bomb>

  # if (j>=5) break
  401145:	add    $0x1,%j                  # else j++
  401148:	cmp    $0x5,%j
  40114b:	jle    401135 <phase_6+0x41>   
  # end smaller loop


  40114d:	add    $0x4,%r13                # r13 += 4, rbp +=4
                                          # move to next int element
  401151:	jmp    401114 <phase_6+0x20>



  # {step 2}
  # FOR loop
  # rsp is constant
  # old: x
  # new: 7-x
  401153:	lea    0x18(%rsp),%rsi          # rsi = rsp + 24 (end of 6 elements)
  401158:	mov    %r14,%rax                # rax = rsp
  40115b:	mov    $0x7,%ecx                # rcx = 7

  401160:	mov    %ecx,%edx                # rdx = 7
  401162:	sub    (%rax),%edx              # rdx -= *rax
  401164:	mov    %edx,(%rax)              # *rax = rdx
  401166:	add    $0x4,%rax                # rax += 4 move to next element
  40116a:	cmp    %rsi,%rax
  40116d:	jne    401160 <phase_6+0x6c>    # if (rax == rsi) break



  # {step 3}
  # DO WHILE loop
  # %rsi = %bias 
  # actual [0, 20], 6 elements

  # %rcx = %coded
  40116f:	mov    $0x0,%bias
  401174:	jmp    401197 <phase_6+0xa3>

  # --- WHILE ---
  # only exit : 401195:	je     4011ab <phase_6+0xb7>

  # smaller loop
  # initialization: j = 1
  # %rax = %j
  401176:	mov    0x8(%rdx),%rdx         # rdx: get the pointer of next node, always pointer
  40117a:	add    $0x1,%j                # j++
  40117d:	cmp    %coded,%j
  40117f:	jne    401176 <phase_6+0x82>  # if (j == coded) break
  # end smaller loop
  # rdx = &(coded-th node)

  401181:	jmp    401188 <phase_6+0x94>


  # smaller loop (only exit)
  # tip: coded inputs are stored in [rsp, rsp+20]
  # while (coded != 1)

  401183:	mov    $0x6032d0,%edx

  401188:	mov    %rdx,0x20(%rsp,%bias,2)  # *(rsp + 2*bias + 32) = &(coded-th node)
                                          # 从rsp+32开始，间隔8 bytes存入第coded个的指针
  40118d:	add    $0x4,%bias               # move to next element
  401191:	cmp    $0x18,%bias

  401195:	je     4011ab <phase_6+0xb7>    # if (bias == 24) 全部都存完了
                                          # break large loop


  # move to next coded input
  401197:	mov    (%rsp,%bias,1),%coded    # coded = *(rsp + bias) first to last element
  40119a:	cmp    $0x1,%coded
  40119d:	jle    401183 <phase_6+0x8f>    # if (coded > 1) break
  # end smaller loop


  40119f:	mov    $0x1,%eax                # rax = 1
  4011a4:	mov    $0x6032d0,%edx           # rdx = 0x6032d0
  4011a9:	jmp    401176 <phase_6+0x82>
  # --- end WHILE ---





  # {step 4}

  # 0x20 = decimal 32
  # 0x50 = decimal 80
  # %rsi = %rightBoundPP (constant)
  # %rbx = %firstP
  # %rax = %secondPP

  # P = pointer
  # PP = pointer to pointer

  4011ab:	mov    0x20(%rsp),%firstP     # firstP = pointer to actual node
  4011b0:	lea    0x28(%rsp),%secondPP   # secondPP = pointer to pointer of second node
  4011b5:	lea    0x50(%rsp),%rightBoundPP
  4011ba:	mov    %firstNum,%rcx         # rcx = firstP

  # loop
  # update `next` field
  4011bd:	mov    (%secondPP),%rdx
  4011c0:	mov    %rdx,0x8(%rcx)           # *(rcx+8) = secondP
                                          # next node's address (next) part
  4011c4:	add    $0x8,%secondPP           # move to next "second"

  4011c8:	cmp    %rightBound,%secondPP
  4011cb:	je     4011d2 <phase_6+0xde>  # if (secondPP > boundPP) break
                                        # else:
  4011cd:	mov    %rdx,%rcx              # rcx = pointer to second node (secondP)
                                        # (rcx +=8)
  4011d0:	jmp    4011bd <phase_6+0xc9>  

  4011d2:	movq   $0x0,0x8(%rdx)         # for the last node
                                        # it doesn't point to any further nodes


  # {step 5}

  4011da:	mov    $0x5,%ebp                # rbp = 5

  # loop
  # %rbx = firstP (initially)
  4011df:	mov    0x8(%rbx),%rax           # rax = rbx.next
  4011e3:	mov    (%rax),%eax              # rax = *(rax.next) (rax now stores the next's number field)
                                          # (ie. rax = rax -> num)
  4011e5:	cmp    %eax,(%rbx)
  4011e7:	jge    4011ee <phase_6+0xfa>    # if (rbx->num >= rax) safe

  4011e9:	call   40143a <explode_bomb>
  4011ee:	mov    0x8(%rbx),%rbx
  4011f2:	sub    $0x1,%ebp
  4011f5:	jne    4011df <phase_6+0xeb>






  4011f7:	add    $0x50,%rsp
  4011fb:	pop    %rbx
  4011fc:	pop    %rbp
  4011fd:	pop    %r12
  4011ff:	pop    %r13
  401201:	pop    %r14
  401203:	ret
