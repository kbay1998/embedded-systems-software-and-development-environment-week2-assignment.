	.file	"main.c"
	.text
.Ltext0:
	.file 0 "C:/Users/Lenovo/OneDrive/ese-coursera-course1/assessments/m2/src" "main.c"
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
.LFB8:
	.file 1 "c:/users/lenovo/downloads/mingw/x86_64-w64-mingw32/include/stdio.h"
	.loc 1 369 1
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI0:
	pushq	%rbx
	.seh_pushreg	%rbx
.LCFI1:
	subq	$56, %rsp
	.seh_stackalloc	56
.LCFI2:
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
.LCFI3:
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	.loc 1 371 35
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 372 14
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
.LVL0:
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	.loc 1 374 10
	movl	-4(%rbp), %eax
	.loc 1 375 1
	addq	$56, %rsp
	popq	%rbx
.LCFI4:
	popq	%rbp
.LCFI5:
	ret
.LFE8:
	.seh_endproc
	.globl	buffer
	.bss
	.align 8
buffer:
	.space 10
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%c\0"
.LC1:
	.ascii "\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB29:
	.file 2 "main.c"
	.loc 2 30 16
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI6:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI7:
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 2 30 16
	call	__main
	.loc 2 35 3
	movl	$10, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	clear_all
	.loc 2 36 3
	leaq	8+buffer(%rip), %rax
	movl	$2, %r8d
	movl	$43, %edx
	movq	%rax, %rcx
	call	set_all
	.loc 2 37 3
	movl	$97, %r8d
	movl	$0, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 38 11
	movl	$9, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	get_value
	movb	%al, -5(%rbp)
	.loc 2 39 31
	movzbl	-5(%rbp), %eax
	addl	$39, %eax
	.loc 2 39 3
	movsbl	%al, %eax
	movl	%eax, %r8d
	movl	$9, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 40 3
	movl	$55, %r8d
	movl	$3, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 41 3
	movl	$88, %r8d
	movl	$1, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 42 3
	movl	$50, %r8d
	movl	$4, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 43 11
	movl	$1, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	get_value
	movb	%al, -5(%rbp)
	.loc 2 44 3
	movl	$121, %r8d
	movl	$2, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 45 31
	movzbl	-5(%rbp), %eax
	subl	$12, %eax
	.loc 2 45 3
	movsbl	%al, %eax
	movl	%eax, %r8d
	movl	$7, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 46 3
	movl	$95, %r8d
	movl	$5, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 2 48 11
	movl	$0, -4(%rbp)
	.loc 2 48 3
	jmp	.L4
.L5:
	.loc 2 49 5 discriminator 3
	movl	-4(%rbp), %eax
	leaq	buffer(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 2 48 33 discriminator 3
	addl	$1, -4(%rbp)
.L4:
	.loc 2 48 18 discriminator 1
	cmpl	$9, -4(%rbp)
	jbe	.L5
	.loc 2 51 3
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 2 52 10
	movl	$0, %eax
	.loc 2 53 1
	addq	$48, %rsp
	popq	%rbp
.LCFI8:
	ret
.LFE29:
	.seh_endproc
	.section	.debug_frame,"dr"
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.secrel32	.Lframe0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI0-.LFB8
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xc
	.uleb128 0x6
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xc3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc6
	.byte	0x12
	.uleb128 0x7
	.sleb128 5
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.secrel32	.Lframe0
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE2:
	.text
.Letext0:
	.file 3 "c:/users/lenovo/downloads/mingw/x86_64-w64-mingw32/include/vadefs.h"
	.file 4 "../include/common/memory.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x38b
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0xb
	.ascii "GNU C99 11.2.0 -mtune=generic -march=x86-64 -g -O0 -std=c99\0"
	.byte	0xc
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x4
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x7d
	.uleb128 0xc
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xd
	.long	0x95
	.uleb128 0x4
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.long	0x95
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0xe
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x1c9
	.uleb128 0x3
	.ascii "_ptr\0"
	.byte	0x25
	.byte	0xb
	.long	0x106
	.byte	0
	.uleb128 0x3
	.ascii "_cnt\0"
	.byte	0x26
	.byte	0x9
	.long	0xf3
	.byte	0x8
	.uleb128 0x3
	.ascii "_base\0"
	.byte	0x27
	.byte	0xb
	.long	0x106
	.byte	0x10
	.uleb128 0x3
	.ascii "_flag\0"
	.byte	0x28
	.byte	0x9
	.long	0xf3
	.byte	0x18
	.uleb128 0x3
	.ascii "_file\0"
	.byte	0x29
	.byte	0x9
	.long	0xf3
	.byte	0x1c
	.uleb128 0x3
	.ascii "_charbuf\0"
	.byte	0x2a
	.byte	0x9
	.long	0xf3
	.byte	0x20
	.uleb128 0x3
	.ascii "_bufsiz\0"
	.byte	0x2b
	.byte	0x9
	.long	0xf3
	.byte	0x24
	.uleb128 0x3
	.ascii "_tmpfname\0"
	.byte	0x2c
	.byte	0xb
	.long	0x106
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x141
	.uleb128 0xf
	.long	0x95
	.long	0x1e6
	.uleb128 0x10
	.long	0xb2
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.ascii "buffer\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x6
	.long	0x1d6
	.uleb128 0x9
	.byte	0x3
	.quad	buffer
	.uleb128 0x6
	.ascii "__mingw_vfprintf\0"
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0xf3
	.long	0x22c
	.uleb128 0x1
	.long	0x231
	.uleb128 0x1
	.long	0x23b
	.uleb128 0x1
	.long	0xa2
	.byte	0
	.uleb128 0x5
	.long	0x1c9
	.uleb128 0x8
	.long	0x22c
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x8
	.long	0x236
	.uleb128 0x6
	.ascii "__acrt_iob_func\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.long	0x22c
	.long	0x262
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x6
	.ascii "get_value\0"
	.byte	0x4
	.byte	0x3f
	.byte	0x6
	.long	0x95
	.long	0x283
	.uleb128 0x1
	.long	0x106
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x7
	.ascii "set_value\0"
	.byte	0x25
	.long	0x2a3
	.uleb128 0x1
	.long	0x106
	.uleb128 0x1
	.long	0x10b
	.uleb128 0x1
	.long	0x95
	.byte	0
	.uleb128 0x7
	.ascii "set_all\0"
	.byte	0x4e
	.long	0x2c1
	.uleb128 0x1
	.long	0x106
	.uleb128 0x1
	.long	0x95
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x7
	.ascii "clear_all\0"
	.byte	0x5b
	.long	0x2dc
	.uleb128 0x1
	.long	0x106
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x12
	.ascii "main\0"
	.byte	0x2
	.byte	0x1e
	.byte	0x5
	.long	0xf3
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x31c
	.uleb128 0x9
	.ascii "i\0"
	.byte	0x1f
	.byte	0x10
	.long	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "value\0"
	.byte	0x20
	.byte	0x8
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xf3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x236
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.uleb128 0xa
	.ascii "__retval\0"
	.word	0x172
	.byte	0x7
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.ascii "__local_argv\0"
	.word	0x173
	.byte	0x15
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.quad	.LVL0
	.long	0x240
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF0:
	.ascii "main.c\0"
.LASF1:
	.ascii "C:\\Users\\Lenovo\\OneDrive\\ese-coursera-course1\\assessments\\m2\\src\0"
	.ident	"GCC: (GNU) 11.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	clear_all;	.scl	2;	.type	32;	.endef
	.def	set_all;	.scl	2;	.type	32;	.endef
	.def	set_value;	.scl	2;	.type	32;	.endef
	.def	get_value;	.scl	2;	.type	32;	.endef
