	.arch armv8-a
	.file	"syna_tcm_v1_parse_idinfo.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"syna_pal_mem_cpy"
	.align	3
.LC1:
	.string	"\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
	.align	3
.LC2:
	.string	"syna_tcm_v1_parse_idinfo"
	.align	3
.LC3:
	.string	"\0013[error] %s: Fail to copy identification info\n"
	.align	3
.LC4:
	.string	"\0013[error] %s: Invalid given data buffer\n"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_tcm_v1_parse_idinfo
	.type	syna_tcm_v1_parse_idinfo, %function
syna_tcm_v1_parse_idinfo:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	cmp	x1, 0
	ccmp	w3, 0, 4, ne
	mov	x29, sp
	beq	.L2
	cmp	w3, 48
	mov	w5, 48
	csel	w6, w3, w5, ls
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	csel	w4, w3, w5, ls
	mov	x19, x0
	cmp	w6, w2
	bhi	.L8
	mov	x2, x4
	add	x0, x19, 128
	bl	memcpy
	ldr	w1, [x19, 12]
	ldr	w0, [x19, 146]
	cmp	w1, w0
	beq	.L5
	str	w0, [x19, 12]
.L5:
	ldrb	w1, [x19, 129]
	mov	x0, 0
	strb	w1, [x19, 9]
	ldr	x19, [sp, 16]
	.cfi_remember_state
	.cfi_restore 19
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L8:
	.cfi_restore_state
	mov	w3, w5
	adrp	x1, .LC0
	adrp	x0, .LC1
	add	x1, x1, :lo12:.LC0
	add	x0, x0, :lo12:.LC1
	bl	printk
	adrp	x1, .LC2
	adrp	x0, .LC3
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC3
	bl	printk
	ldr	x19, [sp, 16]
	.cfi_restore 19
	mov	w0, 4294967274
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2:
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	adrp	x1, .LC2
	adrp	x0, .LC4
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC4
	bl	printk
	mov	w0, 4294967055
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	syna_tcm_v1_parse_idinfo, .-syna_tcm_v1_parse_idinfo
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
