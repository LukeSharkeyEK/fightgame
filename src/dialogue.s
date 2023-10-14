	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_dialogue_to_screen             ## -- Begin function dialogue_to_screen
	.p2align	4, 0x90
_dialogue_to_screen:                    ## @dialogue_to_screen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	testl	%edi, %edi
	je	LBB0_2
## %bb.1:
	movl	%edi, %ebx
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_fopen
	movq	%rax, %r14
	movzwl	%bx, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	_fseek
	leaq	-64(%rbp), %rbx
	movl	$1, %esi
	movl	$31, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	_fread
	movq	%r14, %rdi
	callq	_fclose
	movb	$0, -33(%rbp)
	movq	%rbx, %rdi
	callq	_display_text_and_wait
LBB0_2:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB0_4
## %bb.3:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB0_4:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"data/char_dialogue.dat"

L_.str.1:                               ## @.str.1
	.asciz	"rb"

	.comm	_inst,8,2                       ## @inst
.subsections_via_symbols
