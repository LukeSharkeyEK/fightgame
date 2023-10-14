	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_clear_data                     ## -- Begin function clear_data
	.p2align	4, 0x90
_clear_data:                            ## @clear_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_user_data(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB0_1
## %bb.2:
	popq	%rbp
	jmp	_free                           ## TAILCALL
LBB0_1:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_settings_init                  ## -- Begin function settings_init
	.p2align	4, 0x90
_settings_init:                         ## @settings_init
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	callq	_action_init
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_prep_fopen
	movq	%rax, %rbx
	movq	_settings@GOTPCREL(%rip), %rdi
	movl	$9, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_fread
	movq	%rbx, %rdi
	callq	_fclose
	movq	_game_mode@GOTPCREL(%rip), %rax
	movw	$0, (%rax)
	movb	$0, 2(%rax)
	leaq	_clear_data(%rip), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_atexit                         ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_set_zero_growths               ## -- Begin function set_zero_growths
	.p2align	4, 0x90
_set_zero_growths:                      ## @set_zero_growths
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_game_mode@GOTPCREL(%rip), %rax
	movb	%dil, (%rax)
	movl	$130, %edi
	popq	%rbp
	jmp	_opening_menu                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_set_hard_mode                  ## -- Begin function set_hard_mode
	.p2align	4, 0x90
_set_hard_mode:                         ## @set_hard_mode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_game_mode@GOTPCREL(%rip), %rax
	movb	%dil, 1(%rax)
	movl	$130, %edi
	popq	%rbp
	jmp	_opening_menu                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_set_secrets_flag               ## -- Begin function set_secrets_flag
	.p2align	4, 0x90
_set_secrets_flag:                      ## @set_secrets_flag
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_game_mode@GOTPCREL(%rip), %rax
	movb	%dil, 2(%rax)
	movl	$130, %edi
	popq	%rbp
	jmp	_opening_menu                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_load_game                      ## -- Begin function load_game
	.p2align	4, 0x90
_load_game:                             ## @load_game
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
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movups	L___const.save_game.filename+15(%rip), %xmm0
	movups	%xmm0, -33(%rbp)
	movaps	L___const.save_game.filename(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	addb	$49, %dil
	movb	%dil, -23(%rbp)
	movl	$4488, %edi                     ## imm = 0x1188
	callq	_malloc
	movq	%rax, _user_data(%rip)
	leaq	L_.str.1(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	_prep_fopen
	movq	%rax, %rbx
	movq	_user_data(%rip), %rdi
	movl	$4488, %esi                     ## imm = 0x1188
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_fread
	movq	%rbx, %rdi
	callq	_fclose
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB5_2
## %bb.1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB5_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_new_game                       ## -- Begin function new_game
	.p2align	4, 0x90
_new_game:                              ## @new_game
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$4488, %edi                     ## imm = 0x1188
	movl	$1, %esi
	callq	_calloc
	movq	%rax, _user_data(%rip)
	movq	_game_mode@GOTPCREL(%rip), %rcx
	movzwl	(%rcx), %edx
	movw	%dx, 4476(%rax)
	movb	2(%rcx), %cl
	movb	%cl, 4478(%rax)
	movb	%bl, 4479(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_exit_game                      ## -- Begin function exit_game
	.p2align	4, 0x90
_exit_game:                             ## @exit_game
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_user_data(%rip), %rdi
	callq	_free
	movq	$0, _user_data(%rip)
	xorl	%edi, %edi
	popq	%rbp
	jmp	_opening_menu                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_save_write                     ## -- Begin function save_write
	.p2align	4, 0x90
_save_write:                            ## @save_write
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
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movups	L___const.save_game.filename+15(%rip), %xmm0
	movups	%xmm0, -49(%rbp)
	movaps	L___const.save_game.filename(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movb	4479(%rdi), %al
	addb	$49, %al
	movb	%al, -39(%rbp)
	leaq	L_.str.2(%rip), %rsi
	leaq	-64(%rbp), %rdi
	callq	_prep_fopen
	movq	%rax, %rbx
	movl	$4488, %esi                     ## imm = 0x1188
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rax, %rcx
	callq	_fwrite
	movq	%rbx, %rdi
	callq	_fclose
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB8_2
## %bb.1:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB8_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_save_game                      ## -- Begin function save_game
	.p2align	4, 0x90
_save_game:                             ## @save_game
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
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movups	L___const.save_game.filename+15(%rip), %xmm0
	movups	%xmm0, -33(%rbp)
	movaps	L___const.save_game.filename(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movq	_user_data(%rip), %rax
	movb	4479(%rax), %al
	addb	$49, %al
	movb	%al, -23(%rbp)
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	_prep_fopen
	movq	%rax, %rbx
	movq	_user_data(%rip), %rdi
	movl	$4488, %esi                     ## imm = 0x1188
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_fwrite
	movq	%rbx, %rdi
	callq	_fclose
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB9_2
## %bb.1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB9_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_user_data                      ## @user_data
.zerofill __DATA,__common,_user_data,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"data/user_data/settings.dat"

L_.str.1:                               ## @.str.1
	.asciz	"rb"

	.comm	_settings,9,0                   ## @settings
	.comm	_game_mode,3,0                  ## @game_mode
L_.str.2:                               ## @.str.2
	.asciz	"wb"

	.p2align	4                               ## @__const.save_game.filename
L___const.save_game.filename:
	.asciz	"data/user_data/save_data_X.dat"

.subsections_via_symbols
