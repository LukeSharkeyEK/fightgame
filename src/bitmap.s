	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_bmp_get                        ## -- Begin function bmp_get
	.p2align	4, 0x90
_bmp_get:                               ## @bmp_get
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movl	%edi, %r12d
	leal	(%r12,%r12,2), %eax
	leal	4(%rax), %ecx
	testb	$3, %al
	movzbl	%cl, %r13d
	cmovel	%eax, %r13d
	andb	$-4, %r13b
	movl	%r13d, %eax
	mulb	%r15b
	movzbl	%al, %r14d
	leaq	4(%r14), %rdi
	callq	_malloc
	movq	%rax, %rbx
	movb	%r12b, (%rax)
	movb	%r15b, 1(%rax)
	movb	%r14b, 2(%rax)
	movb	%r13b, 3(%rax)
	testb	%r14b, %r14b
	je	LBB0_2
## %bb.1:
	movq	%rbx, %rdi
	addq	$4, %rdi
	movq	%r14, %rsi
	callq	___bzero
LBB0_2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_zero                       ## -- Begin function bmp_zero
	.p2align	4, 0x90
_bmp_zero:                              ## @bmp_zero
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movzbl	2(%rdi), %esi
	testq	%rsi, %rsi
	je	LBB1_2
## %bb.1:
	addq	$4, %rdi
	callq	___bzero
LBB1_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_set                        ## -- Begin function bmp_set
	.p2align	4, 0x90
_bmp_set:                               ## @bmp_set
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edx, %eax
	movzbl	3(%rdi), %edx
	imulq	%rax, %rdx
	movl	%esi, %eax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	movb	(%rcx), %dl
	movb	%dl, 4(%rdi,%rax)
	movb	1(%rcx), %dl
	movb	%dl, 5(%rdi,%rax)
	movb	2(%rcx), %cl
	movb	%cl, 6(%rdi,%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_pixel                      ## -- Begin function bmp_pixel
	.p2align	4, 0x90
_bmp_pixel:                             ## @bmp_pixel
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edx, %eax
	movzbl	3(%rdi), %ecx
	imulq	%rax, %rcx
	movl	%esi, %eax
	leaq	(%rax,%rax,2), %rax
	addq	%rcx, %rax
	addq	%rdi, %rax
	addq	$4, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_trySet                     ## -- Begin function bmp_trySet
	.p2align	4, 0x90
_bmp_trySet:                            ## @bmp_trySet
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	%sil, (%rdi)
	jbe	LBB4_3
## %bb.1:
	cmpb	%dl, 1(%rdi)
	jbe	LBB4_3
## %bb.2:
	movzbl	%dl, %eax
	movzbl	3(%rdi), %edx
	imulq	%rax, %rdx
	movzbl	%sil, %eax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	movb	(%rcx), %dl
	movb	%dl, 4(%rdi,%rax)
	movb	1(%rcx), %dl
	movb	%dl, 5(%rdi,%rax)
	movb	2(%rcx), %cl
	movb	%cl, 6(%rdi,%rax)
LBB4_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_copy_onto                  ## -- Begin function bmp_copy_onto
	.p2align	4, 0x90
_bmp_copy_onto:                         ## @bmp_copy_onto
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_copy_pattern               ## -- Begin function bmp_copy_pattern
	.p2align	4, 0x90
_bmp_copy_pattern:                      ## @bmp_copy_pattern
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testl	%ecx, %ecx
	je	LBB6_6
## %bb.1:
	movb	(%rdi), %r8b
	movzbl	%cl, %r9d
	xorl	%r11d, %r11d
	jmp	LBB6_2
	.p2align	4, 0x90
LBB6_5:                                 ##   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r9
	je	LBB6_6
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r11, %rax
	movzbl	(%rdx,%r11), %ecx
	addq	$1, %r11
	cmpb	%cl, %r8b
	jbe	LBB6_5
## %bb.3:                               ##   in Loop: Header=BB6_2 Depth=1
	movzbl	1(%rdx,%rax), %r10d
	cmpb	%r10b, 1(%rdi)
	jbe	LBB6_5
## %bb.4:                               ##   in Loop: Header=BB6_2 Depth=1
	imull	$205, %ecx, %eax
	shrl	$10, %eax
	andl	$-8, %eax
	leal	(%rax,%rax,4), %eax
	movl	%ecx, %ebx
	subb	%al, %bl
	movzbl	%bl, %r14d
	imull	$205, %r10d, %ebx
	shrl	$10, %ebx
	andl	$-8, %ebx
	leal	(%rbx,%rbx,4), %ebx
	movl	%r10d, %eax
	subb	%bl, %al
	movzbl	%al, %eax
	movzbl	3(%rsi), %ebx
	imulq	%rax, %rbx
	leal	(%r14,%r14,2), %eax
	movzbl	%al, %eax
	addq	%rbx, %rax
	movzbl	3(%rdi), %ebx
	imulq	%r10, %rbx
	leaq	(%rcx,%rcx,2), %rcx
	addq	%rbx, %rcx
	movzbl	4(%rsi,%rax), %ebx
	movb	%bl, 4(%rdi,%rcx)
	movzbl	5(%rsi,%rax), %ebx
	movb	%bl, 5(%rdi,%rcx)
	movzbl	6(%rsi,%rax), %eax
	movb	%al, 6(%rdi,%rcx)
	jmp	LBB6_5
LBB6_6:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_copy_tile                  ## -- Begin function bmp_copy_tile
	.p2align	4, 0x90
_bmp_copy_tile:                         ## @bmp_copy_tile
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	4(%rdi), %r10
	leaq	124(%rdi), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	leaq	4(%rsi), %r9
	leaq	124(%rsi), %r11
	xorl	%r12d, %r12d
	movzbl	%cl, %r14d
	movl	%edx, -44(%rbp)                 ## 4-byte Spill
	movzbl	%dl, %r15d
	jmp	LBB7_1
	.p2align	4, 0x90
LBB7_5:                                 ##   in Loop: Header=BB7_1 Depth=1
	movups	4(%rsi,%r8), %xmm0
	movups	%xmm0, 4(%rdi,%r13)
	movups	20(%rsi,%r8), %xmm0
	movups	%xmm0, 20(%rdi,%r13)
	movups	36(%rsi,%r8), %xmm0
	movups	%xmm0, 36(%rdi,%r13)
	movups	52(%rsi,%r8), %xmm0
	movups	%xmm0, 52(%rdi,%r13)
	movups	68(%rsi,%r8), %xmm0
	movups	%xmm0, 68(%rdi,%r13)
	movups	84(%rsi,%r8), %xmm0
	movups	%xmm0, 84(%rdi,%r13)
	movups	100(%rsi,%r8), %xmm0
	movups	%xmm0, 100(%rdi,%r13)
	movq	116(%rsi,%r8), %rax
	movq	%rax, 116(%rdi,%r13)
LBB7_6:                                 ##   in Loop: Header=BB7_1 Depth=1
	addl	$1, %r12d
	addl	$1, %ecx
	cmpl	$40, %r12d
	je	LBB7_7
LBB7_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movl	%r12d, %ebx
	addq	%r14, %rbx
	movzbl	3(%rdi), %eax
	movq	%rax, %r13
	imulq	%rbx, %r13
	addq	%r15, %r13
	movzbl	3(%rsi), %r8d
	imull	%r12d, %r8d
	leaq	(%r10,%r13), %rbx
	leaq	(%r11,%r8), %rdx
	cmpq	%rdx, %rbx
	jae	LBB7_5
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-56(%rbp), %rdx                 ## 8-byte Reload
	addq	%r13, %rdx
	leaq	(%r9,%r8), %rbx
	cmpq	%rdx, %rbx
	jae	LBB7_5
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	addq	%rsi, %r8
	imull	%ecx, %eax
	addl	-44(%rbp), %eax                 ## 4-byte Folded Reload
	addq	%rdi, %rax
	movl	$4, %ebx
	.p2align	4, 0x90
LBB7_4:                                 ##   Parent Loop BB7_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%r8,%rbx), %edx
	movb	%dl, (%rax,%rbx)
	movzbl	1(%r8,%rbx), %edx
	movb	%dl, 1(%rax,%rbx)
	movzbl	2(%r8,%rbx), %edx
	movb	%dl, 2(%rax,%rbx)
	movzbl	3(%r8,%rbx), %edx
	movb	%dl, 3(%rax,%rbx)
	movzbl	4(%r8,%rbx), %edx
	movb	%dl, 4(%rax,%rbx)
	movzbl	5(%r8,%rbx), %edx
	movb	%dl, 5(%rax,%rbx)
	movzbl	6(%r8,%rbx), %edx
	movb	%dl, 6(%rax,%rbx)
	movzbl	7(%r8,%rbx), %edx
	movb	%dl, 7(%rax,%rbx)
	addq	$8, %rbx
	cmpl	$124, %ebx
	jne	LBB7_4
	jmp	LBB7_6
LBB7_7:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function bmp_toFile
LCPI8_0:
	.long	11811                           ## 0x2e23
	.long	11811                           ## 0x2e23
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_bmp_toFile
	.p2align	4, 0x90
_bmp_toFile:                            ## @bmp_toFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movw	$19778, -82(%rbp)               ## imm = 0x4D42
	movabsq	$231928233984, %rax             ## imm = 0x3600000000
	movq	%rax, -76(%rbp)
	movl	$40, -68(%rbp)
	movzbl	(%rsi), %eax
	movl	%eax, -64(%rbp)
	movzbl	1(%rsi), %eax
	movl	%eax, -60(%rbp)
	movq	$1572865, -56(%rbp)             ## imm = 0x180001
	movzbl	2(%rsi), %eax
	movl	%eax, -48(%rbp)
	movaps	LCPI8_0(%rip), %xmm0            ## xmm0 = [11811,11811,0,0]
	movups	%xmm0, -44(%rbp)
	addl	$54, %eax
	movl	%eax, -80(%rbp)
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	movq	%rax, %rbx
	leaq	-82(%rbp), %rdi
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_fwrite
	leaq	-80(%rbp), %rdi
	movl	$52, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fwrite
	movzbl	2(%r14), %esi
	leaq	4(%r14), %rdi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fwrite
	movq	%rbx, %rdi
	callq	_fclose
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB8_2
## %bb.1:
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB8_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_bmp_fromFile                   ## -- Begin function bmp_fromFile
	.p2align	4, 0x90
_bmp_fromFile:                          ## @bmp_fromFile
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	L_.str.1(%rip), %rsi
	callq	_fopen
	movq	%rax, %rbx
	movl	$10, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	_fseek
	leaq	-68(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fread
	movl	$18, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_fseek
	leaq	-64(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fread
	leaq	-60(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fread
	movl	$28, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_fseek
	leaq	-70(%rbp), %rdi
	movl	$2, %esi
	movl	$1, %edx
	movq	%rbx, -56(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rcx
	callq	_fread
	movl	-64(%rbp), %r15d
	movl	-60(%rbp), %r14d
	leal	(%r15,%r15,2), %eax
	leal	4(%rax), %ecx
	testb	$3, %al
	movzbl	%cl, %r13d
	cmovel	%eax, %r13d
	andb	$-4, %r13b
	movl	%r13d, %eax
	mulb	%r14b
	movzbl	%al, %ebx
	leaq	4(%rbx), %rdi
	callq	_malloc
	movq	%rax, %r12
	movb	%r15b, (%rax)
	movl	%r14d, -48(%rbp)                ## 4-byte Spill
	movb	%r14b, 1(%rax)
	movb	%bl, 2(%rax)
	movb	%r13b, 3(%rax)
	testb	%bl, %bl
	je	LBB9_2
## %bb.1:
	leaq	4(%r12), %rdi
	movq	%rbx, %rsi
	callq	___bzero
LBB9_2:
	movslq	-68(%rbp), %rsi
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	xorl	%edx, %edx
	callq	_fseek
	cmpl	$0, -48(%rbp)                   ## 4-byte Folded Reload
	jle	LBB9_21
## %bb.3:
	movl	%r15d, %eax
	negl	%eax
	andl	$3, %eax
	movl	$4, %ebx
	subl	%eax, %ebx
	testl	%r15d, %r15d
	jle	LBB9_18
## %bb.4:
	movzbl	%r13b, %ecx
	movq	%rcx, -80(%rbp)                 ## 8-byte Spill
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	LBB9_12
## %bb.5:
	movq	%rbx, -88(%rbp)                 ## 8-byte Spill
	jmp	LBB9_6
	.p2align	4, 0x90
LBB9_11:                                ##   in Loop: Header=BB9_6 Depth=1
	movl	$1, %esi
	leaq	-44(%rbp), %rdi
	movq	-88(%rbp), %rdx                 ## 8-byte Reload
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	callq	_fread
	addl	$1, %r14d
	cmpl	-48(%rbp), %r14d                ## 4-byte Folded Reload
	je	LBB9_21
LBB9_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_7 Depth 2
	movzbl	%r14b, %r13d
	imulq	-80(%rbp), %r13                 ## 8-byte Folded Reload
	xorl	%ebx, %ebx
	jmp	LBB9_7
	.p2align	4, 0x90
LBB9_10:                                ##   in Loop: Header=BB9_7 Depth=2
	addl	$1, %ebx
	cmpl	%ebx, %r15d
	je	LBB9_11
LBB9_7:                                 ##   Parent Loop BB9_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$1, %esi
	movl	$3, %edx
	leaq	-44(%rbp), %rdi
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	callq	_fread
	cmpb	%bl, %r15b
	jbe	LBB9_10
## %bb.8:                               ##   in Loop: Header=BB9_7 Depth=2
	cmpb	%r14b, -48(%rbp)                ## 1-byte Folded Reload
	jbe	LBB9_10
## %bb.9:                               ##   in Loop: Header=BB9_7 Depth=2
	movzbl	%bl, %eax
	leal	(%rax,%rax,2), %eax
	addq	%r13, %rax
	movzbl	-44(%rbp), %ecx
	movb	%cl, 4(%r12,%rax)
	movzbl	-43(%rbp), %ecx
	movb	%cl, 5(%r12,%rax)
	movzbl	-42(%rbp), %ecx
	movb	%cl, 6(%r12,%rax)
	jmp	LBB9_10
	.p2align	4, 0x90
LBB9_17:                                ##   in Loop: Header=BB9_12 Depth=1
	addl	$1, %r14d
	cmpl	-48(%rbp), %r14d                ## 4-byte Folded Reload
	je	LBB9_21
LBB9_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_13 Depth 2
	movzbl	%r14b, %r13d
	imulq	-80(%rbp), %r13                 ## 8-byte Folded Reload
	xorl	%ebx, %ebx
	jmp	LBB9_13
	.p2align	4, 0x90
LBB9_16:                                ##   in Loop: Header=BB9_13 Depth=2
	addl	$1, %ebx
	cmpl	%ebx, %r15d
	je	LBB9_17
LBB9_13:                                ##   Parent Loop BB9_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$1, %esi
	movl	$3, %edx
	leaq	-44(%rbp), %rdi
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	callq	_fread
	cmpb	%bl, %r15b
	jbe	LBB9_16
## %bb.14:                              ##   in Loop: Header=BB9_13 Depth=2
	cmpb	%r14b, -48(%rbp)                ## 1-byte Folded Reload
	jbe	LBB9_16
## %bb.15:                              ##   in Loop: Header=BB9_13 Depth=2
	movzbl	%bl, %eax
	leal	(%rax,%rax,2), %eax
	addq	%r13, %rax
	movzbl	-44(%rbp), %ecx
	movb	%cl, 4(%r12,%rax)
	movzbl	-43(%rbp), %ecx
	movb	%cl, 5(%r12,%rax)
	movzbl	-42(%rbp), %ecx
	movb	%cl, 6(%r12,%rax)
	jmp	LBB9_16
LBB9_18:
	testl	%eax, %eax
	je	LBB9_21
## %bb.19:
	leaq	-44(%rbp), %r14
	.p2align	4, 0x90
LBB9_20:                                ## =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	callq	_fread
	addl	$-1, -48(%rbp)                  ## 4-byte Folded Spill
	jne	LBB9_20
LBB9_21:
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	callq	_fclose
	movq	%r12, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"wb"

L_.str.1:                               ## @.str.1
	.asciz	"rb"

.subsections_via_symbols
