	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function unit_init_stats
LCPI0_0:
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
	.short	5243                            ## 0x147b
LCPI0_1:
	.byte	0                               ## 0x0
	.byte	2                               ## 0x2
	.byte	4                               ## 0x4
	.byte	6                               ## 0x6
	.byte	8                               ## 0x8
	.byte	10                              ## 0xa
	.byte	12                              ## 0xc
	.byte	14                              ## 0xe
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_unit_init_stats
	.p2align	4, 0x90
_unit_init_stats:                       ## @unit_init_stats
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r13
	movq	_class_fp(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB0_3
## %bb.1:
	cmpq	$0, _move_fp(%rip)
	je	LBB0_3
## %bb.2:
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movb	%r15b, 203(%r13)
	movb	%sil, 206(%r13)
	movzbl	%sil, %r12d
	movq	%r12, %rsi
	shlq	$5, %rsi
	xorl	%edx, %edx
	callq	_fseek
	movq	_class_fp(%rip), %rcx
	leaq	-42(%rbp), %rdi
	movl	$2, %esi
	movl	$1, %edx
	callq	_fread
	leaq	207(%r13), %rdi
	movq	_class_fp(%rip), %rcx
	movl	$1, %esi
	movl	$1, %edx
	callq	_fread
	leaq	255(%r13), %rdi
	movq	_class_fp(%rip), %rcx
	movl	$1, %esi
	movl	$1, %edx
	callq	_fread
	leaq	216(%r13), %rdi
	movq	_class_fp(%rip), %rcx
	movl	$1, %esi
	movl	$8, %edx
	callq	_fread
	leaq	224(%r13), %rdi
	movq	_class_fp(%rip), %rcx
	movl	$1, %esi
	movl	$8, %edx
	callq	_fread
	leaq	232(%r13), %rdi
	movq	_class_fp(%rip), %rcx
	movl	$1, %esi
	movl	$8, %edx
	callq	_fread
	movzwl	-42(%rbp), %eax
	movl	%r14d, %ecx
	shrb	%cl
	addb	$1, %cl
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	%cl, %ecx
	cmovnel	%ecx, %edx
	movl	%eax, %esi
	andl	$2, %esi
	cmovnel	%ecx, %esi
	movb	%dl, 242(%r13)
	movl	%eax, %edx
	andl	$4, %edx
	cmovnel	%ecx, %edx
	movb	%sil, 243(%r13)
	movl	%eax, %esi
	andl	$8, %esi
	cmovnel	%ecx, %esi
	movb	%dl, 244(%r13)
	movl	%eax, %edx
	andl	$16, %edx
	cmovnel	%ecx, %edx
	movb	%sil, 245(%r13)
	movl	%eax, %esi
	andl	$32, %esi
	cmovnel	%ecx, %esi
	movb	%dl, 246(%r13)
	movl	%eax, %edx
	andl	$64, %edx
	cmovnel	%ecx, %edx
	movb	%sil, 247(%r13)
	movb	%dl, 248(%r13)
	movl	%eax, %edx
	sarb	$7, %dl
	movl	%ecx, %ebx
	andb	%dl, %bl
	movb	%bl, 249(%r13)
	movl	%eax, %edx
	andl	$256, %edx                      ## imm = 0x100
	cmovnel	%ecx, %edx
	movb	%dl, 250(%r13)
	movl	%eax, %edx
	andl	$512, %edx                      ## imm = 0x200
	cmovnel	%ecx, %edx
	movb	%dl, 251(%r13)
	movl	%eax, %edx
	andl	$1024, %edx                     ## imm = 0x400
	cmovnel	%ecx, %edx
	movb	%dl, 252(%r13)
	movl	%eax, %edx
	andl	$2048, %edx                     ## imm = 0x800
	cmovnel	%ecx, %edx
	movb	%dl, 253(%r13)
	andl	$4096, %eax                     ## imm = 0x1000
	cmovnel	%ecx, %eax
	movb	%al, 254(%r13)
	movq	_move_fp(%rip), %rdi
	movzbl	%r15b, %esi
	shlq	$4, %rsi
	xorl	%edx, %edx
	callq	_fseek
	movq	_move_fp(%rip), %rcx
	leaq	-56(%rbp), %rdi
	movl	$1, %esi
	movl	$8, %edx
	callq	_fread
	leaq	204(%r13), %rdi
	movq	_move_fp(%rip), %rcx
	movl	$1, %esi
	movl	$1, %edx
	callq	_fread
	movq	224(%r13), %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, 224(%r13)
	movzbl	%cl, %r8d
	movzbl	%ch, %eax
	movl	%eax, %r9d
	movl	%ecx, %edx
	shrl	$16, %edx
	movzbl	%dl, %edi
	movl	%ecx, %edx
	shrl	$24, %edx
	movq	%rcx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	movq	%rcx, %rbx
	movq	%rcx, %rsi
	shrq	$40, %rbx
	movzbl	%bl, %ebx
	shrq	$48, %rcx
	movzbl	%cl, %ecx
	shrq	$56, %rsi
	movd	%r8d, %xmm0
	pinsrw	$1, %r9d, %xmm0
	pinsrw	$2, %edi, %xmm0
	pinsrw	$3, %edx, %xmm0
	pinsrw	$4, %eax, %xmm0
	pinsrw	$5, %ebx, %xmm0
	pinsrw	$6, %ecx, %xmm0
	pinsrw	$7, %esi, %xmm0
	movzbl	%r14b, %eax
	movd	%eax, %xmm1
	pshuflw	$0, %xmm1, %xmm1                ## xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm1, %xmm1                ## xmm1 = xmm1[0,0,0,0]
	pmullw	%xmm0, %xmm1
	psrlw	$2, %xmm1
	pmulhuw	LCPI0_0(%rip), %xmm1
	psrlw	$1, %xmm1
	pshufb	LCPI0_1(%rip), %xmm1            ## xmm1 = xmm1[0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u]
	movq	%xmm1, -56(%rbp)
	imull	$171, %r12d, %eax
	shrl	$9, %eax
	leal	(%rax,%rax,2), %eax
	subb	%al, %r12b
	movzbl	%r12b, %eax
	imulq	232(%r13), %rax
	movq	%xmm1, %rcx
	addq	%rax, %rcx
	addq	%rcx, 216(%r13)
LBB0_3:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_data_open                 ## -- Begin function unit_data_open
	.p2align	4, 0x90
_unit_data_open:                        ## @unit_data_open
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	$0, _class_fp(%rip)
	je	LBB1_1
## %bb.2:
	cmpq	$0, _move_fp(%rip)
	je	LBB1_3
LBB1_4:
	popq	%rbp
	retq
LBB1_1:
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_prep_fopen
	movq	%rax, _class_fp(%rip)
	cmpq	$0, _move_fp(%rip)
	jne	LBB1_4
LBB1_3:
	leaq	L_.str.2(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_prep_fopen
	movq	%rax, _move_fp(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_data_close                ## -- Begin function unit_data_close
	.p2align	4, 0x90
_unit_data_close:                       ## @unit_data_close
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_class_fp(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB2_2
## %bb.1:
	callq	_fclose
LBB2_2:
	movq	_move_fp(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB2_4
## %bb.3:
	callq	_fclose
LBB2_4:
	movq	$0, _class_fp(%rip)
	movq	$0, _move_fp(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_class_fp,8,3    ## @class_fp
.zerofill __DATA,__bss,_move_fp,8,3     ## @move_fp
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"data/class_data.dat"

L_.str.1:                               ## @.str.1
	.asciz	"rb"

L_.str.2:                               ## @.str.2
	.asciz	"data/move_data.dat"

.subsections_via_symbols
