	.arch armv8-a
	.file	"syna_tcm_testing_check_array_data.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"syna_tcm_testing_check_array_data"
	.align	3
.LC1:
	.string	"\0013[error] %s: Invalid parameters to check frame data\n"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_tcm_testing_check_array_data
	.type	syna_tcm_testing_check_array_data, %function
syna_tcm_testing_check_array_data:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	cmp	x0, 0
	ccmp	x2, 0, 4, ne
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	beq	.L2
	mov	x22, x1
	mov	w21, 1
	cmp	w1, 0
	ble	.L4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	mov	x20, x2
	mov	w21, 1
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	mov	x23, x0
	mov	x24, x3
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	and	x25, x1, 2147483647
	mov	x19, 0
	.p2align 3,,7
.L6:
	cmp	x22, x24
	add	x1, x20, x19
	add	x0, x23, x19
	and	x2, x19, 4294967295
	csel	x1, x1, x20, ls
	add	x19, x19, 1
	bl	syna_tcm_testing_0100_check_data
	and	w21, w21, w0
	cmp	x25, x19
	bne	.L6
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L4:
	and	x0, x21, 1
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2:
	.cfi_restore_state
	mov	w21, 0
	adrp	x1, .LC0
	adrp	x0, .LC1
	add	x1, x1, :lo12:.LC0
	add	x0, x0, :lo12:.LC1
	bl	printk
	and	x0, x21, 1
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	syna_tcm_testing_check_array_data, .-syna_tcm_testing_check_array_data
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
