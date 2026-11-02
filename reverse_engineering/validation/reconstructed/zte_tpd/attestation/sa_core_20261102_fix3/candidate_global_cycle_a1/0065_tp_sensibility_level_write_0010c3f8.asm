
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016078 <tp_sensibility_level_write>:
   16078: d503233f     	paciasp
   1607c: d10143ff     	sub	sp, sp, #0x50
   16080: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16084: f9001bf5     	str	x21, [sp, #0x30]
   16088: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1608c: 910083fd     	add	x29, sp, #0x20
   16090: d5384108     	mrs	x8, SP_EL0
   16094: aa0103f5     	mov	x21, x1
   16098: 910023e0     	add	x0, sp, #0x8
   1609c: f9438908     	ldr	x8, [x8, #0x710]
   160a0: f100245f     	cmp	x2, #0x9
   160a4: f81f83a8     	stur	x8, [x29, #-0x8]
   160a8: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000160a8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   160ac: f9400114     	ldr	x20, [x8]
		00000000000160ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   160b0: 52800128     	mov	w8, #0x9                // =9
   160b4: b90007ff     	str	wzr, [sp, #0x4]
   160b8: 9a883053     	csel	x19, x2, x8, lo
   160bc: 2a1f03e2     	mov	w2, wzr
   160c0: 790023ff     	strh	wzr, [sp, #0x10]
   160c4: aa1303e1     	mov	x1, x19
   160c8: f90007ff     	str	xzr, [sp, #0x8]
   160cc: 94000000     	bl	0x160cc <tp_sensibility_level_write+0x54>
		00000000000160cc:  R_AARCH64_CALL26	__check_object_size
   160d0: 910023e0     	add	x0, sp, #0x8
   160d4: aa1503e1     	mov	x1, x21
   160d8: aa1303e2     	mov	x2, x19
   160dc: 94000000     	bl	0x160dc <tp_sensibility_level_write+0x64>
		00000000000160dc:  R_AARCH64_CALL26	_inline_copy_from_user
   160e0: 350000c0     	cbnz	w0, 0x160f8 <tp_sensibility_level_write+0x80>
   160e4: 910023e0     	add	x0, sp, #0x8
   160e8: 910013e2     	add	x2, sp, #0x4
   160ec: 2a1f03e1     	mov	w1, wzr
   160f0: 94000000     	bl	0x160f0 <tp_sensibility_level_write+0x78>
		00000000000160f0:  R_AARCH64_CALL26	kstrtouint
   160f4: 340001c0     	cbz	w0, 0x1612c <tp_sensibility_level_write+0xb4>
   160f8: 928002b3     	mov	x19, #-0x16             // =-22
   160fc: d5384108     	mrs	x8, SP_EL0
   16100: f9438908     	ldr	x8, [x8, #0x710]
   16104: f85f83a9     	ldur	x9, [x29, #-0x8]
   16108: eb09011f     	cmp	x8, x9
   1610c: 54000381     	b.ne	0x1617c <tp_sensibility_level_write+0x104>
   16110: aa1303e0     	mov	x0, x19
   16114: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16118: f9401bf5     	ldr	x21, [sp, #0x30]
   1611c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16120: 910143ff     	add	sp, sp, #0x50
   16124: d50323bf     	autiasp
   16128: d65f03c0     	ret
   1612c: b94007e8     	ldr	w8, [sp, #0x4]
   16130: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18240
   16134: 91000000     	add	x0, x0, #0x0
		0000000000016134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18240
   16138: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c83b
   1613c: 91000021     	add	x1, x1, #0x0
		000000000001613c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c83b
   16140: 12001d02     	and	w2, w8, #0xff
   16144: 39010288     	strb	w8, [x20, #0x40]
   16148: 94000000     	bl	0x16148 <tp_sensibility_level_write+0xd0>
		0000000000016148:  R_AARCH64_CALL26	_printk
   1614c: f947b688     	ldr	x8, [x20, #0xf68]
   16150: b4fffd68     	cbz	x8, 0x160fc <tp_sensibility_level_write+0x84>
   16154: b94007e1     	ldr	w1, [sp, #0x4]
   16158: aa1403e0     	mov	x0, x20
   1615c: b85fc110     	ldur	w16, [x8, #-0x4]
   16160: 7287b831     	movk	w17, #0x3dc1
   16164: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
   16168: 6b11021f     	cmp	w16, w17
   1616c: 54000040     	b.eq	0x16174 <tp_sensibility_level_write+0xfc>
   16170: d4304500     	brk	#0x8228
   16174: d63f0100     	blr	x8
   16178: 17ffffe1     	b	0x160fc <tp_sensibility_level_write+0x84>
   1617c: 94000000     	bl	0x1617c <tp_sensibility_level_write+0x104>
		000000000001617c:  R_AARCH64_CALL26	__stack_chk_fail
