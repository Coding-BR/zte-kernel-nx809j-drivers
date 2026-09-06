	.arch armv8-a
	.file	"trim.c"
	.text
	.align	2
	.p2align 4,,11
	.type	trim, %function
trim:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	cbz	x0, .L8
	sub	x19, x0, #1
	.p2align 3,,7
.L3:
	mov	x20, x19
	ldrb	w0, [x19, 1]!
	cmp	w0, 32
	sub	w1, w0, #9
	ccmp	w1, 4, 0, ne
	bls	.L3
	cbz	w0, .L1
	mov	x0, x19
	bl	strlen
	add	x0, x20, x0
	b	.L6
	.p2align 2,,3
.L13:
	ldrb	w1, [x2], -1
	cmp	w1, 32
	sub	w1, w1, #9
	ccmp	w1, 4, 0, ne
	bhi	.L5
	mov	x0, x2
.L6:
	mov	x2, x0
	cmp	x0, x19
	bhi	.L13
.L5:
	strb	wzr, [x0, 1]
.L1:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L8:
	.cfi_restore_state
	mov	x19, 0
	b	.L1
	.cfi_endproc
.LFE1:
	.size	trim, .-trim
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
