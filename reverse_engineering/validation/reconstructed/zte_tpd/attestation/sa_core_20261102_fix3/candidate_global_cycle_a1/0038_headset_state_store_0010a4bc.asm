
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254f4 <headset_state_store>:
   254f4: d503233f     	paciasp
   254f8: d10143ff     	sub	sp, sp, #0x50
   254fc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25500: f9001bf5     	str	x21, [sp, #0x30]
   25504: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25508: 910083fd     	add	x29, sp, #0x20
   2550c: d5384108     	mrs	x8, SP_EL0
   25510: aa0103f5     	mov	x21, x1
   25514: 910023e0     	add	x0, sp, #0x8
   25518: f9438908     	ldr	x8, [x8, #0x710]
   2551c: f100245f     	cmp	x2, #0x9
   25520: f81f83a8     	stur	x8, [x29, #-0x8]
   25524: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025524:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25528: f9400114     	ldr	x20, [x8]
		0000000000025528:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2552c: 52800128     	mov	w8, #0x9                // =9
   25530: b90007ff     	str	wzr, [sp, #0x4]
   25534: 9a883053     	csel	x19, x2, x8, lo
   25538: 2a1f03e2     	mov	w2, wzr
   2553c: 790023ff     	strh	wzr, [sp, #0x10]
   25540: aa1303e1     	mov	x1, x19
   25544: f90007ff     	str	xzr, [sp, #0x8]
   25548: 94000000     	bl	0x25548 <headset_state_store+0x54>
		0000000000025548:  R_AARCH64_CALL26	__check_object_size
   2554c: 910023e0     	add	x0, sp, #0x8
   25550: aa1503e1     	mov	x1, x21
   25554: aa1303e2     	mov	x2, x19
   25558: 9400002a     	bl	0x25600 <headset_state_store+0x10c>
		0000000000025558:  R_AARCH64_CALL26	_inline_copy_from_user
   2555c: 350000c0     	cbnz	w0, 0x25574 <headset_state_store+0x80>
   25560: 910023e0     	add	x0, sp, #0x8
   25564: 910013e2     	add	x2, sp, #0x4
   25568: 2a1f03e1     	mov	w1, wzr
   2556c: 94000000     	bl	0x2556c <headset_state_store+0x78>
		000000000002556c:  R_AARCH64_CALL26	kstrtouint
   25570: 340001c0     	cbz	w0, 0x255a8 <headset_state_store+0xb4>
   25574: 928002b3     	mov	x19, #-0x16             // =-22
   25578: d5384108     	mrs	x8, SP_EL0
   2557c: f9438908     	ldr	x8, [x8, #0x710]
   25580: f85f83a9     	ldur	x9, [x29, #-0x8]
   25584: eb09011f     	cmp	x8, x9
   25588: 540003a1     	b.ne	0x255fc <headset_state_store+0x108>
   2558c: aa1303e0     	mov	x0, x19
   25590: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25594: f9401bf5     	ldr	x21, [sp, #0x30]
   25598: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2559c: 910143ff     	add	sp, sp, #0x50
   255a0: d50323bf     	autiasp
   255a4: d65f03c0     	ret
   255a8: b94007e8     	ldr	w8, [sp, #0x4]
   255ac: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		00000000000255ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65e
   255b0: 91000000     	add	x0, x0, #0x0
		00000000000255b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65e
   255b4: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		00000000000255b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75fc
   255b8: 91000021     	add	x1, x1, #0x0
		00000000000255b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75fc
   255bc: 7100011f     	cmp	w8, #0x0
   255c0: 1a9f07e2     	cset	w2, ne
   255c4: b90007e2     	str	w2, [sp, #0x4]
   255c8: 94000000     	bl	0x255c8 <headset_state_store+0xd4>
		00000000000255c8:  R_AARCH64_CALL26	_printk
   255cc: f9473a88     	ldr	x8, [x20, #0xe70]
   255d0: b4fffd48     	cbz	x8, 0x25578 <headset_state_store+0x84>
   255d4: b94007e1     	ldr	w1, [sp, #0x4]
   255d8: aa1403e0     	mov	x0, x20
   255dc: b85fc110     	ldur	w16, [x8, #-0x4]
   255e0: 72969331     	movk	w17, #0xb499
   255e4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   255e8: 6b11021f     	cmp	w16, w17
   255ec: 54000040     	b.eq	0x255f4 <headset_state_store+0x100>
   255f0: d4304500     	brk	#0x8228
   255f4: d63f0100     	blr	x8
   255f8: 17ffffe0     	b	0x25578 <headset_state_store+0x84>
   255fc: 94000000     	bl	0x255fc <headset_state_store+0x108>
		00000000000255fc:  R_AARCH64_CALL26	__stack_chk_fail
