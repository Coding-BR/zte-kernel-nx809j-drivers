
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025468 <tp_sensibility_level_write>:
   25468: d503233f     	paciasp
   2546c: d10143ff     	sub	sp, sp, #0x50
   25470: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25474: f9001bf5     	str	x21, [sp, #0x30]
   25478: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2547c: 910083fd     	add	x29, sp, #0x20
   25480: d5384108     	mrs	x8, SP_EL0
   25484: aa0103f5     	mov	x21, x1
   25488: 910023e0     	add	x0, sp, #0x8
   2548c: f9438908     	ldr	x8, [x8, #0x710]
   25490: f100245f     	cmp	x2, #0x9
   25494: f81f83a8     	stur	x8, [x29, #-0x8]
   25498: 90000008     	adrp	x8, 0x25000 <get_follow_hand_level+0x4>
		0000000000025498:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2549c: f9400114     	ldr	x20, [x8]
		000000000002549c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   254a0: 52800128     	mov	w8, #0x9                // =9
   254a4: b90007ff     	str	wzr, [sp, #0x4]
   254a8: 9a883053     	csel	x19, x2, x8, lo
   254ac: 2a1f03e2     	mov	w2, wzr
   254b0: 790023ff     	strh	wzr, [sp, #0x10]
   254b4: aa1303e1     	mov	x1, x19
   254b8: f90007ff     	str	xzr, [sp, #0x8]
   254bc: 94000000     	bl	0x254bc <tp_sensibility_level_write+0x54>
		00000000000254bc:  R_AARCH64_CALL26	__check_object_size
   254c0: 910023e0     	add	x0, sp, #0x8
   254c4: aa1503e1     	mov	x1, x21
   254c8: aa1303e2     	mov	x2, x19
   254cc: 94000000     	bl	0x254cc <tp_sensibility_level_write+0x64>
		00000000000254cc:  R_AARCH64_CALL26	_inline_copy_from_user
   254d0: 350000c0     	cbnz	w0, 0x254e8 <tp_sensibility_level_write+0x80>
   254d4: 910023e0     	add	x0, sp, #0x8
   254d8: 910013e2     	add	x2, sp, #0x4
   254dc: 2a1f03e1     	mov	w1, wzr
   254e0: 94000000     	bl	0x254e0 <tp_sensibility_level_write+0x78>
		00000000000254e0:  R_AARCH64_CALL26	kstrtouint
   254e4: 340001c0     	cbz	w0, 0x2551c <tp_sensibility_level_write+0xb4>
   254e8: 928002b3     	mov	x19, #-0x16             // =-22
   254ec: d5384108     	mrs	x8, SP_EL0
   254f0: f9438908     	ldr	x8, [x8, #0x710]
   254f4: f85f83a9     	ldur	x9, [x29, #-0x8]
   254f8: eb09011f     	cmp	x8, x9
   254fc: 54000381     	b.ne	0x2556c <tp_sensibility_level_write+0x104>
   25500: aa1303e0     	mov	x0, x19
   25504: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25508: f9401bf5     	ldr	x21, [sp, #0x30]
   2550c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25510: 910143ff     	add	sp, sp, #0x50
   25514: d50323bf     	autiasp
   25518: d65f03c0     	ret
   2551c: b94007e8     	ldr	w8, [sp, #0x4]
   25520: 90000000     	adrp	x0, 0x25000 <get_follow_hand_level+0x4>
		0000000000025520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1563
   25524: 91000000     	add	x0, x0, #0x0
		0000000000025524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1563
   25528: 90000001     	adrp	x1, 0x25000 <get_follow_hand_level+0x4>
		0000000000025528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x736d
   2552c: 91000021     	add	x1, x1, #0x0
		000000000002552c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x736d
   25530: 12001d02     	and	w2, w8, #0xff
   25534: 39010288     	strb	w8, [x20, #0x40]
   25538: 94000000     	bl	0x25538 <tp_sensibility_level_write+0xd0>
		0000000000025538:  R_AARCH64_CALL26	_printk
   2553c: f947b688     	ldr	x8, [x20, #0xf68]
   25540: b4fffd68     	cbz	x8, 0x254ec <tp_sensibility_level_write+0x84>
   25544: b94007e1     	ldr	w1, [sp, #0x4]
   25548: aa1403e0     	mov	x0, x20
   2554c: b85fc110     	ldur	w16, [x8, #-0x4]
   25550: 7287b831     	movk	w17, #0x3dc1
   25554: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
   25558: 6b11021f     	cmp	w16, w17
   2555c: 54000040     	b.eq	0x25564 <tp_sensibility_level_write+0xfc>
   25560: d4304500     	brk	#0x8228
   25564: d63f0100     	blr	x8
   25568: 17ffffe1     	b	0x254ec <tp_sensibility_level_write+0x84>
   2556c: 94000000     	bl	0x2556c <tp_sensibility_level_write+0x104>
		000000000002556c:  R_AARCH64_CALL26	__stack_chk_fail
