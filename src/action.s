	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_free_filepath                  ## -- Begin function free_filepath
	.p2align	4, 0x90
_free_filepath:                         ## @free_filepath
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_filepath(%rip), %rdi
	popq	%rbp
	jmp	_free                           ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_action_init                    ## -- Begin function action_init
	.p2align	4, 0x90
_action_init:                           ## @action_init
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
	subq	$80, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpb	$0, _init(%rip)
	jne	LBB1_7
## %bb.1:
	movq	%rdi, %r15
	movb	$1, _init(%rip)
	xorl	%ebx, %ebx
	leaq	-112(%rbp), %r14
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_tcgetattr
	andb	$-2, -87(%rbp)
	movw	$257, -64(%rbp)                 ## imm = 0x101
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	_tcsetattr
	movb	(%r15), %al
	xorl	%r14d, %r14d
	cmpb	$46, %al
	sete	%r14b
	addl	%r14d, %r14d
	xorl	%r12d, %r12d
	cmpb	$47, %al
	jne	LBB1_3
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	addq	$1, %rbx
	movl	%ebx, %r12d
	subl	%r14d, %r12d
	movzbl	(%r15,%rbx), %eax
	cmpb	$47, %al
	je	LBB1_5
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	testb	%al, %al
	je	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	addq	$1, %rbx
	movzbl	(%r15,%rbx), %eax
	cmpb	$47, %al
	jne	LBB1_3
	jmp	LBB1_5
LBB1_6:
	movl	$128, %edi
	callq	_malloc
	movq	%rax, _filepath(%rip)
	movb	%r12b, _length(%rip)
	movl	%r14d, %ecx
	addq	%rcx, %r15
	movslq	%r12d, %r14
	movl	$128, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	___strncpy_chk
	movq	_filepath(%rip), %rax
	movb	$0, (%rax,%r14)
	leaq	_free_filepath(%rip), %rdi
	callq	_atexit
LBB1_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB1_9
## %bb.8:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_9:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_read_char                      ## -- Begin function read_char
	.p2align	4, 0x90
_read_char:                             ## @read_char
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_fpurge
	callq	_getchar
	cmpb	$27, %al
	jne	LBB2_2
## %bb.1:
	callq	_getchar
	callq	_getchar
	cltq
	leaq	_button_map(%rip), %rcx
	movb	-65(%rax,%rcx), %al
LBB2_2:
	movsbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_sleep                          ## -- Begin function sleep
	.p2align	4, 0x90
_sleep:                                 ## @sleep
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, %eax
	imulq	$274877907, %rax, %rax          ## imm = 0x10624DD3
	shrq	$38, %rax
	movq	%rax, -16(%rbp)
	imull	$1000, %eax, %eax               ## imm = 0x3E8
	subl	%eax, %edi
	imull	$1000000, %edi, %eax            ## imm = 0xF4240
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	_nanosleep
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_set_display_text               ## -- Begin function set_display_text
	.p2align	4, 0x90
_set_display_text:                      ## @set_display_text
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_puts                           ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_display_text_and_wait          ## -- Begin function display_text_and_wait
	.p2align	4, 0x90
_display_text_and_wait:                 ## @display_text_and_wait
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_puts
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_fpurge
	callq	_getchar
	cmpb	$27, %al
	jne	LBB5_1
## %bb.2:
	callq	_getchar
	popq	%rbp
	jmp	_getchar                        ## TAILCALL
LBB5_1:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_display_text_and_sleep         ## -- Begin function display_text_and_sleep
	.p2align	4, 0x90
_display_text_and_sleep:                ## @display_text_and_sleep
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movl	%esi, %ebx
	callq	_puts
	movl	%ebx, %eax
	imulq	$274877907, %rax, %rax          ## imm = 0x10624DD3
	shrq	$38, %rax
	movq	%rax, -24(%rbp)
	imull	$1000, %eax, %eax               ## imm = 0x3E8
	subl	%eax, %ebx
	imull	$1000000, %ebx, %eax            ## imm = 0xF4240
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	_nanosleep
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_prep_fopen                     ## -- Begin function prep_fopen
	.p2align	4, 0x90
_prep_fopen:                            ## @prep_fopen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	_filepath(%rip), %rdi
	movzbl	_length(%rip), %r8d
	addq	%rdi, %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%r8,%rdx)
	cmpb	$0, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	jne	LBB7_1
## %bb.2:
	popq	%rbp
	jmp	_fopen                          ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_button_map                     ## @button_map
_button_map:
	.ascii	"wsdazxc"

.zerofill __DATA,__bss,_filepath,8,3    ## @filepath
.zerofill __DATA,__bss,_init,1,0        ## @init
.zerofill __DATA,__bss,_length,1,0      ## @length
.subsections_via_symbols
