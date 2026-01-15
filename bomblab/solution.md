

`set disassembly-flavor att` nano ~/.gdbinit

`b phase_1` 设置断点

`x/s` 访问内存 string

`si` 步入

`ni` 步过

`x/6dw $rsp`

- /6 6个单位
- d 十进制
- w 4字节

`x/8a`

- a 作为地址（0x+偏移量）

`x/5i`

- i 作为指令


`checkpoint`: 创建当前时刻的快照。

`info checkpoints`: 查看所有已创建的快照。

`restart <id>`: 回滚（恢复）到指定的快照 ID。

`delete checkpoint <id>`: 删除快照。


# Phase 1

直接在寄存器里面找字符串

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
```



# Phase 2

`ni` 单步步过

随便输入一些根本不可能是答案的数字

遇到了不跳转，然后下面就是bomb的

答案肯定在cmp的其中一个操作数里面


# Phase 3

%esi对应的是格式字符

0x4025cf:       "%d %d"

需要输入2个整数

```asm
  400f51:	be cf 25 40 00       	mov    $0x4025cf,%esi
  400f56:	b8 00 00 00 00       	mov    $0x0,%eax
  400f5b:	e8 90 fc ff ff       	call   400bf0 <__isoc99_sscanf@plt>
```
```c
int sscanf(const char *str, const char *format, ...);
```

之后找到cmp，答案就在寄存器里面


## Solution

Border relations with Canada have never been better.

1 2 4 8 16 32

7 327