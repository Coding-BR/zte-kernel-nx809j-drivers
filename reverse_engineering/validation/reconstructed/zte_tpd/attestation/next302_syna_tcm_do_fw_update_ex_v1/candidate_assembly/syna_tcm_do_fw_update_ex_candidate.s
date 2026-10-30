	.file	"syna_tcm_do_fw_update_ex_aarch64_assembly_input.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"syna_tcm_do_fw_update_ex"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"\\0013[error] %s: Invalid parameter\\n"
	.align 8
.LC2:
	.string	"\\0013[error] %s: Temporary buffer release required\\n"
	.align 8
.LC3:
	.string	"\\0013[error] %s: Managed free unavailable\\n"
	.text
	.p2align 4
	.globl	syna_tcm_do_fw_update_ex
	.type	syna_tcm_do_fw_update_ex, @function
syna_tcm_do_fw_update_ex:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movl	240(%rsp), %eax
	movl	%ecx, 8(%rsp)
	leaq	16(%rsp), %r14
	movl	$18, %ecx
	movq	%r14, %rdi
	movl	%eax, 12(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	rep stosq
	testq	%rbx, %rbx
	je	.L2
	movq	%rsi, %r15
	testq	%rsi, %rsi
	je	.L2
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.L2
	movl	%edx, 16(%rsp)
	movl	%r8d, %r13d
	movl	%r9d, %r12d
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jne	.L40
.L5:
	movzbl	9(%rbx), %ecx
	movzwl	178(%rbx), %edi
	movl	$1, 904(%rbx)
	cmpb	$11, %cl
	je	.L8
	testw	%di, %di
	je	.L7
	cmpb	$1, %cl
	je	.L8
.L7:
	testb	$8, %dl
	je	.L10
.L46:
	movl	64(%r15), %ecx
	movl	%ecx, 156(%rsp)
.L10:
	andl	$1, %edx
	jne	.L41
.L11:
	movl	%r12d, %ecx
	movl	%eax, %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	syna_tcm_set_up_flash_access@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	js	.L12
	cmpb	$11, 9(%rbx)
	jne	.L15
	movl	16(%rsp), %eax
	testb	$8, %al
	jne	.L42
.L14:
	testb	$1, %al
	jne	.L43
.L15:
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	syna_tcm_reset@PLT
	movl	%eax, %ebp
.L12:
	cmpb	$0, 144(%rsp)
	movl	$0, 904(%rbx)
	jne	.L44
.L16:
	cmpq	$0, 80(%rsp)
	je	.L1
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L18
	movq	80(%rsp), %rsi
	call	devm_kfree@PLT
.L1:
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L45
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	movl	128(%r15), %edx
	addl	%edx, 156(%rsp)
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L40:
	movl	524(%rbx), %eax
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L8:
	orl	$9, %edx
	movl	%edx, 16(%rsp)
	testb	$8, %dl
	je	.L10
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L44:
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L18:
	leaq	.LC0(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L43:
	movl	8(%rsp), %ecx
	leaq	112(%r15), %rdx
	xorl	%r9d, %r9d
	movl	%r13d, %r8d
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	syna_tcm_update_flash_block@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jns	.L15
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L42:
	movzbl	12(%rsp), %r9d
	movl	8(%rsp), %ecx
	movl	%r13d, %r8d
	movq	%r14, %rsi
	andb	152(%rsp), %r9b
	leaq	48(%r15), %rdx
	movq	%rbx, %rdi
	andl	$1, %r9d
	call	syna_tcm_update_flash_block@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	js	.L12
	movl	16(%rsp), %eax
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	movl	$-241, %ebp
	call	printk@PLT
	jmp	.L1
.L45:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	syna_tcm_do_fw_update_ex, .-syna_tcm_do_fw_update_ex
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
