	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI0_0:
	.quad	0xbff0000000000000              ## double -1
LCPI0_1:
	.quad	0x4004000000000000              ## double 2.5
LCPI0_2:
	.quad	0x4010000000000000              ## double 4
LCPI0_3:
	.quad	0x3ff0000000000000              ## double 1
LCPI0_4:
	.quad	0x4008000000000000              ## double 3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2488, %rsp                     ## imm = 0x9B8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$80, %edi
	movl	$80, %esi
	callq	_bmp_get
	movq	%rax, -2520(%rbp)               ## 8-byte Spill
	movl	$40, %edi
	movl	$40, %esi
	callq	_bmp_get
	movq	%rax, -2504(%rbp)               ## 8-byte Spill
	movl	$80, %edi
	movl	$80, %esi
	callq	_bmp_get
	movq	%rax, -2472(%rbp)               ## 8-byte Spill
	movl	$80, %edi
	movl	$80, %esi
	callq	_bmp_get
	movq	%rax, -2480(%rbp)               ## 8-byte Spill
	movl	$0, -2436(%rbp)
	xorl	%eax, %eax
	movq	%rax, -2448(%rbp)               ## 8-byte Spill
	movb	$-1, %r15b
	leaq	-2459(%rbp), %r13
	movq	-2504(%rbp), %r12               ## 8-byte Reload
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	movq	-2448(%rbp), %rax               ## 8-byte Reload
	addl	%eax, %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, -2456(%rbp)               ## 4-byte Spill
	xorl	%ebx, %ebx
	movb	%r15b, -2452(%rbp)              ## 1-byte Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-2456(%rbp), %eax               ## 4-byte Reload
	movb	%al, -2459(%rbp)
	movb	%bl, -2458(%rbp)
	movb	%r15b, -2457(%rbp)
	movzwl	-2448(%rbp), %esi               ## 2-byte Folded Reload
	movzwl	%r14w, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	_bmp_set
	addl	$1, %r14d
	addb	$-3, %r15b
	addb	$6, %bl
	cmpl	$40, %r14d
	jne	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-2448(%rbp), %rdx               ## 8-byte Reload
	addl	$1, %edx
	movb	-2452(%rbp), %r15b              ## 1-byte Reload
	addb	$-3, %r15b
	movq	%rdx, %rax
	movq	%rdx, -2448(%rbp)               ## 8-byte Spill
	cmpl	$40, %edx
	jne	LBB0_1
## %bb.4:
	movl	$-1, %eax
	movq	%rax, -2496(%rbp)               ## 8-byte Spill
	movsd	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movq	_WHITE@GOTPCREL(%rip), %r12
	movq	-2472(%rbp), %r15               ## 8-byte Reload
	jmp	LBB0_5
	.p2align	4, 0x90
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=1
	movsd	-2512(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI0_3(%rip), %xmm0
	movq	-2496(%rbp), %rax               ## 8-byte Reload
	addl	$1, %eax
	movq	%rax, -2496(%rbp)               ## 8-byte Spill
	cmpl	$41, %eax
	je	LBB0_9
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movsd	%xmm0, -2512(%rbp)              ## 8-byte Spill
	divsd	LCPI0_1(%rip), %xmm0
	callq	_cos
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -2448(%rbp)              ## 8-byte Spill
	movsd	-2512(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_sin
	addsd	-2448(%rbp), %xmm0              ## 8-byte Folded Reload
	addsd	LCPI0_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	testl	%ecx, %ecx
	jle	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	$59, %edx
	movq	-2496(%rbp), %rax               ## 8-byte Reload
	subl	%eax, %edx
	movl	%edx, -2464(%rbp)               ## 4-byte Spill
	addl	$20, %eax
	movl	%eax, -2488(%rbp)               ## 4-byte Spill
	xorl	%r14d, %r14d
	movw	$19, %ax
	movl	%ecx, -2452(%rbp)               ## 4-byte Spill
	.p2align	4, 0x90
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r14, -2448(%rbp)               ## 8-byte Spill
	movzwl	-2464(%rbp), %ebx               ## 2-byte Folded Reload
	movl	%ebx, -2456(%rbp)               ## 4-byte Spill
	movzwl	%ax, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%rdx, %r15
	movq	%r12, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movw	%bx, -2432(%rbp,%rax,2)
	leal	2(%rax), %ecx
	movl	%ecx, -2436(%rbp)
	movq	%r15, %rbx
	movw	%bx, -2430(%rbp,%rax,2)
	leal	60(%r14), %eax
	movzwl	-2488(%rbp), %r13d              ## 2-byte Folded Reload
	movq	%r12, %r14
	movzwl	%ax, %r12d
	movq	-2472(%rbp), %rdi               ## 8-byte Reload
	movl	%r13d, %esi
	movl	%r12d, %edx
	movq	%r14, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movw	%r13w, -2432(%rbp,%rax,2)
	leal	2(%rax), %ecx
	movl	%ecx, -2436(%rbp)
	movw	%r12w, -2430(%rbp,%rax,2)
	movq	-2472(%rbp), %rdi               ## 8-byte Reload
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movw	%bx, -2432(%rbp,%rax,2)
	leal	2(%rax), %ecx
	movl	%ecx, -2436(%rbp)
	movw	%r13w, -2430(%rbp,%rax,2)
	movq	-2472(%rbp), %r15               ## 8-byte Reload
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	-2456(%rbp), %r13d              ## 4-byte Reload
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movw	%r12w, -2432(%rbp,%rax,2)
	movq	%r14, %r12
	movq	-2448(%rbp), %r14               ## 8-byte Reload
	leal	2(%rax), %ecx
	movl	%ecx, -2436(%rbp)
	movl	-2452(%rbp), %ecx               ## 4-byte Reload
	movw	%r13w, -2430(%rbp,%rax,2)
	addl	$1, %r14d
	leal	-1(%rbx), %eax
	cmpl	%r14d, %ecx
	jne	LBB0_7
	jmp	LBB0_8
LBB0_9:
	movq	_WHITE@GOTPCREL(%rip), %rbx
	movq	%r15, %rdi
	movl	$60, %esi
	movl	$18, %edx
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movl	$1179708, -2432(%rbp,%rax,2)    ## imm = 0x12003C
	addl	$2, %eax
	movl	%eax, -2436(%rbp)
	movq	%r15, %rdi
	movl	$60, %esi
	movl	$61, %edx
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movl	$3997756, -2432(%rbp,%rax,2)    ## imm = 0x3D003C
	addl	$2, %eax
	movl	%eax, -2436(%rbp)
	movq	%r15, %rdi
	movl	$19, %esi
	movl	$18, %edx
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movl	$1179667, -2432(%rbp,%rax,2)    ## imm = 0x120013
	addl	$2, %eax
	movl	%eax, -2436(%rbp)
	movq	%r15, %rdi
	movl	$19, %esi
	movl	$61, %edx
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movslq	-2436(%rbp), %rax
	movl	$3997715, -2432(%rbp,%rax,2)    ## imm = 0x3D0013
	addl	$2, %eax
	movl	%eax, -2436(%rbp)
	movl	$-2, %eax
	movq	-2480(%rbp), %r13               ## 8-byte Reload
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_13:                                ##   in Loop: Header=BB0_10 Depth=1
	movq	-2488(%rbp), %rax               ## 8-byte Reload
	addl	$1, %eax
	cmpl	$42, %eax
	je	LBB0_14
LBB0_10:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_12 Depth 2
	movl	%eax, %r14d
	shrl	$31, %r14d
	movq	%rax, -2488(%rbp)               ## 8-byte Spill
	addl	%eax, %r14d
	sarl	%r14d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	callq	_cos
	movsd	%xmm0, -2448(%rbp)              ## 8-byte Spill
	negl	%r14d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	callq	_sin
	addsd	-2448(%rbp), %xmm0              ## 8-byte Folded Reload
	addsd	LCPI0_4(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	testl	%ecx, %ecx
	jle	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=1
	movl	$59, %edx
	movq	-2488(%rbp), %rax               ## 8-byte Reload
	subl	%eax, %edx
	movl	%edx, -2452(%rbp)               ## 4-byte Spill
	addl	$20, %eax
	movl	%eax, -2464(%rbp)               ## 4-byte Spill
	xorl	%r14d, %r14d
	movw	$19, %ax
	movl	%ecx, -2456(%rbp)               ## 4-byte Spill
	.p2align	4, 0x90
LBB0_12:                                ##   Parent Loop BB0_10 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	-2452(%rbp), %esi               ## 2-byte Folded Reload
	movl	%esi, -2448(%rbp)               ## 4-byte Spill
	movzwl	%ax, %r12d
	movq	%r13, %rdi
	movl	%r12d, %edx
	movq	%rbx, %rcx
	callq	_bmp_trySet
	leal	60(%r14), %eax
	movzwl	-2464(%rbp), %r13d              ## 2-byte Folded Reload
	movzwl	%ax, %r15d
	movq	-2480(%rbp), %rdi               ## 8-byte Reload
	movl	%r13d, %esi
	movl	%r15d, %edx
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movq	-2480(%rbp), %rdi               ## 8-byte Reload
	movl	%r12d, %esi
	movl	-2448(%rbp), %edx               ## 4-byte Reload
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movq	-2480(%rbp), %rdi               ## 8-byte Reload
	movl	%r15d, %esi
	movl	%r13d, %edx
	movq	-2480(%rbp), %r13               ## 8-byte Reload
	movq	%rbx, %rcx
	callq	_bmp_trySet
	movl	-2456(%rbp), %ecx               ## 4-byte Reload
	addl	$1, %r14d
	leal	-1(%r12), %eax
	cmpl	%r14d, %ecx
	jne	LBB0_12
	jmp	LBB0_13
LBB0_14:
	movq	-2520(%rbp), %r14               ## 8-byte Reload
	movq	%r14, %rdi
	movq	-2504(%rbp), %r12               ## 8-byte Reload
	movq	%r12, %rsi
	movl	$20, %edx
	movl	$20, %ecx
	callq	_bmp_copy_tile
	movq	-2472(%rbp), %r15               ## 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$20, %edx
	movl	$20, %ecx
	callq	_bmp_copy_tile
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$20, %edx
	movl	$20, %ecx
	callq	_bmp_copy_tile
	leaq	L_.str(%rip), %rdi
	movq	%r14, %rsi
	callq	_bmp_toFile
	leaq	L_.str.1(%rip), %rdi
	movq	%r12, %rsi
	callq	_bmp_toFile
	leaq	L_.str.2(%rip), %rdi
	movq	%r15, %rsi
	callq	_bmp_toFile
	leaq	L_.str.3(%rip), %rdi
	movq	%r13, %rsi
	callq	_bmp_toFile
	movq	%r14, %rdi
	callq	_free
	movq	%r12, %rdi
	callq	_free
	movq	%r15, %rdi
	callq	_free
	movq	%r13, %rdi
	callq	_free
	leaq	L_.str.4(%rip), %rdi
	leaq	L_.str.5(%rip), %rsi
	callq	_fopen
	movq	%rax, %rbx
	leaq	-2436(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_fwrite
	movslq	-2436(%rbp), %rdx
	leaq	-2432(%rbp), %rdi
	movl	$2, %esi
	movq	%rbx, %rcx
	callq	_fwrite
	movq	%rbx, %rdi
	callq	_fclose
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_16
## %bb.15:
	xorl	%eax, %eax
	addq	$2488, %rsp                     ## imm = 0x9B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_16:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"test.bmp"

L_.str.1:                               ## @.str.1
	.asciz	"test_wheel.bmp"

L_.str.2:                               ## @.str.2
	.asciz	"test_copy_map.bmp"

L_.str.3:                               ## @.str.3
	.asciz	"test_copy_map_rec.bmp"

L_.str.4:                               ## @.str.4
	.asciz	"test_copy_map_vals"

L_.str.5:                               ## @.str.5
	.asciz	"wb"

L_.str.6:                               ## @.str.6
	.asciz	"%d \n"

.subsections_via_symbols
