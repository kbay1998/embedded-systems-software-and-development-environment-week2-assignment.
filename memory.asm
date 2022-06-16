	.file	"memory.c"
	.text
.Ltext0:
	.file 0 "C:/Users/Lenovo/OneDrive/ese-coursera-course1/assessments/m2/src" "memory.c"
	.globl	set_value
	.def	set_value;	.scl	2;	.type	32;	.endef
	.seh_proc	set_value
set_value:
.LFB0:
	.file 1 "memory.c"
	.loc 1 28 59
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI0:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI1:
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, %eax
	movb	%al, 32(%rbp)
	.loc 1 29 6
	movl	24(%rbp), %edx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 29 14
	movzbl	32(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 30 1
	nop
	popq	%rbp
.LCFI2:
	ret
.LFE0:
	.seh_endproc
	.globl	clear_value
	.def	clear_value;	.scl	2;	.type	32;	.endef
	.seh_proc	clear_value
clear_value:
.LFB1:
	.loc 1 32 49
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI3:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI4:
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 33 3
	movl	24(%rbp), %eax
	movl	$0, %r8d
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	set_value
	.loc 1 34 1
	nop
	addq	$32, %rsp
	popq	%rbp
.LCFI5:
	ret
.LFE1:
	.seh_endproc
	.globl	get_value
	.def	get_value;	.scl	2;	.type	32;	.endef
	.seh_proc	get_value
get_value:
.LFB2:
	.loc 1 36 47
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI6:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI7:
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 37 13
	movl	24(%rbp), %edx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 38 1
	popq	%rbp
.LCFI8:
	ret
.LFE2:
	.seh_endproc
	.globl	set_all
	.def	set_all;	.scl	2;	.type	32;	.endef
	.seh_proc	set_all
set_all:
.LFB3:
	.loc 1 40 56
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI9:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI10:
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movl	%r8d, 32(%rbp)
	movb	%al, 24(%rbp)
	.loc 1 42 9
	movl	$0, -4(%rbp)
	.loc 1 42 3
	jmp	.L6
.L7:
	.loc 1 43 5 discriminator 3
	movsbl	24(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	set_value
	.loc 1 42 25 discriminator 3
	addl	$1, -4(%rbp)
.L6:
	.loc 1 42 16 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	32(%rbp), %eax
	jb	.L7
	.loc 1 45 1
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
.LCFI11:
	ret
.LFE3:
	.seh_endproc
	.globl	clear_all
	.def	clear_all;	.scl	2;	.type	32;	.endef
	.seh_proc	clear_all
clear_all:
.LFB4:
	.loc 1 47 46
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI12:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI13:
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 48 3
	movl	24(%rbp), %eax
	movl	%eax, %r8d
	movl	$0, %edx
	movq	16(%rbp), %rcx
	call	set_all
	.loc 1 49 1
	nop
	addq	$32, %rsp
	popq	%rbp
.LCFI14:
	ret
.LFE4:
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
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.secrel32	.Lframe0
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.byte	0x4
	.long	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.secrel32	.Lframe0
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI6-.LFB2
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.secrel32	.Lframe0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI9-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.secrel32	.Lframe0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI12-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE8:
	.text
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1f5
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x4
	.ascii "GNU C99 11.2.0 -mtune=generic -march=x86-64 -g -O0 -std=c99\0"
	.byte	0xc
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.ascii "clear_all\0"
	.byte	0x2f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6
	.uleb128 0x1
	.ascii "ptr\0"
	.byte	0x2f
	.byte	0x17
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ascii "size\0"
	.byte	0x2f
	.byte	0x29
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xac
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.ascii "set_all\0"
	.byte	0x28
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f
	.uleb128 0x1
	.ascii "ptr\0"
	.byte	0x28
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ascii "value\0"
	.byte	0x28
	.byte	0x1f
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ascii "size\0"
	.byte	0x28
	.byte	0x33
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.ascii "i\0"
	.byte	0x1
	.byte	0x29
	.byte	0x10
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.ascii "get_value\0"
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.long	0xac
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x166
	.uleb128 0x1
	.ascii "ptr\0"
	.byte	0x24
	.byte	0x17
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ascii "index\0"
	.byte	0x24
	.byte	0x29
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.ascii "clear_value\0"
	.byte	0x20
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9
	.uleb128 0x1
	.ascii "ptr\0"
	.byte	0x20
	.byte	0x19
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ascii "index\0"
	.byte	0x20
	.byte	0x2b
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.ascii "set_value\0"
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.ascii "ptr\0"
	.byte	0x1c
	.byte	0x17
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ascii "index\0"
	.byte	0x1c
	.byte	0x29
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ascii "value\0"
	.byte	0x1c
	.byte	0x35
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
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
.LASF1:
	.ascii "C:\\Users\\Lenovo\\OneDrive\\ese-coursera-course1\\assessments\\m2\\src\0"
.LASF0:
	.ascii "memory.c\0"
	.ident	"GCC: (GNU) 11.2.0"
