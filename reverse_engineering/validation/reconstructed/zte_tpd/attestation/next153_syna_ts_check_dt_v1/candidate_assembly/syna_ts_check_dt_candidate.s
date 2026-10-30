	.arch armv8-a
	.file	"syna_ts_check_dt.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"\0016[info ] %s: %s: no device!\n"
	.align	3
.LC1:
	.string	"\0016[info ] %s: %s: device has not been probed yet\n"
	.align	3
.LC2:
	.string	"panel"
	.align	3
.LC3:
	.string	"syna_ts_check_dt"
	.align	3
.LC4:
	.string	"\0016[info ] %s: %s: node = %s\n"
	.text
	.align	2
	.p2align 4,,11
	.global	syna_ts_check_dt
	.type	syna_ts_check_dt, %function
syna_ts_check_dt:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -144
	.cfi_offset 24, -136
	mov	x23, x0
	mov	x0, 0
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -128
	.cfi_offset 26, -120
	bl	host_read_status_reg
	adrp	x24, .LC2
	ldr	x3, [x0, 1808]
	add	x24, x24, :lo12:.LC2
	ldr	x0, [x23, 744]
	mov	x1, x24
	mov	w2, 0
	mov	w26, -19
	str	x3, [sp, 184]
	bl	of_count_phandle_with_args
	cmp	w0, 0
	ble	.L2
	add	x23, x23, 744
	mov	w25, w0
	mov	w26, -1
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -168
	.cfi_offset 19, -176
	mov	w20, 0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -152
	.cfi_offset 21, -160
	adrp	x21, .LC3
	add	x21, x21, :lo12:.LC3
	str	x27, [sp, 80]
	.cfi_offset 27, -112
	adrp	x27, .LC4
	add	x27, x27, :lo12:.LC4
	b	.L7
	.p2align 2,,3
.L18:
	cmn	x0, #517
	bne	.L6
	mov	w26, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L5:
	mov	x2, x21
	mov	x1, x21
	bl	printk
.L6:
	add	w20, w20, 1
	cmp	w25, w20
	beq	.L16
.L7:
	movi	v0.4s, 0
	add	x5, sp, 104
	mov	x6, x5
	mov	w4, w20
	ldr	x0, [x23]
	mov	x1, x24
	stp	q0, q0, [x6]
	add	x6, sp, 136
	mov	w3, 0
	mov	w2, 0
	mov	x22, 0
	stp	q0, q0, [x6]
	str	q0, [sp, 168]
	bl	_of_parse_phandle_with_args
	cbnz	w0, .L3
	ldr	x4, [sp, 104]
	mov	x2, x21
	mov	x1, x21
	mov	x0, x27
	cbz	x4, .L3
	ldr	x3, [x4]
	mov	x22, x4
	bl	printk
.L3:
	mov	x0, x22
	bl	of_drm_find_panel
	mov	x19, x0
	cmn	x0, #4096
	bls	.L17
	cmn	x0, #19
	bne	.L18
	mov	w26, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L5
	.p2align 2,,3
.L17:
	ldr	x1, [x22]
	adrp	x0, device_node_name
	mov	x2, 100
	add	x0, x0, :lo12:device_node_name
	mov	w26, 0
	bl	strncpy
	adrp	x0, active_panel
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	str	x19, [x0, #:lo12:active_panel]
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x27, [sp, 80]
	.cfi_restore 27
.L2:
	mov	x0, 0
	bl	host_read_status_reg
	ldp	x23, x24, [sp, 48]
	mov	w0, w26
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 192
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L16:
	.cfi_def_cfa_offset 192
	.cfi_offset 19, -176
	.cfi_offset 20, -168
	.cfi_offset 21, -160
	.cfi_offset 22, -152
	.cfi_offset 23, -144
	.cfi_offset 24, -136
	.cfi_offset 25, -128
	.cfi_offset 26, -120
	.cfi_offset 27, -112
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	mov	x0, 0
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x27, [sp, 80]
	.cfi_restore 27
	bl	host_read_status_reg
	ldp	x23, x24, [sp, 48]
	mov	w0, w26
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 192
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	syna_ts_check_dt, .-syna_ts_check_dt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
