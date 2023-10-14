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
	.globl	_init_unit_file                 ## -- Begin function init_unit_file
	.p2align	4, 0x90
_init_unit_file:                        ## @init_unit_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_action_init
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	movq	_unit_data_close@GOTPCREL(%rip), %rdi
	popq	%rbp
	jmp	_atexit                         ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_gain_exp                  ## -- Begin function unit_gain_exp
	.p2align	4, 0x90
_unit_gain_exp:                         ## @unit_gain_exp
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	241(%rdi), %al
	cmpb	$60, %al
	je	LBB2_1
## %bb.2:
	movq	%rdi, %r15
	addb	240(%rdi), %sil
	movb	%sil, 240(%rdi)
	cmpb	$100, %sil
	jae	LBB2_4
LBB2_1:
	xorl	%eax, %eax
	jmp	LBB2_21
LBB2_4:
	movq	%rdx, %r14
	addb	$-100, %sil
	movb	%sil, 240(%r15)
	addb	$1, %al
	movb	%al, 241(%r15)
	movzbl	224(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, (%rdx)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_6
## %bb.5:
	leal	1(%r12), %eax
	movb	%al, (%r14)
LBB2_6:
	movzbl	225(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 1(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_8
## %bb.7:
	leal	1(%r12), %eax
	movb	%al, 1(%r14)
LBB2_8:
	movzbl	226(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 2(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_10
## %bb.9:
	leal	1(%r12), %eax
	movb	%al, 2(%r14)
LBB2_10:
	movzbl	227(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 3(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_12
## %bb.11:
	leal	1(%r12), %eax
	movb	%al, 3(%r14)
LBB2_12:
	movzbl	228(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 4(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_14
## %bb.13:
	leal	1(%r12), %eax
	movb	%al, 4(%r14)
LBB2_14:
	movzbl	229(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 5(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_16
## %bb.15:
	leal	1(%r12), %eax
	movb	%al, 5(%r14)
LBB2_16:
	movzbl	230(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 6(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_18
## %bb.17:
	leal	1(%r12), %eax
	movb	%al, 6(%r14)
LBB2_18:
	movzbl	231(%r15), %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%rbx,%rax,8), %r12d
	shrl	$12, %r12d
	movb	%r12b, 7(%r14)
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	imull	$100, %r12d, %ecx
	subb	%cl, %bl
	movzbl	%bl, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_20
## %bb.19:
	addb	$1, 7(%r14)
LBB2_20:
	movdqu	208(%r15), %xmm0
	movq	(%r14), %xmm1                   ## xmm1 = mem[0],zero
	pshufd	$68, %xmm1, %xmm1               ## xmm1 = xmm1[0,1,0,1]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 208(%r15)
	movb	$1, %al
LBB2_21:
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stats_add                      ## -- Begin function stats_add
	.p2align	4, 0x90
_stats_add:                             ## @stats_add
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	addq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_init_map                  ## -- Begin function unit_init_map
	.p2align	4, 0x90
_unit_init_map:                         ## @unit_init_map
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	216(%rdi), %rax
	movq	%rax, 208(%rdi)
	movw	$1, 204(%rdi)
	movb	$0, 199(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_stats_set                      ## -- Begin function stats_set
	.p2align	4, 0x90
_stats_set:                             ## @stats_set
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_copy                      ## -- Begin function unit_copy
	.p2align	4, 0x90
_unit_copy:                             ## @unit_copy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$256, %edx                      ## imm = 0x100
	callq	_memcpy
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_equip_item                ## -- Begin function unit_equip_item
	.p2align	4, 0x90
_unit_equip_item:                       ## @unit_equip_item
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	%esi, %edx
	shlq	$5, %rdx
	movups	(%rdi,%rdx), %xmm0
	movups	16(%rdi,%rdx), %xmm1
	movaps	%xmm1, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	addq	$32, %rdi
	addq	$-32, %rdx
	movq	%rbx, %rsi
	callq	_memmove
	movaps	-48(%rbp), %xmm0
	movaps	-32(%rbp), %xmm1
	movups	%xmm0, (%rbx)
	movups	%xmm1, 16(%rbx)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB7_2
## %bb.1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB7_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_discard_equipped          ## -- Begin function unit_discard_equipped
	.p2align	4, 0x90
_unit_discard_equipped:                 ## @unit_discard_equipped
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movups	32(%rdi), %xmm0
	movups	48(%rdi), %xmm1
	movups	64(%rdi), %xmm2
	movups	80(%rdi), %xmm3
	movups	%xmm0, (%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm2, 32(%rdi)
	movups	%xmm3, 48(%rdi)
	movups	96(%rdi), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	112(%rdi), %xmm0
	movups	%xmm0, 80(%rdi)
	movups	128(%rdi), %xmm0
	movups	%xmm0, 96(%rdi)
	movups	144(%rdi), %xmm0
	movups	%xmm0, 112(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 128(%rdi)
	movups	%xmm0, 144(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_attack                    ## -- Begin function unit_attack
	.p2align	4, 0x90
_unit_attack:                           ## @unit_attack
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
	testl	%ecx, %ecx
	je	LBB9_5
## %bb.1:
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movq	%rsi, %r14
	cmpb	$-1, %dl
	je	LBB9_3
## %bb.2:
	movzbl	%dl, %r12d
	callq	_rand
	movslq	%eax, %rbx
	imulq	$1374389535, %rbx, %rax         ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ebx
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	addl	%ebx, %eax
	addl	%r12d, %r12d
	cmpl	%r12d, %eax
	jge	LBB9_5
LBB9_3:
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movzbl	%r15b, %ecx
	cmpl	%ecx, %eax
	leal	(%r13,%r13,2), %eax
	cmovgel	%r13d, %eax
	movzbl	208(%r14), %ecx
	cmpl	%ecx, %eax
	cmoval	%ecx, %eax
	subb	%al, %cl
	movb	%cl, 208(%r14)
	jmp	LBB9_6
LBB9_5:
	xorl	%eax, %eax
LBB9_6:
	movzbl	%al, %eax
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
	.globl	_unit_get_hit                   ## -- Begin function unit_get_hit
	.p2align	4, 0x90
_unit_get_hit:                          ## @unit_get_hit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	$-1, %al
	cmpb	$13, 255(%rdi)
	je	LBB10_3
## %bb.1:
	movzbl	16(%rdi), %ecx
	testb	%cl, %cl
	js	LBB10_3
## %bb.2:
	movb	15(%rdi), %al
	movzbl	214(%rdi), %edx
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	211(%rsi,%rax,4), %eax
	subl	%eax, %edx
	addl	$127, %edx
	andl	%ecx, %edx
	cmpl	$100, %edx
	movl	$100, %eax
	cmovbl	%edx, %eax
LBB10_3:
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_get_dmg                   ## -- Begin function unit_get_dmg
	.p2align	4, 0x90
_unit_get_dmg:                          ## @unit_get_dmg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzbl	199(%rdi), %edx
	movl	$54, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB11_2
## %bb.1:
	movzbl	208(%r15), %eax
	addl	$-1, %eax
	jmp	LBB11_3
LBB11_2:
	movzbl	15(%rbx), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	testb	%r14b, %r14b
	leal	(%rcx,%rcx,2), %edx
	cmovnel	%ecx, %edx
	shrb	$7, %al
	movzbl	%al, %eax
	leaq	(%rax,%rax,2), %rax
	movzbl	209(%rbx,%rax), %r14d
	addl	%edx, %r14d
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$45, %esi
	callq	_weapon_has_ability
	movl	%r14d, %ecx
	shrl	%ecx
	xorl	%edx, %edx
	testb	%al, %al
	cmovnel	%ecx, %edx
	addl	%r14d, %edx
	cmpl	$255, %edx
	movl	$255, %eax
	cmovbl	%edx, %eax
LBB11_3:
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_get_crit                  ## -- Begin function unit_get_crit
	.p2align	4, 0x90
_unit_get_crit:                         ## @unit_get_crit
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
	cmpb	$4, 255(%rsi)
	jne	LBB12_3
## %bb.1:
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzbl	199(%rdi), %edx
	movl	$55, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB12_4
LBB12_3:
	xorl	%eax, %eax
	jmp	LBB12_5
LBB12_4:
	movzbl	17(%r15), %r12d
	movzbl	214(%r15), %r13d
	movzbl	215(%rbx), %ebx
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$44, %esi
	callq	_weapon_has_ability
	movzbl	%al, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	subl	%eax, %ecx
	subl	%eax, %ecx
	movzbl	%r14b, %eax
	leal	(%rax,%rax,4), %eax
	leal	(%r12,%rax,2), %eax
	addl	%r13d, %eax
	subl	%ebx, %eax
	cmpb	$9, 255(%r15)
	leal	(%rax,%rcx), %edx
	leal	20(%rax,%rcx), %ecx
	cmovnel	%edx, %ecx
	cmpl	$100, %ecx
	movl	$100, %eax
	cmovll	%ecx, %eax
LBB12_5:
	movzbl	%al, %eax
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
	.globl	_unit_can_counter               ## -- Begin function unit_can_counter
	.p2align	4, 0x90
_unit_can_counter:                      ## @unit_can_counter
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$0, 26(%rdi)
	je	LBB13_5
## %bb.1:
	movq	%rdi, %rbx
	movb	$1, %r15b
	cmpb	$15, 255(%rdi)
	je	LBB13_6
## %bb.2:
	movl	%esi, %r14d
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$46, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	jne	LBB13_6
## %bb.3:
	cmpb	%r14b, 19(%rbx)
	jbe	LBB13_7
LBB13_5:
	xorl	%r15d, %r15d
LBB13_6:
	movzbl	%r15b, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_7:
	cmpb	%r14b, 20(%rbx)
	setae	%r15b
	jmp	LBB13_6
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_can_follow_up             ## -- Begin function unit_can_follow_up
	.p2align	4, 0x90
_unit_can_follow_up:                    ## @unit_can_follow_up
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	199(%rdi), %edx
	movl	$40, %esi
	callq	_weapon_has_ability
	movb	$1, %cl
	testb	%al, %al
	jne	LBB14_4
## %bb.1:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$39, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB14_3
## %bb.2:
	xorl	%ecx, %ecx
	jmp	LBB14_4
LBB14_3:
	movzbl	211(%rbx), %eax
	movzbl	211(%r14), %ecx
	addl	$4, %ecx
	cmpl	%eax, %ecx
	setb	%cl
LBB14_4:
	movzbl	%cl, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_get_forecast              ## -- Begin function unit_get_forecast
	.p2align	4, 0x90
_unit_get_forecast:                     ## @unit_get_forecast
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
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movb	22(%rdx), %al
	testb	%al, %al
	je	LBB15_2
## %bb.1:
	movzbl	199(%rbx), %edx
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	_weapon_has_ability
	movb	$1, %r13b
	testb	%al, %al
	jne	LBB15_3
LBB15_2:
	movb	200(%r15), %al
	addb	$13, %al
	movzbl	199(%rbx), %edx
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	_weapon_has_ability
	testb	%al, %al
	setne	%r13b
LBB15_3:
	movb	$-1, %al
	cmpb	$13, 255(%rbx)
	je	LBB15_6
## %bb.4:
	movzbl	16(%rbx), %ecx
	testb	%cl, %cl
	js	LBB15_6
## %bb.5:
	movb	15(%rbx), %al
	movzbl	214(%rbx), %edx
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	211(%r15,%rax,4), %eax
	subl	%eax, %edx
	addl	$127, %edx
	andl	%ecx, %edx
	cmpl	$100, %edx
	movl	$100, %eax
	cmovbl	%edx, %eax
LBB15_6:
	movb	%al, (%r14)
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$54, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_10
## %bb.7:
	movzbl	208(%r15), %eax
	addl	$-1, %eax
	movb	%al, 1(%r14)
	cmpb	$4, 255(%r15)
	jne	LBB15_11
	jmp	LBB15_8
LBB15_10:
	movzbl	15(%rbx), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	testb	%r13b, %r13b
	leal	(%rcx,%rcx,2), %edx
	cmovnel	%ecx, %edx
	shrb	$7, %al
	movzbl	%al, %eax
	leaq	(%rax,%rax,2), %rax
	movb	%r13b, -44(%rbp)                ## 1-byte Spill
	movl	%r12d, %r13d
	movzbl	209(%rbx,%rax), %r12d
	addl	%edx, %r12d
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$45, %esi
	callq	_weapon_has_ability
	movl	%r12d, %ecx
	shrl	%ecx
	xorl	%edx, %edx
	testb	%al, %al
	cmovnel	%ecx, %edx
	addl	%r12d, %edx
	movl	%r13d, %r12d
	movb	-44(%rbp), %r13b                ## 1-byte Reload
	cmpl	$255, %edx
	movl	$255, %eax
	cmovbl	%edx, %eax
	movb	%al, 1(%r14)
	cmpb	$4, 255(%r15)
	jne	LBB15_11
LBB15_8:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$55, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_12
LBB15_11:
	xorl	%eax, %eax
LBB15_13:
	movb	%al, 2(%r14)
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$38, %esi
	callq	_weapon_has_ability
	cmpb	$1, %al
	movb	$1, %al
	adcb	$0, %al
	movb	%al, 3(%r14)
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$40, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_17
## %bb.14:
	movb	$1, 8(%r14)
LBB15_15:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$43, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_20
## %bb.16:
	movb	$0, 8(%r14)
	shlb	3(%r14)
	jmp	LBB15_20
LBB15_17:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$39, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_19
## %bb.18:
	movb	$0, 8(%r14)
	jmp	LBB15_20
LBB15_12:
	movl	%r12d, -44(%rbp)                ## 4-byte Spill
	movzbl	17(%rbx), %r12d
	movzbl	214(%rbx), %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	movzbl	215(%r15), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$44, %esi
	callq	_weapon_has_ability
	movzbl	%al, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	subl	%eax, %ecx
	subl	%eax, %ecx
	movzbl	%r13b, %eax
	leal	(%rax,%rax,4), %eax
	leal	(%r12,%rax,2), %eax
	movl	-44(%rbp), %r12d                ## 4-byte Reload
	addl	-52(%rbp), %eax                 ## 4-byte Folded Reload
	subl	-48(%rbp), %eax                 ## 4-byte Folded Reload
	cmpb	$9, 255(%rbx)
	leal	(%rax,%rcx), %edx
	leal	20(%rax,%rcx), %ecx
	cmovnel	%edx, %ecx
	cmpl	$100, %ecx
	movl	$100, %eax
	cmovll	%ecx, %eax
	jmp	LBB15_13
LBB15_19:
	movzbl	211(%rbx), %eax
	movzbl	211(%r15), %ecx
	addl	$4, %ecx
	cmpl	%eax, %ecx
	setb	8(%r14)
	jb	LBB15_15
LBB15_20:
	cmpb	$0, 26(%r15)
	je	LBB15_37
## %bb.21:
	cmpb	$15, 255(%r15)
	je	LBB15_23
## %bb.22:
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$46, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_36
LBB15_23:
	movb	$1, 11(%r14)
LBB15_24:
	movb	22(%rbx), %al
	testb	%al, %al
	je	LBB15_26
## %bb.25:
	movzbl	199(%r15), %edx
	movzbl	%al, %esi
	movq	%r15, %rdi
	callq	_weapon_has_ability
	movb	$1, %r12b
	testb	%al, %al
	jne	LBB15_27
LBB15_26:
	movb	200(%rbx), %al
	addb	$13, %al
	movzbl	199(%r15), %edx
	movzbl	%al, %esi
	movq	%r15, %rdi
	callq	_weapon_has_ability
	testb	%al, %al
	setne	%r12b
LBB15_27:
	movb	$-1, %al
	cmpb	$13, 255(%r15)
	je	LBB15_30
## %bb.28:
	movzbl	16(%r15), %ecx
	testb	%cl, %cl
	js	LBB15_30
## %bb.29:
	movb	15(%r15), %al
	movzbl	214(%r15), %edx
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	211(%rbx,%rax,4), %eax
	subl	%eax, %edx
	addl	$127, %edx
	andl	%ecx, %edx
	cmpl	$100, %edx
	movl	$100, %eax
	cmovbl	%edx, %eax
LBB15_30:
	movb	%al, 4(%r14)
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$54, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_34
## %bb.31:
	movzbl	208(%rbx), %eax
	addl	$-1, %eax
	movb	%al, 5(%r14)
	cmpb	$4, 255(%rbx)
	jne	LBB15_35
	jmp	LBB15_32
LBB15_34:
	movzbl	15(%r15), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	testb	%r12b, %r12b
	leal	(%rcx,%rcx,2), %edx
	cmovnel	%ecx, %edx
	shrb	$7, %al
	movzbl	%al, %eax
	leaq	(%rax,%rax,2), %rax
	movzbl	209(%r15,%rax), %r13d
	addl	%edx, %r13d
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$45, %esi
	callq	_weapon_has_ability
	movl	%r13d, %ecx
	shrl	%ecx
	xorl	%edx, %edx
	testb	%al, %al
	cmovnel	%ecx, %edx
	addl	%r13d, %edx
	cmpl	$255, %edx
	movl	$255, %eax
	cmovbl	%edx, %eax
	movb	%al, 5(%r14)
	cmpb	$4, 255(%rbx)
	jne	LBB15_35
LBB15_32:
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$55, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_39
LBB15_35:
	xorl	%eax, %eax
LBB15_40:
	movb	%al, 6(%r14)
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$38, %esi
	callq	_weapon_has_ability
	cmpb	$1, %al
	movb	$1, %al
	adcb	$0, %al
	movb	%al, 7(%r14)
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$40, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_44
## %bb.41:
	movb	$1, 9(%r14)
LBB15_42:
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$43, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_47
## %bb.43:
	movb	$0, 9(%r14)
	shlb	7(%r14)
	jmp	LBB15_47
LBB15_44:
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$39, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB15_46
## %bb.45:
	movb	$0, 9(%r14)
	jmp	LBB15_47
LBB15_36:
	cmpb	%r12b, 19(%r15)
	jbe	LBB15_50
LBB15_37:
	movb	$0, 11(%r14)
LBB15_38:
	movb	$0, 7(%r14)
	movb	$0, 9(%r14)
	xorl	%ecx, %ecx
	jmp	LBB15_49
LBB15_39:
	movzbl	17(%r15), %r13d
	movzbl	214(%r15), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movzbl	215(%rbx), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$44, %esi
	callq	_weapon_has_ability
	movzbl	%al, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	subl	%eax, %ecx
	subl	%eax, %ecx
	movzbl	%r12b, %eax
	leal	(%rax,%rax,4), %eax
	leal	(%r13,%rax,2), %eax
	addl	-48(%rbp), %eax                 ## 4-byte Folded Reload
	subl	-44(%rbp), %eax                 ## 4-byte Folded Reload
	cmpb	$9, 255(%r15)
	leal	(%rax,%rcx), %edx
	leal	20(%rax,%rcx), %ecx
	cmovnel	%edx, %ecx
	cmpl	$100, %ecx
	movl	$100, %eax
	cmovll	%ecx, %eax
	jmp	LBB15_40
LBB15_46:
	movzbl	211(%r15), %eax
	movzbl	211(%rbx), %ecx
	addl	$4, %ecx
	cmpl	%eax, %ecx
	setb	9(%r14)
	jb	LBB15_42
LBB15_47:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$42, %esi
	callq	_weapon_has_ability
	movb	$1, %cl
	testb	%al, %al
	jne	LBB15_49
## %bb.48:
	movzbl	199(%r15), %edx
	movq	%r15, %rdi
	movl	$41, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	setne	%cl
LBB15_49:
	movb	%cl, 10(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB15_50:
	cmpb	%r12b, 20(%r15)
	setae	11(%r14)
	jae	LBB15_24
	jmp	LBB15_38
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_run_forecast_aux          ## -- Begin function unit_run_forecast_aux
	.p2align	4, 0x90
_unit_run_forecast_aux:                 ## @unit_run_forecast_aux
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
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpb	$0, 10(%rdi)
	je	LBB16_1
## %bb.14:
	rolq	$32, (%r12)
	rolw	$8, 8(%r12)
	movb	$0, 10(%r12)
	movq	%r12, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_unit_run_forecast              ## TAILCALL
LBB16_1:
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	movzbl	3(%r12), %eax
	testl	%eax, %eax
	movq	%r14, -64(%rbp)                 ## 8-byte Spill
	je	LBB16_10
## %bb.2:
	movb	1(%r12), %bl
	testb	%bl, %bl
	je	LBB16_4
## %bb.3:
	movl	$1, %r13d
	testb	%bl, %bl
	je	LBB16_21
	.p2align	4, 0x90
LBB16_18:
	movzbl	(%r12), %r15d
	movzbl	2(%r12), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpb	$-1, %r15b
	je	LBB16_20
## %bb.19:
	callq	_rand
	movslq	%eax, %r14
	imulq	$1374389535, %r14, %rax         ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %r14d
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	addl	%r14d, %eax
	movq	-64(%rbp), %r14                 ## 8-byte Reload
	addl	%r15d, %r15d
	cmpl	%r15d, %eax
	jge	LBB16_21
LBB16_20:
	movzbl	%bl, %ebx
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cmpl	-44(%rbp), %eax                 ## 4-byte Folded Reload
	leal	(%rbx,%rbx,2), %ecx
	cmovgel	%ebx, %ecx
	movq	-56(%rbp), %rdx                 ## 8-byte Reload
	movzbl	208(%rdx), %eax
	cmpl	%eax, %ecx
	cmoval	%eax, %ecx
	subb	%cl, %al
	movb	%al, 208(%rdx)
	testb	%al, %al
	jne	LBB16_15
	jmp	LBB16_73
	.p2align	4, 0x90
LBB16_21:
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movb	208(%rax), %al
	testb	%al, %al
	je	LBB16_73
LBB16_15:
	movzbl	3(%r12), %eax
	cmpl	%eax, %r13d
	jae	LBB16_10
## %bb.16:
	movb	1(%r12), %bl
	addl	$1, %r13d
	testb	%bl, %bl
	jne	LBB16_18
	jmp	LBB16_21
LBB16_4:
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	cmpb	$0, 208(%rcx)
	je	LBB16_73
## %bb.5:
	leal	-1(%rax), %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jb	LBB16_8
## %bb.6:
	andl	$-8, %eax
	negl	%eax
	.p2align	4, 0x90
LBB16_7:                                ## =>This Inner Loop Header: Depth=1
	addl	$8, %eax
	jne	LBB16_7
LBB16_8:
	testl	%ecx, %ecx
	je	LBB16_10
	.p2align	4, 0x90
LBB16_9:                                ## =>This Inner Loop Header: Depth=1
	addl	$-1, %ecx
	jne	LBB16_9
LBB16_10:
	cmpb	$0, 11(%r12)
	je	LBB16_29
## %bb.11:
	movzbl	7(%r12), %eax
	testl	%eax, %eax
	je	LBB16_29
## %bb.12:
	movb	5(%r12), %r15b
	testb	%r15b, %r15b
	je	LBB16_23
## %bb.13:
	movl	$1, %r13d
	testb	%r15b, %r15b
	je	LBB16_39
	.p2align	4, 0x90
LBB16_36:
	movzbl	4(%r12), %ebx
	movzbl	6(%r12), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpb	$-1, %bl
	je	LBB16_38
## %bb.37:
	callq	_rand
	movslq	%eax, %r14
	imulq	$1374389535, %r14, %rax         ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %r14d
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	addl	%r14d, %eax
	movq	-64(%rbp), %r14                 ## 8-byte Reload
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jge	LBB16_39
LBB16_38:
	movzbl	%r15b, %ebx
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cmpl	-44(%rbp), %eax                 ## 4-byte Folded Reload
	leal	(%rbx,%rbx,2), %ecx
	cmovgel	%ebx, %ecx
	movzbl	208(%r14), %eax
	cmpl	%eax, %ecx
	cmoval	%eax, %ecx
	subb	%cl, %al
	movb	%al, 208(%r14)
	jmp	LBB16_40
	.p2align	4, 0x90
LBB16_39:
	movb	208(%r14), %al
LBB16_40:
	testb	%al, %al
	je	LBB16_73
## %bb.33:
	movzbl	7(%r12), %eax
	cmpl	%eax, %r13d
	jae	LBB16_29
## %bb.34:
	movb	5(%r12), %r15b
	addl	$1, %r13d
	testb	%r15b, %r15b
	jne	LBB16_36
	jmp	LBB16_39
LBB16_23:
	cmpb	$0, 208(%r14)
	je	LBB16_73
## %bb.24:
	leal	-1(%rax), %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jb	LBB16_27
## %bb.25:
	andl	$-8, %eax
	negl	%eax
	.p2align	4, 0x90
LBB16_26:                               ## =>This Inner Loop Header: Depth=1
	addl	$8, %eax
	jne	LBB16_26
LBB16_27:
	testl	%ecx, %ecx
	je	LBB16_29
	.p2align	4, 0x90
LBB16_28:                               ## =>This Inner Loop Header: Depth=1
	addl	$-1, %ecx
	jne	LBB16_28
LBB16_29:
	cmpb	$0, 8(%r12)
	je	LBB16_47
## %bb.30:
	movzbl	3(%r12), %eax
	testl	%eax, %eax
	je	LBB16_47
## %bb.31:
	movb	1(%r12), %r15b
	testb	%r15b, %r15b
	je	LBB16_41
## %bb.32:
	movl	$1, %r13d
	testb	%r15b, %r15b
	je	LBB16_57
	.p2align	4, 0x90
LBB16_54:
	movzbl	(%r12), %ebx
	movzbl	2(%r12), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpb	$-1, %bl
	je	LBB16_56
## %bb.55:
	callq	_rand
	movslq	%eax, %r14
	imulq	$1374389535, %r14, %rax         ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %r14d
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	addl	%r14d, %eax
	movq	-64(%rbp), %r14                 ## 8-byte Reload
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jge	LBB16_57
LBB16_56:
	movzbl	%r15b, %ebx
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cmpl	-44(%rbp), %eax                 ## 4-byte Folded Reload
	leal	(%rbx,%rbx,2), %ecx
	cmovgel	%ebx, %ecx
	movq	-56(%rbp), %rdx                 ## 8-byte Reload
	movzbl	208(%rdx), %eax
	cmpl	%eax, %ecx
	cmoval	%eax, %ecx
	subb	%cl, %al
	movb	%al, 208(%rdx)
	jmp	LBB16_58
	.p2align	4, 0x90
LBB16_57:
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movb	208(%rax), %al
LBB16_58:
	testb	%al, %al
	je	LBB16_73
## %bb.51:
	movzbl	3(%r12), %eax
	cmpl	%eax, %r13d
	jae	LBB16_47
## %bb.52:
	movb	1(%r12), %r15b
	addl	$1, %r13d
	testb	%r15b, %r15b
	jne	LBB16_54
	jmp	LBB16_57
LBB16_41:
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	cmpb	$0, 208(%rcx)
	je	LBB16_73
## %bb.42:
	leal	-1(%rax), %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jb	LBB16_45
## %bb.43:
	andl	$-8, %eax
	negl	%eax
	.p2align	4, 0x90
LBB16_44:                               ## =>This Inner Loop Header: Depth=1
	addl	$8, %eax
	jne	LBB16_44
LBB16_45:
	testl	%ecx, %ecx
	je	LBB16_47
	.p2align	4, 0x90
LBB16_46:                               ## =>This Inner Loop Header: Depth=1
	addl	$-1, %ecx
	jne	LBB16_46
LBB16_47:
	cmpb	$0, 9(%r12)
	je	LBB16_73
## %bb.48:
	movzbl	7(%r12), %eax
	testl	%eax, %eax
	je	LBB16_73
## %bb.49:
	movb	5(%r12), %r13b
	testb	%r13b, %r13b
	je	LBB16_59
## %bb.50:
	movl	$1, %r15d
	testb	%r13b, %r13b
	je	LBB16_71
	.p2align	4, 0x90
LBB16_68:
	movzbl	4(%r12), %ebx
	movzbl	6(%r12), %eax
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
	cmpb	$-1, %bl
	je	LBB16_70
## %bb.69:
	callq	_rand
	movslq	%eax, %r14
	imulq	$1374389535, %r14, %rax         ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %r14d
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	addl	%r14d, %eax
	movq	-64(%rbp), %r14                 ## 8-byte Reload
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jge	LBB16_71
LBB16_70:
	movzbl	%r13b, %ebx
	callq	_rand
	cltq
	imulq	$1374389535, %rax, %rcx         ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cmpl	-56(%rbp), %eax                 ## 4-byte Folded Reload
	leal	(%rbx,%rbx,2), %ecx
	cmovgel	%ebx, %ecx
	movzbl	208(%r14), %eax
	cmpl	%eax, %ecx
	cmoval	%eax, %ecx
	subb	%cl, %al
	movb	%al, 208(%r14)
	jmp	LBB16_72
	.p2align	4, 0x90
LBB16_71:
	movb	208(%r14), %al
LBB16_72:
	testb	%al, %al
	je	LBB16_73
## %bb.65:
	movzbl	7(%r12), %eax
	cmpl	%eax, %r15d
	jae	LBB16_73
## %bb.66:
	movb	5(%r12), %r13b
	addl	$1, %r15d
	testb	%r13b, %r13b
	jne	LBB16_68
	jmp	LBB16_71
LBB16_59:
	cmpb	$0, 208(%r14)
	je	LBB16_73
## %bb.60:
	leal	-1(%rax), %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jb	LBB16_63
## %bb.61:
	andl	$-8, %eax
	negl	%eax
	.p2align	4, 0x90
LBB16_62:                               ## =>This Inner Loop Header: Depth=1
	addl	$8, %eax
	jne	LBB16_62
LBB16_63:
	testl	%ecx, %ecx
	je	LBB16_73
	.p2align	4, 0x90
LBB16_64:                               ## =>This Inner Loop Header: Depth=1
	addl	$-1, %ecx
	jne	LBB16_64
LBB16_73:
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
	.globl	_unit_run_forecast              ## -- Begin function unit_run_forecast
	.p2align	4, 0x90
_unit_run_forecast:                     ## @unit_run_forecast
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	_unit_run_forecast_aux
	cmpb	$0, 11(%rbx)
	je	LBB17_2
## %bb.1:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_unit_run_forecast_apply
LBB17_2:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_unit_run_forecast_apply
	movb	208(%r15), %cl
	movb	216(%r15), %al
	shrb	%al
	cmpb	%al, %cl
	setbe	199(%r15)
	movb	208(%r14), %al
	movb	216(%r14), %dl
	shrb	%dl
	cmpb	%dl, %al
	setbe	199(%r14)
	testb	%cl, %cl
	je	LBB17_3
## %bb.5:
	testb	%al, %al
	je	LBB17_6
## %bb.8:
	cmpb	$0, 196(%r15)
	je	LBB17_10
## %bb.9:
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	movl	$3, %esi
	callq	_unit_gain_exp
LBB17_10:
	cmpb	$0, 196(%r14)
	je	LBB17_13
## %bb.11:
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	movl	$3, %esi
	jmp	LBB17_12
LBB17_3:
	movb	$-1, 202(%r15)
	cmpb	$0, 196(%r14)
	je	LBB17_13
## %bb.4:
	movzbl	241(%r15), %eax
	movzbl	241(%r14), %ecx
	subl	%ecx, %eax
	cmpl	$-5, %eax
	movl	$-5, %ecx
	cmovll	%eax, %ecx
	movzbl	198(%r15), %eax
	leal	(%rax,%rax,2), %eax
	leal	(%rcx,%rax,4), %eax
	movzbl	%al, %esi
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	jmp	LBB17_12
LBB17_6:
	movb	$-1, 202(%r14)
	cmpb	$0, 196(%r15)
	je	LBB17_13
## %bb.7:
	movzbl	241(%r14), %eax
	movzbl	241(%r15), %ecx
	subl	%ecx, %eax
	cmpl	$-5, %eax
	movl	$-5, %ecx
	cmovll	%eax, %ecx
	movzbl	198(%r14), %eax
	leal	(%rax,%rax,2), %eax
	leal	(%rcx,%rax,4), %eax
	movzbl	%al, %esi
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
LBB17_12:
	callq	_unit_gain_exp
LBB17_13:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB17_15
## %bb.14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_15:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_run_forecast_apply        ## -- Begin function unit_run_forecast_apply
	.p2align	4, 0x90
_unit_run_forecast_apply:               ## @unit_run_forecast_apply
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	199(%rdi), %edx
	movl	$17, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB18_2
## %bb.1:
	movb	$1, 205(%r14)
LBB18_20:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB18_2:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$18, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB18_4
## %bb.3:
	movb	$8, 205(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB18_4:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$19, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB18_6
## %bb.5:
	movb	$2, 205(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB18_6:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$20, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB18_8
## %bb.7:
	movb	$4, 205(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB18_8:
	movb	210(%r14), %cl
	cmpb	$2, %cl
	jb	LBB18_20
## %bb.9:
	cmpb	$2, 213(%r14)
	jb	LBB18_12
## %bb.10:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$21, %esi
	callq	_weapon_has_ability
	movb	210(%r14), %cl
	testb	%al, %al
	je	LBB18_12
## %bb.11:
	addb	$-2, %cl
	movb	%cl, 210(%r14)
	addb	$-2, 213(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB18_12:
	cmpb	$4, %cl
	jb	LBB18_20
## %bb.13:
	cmpb	$4, 213(%r14)
	jb	LBB18_16
## %bb.14:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$22, %esi
	callq	_weapon_has_ability
	movb	210(%r14), %cl
	testb	%al, %al
	je	LBB18_16
## %bb.15:
	addb	$-4, %cl
	movb	%cl, 210(%r14)
	addb	$-4, 213(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB18_16:
	cmpb	$6, %cl
	jb	LBB18_20
## %bb.17:
	cmpb	$6, 213(%r14)
	jb	LBB18_20
## %bb.18:
	movzbl	199(%rbx), %edx
	movq	%rbx, %rdi
	movl	$23, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB18_20
## %bb.19:
	addb	$-6, 210(%r14)
	addb	$-6, 213(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_defeated                  ## -- Begin function unit_defeated
	.p2align	4, 0x90
_unit_defeated:                         ## @unit_defeated
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movb	$-1, 202(%rsi)
	cmpb	$0, 196(%rdi)
	je	LBB19_2
## %bb.1:
	movzbl	241(%rsi), %eax
	movzbl	241(%rdi), %ecx
	subl	%ecx, %eax
	cmpl	$-5, %eax
	movl	$-5, %ecx
	cmovll	%eax, %ecx
	movzbl	198(%rsi), %eax
	leal	(%rax,%rax,2), %eax
	leal	(%rcx,%rax,4), %eax
	movzbl	%al, %esi
	leaq	-16(%rbp), %rdx
	callq	_unit_gain_exp
LBB19_2:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB19_4
## %bb.3:
	addq	$16, %rsp
	popq	%rbp
	retq
LBB19_4:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_promote                   ## -- Begin function unit_promote
	.p2align	4, 0x90
_unit_promote:                          ## @unit_promote
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	232(%rdi), %rax
	addq	%rax, 216(%rdi)
	addb	$1, 206(%rdi)
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_prep_fopen
	movq	%rax, %r14
	movzbl	206(%rbx), %esi
	shlq	$5, %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	_fseek
	leaq	-18(%rbp), %rdi
	movl	$2, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_fread
	movq	%r14, %rdi
	callq	_fclose
	movzwl	-18(%rbp), %eax
	cmpb	$31, 243(%rbx)
	ja	LBB20_3
## %bb.1:
	movl	%eax, %ecx
	andl	$32, %ecx
	je	LBB20_3
## %bb.2:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 243(%rbx)
LBB20_3:
	cmpb	$31, 244(%rbx)
	ja	LBB20_6
## %bb.4:
	movl	%eax, %ecx
	andl	$64, %ecx
	je	LBB20_6
## %bb.5:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 244(%rbx)
LBB20_6:
	cmpb	$31, 245(%rbx)
	ja	LBB20_9
## %bb.7:
	movl	%eax, %ecx
	andl	$96, %ecx
	je	LBB20_9
## %bb.8:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 245(%rbx)
LBB20_9:
	cmpb	$31, 246(%rbx)
	ja	LBB20_12
## %bb.10:
	testb	%al, %al
	jns	LBB20_12
## %bb.11:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 246(%rbx)
LBB20_12:
	cmpb	$31, 247(%rbx)
	ja	LBB20_15
## %bb.13:
	movl	%eax, %ecx
	andl	$160, %ecx
	je	LBB20_15
## %bb.14:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 247(%rbx)
LBB20_15:
	cmpb	$31, 248(%rbx)
	ja	LBB20_18
## %bb.16:
	movl	%eax, %ecx
	andl	$192, %ecx
	je	LBB20_18
## %bb.17:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 248(%rbx)
LBB20_18:
	cmpb	$31, 249(%rbx)
	ja	LBB20_21
## %bb.19:
	movl	%eax, %ecx
	andl	$224, %ecx
	je	LBB20_21
## %bb.20:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 249(%rbx)
LBB20_21:
	cmpb	$31, 250(%rbx)
	ja	LBB20_24
## %bb.22:
	movl	%eax, %ecx
	andl	$256, %ecx                      ## imm = 0x100
	je	LBB20_24
## %bb.23:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 250(%rbx)
LBB20_24:
	cmpb	$31, 251(%rbx)
	ja	LBB20_27
## %bb.25:
	movl	%eax, %ecx
	andl	$288, %ecx                      ## imm = 0x120
	je	LBB20_27
## %bb.26:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 251(%rbx)
LBB20_27:
	cmpb	$31, 252(%rbx)
	ja	LBB20_30
## %bb.28:
	movl	%eax, %ecx
	andl	$320, %ecx                      ## imm = 0x140
	je	LBB20_30
## %bb.29:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 252(%rbx)
LBB20_30:
	cmpb	$31, 253(%rbx)
	ja	LBB20_33
## %bb.31:
	movl	%eax, %ecx
	andl	$352, %ecx                      ## imm = 0x160
	je	LBB20_33
## %bb.32:
	movb	241(%rbx), %cl
	addb	%cl, %cl
	addb	$32, %cl
	movb	%cl, 253(%rbx)
LBB20_33:
	cmpb	$31, 254(%rbx)
	ja	LBB20_36
## %bb.34:
	andl	$384, %eax                      ## imm = 0x180
	je	LBB20_36
## %bb.35:
	movb	241(%rbx), %al
	addb	%al, %al
	addb	$32, %al
	movb	%al, 254(%rbx)
LBB20_36:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_item_use                  ## -- Begin function unit_item_use
	.p2align	4, 0x90
_unit_item_use:                         ## @unit_item_use
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %ebx
	shlq	$5, %rbx
	movb	$-1, %r15b
	testb	$64, 27(%rdi,%rbx)
	jne	LBB21_27
## %bb.1:
	movq	%rdi, %r12
	movzbl	22(%rdi,%rbx), %eax
	movb	242(%rdi,%rax), %al
	cmpb	23(%rdi,%rbx), %al
	jb	LBB21_27
## %bb.2:
	cmpb	$0, 24(%r12,%rbx)
	jne	LBB21_27
## %bb.3:
	leaq	(%r12,%rbx), %r14
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$31, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_5
## %bb.4:
	movb	216(%r12), %al
	movb	%al, 208(%r12)
	jmp	LBB21_9
LBB21_5:
	movzbl	21(%r12,%rbx), %eax
	testl	%eax, %eax
	je	LBB21_7
## %bb.6:
	movzbl	216(%r12), %ecx
	movzbl	208(%r12), %edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmoval	%ecx, %edx
	movb	%dl, 208(%r12)
LBB21_7:
	cmpb	$8, 255(%r12)
	jne	LBB21_9
## %bb.8:
	movzbl	216(%r12), %eax
	movzbl	208(%r12), %ecx
	addl	$6, %ecx
	cmpl	%eax, %ecx
	cmoval	%eax, %ecx
	movb	%cl, 208(%r12)
LBB21_9:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$25, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_11
## %bb.10:
	addb	$3, 209(%r12)
LBB21_11:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$26, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_13
## %bb.12:
	addb	$3, 210(%r12)
LBB21_13:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$27, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_15
## %bb.14:
	addb	$3, 211(%r12)
LBB21_15:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$28, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_17
## %bb.16:
	addb	$3, 212(%r12)
LBB21_17:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$29, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_19
## %bb.18:
	addb	$4, 213(%r12)
LBB21_19:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$35, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_21
## %bb.20:
	movb	$0, 205(%r12)
LBB21_21:
	movzbl	199(%r12), %edx
	movq	%r14, %rdi
	movl	$36, %esi
	callq	_weapon_has_ability
	testb	%al, %al
	je	LBB21_24
## %bb.22:
	movzbl	206(%r12), %eax
	imull	$-85, %eax, %eax
	addb	$-86, %al
	cmpb	$85, %al
	jb	LBB21_27
## %bb.23:
	movq	%r12, %rdi
	callq	_unit_promote
LBB21_24:
	addb	$-1, 14(%r12,%rbx)
	jne	LBB21_26
## %bb.25:
	movq	%r14, %rdi
	callq	_weapon_break
LBB21_26:
	xorl	%r15d, %r15d
LBB21_27:
	movzbl	%r15b, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_get_generic               ## -- Begin function unit_get_generic
	.p2align	4, 0x90
_unit_get_generic:                      ## @unit_get_generic
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
	.globl	_stats_zero                     ## -- Begin function stats_zero
	.p2align	4, 0x90
_stats_zero:                            ## @stats_zero
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"data/class_data.dat"

L_.str.1:                               ## @.str.1
	.asciz	"rb"

.subsections_via_symbols
