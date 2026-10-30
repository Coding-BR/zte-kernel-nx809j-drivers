	.file	"syna_tcm_read_flash_mtp_config_aarch64_assembly_input.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"syna_tcm_read_flash_mtp_config"
	.align 8
.LC1:
	.string	"\\0013[error] %s: Invalid parameter\\n"
	.align 8
.LC2:
	.string	"\\0013[error] %s: Application mode is not supported\\n"
	.align 8
.LC3:
	.string	"\\0013[error] %s: Unsupported boot version\\n"
	.align 8
.LC4:
	.string	"\\0013[error] %s: Invalid read length\\n"
	.align 8
.LC5:
	.string	"\\0013[error] %s: Managed free unavailable\\n"
	.align 8
.LC6:
	.string	"\\0013[error] %s: Managed allocation unavailable\\n"
	.align 8
.LC7:
	.string	"\\0013[error] %s: Allocation failed\\n"
	.align 8
.LC8:
	.string	"\\0013[error] %s: Missing destination buffer\\n"
	.align 8
.LC9:
	.string	"\\0013[error] %s: Flash read failed\\n"
	.text
	.p2align 4
	.globl	syna_tcm_read_flash_mtp_config
	.type	syna_tcm_read_flash_mtp_config, @function
syna_tcm_read_flash_mtp_config:
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
	movq	%rdx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	sete	%al
	testq	%rdx, %rdx
	sete	%dl
	orb	%dl, %al
	jne	.L21
	movq	%rdi, %r13
	testq	%rdi, %rdi
	je	.L21
	cmpb	$1, 9(%rdi)
	je	.L27
	movq	32(%rsi), %rax
	movq	%rsi, %r12
	testq	%rax, %rax
	je	.L7
	cmpb	$3, (%rax)
	jne	.L7
	movl	%ecx, %ebp
	movl	%r8d, %r14d
	movl	%r9d, %r15d
	testl	%ecx, %ecx
	jne	.L9
	movl	40(%rsi), %ebp
	testl	%ebp, %ebp
	je	.L28
.L9:
	movl	8(%rbx), %eax
	movq	(%rbx), %rdi
	cmpl	%ebp, %eax
	jnb	.L10
	testq	%rdi, %rdi
	je	.L11
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L12
	movq	(%rbx), %rsi
	movq	%rax, 8(%rsp)
	call	devm_kfree@PLT
	movq	8(%rsp), %rdi
.L13:
	movl	%ebp, %ecx
	movl	$3520, %edx
	movq	%rcx, %rsi
	movq	%rcx, 8(%rsp)
	call	devm_kmalloc@PLT
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	je	.L29
	movl	%ebp, 8(%rbx)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L10:
	testq	%rdi, %rdi
	je	.L30
	movl	%eax, %ecx
.L17:
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movl	60(%r12), %esi
	movq	(%rbx), %rdx
	movl	%r15d, %r8d
	movl	$0, 12(%rbx)
	movl	%ebp, %ecx
	movq	%r13, %rdi
	addl	%r14d, %esi
	call	syna_tcm_read_flash@PLT
	movl	%eax, %r12d
	testl	%eax, %eax
	js	.L31
	movl	%ebp, 12(%rbx)
.L1:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
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
.L11:
	.cfi_restore_state
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
.L14:
	testq	%rdi, %rdi
	jne	.L13
	movq	$0, (%rbx)
	leaq	.LC0(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	movl	$0, 8(%rbx)
	call	printk@PLT
.L15:
	movl	$-243, %r12d
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L31:
	leaq	.LC0(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L12:
	leaq	.LC5(%rip), %rdi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	call	printk@PLT
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	jmp	.L14
.L28:
	leaq	.LC0(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$-241, %r12d
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L7:
	leaq	.LC0(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L4
.L21:
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L4
.L30:
	leaq	.LC0(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	movl	$-22, %r12d
	call	printk@PLT
	jmp	.L1
.L27:
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L4
.L29:
	movl	$0, 8(%rbx)
	leaq	.LC0(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L15
	.cfi_endproc
.LFE0:
	.size	syna_tcm_read_flash_mtp_config, .-syna_tcm_read_flash_mtp_config
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
