	.arch armv8-a
	.file	"syna_tcm_testing_0001_check_device_id.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"syna_tcm_testing_0001_check_device_id"
	.align	3
.LC1:
	.string	"\0013[error] %s: Device ID mismatched, FW: %s (limit: %s)\n"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_tcm_testing_0001_check_device_id
	.type	syna_tcm_testing_0001_check_device_id, %function
syna_tcm_testing_0001_check_device_id:
.LFB0:
	.cfi_startproc
	cmp	x0, 0
	ccmp	x1, 0, 4, ne
	bne	.L17
	mov	x0, 0
	ret
	.p2align 2,,3
.L17:
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	w21, 16
	sub	w21, w21, w2
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x23, x1
	cmp	w2, 16
	bgt	.L4
	ldrb	w24, [x1]
	and	x22, x2, 4294967295
	mov	x19, 0
	b	.L7
	.p2align 2,,3
.L5:
	add	x19, x19, 1
	cmp	w21, w19
	blt	.L4
.L7:
	ldrb	w2, [x20, x19]
	add	x0, x20, x19
	cmp	w2, w24
	bne	.L5
	mov	x2, x22
	mov	x1, x23
	bl	strncmp
	cbnz	w0, .L5
	ldp	x19, x20, [sp, 16]
	mov	x0, 1
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L4:
	.cfi_restore_state
	mov	x3, x23
	mov	x2, x20
	adrp	x1, .LC0
	adrp	x0, .LC1
	add	x1, x1, :lo12:.LC0
	add	x0, x0, :lo12:.LC1
	bl	printk
	ldp	x19, x20, [sp, 16]
	mov	x0, 0
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	syna_tcm_testing_0001_check_device_id, .-syna_tcm_testing_0001_check_device_id
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
