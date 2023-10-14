	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_menu_get                       ## -- Begin function menu_get
	.p2align	4, 0x90
_menu_get:                              ## @menu_get
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
	movl	%edi, %ebx
	testb	%bl, %bl
	js	LBB0_2
## %bb.1:
	movzbl	%bl, %eax
	shlq	$7, %rax
	leaq	_const_menus(%rip), %r12
	addq	%rax, %r12
LBB0_100:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_2:
	movl	$1, %edi
	movl	$128, %esi
	callq	_calloc
	movq	%rax, %r14
	movq	%rax, %r12
	leal	-128(%rbx), %eax
	cmpb	$9, %al
	ja	LBB0_99
## %bb.3:
	movzbl	%al, %eax
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_4:
	addb	$-119, %bl
	movabsq	$7012984750762650949, %rax      ## imm = 0x6153207974706D45
	movq	%rax, (%r12)
	movq	$1702256979, 6(%r12)            ## imm = 0x65766153
	movb	%bl, 14(%r12)
	movb	$0, 15(%r12)
	movq	_settings@GOTPCREL(%rip), %rcx
	cmpb	$0, (%rcx)
	je	LBB0_6
## %bb.5:
	movl	$1702256979, (%r12)             ## imm = 0x65766153
	movw	$12576, 4(%r12)                 ## imm = 0x3120
	movq	$0, 6(%r12)
	movb	%bl, 14(%r12)
	movb	$0, 15(%r12)
LBB0_6:
	movq	%rax, 16(%r12)
	movq	$1702256979, 22(%r12)           ## imm = 0x65766153
	movb	%bl, 30(%r12)
	movb	$1, 31(%r12)
	cmpb	$0, 1(%rcx)
	je	LBB0_8
## %bb.7:
	movl	$1702256979, 16(%r12)           ## imm = 0x65766153
	movw	$12832, 20(%r12)                ## imm = 0x3220
	movq	$0, 22(%r12)
	movb	%bl, 30(%r12)
	movb	$1, 31(%r12)
LBB0_8:
	movq	%rax, 32(%r12)
	movq	$1702256979, 38(%r12)           ## imm = 0x65766153
	movb	%bl, 46(%r12)
	movb	$2, 47(%r12)
	cmpb	$0, 2(%rcx)
	je	LBB0_10
## %bb.9:
	movl	$1702256979, 32(%r12)           ## imm = 0x65766153
	movw	$13088, 36(%r12)                ## imm = 0x3320
	movq	$0, 38(%r12)
	movb	%bl, 46(%r12)
	movb	$2, 47(%r12)
LBB0_10:
	movq	%rax, 48(%r12)
	movq	$1702256979, 54(%r12)           ## imm = 0x65766153
	movb	%bl, 62(%r12)
	movb	$3, 63(%r12)
	cmpb	$0, 3(%rcx)
	je	LBB0_12
## %bb.11:
	movl	$1702256979, 48(%r12)           ## imm = 0x65766153
	movw	$13344, 52(%r12)                ## imm = 0x3420
	movq	$0, 54(%r12)
	movb	%bl, 62(%r12)
	movb	$3, 63(%r12)
LBB0_12:
	movq	%rax, 64(%r12)
	movq	$1702256979, 70(%r12)           ## imm = 0x65766153
	movb	%bl, 78(%r12)
	movb	$4, 79(%r12)
	cmpb	$0, 4(%rcx)
	je	LBB0_14
## %bb.13:
	movl	$1702256979, 64(%r12)           ## imm = 0x65766153
	movw	$13600, 68(%r12)                ## imm = 0x3520
	movq	$0, 70(%r12)
	movb	%bl, 78(%r12)
	movb	$4, 79(%r12)
LBB0_14:
	movq	%rax, 80(%r12)
	movq	$1702256979, 86(%r12)           ## imm = 0x65766153
	movb	%bl, 94(%r12)
	movb	$5, 95(%r12)
	cmpb	$0, 5(%rcx)
	je	LBB0_16
## %bb.15:
	movl	$1702256979, 80(%r12)           ## imm = 0x65766153
	movw	$13856, 84(%r12)                ## imm = 0x3620
	movq	$0, 86(%r12)
	movb	%bl, 94(%r12)
	movb	$5, 95(%r12)
LBB0_16:
	movabsq	$7358993337588607043, %rax      ## imm = 0x662065736F6F6843
	movq	%rax, 112(%r12)
	movabsq	$1127025194921065, %rax         ## imm = 0x4010600656C69
	movq	%rax, 120(%r12)
	jmp	LBB0_100
LBB0_99:
	movq	%r12, %rdi
	callq	_free
	xorl	%r12d, %r12d
	jmp	LBB0_100
LBB0_17:
	movabsq	$45553751171187, %rax           ## imm = 0x296E4F282073
	movq	%rax, 6(%r12)
	movabsq	$2338327480964706887, %rcx      ## imm = 0x20736874776F7247
	movq	%rcx, (%r12)
	movw	$262, 14(%r12)                  ## imm = 0x106
	movq	_game_mode@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	LBB0_19
## %bb.18:
	movabsq	$11653063645864051, %rdx        ## imm = 0x2966664F282073
	movq	%rdx, 6(%r12)
	movq	%rcx, (%r12)
	movw	$6, 14(%r12)
LBB0_19:
	movabsq	$435476712736, %rcx             ## imm = 0x65646F4D20
	movq	%rcx, 22(%r12)
	movabsq	$5557561105879035726, %rcx      ## imm = 0x4D206C616D726F4E
	movq	%rcx, 16(%r12)
	movw	$262, 30(%r12)                  ## imm = 0x106
	cmpb	$0, 1(%rax)
	je	LBB0_21
## %bb.20:
	leaq	16(%r14), %rcx
	movabsq	$4922237718719775048, %rdx      ## imm = 0x444F4D2044524148
	movq	%rdx, (%rcx)
	movq	$4539471, 6(%rcx)               ## imm = 0x45444F
	movw	$6, 30(%r12)
LBB0_21:
	addq	$32, %r14
	movq	$0, 38(%r12)
	movq	$4144959, 32(%r12)              ## imm = 0x3F3F3F
	movw	$0, 46(%r12)
	movq	_settings@GOTPCREL(%rip), %rcx
	cmpb	$0, 8(%rcx)
	je	LBB0_23
## %bb.22:
	movabsq	$7310014432013217614, %rcx      ## imm = 0x6572636553206F4E
	movq	%rcx, (%r14)
	movq	$1937007986, 6(%r14)            ## imm = 0x73746572
	movw	$264, 46(%r12)                  ## imm = 0x108
LBB0_23:
	cmpb	$0, 2(%rax)
	je	LBB0_25
## %bb.24:
	movabsq	$2410398204632982867, %rax      ## imm = 0x2173746572636553
	movq	%rax, (%r14)
	movq	$8563, 6(%r14)                  ## imm = 0x2173
	movw	$8, 46(%r12)
LBB0_25:
	movabsq	$7308604728407450958, %rax      ## imm = 0x656D61472077654E
	movq	%rax, 48(%r12)
	movq	$2188653, 54(%r12)              ## imm = 0x21656D
	movw	$-32508, 62(%r12)               ## imm = 0x8104
	movabsq	$7012993164451733826, %rax      ## imm = 0x615328206B636142
	movq	%rax, 64(%r12)
	movabsq	$45575600234835, %rax           ## imm = 0x297365766153
	movq	%rax, 70(%r12)
	movw	$4, 78(%r12)
	movabsq	$7237087927743635783, %rax      ## imm = 0x646F4D20656D6147
	movq	%rax, 112(%r12)
	movabsq	$1127020893336421, %rax         ## imm = 0x4010500007365
	movq	%rax, 120(%r12)
	jmp	LBB0_100
LBB0_26:
	movabsq	$499967813958, %rax             ## imm = 0x7468676946
	movq	%rax, (%r12)
	movq	$0, 6(%r12)
	movw	$-31729, 14(%r12)               ## imm = 0x840F
	movq	$1818322248, 16(%r12)           ## imm = 0x6C616548
	movq	$0, 22(%r12)
	movw	$-31473, 30(%r12)               ## imm = 0x850F
	movq	$0, 38(%r12)
	movq	$1835365449, 32(%r12)           ## imm = 0x6D657449
	movw	$-30961, 46(%r12)               ## imm = 0x870F
	movq	_unit_selected@GOTPCREL(%rip), %rax
	cmpb	$11, (%rax)
	jne	LBB0_27
## %bb.28:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movb	3071(%rax), %cl
	cmpb	$10, %cl
	je	LBB0_31
## %bb.29:
	movb	$3, %al
	cmpb	$7, %cl
	jne	LBB0_33
## %bb.30:
	movabsq	$7738144516311576396, %rax      ## imm = 0x6B6369706B636F4C
	movq	%rax, 48(%r12)
	movq	$27491, 54(%r12)                ## imm = 0x6B63
	movb	$21, 62(%r12)
	jmp	LBB0_32
LBB0_34:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	movq	_unit_selected@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
	shlq	$8, %rbx
	xorl	%eax, %eax
	cmpb	$58, 27(%r13,%rbx)
	je	LBB0_47
## %bb.35:
	leaq	(%rbx,%r13), %r15
	movb	23(%r13,%rbx), %al
	movzbl	22(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_37
## %bb.36:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%r12)
	movq	$1702065440, 6(%r12)            ## imm = 0x65737520
	jmp	LBB0_40
LBB0_48:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	movq	_unit_selected@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
	shlq	$8, %rbx
	xorl	%eax, %eax
	cmpb	$58, 27(%r13,%rbx)
	je	LBB0_61
## %bb.49:
	leaq	(%rbx,%r13), %r15
	movb	23(%r13,%rbx), %al
	movzbl	22(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_51
## %bb.50:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%r12)
	movq	$1702065440, 6(%r12)            ## imm = 0x65737520
	jmp	LBB0_54
LBB0_64:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	movq	_unit_selected@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
	shlq	$8, %rbx
	xorl	%eax, %eax
	cmpb	$58, 27(%r13,%rbx)
	je	LBB0_77
## %bb.65:
	leaq	(%rbx,%r13), %r15
	movb	23(%r13,%rbx), %al
	movzbl	22(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_67
## %bb.66:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%r12)
	movq	$1702065440, 6(%r12)            ## imm = 0x65737520
	jmp	LBB0_70
LBB0_78:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	_unit_selected@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
	shlq	$8, %rbx
	xorl	%eax, %eax
	cmpb	$58, 27(%r15,%rbx)
	je	LBB0_80
## %bb.79:
	leaq	(%r15,%rbx), %rsi
	movl	$14, %edx
	movq	%r12, %rdi
	callq	_strncpy
	movw	$-30461, 14(%r12)               ## imm = 0x8903
	movl	$1, %eax
	cmpb	$58, 59(%r15,%rbx)
	je	LBB0_80
## %bb.167:
	leaq	16(%r14), %rdi
	leaq	(%r15,%rbx), %rsi
	addq	$32, %rsi
	movl	$14, %edx
	callq	_strncpy
	movw	$-30461, 30(%r12)               ## imm = 0x8903
	movl	$2, %eax
	cmpb	$58, 91(%r15,%rbx)
	je	LBB0_80
## %bb.168:
	leaq	32(%r14), %rdi
	leaq	(%r15,%rbx), %rsi
	addq	$64, %rsi
	movl	$14, %edx
	callq	_strncpy
	movw	$-30461, 46(%r12)               ## imm = 0x8903
	movl	$3, %eax
	cmpb	$58, 123(%r15,%rbx)
	je	LBB0_80
## %bb.169:
	leaq	48(%r14), %rdi
	leaq	(%r15,%rbx), %rsi
	addq	$96, %rsi
	movl	$14, %edx
	callq	_strncpy
	movw	$-30461, 62(%r12)               ## imm = 0x8903
	movl	$4, %eax
	cmpb	$58, 155(%r15,%rbx)
	je	LBB0_80
## %bb.170:
	addq	$64, %r14
	leaq	(%r15,%rbx), %rsi
	addq	$128, %rsi
	movl	$14, %edx
	movq	%r14, %rdi
	callq	_strncpy
	movw	$-30461, 78(%r12)               ## imm = 0x8903
	movl	$5, %eax
LBB0_80:
	movl	%eax, %ecx
	shlq	$4, %rcx
	movq	$0, 6(%r12,%rcx)
	movq	$1801675074, (%r12,%rcx)        ## imm = 0x6B636142
	movw	$-31997, 14(%r12,%rcx)          ## imm = 0x8303
	addb	$1, %al
	movabsq	$7882834580202335548, %rcx      ## imm = 0x6D65744920202D3C
	jmp	LBB0_62
LBB0_81:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	_unit_selected@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
	shlq	$8, %rbx
	xorl	%eax, %eax
	cmpb	$58, 27(%r15,%rbx)
	je	LBB0_92
## %bb.82:
	cmpb	$0, 26(%r15,%rbx)
	je	LBB0_83
## %bb.84:
	leaq	(%r15,%rbx), %rsi
	movb	23(%r15,%rbx), %al
	movzbl	22(%r15,%rbx), %ecx
	cmpb	242(%rcx,%rsi), %al
	jbe	LBB0_86
## %bb.85:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%r12)
	movq	$1702065440, 6(%r12)            ## imm = 0x65737520
	jmp	LBB0_87
LBB0_93:
	movq	$0, 6(%r12)
	movq	$6648661, (%r12)                ## imm = 0x657355
	movb	$16, 14(%r12)
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_unit_selected@GOTPCREL(%rip), %rcx
	movzbl	(%rcx), %ecx
	shlq	$8, %rcx
	leaq	(%rax,%rcx), %rdx
	movb	23(%rax,%rcx), %bl
	movzbl	22(%rax,%rcx), %esi
	cmpb	242(%rsi,%rdx), %bl
	ja	LBB0_95
## %bb.94:
	cmpb	$0, 24(%rax,%rcx)
	jne	LBB0_96
LBB0_95:
	movabsq	$7089074097911787342, %rdx      ## imm = 0x6261735520746F4E
	movq	%rdx, (%r12)
	movq	$1701601889, 6(%r12)            ## imm = 0x656C6261
	movw	$0, 14(%r12)
LBB0_96:
	movabsq	$28273260276967748, %rdx        ## imm = 0x64726163736944
	movq	%rdx, 16(%r12)
	movq	$100, 22(%r12)
	movw	$25, 30(%r12)
	cmpb	$-2, 14(%rax,%rcx)
	jne	LBB0_98
## %bb.97:
	addq	$16, %r14
	movabsq	$7237954630903743520, %rax      ## imm = 0x6472616373694420
	movq	%rax, 6(%r14)
	movabsq	$4909051615776760131, %rax      ## imm = 0x4420746F6E6E6143
	movq	%rax, (%r14)
	movb	$0, 30(%r12)
LBB0_98:
	movq	$0, 38(%r12)
	movq	$1801675074, 32(%r12)           ## imm = 0x6B636142
	movw	$-30961, 46(%r12)               ## imm = 0x870F
	movabsq	$7234312004548522309, %rax      ## imm = 0x6465707069757145
	movq	%rax, 112(%r12)
	movabsq	$38015627415257121, %rax        ## imm = 0x870F0300000021
	movq	%rax, 120(%r12)
	jmp	LBB0_100
LBB0_27:
	movq	$0, 54(%r12)
	movq	$1702259015, 48(%r12)           ## imm = 0x65766947
	movw	$-31213, 62(%r12)               ## imm = 0x8613
	jmp	LBB0_32
LBB0_37:
	cmpb	$0, 26(%r13,%rbx)
	je	LBB0_39
## %bb.38:
	movl	$14, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_strncpy
	movw	$17, 14(%r12)
	jmp	LBB0_40
LBB0_51:
	cmpb	$0, 25(%r13,%rbx)
	je	LBB0_53
## %bb.52:
	movl	$14, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_strncpy
	movw	$19, 14(%r12)
	jmp	LBB0_54
LBB0_67:
	cmpb	$-2, 14(%r13,%rbx)
	jne	LBB0_69
## %bb.68:
	movabsq	$435778316064, %rax             ## imm = 0x6576696720
	movq	%rax, 6(%r12)
	movabsq	$7431067407104237891, %rax      ## imm = 0x6720746F6E6E6143
	movq	%rax, (%r12)
	jmp	LBB0_70
LBB0_83:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 6(%r12)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, (%r12)
	jmp	LBB0_87
LBB0_31:
	movabsq	$121424856315219, %rax          ## imm = 0x6E6F6D6D7553
	movq	%rax, 48(%r12)
	movq	$0, 54(%r12)
	movb	$20, 62(%r12)
LBB0_32:
	movb	$4, %al
LBB0_33:
	movabsq	$32491047111385921, %rcx        ## imm = 0x736E6F69746341
	movq	%rcx, 112(%r12)
	movl	$0, 120(%r12)
	movb	%al, 124(%r12)
	movw	$6145, 125(%r12)                ## imm = 0x1801
	movb	$0, 127(%r12)
	jmp	LBB0_100
LBB0_86:
	movl	$14, %edx
	movq	%r12, %rdi
	callq	_strncpy
	movw	$273, 14(%r12)                  ## imm = 0x111
LBB0_87:
	movl	$1, %eax
	cmpb	$58, 59(%r15,%rbx)
	je	LBB0_92
## %bb.88:
	cmpb	$0, 58(%r15,%rbx)
	je	LBB0_172
## %bb.89:
	leaq	(%r15,%rbx), %rax
	movb	55(%r15,%rbx), %cl
	movzbl	54(%r15,%rbx), %edx
	leaq	16(%r14), %rdi
	cmpb	242(%rdx,%rax), %cl
	jbe	LBB0_90
## %bb.171:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%rdi)
	movq	$1702065440, 6(%rdi)            ## imm = 0x65737520
	jmp	LBB0_173
LBB0_69:
	movl	$14, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_strncpy
	movw	$22, 14(%r12)
LBB0_70:
	movl	$1, %eax
	cmpb	$58, 59(%r13,%rbx)
	je	LBB0_77
## %bb.71:
	movb	55(%r13,%rbx), %al
	movzbl	54(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_72
## %bb.146:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 16(%r12)
	movq	$1702065440, 22(%r12)           ## imm = 0x65737520
	jmp	LBB0_147
LBB0_72:
	leaq	16(%r14), %rdi
	cmpb	$-2, 46(%r13,%rbx)
	jne	LBB0_73
## %bb.145:
	movabsq	$435778316064, %rax             ## imm = 0x6576696720
	movq	%rax, 6(%rdi)
	movabsq	$7431067407104237891, %rax      ## imm = 0x6720746F6E6E6143
	movq	%rax, (%rdi)
LBB0_147:
	xorl	%eax, %eax
	jmp	LBB0_148
LBB0_39:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 6(%r12)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, (%r12)
LBB0_40:
	movl	$1, %eax
	cmpb	$58, 59(%r13,%rbx)
	je	LBB0_47
## %bb.41:
	movb	55(%r13,%rbx), %al
	movzbl	54(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_42
## %bb.102:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 16(%r12)
	movq	$1702065440, 22(%r12)           ## imm = 0x65737520
	jmp	LBB0_103
LBB0_42:
	leaq	16(%r14), %rdi
	cmpb	$0, 58(%r13,%rbx)
	je	LBB0_101
## %bb.43:
	leaq	(%rbx,%r13), %rsi
	addq	$32, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$17, %al
	jmp	LBB0_104
LBB0_53:
	movabsq	$8315168201405177970, %rax      ## imm = 0x7365696C6C612072
	movq	%rax, 6(%r12)
	movabsq	$2338053640980557646, %rax      ## imm = 0x20726F6620746F4E
	movq	%rax, (%r12)
LBB0_54:
	movl	$1, %eax
	cmpb	$58, 59(%r13,%rbx)
	je	LBB0_61
## %bb.55:
	movb	55(%r13,%rbx), %al
	movzbl	54(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_56
## %bb.124:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 16(%r12)
	movq	$1702065440, 22(%r12)           ## imm = 0x65737520
	jmp	LBB0_125
LBB0_56:
	leaq	16(%r14), %rdi
	cmpb	$0, 57(%r13,%rbx)
	je	LBB0_123
## %bb.57:
	leaq	(%rbx,%r13), %rsi
	addq	$32, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$19, %al
	jmp	LBB0_126
LBB0_172:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 22(%r12)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, 16(%r12)
LBB0_173:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	LBB0_174
LBB0_90:
	leaq	(%r15,%rbx), %rsi
	addq	$32, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$1, %cl
	movb	$17, %al
LBB0_174:
	movb	%al, 30(%r12)
	movb	%cl, 31(%r12)
	movl	$2, %eax
	cmpb	$58, 91(%r15,%rbx)
	je	LBB0_92
## %bb.175:
	cmpb	$0, 90(%r15,%rbx)
	je	LBB0_179
## %bb.176:
	leaq	(%r15,%rbx), %rax
	movb	87(%r15,%rbx), %cl
	movzbl	86(%r15,%rbx), %edx
	leaq	32(%r14), %rdi
	cmpb	242(%rdx,%rax), %cl
	jbe	LBB0_177
## %bb.178:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%rdi)
	movq	$1702065440, 6(%rdi)            ## imm = 0x65737520
	jmp	LBB0_180
LBB0_73:
	leaq	(%rbx,%r13), %rsi
	addq	$32, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$22, %al
LBB0_148:
	movb	%al, 30(%r12)
	movb	$0, 31(%r12)
	movl	$2, %eax
	cmpb	$58, 91(%r13,%rbx)
	je	LBB0_77
## %bb.149:
	movb	87(%r13,%rbx), %al
	movzbl	86(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_150
## %bb.153:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 32(%r12)
	movq	$1702065440, 38(%r12)           ## imm = 0x65737520
	jmp	LBB0_154
LBB0_150:
	leaq	32(%r14), %rdi
	cmpb	$-2, 78(%r13,%rbx)
	jne	LBB0_151
## %bb.152:
	movabsq	$435778316064, %rax             ## imm = 0x6576696720
	movq	%rax, 6(%rdi)
	movabsq	$7431067407104237891, %rax      ## imm = 0x6720746F6E6E6143
	movq	%rax, (%rdi)
LBB0_154:
	xorl	%eax, %eax
	jmp	LBB0_155
LBB0_101:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 6(%rdi)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, (%rdi)
LBB0_103:
	xorl	%eax, %eax
LBB0_104:
	movb	%al, 30(%r12)
	movb	$0, 31(%r12)
	movl	$2, %eax
	cmpb	$58, 91(%r13,%rbx)
	je	LBB0_47
## %bb.105:
	movb	87(%r13,%rbx), %al
	movzbl	86(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_106
## %bb.109:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 32(%r12)
	movq	$1702065440, 38(%r12)           ## imm = 0x65737520
	jmp	LBB0_110
LBB0_106:
	leaq	32(%r14), %rdi
	cmpb	$0, 90(%r13,%rbx)
	je	LBB0_108
## %bb.107:
	leaq	(%rbx,%r13), %rsi
	addq	$64, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$17, %al
	jmp	LBB0_111
LBB0_123:
	movabsq	$8315168201405177970, %rax      ## imm = 0x7365696C6C612072
	movq	%rax, 6(%rdi)
	movabsq	$2338053640980557646, %rax      ## imm = 0x20726F6620746F4E
	movq	%rax, (%rdi)
LBB0_125:
	xorl	%eax, %eax
LBB0_126:
	movb	%al, 30(%r12)
	movb	$0, 31(%r12)
	movl	$2, %eax
	cmpb	$58, 91(%r13,%rbx)
	je	LBB0_61
## %bb.127:
	movb	87(%r13,%rbx), %al
	movzbl	86(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_128
## %bb.131:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 32(%r12)
	movq	$1702065440, 38(%r12)           ## imm = 0x65737520
	jmp	LBB0_132
LBB0_128:
	leaq	32(%r14), %rdi
	cmpb	$0, 89(%r13,%rbx)
	je	LBB0_130
## %bb.129:
	leaq	(%rbx,%r13), %rsi
	addq	$64, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$19, %al
	jmp	LBB0_133
LBB0_179:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 38(%r12)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, 32(%r12)
LBB0_180:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	LBB0_181
LBB0_177:
	leaq	(%r15,%rbx), %rsi
	addq	$64, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$1, %cl
	movb	$17, %al
LBB0_181:
	movb	%al, 46(%r12)
	movb	%cl, 47(%r12)
	movl	$3, %eax
	cmpb	$58, 123(%r15,%rbx)
	je	LBB0_92
## %bb.182:
	cmpb	$0, 122(%r15,%rbx)
	je	LBB0_186
## %bb.183:
	leaq	(%r15,%rbx), %rax
	movb	119(%r15,%rbx), %cl
	movzbl	118(%r15,%rbx), %edx
	leaq	48(%r14), %rdi
	cmpb	242(%rdx,%rax), %cl
	jbe	LBB0_184
## %bb.185:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%rdi)
	movq	$1702065440, 6(%rdi)            ## imm = 0x65737520
	jmp	LBB0_187
LBB0_151:
	leaq	(%rbx,%r13), %rsi
	addq	$64, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$22, %al
LBB0_155:
	movb	%al, 46(%r12)
	movb	$0, 47(%r12)
	movl	$3, %eax
	cmpb	$58, 123(%r13,%rbx)
	je	LBB0_77
## %bb.156:
	movb	119(%r13,%rbx), %al
	movzbl	118(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_157
## %bb.160:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 48(%r12)
	movq	$1702065440, 54(%r12)           ## imm = 0x65737520
	jmp	LBB0_161
LBB0_157:
	leaq	48(%r14), %rdi
	cmpb	$-2, 110(%r13,%rbx)
	jne	LBB0_158
## %bb.159:
	movabsq	$435778316064, %rax             ## imm = 0x6576696720
	movq	%rax, 6(%rdi)
	movabsq	$7431067407104237891, %rax      ## imm = 0x6720746F6E6E6143
	movq	%rax, (%rdi)
LBB0_161:
	xorl	%eax, %eax
	jmp	LBB0_162
LBB0_108:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 6(%rdi)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, (%rdi)
LBB0_110:
	xorl	%eax, %eax
LBB0_111:
	movb	%al, 46(%r12)
	movb	$0, 47(%r12)
	movl	$3, %eax
	cmpb	$58, 123(%r13,%rbx)
	je	LBB0_47
## %bb.112:
	movb	119(%r13,%rbx), %al
	movzbl	118(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_113
## %bb.116:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 48(%r12)
	movq	$1702065440, 54(%r12)           ## imm = 0x65737520
	jmp	LBB0_117
LBB0_113:
	leaq	48(%r14), %rdi
	cmpb	$0, 122(%r13,%rbx)
	je	LBB0_115
## %bb.114:
	leaq	(%rbx,%r13), %rsi
	addq	$96, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$17, %al
	jmp	LBB0_118
LBB0_130:
	movabsq	$8315168201405177970, %rax      ## imm = 0x7365696C6C612072
	movq	%rax, 6(%rdi)
	movabsq	$2338053640980557646, %rax      ## imm = 0x20726F6620746F4E
	movq	%rax, (%rdi)
LBB0_132:
	xorl	%eax, %eax
LBB0_133:
	movb	%al, 46(%r12)
	movb	$0, 47(%r12)
	movl	$3, %eax
	cmpb	$58, 123(%r13,%rbx)
	je	LBB0_61
## %bb.134:
	movb	119(%r13,%rbx), %al
	movzbl	118(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_135
## %bb.138:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 48(%r12)
	movq	$1702065440, 54(%r12)           ## imm = 0x65737520
	jmp	LBB0_139
LBB0_135:
	leaq	48(%r14), %rdi
	cmpb	$0, 121(%r13,%rbx)
	je	LBB0_137
## %bb.136:
	leaq	(%rbx,%r13), %rsi
	addq	$96, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$19, %al
	jmp	LBB0_140
LBB0_186:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 54(%r12)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, 48(%r12)
LBB0_187:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	LBB0_188
LBB0_184:
	leaq	(%r15,%rbx), %rsi
	addq	$96, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$1, %cl
	movb	$17, %al
LBB0_188:
	movb	%al, 62(%r12)
	movb	%cl, 63(%r12)
	movl	$4, %eax
	cmpb	$58, 155(%r15,%rbx)
	je	LBB0_92
## %bb.189:
	cmpb	$0, 154(%r15,%rbx)
	je	LBB0_194
## %bb.190:
	leaq	(%r15,%rbx), %rax
	movb	151(%r15,%rbx), %cl
	movzbl	150(%r15,%rbx), %edx
	addq	$64, %r14
	cmpb	242(%rdx,%rax), %cl
	jbe	LBB0_191
## %bb.192:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, (%r14)
	movq	$1702065440, 6(%r14)            ## imm = 0x65737520
	jmp	LBB0_193
LBB0_158:
	leaq	(%rbx,%r13), %rsi
	addq	$96, %rsi
	movl	$14, %edx
	callq	_strncpy
	movb	$22, %al
LBB0_162:
	movb	%al, 62(%r12)
	movb	$0, 63(%r12)
	movl	$4, %eax
	cmpb	$58, 155(%r13,%rbx)
	je	LBB0_77
## %bb.163:
	movb	151(%r13,%rbx), %al
	movzbl	150(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_164
## %bb.166:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 64(%r12)
	movq	$1702065440, 70(%r12)           ## imm = 0x65737520
	jmp	LBB0_75
LBB0_164:
	addq	$64, %r14
	cmpb	$-2, 142(%r13,%rbx)
	jne	LBB0_165
## %bb.74:
	movabsq	$435778316064, %rax             ## imm = 0x6576696720
	movq	%rax, 6(%r14)
	movabsq	$7431067407104237891, %rax      ## imm = 0x6720746F6E6E6143
	movq	%rax, (%r14)
LBB0_75:
	xorl	%eax, %eax
	jmp	LBB0_76
LBB0_115:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 6(%rdi)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, (%rdi)
LBB0_117:
	xorl	%eax, %eax
LBB0_118:
	movb	%al, 62(%r12)
	movb	$0, 63(%r12)
	movl	$4, %eax
	cmpb	$58, 155(%r13,%rbx)
	je	LBB0_47
## %bb.119:
	movb	151(%r13,%rbx), %al
	movzbl	150(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_120
## %bb.122:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 64(%r12)
	movq	$1702065440, 70(%r12)           ## imm = 0x65737520
	jmp	LBB0_45
LBB0_120:
	addq	$64, %r14
	cmpb	$0, 154(%r13,%rbx)
	je	LBB0_44
## %bb.121:
	leaq	(%rbx,%r13), %rsi
	addq	$128, %rsi
	movl	$14, %edx
	movq	%r14, %rdi
	callq	_strncpy
	movb	$17, %al
	jmp	LBB0_46
LBB0_137:
	movabsq	$8315168201405177970, %rax      ## imm = 0x7365696C6C612072
	movq	%rax, 6(%rdi)
	movabsq	$2338053640980557646, %rax      ## imm = 0x20726F6620746F4E
	movq	%rax, (%rdi)
LBB0_139:
	xorl	%eax, %eax
LBB0_140:
	movb	%al, 62(%r12)
	movb	$0, 63(%r12)
	movl	$4, %eax
	cmpb	$58, 155(%r13,%rbx)
	je	LBB0_61
## %bb.141:
	movb	151(%r13,%rbx), %al
	movzbl	150(%r13,%rbx), %ecx
	cmpb	242(%rcx,%r15), %al
	jbe	LBB0_142
## %bb.144:
	movabsq	$8439873723635228995, %rax      ## imm = 0x7520746F6E6E6143
	movq	%rax, 64(%r12)
	movq	$1702065440, 70(%r12)           ## imm = 0x65737520
	jmp	LBB0_59
LBB0_142:
	addq	$64, %r14
	cmpb	$0, 153(%r13,%rbx)
	je	LBB0_58
## %bb.143:
	leaq	(%rbx,%r13), %rsi
	addq	$128, %rsi
	movl	$14, %edx
	movq	%r14, %rdi
	callq	_strncpy
	movb	$19, %al
	jmp	LBB0_60
LBB0_194:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 70(%r12)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, 64(%r12)
LBB0_193:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	LBB0_91
LBB0_191:
	leaq	(%r15,%rbx), %rsi
	addq	$128, %rsi
	movl	$14, %edx
	movq	%r14, %rdi
	callq	_strncpy
	movb	$1, %cl
	movb	$17, %al
LBB0_91:
	movb	%al, 78(%r12)
	movb	%cl, 79(%r12)
	movl	$5, %eax
LBB0_92:
	movl	%eax, %ecx
	shlq	$4, %rcx
	movabsq	$7958552495698243141, %rdx      ## imm = 0x6E72755420646E45
	movq	%rdx, (%r12,%rcx)
	movq	$28274, 6(%r12,%rcx)            ## imm = 0x6E72
	movw	$14, 14(%r12,%rcx)
	addb	$1, %al
	movabsq	$7161132925153455420, %rcx      ## imm = 0x6361747441202D3C
	movq	%rcx, 112(%r12)
	movl	$1043144811, 120(%r12)          ## imm = 0x3E2D206B
	movb	%al, 124(%r12)
	movw	$3585, 125(%r12)                ## imm = 0xE01
	movb	$0, 127(%r12)
	jmp	LBB0_100
LBB0_165:
	leaq	(%rbx,%r13), %rsi
	addq	$128, %rsi
	movl	$14, %edx
	movq	%r14, %rdi
	callq	_strncpy
	movb	$22, %al
LBB0_76:
	movb	%al, 78(%r12)
	movb	$0, 79(%r12)
	movl	$5, %eax
LBB0_77:
	movl	%eax, %ecx
	shlq	$4, %rcx
	movq	$0, 6(%r12,%rcx)
	movq	$1801675074, (%r12,%rcx)        ## imm = 0x6B636142
	movw	$-31997, 14(%r12,%rcx)          ## imm = 0x8303
	addb	$1, %al
	movabsq	$7311146799285153084, %rcx      ## imm = 0x6576694720202D3C
	jmp	LBB0_62
LBB0_44:
	movabsq	$121424905856375, %rax          ## imm = 0x6E6F70616577
	movq	%rax, 6(%r14)
	movabsq	$7311348121587707726, %rax      ## imm = 0x6577206120746F4E
	movq	%rax, (%r14)
LBB0_45:
	xorl	%eax, %eax
LBB0_46:
	movb	%al, 78(%r12)
	movb	$0, 79(%r12)
	movl	$5, %eax
LBB0_47:
	movl	%eax, %ecx
	shlq	$4, %rcx
	movq	$0, 6(%r12,%rcx)
	movq	$1801675074, (%r12,%rcx)        ## imm = 0x6B636142
	movw	$-31997, 14(%r12,%rcx)          ## imm = 0x8303
	addb	$1, %al
	movabsq	$7161132925153455420, %rcx      ## imm = 0x6361747441202D3C
	movq	%rcx, 112(%r12)
	movl	$1043144811, 120(%r12)          ## imm = 0x3E2D206B
	jmp	LBB0_63
LBB0_58:
	movabsq	$8315168201405177970, %rax      ## imm = 0x7365696C6C612072
	movq	%rax, 6(%r14)
	movabsq	$2338053640980557646, %rax      ## imm = 0x20726F6620746F4E
	movq	%rax, (%r14)
LBB0_59:
	xorl	%eax, %eax
LBB0_60:
	movb	%al, 78(%r12)
	movb	$0, 79(%r12)
	movl	$5, %eax
LBB0_61:
	movl	%eax, %ecx
	shlq	$4, %rcx
	movq	$0, 6(%r12,%rcx)
	movq	$1801675074, (%r12,%rcx)        ## imm = 0x6B636142
	movw	$-31997, 14(%r12,%rcx)          ## imm = 0x8303
	addb	$1, %al
	movabsq	$7809634589288181052, %rcx      ## imm = 0x6C61654820202D3C
LBB0_62:
	movq	%rcx, 112(%r12)
	movl	$1043144736, 120(%r12)          ## imm = 0x3E2D2020
LBB0_63:
	movb	%al, 124(%r12)
	movw	$769, 125(%r12)                 ## imm = 0x301
	movb	$-125, 127(%r12)
	jmp	LBB0_100
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_4, LBB0_4-LJTI0_0
.set L0_0_set_17, LBB0_17-LJTI0_0
.set L0_0_set_26, LBB0_26-LJTI0_0
.set L0_0_set_34, LBB0_34-LJTI0_0
.set L0_0_set_48, LBB0_48-LJTI0_0
.set L0_0_set_64, LBB0_64-LJTI0_0
.set L0_0_set_78, LBB0_78-LJTI0_0
.set L0_0_set_81, LBB0_81-LJTI0_0
.set L0_0_set_93, LBB0_93-LJTI0_0
LJTI0_0:
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_17
	.long	L0_0_set_26
	.long	L0_0_set_34
	.long	L0_0_set_48
	.long	L0_0_set_64
	.long	L0_0_set_78
	.long	L0_0_set_81
	.long	L0_0_set_93
	.end_data_region
                                        ## -- End function
	.globl	_next_menu                      ## -- Begin function next_menu
	.p2align	4, 0x90
_next_menu:                             ## @next_menu
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
	callq	_menu_get
	movq	%rax, %r15
	xorl	%r14d, %r14d
	movq	_key_map@GOTPCREL(%rip), %rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	callq	_read_char
	cmpb	2(%rbx), %al
	je	LBB1_2
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpb	3(%rbx), %al
	je	LBB1_6
## %bb.7:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpb	4(%rbx), %al
	je	LBB1_8
## %bb.9:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpb	5(%rbx), %al
	jne	LBB1_1
	jmp	LBB1_10
LBB1_2:                                 ##   in Loop: Header=BB1_1 Depth=1
	testb	%r12b, %r12b
	jne	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movzbl	124(%r15), %r12d
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	addb	$-1, %r12b
	jmp	LBB1_1
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	addb	$1, %r12b
	cmpb	124(%r15), %r12b
	movzbl	%r12b, %r12d
	cmovel	%r14d, %r12d
	jmp	LBB1_1
LBB1_8:
	movzbl	%r12b, %ecx
	shlq	$4, %rcx
	leaq	(%r15,%rcx), %rax
	addq	$14, %rax
	addq	%r15, %rcx
	addq	$15, %rcx
	movb	(%rcx), %bl
	movzbl	(%rax), %ecx
	cmpb	$0, 125(%r15)
	je	LBB1_13
LBB1_12:
	movq	%r15, %rdi
	movq	%rcx, %r14
	callq	_free
	movq	%r14, %rcx
LBB1_13:
	leaq	_action_ptrs(%rip), %rax
	movzbl	%bl, %edi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rax,%rcx,8)                  ## TAILCALL
LBB1_10:
	leaq	126(%r15), %rax
	movq	%r15, %rcx
	addq	$127, %rcx
	movb	(%rcx), %bl
	movzbl	(%rax), %ecx
	cmpb	$0, 125(%r15)
	jne	LBB1_12
	jmp	LBB1_13
	.cfi_endproc
                                        ## -- End function
	.globl	_opening_menu                   ## -- Begin function opening_menu
	.p2align	4, 0x90
_opening_menu:                          ## @opening_menu
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
	callq	_menu_get
	movq	%rax, %r15
	movq	_key_map@GOTPCREL(%rip), %rbx
	xorl	%ecx, %ecx
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	addb	$1, %cl
	cmpb	124(%r15), %cl
	movzbl	%cl, %ecx
	movl	$0, %eax
	cmovel	%eax, %ecx
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
	movl	%ecx, -44(%rbp)                 ## 4-byte Spill
	movzbl	%cl, %r13d
	shlq	$4, %r13
	leaq	(%r15,%r13), %r14
	addq	$14, %r14
	.p2align	4, 0x90
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	callq	_read_char
	cmpb	2(%rbx), %al
	je	LBB2_3
## %bb.6:                               ##   in Loop: Header=BB2_2 Depth=2
	cmpb	3(%rbx), %al
	je	LBB2_7
## %bb.8:                               ##   in Loop: Header=BB2_2 Depth=2
	cmpb	4(%rbx), %al
	jne	LBB2_11
## %bb.9:                               ##   in Loop: Header=BB2_2 Depth=2
	movzbl	(%r14), %r12d
	testb	%r12b, %r12b
	jne	LBB2_10
LBB2_11:                                ##   in Loop: Header=BB2_2 Depth=2
	cmpb	5(%rbx), %al
	jne	LBB2_2
## %bb.12:                              ##   in Loop: Header=BB2_2 Depth=2
	movzbl	126(%r15), %r12d
	testb	%r12b, %r12b
	je	LBB2_2
	jmp	LBB2_13
	.p2align	4, 0x90
LBB2_3:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	testb	%cl, %cl
	jne	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_1 Depth=1
	movb	124(%r15), %cl
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	addb	$-1, %cl
	jmp	LBB2_1
LBB2_10:
	leaq	(%r15,%r13), %rax
	addq	$15, %rax
	movb	(%rax), %bl
	cmpb	$0, 125(%r15)
	je	LBB2_16
LBB2_15:
	movq	%r15, %rdi
	callq	_free
LBB2_16:
	movzbl	%r12b, %eax
	leaq	_action_ptrs(%rip), %rcx
	movzbl	%bl, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rcx,%rax,8)                  ## TAILCALL
LBB2_13:
	movq	%r15, %rax
	addq	$127, %rax
	movb	(%rax), %bl
	cmpb	$0, 125(%r15)
	jne	LBB2_15
	jmp	LBB2_16
	.cfi_endproc
                                        ## -- End function
	.globl	_att_heal_give_item_menu        ## -- Begin function att_heal_give_item_menu
	.p2align	4, 0x90
_att_heal_give_item_menu:               ## @att_heal_give_item_menu
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
	movl	%edi, %r14d
	callq	_menu_get
	movq	%rax, %r13
	movq	_key_map@GOTPCREL(%rip), %rbx
	xorl	%ecx, %ecx
	jmp	LBB3_1
	.p2align	4, 0x90
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	addb	$1, %cl
	cmpb	124(%r13), %cl
	movzbl	%cl, %ecx
	movl	$0, %eax
	cmovel	%eax, %ecx
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_2 Depth 2
	movl	%ecx, -44(%rbp)                 ## 4-byte Spill
	movzbl	%cl, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	shlq	$4, %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	leaq	(%rax,%r13), %r12
	addq	$14, %r12
	.p2align	4, 0x90
LBB3_2:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	callq	_read_char
	cmpb	2(%rbx), %al
	je	LBB3_3
## %bb.6:                               ##   in Loop: Header=BB3_2 Depth=2
	cmpb	3(%rbx), %al
	je	LBB3_7
## %bb.8:                               ##   in Loop: Header=BB3_2 Depth=2
	cmpb	4(%rbx), %al
	jne	LBB3_12
## %bb.9:                               ##   in Loop: Header=BB3_2 Depth=2
	cmpb	$0, (%r12)
	jne	LBB3_10
LBB3_12:                                ##   in Loop: Header=BB3_2 Depth=2
	cmpb	5(%rbx), %al
	jne	LBB3_15
## %bb.13:                              ##   in Loop: Header=BB3_2 Depth=2
	movzbl	126(%r13), %r15d
	testb	%r15b, %r15b
	jne	LBB3_14
LBB3_15:                                ##   in Loop: Header=BB3_2 Depth=2
	cmpb	(%rbx), %al
	je	LBB3_16
## %bb.18:                              ##   in Loop: Header=BB3_2 Depth=2
	cmpb	1(%rbx), %al
	jne	LBB3_2
## %bb.19:                              ##   in Loop: Header=BB3_2 Depth=2
	movq	%r13, %rdi
	callq	_free
	addb	$1, %r14b
	cmpb	$-120, %r14b
	movzbl	%r14b, %r14d
	movl	$132, %eax
	cmovael	%eax, %r14d
	jmp	LBB3_17
LBB3_16:                                ##   in Loop: Header=BB3_2 Depth=2
	movq	%r13, %rdi
	callq	_free
	addb	$-1, %r14b
	cmpb	$-124, %r14b
	movzbl	%r14b, %r14d
	movl	$135, %eax
	cmovbl	%eax, %r14d
LBB3_17:                                ##   in Loop: Header=BB3_2 Depth=2
	movzbl	%r14b, %edi
	callq	_menu_get
	jmp	LBB3_2
	.p2align	4, 0x90
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	testb	%cl, %cl
	jne	LBB3_5
## %bb.4:                               ##   in Loop: Header=BB3_1 Depth=1
	movb	124(%r13), %cl
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	addb	$-1, %cl
	jmp	LBB3_1
LBB3_10:
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	_unit_selected@GOTPCREL(%rip), %rcx
	movzbl	(%rcx), %edi
	shlq	$8, %rdi
	addq	(%rax), %rdi
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	movl	%ebx, %esi
	callq	_unit_equip_item
	movb	(%r12), %r15b
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	addq	%r13, %rax
	addq	$15, %rax
	jmp	LBB3_11
LBB3_14:
	movq	%r13, %rax
	addq	$127, %rax
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
LBB3_11:
	movzbl	(%rax), %r14d
	movq	_user_data@GOTPCREL(%rip), %rax
	movq	_unit_selected@GOTPCREL(%rip), %rcx
	movzbl	(%rcx), %edi
	shlq	$8, %rdi
	addq	(%rax), %rdi
	movl	%ebx, %esi
	callq	_unit_equip_item
	movq	%r13, %rdi
	callq	_free
	movzbl	%r15b, %eax
	leaq	_action_ptrs(%rip), %rcx
	movl	%r14d, %edi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rcx,%rax,8)                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_const_menus                    ## @const_menus
	.p2align	4
_const_menus:
	.asciz	"Load Game\000\000\000\000"
	.byte	4                               ## 0x4
	.byte	128                             ## 0x80
	.asciz	"New Game!\000\000\000\000"
	.byte	4                               ## 0x4
	.byte	129                             ## 0x81
	.asciz	"Settings\000\000\000\000\000"
	.byte	4                               ## 0x4
	.byte	1                               ## 0x1
	.space	16
	.space	16
	.space	16
	.space	16
	.byte	3                               ## 0x3
	.space	11
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.asciz	"Mute\000\000\000\000\000\000\000\000\000"
	.byte	5                               ## 0x5
	.byte	0                               ## 0x0
	.asciz	"Game Modes\000\000\000"
	.byte	130                             ## 0x82
	.byte	0                               ## 0x0
	.asciz	"Back\000\000\000\000\000\000\000\000\000"
	.byte	4                               ## 0x4
	.byte	0                               ## 0x0
	.space	16
	.space	16
	.space	16
	.space	16
	.byte	3                               ## 0x3
	.byte	0                               ## 0x0
	.byte	4                               ## 0x4
	.space	9
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.asciz	"Mute\000\000\000\000\000\000\000\000\000"
	.byte	5                               ## 0x5
	.byte	0                               ## 0x0
	.asciz	"Quit Game\000\000\000\000"
	.byte	11                              ## 0xb
	.byte	0                               ## 0x0
	.asciz	"Back\000\000\000\000\000\000\000\000\000"
	.byte	13                              ## 0xd
	.byte	0                               ## 0x0
	.space	16
	.space	16
	.space	16
	.space	16
	.byte	3                               ## 0x3
	.space	11
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0

l_.str:                                 ## @.str
	.asciz	"Empty Save\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"Choose file"

	.section	__TEXT,__const
l_.str.2:                               ## @.str.2
	.asciz	"Growths (On)\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str.3:                               ## @.str.3
	.asciz	"Growths (Off)"

	.section	__TEXT,__const
l_.str.4:                               ## @.str.4
	.asciz	"Normal Mode\000\000"

l_.str.5:                               ## @.str.5
	.asciz	"HARD MODE\000\000\000\000"

l_.str.6:                               ## @.str.6
	.asciz	"???\000\000\000\000\000\000\000\000\000\000"

l_.str.7:                               ## @.str.7
	.asciz	"No Secrets\000\000\000"

l_.str.8:                               ## @.str.8
	.asciz	"Secrets!\000\000\000\000\000"

l_.str.9:                               ## @.str.9
	.asciz	"New Game!\000\000\000\000"

l_.str.10:                              ## @.str.10
	.asciz	"Back (Saves)\000"

l_.str.11:                              ## @.str.11
	.asciz	"Game Modes\000"

l_.str.12:                              ## @.str.12
	.asciz	"Fight\000\000\000\000\000\000\000\000"

l_.str.13:                              ## @.str.13
	.asciz	"Heal\000\000\000\000\000\000\000\000\000"

l_.str.14:                              ## @.str.14
	.asciz	"Item\000\000\000\000\000\000\000\000\000"

l_.str.15:                              ## @.str.15
	.asciz	"Give\000\000\000\000\000\000\000\000\000"

l_.str.16:                              ## @.str.16
	.asciz	"Lockpick\000\000\000\000\000"

l_.str.17:                              ## @.str.17
	.asciz	"Summon\000\000\000\000\000\000\000"

l_.str.18:                              ## @.str.18
	.asciz	"Actions\000\000\000\000"

l_.str.19:                              ## @.str.19
	.asciz	"Cannot use\000\000\000"

l_.str.20:                              ## @.str.20
	.asciz	"Not a weapon\000"

l_.str.21:                              ## @.str.21
	.asciz	"Back\000\000\000\000\000\000\000\000\000"

l_.str.22:                              ## @.str.22
	.ascii	"<- Attack ->"

l_.str.23:                              ## @.str.23
	.ascii	"Not for allies"

l_.str.24:                              ## @.str.24
	.ascii	"<-  Heal  ->"

l_.str.25:                              ## @.str.25
	.asciz	"Cannot give\000\000"

l_.str.26:                              ## @.str.26
	.ascii	"<-  Give  ->"

l_.str.27:                              ## @.str.27
	.ascii	"<-  Item  ->"

l_.str.28:                              ## @.str.28
	.asciz	"End Turn\000\000\000\000\000"

l_.str.29:                              ## @.str.29
	.asciz	"Use\000\000\000\000\000\000\000\000\000\000"

l_.str.30:                              ## @.str.30
	.asciz	"Not Usable\000\000\000"

l_.str.31:                              ## @.str.31
	.asciz	"Discard\000\000\000\000\000\000"

l_.str.32:                              ## @.str.32
	.ascii	"Cannot Discard"

l_.str.33:                              ## @.str.33
	.asciz	"Equipped!\000\000"

	.section	__DATA,__data
	.globl	_action_ptrs                    ## @action_ptrs
	.p2align	4
_action_ptrs:
	.quad	0
	.quad	_pop_menu
	.quad	_pop_all_menus
	.quad	_next_menu
	.quad	_opening_menu
	.quad	_toggle_volume
	.quad	_set_zero_growths
	.quad	_set_hard_mode
	.quad	_set_secrets_flag
	.quad	_load_game
	.quad	_new_game
	.quad	_exit_game
	.quad	_init_map
	.quad	_to_map_cursor
	.quad	_end_turn
	.quad	_att_heal_give_item_menu
	.quad	_open_chest
	.quad	_move_unit
	.quad	_discard_item

.subsections_via_symbols
