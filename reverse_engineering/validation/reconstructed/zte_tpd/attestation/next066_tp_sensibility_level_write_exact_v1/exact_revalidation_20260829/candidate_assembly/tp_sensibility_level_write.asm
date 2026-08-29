
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001601c <tp_sensibility_level_write>:
   1601c: d503233f     	paciasp
   16020: d10143ff     	sub	sp, sp, #0x50
   16024: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16028: f9001bf5     	str	x21, [sp, #0x30]
   1602c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16030: 910083fd     	add	x29, sp, #0x20
   16034: d5384108     	mrs	x8, SP_EL0
   16038: aa0103f5     	mov	x21, x1
   1603c: 910023e0     	add	x0, sp, #0x8
   16040: f9438908     	ldr	x8, [x8, #0x710]
   16044: f100245f     	cmp	x2, #0x9
   16048: f81f83a8     	stur	x8, [x29, #-0x8]
   1604c: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		000000000001604c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16050: f9400114     	ldr	x20, [x8]
		0000000000016050:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16054: 52800128     	mov	w8, #0x9                // =9
   16058: b90007ff     	str	wzr, [sp, #0x4]
   1605c: 9a883053     	csel	x19, x2, x8, lo
   16060: 2a1f03e2     	mov	w2, wzr
   16064: 790023ff     	strh	wzr, [sp, #0x10]
   16068: aa1303e1     	mov	x1, x19
   1606c: f90007ff     	str	xzr, [sp, #0x8]
   16070: 94000000     	bl	0x16070 <tp_sensibility_level_write+0x54>
		0000000000016070:  R_AARCH64_CALL26	__check_object_size
   16074: 910023e0     	add	x0, sp, #0x8
   16078: aa1503e1     	mov	x1, x21
   1607c: aa1303e2     	mov	x2, x19
   16080: 94000000     	bl	0x16080 <tp_sensibility_level_write+0x64>
		0000000000016080:  R_AARCH64_CALL26	_inline_copy_from_user
   16084: 350000c0     	cbnz	w0, 0x1609c <tp_sensibility_level_write+0x80>
   16088: 910023e0     	add	x0, sp, #0x8
   1608c: 910013e2     	add	x2, sp, #0x4
   16090: 2a1f03e1     	mov	w1, wzr
   16094: 94000000     	bl	0x16094 <tp_sensibility_level_write+0x78>
		0000000000016094:  R_AARCH64_CALL26	kstrtouint
   16098: 340001c0     	cbz	w0, 0x160d0 <tp_sensibility_level_write+0xb4>
   1609c: 928002b3     	mov	x19, #-0x16             // =-22
   160a0: d5384108     	mrs	x8, SP_EL0
   160a4: f9438908     	ldr	x8, [x8, #0x710]
   160a8: f85f83a9     	ldur	x9, [x29, #-0x8]
   160ac: eb09011f     	cmp	x8, x9
   160b0: 54000381     	b.ne	0x16120 <tp_sensibility_level_write+0x104>
   160b4: aa1303e0     	mov	x0, x19
   160b8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   160bc: f9401bf5     	ldr	x21, [sp, #0x30]
   160c0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   160c4: 910143ff     	add	sp, sp, #0x50
   160c8: d50323bf     	autiasp
   160cc: d65f03c0     	ret
   160d0: b94007e8     	ldr	w8, [sp, #0x4]
   160d4: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000160d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18240
   160d8: 91000000     	add	x0, x0, #0x0
		00000000000160d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18240
   160dc: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000160dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c822
   160e0: 91000021     	add	x1, x1, #0x0
		00000000000160e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c822
   160e4: 12001d02     	and	w2, w8, #0xff
   160e8: 39010288     	strb	w8, [x20, #0x40]
   160ec: 94000000     	bl	0x160ec <tp_sensibility_level_write+0xd0>
		00000000000160ec:  R_AARCH64_CALL26	_printk
   160f0: f947b688     	ldr	x8, [x20, #0xf68]
   160f4: b4fffd68     	cbz	x8, 0x160a0 <tp_sensibility_level_write+0x84>
   160f8: b94007e1     	ldr	w1, [sp, #0x4]
   160fc: aa1403e0     	mov	x0, x20
   16100: b85fc110     	ldur	w16, [x8, #-0x4]
   16104: 7287b831     	movk	w17, #0x3dc1
   16108: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
   1610c: 6b11021f     	cmp	w16, w17
   16110: 54000040     	b.eq	0x16118 <tp_sensibility_level_write+0xfc>
   16114: d4304500     	brk	#0x8228
   16118: d63f0100     	blr	x8
   1611c: 17ffffe1     	b	0x160a0 <tp_sensibility_level_write+0x84>
   16120: 94000000     	bl	0x16120 <tp_sensibility_level_write+0x104>
		0000000000016120:  R_AARCH64_CALL26	__stack_chk_fail
