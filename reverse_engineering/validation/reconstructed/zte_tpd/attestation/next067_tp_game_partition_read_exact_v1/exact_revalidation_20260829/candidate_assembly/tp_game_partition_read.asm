
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000166e4 <tp_game_partition_read>:
   166e4: d503233f     	paciasp
   166e8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   166ec: f9000bfc     	str	x28, [sp, #0x10]
   166f0: a90257f6     	stp	x22, x21, [sp, #0x20]
   166f4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   166f8: 910003fd     	mov	x29, sp
   166fc: d11043ff     	sub	sp, sp, #0x410
   16700: d5384108     	mrs	x8, SP_EL0
   16704: aa0203f4     	mov	x20, x2
   16708: aa0103f5     	mov	x21, x1
   1670c: f9438908     	ldr	x8, [x8, #0x710]
   16710: 910023e0     	add	x0, sp, #0x8
   16714: 2a1f03e1     	mov	w1, wzr
   16718: 52808002     	mov	w2, #0x400              // =1024
   1671c: aa0303f3     	mov	x19, x3
   16720: f81f83a8     	stur	x8, [x29, #-0x8]
   16724: 94000000     	bl	0x16724 <tp_game_partition_read+0x40>
		0000000000016724:  R_AARCH64_CALL26	memset
   16728: f9400268     	ldr	x8, [x19]
   1672c: b40001c8     	cbz	x8, 0x16764 <tp_game_partition_read+0x80>
   16730: aa1f03e0     	mov	x0, xzr
   16734: d5384108     	mrs	x8, SP_EL0
   16738: f9438908     	ldr	x8, [x8, #0x710]
   1673c: f85f83a9     	ldur	x9, [x29, #-0x8]
   16740: eb09011f     	cmp	x8, x9
   16744: 540003a1     	b.ne	0x167b8 <tp_game_partition_read+0xd4>
   16748: 911043ff     	add	sp, sp, #0x410
   1674c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   16750: f9400bfc     	ldr	x28, [sp, #0x10]
   16754: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16758: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1675c: d50323bf     	autiasp
   16760: d65f03c0     	ret
   16764: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016764:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16768: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7b6
   1676c: 91000000     	add	x0, x0, #0x0
		000000000001676c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7b6
   16770: f9400116     	ldr	x22, [x8]
		0000000000016770:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16774: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f18
   16778: 91000021     	add	x1, x1, #0x0
		0000000000016778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f18
   1677c: 910106c2     	add	x2, x22, #0x41
   16780: 94000000     	bl	0x16780 <tp_game_partition_read+0x9c>
		0000000000016780:  R_AARCH64_CALL26	_printk
   16784: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec6
   16788: 91000042     	add	x2, x2, #0x0
		0000000000016788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec6
   1678c: 910023e0     	add	x0, sp, #0x8
   16790: 910106c3     	add	x3, x22, #0x41
   16794: 52808001     	mov	w1, #0x400              // =1024
   16798: 94000000     	bl	0x16798 <tp_game_partition_read+0xb4>
		0000000000016798:  R_AARCH64_CALL26	snprintf
   1679c: 93407c04     	sxtw	x4, w0
   167a0: 910023e3     	add	x3, sp, #0x8
   167a4: aa1403e1     	mov	x1, x20
   167a8: aa1503e0     	mov	x0, x21
   167ac: aa1303e2     	mov	x2, x19
   167b0: 94000000     	bl	0x167b0 <tp_game_partition_read+0xcc>
		00000000000167b0:  R_AARCH64_CALL26	simple_read_from_buffer
   167b4: 17ffffe0     	b	0x16734 <tp_game_partition_read+0x50>
   167b8: 94000000     	bl	0x167b8 <tp_game_partition_read+0xd4>
		00000000000167b8:  R_AARCH64_CALL26	__stack_chk_fail
