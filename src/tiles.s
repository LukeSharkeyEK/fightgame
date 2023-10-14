	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_map                        ## -- Begin function get_map
	.p2align	4, 0x90
_get_map:                               ## @get_map
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	L_.str(%rip), %rsi
	leaq	-34(%rbp), %rdi
	callq	_fopen
	movq	%rax, %r14
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, %rcx
	callq	_fread
	leaq	1(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_fread
	leaq	2(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_fread
	leaq	3(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_fread
	leaq	5(%rbx), %rdi
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %edx
	imulq	%rax, %rdx
	movl	$2, %esi
	movq	%r14, %rcx
	callq	_fread
	movq	%r14, %rdi
	callq	_fclose
	movb	$1, 4(%rbx)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB1_2
## %bb.1:
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_get_movement                   ## -- Begin function get_movement
	.p2align	4, 0x90
_get_movement:                          ## @get_movement
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $r8d killed $r8d def $r8
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movzbl	1(%rdi), %eax
	movl	%r9d, %ebx
	imulq	%rax, %rbx
	movl	%r8d, %r12d
	addq	%rbx, %r12
	movb	%cl, (%rsi,%r12)
	movl	%edx, %r11d
	movb	1(%rdi), %r14b
	xorl	%edx, %edx
	leaq	_tile_info(%rip), %r10
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_17 Depth 2
	movzbl	%r8b, %ebx
	addl	$1, %ebx
	movzbl	%r14b, %eax
	movl	%r12d, %r14d
	cmpl	%eax, %ebx
	jae	LBB2_5
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movzbl	7(%rdi,%r14,2), %eax
	leaq	(%r10,%rax,8), %rax
	movl	%ecx, %r15d
	subb	4(%r11,%rax), %r15b
	js	LBB2_5
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	cmpb	1(%rsi,%r14), %cl
	jbe	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_1 Depth=1
	movb	%cl, 1(%rsi,%r14)
	movb	%bl, -240(%rbp,%rdx)
	movb	%r9b, -239(%rbp,%rdx)
	movb	%r15b, -238(%rbp,%rdx)
	addq	$3, %rdx
	.p2align	4, 0x90
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	movslq	%r12d, %r15
	testb	%r8b, %r8b
	je	LBB2_9
## %bb.6:                               ##   in Loop: Header=BB2_1 Depth=1
	movzbl	3(%rdi,%r15,2), %eax
	leaq	(%r10,%rax,8), %rax
	movl	%ecx, %ebx
	subb	4(%r11,%rax), %bl
	js	LBB2_9
## %bb.7:                               ##   in Loop: Header=BB2_1 Depth=1
	cmpb	-1(%rsi,%r15), %cl
	jbe	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_1 Depth=1
	movb	%cl, -1(%rsi,%r15)
	leal	-1(%r8), %eax
	movb	%al, -240(%rbp,%rdx)
	movb	%r9b, -239(%rbp,%rdx)
	movb	%bl, -238(%rbp,%rdx)
	addq	$3, %rdx
	.p2align	4, 0x90
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	movzbl	%r9b, %ebx
	addl	$1, %ebx
	movzbl	(%rdi), %eax
	cmpl	%eax, %ebx
	jae	LBB2_13
## %bb.10:                              ##   in Loop: Header=BB2_1 Depth=1
	movzbl	1(%rdi), %eax
	addq	%rax, %r14
	movzbl	5(%rdi,%r14,2), %eax
	leaq	(%r10,%rax,8), %r12
	movl	%ecx, %eax
	subb	4(%r11,%r12), %al
	js	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_1 Depth=1
	cmpb	(%rsi,%r14), %cl
	jbe	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_1 Depth=1
	movb	%cl, (%rsi,%r14)
	movb	%r8b, -240(%rbp,%rdx)
	movb	%bl, -239(%rbp,%rdx)
	movb	%al, -238(%rbp,%rdx)
	addq	$3, %rdx
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_1 Depth=1
	testb	%r9b, %r9b
	je	LBB2_17
## %bb.14:                              ##   in Loop: Header=BB2_1 Depth=1
	movzbl	1(%rdi), %eax
	subq	%rax, %r15
	movzbl	5(%rdi,%r15,2), %eax
	leaq	(%r10,%rax,8), %rax
	movl	%ecx, %ebx
	subb	4(%r11,%rax), %bl
	js	LBB2_17
## %bb.15:                              ##   in Loop: Header=BB2_1 Depth=1
	cmpb	(%rsi,%r15), %cl
	jbe	LBB2_17
## %bb.16:                              ##   in Loop: Header=BB2_1 Depth=1
	movb	%cl, (%rsi,%r15)
	movb	%r8b, -240(%rbp,%rdx)
	addb	$-1, %r9b
	movb	%r9b, -239(%rbp,%rdx)
	movb	%bl, -238(%rbp,%rdx)
	addq	$3, %rdx
	.p2align	4, 0x90
LBB2_17:                                ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%rdx, %rdx
	je	LBB2_20
## %bb.18:                              ##   in Loop: Header=BB2_17 Depth=2
	movzbl	-240(%rbp,%rdx), %ecx
	addq	$-3, %rdx
	testb	%cl, %cl
	je	LBB2_17
## %bb.19:                              ##   in Loop: Header=BB2_1 Depth=1
	movzbl	-238(%rbp,%rdx), %r9d
	movzbl	-239(%rbp,%rdx), %r8d
	movzbl	1(%rdi), %r14d
	movl	%r14d, %r12d
	imull	%r9d, %r12d
	addl	%r8d, %r12d
	jmp	LBB2_1
LBB2_20:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB2_22
## %bb.21:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_22:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_tile_info                      ## @tile_info
	.p2align	4
_tile_info:
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,255
	.byte	1                               ## 0x1
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,1
	.byte	66                              ## 0x42
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.ascii	"\004\377\377\001"
	.byte	67                              ## 0x43
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.ascii	"\377\377\377\001"
	.byte	4                               ## 0x4
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.ascii	"\001\002\001\001"
	.byte	5                               ## 0x5
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	20                              ## 0x14
	.ascii	"\003\377\003\001"
	.byte	6                               ## 0x6
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,1
	.byte	7                               ## 0x7
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,255
	.byte	8                               ## 0x8
	.byte	30                              ## 0x1e
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,255
	.byte	9                               ## 0x9
	.byte	15                              ## 0xf
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,255
	.byte	10                              ## 0xa
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.space	4,1
	.byte	11                              ## 0xb
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	10                              ## 0xa
	.ascii	"\002\004\002\001"
	.byte	12                              ## 0xc
	.byte	0                               ## 0x0
	.byte	12                              ## 0xc
	.byte	15                              ## 0xf
	.space	4,1
	.byte	13                              ## 0xd
	.byte	0                               ## 0x0
	.byte	7                               ## 0x7
	.byte	10                              ## 0xa
	.space	4,1
	.byte	78                              ## 0x4e
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.ascii	"\002\004\002\001"
	.byte	15                              ## 0xf
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.ascii	"\001\002\001\001"
	.byte	16                              ## 0x10
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	10                              ## 0xa
	.ascii	"\003\005\003\001"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"rb"

.subsections_via_symbols
