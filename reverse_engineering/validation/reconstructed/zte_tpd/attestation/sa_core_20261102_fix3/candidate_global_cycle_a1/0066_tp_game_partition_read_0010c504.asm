
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016740 <tp_game_partition_read>:
   16740: d503233f     	paciasp
   16744: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   16748: f9000bfc     	str	x28, [sp, #0x10]
   1674c: a90257f6     	stp	x22, x21, [sp, #0x20]
   16750: a9034ff4     	stp	x20, x19, [sp, #0x30]
   16754: 910003fd     	mov	x29, sp
   16758: d11043ff     	sub	sp, sp, #0x410
   1675c: d5384108     	mrs	x8, SP_EL0
   16760: aa0203f4     	mov	x20, x2
   16764: aa0103f5     	mov	x21, x1
   16768: f9438908     	ldr	x8, [x8, #0x710]
   1676c: 910023e0     	add	x0, sp, #0x8
   16770: 2a1f03e1     	mov	w1, wzr
   16774: 52808002     	mov	w2, #0x400              // =1024
   16778: aa0303f3     	mov	x19, x3
   1677c: f81f83a8     	stur	x8, [x29, #-0x8]
   16780: 94000000     	bl	0x16780 <tp_game_partition_read+0x40>
		0000000000016780:  R_AARCH64_CALL26	memset
   16784: f9400268     	ldr	x8, [x19]
   16788: b40001c8     	cbz	x8, 0x167c0 <tp_game_partition_read+0x80>
   1678c: aa1f03e0     	mov	x0, xzr
   16790: d5384108     	mrs	x8, SP_EL0
   16794: f9438908     	ldr	x8, [x8, #0x710]
   16798: f85f83a9     	ldur	x9, [x29, #-0x8]
   1679c: eb09011f     	cmp	x8, x9
   167a0: 540003a1     	b.ne	0x16814 <tp_game_partition_read+0xd4>
   167a4: 911043ff     	add	sp, sp, #0x410
   167a8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   167ac: f9400bfc     	ldr	x28, [sp, #0x10]
   167b0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   167b4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   167b8: d50323bf     	autiasp
   167bc: d65f03c0     	ret
   167c0: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000167c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   167c4: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000167c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7b6
   167c8: 91000000     	add	x0, x0, #0x0
		00000000000167c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7b6
   167cc: f9400116     	ldr	x22, [x8]
		00000000000167cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   167d0: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000167d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f18
   167d4: 91000021     	add	x1, x1, #0x0
		00000000000167d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f18
   167d8: 910106c2     	add	x2, x22, #0x41
   167dc: 94000000     	bl	0x167dc <tp_game_partition_read+0x9c>
		00000000000167dc:  R_AARCH64_CALL26	_printk
   167e0: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000167e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec6
   167e4: 91000042     	add	x2, x2, #0x0
		00000000000167e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec6
   167e8: 910023e0     	add	x0, sp, #0x8
   167ec: 910106c3     	add	x3, x22, #0x41
   167f0: 52808001     	mov	w1, #0x400              // =1024
   167f4: 94000000     	bl	0x167f4 <tp_game_partition_read+0xb4>
		00000000000167f4:  R_AARCH64_CALL26	snprintf
   167f8: 93407c04     	sxtw	x4, w0
   167fc: 910023e3     	add	x3, sp, #0x8
   16800: aa1403e1     	mov	x1, x20
   16804: aa1503e0     	mov	x0, x21
   16808: aa1303e2     	mov	x2, x19
   1680c: 94000000     	bl	0x1680c <tp_game_partition_read+0xcc>
		000000000001680c:  R_AARCH64_CALL26	simple_read_from_buffer
   16810: 17ffffe0     	b	0x16790 <tp_game_partition_read+0x50>
   16814: 94000000     	bl	0x16814 <tp_game_partition_read+0xd4>
		0000000000016814:  R_AARCH64_CALL26	__stack_chk_fail
