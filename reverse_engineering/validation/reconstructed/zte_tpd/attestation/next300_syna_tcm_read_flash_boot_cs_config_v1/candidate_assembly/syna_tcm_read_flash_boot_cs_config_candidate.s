	.file	"syna_tcm_read_flash_boot_cs_config_aarch64_assembly_input.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"syna_tcm_read_flash_boot_cs_config"
	.align 8
.LC1:
	.string	"\\0013[error] %s: Invalid parameter\\n"
	.align 8
.LC2:
	.string	"\\0013[error] %s: Application mode is not supported\\n"
	.align 8
.LC3:
	.string	"\\0013[error] %s: Missing boot information\\n"
	.align 8
.LC4:
	.string	"\\0013[error] %s: Unsupported boot version=%u\\n"
	.text
	.p2align 4
	.globl	syna_tcm_read_flash_boot_cs_config
	.type	syna_tcm_read_flash_boot_cs_config, @function
syna_tcm_read_flash_boot_cs_config:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movl	%r8d, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	movaps	%xmm0, 16(%rsp)
	sete	%al
	testq	%rdx, %rdx
	movaps	%xmm0, 32(%rsp)
	sete	%dl
	movaps	%xmm0, 48(%rsp)
	orb	%dl, %al
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	jne	.L45
	movq	%rdi, %r12
	testq	%rdi, %rdi
	je	.L45
	cmpb	$1, 9(%rdi)
	je	.L63
	movq	32(%rsi), %rax
	testq	%rax, %rax
	je	.L64
	movzbl	(%rax), %edx
	movl	%ecx, %ebp
	movl	%edx, %ecx
	andl	$-3, %ecx
	cmpb	$1, %cl
	jne	.L65
	movl	%r9d, %r14d
	testl	%ebp, %ebp
	je	.L66
	movl	44(%rsi), %ecx
	cmpb	$1, %dl
	je	.L67
	movzwl	16(%rax), %eax
	imull	%ecx, %eax
	movl	%eax, 12(%rsp)
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L68
.L23:
	movl	%ebp, %r15d
	movl	$3520, %edx
	movl	$-243, %r13d
	movq	%r15, %rsi
	call	devm_kmalloc@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L1
	movq	%r15, %rdx
	xorl	%esi, %esi
	movl	%ebp, 24(%rsp)
	call	memset@PLT
	movl	8(%rbx), %edx
	cmpl	%ebp, %edx
	jnb	.L24
	cmpq	$0, (%rbx)
	je	.L26
	call	syna_request_managed_device@PLT
	testq	%rax, %rax
	je	.L26
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	call	devm_kfree@PLT
.L26:
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L69
.L28:
	movl	$3520, %edx
	movq	%r15, %rsi
	call	devm_kmalloc@PLT
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L60
	movl	%ebp, 8(%rbx)
	movq	%r15, %rdx
.L30:
	xorl	%esi, %esi
	call	memset@PLT
	movl	8(%rsp), %esi
	movl	12(%rsp), %eax
	movl	%r14d, %r8d
	movl	$0, 12(%rbx)
	movq	16(%rsp), %rdx
	movl	%ebp, %ecx
	movq	%r12, %rdi
	addl	%eax, %esi
	call	syna_tcm_read_flash@PLT
	movq	16(%rsp), %rsi
	movl	%eax, %r13d
	testl	%eax, %eax
	js	.L11
	movl	$-22, %r13d
	cmpl	%ebp, 8(%rbx)
	jb	.L11
	cmpl	%ebp, 24(%rsp)
	jb	.L11
	movq	(%rbx), %rdi
	movq	%r15, %rdx
	xorl	%r13d, %r13d
	call	memcpy@PLT
	movl	%ebp, 12(%rbx)
	movq	16(%rsp), %rsi
	.p2align 4,,10
	.p2align 3
.L11:
	testq	%rsi, %rsi
	je	.L1
.L12:
	call	syna_request_managed_device@PLT
	testq	%rax, %rax
	je	.L1
	movq	16(%rsp), %rsi
	movq	%rax, %rdi
	call	devm_kfree@PLT
.L1:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L70
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r13d, %eax
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
.L67:
	.cfi_restore_state
	movzwl	12(%rax), %eax
	imull	%ecx, %eax
	movl	%eax, 12(%rsp)
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L23
.L68:
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L23
.L60:
	movq	16(%rsp), %rsi
	movl	$-243, %r13d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L66:
	leaq	16(%rsp), %rdx
	movl	%r9d, %ecx
	call	syna_tcm_read_flash_boot_config@PLT
	movq	16(%rsp), %rsi
	movl	%eax, %r13d
	testl	%eax, %eax
	js	.L11
	movq	16(%rsp), %rsi
	movl	28(%rsp), %ebp
	testq	%rsi, %rsi
	je	.L37
	cmpl	$135, %ebp
	jbe	.L37
	cmpl	%ebp, 24(%rsp)
	jb	.L38
	movl	8(%rbx), %eax
	movq	(%rbx), %rdi
	cmpl	%ebp, %eax
	jnb	.L13
	testq	%rdi, %rdi
	je	.L14
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L15
	movq	(%rbx), %rsi
	call	devm_kfree@PLT
.L14:
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L71
.L16:
	movl	%ebp, %r12d
	movl	$3520, %edx
	movq	%r12, %rsi
	call	devm_kmalloc@PLT
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L60
	movl	%ebp, 8(%rbx)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L24:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L30
	movq	16(%rsp), %rsi
	movl	$-22, %r13d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L69:
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L28
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L37:
	movl	$-22, %r13d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L13:
	movl	$-22, %r13d
	movl	%eax, %r12d
	testq	%rdi, %rdi
	je	.L12
.L35:
	xorl	%esi, %esi
	movq	%r12, %rdx
	call	memset@PLT
	movl	$0, 12(%rbx)
	movq	16(%rsp), %rsi
	leal	-7(%rbp), %eax
	leal	-135(%rbp), %edi
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L18:
	movl	%ecx, %eax
	cmpl	%edi, %ecx
	je	.L72
.L20:
	movl	%eax, %edx
	leal	-8(%rax), %ecx
	cmpb	$0, (%rsi,%rdx)
	jns	.L18
	movl	%ecx, %edx
	cmpb	$0, (%rsi,%rdx)
	js	.L18
	leal	-1(%rax), %ebp
.L19:
	movl	$-22, %r13d
	cmpl	%ebp, 8(%rbx)
	jb	.L11
	cmpl	%ebp, 24(%rsp)
	jb	.L11
	movq	(%rbx), %rdi
	movl	%ebp, %edx
	xorl	%r13d, %r13d
	call	memcpy@PLT
	movl	%ebp, 12(%rbx)
	movq	16(%rsp), %rsi
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$-22, %r13d
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L72:
	subl	$136, %ebp
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L71:
	call	syna_request_managed_device@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L16
	jmp	.L60
.L45:
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
.L4:
	movl	$-241, %r13d
	jmp	.L1
.L15:
	call	syna_request_managed_device@PLT
	jmp	.L14
.L65:
	leaq	.LC0(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L4
.L63:
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printk@PLT
	jmp	.L4
.L64:
	leaq	.LC0(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	printk@PLT
	jmp	.L4
.L70:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	syna_tcm_read_flash_boot_cs_config, .-syna_tcm_read_flash_boot_cs_config
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
