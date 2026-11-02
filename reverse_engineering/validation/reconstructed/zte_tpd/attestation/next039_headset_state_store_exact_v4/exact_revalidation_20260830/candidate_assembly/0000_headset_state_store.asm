
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025498 <headset_state_store>:
   25498: d503233f     	paciasp
   2549c: d10143ff     	sub	sp, sp, #0x50
   254a0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   254a4: f9001bf5     	str	x21, [sp, #0x30]
   254a8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   254ac: 910083fd     	add	x29, sp, #0x20
   254b0: d5384108     	mrs	x8, SP_EL0
   254b4: aa0103f5     	mov	x21, x1
   254b8: 910023e0     	add	x0, sp, #0x8
   254bc: f9438908     	ldr	x8, [x8, #0x710]
   254c0: f100245f     	cmp	x2, #0x9
   254c4: f81f83a8     	stur	x8, [x29, #-0x8]
   254c8: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		00000000000254c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   254cc: f9400114     	ldr	x20, [x8]
		00000000000254cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   254d0: 52800128     	mov	w8, #0x9                // =9
   254d4: b90007ff     	str	wzr, [sp, #0x4]
   254d8: 9a883053     	csel	x19, x2, x8, lo
   254dc: 2a1f03e2     	mov	w2, wzr
   254e0: 790023ff     	strh	wzr, [sp, #0x10]
   254e4: aa1303e1     	mov	x1, x19
   254e8: f90007ff     	str	xzr, [sp, #0x8]
   254ec: 94000000     	bl	0x254ec <headset_state_store+0x54>
		00000000000254ec:  R_AARCH64_CALL26	__check_object_size
   254f0: 910023e0     	add	x0, sp, #0x8
   254f4: aa1503e1     	mov	x1, x21
   254f8: aa1303e2     	mov	x2, x19
   254fc: 9400002a     	bl	0x255a4 <headset_state_store+0x10c>
		00000000000254fc:  R_AARCH64_CALL26	_inline_copy_from_user
   25500: 350000c0     	cbnz	w0, 0x25518 <headset_state_store+0x80>
   25504: 910023e0     	add	x0, sp, #0x8
   25508: 910013e2     	add	x2, sp, #0x4
   2550c: 2a1f03e1     	mov	w1, wzr
   25510: 94000000     	bl	0x25510 <headset_state_store+0x78>
		0000000000025510:  R_AARCH64_CALL26	kstrtouint
   25514: 340001c0     	cbz	w0, 0x2554c <headset_state_store+0xb4>
   25518: 928002b3     	mov	x19, #-0x16             // =-22
   2551c: d5384108     	mrs	x8, SP_EL0
   25520: f9438908     	ldr	x8, [x8, #0x710]
   25524: f85f83a9     	ldur	x9, [x29, #-0x8]
   25528: eb09011f     	cmp	x8, x9
   2552c: 540003a1     	b.ne	0x255a0 <headset_state_store+0x108>
   25530: aa1303e0     	mov	x0, x19
   25534: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25538: f9401bf5     	ldr	x21, [sp, #0x30]
   2553c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25540: 910143ff     	add	sp, sp, #0x50
   25544: d50323bf     	autiasp
   25548: d65f03c0     	ret
   2554c: b94007e8     	ldr	w8, [sp, #0x4]
   25550: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65e
   25554: 91000000     	add	x0, x0, #0x0
		0000000000025554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65e
   25558: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75fc
   2555c: 91000021     	add	x1, x1, #0x0
		000000000002555c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75fc
   25560: 7100011f     	cmp	w8, #0x0
   25564: 1a9f07e2     	cset	w2, ne
   25568: b90007e2     	str	w2, [sp, #0x4]
   2556c: 94000000     	bl	0x2556c <headset_state_store+0xd4>
		000000000002556c:  R_AARCH64_CALL26	_printk
   25570: f9473a88     	ldr	x8, [x20, #0xe70]
   25574: b4fffd48     	cbz	x8, 0x2551c <headset_state_store+0x84>
   25578: b94007e1     	ldr	w1, [sp, #0x4]
   2557c: aa1403e0     	mov	x0, x20
   25580: b85fc110     	ldur	w16, [x8, #-0x4]
   25584: 72969331     	movk	w17, #0xb499
   25588: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   2558c: 6b11021f     	cmp	w16, w17
   25590: 54000040     	b.eq	0x25598 <headset_state_store+0x100>
   25594: d4304500     	brk	#0x8228
   25598: d63f0100     	blr	x8
   2559c: 17ffffe0     	b	0x2551c <headset_state_store+0x84>
   255a0: 94000000     	bl	0x255a0 <headset_state_store+0x108>
		00000000000255a0:  R_AARCH64_CALL26	__stack_chk_fail
