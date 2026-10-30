
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001db08 <tp_game_partition_write>:
   1db08: d503233f     	paciasp
   1db0c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1db10: a90157fc     	stp	x28, x21, [sp, #0x10]
   1db14: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1db18: 910003fd     	mov	x29, sp
   1db1c: d11043ff     	sub	sp, sp, #0x410
   1db20: d5384108     	mrs	x8, SP_EL0
   1db24: aa0203f3     	mov	x19, x2
   1db28: aa0103f5     	mov	x21, x1
   1db2c: f9438908     	ldr	x8, [x8, #0x710]
   1db30: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001db30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b6f
   1db34: 91000000     	add	x0, x0, #0x0
		000000000001db34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b6f
   1db38: 90000001     	adrp	x1, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001db38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f9
   1db3c: 91000021     	add	x1, x1, #0x0
		000000000001db3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f9
   1db40: 52808002     	mov	w2, #0x400              // =1024
   1db44: f81f83a8     	stur	x8, [x29, #-0x8]
   1db48: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001db48:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1db4c: aa1303e3     	mov	x3, x19
   1db50: f9400114     	ldr	x20, [x8]
		000000000001db50:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1db54: 94000000     	bl	0x1db54 <tp_game_partition_write+0x4c>
		000000000001db54:  R_AARCH64_CALL26	_printk
   1db58: f110067f     	cmp	x19, #0x401
   1db5c: 54000083     	b.lo	0x1db6c <tp_game_partition_write+0x64>
   1db60: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001db60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b84
   1db64: 91000000     	add	x0, x0, #0x0
		000000000001db64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b84
   1db68: 14000027     	b	0x1dc04 <tp_game_partition_write+0xfc>
   1db6c: 910023e0     	add	x0, sp, #0x8
   1db70: 2a1f03e1     	mov	w1, wzr
   1db74: 52808002     	mov	w2, #0x400              // =1024
   1db78: 94000000     	bl	0x1db78 <tp_game_partition_write+0x70>
		000000000001db78:  R_AARCH64_CALL26	memset
   1db7c: 910023e0     	add	x0, sp, #0x8
   1db80: aa1303e1     	mov	x1, x19
   1db84: 2a1f03e2     	mov	w2, wzr
   1db88: 94000000     	bl	0x1db88 <tp_game_partition_write+0x80>
		000000000001db88:  R_AARCH64_CALL26	__check_object_size
   1db8c: 910023e0     	add	x0, sp, #0x8
   1db90: aa1503e1     	mov	x1, x21
   1db94: aa1303e2     	mov	x2, x19
   1db98: 94000000     	bl	0x1db98 <tp_game_partition_write+0x90>
		000000000001db98:  R_AARCH64_CALL26	_inline_copy_from_user
   1db9c: b5000300     	cbnz	x0, 0x1dbfc <tp_game_partition_write+0xf4>
   1dba0: f947aa88     	ldr	x8, [x20, #0xf50]
   1dba4: 910023e1     	add	x1, sp, #0x8
   1dba8: aa1403e0     	mov	x0, x20
   1dbac: b85fc110     	ldur	w16, [x8, #-0x4]
   1dbb0: 728bf651     	movk	w17, #0x5fb2
   1dbb4: 72ac9e51     	movk	w17, #0x64f2, lsl #16
   1dbb8: 6b11021f     	cmp	w16, w17
   1dbbc: 54000040     	b.eq	0x1dbc4 <tp_game_partition_write+0xbc>
   1dbc0: d4304500     	brk	#0x8228
   1dbc4: d63f0100     	blr	x8
   1dbc8: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dbc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f5
   1dbcc: 91000042     	add	x2, x2, #0x0
		000000000001dbcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f5
   1dbd0: 91010680     	add	x0, x20, #0x41
   1dbd4: 910023e3     	add	x3, sp, #0x8
   1dbd8: 52808001     	mov	w1, #0x400              // =1024
   1dbdc: 94000000     	bl	0x1dbdc <tp_game_partition_write+0xd4>
		000000000001dbdc:  R_AARCH64_CALL26	snprintf
   1dbe0: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dbe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x315
   1dbe4: 91000000     	add	x0, x0, #0x0
		000000000001dbe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x315
   1dbe8: 90000001     	adrp	x1, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dbe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f9
   1dbec: 91000021     	add	x1, x1, #0x0
		000000000001dbec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f9
   1dbf0: 91010682     	add	x2, x20, #0x41
   1dbf4: 94000000     	bl	0x1dbf4 <tp_game_partition_write+0xec>
		000000000001dbf4:  R_AARCH64_CALL26	_printk
   1dbf8: 14000007     	b	0x1dc14 <tp_game_partition_write+0x10c>
   1dbfc: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dbfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26f0
   1dc00: 91000000     	add	x0, x0, #0x0
		000000000001dc00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26f0
   1dc04: 90000001     	adrp	x1, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dc04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f9
   1dc08: 91000021     	add	x1, x1, #0x0
		000000000001dc08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f9
   1dc0c: 94000000     	bl	0x1dc0c <tp_game_partition_write+0x104>
		000000000001dc0c:  R_AARCH64_CALL26	_printk
   1dc10: 928002b3     	mov	x19, #-0x16             // =-22
   1dc14: d5384108     	mrs	x8, SP_EL0
   1dc18: f9438908     	ldr	x8, [x8, #0x710]
   1dc1c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1dc20: eb09011f     	cmp	x8, x9
   1dc24: 54000101     	b.ne	0x1dc44 <tp_game_partition_write+0x13c>
   1dc28: aa1303e0     	mov	x0, x19
   1dc2c: 911043ff     	add	sp, sp, #0x410
   1dc30: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1dc34: a94157fc     	ldp	x28, x21, [sp, #0x10]
   1dc38: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1dc3c: d50323bf     	autiasp
   1dc40: d65f03c0     	ret
   1dc44: 94000000     	bl	0x1dc44 <tp_game_partition_write+0x13c>
		000000000001dc44:  R_AARCH64_CALL26	__stack_chk_fail
