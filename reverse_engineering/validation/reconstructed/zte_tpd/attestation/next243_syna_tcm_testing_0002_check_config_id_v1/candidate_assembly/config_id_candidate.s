	.arch armv8-a
	.file	"syna_tcm_testing_0002_check_config_id.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"syna_tcm_testing_0002_check_config_id"
	.align	3
.LC1:
	.string	"\0013[error] %s: Config ID mismatched, FW: %s (limit: %s)\n"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_tcm_testing_0002_check_config_id
	.type	syna_tcm_testing_0002_check_config_id, %function
syna_tcm_testing_0002_check_config_id:
.LFB0:
	.cfi_startproc
	cmp	x0, 0
	ccmp	x1, 0, 4, ne
	beq	.L9
.L3:
	mov	x7, x0
	mov	w0, 1
	tbnz	w2, #31, .L10
	mov	x4, 0
	b	.L5
	.p2align 2,,3
.L4:
	cmp	w2, w4
	blt	.L14
.L5:
	ldrb	w6, [x7, x4]
	ldrb	w5, [x1, x4]
	add	x4, x4, 1
	cmp	w6, w5
	beq	.L4
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x3, x1
	mov	x2, x7
	mov	x29, sp
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printk
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L9:
	mov	w0, 0
.L10:
	ret
	.p2align 2,,3
.L14:
	mov	w0, 1
	ret
	.cfi_endproc
.LFE0:
	.size	syna_tcm_testing_0002_check_config_id, .-syna_tcm_testing_0002_check_config_id
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
