

# Phase 1

`b phase_1` 设置断点

`x/s` 访问内存

```asm
0000000000400ee0 <phase_1>:
  400ee0:	48 83 ec 08          	sub    $0x8,%rsp                        # 栈对齐
  400ee4:	be 00 24 40 00       	mov    $0x402400,%esi                   # %edi存储的是phase_1被调用的参数，%esi就是存储第二个比较的参数
  400ee9:	e8 4a 04 00 00       	call   401338 <strings_not_equal>
  400eee:	85 c0                	test   %eax,%eax                        # 检测返回值是不是0
  400ef0:	74 05                	je     400ef7 <phase_1+0x17>            # 如果返回值是0
  400ef2:	e8 43 05 00 00       	call   40143a <explode_bomb>
  400ef7:	48 83 c4 08          	add    $0x8,%rsp                        # 恢复rsp
  400efb:	c3                   	ret
```e




## Solution

Border relations with Canada have never been better.

