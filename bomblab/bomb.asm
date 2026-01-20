
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400ac0 <_init>:
  400ac0:	sub    $0x8,%rsp
  400ac4:	call   400cbc <call_gmon_start>
  400ac9:	add    $0x8,%rsp
  400acd:	ret

Disassembly of section .plt:

0000000000400ad0 <.plt>:
  400ad0:	push   0x20251a(%rip)        # 602ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ad6:	jmp    *0x20251c(%rip)        # 602ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400adc:	nopl   0x0(%rax)

0000000000400ae0 <getenv@plt>:
  400ae0:	jmp    *0x20251a(%rip)        # 603000 <getenv@GLIBC_2.2.5>
  400ae6:	push   $0x0
  400aeb:	jmp    400ad0 <.plt>

0000000000400af0 <__errno_location@plt>:
  400af0:	jmp    *0x202512(%rip)        # 603008 <__errno_location@GLIBC_2.2.5>
  400af6:	push   $0x1
  400afb:	jmp    400ad0 <.plt>

0000000000400b00 <strcpy@plt>:
  400b00:	jmp    *0x20250a(%rip)        # 603010 <strcpy@GLIBC_2.2.5>
  400b06:	push   $0x2
  400b0b:	jmp    400ad0 <.plt>

0000000000400b10 <puts@plt>:
  400b10:	jmp    *0x202502(%rip)        # 603018 <puts@GLIBC_2.2.5>
  400b16:	push   $0x3
  400b1b:	jmp    400ad0 <.plt>

0000000000400b20 <write@plt>:
  400b20:	jmp    *0x2024fa(%rip)        # 603020 <write@GLIBC_2.2.5>
  400b26:	push   $0x4
  400b2b:	jmp    400ad0 <.plt>

0000000000400b30 <__stack_chk_fail@plt>:
  400b30:	jmp    *0x2024f2(%rip)        # 603028 <__stack_chk_fail@GLIBC_2.4>
  400b36:	push   $0x5
  400b3b:	jmp    400ad0 <.plt>

0000000000400b40 <alarm@plt>:
  400b40:	jmp    *0x2024ea(%rip)        # 603030 <alarm@GLIBC_2.2.5>
  400b46:	push   $0x6
  400b4b:	jmp    400ad0 <.plt>

0000000000400b50 <close@plt>:
  400b50:	jmp    *0x2024e2(%rip)        # 603038 <close@GLIBC_2.2.5>
  400b56:	push   $0x7
  400b5b:	jmp    400ad0 <.plt>

0000000000400b60 <read@plt>:
  400b60:	jmp    *0x2024da(%rip)        # 603040 <read@GLIBC_2.2.5>
  400b66:	push   $0x8
  400b6b:	jmp    400ad0 <.plt>

0000000000400b70 <__libc_start_main@plt>:
  400b70:	jmp    *0x2024d2(%rip)        # 603048 <__libc_start_main@GLIBC_2.2.5>
  400b76:	push   $0x9
  400b7b:	jmp    400ad0 <.plt>

0000000000400b80 <fgets@plt>:
  400b80:	jmp    *0x2024ca(%rip)        # 603050 <fgets@GLIBC_2.2.5>
  400b86:	push   $0xa
  400b8b:	jmp    400ad0 <.plt>

0000000000400b90 <signal@plt>:
  400b90:	jmp    *0x2024c2(%rip)        # 603058 <signal@GLIBC_2.2.5>
  400b96:	push   $0xb
  400b9b:	jmp    400ad0 <.plt>

0000000000400ba0 <gethostbyname@plt>:
  400ba0:	jmp    *0x2024ba(%rip)        # 603060 <gethostbyname@GLIBC_2.2.5>
  400ba6:	push   $0xc
  400bab:	jmp    400ad0 <.plt>

0000000000400bb0 <__memmove_chk@plt>:
  400bb0:	jmp    *0x2024b2(%rip)        # 603068 <__memmove_chk@GLIBC_2.3.4>
  400bb6:	push   $0xd
  400bbb:	jmp    400ad0 <.plt>

0000000000400bc0 <__memcpy_chk@plt>:
  400bc0:	jmp    *0x2024aa(%rip)        # 603070 <__memcpy_chk@GLIBC_2.3.4>
  400bc6:	push   $0xe
  400bcb:	jmp    400ad0 <.plt>

0000000000400bd0 <strtol@plt>:
  400bd0:	jmp    *0x2024a2(%rip)        # 603078 <strtol@GLIBC_2.2.5>
  400bd6:	push   $0xf
  400bdb:	jmp    400ad0 <.plt>

0000000000400be0 <fflush@plt>:
  400be0:	jmp    *0x20249a(%rip)        # 603080 <fflush@GLIBC_2.2.5>
  400be6:	push   $0x10
  400beb:	jmp    400ad0 <.plt>

0000000000400bf0 <__isoc99_sscanf@plt>:
  400bf0:	jmp    *0x202492(%rip)        # 603088 <__isoc99_sscanf@GLIBC_2.7>
  400bf6:	push   $0x11
  400bfb:	jmp    400ad0 <.plt>

0000000000400c00 <__printf_chk@plt>:
  400c00:	jmp    *0x20248a(%rip)        # 603090 <__printf_chk@GLIBC_2.3.4>
  400c06:	push   $0x12
  400c0b:	jmp    400ad0 <.plt>

0000000000400c10 <fopen@plt>:
  400c10:	jmp    *0x202482(%rip)        # 603098 <fopen@GLIBC_2.2.5>
  400c16:	push   $0x13
  400c1b:	jmp    400ad0 <.plt>

0000000000400c20 <exit@plt>:
  400c20:	jmp    *0x20247a(%rip)        # 6030a0 <exit@GLIBC_2.2.5>
  400c26:	push   $0x14
  400c2b:	jmp    400ad0 <.plt>

0000000000400c30 <connect@plt>:
  400c30:	jmp    *0x202472(%rip)        # 6030a8 <connect@GLIBC_2.2.5>
  400c36:	push   $0x15
  400c3b:	jmp    400ad0 <.plt>

0000000000400c40 <__fprintf_chk@plt>:
  400c40:	jmp    *0x20246a(%rip)        # 6030b0 <__fprintf_chk@GLIBC_2.3.4>
  400c46:	push   $0x16
  400c4b:	jmp    400ad0 <.plt>

0000000000400c50 <sleep@plt>:
  400c50:	jmp    *0x202462(%rip)        # 6030b8 <sleep@GLIBC_2.2.5>
  400c56:	push   $0x17
  400c5b:	jmp    400ad0 <.plt>

0000000000400c60 <__ctype_b_loc@plt>:
  400c60:	jmp    *0x20245a(%rip)        # 6030c0 <__ctype_b_loc@GLIBC_2.3>
  400c66:	push   $0x18
  400c6b:	jmp    400ad0 <.plt>

0000000000400c70 <__sprintf_chk@plt>:
  400c70:	jmp    *0x202452(%rip)        # 6030c8 <__sprintf_chk@GLIBC_2.3.4>
  400c76:	push   $0x19
  400c7b:	jmp    400ad0 <.plt>

0000000000400c80 <socket@plt>:
  400c80:	jmp    *0x20244a(%rip)        # 6030d0 <socket@GLIBC_2.2.5>
  400c86:	push   $0x1a
  400c8b:	jmp    400ad0 <.plt>

Disassembly of section .text:

0000000000400c90 <_start>:
  400c90:	xor    %ebp,%ebp
  400c92:	mov    %rdx,%r9
  400c95:	pop    %rsi
  400c96:	mov    %rsp,%rdx
  400c99:	and    $0xfffffffffffffff0,%rsp
  400c9d:	push   %rax
  400c9e:	push   %rsp
  400c9f:	mov    $0x4022a0,%r8
  400ca6:	mov    $0x402210,%rcx
  400cad:	mov    $0x400da0,%rdi
  400cb4:	call   400b70 <__libc_start_main@plt>
  400cb9:	hlt
  400cba:	nop
  400cbb:	nop

0000000000400cbc <call_gmon_start>:
  400cbc:	sub    $0x8,%rsp
  400cc0:	mov    0x202319(%rip),%rax        # 602fe0 <__gmon_start__>
  400cc7:	test   %rax,%rax
  400cca:	je     400cce <call_gmon_start+0x12>
  400ccc:	call   *%rax
  400cce:	add    $0x8,%rsp
  400cd2:	ret
  400cd3:	nop
  400cd4:	nop
  400cd5:	nop
  400cd6:	nop
  400cd7:	nop
  400cd8:	nop
  400cd9:	nop
  400cda:	nop
  400cdb:	nop
  400cdc:	nop
  400cdd:	nop
  400cde:	nop
  400cdf:	nop

0000000000400ce0 <deregister_tm_clones>:
  400ce0:	mov    $0x603747,%eax
  400ce5:	push   %rbp
  400ce6:	sub    $0x603740,%rax
  400cec:	cmp    $0xe,%rax
  400cf0:	mov    %rsp,%rbp
  400cf3:	ja     400cf7 <deregister_tm_clones+0x17>
  400cf5:	pop    %rbp
  400cf6:	ret
  400cf7:	mov    $0x0,%eax
  400cfc:	test   %rax,%rax
  400cff:	je     400cf5 <deregister_tm_clones+0x15>
  400d01:	pop    %rbp
  400d02:	mov    $0x603740,%edi
  400d07:	jmp    *%rax
  400d09:	nopl   0x0(%rax)

0000000000400d10 <register_tm_clones>:
  400d10:	mov    $0x603740,%eax
  400d15:	push   %rbp
  400d16:	sub    $0x603740,%rax
  400d1c:	sar    $0x3,%rax
  400d20:	mov    %rsp,%rbp
  400d23:	mov    %rax,%rdx
  400d26:	shr    $0x3f,%rdx
  400d2a:	add    %rdx,%rax
  400d2d:	sar    $1,%rax
  400d30:	jne    400d34 <register_tm_clones+0x24>
  400d32:	pop    %rbp
  400d33:	ret
  400d34:	mov    $0x0,%edx
  400d39:	test   %rdx,%rdx
  400d3c:	je     400d32 <register_tm_clones+0x22>
  400d3e:	pop    %rbp
  400d3f:	mov    %rax,%rsi
  400d42:	mov    $0x603740,%edi
  400d47:	jmp    *%rdx
  400d49:	nopl   0x0(%rax)

0000000000400d50 <__do_global_dtors_aux>:
  400d50:	cmpb   $0x0,0x202a01(%rip)        # 603758 <completed.6976>
  400d57:	jne    400d6a <__do_global_dtors_aux+0x1a>
  400d59:	push   %rbp
  400d5a:	mov    %rsp,%rbp
  400d5d:	call   400ce0 <deregister_tm_clones>
  400d62:	pop    %rbp
  400d63:	movb   $0x1,0x2029ee(%rip)        # 603758 <completed.6976>
  400d6a:	repz ret
  400d6c:	nopl   0x0(%rax)

0000000000400d70 <frame_dummy>:
  400d70:	cmpq   $0x0,0x202090(%rip)        # 602e08 <__JCR_END__>
  400d78:	je     400d98 <frame_dummy+0x28>
  400d7a:	mov    $0x0,%eax
  400d7f:	test   %rax,%rax
  400d82:	je     400d98 <frame_dummy+0x28>
  400d84:	push   %rbp
  400d85:	mov    $0x602e08,%edi
  400d8a:	mov    %rsp,%rbp
  400d8d:	call   *%rax
  400d8f:	pop    %rbp
  400d90:	jmp    400d10 <register_tm_clones>
  400d95:	nopl   (%rax)
  400d98:	jmp    400d10 <register_tm_clones>
  400d9d:	nop
  400d9e:	nop
  400d9f:	nop

0000000000400da0 <main>:
  400da0:	push   %rbx
  400da1:	cmp    $0x1,%edi
  400da4:	jne    400db6 <main+0x16>
  400da6:	mov    0x20299b(%rip),%rax        # 603748 <stdin@GLIBC_2.2.5>
  400dad:	mov    %rax,0x2029b4(%rip)        # 603768 <infile>
  400db4:	jmp    400e19 <main+0x79>
  400db6:	mov    %rsi,%rbx
  400db9:	cmp    $0x2,%edi
  400dbc:	jne    400df8 <main+0x58>
  400dbe:	mov    0x8(%rsi),%rdi
  400dc2:	mov    $0x4022b4,%esi
  400dc7:	call   400c10 <fopen@plt>
  400dcc:	mov    %rax,0x202995(%rip)        # 603768 <infile>
  400dd3:	test   %rax,%rax
  400dd6:	jne    400e19 <main+0x79>
#else
  return __vprintf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __ap);
#endif
}

__fortify_function __nonnull ((1)) int
  400dd8:	mov    0x8(%rbx),%rcx
  400ddc:	mov    (%rbx),%rdx
  400ddf:	mov    $0x4022b6,%esi
  400de4:	mov    $0x1,%edi
  400de9:	call   400c00 <__printf_chk@plt>
  400dee:	mov    $0x8,%edi
  400df3:	call   400c20 <exit@plt>
  400df8:	mov    (%rsi),%rdx
  400dfb:	mov    $0x4022d3,%esi
  400e00:	mov    $0x1,%edi
  400e05:	mov    $0x0,%eax
  400e0a:	call   400c00 <__printf_chk@plt>
  400e0f:	mov    $0x8,%edi
  400e14:	call   400c20 <exit@plt>
  400e19:	call   4013a2 <initialize_bomb>
  400e1e:	mov    $0x402338,%edi
  400e23:	call   400b10 <puts@plt>
  400e28:	mov    $0x402378,%edi
  400e2d:	call   400b10 <puts@plt>
  400e32:	call   40149e <read_line>
  400e37:	mov    %rax,%rdi
  400e3a:	call   400ee0 <phase_1>
  400e3f:	call   4015c4 <phase_defused>
  400e44:	mov    $0x4023a8,%edi
  400e49:	call   400b10 <puts@plt>
  400e4e:	call   40149e <read_line>
  400e53:	mov    %rax,%rdi
  400e56:	call   400efc <phase_2>
  400e5b:	call   4015c4 <phase_defused>
  400e60:	mov    $0x4022ed,%edi
  400e65:	call   400b10 <puts@plt>
  400e6a:	call   40149e <read_line>
  400e6f:	mov    %rax,%rdi
  400e72:	call   400f43 <phase_3>
  400e77:	call   4015c4 <phase_defused>
  400e7c:	mov    $0x40230b,%edi
  400e81:	call   400b10 <puts@plt>
  400e86:	call   40149e <read_line>
  400e8b:	mov    %rax,%rdi
  400e8e:	call   40100c <phase_4>
  400e93:	call   4015c4 <phase_defused>
  400e98:	mov    $0x4023d8,%edi
  400e9d:	call   400b10 <puts@plt>
  400ea2:	call   40149e <read_line>
  400ea7:	mov    %rax,%rdi
  400eaa:	call   401062 <phase_5>
  400eaf:	call   4015c4 <phase_defused>
  400eb4:	mov    $0x40231a,%edi
  400eb9:	call   400b10 <puts@plt>
  400ebe:	call   40149e <read_line>
  400ec3:	mov    %rax,%rdi
  400ec6:	call   4010f4 <phase_6>
  400ecb:	call   4015c4 <phase_defused>
  400ed0:	mov    $0x0,%eax
  400ed5:	pop    %rbx
  400ed6:	ret
  400ed7:	nop
  400ed8:	nop
  400ed9:	nop
  400eda:	nop
  400edb:	nop
  400edc:	nop
  400edd:	nop
  400ede:	nop
  400edf:	nop

0000000000400ee0 <phase_1>:
  400ee0:	sub    $0x8,%rsp
  400ee4:	mov    $0x402400,%esi
  400ee9:	call   401338 <strings_not_equal>
  400eee:	test   %eax,%eax
  400ef0:	je     400ef7 <phase_1+0x17>
  400ef2:	call   40143a <explode_bomb>
  400ef7:	add    $0x8,%rsp
  400efb:	ret

0000000000400efc <phase_2>:
  400efc:	push   %rbp
  400efd:	push   %rbx
  400efe:	sub    $0x28,%rsp
  400f02:	mov    %rsp,%rsi
  400f05:	call   40145c <read_six_numbers>
  400f0a:	cmpl   $0x1,(%rsp)
  400f0e:	je     400f30 <phase_2+0x34>
  400f10:	call   40143a <explode_bomb>
  400f15:	jmp    400f30 <phase_2+0x34>
  400f17:	mov    -0x4(%rbx),%eax
  400f1a:	add    %eax,%eax
  400f1c:	cmp    %eax,(%rbx)
  400f1e:	je     400f25 <phase_2+0x29>
  400f20:	call   40143a <explode_bomb>
  400f25:	add    $0x4,%rbx
  400f29:	cmp    %rbp,%rbx
  400f2c:	jne    400f17 <phase_2+0x1b>
  400f2e:	jmp    400f3c <phase_2+0x40>
  400f30:	lea    0x4(%rsp),%rbx
  400f35:	lea    0x18(%rsp),%rbp
  400f3a:	jmp    400f17 <phase_2+0x1b>
  400f3c:	add    $0x28,%rsp
  400f40:	pop    %rbx
  400f41:	pop    %rbp
  400f42:	ret

0000000000400f43 <phase_3>:
  400f43:	sub    $0x18,%rsp
  400f47:	lea    0xc(%rsp),%rcx
  400f4c:	lea    0x8(%rsp),%rdx
  400f51:	mov    $0x4025cf,%esi
  400f56:	mov    $0x0,%eax
  400f5b:	call   400bf0 <__isoc99_sscanf@plt>
  400f60:	cmp    $0x1,%eax
  400f63:	jg     400f6a <phase_3+0x27>
  400f65:	call   40143a <explode_bomb>
  400f6a:	cmpl   $0x7,0x8(%rsp)
  400f6f:	ja     400fad <phase_3+0x6a>
  400f71:	mov    0x8(%rsp),%eax
  400f75:	jmp    *0x402470(,%rax,8)
  400f7c:	mov    $0xcf,%eax
  400f81:	jmp    400fbe <phase_3+0x7b>
  400f83:	mov    $0x2c3,%eax
  400f88:	jmp    400fbe <phase_3+0x7b>
  400f8a:	mov    $0x100,%eax
  400f8f:	jmp    400fbe <phase_3+0x7b>
  400f91:	mov    $0x185,%eax
  400f96:	jmp    400fbe <phase_3+0x7b>
  400f98:	mov    $0xce,%eax
  400f9d:	jmp    400fbe <phase_3+0x7b>
  400f9f:	mov    $0x2aa,%eax
  400fa4:	jmp    400fbe <phase_3+0x7b>
  400fa6:	mov    $0x147,%eax
  400fab:	jmp    400fbe <phase_3+0x7b>
  400fad:	call   40143a <explode_bomb>
  400fb2:	mov    $0x0,%eax
  400fb7:	jmp    400fbe <phase_3+0x7b>
  400fb9:	mov    $0x137,%eax
  400fbe:	cmp    0xc(%rsp),%eax
  400fc2:	je     400fc9 <phase_3+0x86>
  400fc4:	call   40143a <explode_bomb>
  400fc9:	add    $0x18,%rsp
  400fcd:	ret

0000000000400fce <func4>:
  400fce:	sub    $0x8,%rsp
  400fd2:	mov    %edx,%eax
  400fd4:	sub    %esi,%eax
  400fd6:	mov    %eax,%ecx
  400fd8:	shr    $0x1f,%ecx
  400fdb:	add    %ecx,%eax
  400fdd:	sar    $1,%eax
  400fdf:	lea    (%rax,%rsi,1),%ecx
  400fe2:	cmp    %edi,%ecx
  400fe4:	jle    400ff2 <func4+0x24>
  400fe6:	lea    -0x1(%rcx),%edx
  400fe9:	call   400fce <func4>
  400fee:	add    %eax,%eax
  400ff0:	jmp    401007 <func4+0x39>
  400ff2:	mov    $0x0,%eax
  400ff7:	cmp    %edi,%ecx
  400ff9:	jge    401007 <func4+0x39>
  400ffb:	lea    0x1(%rcx),%esi
  400ffe:	call   400fce <func4>
  401003:	lea    0x1(%rax,%rax,1),%eax
  401007:	add    $0x8,%rsp
  40100b:	ret

000000000040100c <phase_4>:
  40100c:	sub    $0x18,%rsp
  401010:	lea    0xc(%rsp),%rcx
  401015:	lea    0x8(%rsp),%rdx
  40101a:	mov    $0x4025cf,%esi
  40101f:	mov    $0x0,%eax
  401024:	call   400bf0 <__isoc99_sscanf@plt>
  401029:	cmp    $0x2,%eax
  40102c:	jne    401035 <phase_4+0x29>
  40102e:	cmpl   $0xe,0x8(%rsp)
  401033:	jbe    40103a <phase_4+0x2e>
  401035:	call   40143a <explode_bomb>
  40103a:	mov    $0xe,%edx
  40103f:	mov    $0x0,%esi
  401044:	mov    0x8(%rsp),%edi
  401048:	call   400fce <func4>
  40104d:	test   %eax,%eax
  40104f:	jne    401058 <phase_4+0x4c>
  401051:	cmpl   $0x0,0xc(%rsp)
  401056:	je     40105d <phase_4+0x51>
  401058:	call   40143a <explode_bomb>
  40105d:	add    $0x18,%rsp
  401061:	ret

0000000000401062 <phase_5>:
  401062:	push   %rbx
  401063:	sub    $0x20,%rsp
  401067:	mov    %rdi,%rbx
  40106a:	mov    %fs:0x28,%rax
  401073:	mov    %rax,0x18(%rsp)
  401078:	xor    %eax,%eax
  40107a:	call   40131b <string_length>
  40107f:	cmp    $0x6,%eax
  401082:	je     4010d2 <phase_5+0x70>
  401084:	call   40143a <explode_bomb>
  401089:	jmp    4010d2 <phase_5+0x70>
  40108b:	movzbl (%rbx,%rax,1),%ecx
  40108f:	mov    %cl,(%rsp)
  401092:	mov    (%rsp),%rdx
  401096:	and    $0xf,%edx
  401099:	movzbl 0x4024b0(%rdx),%edx
  4010a0:	mov    %dl,0x10(%rsp,%rax,1)
  4010a4:	add    $0x1,%rax
  4010a8:	cmp    $0x6,%rax
  4010ac:	jne    40108b <phase_5+0x29>
  4010ae:	movb   $0x0,0x16(%rsp)
  4010b3:	mov    $0x40245e,%esi
  4010b8:	lea    0x10(%rsp),%rdi
  4010bd:	call   401338 <strings_not_equal>
  4010c2:	test   %eax,%eax
  4010c4:	je     4010d9 <phase_5+0x77>
  4010c6:	call   40143a <explode_bomb>
  4010cb:	nopl   0x0(%rax,%rax,1)
  4010d0:	jmp    4010d9 <phase_5+0x77>
  4010d2:	mov    $0x0,%eax
  4010d7:	jmp    40108b <phase_5+0x29>
  4010d9:	mov    0x18(%rsp),%rax
  4010de:	xor    %fs:0x28,%rax
  4010e7:	je     4010ee <phase_5+0x8c>
  4010e9:	call   400b30 <__stack_chk_fail@plt>
  4010ee:	add    $0x20,%rsp
  4010f2:	pop    %rbx
  4010f3:	ret

00000000004010f4 <phase_6>:
  4010f4:	push   %r14
  4010f6:	push   %r13
  4010f8:	push   %r12
  4010fa:	push   %rbp
  4010fb:	push   %rbx
  4010fc:	sub    $0x50,%rsp
  401100:	mov    %rsp,%r13
  401103:	mov    %rsp,%rsi
  401106:	call   40145c <read_six_numbers>
  40110b:	mov    %rsp,%r14
  40110e:	mov    $0x0,%r12d
  401114:	mov    %r13,%rbp
  401117:	mov    0x0(%r13),%eax
  40111b:	sub    $0x1,%eax
  40111e:	cmp    $0x5,%eax
  401121:	jbe    401128 <phase_6+0x34>
  401123:	call   40143a <explode_bomb>
  401128:	add    $0x1,%r12d
  40112c:	cmp    $0x6,%r12d
  401130:	je     401153 <phase_6+0x5f>
  401132:	mov    %r12d,%ebx
  401135:	movslq %ebx,%rax
  401138:	mov    (%rsp,%rax,4),%eax
  40113b:	cmp    %eax,0x0(%rbp)
  40113e:	jne    401145 <phase_6+0x51>
  401140:	call   40143a <explode_bomb>
  401145:	add    $0x1,%ebx
  401148:	cmp    $0x5,%ebx
  40114b:	jle    401135 <phase_6+0x41>
  40114d:	add    $0x4,%r13
  401151:	jmp    401114 <phase_6+0x20>
  401153:	lea    0x18(%rsp),%rsi
  401158:	mov    %r14,%rax
  40115b:	mov    $0x7,%ecx
  401160:	mov    %ecx,%edx
  401162:	sub    (%rax),%edx
  401164:	mov    %edx,(%rax)
  401166:	add    $0x4,%rax
  40116a:	cmp    %rsi,%rax
  40116d:	jne    401160 <phase_6+0x6c>
  40116f:	mov    $0x0,%esi
  401174:	jmp    401197 <phase_6+0xa3>
  401176:	mov    0x8(%rdx),%rdx
  40117a:	add    $0x1,%eax
  40117d:	cmp    %ecx,%eax
  40117f:	jne    401176 <phase_6+0x82>
  401181:	jmp    401188 <phase_6+0x94>
  401183:	mov    $0x6032d0,%edx
  401188:	mov    %rdx,0x20(%rsp,%rsi,2)
  40118d:	add    $0x4,%rsi
  401191:	cmp    $0x18,%rsi
  401195:	je     4011ab <phase_6+0xb7>
  401197:	mov    (%rsp,%rsi,1),%ecx
  40119a:	cmp    $0x1,%ecx
  40119d:	jle    401183 <phase_6+0x8f>
  40119f:	mov    $0x1,%eax
  4011a4:	mov    $0x6032d0,%edx
  4011a9:	jmp    401176 <phase_6+0x82>
  4011ab:	mov    0x20(%rsp),%rbx
  4011b0:	lea    0x28(%rsp),%rax
  4011b5:	lea    0x50(%rsp),%rsi
  4011ba:	mov    %rbx,%rcx
  4011bd:	mov    (%rax),%rdx
  4011c0:	mov    %rdx,0x8(%rcx)
  4011c4:	add    $0x8,%rax
  4011c8:	cmp    %rsi,%rax
  4011cb:	je     4011d2 <phase_6+0xde>
  4011cd:	mov    %rdx,%rcx
  4011d0:	jmp    4011bd <phase_6+0xc9>
  4011d2:	movq   $0x0,0x8(%rdx)
  4011da:	mov    $0x5,%ebp
  4011df:	mov    0x8(%rbx),%rax
  4011e3:	mov    (%rax),%eax
  4011e5:	cmp    %eax,(%rbx)
  4011e7:	jge    4011ee <phase_6+0xfa>
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

0000000000401204 <fun7>:
  401204:	sub    $0x8,%rsp
  401208:	test   %rdi,%rdi
  40120b:	je     401238 <fun7+0x34>
  40120d:	mov    (%rdi),%edx
  40120f:	cmp    %esi,%edx
  401211:	jle    401220 <fun7+0x1c>
  401213:	mov    0x8(%rdi),%rdi
  401217:	call   401204 <fun7>
  40121c:	add    %eax,%eax
  40121e:	jmp    40123d <fun7+0x39>
  401220:	mov    $0x0,%eax
  401225:	cmp    %esi,%edx
  401227:	je     40123d <fun7+0x39>
  401229:	mov    0x10(%rdi),%rdi
  40122d:	call   401204 <fun7>
  401232:	lea    0x1(%rax,%rax,1),%eax
  401236:	jmp    40123d <fun7+0x39>
  401238:	mov    $0xffffffff,%eax
  40123d:	add    $0x8,%rsp
  401241:	ret

0000000000401242 <secret_phase>:
  401242:	push   %rbx
  401243:	call   40149e <read_line>
  401248:	mov    $0xa,%edx
  40124d:	mov    $0x0,%esi
  401252:	mov    %rax,%rdi
  401255:	call   400bd0 <strtol@plt>
  40125a:	mov    %rax,%rbx
  40125d:	lea    -0x1(%rax),%eax
  401260:	cmp    $0x3e8,%eax
  401265:	jbe    40126c <secret_phase+0x2a>
  401267:	call   40143a <explode_bomb>
  40126c:	mov    %ebx,%esi
  40126e:	mov    $0x6030f0,%edi
  401273:	call   401204 <fun7>
  401278:	cmp    $0x2,%eax
  40127b:	je     401282 <secret_phase+0x40>
  40127d:	call   40143a <explode_bomb>
  401282:	mov    $0x402438,%edi
  401287:	call   400b10 <puts@plt>
  40128c:	call   4015c4 <phase_defused>
  401291:	pop    %rbx
  401292:	ret
  401293:	nop
  401294:	nop
  401295:	nop
  401296:	nop
  401297:	nop
  401298:	nop
  401299:	nop
  40129a:	nop
  40129b:	nop
  40129c:	nop
  40129d:	nop
  40129e:	nop
  40129f:	nop

00000000004012a0 <sig_handler>:
  4012a0:	sub    $0x8,%rsp
  4012a4:	mov    $0x4024c0,%edi
  4012a9:	call   400b10 <puts@plt>
  4012ae:	mov    $0x3,%edi
  4012b3:	call   400c50 <sleep@plt>
  4012b8:	mov    $0x402582,%esi
  4012bd:	mov    $0x1,%edi
  4012c2:	mov    $0x0,%eax
  4012c7:	call   400c00 <__printf_chk@plt>
  4012cc:	mov    0x20246d(%rip),%rdi        # 603740 <stdout@GLIBC_2.2.5>
  4012d3:	call   400be0 <fflush@plt>
  4012d8:	mov    $0x1,%edi
  4012dd:	call   400c50 <sleep@plt>
  4012e2:	mov    $0x40258a,%edi
  4012e7:	call   400b10 <puts@plt>
  4012ec:	mov    $0x10,%edi
  4012f1:	call   400c20 <exit@plt>

00000000004012f6 <invalid_phase>:
  4012f6:	sub    $0x8,%rsp
  4012fa:	mov    %rdi,%rdx
  4012fd:	mov    $0x402592,%esi
  401302:	mov    $0x1,%edi
  401307:	mov    $0x0,%eax
  40130c:	call   400c00 <__printf_chk@plt>
  401311:	mov    $0x8,%edi
  401316:	call   400c20 <exit@plt>

000000000040131b <string_length>:
  40131b:	cmpb   $0x0,(%rdi)
  40131e:	je     401332 <string_length+0x17>
  401320:	mov    %rdi,%rdx
  401323:	add    $0x1,%rdx
  401327:	mov    %edx,%eax
  401329:	sub    %edi,%eax
  40132b:	cmpb   $0x0,(%rdx)
  40132e:	jne    401323 <string_length+0x8>
  401330:	repz ret
  401332:	mov    $0x0,%eax
  401337:	ret

0000000000401338 <strings_not_equal>:
  401338:	push   %r12
  40133a:	push   %rbp
  40133b:	push   %rbx
  40133c:	mov    %rdi,%rbx
  40133f:	mov    %rsi,%rbp
  401342:	call   40131b <string_length>
  401347:	mov    %eax,%r12d
  40134a:	mov    %rbp,%rdi
  40134d:	call   40131b <string_length>
  401352:	mov    $0x1,%edx
  401357:	cmp    %eax,%r12d
  40135a:	jne    40139b <strings_not_equal+0x63>
  40135c:	movzbl (%rbx),%eax
  40135f:	test   %al,%al
  401361:	je     401388 <strings_not_equal+0x50>
  401363:	cmp    0x0(%rbp),%al
  401366:	je     401372 <strings_not_equal+0x3a>
  401368:	jmp    40138f <strings_not_equal+0x57>
  40136a:	cmp    0x0(%rbp),%al
  40136d:	nopl   (%rax)
  401370:	jne    401396 <strings_not_equal+0x5e>
  401372:	add    $0x1,%rbx
  401376:	add    $0x1,%rbp
  40137a:	movzbl (%rbx),%eax
  40137d:	test   %al,%al
  40137f:	jne    40136a <strings_not_equal+0x32>
  401381:	mov    $0x0,%edx
  401386:	jmp    40139b <strings_not_equal+0x63>
  401388:	mov    $0x0,%edx
  40138d:	jmp    40139b <strings_not_equal+0x63>
  40138f:	mov    $0x1,%edx
  401394:	jmp    40139b <strings_not_equal+0x63>
  401396:	mov    $0x1,%edx
  40139b:	mov    %edx,%eax
  40139d:	pop    %rbx
  40139e:	pop    %rbp
  40139f:	pop    %r12
  4013a1:	ret

00000000004013a2 <initialize_bomb>:
  4013a2:	sub    $0x8,%rsp
  4013a6:	mov    $0x4012a0,%esi
  4013ab:	mov    $0x2,%edi
  4013b0:	call   400b90 <signal@plt>
  4013b5:	add    $0x8,%rsp
  4013b9:	ret

00000000004013ba <initialize_bomb_solve>:
  4013ba:	repz ret

00000000004013bc <blank_line>:
  4013bc:	push   %rbp
  4013bd:	push   %rbx
  4013be:	sub    $0x8,%rsp
  4013c2:	mov    %rdi,%rbx
  4013c5:	jmp    4013de <blank_line+0x22>
  4013c7:	call   400c60 <__ctype_b_loc@plt>
  4013cc:	add    $0x1,%rbx
  4013d0:	movsbq %bpl,%rbp
  4013d4:	mov    (%rax),%rax
  4013d7:	testb  $0x20,0x1(%rax,%rbp,2)
  4013dc:	je     4013ed <blank_line+0x31>
  4013de:	movzbl (%rbx),%ebp
  4013e1:	test   %bpl,%bpl
  4013e4:	jne    4013c7 <blank_line+0xb>
  4013e6:	mov    $0x1,%eax
  4013eb:	jmp    4013f2 <blank_line+0x36>
  4013ed:	mov    $0x0,%eax
  4013f2:	add    $0x8,%rsp
  4013f6:	pop    %rbx
  4013f7:	pop    %rbp
  4013f8:	ret

00000000004013f9 <skip>:
  4013f9:	push   %rbx
  4013fa:	movslq 0x20235f(%rip),%rax        # 603760 <num_input_strings>
  401401:	lea    (%rax,%rax,4),%rdi
  401405:	shl    $0x4,%rdi
  401409:	add    $0x603780,%rdi
  401410:	mov    0x202351(%rip),%rdx        # 603768 <infile>
  401417:	mov    $0x50,%esi
  40141c:	call   400b80 <fgets@plt>
  401421:	mov    %rax,%rbx
  401424:	test   %rax,%rax
  401427:	je     401435 <skip+0x3c>
  401429:	mov    %rax,%rdi
  40142c:	call   4013bc <blank_line>
  401431:	test   %eax,%eax
  401433:	jne    4013fa <skip+0x1>
  401435:	mov    %rbx,%rax
  401438:	pop    %rbx
  401439:	ret

000000000040143a <explode_bomb>:
  40143a:	sub    $0x8,%rsp
  40143e:	mov    $0x4025a3,%edi
  401443:	call   400b10 <puts@plt>
  401448:	mov    $0x4025ac,%edi
  40144d:	call   400b10 <puts@plt>
  401452:	mov    $0x8,%edi
  401457:	call   400c20 <exit@plt>

000000000040145c <read_six_numbers>:
  40145c:	sub    $0x18,%rsp
  401460:	mov    %rsi,%rdx
  401463:	lea    0x4(%rsi),%rcx
  401467:	lea    0x14(%rsi),%rax
  40146b:	mov    %rax,0x8(%rsp)
  401470:	lea    0x10(%rsi),%rax
  401474:	mov    %rax,(%rsp)
  401478:	lea    0xc(%rsi),%r9
  40147c:	lea    0x8(%rsi),%r8
  401480:	mov    $0x4025c3,%esi
  401485:	mov    $0x0,%eax
  40148a:	call   400bf0 <__isoc99_sscanf@plt>
  40148f:	cmp    $0x5,%eax
  401492:	jg     401499 <read_six_numbers+0x3d>
  401494:	call   40143a <explode_bomb>
  401499:	add    $0x18,%rsp
  40149d:	ret

000000000040149e <read_line>:
  40149e:	sub    $0x8,%rsp
  4014a2:	mov    $0x0,%eax
  4014a7:	call   4013f9 <skip>
  4014ac:	test   %rax,%rax
  4014af:	jne    40151f <read_line+0x81>
  4014b1:	mov    0x202290(%rip),%rax        # 603748 <stdin@GLIBC_2.2.5>
  4014b8:	cmp    %rax,0x2022a9(%rip)        # 603768 <infile>
  4014bf:	jne    4014d5 <read_line+0x37>
  4014c1:	mov    $0x4025d5,%edi
  4014c6:	call   400b10 <puts@plt>
  4014cb:	mov    $0x8,%edi
  4014d0:	call   400c20 <exit@plt>
  4014d5:	mov    $0x4025f3,%edi
  4014da:	call   400ae0 <getenv@plt>
  4014df:	test   %rax,%rax
  4014e2:	je     4014ee <read_line+0x50>
  4014e4:	mov    $0x0,%edi
  4014e9:	call   400c20 <exit@plt>
  4014ee:	mov    0x202253(%rip),%rax        # 603748 <stdin@GLIBC_2.2.5>
  4014f5:	mov    %rax,0x20226c(%rip)        # 603768 <infile>
  4014fc:	mov    $0x0,%eax
  401501:	call   4013f9 <skip>
  401506:	test   %rax,%rax
  401509:	jne    40151f <read_line+0x81>
  40150b:	mov    $0x4025d5,%edi
  401510:	call   400b10 <puts@plt>
  401515:	mov    $0x0,%edi
  40151a:	call   400c20 <exit@plt>
  40151f:	mov    0x20223b(%rip),%edx        # 603760 <num_input_strings>
  401525:	movslq %edx,%rax
  401528:	lea    (%rax,%rax,4),%rsi
  40152c:	shl    $0x4,%rsi
  401530:	add    $0x603780,%rsi
  401537:	mov    %rsi,%rdi
  40153a:	mov    $0x0,%eax
  40153f:	mov    $0xffffffffffffffff,%rcx
  401546:	repnz scas %es:(%rdi),%al
  401548:	not    %rcx
  40154b:	sub    $0x1,%rcx
  40154f:	cmp    $0x4e,%ecx
  401552:	jle    40159a <read_line+0xfc>
  401554:	mov    $0x4025fe,%edi
  401559:	call   400b10 <puts@plt>
  40155e:	mov    0x2021fc(%rip),%eax        # 603760 <num_input_strings>
  401564:	lea    0x1(%rax),%edx
  401567:	mov    %edx,0x2021f3(%rip)        # 603760 <num_input_strings>
  40156d:	cltq
  40156f:	imul   $0x50,%rax,%rax
  401573:	movabs $0x636e7572742a2a2a,%rdi
  40157d:	mov    %rdi,0x603780(%rax)
  401584:	movabs $0x2a2a2a64657461,%rdi
  40158e:	mov    %rdi,0x603788(%rax)
  401595:	call   40143a <explode_bomb>
  40159a:	sub    $0x1,%ecx
  40159d:	movslq %ecx,%rcx
  4015a0:	movslq %edx,%rax
  4015a3:	lea    (%rax,%rax,4),%rax
  4015a7:	shl    $0x4,%rax
  4015ab:	movb   $0x0,0x603780(%rcx,%rax,1)
  4015b3:	add    $0x1,%edx
  4015b6:	mov    %edx,0x2021a4(%rip)        # 603760 <num_input_strings>
  4015bc:	mov    %rsi,%rax
  4015bf:	add    $0x8,%rsp
  4015c3:	ret

00000000004015c4 <phase_defused>:
  4015c4:	sub    $0x78,%rsp
  4015c8:	mov    %fs:0x28,%rax
  4015d1:	mov    %rax,0x68(%rsp)
  4015d6:	xor    %eax,%eax
  4015d8:	cmpl   $0x6,0x202181(%rip)        # 603760 <num_input_strings>
  4015df:	jne    40163f <phase_defused+0x7b>
  4015e1:	lea    0x10(%rsp),%r8
  4015e6:	lea    0xc(%rsp),%rcx
  4015eb:	lea    0x8(%rsp),%rdx
  4015f0:	mov    $0x402619,%esi
  4015f5:	mov    $0x603870,%edi
  4015fa:	call   400bf0 <__isoc99_sscanf@plt>
  4015ff:	cmp    $0x3,%eax
  401602:	jne    401635 <phase_defused+0x71>
  401604:	mov    $0x402622,%esi
  401609:	lea    0x10(%rsp),%rdi
  40160e:	call   401338 <strings_not_equal>
  401613:	test   %eax,%eax
  401615:	jne    401635 <phase_defused+0x71>
  401617:	mov    $0x4024f8,%edi
  40161c:	call   400b10 <puts@plt>
  401621:	mov    $0x402520,%edi
  401626:	call   400b10 <puts@plt>
  40162b:	mov    $0x0,%eax
  401630:	call   401242 <secret_phase>
  401635:	mov    $0x402558,%edi
  40163a:	call   400b10 <puts@plt>
  40163f:	mov    0x68(%rsp),%rax
  401644:	xor    %fs:0x28,%rax
  40164d:	je     401654 <phase_defused+0x90>
  40164f:	call   400b30 <__stack_chk_fail@plt>
  401654:	add    $0x78,%rsp
  401658:	ret
  401659:	nop
  40165a:	nop
  40165b:	nop
  40165c:	nop
  40165d:	nop
  40165e:	nop
  40165f:	nop

0000000000401660 <sigalrm_handler>:
  401660:	sub    $0x8,%rsp
  401664:	mov    $0x0,%ecx
  401669:	mov    $0x402678,%edx
  40166e:	mov    $0x1,%esi
  401673:	mov    0x2020d6(%rip),%rdi        # 603750 <stderr@GLIBC_2.2.5>
  40167a:	mov    $0x0,%eax
  40167f:	call   400c40 <__fprintf_chk@plt>
  401684:	mov    $0x1,%edi
  401689:	call   400c20 <exit@plt>

000000000040168e <rio_readlineb>:
  40168e:	push   %r15
  401690:	push   %r14
  401692:	push   %r13
  401694:	push   %r12
  401696:	push   %rbp
  401697:	push   %rbx
  401698:	sub    $0x38,%rsp
  40169c:	mov    %rsi,%r14
  40169f:	mov    %rdx,0x18(%rsp)
  4016a4:	cmp    $0x1,%rdx
  4016a8:	jbe    401777 <rio_readlineb+0xe9>
  4016ae:	mov    %rdi,%rbx
  4016b1:	mov    $0x1,%r13d
  4016b7:	lea    0x10(%rdi),%r12
  4016bb:	jmp    4016ed <rio_readlineb+0x5f>
  4016bd:	mov    $0x2000,%edx
  4016c2:	mov    %r12,%rsi
  4016c5:	mov    (%rbx),%edi
  4016c7:	call   400b60 <read@plt>
  4016cc:	mov    %eax,0x4(%rbx)
  4016cf:	test   %eax,%eax
  4016d1:	jns    4016e5 <rio_readlineb+0x57>
  4016d3:	call   400af0 <__errno_location@plt>
  4016d8:	cmpl   $0x4,(%rax)
  4016db:	je     4016ed <rio_readlineb+0x5f>
  4016dd:	nopl   (%rax)
  4016e0:	jmp    401786 <rio_readlineb+0xf8>
  4016e5:	test   %eax,%eax
  4016e7:	je     40175a <rio_readlineb+0xcc>
  4016e9:	mov    %r12,0x8(%rbx)
  4016ed:	mov    0x4(%rbx),%ebp
  4016f0:	test   %ebp,%ebp
  4016f2:	jle    4016bd <rio_readlineb+0x2f>
  4016f4:	test   %ebp,%ebp
  4016f6:	setne  %r15b
  4016fa:	movzbl %r15b,%eax
  4016fe:	mov    %eax,0xc(%rsp)
  401702:	movzbl %r15b,%r15d
  401706:	mov    0x8(%rbx),%rcx
  40170a:	mov    %rcx,%rsi
  40170d:	mov    $0x1,%ecx
  401712:	mov    %r15,%rdx
  401715:	mov    %rsi,0x10(%rsp)
  40171a:	lea    0x2f(%rsp),%rdi
  40171f:	call   400bc0 <__memcpy_chk@plt>
  401724:	add    0x10(%rsp),%r15
  401729:	mov    %r15,0x8(%rbx)
  40172d:	mov    0xc(%rsp),%eax
  401731:	sub    %eax,%ebp
  401733:	mov    %ebp,0x4(%rbx)
  401736:	cmp    $0x1,%eax
  401739:	jne    40174e <rio_readlineb+0xc0>
  40173b:	add    $0x1,%r14
  40173f:	movzbl 0x2f(%rsp),%eax
  401744:	mov    %al,-0x1(%r14)
  401748:	cmp    $0xa,%al
  40174a:	jne    401764 <rio_readlineb+0xd6>
  40174c:	jmp    40177d <rio_readlineb+0xef>
  40174e:	cmpl   $0x0,0xc(%rsp)
  401753:	jne    40178f <rio_readlineb+0x101>
  401755:	mov    %r13d,%eax
  401758:	jmp    40175d <rio_readlineb+0xcf>
  40175a:	mov    %r13d,%eax
  40175d:	cmp    $0x1,%eax
  401760:	jne    40177d <rio_readlineb+0xef>
  401762:	jmp    401798 <rio_readlineb+0x10a>
  401764:	add    $0x1,%r13d
  401768:	movslq %r13d,%rax
  40176b:	cmp    0x18(%rsp),%rax
  401770:	jae    40177d <rio_readlineb+0xef>
  401772:	jmp    4016ed <rio_readlineb+0x5f>
  401777:	mov    $0x1,%r13d
  40177d:	movb   $0x0,(%r14)
  401781:	movslq %r13d,%rax
  401784:	jmp    40179d <rio_readlineb+0x10f>
  401786:	mov    $0xffffffffffffffff,%rax
  40178d:	jmp    40179d <rio_readlineb+0x10f>
  40178f:	mov    $0xffffffffffffffff,%rax
  401796:	jmp    40179d <rio_readlineb+0x10f>
  401798:	mov    $0x0,%eax
  40179d:	add    $0x38,%rsp
  4017a1:	pop    %rbx
  4017a2:	pop    %rbp
  4017a3:	pop    %r12
  4017a5:	pop    %r13
  4017a7:	pop    %r14
  4017a9:	pop    %r15
  4017ab:	ret

00000000004017ac <submitr>:
  4017ac:	push   %r15
  4017ae:	push   %r14
  4017b0:	push   %r13
  4017b2:	push   %r12
  4017b4:	push   %rbp
  4017b5:	push   %rbx
  4017b6:	sub    $0xa068,%rsp
  4017bd:	mov    %rdi,%rbp
  4017c0:	mov    %esi,%r13d
  4017c3:	mov    %rdx,0x10(%rsp)
  4017c8:	mov    %rcx,0x18(%rsp)
  4017cd:	mov    %r8,%r15
  4017d0:	mov    %r9,%rbx
  4017d3:	mov    0xa0a0(%rsp),%r14
  4017db:	mov    %fs:0x28,%rax
  4017e4:	mov    %rax,0xa058(%rsp)
  4017ec:	xor    %eax,%eax
  4017ee:	movl   $0x0,0x2c(%rsp)
  4017f6:	mov    $0x0,%edx
  4017fb:	mov    $0x1,%esi
  401800:	mov    $0x2,%edi
  401805:	call   400c80 <socket@plt>
  40180a:	mov    %eax,%r12d
  40180d:	test   %eax,%eax
  40180f:	jns    401861 <submitr+0xb5>
  401811:	movabs $0x43203a726f727245,%rax
  40181b:	mov    %rax,(%r14)
  40181e:	movabs $0x6e7520746e65696c,%rax
  401828:	mov    %rax,0x8(%r14)
  40182c:	movabs $0x206f7420656c6261,%rax
  401836:	mov    %rax,0x10(%r14)
  40183a:	movabs $0x7320657461657263,%rax
  401844:	mov    %rax,0x18(%r14)
  401848:	movl   $0x656b636f,0x20(%r14)
  401850:	movw   $0x74,0x24(%r14)
  401857:	mov    $0xffffffff,%eax
  40185c:	jmp    401e68 <submitr+0x6bc>
  401861:	mov    %rbp,%rdi
  401864:	call   400ba0 <gethostbyname@plt>
  401869:	test   %rax,%rax
  40186c:	jne    4018d9 <submitr+0x12d>
  40186e:	movabs $0x44203a726f727245,%rax
  401878:	mov    %rax,(%r14)
  40187b:	movabs $0x6e7520736920534e,%rax
  401885:	mov    %rax,0x8(%r14)
  401889:	movabs $0x206f7420656c6261,%rax
  401893:	mov    %rax,0x10(%r14)
  401897:	movabs $0x2065766c6f736572,%rax
  4018a1:	mov    %rax,0x18(%r14)
  4018a5:	movabs $0x6120726576726573,%rax
  4018af:	mov    %rax,0x20(%r14)
  4018b3:	movl   $0x65726464,0x28(%r14)
  4018bb:	movw   $0x7373,0x2c(%r14)
  4018c2:	movb   $0x0,0x2e(%r14)
  4018c7:	mov    %r12d,%edi
  4018ca:	call   400b50 <close@plt>
  4018cf:	mov    $0xffffffff,%eax
  4018d4:	jmp    401e68 <submitr+0x6bc>
  4018d9:	movq   $0x0,0x30(%rsp)
  4018e2:	movq   $0x0,0x38(%rsp)
  4018eb:	movw   $0x2,0x30(%rsp)
  4018f2:	movslq 0x14(%rax),%rdx
  4018f6:	mov    0x18(%rax),%rax
  4018fa:	lea    0x34(%rsp),%rdi
  4018ff:	mov    $0xc,%ecx
  401904:	mov    (%rax),%rsi
  401907:	call   400bb0 <__memmove_chk@plt>
  40190c:	ror    $0x8,%r13w
  401911:	mov    %r13w,0x32(%rsp)
  401917:	mov    $0x10,%edx
  40191c:	lea    0x30(%rsp),%rsi
  401921:	mov    %r12d,%edi
  401924:	call   400c30 <connect@plt>
  401929:	test   %eax,%eax
  40192b:	jns    40198a <submitr+0x1de>
  40192d:	movabs $0x55203a726f727245,%rax
  401937:	mov    %rax,(%r14)
  40193a:	movabs $0x6f7420656c62616e,%rax
  401944:	mov    %rax,0x8(%r14)
  401948:	movabs $0x7463656e6e6f6320,%rax
  401952:	mov    %rax,0x10(%r14)
  401956:	movabs $0x20656874206f7420,%rax
  401960:	mov    %rax,0x18(%r14)
  401964:	movl   $0x76726573,0x20(%r14)
  40196c:	movw   $0x7265,0x24(%r14)
  401973:	movb   $0x0,0x26(%r14)
  401978:	mov    %r12d,%edi
  40197b:	call   400b50 <close@plt>
  401980:	mov    $0xffffffff,%eax
  401985:	jmp    401e68 <submitr+0x6bc>
  40198a:	mov    $0xffffffffffffffff,%rdx
  401991:	mov    %rbx,%rdi
  401994:	mov    $0x0,%eax
  401999:	mov    %rdx,%rcx
  40199c:	repnz scas %es:(%rdi),%al
  40199e:	not    %rcx
  4019a1:	mov    %rcx,%rsi
  4019a4:	mov    0x10(%rsp),%rdi
  4019a9:	mov    %rdx,%rcx
  4019ac:	repnz scas %es:(%rdi),%al
  4019ae:	mov    %rcx,%r8
  4019b1:	mov    0x18(%rsp),%rdi
  4019b6:	mov    %rdx,%rcx
  4019b9:	repnz scas %es:(%rdi),%al
  4019bb:	not    %rcx
  4019be:	mov    %rcx,%r9
  4019c1:	mov    %r15,%rdi
  4019c4:	mov    %rdx,%rcx
  4019c7:	repnz scas %es:(%rdi),%al
  4019c9:	sub    %r8,%r9
  4019cc:	sub    %rcx,%r9
  4019cf:	lea    -0x3(%rsi,%rsi,2),%rax
  4019d4:	lea    0x7b(%r9,%rax,1),%rax
  4019d9:	cmp    $0x2000,%rax
  4019df:	jbe    401a54 <submitr+0x2a8>
  4019e1:	movabs $0x52203a726f727245,%rax
  4019eb:	mov    %rax,(%r14)
  4019ee:	movabs $0x747320746c757365,%rax
  4019f8:	mov    %rax,0x8(%r14)
  4019fc:	movabs $0x6f6f7420676e6972,%rax
  401a06:	mov    %rax,0x10(%r14)
  401a0a:	movabs $0x202e656772616c20,%rax
  401a14:	mov    %rax,0x18(%r14)
  401a18:	movabs $0x6573616572636e49,%rax
  401a22:	mov    %rax,0x20(%r14)
  401a26:	movabs $0x5254494d42555320,%rax
  401a30:	mov    %rax,0x28(%r14)
  401a34:	movabs $0x46554258414d5f,%rax
  401a3e:	mov    %rax,0x30(%r14)
  401a42:	mov    %r12d,%edi
  401a45:	call   400b50 <close@plt>
  401a4a:	mov    $0xffffffff,%eax
  401a4f:	jmp    401e68 <submitr+0x6bc>
  401a54:	lea    0x2040(%rsp),%rdx
  401a5c:	mov    $0x400,%ecx
  401a61:	mov    $0x0,%eax
  401a66:	mov    %rdx,%rdi
  401a69:	rep stos %rax,%es:(%rdi)
  401a6c:	mov    %rbx,%rdi
  401a6f:	mov    $0xffffffffffffffff,%rcx
  401a76:	repnz scas %es:(%rdi),%al
  401a78:	not    %rcx
  401a7b:	sub    $0x1,%rcx
  401a7f:	test   %ecx,%ecx
  401a81:	je     401e84 <submitr+0x6d8>
  401a87:	sub    $0x1,%ecx
  401a8a:	lea    0x1(%rbx,%rcx,1),%r13
  401a8f:	mov    %rdx,%rbp
  401a92:	movzbl (%rbx),%r8d
  401a96:	cmp    $0x2a,%r8b
  401a9a:	je     401abf <submitr+0x313>
  401a9c:	lea    -0x2d(%r8),%eax
  401aa0:	cmp    $0x1,%al
  401aa2:	jbe    401abf <submitr+0x313>
  401aa4:	cmp    $0x5f,%r8b
  401aa8:	je     401abf <submitr+0x313>
  401aaa:	lea    -0x30(%r8),%eax
  401aae:	cmp    $0x9,%al
  401ab0:	jbe    401abf <submitr+0x313>
  401ab2:	mov    %r8d,%eax
  401ab5:	and    $0xffffffdf,%eax
  401ab8:	sub    $0x41,%eax
  401abb:	cmp    $0x19,%al
  401abd:	ja     401ac9 <submitr+0x31d>
  401abf:	lea    0x1(%rbp),%rax
  401ac3:	mov    %r8b,0x0(%rbp)
  401ac7:	jmp    401b35 <submitr+0x389>
  401ac9:	cmp    $0x20,%r8b
  401acd:	jne    401ad9 <submitr+0x32d>
  401acf:	lea    0x1(%rbp),%rax
  401ad3:	movb   $0x2b,0x0(%rbp)
  401ad7:	jmp    401b35 <submitr+0x389>
  401ad9:	lea    -0x20(%r8),%eax
  401add:	cmp    $0x5f,%al
  401adf:	jbe    401aeb <submitr+0x33f>
  401ae1:	cmp    $0x9,%r8b
  401ae5:	jne    401eed <submitr+0x741>
  401aeb:	movzbl %r8b,%r8d
  401aef:	mov    $0x402748,%ecx
  401af4:	mov    $0x8,%edx
  401af9:	mov    $0x1,%esi
  401afe:	lea    0x8040(%rsp),%rdi
  401b06:	mov    $0x0,%eax
  401b0b:	call   400c70 <__sprintf_chk@plt>
  401b10:	movzbl 0x8040(%rsp),%eax
  401b18:	mov    %al,0x0(%rbp)
  401b1b:	movzbl 0x8041(%rsp),%eax
  401b23:	mov    %al,0x1(%rbp)
  401b26:	lea    0x3(%rbp),%rax
  401b2a:	movzbl 0x8042(%rsp),%edx
  401b32:	mov    %dl,0x2(%rbp)
  401b35:	add    $0x1,%rbx
  401b39:	cmp    %r13,%rbx
  401b3c:	je     401e84 <submitr+0x6d8>
  401b42:	mov    %rax,%rbp
  401b45:	jmp    401a92 <submitr+0x2e6>
  401b4a:	mov    %rbx,%rdx
  401b4d:	mov    %rbp,%rsi
  401b50:	mov    %r12d,%edi
  401b53:	call   400b20 <write@plt>
  401b58:	test   %rax,%rax
  401b5b:	jg     401b6c <submitr+0x3c0>
  401b5d:	call   400af0 <__errno_location@plt>
  401b62:	cmpl   $0x4,(%rax)
  401b65:	jne    401b79 <submitr+0x3cd>
  401b67:	mov    $0x0,%eax
  401b6c:	add    %rax,%rbp
  401b6f:	sub    %rax,%rbx
  401b72:	jne    401b4a <submitr+0x39e>
  401b74:	test   %r13,%r13
  401b77:	jns    401bd8 <submitr+0x42c>
  401b79:	movabs $0x43203a726f727245,%rax
  401b83:	mov    %rax,(%r14)
  401b86:	movabs $0x6e7520746e65696c,%rax
  401b90:	mov    %rax,0x8(%r14)
  401b94:	movabs $0x206f7420656c6261,%rax
  401b9e:	mov    %rax,0x10(%r14)
  401ba2:	movabs $0x6f74206574697277,%rax
  401bac:	mov    %rax,0x18(%r14)
  401bb0:	movabs $0x7265732065687420,%rax
  401bba:	mov    %rax,0x20(%r14)
  401bbe:	movl   $0x726576,0x28(%r14)
  401bc6:	mov    %r12d,%edi
  401bc9:	call   400b50 <close@plt>
  401bce:	mov    $0xffffffff,%eax
  401bd3:	jmp    401e68 <submitr+0x6bc>
  401bd8:	mov    %r12d,0x8040(%rsp)
  401be0:	movl   $0x0,0x8044(%rsp)
  401beb:	lea    0x8050(%rsp),%rax
  401bf3:	mov    %rax,0x8048(%rsp)
  401bfb:	mov    $0x2000,%edx
  401c00:	lea    0x40(%rsp),%rsi
  401c05:	lea    0x8040(%rsp),%rdi
  401c0d:	call   40168e <rio_readlineb>
  401c12:	test   %rax,%rax
  401c15:	jg     401c8b <submitr+0x4df>
  401c17:	movabs $0x43203a726f727245,%rax
  401c21:	mov    %rax,(%r14)
  401c24:	movabs $0x6e7520746e65696c,%rax
  401c2e:	mov    %rax,0x8(%r14)
  401c32:	movabs $0x206f7420656c6261,%rax
  401c3c:	mov    %rax,0x10(%r14)
  401c40:	movabs $0x7269662064616572,%rax
  401c4a:	mov    %rax,0x18(%r14)
  401c4e:	movabs $0x6564616568207473,%rax
  401c58:	mov    %rax,0x20(%r14)
  401c5c:	movabs $0x73206d6f72662072,%rax
  401c66:	mov    %rax,0x28(%r14)
  401c6a:	movl   $0x65767265,0x30(%r14)
  401c72:	movw   $0x72,0x34(%r14)
  401c79:	mov    %r12d,%edi
  401c7c:	call   400b50 <close@plt>
  401c81:	mov    $0xffffffff,%eax
  401c86:	jmp    401e68 <submitr+0x6bc>
  401c8b:	lea    0x6040(%rsp),%r8
  401c93:	lea    0x2c(%rsp),%rcx
  401c98:	lea    0x4040(%rsp),%rdx
  401ca0:	mov    $0x40274f,%esi
  401ca5:	lea    0x40(%rsp),%rdi
  401caa:	mov    $0x0,%eax
  401caf:	call   400bf0 <__isoc99_sscanf@plt>
  401cb4:	mov    0x2c(%rsp),%r8d
  401cb9:	cmp    $0xc8,%r8d
  401cc0:	je     401d84 <submitr+0x5d8>
  401cc6:	lea    0x6040(%rsp),%r9
  401cce:	mov    $0x4026a0,%ecx
  401cd3:	mov    $0xffffffffffffffff,%rdx
  401cda:	mov    $0x1,%esi
  401cdf:	mov    %r14,%rdi
  401ce2:	mov    $0x0,%eax
  401ce7:	call   400c70 <__sprintf_chk@plt>
  401cec:	mov    %r12d,%edi
  401cef:	call   400b50 <close@plt>
  401cf4:	mov    $0xffffffff,%eax
  401cf9:	jmp    401e68 <submitr+0x6bc>
  401cfe:	mov    $0x2000,%edx
  401d03:	lea    0x40(%rsp),%rsi
  401d08:	lea    0x8040(%rsp),%rdi
  401d10:	call   40168e <rio_readlineb>
  401d15:	test   %rax,%rax
  401d18:	jg     401d84 <submitr+0x5d8>
  401d1a:	movabs $0x43203a726f727245,%rax
  401d24:	mov    %rax,(%r14)
  401d27:	movabs $0x6e7520746e65696c,%rax
  401d31:	mov    %rax,0x8(%r14)
  401d35:	movabs $0x206f7420656c6261,%rax
  401d3f:	mov    %rax,0x10(%r14)
  401d43:	movabs $0x6165682064616572,%rax
  401d4d:	mov    %rax,0x18(%r14)
  401d51:	movabs $0x6f72662073726564,%rax
  401d5b:	mov    %rax,0x20(%r14)
  401d5f:	movabs $0x726576726573206d,%rax
  401d69:	mov    %rax,0x28(%r14)
  401d6d:	movb   $0x0,0x30(%r14)
  401d72:	mov    %r12d,%edi
  401d75:	call   400b50 <close@plt>
  401d7a:	mov    $0xffffffff,%eax
  401d7f:	jmp    401e68 <submitr+0x6bc>
  401d84:	cmpb   $0xd,0x40(%rsp)
  401d89:	jne    401cfe <submitr+0x552>
  401d8f:	cmpb   $0xa,0x41(%rsp)
  401d94:	jne    401cfe <submitr+0x552>
  401d9a:	cmpb   $0x0,0x42(%rsp)
  401d9f:	jne    401cfe <submitr+0x552>
  401da5:	mov    $0x2000,%edx
  401daa:	lea    0x40(%rsp),%rsi
  401daf:	lea    0x8040(%rsp),%rdi
  401db7:	call   40168e <rio_readlineb>
  401dbc:	test   %rax,%rax
  401dbf:	jg     401e31 <submitr+0x685>
  401dc1:	movabs $0x43203a726f727245,%rax
  401dcb:	mov    %rax,(%r14)
  401dce:	movabs $0x6e7520746e65696c,%rax
  401dd8:	mov    %rax,0x8(%r14)
  401ddc:	movabs $0x206f7420656c6261,%rax
  401de6:	mov    %rax,0x10(%r14)
  401dea:	movabs $0x6174732064616572,%rax
  401df4:	mov    %rax,0x18(%r14)
  401df8:	movabs $0x7373656d20737574,%rax
  401e02:	mov    %rax,0x20(%r14)
  401e06:	movabs $0x6d6f726620656761,%rax
  401e10:	mov    %rax,0x28(%r14)
  401e14:	movabs $0x72657672657320,%rax
  401e1e:	mov    %rax,0x30(%r14)
  401e22:	mov    %r12d,%edi
  401e25:	call   400b50 <close@plt>
  401e2a:	mov    $0xffffffff,%eax
  401e2f:	jmp    401e68 <submitr+0x6bc>
  401e31:	lea    0x40(%rsp),%rsi
  401e36:	mov    %r14,%rdi
  401e39:	call   400b00 <strcpy@plt>
  401e3e:	mov    %r12d,%edi
  401e41:	call   400b50 <close@plt>
  401e46:	movzbl (%r14),%eax
  401e4a:	sub    $0x4f,%eax
  401e4d:	jne    401e5e <submitr+0x6b2>
  401e4f:	movzbl 0x1(%r14),%eax
  401e54:	sub    $0x4b,%eax
  401e57:	jne    401e5e <submitr+0x6b2>
  401e59:	movzbl 0x2(%r14),%eax
  401e5e:	test   %eax,%eax
  401e60:	setne  %al
  401e63:	movzbl %al,%eax
  401e66:	neg    %eax
  401e68:	mov    0xa058(%rsp),%rdx
  401e70:	xor    %fs:0x28,%rdx
  401e79:	je     401f7f <submitr+0x7d3>
  401e7f:	jmp    401f7a <submitr+0x7ce>
  401e84:	lea    0x2040(%rsp),%rax
  401e8c:	mov    %rax,0x8(%rsp)
  401e91:	mov    %r15,(%rsp)
  401e95:	mov    0x18(%rsp),%r9
  401e9a:	mov    0x10(%rsp),%r8
  401e9f:	mov    $0x4026d0,%ecx
  401ea4:	mov    $0x2000,%edx
  401ea9:	mov    $0x1,%esi
  401eae:	lea    0x40(%rsp),%rdi
  401eb3:	mov    $0x0,%eax
  401eb8:	call   400c70 <__sprintf_chk@plt>
  401ebd:	lea    0x40(%rsp),%rdi
  401ec2:	mov    $0x0,%eax
  401ec7:	mov    $0xffffffffffffffff,%rcx
  401ece:	repnz scas %es:(%rdi),%al
  401ed0:	not    %rcx
  401ed3:	sub    $0x1,%rcx
  401ed7:	mov    %rcx,%r13
  401eda:	je     401bd8 <submitr+0x42c>
  401ee0:	mov    %rcx,%rbx
  401ee3:	lea    0x40(%rsp),%rbp
  401ee8:	jmp    401b4a <submitr+0x39e>
  401eed:	movabs $0x52203a726f727245,%rax
  401ef7:	mov    %rax,(%r14)
  401efa:	movabs $0x747320746c757365,%rax
  401f04:	mov    %rax,0x8(%r14)
  401f08:	movabs $0x6e6f6320676e6972,%rax
  401f12:	mov    %rax,0x10(%r14)
  401f16:	movabs $0x6e6120736e696174,%rax
  401f20:	mov    %rax,0x18(%r14)
  401f24:	movabs $0x6c6167656c6c6920,%rax
  401f2e:	mov    %rax,0x20(%r14)
  401f32:	movabs $0x72706e7520726f20,%rax
  401f3c:	mov    %rax,0x28(%r14)
  401f40:	movabs $0x20656c6261746e69,%rax
  401f4a:	mov    %rax,0x30(%r14)
  401f4e:	movabs $0x6574636172616863,%rax
  401f58:	mov    %rax,0x38(%r14)
  401f5c:	movw   $0x2e72,0x40(%r14)
  401f63:	movb   $0x0,0x42(%r14)
  401f68:	mov    %r12d,%edi
  401f6b:	call   400b50 <close@plt>
  401f70:	mov    $0xffffffff,%eax
  401f75:	jmp    401e68 <submitr+0x6bc>
  401f7a:	call   400b30 <__stack_chk_fail@plt>
  401f7f:	add    $0xa068,%rsp
  401f86:	pop    %rbx
  401f87:	pop    %rbp
  401f88:	pop    %r12
  401f8a:	pop    %r13
  401f8c:	pop    %r14
  401f8e:	pop    %r15
  401f90:	ret

0000000000401f91 <init_timeout>:
  401f91:	push   %rbx
  401f92:	mov    %edi,%ebx
  401f94:	test   %edi,%edi
  401f96:	je     401fb6 <init_timeout+0x25>
  401f98:	mov    $0x401660,%esi
  401f9d:	mov    $0xe,%edi
  401fa2:	call   400b90 <signal@plt>
  401fa7:	test   %ebx,%ebx
  401fa9:	mov    $0x0,%edi
  401fae:	cmovns %ebx,%edi
  401fb1:	call   400b40 <alarm@plt>
  401fb6:	pop    %rbx
  401fb7:	ret

0000000000401fb8 <init_driver>:
  401fb8:	push   %rbp
  401fb9:	push   %rbx
  401fba:	sub    $0x28,%rsp
  401fbe:	mov    %rdi,%rbp
  401fc1:	mov    %fs:0x28,%rax
  401fca:	mov    %rax,0x18(%rsp)
  401fcf:	xor    %eax,%eax
  401fd1:	mov    $0x1,%esi
  401fd6:	mov    $0xd,%edi
  401fdb:	call   400b90 <signal@plt>
  401fe0:	mov    $0x1,%esi
  401fe5:	mov    $0x1d,%edi
  401fea:	call   400b90 <signal@plt>
  401fef:	mov    $0x1,%esi
  401ff4:	mov    $0x1d,%edi
  401ff9:	call   400b90 <signal@plt>
  401ffe:	mov    $0x0,%edx
  402003:	mov    $0x1,%esi
  402008:	mov    $0x2,%edi
  40200d:	call   400c80 <socket@plt>
  402012:	mov    %eax,%ebx
  402014:	test   %eax,%eax
  402016:	jns    402067 <init_driver+0xaf>
  402018:	movabs $0x43203a726f727245,%rax
  402022:	mov    %rax,0x0(%rbp)
  402026:	movabs $0x6e7520746e65696c,%rax
  402030:	mov    %rax,0x8(%rbp)
  402034:	movabs $0x206f7420656c6261,%rax
  40203e:	mov    %rax,0x10(%rbp)
  402042:	movabs $0x7320657461657263,%rax
  40204c:	mov    %rax,0x18(%rbp)
  402050:	movl   $0x656b636f,0x20(%rbp)
  402057:	movw   $0x74,0x24(%rbp)
  40205d:	mov    $0xffffffff,%eax
  402062:	jmp    402171 <init_driver+0x1b9>
  402067:	mov    $0x402760,%edi
  40206c:	call   400ba0 <gethostbyname@plt>
  402071:	test   %rax,%rax
  402074:	jne    4020de <init_driver+0x126>
  402076:	movabs $0x44203a726f727245,%rax
  402080:	mov    %rax,0x0(%rbp)
  402084:	movabs $0x6e7520736920534e,%rax
  40208e:	mov    %rax,0x8(%rbp)
  402092:	movabs $0x206f7420656c6261,%rax
  40209c:	mov    %rax,0x10(%rbp)
  4020a0:	movabs $0x2065766c6f736572,%rax
  4020aa:	mov    %rax,0x18(%rbp)
  4020ae:	movabs $0x6120726576726573,%rax
  4020b8:	mov    %rax,0x20(%rbp)
  4020bc:	movl   $0x65726464,0x28(%rbp)
  4020c3:	movw   $0x7373,0x2c(%rbp)
  4020c9:	movb   $0x0,0x2e(%rbp)
  4020cd:	mov    %ebx,%edi
  4020cf:	call   400b50 <close@plt>
  4020d4:	mov    $0xffffffff,%eax
  4020d9:	jmp    402171 <init_driver+0x1b9>
  4020de:	movq   $0x0,(%rsp)
  4020e6:	movq   $0x0,0x8(%rsp)
  4020ef:	movw   $0x2,(%rsp)
  4020f5:	movslq 0x14(%rax),%rdx
  4020f9:	mov    0x18(%rax),%rax
  4020fd:	lea    0x4(%rsp),%rdi
  402102:	mov    $0xc,%ecx
  402107:	mov    (%rax),%rsi
  40210a:	call   400bb0 <__memmove_chk@plt>
  40210f:	movw   $0x6e3b,0x2(%rsp)
  402116:	mov    $0x10,%edx
  40211b:	mov    %rsp,%rsi
  40211e:	mov    %ebx,%edi
  402120:	call   400c30 <connect@plt>
  402125:	test   %eax,%eax
  402127:	jns    40215b <init_driver+0x1a3>
  402129:	mov    $0x402760,%r8d
  40212f:	mov    $0x402720,%ecx
  402134:	mov    $0xffffffffffffffff,%rdx
  40213b:	mov    $0x1,%esi
  402140:	mov    %rbp,%rdi
  402143:	mov    $0x0,%eax
  402148:	call   400c70 <__sprintf_chk@plt>
  40214d:	mov    %ebx,%edi
  40214f:	call   400b50 <close@plt>
  402154:	mov    $0xffffffff,%eax
  402159:	jmp    402171 <init_driver+0x1b9>
  40215b:	mov    %ebx,%edi
  40215d:	call   400b50 <close@plt>
  402162:	movw   $0x4b4f,0x0(%rbp)
  402168:	movb   $0x0,0x2(%rbp)
  40216c:	mov    $0x0,%eax
  402171:	mov    0x18(%rsp),%rcx
  402176:	xor    %fs:0x28,%rcx
  40217f:	je     402186 <init_driver+0x1ce>
  402181:	call   400b30 <__stack_chk_fail@plt>
  402186:	add    $0x28,%rsp
  40218a:	pop    %rbx
  40218b:	pop    %rbp
  40218c:	ret

000000000040218d <driver_post>:
  40218d:	push   %rbx
  40218e:	sub    $0x10,%rsp
  402192:	mov    %rcx,%rbx
  402195:	test   %edx,%edx
  402197:	je     4021c0 <driver_post+0x33>
  402199:	mov    %rsi,%rdx
  40219c:	mov    $0x402778,%esi
  4021a1:	mov    $0x1,%edi
  4021a6:	mov    $0x0,%eax
  4021ab:	call   400c00 <__printf_chk@plt>
  4021b0:	movw   $0x4b4f,(%rbx)
  4021b5:	movb   $0x0,0x2(%rbx)
  4021b9:	mov    $0x0,%eax
  4021be:	jmp    4021fe <driver_post+0x71>
  4021c0:	test   %rdi,%rdi
  4021c3:	je     4021f0 <driver_post+0x63>
  4021c5:	cmpb   $0x0,(%rdi)
  4021c8:	je     4021f0 <driver_post+0x63>
  4021ca:	mov    %rcx,(%rsp)
  4021ce:	mov    %rsi,%r9
  4021d1:	mov    $0x4022ec,%r8d
  4021d7:	mov    %rdi,%rcx
  4021da:	mov    $0x40278f,%edx
  4021df:	mov    $0x3b6e,%esi
  4021e4:	mov    $0x402760,%edi
  4021e9:	call   4017ac <submitr>
  4021ee:	jmp    4021fe <driver_post+0x71>
  4021f0:	movw   $0x4b4f,(%rbx)
  4021f5:	movb   $0x0,0x2(%rbx)
  4021f9:	mov    $0x0,%eax
  4021fe:	add    $0x10,%rsp
  402202:	pop    %rbx
  402203:	ret
  402204:	nop
  402205:	nop
  402206:	nop
  402207:	nop
  402208:	nop
  402209:	nop
  40220a:	nop
  40220b:	nop
  40220c:	nop
  40220d:	nop
  40220e:	nop
  40220f:	nop

0000000000402210 <__libc_csu_init>:
  402210:	mov    %rbp,-0x28(%rsp)
  402215:	mov    %r12,-0x20(%rsp)
  40221a:	lea    0x200bdf(%rip),%rbp        # 602e00 <__do_global_dtors_aux_fini_array_entry>
  402221:	lea    0x200bd0(%rip),%r12        # 602df8 <__frame_dummy_init_array_entry>
  402228:	mov    %r13,-0x18(%rsp)
  40222d:	mov    %r14,-0x10(%rsp)
  402232:	mov    %r15,-0x8(%rsp)
  402237:	mov    %rbx,-0x30(%rsp)
  40223c:	sub    $0x38,%rsp
  402240:	sub    %r12,%rbp
  402243:	mov    %edi,%r13d
  402246:	mov    %rsi,%r14
  402249:	sar    $0x3,%rbp
  40224d:	mov    %rdx,%r15
  402250:	call   400ac0 <_init>
  402255:	test   %rbp,%rbp
  402258:	je     402276 <__libc_csu_init+0x66>
  40225a:	xor    %ebx,%ebx
  40225c:	nopl   0x0(%rax)
  402260:	mov    %r15,%rdx
  402263:	mov    %r14,%rsi
  402266:	mov    %r13d,%edi
  402269:	call   *(%r12,%rbx,8)
  40226d:	add    $0x1,%rbx
  402271:	cmp    %rbp,%rbx
  402274:	jne    402260 <__libc_csu_init+0x50>
  402276:	mov    0x8(%rsp),%rbx
  40227b:	mov    0x10(%rsp),%rbp
  402280:	mov    0x18(%rsp),%r12
  402285:	mov    0x20(%rsp),%r13
  40228a:	mov    0x28(%rsp),%r14
  40228f:	mov    0x30(%rsp),%r15
  402294:	add    $0x38,%rsp
  402298:	ret
  402299:	nopl   0x0(%rax)

00000000004022a0 <__libc_csu_fini>:
  4022a0:	repz ret
  4022a2:	nop
  4022a3:	nop

Disassembly of section .fini:

00000000004022a4 <_fini>:
  4022a4:	sub    $0x8,%rsp
  4022a8:	add    $0x8,%rsp
  4022ac:	ret
