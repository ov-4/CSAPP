0000000000401242 <secret_phase>:
  401242:	push   %rbx
  401243:	call   40149e <read_line>             # returns char*
  401248:	mov    $0xa,%edx                      # rdx = 10
  40124d:	mov    $0x0,%esi                      # rsi = 0
  401252:	mov    %rax,%rdi                      # rdi = char* (return value of read_line)
  401255:	call   400bd0 <strtol@plt>            # convert input to long, store in rax
  40125a:	mov    %rax,%rbx                      # rbx = long number
  40125d:	lea    -0x1(%rax),%eax                # rax--
  401260:	cmp    $0x3e8,%eax
  401265:	jbe    40126c <secret_phase+0x2a>     # if (rax <= 1000) safe
  401267:	call   40143a <explode_bomb>

  40126c:	mov    %ebx,%esi                      # rsi = rbx
  40126e:	mov    $0x6030f0,%edi                 # rdi = an address (36)
  401273:	call   401204 <fun7>
  401278:	cmp    $0x2,%eax                      # return 2, safe
  40127b:	je     401282 <secret_phase+0x40>
  40127d:	call   40143a <explode_bomb>
  401282:	mov    $0x402438,%edi
  401287:	call   400b10 <puts@plt>
  40128c:	call   4015c4 <phase_defused>
  401291:	pop    %rbx
  401292:	ret


# fun7(long *x, long y)
0000000000401204 <fun7>:
  401204:	sub    $0x8,%rsp
  401208:	test   %rdi,%rdi
  40120b:	je     401238 <fun7+0x34>     # never


  40120d:	mov    (%rdi),%edx            # rdx = *x
  40120f:	cmp    %esi,%edx
  401211:	jle    401220 <fun7+0x1c>     # if (*x <= y) ret

  401213:	mov    0x8(%rdi),%rdi         # rdi = *(rdi+8)
  401217:	call   401204 <fun7>
  40121c:	add    %eax,%eax              # rax *= 2
  40121e:	jmp    40123d <fun7+0x39>

  401220:	mov    $0x0,%eax              # rax = 0
  401225:	cmp    %esi,%edx
  401227:	je     40123d <fun7+0x39>     # if (*x == y) ret
  401229:	mov    0x10(%rdi),%rdi        # rdi = *(rdi+16)
  40122d:	call   401204 <fun7>
  401232:	lea    0x1(%rax,%rax,1),%eax  # rax = 2*rax + 1
  401236:	jmp    40123d <fun7+0x39>
  401238:	mov    $0xffffffff,%eax


  40123d:	add    $0x8,%rsp
  401241:	ret
