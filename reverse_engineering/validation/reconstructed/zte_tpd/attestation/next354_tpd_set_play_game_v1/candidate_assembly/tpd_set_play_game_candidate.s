	.arch armv8-a
	.file	"tpd_set_play_game.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"\0013[error] %s: set play_game mode failed!"
	.align	3
.LC1:
	.string	"\0013[error] %s: error, change set in suspend!"
	.align	3
.LC2:
	.string	"\0016[info ] %s: play no need reset"
	.align	3
.LC3:
	.string	"tpd_set_play_game"
	.align	3
.LC4:
	.string	"\0016[info ] %s: enter\n"
	.text
	.align	2
	.p2align 4,,11
	.global	tpd_set_play_game
	.type	tpd_set_play_game, %function
tpd_set_play_game:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	adrp	x0, .LC4
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	adrp	x21, .LC3
	add	x21, x21, :lo12:.LC3
	ldr	x19, [x20, 3072]
	mov	w22, w1
	add	x0, x0, :lo12:.LC4
	mov	x1, x21
	bl	printk
	cbz	x19, .L6
	ldr	x0, [x19, 624]
	ldr	w1, [x0, 184]
	cbnz	w1, .L18
.L3:
	ldr	x0, [x19]
	ldr	w2, [x0, 524]
	ldr	w0, [x19, 1404]
	cmp	w0, 1
	bne	.L8
.L19:
	ldr	w0, [x19, 1500]
	cmp	w0, w22
	beq	.L9
	str	w22, [x19, 1500]
	mov	w1, w22
	mov	x0, x19
	bl	syna_dev_set_play_game
	tbnz	w0, #31, .L10
.L15:
	ldr	w0, [x20, 16]
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L18:
	.cfi_restore_state
	ldrb	w0, [x0, 188]
	mov	x2, 0
	tbz	x0, 0, .L3
	ldr	w0, [x19, 1404]
	cmp	w0, 1
	beq	.L19
.L8:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	b	.L5
	.p2align 2,,3
.L9:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.L5:
	mov	x1, x21
	bl	printk
	b	.L15
	.p2align 2,,3
.L10:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L5
	.p2align 2,,3
.L6:
	mov	w0, -22
	b	.L1
	.cfi_endproc
.LFE0:
	.size	tpd_set_play_game, .-tpd_set_play_game
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
