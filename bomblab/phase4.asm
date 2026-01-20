# OBJDUMP
0000000000400fce <func4>:
  400fce:	48 83 ec 08          	sub    $0x8,%rsp

  400fd2:	89 d0                	mov    %right,%range
  400fd4:	29 f0                	sub    %left,%range
  400fd6:	89 c1                	mov    %range,%mid
  400fd8:	c1 e9 1f             	shr    $0x1f,%mid
  400fdb:	01 c8                	add    %mid,%range
  400fdd:	d1 f8                	sar    $1,%range
  400fdf:	8d 0c 30             	lea    (%range,%left,1),%mid
  400fe2:	39 f9                	cmp    %input,%mid
  # range = right - left
  # mid = left + (range/2)


  400fe4:	7e 0c                	jle    400ff2 <func4+0x24>          # if (mid > input), left part

  # left part
  # [left, mid-1]
  400fe6:	8d 51 ff             	lea    -0x1(%mid),%right            # right = mid - 1
  400fe9:	e8 e0 ff ff ff       	call   400fce <func4>
  400fee:	01 c0                	add    %range,%range                # range = 2 * range
  400ff0:	eb 15                	jmp    401007 <func4+0x39>

  # right part
  # [mid+1, right]
  400ff2:	b8 00 00 00 00       	mov    $0x0,%range
  400ff7:	39 f9                	cmp    %input,%mid
  400ff9:	7d 0c                	jge    401007 <func4+0x39>          # if (mid >= input) ret
  400ffb:	8d 71 01             	lea    0x1(%mid),%left              # left = mid + 1
  400ffe:	e8 cb ff ff ff       	call   400fce <func4>
  401003:	8d 44 00 01          	lea    0x1(%range,%range,1),%range  # range = 2*range + 1

  401007:	48 83 c4 08          	add    $0x8,%rsp
  40100b:	c3                   	ret                                 # ret range (eax)


# all caller saved
# range --- eax
# left --- esi
# right --- edx
# input --- rdi (constant)
