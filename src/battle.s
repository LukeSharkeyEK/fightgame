	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_init_map                       ## -- Begin function init_map
	.p2align	4, 0x90
_init_map:                              ## @init_map
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
	.globl	_set_unit_selected              ## -- Begin function set_unit_selected
	.p2align	4, 0x90
_set_unit_selected:                     ## @set_unit_selected
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_cursor_x@GOTPCREL(%rip), %rax
	movb	(%rax), %cl
	movq	_cursor_y@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	cmpb	%cl, _npc_units+202(%rip)
	jne	LBB1_2
## %bb.1:
	movb	$-128, %dl
	cmpb	%al, _npc_units+203(%rip)
	jne	LBB1_2
LBB1_64:
	movb	%dl, _unit_selected(%rip)
	movzbl	%dl, %eax
	popq	%rbp
	retq
LBB1_2:
	cmpb	%cl, _npc_units+458(%rip)
	jne	LBB1_4
## %bb.3:
	movb	$-127, %dl
	cmpb	%al, _npc_units+459(%rip)
	je	LBB1_64
LBB1_4:
	cmpb	%cl, _npc_units+714(%rip)
	jne	LBB1_6
## %bb.5:
	movb	$-126, %dl
	cmpb	%al, _npc_units+715(%rip)
	je	LBB1_64
LBB1_6:
	cmpb	%cl, _npc_units+970(%rip)
	jne	LBB1_8
## %bb.7:
	movb	$-125, %dl
	cmpb	%al, _npc_units+971(%rip)
	je	LBB1_64
LBB1_8:
	cmpb	%cl, _npc_units+1226(%rip)
	jne	LBB1_10
## %bb.9:
	movb	$-124, %dl
	cmpb	%al, _npc_units+1227(%rip)
	je	LBB1_64
LBB1_10:
	cmpb	%cl, _npc_units+1482(%rip)
	jne	LBB1_12
## %bb.11:
	movb	$-123, %dl
	cmpb	%al, _npc_units+1483(%rip)
	je	LBB1_64
LBB1_12:
	cmpb	%cl, _npc_units+1738(%rip)
	jne	LBB1_14
## %bb.13:
	movb	$-122, %dl
	cmpb	%al, _npc_units+1739(%rip)
	je	LBB1_64
LBB1_14:
	cmpb	%cl, _npc_units+1994(%rip)
	jne	LBB1_16
## %bb.15:
	movb	$-121, %dl
	cmpb	%al, _npc_units+1995(%rip)
	je	LBB1_64
LBB1_16:
	cmpb	%cl, _npc_units+2250(%rip)
	jne	LBB1_18
## %bb.17:
	movb	$-120, %dl
	cmpb	%al, _npc_units+2251(%rip)
	je	LBB1_64
LBB1_18:
	cmpb	%cl, _npc_units+2506(%rip)
	jne	LBB1_20
## %bb.19:
	movb	$-119, %dl
	cmpb	%al, _npc_units+2507(%rip)
	je	LBB1_64
LBB1_20:
	cmpb	%cl, _npc_units+2762(%rip)
	jne	LBB1_22
## %bb.21:
	movb	$-118, %dl
	cmpb	%al, _npc_units+2763(%rip)
	je	LBB1_64
LBB1_22:
	cmpb	%cl, _npc_units+3018(%rip)
	jne	LBB1_24
## %bb.23:
	movb	$-117, %dl
	cmpb	%al, _npc_units+3019(%rip)
	je	LBB1_64
LBB1_24:
	cmpb	%cl, _npc_units+3274(%rip)
	jne	LBB1_26
## %bb.25:
	movb	$-116, %dl
	cmpb	%al, _npc_units+3275(%rip)
	je	LBB1_64
LBB1_26:
	cmpb	%cl, _npc_units+3530(%rip)
	jne	LBB1_28
## %bb.27:
	movb	$-115, %dl
	cmpb	%al, _npc_units+3531(%rip)
	je	LBB1_64
LBB1_28:
	cmpb	%cl, _npc_units+3786(%rip)
	jne	LBB1_30
## %bb.29:
	movb	$-114, %dl
	cmpb	%al, _npc_units+3787(%rip)
	je	LBB1_64
LBB1_30:
	cmpb	%cl, _npc_units+4042(%rip)
	jne	LBB1_32
## %bb.31:
	movb	$-113, %dl
	cmpb	%al, _npc_units+4043(%rip)
	je	LBB1_64
LBB1_32:
	cmpb	%cl, _npc_units+4298(%rip)
	jne	LBB1_34
## %bb.33:
	movb	$-112, %dl
	cmpb	%al, _npc_units+4299(%rip)
	je	LBB1_64
LBB1_34:
	cmpb	%cl, _npc_units+4554(%rip)
	jne	LBB1_36
## %bb.35:
	movb	$-111, %dl
	cmpb	%al, _npc_units+4555(%rip)
	je	LBB1_64
LBB1_36:
	cmpb	%cl, _npc_units+4810(%rip)
	jne	LBB1_38
## %bb.37:
	movb	$-110, %dl
	cmpb	%al, _npc_units+4811(%rip)
	je	LBB1_64
LBB1_38:
	cmpb	%cl, _npc_units+5066(%rip)
	jne	LBB1_40
## %bb.39:
	movb	$-109, %dl
	cmpb	%al, _npc_units+5067(%rip)
	je	LBB1_64
LBB1_40:
	cmpb	%cl, _npc_units+5322(%rip)
	jne	LBB1_42
## %bb.41:
	movb	$-108, %dl
	cmpb	%al, _npc_units+5323(%rip)
	je	LBB1_64
LBB1_42:
	cmpb	%cl, _npc_units+5578(%rip)
	jne	LBB1_44
## %bb.43:
	movb	$-107, %dl
	cmpb	%al, _npc_units+5579(%rip)
	je	LBB1_64
LBB1_44:
	cmpb	%cl, _npc_units+5834(%rip)
	jne	LBB1_46
## %bb.45:
	movb	$-106, %dl
	cmpb	%al, _npc_units+5835(%rip)
	je	LBB1_64
LBB1_46:
	cmpb	%cl, _npc_units+6090(%rip)
	jne	LBB1_48
## %bb.47:
	movb	$-105, %dl
	cmpb	%al, _npc_units+6091(%rip)
	je	LBB1_64
LBB1_48:
	cmpb	%cl, _npc_units+6346(%rip)
	jne	LBB1_50
## %bb.49:
	movb	$-104, %dl
	cmpb	%al, _npc_units+6347(%rip)
	je	LBB1_64
LBB1_50:
	cmpb	%cl, _npc_units+6602(%rip)
	jne	LBB1_52
## %bb.51:
	movb	$-103, %dl
	cmpb	%al, _npc_units+6603(%rip)
	je	LBB1_64
LBB1_52:
	cmpb	%cl, _npc_units+6858(%rip)
	jne	LBB1_54
## %bb.53:
	movb	$-102, %dl
	cmpb	%al, _npc_units+6859(%rip)
	je	LBB1_64
LBB1_54:
	cmpb	%cl, _npc_units+7114(%rip)
	jne	LBB1_56
## %bb.55:
	movb	$-101, %dl
	cmpb	%al, _npc_units+7115(%rip)
	je	LBB1_64
LBB1_56:
	cmpb	%cl, _npc_units+7370(%rip)
	jne	LBB1_58
## %bb.57:
	movb	$-100, %dl
	cmpb	%al, _npc_units+7371(%rip)
	je	LBB1_64
LBB1_58:
	cmpb	%cl, _npc_units+7626(%rip)
	jne	LBB1_60
## %bb.59:
	movb	$-99, %dl
	cmpb	%al, _npc_units+7627(%rip)
	je	LBB1_64
LBB1_60:
	movq	_user_data@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rsi
	cmpb	%cl, 202(%rsi)
	jne	LBB1_65
## %bb.61:
	cmpb	%al, 203(%rsi)
	jne	LBB1_65
## %bb.62:
	xorl	%edi, %edi
	jmp	LBB1_63
LBB1_65:
	cmpb	%cl, 458(%rsi)
	jne	LBB1_67
## %bb.66:
	movb	$1, %dil
	cmpb	%al, 459(%rsi)
	je	LBB1_63
LBB1_67:
	cmpb	%cl, 714(%rsi)
	jne	LBB1_69
## %bb.68:
	movb	$2, %dil
	cmpb	%al, 715(%rsi)
	je	LBB1_63
LBB1_69:
	cmpb	%cl, 970(%rsi)
	jne	LBB1_71
## %bb.70:
	movb	$3, %dil
	cmpb	%al, 971(%rsi)
	je	LBB1_63
LBB1_71:
	cmpb	%cl, 1226(%rsi)
	jne	LBB1_73
## %bb.72:
	movb	$4, %dil
	cmpb	%al, 1227(%rsi)
	je	LBB1_63
LBB1_73:
	cmpb	%cl, 1482(%rsi)
	jne	LBB1_75
## %bb.74:
	movb	$5, %dil
	cmpb	%al, 1483(%rsi)
	je	LBB1_63
LBB1_75:
	cmpb	%cl, 1738(%rsi)
	jne	LBB1_77
## %bb.76:
	movb	$6, %dil
	cmpb	%al, 1739(%rsi)
	je	LBB1_63
LBB1_77:
	cmpb	%cl, 1994(%rsi)
	jne	LBB1_79
## %bb.78:
	movb	$7, %dil
	cmpb	%al, 1995(%rsi)
	je	LBB1_63
LBB1_79:
	cmpb	%cl, 2250(%rsi)
	jne	LBB1_81
## %bb.80:
	movb	$8, %dil
	cmpb	%al, 2251(%rsi)
	je	LBB1_63
LBB1_81:
	cmpb	%cl, 2506(%rsi)
	jne	LBB1_83
## %bb.82:
	movb	$9, %dil
	cmpb	%al, 2507(%rsi)
	je	LBB1_63
LBB1_83:
	cmpb	%cl, 2762(%rsi)
	jne	LBB1_85
## %bb.84:
	movb	$10, %dil
	cmpb	%al, 2763(%rsi)
	je	LBB1_63
LBB1_85:
	movb	$127, %dl
	cmpb	%cl, 3018(%rsi)
	jne	LBB1_64
## %bb.86:
	movb	$11, %dil
	cmpb	%al, 3019(%rsi)
	jne	LBB1_64
LBB1_63:
	movl	%edi, %edx
	movb	%dl, _unit_selected(%rip)
	movzbl	%dl, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_next_unit                      ## -- Begin function next_unit
	.p2align	4, 0x90
_next_unit:                             ## @next_unit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edi killed $edi def $rdi
	movzbl	_unit_selected(%rip), %ecx
	movl	%ecx, %edx
	andb	$-128, %dl
	jne	LBB2_5
## %bb.1:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$8, %rcx
	leaq	(%rax,%rcx), %r8
	testb	$2, %sil
	jne	LBB2_2
## %bb.4:
	leal	1(%rdi), %eax
	xorl	%ecx, %ecx
	cmpb	$12, %al
	movzbl	%al, %eax
	cmovel	%ecx, %eax
	cmpb	$127, %dil
	cmovel	%ecx, %eax
	movl	%eax, %edi
	jmp	LBB2_8
LBB2_5:
	andl	$127, %ecx
	shlq	$8, %rcx
	leaq	_npc_units(%rip), %rax
	leaq	(%rax,%rcx), %r8
	testb	$2, %sil
	jne	LBB2_6
## %bb.11:
	leal	1(%rdi), %eax
	cmpb	$30, %al
	movzbl	%dl, %ecx
	movzbl	%al, %eax
	cmovel	%ecx, %eax
	xorl	%ecx, %ecx
	cmpb	$127, %dil
	cmovnel	%eax, %ecx
	movl	%ecx, %edi
	jmp	LBB2_8
LBB2_2:
	addq	%rcx, %rax
	addq	$204, %rax
	movb	(%rax), %cl
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	leal	1(%rdi), %edx
	cmpb	$12, %dl
	movzbl	%dl, %edx
	cmovel	%eax, %edx
	cmpb	$127, %dil
	cmovel	%eax, %edx
	movl	%edx, %edi
	testb	%cl, %cl
	je	LBB2_3
	jmp	LBB2_8
LBB2_6:
	addq	%rcx, %rax
	addq	$204, %rax
	movb	(%rax), %cl
	movzbl	%dl, %edx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
	leal	1(%rdi), %eax
	cmpb	$30, %al
	movzbl	%al, %eax
	cmovel	%edx, %eax
	cmpb	$127, %dil
	cmovel	%r9d, %eax
	movl	%eax, %edi
	testb	%cl, %cl
	je	LBB2_7
LBB2_8:
	testb	$1, %sil
	je	LBB2_10
## %bb.9:
	movb	202(%r8), %al
	movq	_cursor_x@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
	movb	203(%r8), %al
	movq	_cursor_y@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
LBB2_10:
	movzbl	%dil, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_to_map_cursor                  ## -- Begin function to_map_cursor
	.p2align	4, 0x90
_to_map_cursor:                         ## @to_map_cursor
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
	testl	%edi, %edi
	je	LBB3_2
## %bb.1:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movb	202(%rax), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdx
	movb	%cl, (%rdx)
	movb	203(%rax), %al
	movq	_cursor_y@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
LBB3_2:
	movq	_key_map@GOTPCREL(%rip), %r14
	movq	_cursor_y@GOTPCREL(%rip), %r15
	movq	_cursor_x@GOTPCREL(%rip), %r12
	movq	_map_info@GOTPCREL(%rip), %r13
	jmp	LBB3_3
	.p2align	4, 0x90
LBB3_5:                                 ##   in Loop: Header=BB3_3 Depth=1
	addb	$-1, %cl
	movb	%cl, (%r15)
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	callq	_read_char
	movl	%eax, %ebx
	movzbl	(%r15), %ecx
	cmpb	3(%r14), %al
	jne	LBB3_6
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=1
	testb	%cl, %cl
	jne	LBB3_5
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=1
	movzbl	(%r12), %eax
	cmpb	(%r14), %bl
	jne	LBB3_9
## %bb.7:                               ##   in Loop: Header=BB3_3 Depth=1
	testb	%al, %al
	je	LBB3_9
## %bb.8:                               ##   in Loop: Header=BB3_3 Depth=1
	addb	$-1, %al
	movb	%al, (%r12)
	jmp	LBB3_3
	.p2align	4, 0x90
LBB3_9:                                 ##   in Loop: Header=BB3_3 Depth=1
	cmpb	2(%r14), %bl
	jne	LBB3_12
## %bb.10:                              ##   in Loop: Header=BB3_3 Depth=1
	movzbl	%cl, %edx
	addl	$1, %edx
	movzbl	(%r13), %esi
	cmpl	%esi, %edx
	jae	LBB3_12
## %bb.11:                              ##   in Loop: Header=BB3_3 Depth=1
	addb	$1, %cl
	movb	%cl, (%r15)
	jmp	LBB3_3
LBB3_12:                                ##   in Loop: Header=BB3_3 Depth=1
	cmpb	1(%r14), %bl
	jne	LBB3_15
## %bb.13:                              ##   in Loop: Header=BB3_3 Depth=1
	movzbl	%al, %ecx
	addl	$1, %ecx
	movzbl	1(%r13), %edx
	cmpl	%edx, %ecx
	jae	LBB3_15
## %bb.14:                              ##   in Loop: Header=BB3_3 Depth=1
	addb	$1, %al
	movb	%al, (%r12)
	jmp	LBB3_3
LBB3_15:                                ##   in Loop: Header=BB3_3 Depth=1
	cmpb	6(%r14), %bl
	jne	LBB3_19
## %bb.16:                              ##   in Loop: Header=BB3_3 Depth=1
	callq	_set_unit_selected
	cmpb	$127, %al
	jne	LBB3_17
LBB3_19:                                ##   in Loop: Header=BB3_3 Depth=1
	cmpb	5(%r14), %bl
	je	LBB3_20
## %bb.21:                              ##   in Loop: Header=BB3_3 Depth=1
	cmpb	4(%r14), %bl
	je	LBB3_22
## %bb.25:                              ##   in Loop: Header=BB3_3 Depth=1
	cmpb	7(%r14), %bl
	jne	LBB3_3
## %bb.26:                              ##   in Loop: Header=BB3_3 Depth=1
	movzbl	_unit_selected(%rip), %eax
	testb	%al, %al
	js	LBB3_30
## %bb.27:                              ##   in Loop: Header=BB3_3 Depth=1
	movq	_user_data@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$8, %rax
	cmpb	$0, 204(%rcx,%rax)
	je	LBB3_33
## %bb.28:                              ##   in Loop: Header=BB3_3 Depth=1
	addq	%rax, %rcx
	jmp	LBB3_29
LBB3_30:                                ##   in Loop: Header=BB3_3 Depth=1
	andl	$127, %eax
	shlq	$8, %rax
	leaq	_npc_units(%rip), %rcx
	cmpb	$0, 204(%rax,%rcx)
	je	LBB3_32
## %bb.31:                              ##   in Loop: Header=BB3_3 Depth=1
	addq	%rcx, %rax
	movq	%rax, %rcx
LBB3_29:                                ##   in Loop: Header=BB3_3 Depth=1
	movzbl	202(%rcx), %eax
	movb	%al, (%r12)
	movzbl	203(%rcx), %eax
	movb	%al, (%r15)
	jmp	LBB3_3
	.p2align	4, 0x90
LBB3_33:                                ## =>This Inner Loop Header: Depth=1
	jmp	LBB3_33
	.p2align	4, 0x90
LBB3_32:                                ## =>This Inner Loop Header: Depth=1
	jmp	LBB3_32
LBB3_22:
	callq	_set_unit_selected
	cmpb	$127, %al
	jne	LBB3_23
LBB3_20:
	movl	$2, %edi
	jmp	LBB3_18
LBB3_23:
	testb	%al, %al
	js	LBB3_17
## %bb.24:
	movl	$1, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_move_unit                      ## TAILCALL
LBB3_17:
	movl	$139, %edi
LBB3_18:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_next_menu                      ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_move_unit                      ## -- Begin function move_unit
	.p2align	4, 0x90
_move_unit:                             ## @move_unit
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
	testl	%edi, %edi
	je	LBB4_9
## %bb.1:
	movq	_user_data@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movzbl	_unit_selected(%rip), %esi
	shlq	$8, %rsi
	cmpb	$16, 205(%rax,%rsi)
	jne	LBB4_3
## %bb.2:
	movzbl	200(%rax,%rsi), %edx
	movzbl	201(%rax,%rsi), %ecx
	movzbl	202(%rax,%rsi), %r8d
	movzbl	203(%rax,%rsi), %r9d
	movq	_map_info@GOTPCREL(%rip), %rdi
	movq	_can_move@GOTPCREL(%rip), %rsi
	callq	_get_movement
LBB4_3:
	movq	_map_info@GOTPCREL(%rip), %rax
	movzbl	1(%rax), %eax
	xorl	%ecx, %ecx
	leaq	_npc_units(%rip), %rdx
	movq	_can_move@GOTPCREL(%rip), %rsi
	jmp	LBB4_4
	.p2align	4, 0x90
LBB4_6:                                 ##   in Loop: Header=BB4_4 Depth=1
	addq	$256, %rcx                      ## imm = 0x100
	cmpq	$7680, %rcx                     ## imm = 0x1E00
	je	LBB4_7
LBB4_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpb	$0, 208(%rcx,%rdx)
	je	LBB4_6
## %bb.5:                               ##   in Loop: Header=BB4_4 Depth=1
	movzbl	203(%rcx,%rdx), %edi
	imulq	%rax, %rdi
	movzbl	202(%rcx,%rdx), %ebx
	addq	%rdi, %rbx
	movb	$-1, (%rsi,%rbx)
	jmp	LBB4_6
LBB4_7:
	movq	(%r14), %rax
	movzbl	_unit_selected(%rip), %esi
	shlq	$8, %rsi
	cmpb	$16, 205(%rax,%rsi)
	je	LBB4_9
## %bb.8:
	movzbl	200(%rax,%rsi), %edx
	movzbl	201(%rax,%rsi), %ecx
	movzbl	202(%rax,%rsi), %r8d
	movzbl	203(%rax,%rsi), %r9d
	movq	_map_info@GOTPCREL(%rip), %rdi
	movq	_can_move@GOTPCREL(%rip), %rsi
	callq	_get_movement
LBB4_9:
	movq	_key_map@GOTPCREL(%rip), %r13
	movq	_user_data@GOTPCREL(%rip), %r14
	movq	_map_info@GOTPCREL(%rip), %r15
	movq	_can_move@GOTPCREL(%rip), %r12
	jmp	LBB4_10
	.p2align	4, 0x90
LBB4_29:                                ##   in Loop: Header=BB4_10 Depth=1
	cmpb	6(%r13), %al
	je	LBB4_30
LBB4_10:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	callq	_read_char
	cmpb	3(%r13), %al
	jne	LBB4_14
## %bb.11:                              ##   in Loop: Header=BB4_10 Depth=1
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movzbl	203(%rcx,%rdx), %ebx
	testb	%bl, %bl
	je	LBB4_14
## %bb.12:                              ##   in Loop: Header=BB4_10 Depth=1
	leaq	(%rcx,%rdx), %rax
	addq	$203, %rax
	jmp	LBB4_13
	.p2align	4, 0x90
LBB4_14:                                ##   in Loop: Header=BB4_10 Depth=1
	cmpb	2(%r13), %al
	jne	LBB4_18
## %bb.15:                              ##   in Loop: Header=BB4_10 Depth=1
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movzbl	203(%rcx,%rdx), %esi
	leal	1(%rsi), %edi
	movzbl	(%r15), %ebx
	cmpl	%ebx, %edi
	jae	LBB4_18
## %bb.16:                              ##   in Loop: Header=BB4_10 Depth=1
	leaq	(%rcx,%rdx), %rax
	addq	$203, %rax
	jmp	LBB4_17
	.p2align	4, 0x90
LBB4_18:                                ##   in Loop: Header=BB4_10 Depth=1
	cmpb	(%r13), %al
	jne	LBB4_21
## %bb.19:                              ##   in Loop: Header=BB4_10 Depth=1
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movzbl	202(%rcx,%rdx), %ebx
	testb	%bl, %bl
	je	LBB4_21
## %bb.20:                              ##   in Loop: Header=BB4_10 Depth=1
	leaq	(%rcx,%rdx), %rax
	addq	$202, %rax
LBB4_13:                                ##   in Loop: Header=BB4_10 Depth=1
	addb	$-1, %bl
	movb	%bl, (%rax)
	jmp	LBB4_10
	.p2align	4, 0x90
LBB4_21:                                ##   in Loop: Header=BB4_10 Depth=1
	cmpb	1(%r13), %al
	jne	LBB4_24
## %bb.22:                              ##   in Loop: Header=BB4_10 Depth=1
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movzbl	202(%rcx,%rdx), %esi
	leal	1(%rsi), %edi
	movzbl	1(%r15), %ebx
	cmpl	%ebx, %edi
	jae	LBB4_24
## %bb.23:                              ##   in Loop: Header=BB4_10 Depth=1
	leaq	(%rcx,%rdx), %rax
	addq	$202, %rax
LBB4_17:                                ##   in Loop: Header=BB4_10 Depth=1
	addb	$1, %sil
	movb	%sil, (%rax)
	jmp	LBB4_10
	.p2align	4, 0x90
LBB4_24:                                ##   in Loop: Header=BB4_10 Depth=1
	cmpb	5(%r13), %al
	je	LBB4_31
## %bb.25:                              ##   in Loop: Header=BB4_10 Depth=1
	cmpb	4(%r13), %al
	jne	LBB4_29
## %bb.26:                              ##   in Loop: Header=BB4_10 Depth=1
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movzbl	203(%rcx,%rdx), %esi
	movzbl	1(%r15), %edi
	imulq	%rsi, %rdi
	movzbl	202(%rcx,%rdx), %ecx
	addq	%rdi, %rcx
	movzbl	(%r12,%rcx), %ecx
	addb	$1, %cl
	cmpb	$2, %cl
	jb	LBB4_29
## %bb.27:
	movl	$131, %edi
	jmp	LBB4_28
LBB4_31:
	movq	_cursor_x@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movb	%al, 202(%rcx,%rdx)
	movq	_cursor_y@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movb	%al, 203(%rcx,%rdx)
	xorl	%edi, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_to_map_cursor                  ## TAILCALL
LBB4_30:
	movq	_cursor_x@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movq	(%r14), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movb	%al, 202(%rcx,%rdx)
	movq	_cursor_y@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movb	%al, 203(%rcx,%rdx)
	movl	$139, %edi
LBB4_28:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_next_menu                      ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_end_turn                       ## -- Begin function end_turn
	.p2align	4, 0x90
_end_turn:                              ## @end_turn
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movzbl	_unit_selected(%rip), %ecx
	shlq	$8, %rcx
	movb	$0, 204(%rax,%rcx)
	movzbl	_unit_selected(%rip), %esi
	shlq	$8, %rsi
	leaq	(%rax,%rsi), %rdx
	addq	$202, %rdx
	cmpb	$0, 204(%rax)
	je	LBB5_2
## %bb.1:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_2:
	cmpb	$0, 460(%rax)
	je	LBB5_4
## %bb.3:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_4:
	cmpb	$0, 716(%rax)
	je	LBB5_6
## %bb.5:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_6:
	cmpb	$0, 972(%rax)
	je	LBB5_8
## %bb.7:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_8:
	cmpb	$0, 1228(%rax)
	je	LBB5_10
## %bb.9:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_10:
	cmpb	$0, 1484(%rax)
	je	LBB5_12
## %bb.11:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_12:
	cmpb	$0, 1740(%rax)
	je	LBB5_14
## %bb.13:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_14:
	cmpb	$0, 1996(%rax)
	je	LBB5_16
## %bb.15:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_16:
	cmpb	$0, 2252(%rax)
	je	LBB5_18
## %bb.17:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_18:
	cmpb	$0, 2508(%rax)
	je	LBB5_20
## %bb.19:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_20:
	cmpb	$0, 2764(%rax)
	je	LBB5_22
## %bb.21:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdi
	movb	%cl, (%rdi)
LBB5_22:
	cmpb	$0, 3020(%rax)
	je	LBB5_24
## %bb.23:
	movb	(%rdx), %cl
	movq	_cursor_x@GOTPCREL(%rip), %rdx
	movb	%cl, (%rdx)
LBB5_24:
	movb	203(%rax,%rsi), %al
	movq	_cursor_y@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
	xorl	%edi, %edi
	popq	%rbp
	jmp	_to_map_cursor                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_open_chest                     ## -- Begin function open_chest
	.p2align	4, 0x90
_open_chest:                            ## @open_chest
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movzbl	_unit_selected(%rip), %edx
	shlq	$8, %rdx
	movzbl	203(%rcx,%rdx), %esi
	movq	_map_info@GOTPCREL(%rip), %rax
	movzbl	1(%rax), %edi
	imulq	%rsi, %rdi
	movzbl	202(%rcx,%rdx), %ecx
	addq	%rdi, %rcx
	cmpb	$17, 8(%rax,%rcx,2)
	jne	LBB6_1
## %bb.2:
	movb	$18, 8(%rax,%rcx,2)
	xorl	%edi, %edi
	popq	%rbp
	jmp	_end_turn                       ## TAILCALL
LBB6_1:
	movl	$131, %edi
	popq	%rbp
	jmp	_next_menu                      ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_discard_item                   ## -- Begin function discard_item
	.p2align	4, 0x90
_discard_item:                          ## @discard_item
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_unit_discard_equipped
	movl	$136, %edi
	popq	%rbp
	jmp	_att_heal_give_item_menu        ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_summon                         ## -- Begin function summon
	.p2align	4, 0x90
_summon:                                ## @summon
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpb	$0, 3024(%rax)
	je	LBB8_2
## %bb.1:
	movl	$131, %edi
	popq	%rbp
	jmp	_next_menu                      ## TAILCALL
LBB8_2:
	leaq	2816(%rax), %rdi
	movzbl	_unit_selected(%rip), %ecx
	shlq	$8, %rcx
	movb	206(%rax,%rcx), %sil
	addb	$3, %sil
	movzbl	241(%rax,%rcx), %edx
	movzbl	%sil, %esi
	popq	%rbp
	jmp	_unit_get_generic               ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_nth_nearest               ## -- Begin function unit_nth_nearest
	.p2align	4, 0x90
_unit_nth_nearest:                      ## @unit_nth_nearest
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
	subq	$104, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edi, %ebx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	_map_info@GOTPCREL(%rip), %rax
	movzbl	7(%rax), %ecx
	movzbl	5(%rax), %edi
	addl	%ecx, %edi
	movb	$127, %al
	cmpl	%ebx, %edi
	jbe	LBB9_14
## %bb.1:
	movl	%r8d, %r15d
	movzbl	%sil, %eax
	movzbl	%dl, %ecx
	leaq	-128(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	%eax, %edx
	callq	_unit_nearest_order
	movl	$1, %eax
	jmp	LBB9_2
	.p2align	4, 0x90
LBB9_10:                                ##   in Loop: Header=BB9_2 Depth=1
	addq	$2, %rax
	cmpq	$43, %rax
	je	LBB9_11
LBB9_2:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	-81(%rbp,%rax), %ecx
	cmpb	%r15b, %cl
	ja	LBB9_6
## %bb.3:                               ##   in Loop: Header=BB9_2 Depth=1
	cmpb	%r14b, %cl
	jb	LBB9_6
## %bb.4:                               ##   in Loop: Header=BB9_2 Depth=1
	testb	%bl, %bl
	je	LBB9_12
## %bb.5:                               ##   in Loop: Header=BB9_2 Depth=1
	addb	$-1, %bl
LBB9_6:                                 ##   in Loop: Header=BB9_2 Depth=1
	movzbl	-80(%rbp,%rax), %ecx
	cmpb	%r15b, %cl
	ja	LBB9_10
## %bb.7:                               ##   in Loop: Header=BB9_2 Depth=1
	cmpb	%r14b, %cl
	jb	LBB9_10
## %bb.8:                               ##   in Loop: Header=BB9_2 Depth=1
	testb	%bl, %bl
	je	LBB9_13
## %bb.9:                               ##   in Loop: Header=BB9_2 Depth=1
	addb	$-1, %bl
	jmp	LBB9_10
LBB9_11:
	movb	$127, %al
	jmp	LBB9_14
LBB9_12:
	addq	$-1, %rax
LBB9_13:
	movb	-128(%rbp,%rax), %al
LBB9_14:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-32(%rbp), %rcx
	jne	LBB9_16
## %bb.15:
	movzbl	%al, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_16:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function unit_nearest_order
LCPI10_0:
	.byte	255                             ## 0xff
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	255                             ## 0xff
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	255                             ## 0xff
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	255                             ## 0xff
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
LCPI10_1:
	.byte	128                             ## 0x80
	.byte	129                             ## 0x81
	.byte	130                             ## 0x82
	.byte	131                             ## 0x83
	.byte	132                             ## 0x84
	.byte	133                             ## 0x85
	.byte	134                             ## 0x86
	.byte	135                             ## 0x87
	.byte	136                             ## 0x88
	.byte	137                             ## 0x89
	.byte	138                             ## 0x8a
	.byte	139                             ## 0x8b
	.byte	140                             ## 0x8c
	.byte	141                             ## 0x8d
	.byte	142                             ## 0x8e
	.byte	143                             ## 0x8f
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_unit_nearest_order
	.p2align	4, 0x90
_unit_nearest_order:                    ## @unit_nearest_order
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	movzbl	202(%r9), %r8d
	movl	%edx, %ebx
	subl	%r8d, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	203(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, (%rsi)
	movb	$0, (%rdi)
	movzbl	458(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	459(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 1(%rsi)
	movb	$1, 1(%rdi)
	movzbl	714(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	715(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 2(%rsi)
	movb	$2, 2(%rdi)
	movzbl	970(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	971(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 3(%rsi)
	movb	$3, 3(%rdi)
	movzbl	1226(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	1227(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 4(%rsi)
	movb	$4, 4(%rdi)
	movzbl	1482(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	1483(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 5(%rsi)
	movb	$5, 5(%rdi)
	movzbl	1738(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	1739(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 6(%rsi)
	movb	$6, 6(%rdi)
	movzbl	1994(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	1995(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 7(%rsi)
	movb	$7, 7(%rdi)
	movzbl	2250(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	2251(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 8(%rsi)
	movb	$8, 8(%rdi)
	movzbl	2506(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	2507(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 9(%rsi)
	movb	$9, 9(%rdi)
	movzbl	2762(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	2763(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 10(%rsi)
	movb	$10, 10(%rdi)
	movzbl	3018(%r9), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovll	%ebx, %r10d
	movzbl	3019(%r9), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r10d, %ebx
	movb	%bl, 11(%rsi)
	movb	$11, 11(%rdi)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm9                ## xmm9 = xmm0[0,0,0,0]
	movd	%edx, %xmm1
	movzbl	_npc_units+202(%rip), %eax
	movd	%eax, %xmm2
	pinsrb	$1, _npc_units+458(%rip), %xmm2
	pinsrb	$2, _npc_units+714(%rip), %xmm2
	pinsrb	$3, _npc_units+970(%rip), %xmm2
	movzbl	_npc_units+3274(%rip), %eax
	movd	%eax, %xmm3
	pinsrb	$1, _npc_units+3530(%rip), %xmm3
	pinsrb	$2, _npc_units+3786(%rip), %xmm3
	pshufd	$0, %xmm1, %xmm1                ## xmm1 = xmm1[0,0,0,0]
	pinsrb	$3, _npc_units+4042(%rip), %xmm3
	pmovzxbd	%xmm3, %xmm5                    ## xmm5 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero
	movzbl	_npc_units+2250(%rip), %eax
	movd	%eax, %xmm3
	pinsrb	$1, _npc_units+2506(%rip), %xmm3
	pinsrb	$2, _npc_units+2762(%rip), %xmm3
	pinsrb	$3, _npc_units+3018(%rip), %xmm3
	movzbl	_npc_units+1226(%rip), %eax
	movd	%eax, %xmm4
	pinsrb	$1, _npc_units+1482(%rip), %xmm4
	pinsrb	$2, _npc_units+1738(%rip), %xmm4
	pinsrb	$3, _npc_units+1994(%rip), %xmm4
	pmovzxbd	%xmm3, %xmm6                    ## xmm6 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero
	pmovzxbd	%xmm4, %xmm7                    ## xmm7 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero
	pmovzxbd	%xmm2, %xmm2                    ## xmm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero
	movdqa	%xmm1, %xmm4
	psubd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm3
	psubd	%xmm7, %xmm3
	movdqa	%xmm1, %xmm2
	psubd	%xmm6, %xmm2
	movzbl	_npc_units+203(%rip), %eax
	movd	%eax, %xmm6
	pinsrb	$1, _npc_units+459(%rip), %xmm6
	pinsrb	$2, _npc_units+715(%rip), %xmm6
	psubd	%xmm5, %xmm1
	pinsrb	$3, _npc_units+971(%rip), %xmm6
	pmovzxbd	%xmm6, %xmm8                    ## xmm8 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero
	movzbl	_npc_units+1227(%rip), %eax
	movd	%eax, %xmm6
	pinsrb	$1, _npc_units+1483(%rip), %xmm6
	pinsrb	$2, _npc_units+1739(%rip), %xmm6
	pinsrb	$3, _npc_units+1995(%rip), %xmm6
	movzbl	_npc_units+2251(%rip), %eax
	movd	%eax, %xmm7
	pinsrb	$1, _npc_units+2507(%rip), %xmm7
	pinsrb	$2, _npc_units+2763(%rip), %xmm7
	pinsrb	$3, _npc_units+3019(%rip), %xmm7
	pmovzxbd	%xmm6, %xmm6                    ## xmm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero
	pmovzxbd	%xmm7, %xmm7                    ## xmm7 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero
	movzbl	_npc_units+3275(%rip), %eax
	movd	%eax, %xmm5
	pinsrb	$1, _npc_units+3531(%rip), %xmm5
	pinsrb	$2, _npc_units+3787(%rip), %xmm5
	pinsrb	$3, _npc_units+4043(%rip), %xmm5
	pmovzxbd	%xmm5, %xmm5                    ## xmm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero
	movdqa	%xmm9, %xmm0
	psubd	%xmm5, %xmm0
	movdqa	%xmm9, %xmm5
	psubd	%xmm7, %xmm5
	movdqa	%xmm9, %xmm7
	psubd	%xmm6, %xmm7
	psubd	%xmm8, %xmm9
	pabsd	%xmm9, %xmm6
	paddd	%xmm4, %xmm6
	pabsd	%xmm7, %xmm4
	paddd	%xmm3, %xmm4
	pabsd	%xmm5, %xmm3
	paddd	%xmm2, %xmm3
	pabsd	%xmm0, %xmm0
	paddd	%xmm1, %xmm0
	pabsd	%xmm6, %xmm1
	pabsd	%xmm4, %xmm2
	pabsd	%xmm3, %xmm3
	pabsd	%xmm0, %xmm0
	movdqa	LCPI10_0(%rip), %xmm4           ## xmm4 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm4, %xmm0
	pand	%xmm4, %xmm3
	packusdw	%xmm0, %xmm3
	pand	%xmm4, %xmm2
	pand	%xmm4, %xmm1
	packusdw	%xmm2, %xmm1
	packuswb	%xmm3, %xmm1
	movdqu	%xmm1, 12(%rsi)
	movaps	LCPI10_1(%rip), %xmm0           ## xmm0 = [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]
	movzbl	_npc_units+4298(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+4299(%rip), %r8d
	movl	%ecx, %ebx
	subl	%r8d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	addl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movups	%xmm0, 12(%rdi)
	movb	%bl, 28(%rsi)
	movb	$-112, 28(%rdi)
	movzbl	_npc_units+4554(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+4555(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 29(%rsi)
	movb	$-111, 29(%rdi)
	movzbl	_npc_units+4810(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+4811(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 30(%rsi)
	movb	$-110, 30(%rdi)
	movzbl	_npc_units+5066(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+5067(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 31(%rsi)
	movzbl	_npc_units+5322(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+5323(%rip), %r8d
	movl	%ecx, %ebx
	subl	%r8d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	addl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movb	$-109, 31(%rdi)
	movb	%bl, 32(%rsi)
	movb	$-108, 32(%rdi)
	movzbl	_npc_units+5578(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+5579(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 33(%rsi)
	movb	$-107, 33(%rdi)
	movzbl	_npc_units+5834(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+5835(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 34(%rsi)
	movb	$-106, 34(%rdi)
	movzbl	_npc_units+6090(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+6091(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 35(%rsi)
	movzbl	_npc_units+6346(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+6347(%rip), %r8d
	movl	%ecx, %ebx
	subl	%r8d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	addl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movb	$-105, 35(%rdi)
	movb	%bl, 36(%rsi)
	movb	$-104, 36(%rdi)
	movzbl	_npc_units+6602(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+6603(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 37(%rsi)
	movb	$-103, 37(%rdi)
	movzbl	_npc_units+6858(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+6859(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 38(%rsi)
	movb	$-102, 38(%rdi)
	movzbl	_npc_units+7114(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+7115(%rip), %r8d
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movb	%al, 39(%rsi)
	movzbl	_npc_units+7370(%rip), %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movzbl	_npc_units+7371(%rip), %r8d
	movl	%ecx, %ebx
	subl	%r8d, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	addl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movb	$-101, 39(%rdi)
	movb	%bl, 40(%rsi)
	movb	$-100, 40(%rdi)
	movzbl	_npc_units+7626(%rip), %eax
	subl	%eax, %edx
	movzbl	_npc_units+7627(%rip), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movb	%cl, 41(%rsi)
	movb	$-99, 41(%rdi)
	xorl	%r10d, %r10d
	leaq	-130(%rbp), %r8
	leaq	-129(%rbp), %r9
	xorl	%ecx, %ecx
	jmp	LBB10_1
	.p2align	4, 0x90
LBB10_7:                                ##   in Loop: Header=BB10_1 Depth=1
	addb	$1, %r14b
	movl	%r14d, %ecx
LBB10_8:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	%r11d, %r10d
	cmpb	$42, %r11b
	jae	LBB10_9
LBB10_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_4 Depth 2
	movzbl	%r10b, %eax
	movb	%al, -130(%rbp)
	leal	1(%rax), %edx
	movb	%dl, -129(%rbp)
	movl	%eax, %r11d
	addl	$2, %r11d
	cmpb	$40, %al
	ja	LBB10_8
## %bb.2:                               ##   in Loop: Header=BB10_1 Depth=1
	movzbl	%dl, %eax
	cmpl	%eax, %r11d
	jbe	LBB10_8
## %bb.3:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	%r10d, %ebx
	.p2align	4, 0x90
LBB10_4:                                ##   Parent Loop BB10_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r14d
	movzbl	%bl, %ecx
	movzbl	(%rsi,%rcx), %ecx
	movzbl	%dl, %edx
	cmpb	(%rsi,%rdx), %cl
	movq	%r9, %rcx
	cmovbq	%r8, %rcx
	movzbl	(%rcx), %edx
	movzbl	(%rdi,%rdx), %ebx
	movsbq	%r14b, %rax
	movb	%bl, -80(%rbp,%rax)
	leal	1(%rdx), %ebx
	movb	%bl, (%rcx)
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, -128(%rbp,%rax)
	movzbl	-130(%rbp), %ebx
	cmpb	%bl, %r10b
	jb	LBB10_7
## %bb.5:                               ##   in Loop: Header=BB10_4 Depth=2
	movzbl	-129(%rbp), %edx
	cmpl	$41, %edx
	ja	LBB10_7
## %bb.6:                               ##   in Loop: Header=BB10_4 Depth=2
	leal	1(%r14), %ecx
	cmpl	%edx, %r11d
	ja	LBB10_4
	jmp	LBB10_7
LBB10_9:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	LBB10_10
	.p2align	4, 0x90
LBB10_15:                               ##   in Loop: Header=BB10_10 Depth=1
	addb	$1, %r14b
	movl	%r14d, %edx
LBB10_16:                               ##   in Loop: Header=BB10_10 Depth=1
	movl	%r11d, %ecx
	cmpb	$42, %r11b
	jae	LBB10_17
LBB10_10:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_12 Depth 2
	movzbl	%cl, %r11d
	movb	%r11b, -130(%rbp)
	leal	2(%r11), %r10d
	movb	%r10b, -129(%rbp)
	addl	$4, %r11d
	cmpb	$41, %r10b
	ja	LBB10_16
## %bb.11:                              ##   in Loop: Header=BB10_10 Depth=1
	movl	%r10d, %ebx
	.p2align	4, 0x90
LBB10_12:                               ##   Parent Loop BB10_10 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edx, %r14d
	movzbl	%cl, %ecx
	movzbl	-128(%rbp,%rcx), %ecx
	movzbl	%bl, %edx
	cmpb	-128(%rbp,%rdx), %cl
	movq	%r9, %rcx
	cmovbq	%r8, %rcx
	movzbl	(%rcx), %edx
	movzbl	-80(%rbp,%rdx), %ebx
	movsbq	%r14b, %rax
	movb	%bl, (%rdi,%rax)
	leal	1(%rdx), %ebx
	movb	%bl, (%rcx)
	movzbl	-128(%rbp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	movzbl	-130(%rbp), %ecx
	cmpl	%ecx, %r10d
	jbe	LBB10_15
## %bb.13:                              ##   in Loop: Header=BB10_12 Depth=2
	movzbl	-129(%rbp), %ebx
	cmpl	$41, %ebx
	ja	LBB10_15
## %bb.14:                              ##   in Loop: Header=BB10_12 Depth=2
	leal	1(%r14), %edx
	cmpl	%ebx, %r11d
	ja	LBB10_12
	jmp	LBB10_15
LBB10_17:
	movb	$0, -130(%rbp)
	movb	$4, -129(%rbp)
	movb	$4, %al
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB10_18:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%cl, %ecx
	movzbl	(%rsi,%rcx), %ecx
	movzbl	%al, %eax
	cmpb	(%rsi,%rax), %cl
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	(%rdi,%rcx), %r10d
	movsbq	%dl, %rbx
	movb	%r10b, -80(%rbp,%rbx)
	leal	1(%rcx), %edx
	movb	%dl, (%rax)
	movzbl	(%rsi,%rcx), %eax
	leal	1(%rbx), %edx
	movb	%al, -128(%rbp,%rbx)
	movzbl	-130(%rbp), %ecx
	cmpb	$3, %cl
	ja	LBB10_20
## %bb.19:                              ##   in Loop: Header=BB10_18 Depth=1
	movzbl	-129(%rbp), %eax
	cmpb	$8, %al
	jb	LBB10_18
LBB10_20:
	movb	$8, -130(%rbp)
	movb	$12, -129(%rbp)
	movb	$12, %cl
	movb	$8, %al
	.p2align	4, 0x90
LBB10_21:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movzbl	(%rsi,%rax), %eax
	movzbl	%cl, %ecx
	cmpb	(%rsi,%rcx), %al
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	(%rdi,%rcx), %r10d
	movsbq	%dl, %rbx
	movb	%r10b, -80(%rbp,%rbx)
	leal	1(%rcx), %edx
	movb	%dl, (%rax)
	movzbl	(%rsi,%rcx), %eax
	leal	1(%rbx), %edx
	movb	%al, -128(%rbp,%rbx)
	movzbl	-130(%rbp), %eax
	cmpb	$11, %al
	ja	LBB10_23
## %bb.22:                              ##   in Loop: Header=BB10_21 Depth=1
	movzbl	-129(%rbp), %ecx
	cmpb	$16, %cl
	jb	LBB10_21
LBB10_23:
	movb	$16, -130(%rbp)
	movb	$20, -129(%rbp)
	movb	$20, %cl
	movb	$16, %al
	.p2align	4, 0x90
LBB10_24:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movzbl	(%rsi,%rax), %eax
	movzbl	%cl, %ecx
	cmpb	(%rsi,%rcx), %al
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	(%rdi,%rcx), %r10d
	movsbq	%dl, %rbx
	movb	%r10b, -80(%rbp,%rbx)
	leal	1(%rcx), %edx
	movb	%dl, (%rax)
	movzbl	(%rsi,%rcx), %eax
	leal	1(%rbx), %edx
	movb	%al, -128(%rbp,%rbx)
	movzbl	-130(%rbp), %eax
	cmpb	$19, %al
	ja	LBB10_26
## %bb.25:                              ##   in Loop: Header=BB10_24 Depth=1
	movzbl	-129(%rbp), %ecx
	cmpb	$24, %cl
	jb	LBB10_24
LBB10_26:
	movb	$24, -130(%rbp)
	movb	$28, -129(%rbp)
	movb	$28, %cl
	movb	$24, %al
	.p2align	4, 0x90
LBB10_27:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movzbl	(%rsi,%rax), %eax
	movzbl	%cl, %ecx
	cmpb	(%rsi,%rcx), %al
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	(%rdi,%rcx), %r10d
	movsbq	%dl, %rbx
	movb	%r10b, -80(%rbp,%rbx)
	leal	1(%rcx), %edx
	movb	%dl, (%rax)
	movzbl	(%rsi,%rcx), %eax
	leal	1(%rbx), %edx
	movb	%al, -128(%rbp,%rbx)
	movzbl	-130(%rbp), %eax
	cmpb	$27, %al
	ja	LBB10_29
## %bb.28:                              ##   in Loop: Header=BB10_27 Depth=1
	movzbl	-129(%rbp), %ecx
	cmpb	$32, %cl
	jb	LBB10_27
LBB10_29:
	movb	$32, -130(%rbp)
	movb	$36, -129(%rbp)
	movb	$36, %cl
	movb	$32, %al
	.p2align	4, 0x90
LBB10_30:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movzbl	(%rsi,%rax), %eax
	movzbl	%cl, %ecx
	cmpb	(%rsi,%rcx), %al
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	(%rdi,%rcx), %r10d
	movsbq	%dl, %r11
	movb	%r10b, -80(%rbp,%r11)
	leal	1(%rcx), %ebx
	movb	%bl, (%rax)
	movzbl	(%rsi,%rcx), %eax
	movb	%al, -128(%rbp,%r11)
	movzbl	-130(%rbp), %eax
	cmpb	$35, %al
	ja	LBB10_32
## %bb.31:                              ##   in Loop: Header=BB10_30 Depth=1
	addb	$1, %dl
	movzbl	-129(%rbp), %ecx
	cmpb	$40, %cl
	jb	LBB10_30
LBB10_32:
	movb	$0, -130(%rbp)
	movb	$8, -129(%rbp)
	movb	$8, %al
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB10_33:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%cl, %ecx
	movzbl	-128(%rbp,%rcx), %ecx
	movzbl	%al, %eax
	cmpb	-128(%rbp,%rax), %cl
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	-80(%rbp,%rcx), %r10d
	movsbq	%dl, %rbx
	movb	%r10b, (%rdi,%rbx)
	leal	1(%rcx), %edx
	movb	%dl, (%rax)
	movzbl	-128(%rbp,%rcx), %eax
	leal	1(%rbx), %edx
	movb	%al, (%rsi,%rbx)
	movzbl	-130(%rbp), %ecx
	cmpb	$7, %cl
	ja	LBB10_35
## %bb.34:                              ##   in Loop: Header=BB10_33 Depth=1
	movzbl	-129(%rbp), %eax
	cmpb	$16, %al
	jb	LBB10_33
LBB10_35:
	movb	$16, -130(%rbp)
	movb	$24, -129(%rbp)
	movb	$24, %cl
	movb	$16, %al
	.p2align	4, 0x90
LBB10_36:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%cl, %ecx
	cmpb	-128(%rbp,%rcx), %al
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	-80(%rbp,%rcx), %r10d
	movsbq	%dl, %rbx
	movb	%r10b, (%rdi,%rbx)
	leal	1(%rcx), %edx
	movb	%dl, (%rax)
	movzbl	-128(%rbp,%rcx), %eax
	leal	1(%rbx), %edx
	movb	%al, (%rsi,%rbx)
	movzbl	-130(%rbp), %eax
	cmpb	$23, %al
	ja	LBB10_38
## %bb.37:                              ##   in Loop: Header=BB10_36 Depth=1
	movzbl	-129(%rbp), %ecx
	cmpb	$32, %cl
	jb	LBB10_36
LBB10_38:
	movb	$32, -130(%rbp)
	movb	$40, -129(%rbp)
	movb	$40, %cl
	movb	$32, %al
	.p2align	4, 0x90
LBB10_39:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%cl, %ecx
	cmpb	-128(%rbp,%rcx), %al
	movq	%r9, %rax
	cmovbq	%r8, %rax
	movzbl	(%rax), %ecx
	movzbl	-80(%rbp,%rcx), %r10d
	movsbq	%dl, %r11
	movb	%r10b, (%rdi,%r11)
	leal	1(%rcx), %ebx
	movb	%bl, (%rax)
	movzbl	-128(%rbp,%rcx), %eax
	movb	%al, (%rsi,%r11)
	movzbl	-130(%rbp), %eax
	cmpb	$39, %al
	ja	LBB10_41
## %bb.40:                              ##   in Loop: Header=BB10_39 Depth=1
	addb	$1, %dl
	movzbl	-129(%rbp), %ecx
	cmpb	$42, %cl
	jb	LBB10_39
LBB10_41:
	movb	$0, -130(%rbp)
	movb	$16, -129(%rbp)
	movb	$16, %dl
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB10_42:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%cl, %ecx
	movzbl	(%rsi,%rcx), %ecx
	movzbl	%dl, %edx
	cmpb	(%rsi,%rdx), %cl
	movq	%r9, %rcx
	cmovbq	%r8, %rcx
	movzbl	(%rcx), %edx
	movzbl	(%rdi,%rdx), %r10d
	movsbq	%al, %r11
	movb	%r10b, -80(%rbp,%r11)
	leal	1(%rdx), %ebx
	movb	%bl, (%rcx)
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, -128(%rbp,%r11)
	movzbl	-130(%rbp), %ecx
	cmpb	$15, %cl
	ja	LBB10_44
## %bb.43:                              ##   in Loop: Header=BB10_42 Depth=1
	addb	$1, %al
	movzbl	-129(%rbp), %edx
	cmpb	$32, %dl
	jb	LBB10_42
LBB10_44:
	movb	$0, -130(%rbp)
	movb	$32, -129(%rbp)
	movb	$32, %dl
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB10_45:                               ## =>This Inner Loop Header: Depth=1
	movzbl	%cl, %ecx
	movzbl	-128(%rbp,%rcx), %ecx
	movzbl	%dl, %edx
	cmpb	-128(%rbp,%rdx), %cl
	movq	%r9, %rcx
	cmovbq	%r8, %rcx
	movzbl	(%rcx), %edx
	movzbl	-80(%rbp,%rdx), %r10d
	movsbq	%al, %r11
	movb	%r10b, (%rdi,%r11)
	leal	1(%rdx), %ebx
	movb	%bl, (%rcx)
	movzbl	-128(%rbp,%rdx), %ecx
	movb	%cl, (%rsi,%r11)
	movzbl	-130(%rbp), %ecx
	cmpb	$31, %cl
	ja	LBB10_46
## %bb.48:                              ##   in Loop: Header=BB10_45 Depth=1
	addb	$1, %al
	movzbl	-129(%rbp), %edx
	cmpb	$42, %dl
	jb	LBB10_45
LBB10_46:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB10_49
## %bb.47:
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB10_49:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_unit_selected                  ## @unit_selected
.zerofill __DATA,__common,_unit_selected,1,0
	.globl	_npc_units                      ## @npc_units
.zerofill __DATA,__common,_npc_units,7680,4
	.comm	_cursor_x,1,0                   ## @cursor_x
	.comm	_cursor_y,1,0                   ## @cursor_y
	.comm	_can_move,500,4                 ## @can_move
.subsections_via_symbols
