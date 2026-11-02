	.arch armv8-a
	.file	"syna_tcm_config_timings.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"syna_tcm_config_timings"
	.align	3
.LC1:
	.string	"\0013[error] %s: Invalid timing settings of product\n"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_tcm_config_timings
	.type	syna_tcm_config_timings, %function
syna_tcm_config_timings:
.LFB0:
	.cfi_startproc
	cmp	x1, 0
	mov	w4, 65535
	ccmp	w3, w4, 0, eq
	beq	.L123
	and	w4, w3, 1
	and	w5, w3, 2
	cbz	x1, .L4
	tbz	x3, 2, .L124
	ldr	w2, [x1, 8]
	cbz	w2, .L8
	str	w2, [x0, 528]
.L8:
	ldr	w2, [x1, 12]
	cbz	w2, .L125
	str	w2, [x0, 532]
	cbz	w4, .L13
	ldr	w4, [x1]
	cbz	w4, .L114
.L14:
	str	w4, [x0, 520]
	mov	w2, w4
	cbz	w5, .L16
.L15:
	ldr	w2, [x1, 4]
	cbz	w2, .L58
	str	w2, [x0, 524]
.L132:
	and	w5, w3, 256
	and	w4, w3, 512
	tbnz	x3, 3, .L126
.L33:
	cbz	w5, .L127
	ldr	w3, [x1, 32]
	cbz	w3, .L116
.L111:
	str	w3, [x0, 488]
	cbz	w4, .L52
	ldr	w1, [x1, 36]
	cmp	w1, 0
	csel	w1, w1, w3, ne
.L39:
	str	w1, [x0, 492]
.L130:
	mov	w0, 0
	ret
	.p2align 2,,3
.L124:
	cbz	w4, .L128
	ldr	w4, [x1]
	cbnz	w4, .L14
	cbnz	w2, .L114
	cbnz	w5, .L11
.L24:
	mov	w2, 0
.L16:
	and	w5, w3, 256
	and	w4, w3, 512
	tbz	x3, 3, .L33
.L126:
	ldr	w2, [x1, 16]
	cbnz	w2, .L34
	cbz	w5, .L97
	ldr	w2, [x1, 32]
.L116:
	cbnz	w2, .L129
.L97:
	cbz	w4, .L52
	ldr	w1, [x1, 36]
	cbz	w1, .L52
	str	w1, [x0, 492]
	b	.L130
	.p2align 2,,3
.L4:
	cbz	w4, .L131
	cbz	w2, .L52
	str	w2, [x0, 520]
	cbnz	w5, .L28
	tbz	x3, 8, .L105
.L29:
	str	w2, [x0, 488]
	.p2align 3,,7
.L105:
	tbz	x3, 9, .L52
.L59:
	mov	w1, w2
	str	w1, [x0, 492]
	b	.L130
	.p2align 2,,3
.L125:
	cbnz	w4, .L10
	cbz	w5, .L16
.L11:
	ldr	w2, [x1, 4]
.L109:
	cbz	w2, .L24
	str	w2, [x0, 524]
	b	.L132
	.p2align 2,,3
.L128:
	cbz	w5, .L16
	ldr	w4, [x1, 4]
	cbz	w4, .L109
.L58:
	mov	w2, w4
	str	w2, [x0, 524]
	b	.L132
	.p2align 2,,3
.L131:
	cbz	w5, .L133
	cbnz	w2, .L28
.L52:
	mov	w0, 0
	ret
	.p2align 2,,3
.L34:
	str	w2, [x0, 536]
	cbz	w5, .L37
	ldr	w3, [x1, 32]
	cbnz	w3, .L111
	str	w2, [x0, 488]
	cbz	w4, .L52
.L47:
	ldr	w1, [x1, 36]
	cbz	w1, .L59
	str	w1, [x0, 492]
	b	.L130
	.p2align 2,,3
.L127:
	cbz	w4, .L52
	ldr	w1, [x1, 36]
	cbnz	w1, .L39
	cbz	w2, .L52
	b	.L59
	.p2align 2,,3
.L133:
	tbnz	x3, 8, .L40
	tbz	x3, 9, .L52
	cbz	w2, .L52
	b	.L59
	.p2align 2,,3
.L13:
	cbz	w5, .L16
	ldr	w4, [x1, 4]
	cbnz	w4, .L58
	str	w2, [x0, 524]
	b	.L132
	.p2align 2,,3
.L10:
	ldr	w4, [x1]
	cbnz	w4, .L14
	cbnz	w5, .L11
	b	.L24
	.p2align 2,,3
.L37:
	cbz	w4, .L52
	b	.L47
.L28:
	str	w2, [x0, 524]
	tbz	x3, 8, .L105
	str	w2, [x0, 488]
	b	.L105
	.p2align 2,,3
.L40:
	cbz	w2, .L52
	b	.L29
	.p2align 2,,3
.L129:
	str	w2, [x0, 488]
	cbz	w4, .L52
	ldr	w1, [x1, 36]
	cmp	w1, 0
	csel	w1, w1, w2, ne
	str	w1, [x0, 492]
	b	.L130
	.p2align 2,,3
.L114:
	str	w2, [x0, 520]
	cbz	w5, .L16
	mov	w4, w2
	b	.L15
.L123:
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	adrp	x1, .LC0
	adrp	x0, .LC1
	mov	x29, sp
	add	x1, x1, :lo12:.LC0
	add	x0, x0, :lo12:.LC1
	bl	printk
	mov	w0, -241
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	syna_tcm_config_timings, .-syna_tcm_config_timings
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
