
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005d58 <tp_game_partition_write>:
    5d58: d503233f     	paciasp
    5d5c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    5d60: a90157fc     	stp	x28, x21, [sp, #0x10]
    5d64: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5d68: 910003fd     	mov	x29, sp
    5d6c: d11043ff     	sub	sp, sp, #0x410
    5d70: d5384108     	mrs	x8, SP_EL0
    5d74: aa0203f3     	mov	x19, x2
    5d78: aa0103f5     	mov	x21, x1
    5d7c: f9438908     	ldr	x8, [x8, #0x710]
    5d80: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fda
    5d84: 91000000     	add	x0, x0, #0x0
		0000000000005d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fda
    5d88: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e5d
    5d8c: 91000021     	add	x1, x1, #0x0
		0000000000005d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e5d
    5d90: 52808002     	mov	w2, #0x400              // =1024
    5d94: f81f83a8     	stur	x8, [x29, #-0x8]
    5d98: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005d98:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5d9c: aa1303e3     	mov	x3, x19
    5da0: f9400114     	ldr	x20, [x8]
		0000000000005da0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5da4: 94000000     	bl	0x5da4 <tp_game_partition_write+0x4c>
		0000000000005da4:  R_AARCH64_CALL26	_printk
    5da8: f110067f     	cmp	x19, #0x401
    5dac: 54000083     	b.lo	0x5dbc <tp_game_partition_write+0x64>
    5db0: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fef
    5db4: 91000000     	add	x0, x0, #0x0
		0000000000005db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fef
    5db8: 14000027     	b	0x5e54 <tp_game_partition_write+0xfc>
    5dbc: 910023e0     	add	x0, sp, #0x8
    5dc0: 2a1f03e1     	mov	w1, wzr
    5dc4: 52808002     	mov	w2, #0x400              // =1024
    5dc8: 94000000     	bl	0x5dc8 <tp_game_partition_write+0x70>
		0000000000005dc8:  R_AARCH64_CALL26	memset
    5dcc: 910023e0     	add	x0, sp, #0x8
    5dd0: aa1303e1     	mov	x1, x19
    5dd4: 2a1f03e2     	mov	w2, wzr
    5dd8: 94000000     	bl	0x5dd8 <tp_game_partition_write+0x80>
		0000000000005dd8:  R_AARCH64_CALL26	__check_object_size
    5ddc: 910023e0     	add	x0, sp, #0x8
    5de0: aa1503e1     	mov	x1, x21
    5de4: aa1303e2     	mov	x2, x19
    5de8: 97fff7d6     	bl	0x3d40 <_inline_copy_from_user>
    5dec: b5000300     	cbnz	x0, 0x5e4c <tp_game_partition_write+0xf4>
    5df0: f947aa88     	ldr	x8, [x20, #0xf50]
    5df4: 910023e1     	add	x1, sp, #0x8
    5df8: aa1403e0     	mov	x0, x20
    5dfc: b85fc110     	ldur	w16, [x8, #-0x4]
    5e00: 728bf651     	movk	w17, #0x5fb2
    5e04: 72ac9e51     	movk	w17, #0x64f2, lsl #16
    5e08: 6b11021f     	cmp	w16, w17
    5e0c: 54000040     	b.eq	0x5e14 <tp_game_partition_write+0xbc>
    5e10: d4304500     	brk	#0x8228
    5e14: d63f0100     	blr	x8
    5e18: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e59
    5e1c: 91000042     	add	x2, x2, #0x0
		0000000000005e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e59
    5e20: 91010680     	add	x0, x20, #0x41
    5e24: 910023e3     	add	x3, sp, #0x8
    5e28: 52808001     	mov	w1, #0x400              // =1024
    5e2c: 94000000     	bl	0x5e2c <tp_game_partition_write+0xd4>
		0000000000005e2c:  R_AARCH64_CALL26	snprintf
    5e30: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf1
    5e34: 91000000     	add	x0, x0, #0x0
		0000000000005e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf1
    5e38: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e5d
    5e3c: 91000021     	add	x1, x1, #0x0
		0000000000005e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e5d
    5e40: 91010682     	add	x2, x20, #0x41
    5e44: 94000000     	bl	0x5e44 <tp_game_partition_write+0xec>
		0000000000005e44:  R_AARCH64_CALL26	_printk
    5e48: 14000007     	b	0x5e64 <tp_game_partition_write+0x10c>
    5e4c: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e4c
    5e50: 91000000     	add	x0, x0, #0x0
		0000000000005e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e4c
    5e54: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e5d
    5e58: 91000021     	add	x1, x1, #0x0
		0000000000005e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e5d
    5e5c: 94000000     	bl	0x5e5c <tp_game_partition_write+0x104>
		0000000000005e5c:  R_AARCH64_CALL26	_printk
    5e60: 928002b3     	mov	x19, #-0x16             // =-22
    5e64: d5384108     	mrs	x8, SP_EL0
    5e68: f9438908     	ldr	x8, [x8, #0x710]
    5e6c: f85f83a9     	ldur	x9, [x29, #-0x8]
    5e70: eb09011f     	cmp	x8, x9
    5e74: 54000101     	b.ne	0x5e94 <tp_game_partition_write+0x13c>
    5e78: aa1303e0     	mov	x0, x19
    5e7c: 911043ff     	add	sp, sp, #0x410
    5e80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5e84: a94157fc     	ldp	x28, x21, [sp, #0x10]
    5e88: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5e8c: d50323bf     	autiasp
    5e90: d65f03c0     	ret
    5e94: 94000000     	bl	0x5e94 <tp_game_partition_write+0x13c>
		0000000000005e94:  R_AARCH64_CALL26	__stack_chk_fail
