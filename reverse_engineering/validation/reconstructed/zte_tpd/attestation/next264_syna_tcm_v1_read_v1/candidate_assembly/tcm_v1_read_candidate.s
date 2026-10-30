	.arch armv8-a
	.file	"syna_tcm_v1_read.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"fmt_invalid_length"
	.align	3
.LC1:
	.string	"fmt_max_write"
	.align	3
.LC2:
	.string	"fmt_transport_read"
	.align	3
.LC3:
	.string	"fmt_missing_read"
	.align	3
.LC4:
	.string	"syna_tcm_v1_read"
	.align	3
.LC5:
	.string	"fmt_invalid_data"
	.align	3
.LC6:
	.string	"syna_tcm_read"
	.align	3
.LC7:
	.string	"fmt_read_failed"
	.align	3
.LC8:
	.string	"fmt_bad_response"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_tcm_v1_read
	.type	syna_tcm_v1_read, %function
syna_tcm_v1_read:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	cbz	x2, .L20
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -24
	.cfi_offset 19, -32
	mov	w19, w1
	cbz	w1, .L12
	cmp	w1, w3
	bhi	.L21
	ldr	w1, [x0, 60]
	cmp	w1, 0
	ccmp	w19, w1, 0, ne
	bhi	.L13
	ldr	x0, [x0, 72]
	mov	x20, x2
	cbz	x0, .L22
	ldr	x3, [x0, 32]
	cbz	x3, .L14
	mov	w2, w19
	mov	x1, x20
	blr	x3
	uxtw	x21, w0
	tbnz	w0, #31, .L10
	ldrb	w2, [x20]
	cmp	w2, 165
	bne	.L23
.L12:
	mov	x21, 0
	mov	x0, x21
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L23:
	.cfi_restore_state
	mov	w21, 4294967054
	adrp	x1, .LC4
	adrp	x0, .LC8
	add	x1, x1, :lo12:.LC4
	add	x0, x0, :lo12:.LC8
	bl	printk
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	mov	x0, x21
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L13:
	.cfi_restore_state
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L7:
	mov	w2, w19
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	bl	printk
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	mov	w21, 4294967055
.L24:
	mov	x0, x21
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L22:
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	w21, 4294967055
.L9:
	adrp	x1, .LC6
	mov	x2, x20
	add	x1, x1, :lo12:.LC6
	bl	printk
.L10:
	mov	w2, w19
	adrp	x1, .LC4
	adrp	x0, .LC7
	add	x1, x1, :lo12:.LC4
	add	x0, x0, :lo12:.LC7
	bl	printk
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	mov	x0, x21
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L21:
	.cfi_restore_state
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L7
	.p2align 2,,3
.L20:
	.cfi_restore 19
	.cfi_restore 20
	adrp	x1, .LC4
	adrp	x0, .LC5
	add	x1, x1, :lo12:.LC4
	add	x0, x0, :lo12:.LC5
	mov	w21, 4294967055
	bl	printk
	b	.L24
	.p2align 2,,3
.L14:
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	adrp	x0, .LC3
	mov	w21, 4294967051
	add	x0, x0, :lo12:.LC3
	b	.L9
	.cfi_endproc
.LFE0:
	.size	syna_tcm_v1_read, .-syna_tcm_v1_read
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
