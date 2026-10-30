
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001785c <tp_frame_data_write>:
   1785c: d503233f     	paciasp
   17860: d100c3ff     	sub	sp, sp, #0x30
   17864: a9017bfd     	stp	x29, x30, [sp, #0x10]
   17868: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1786c: 910043fd     	add	x29, sp, #0x10
   17870: d5384108     	mrs	x8, SP_EL0
   17874: aa0203f3     	mov	x19, x2
   17878: aa0103e0     	mov	x0, x1
   1787c: f9438908     	ldr	x8, [x8, #0x710]
   17880: 910013e3     	add	x3, sp, #0x4
   17884: aa0203e1     	mov	x1, x2
   17888: 52800142     	mov	w2, #0xa                // =10
   1788c: f90007e8     	str	x8, [sp, #0x8]
   17890: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017890:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17894: f9400114     	ldr	x20, [x8]
		0000000000017894:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17898: b90007ff     	str	wzr, [sp, #0x4]
   1789c: 94000000     	bl	0x1789c <tp_frame_data_write+0x40>
		000000000001789c:  R_AARCH64_CALL26	kstrtouint_from_user
   178a0: 340001a0     	cbz	w0, 0x178d4 <tp_frame_data_write+0x78>
   178a4: 928002b3     	mov	x19, #-0x16             // =-22
   178a8: d5384108     	mrs	x8, SP_EL0
   178ac: f9438908     	ldr	x8, [x8, #0x710]
   178b0: f94007e9     	ldr	x9, [sp, #0x8]
   178b4: eb09011f     	cmp	x8, x9
   178b8: 54000381     	b.ne	0x17928 <tp_frame_data_write+0xcc>
   178bc: aa1303e0     	mov	x0, x19
   178c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   178c4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   178c8: 9100c3ff     	add	sp, sp, #0x30
   178cc: d50323bf     	autiasp
   178d0: d65f03c0     	ret
   178d4: b94007e8     	ldr	w8, [sp, #0x4]
   178d8: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000178d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   178dc: 91000000     	add	x0, x0, #0x0
		00000000000178dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   178e0: 90000001     	adrp	x1, 0x17000 <ghost_debug_read+0x30>
		00000000000178e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9c
   178e4: 91000021     	add	x1, x1, #0x0
		00000000000178e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9c
   178e8: 7100011f     	cmp	w8, #0x0
   178ec: 1a9f07e2     	cset	w2, ne
   178f0: b90007e2     	str	w2, [sp, #0x4]
   178f4: 94000000     	bl	0x178f4 <tp_frame_data_write+0x98>
		00000000000178f4:  R_AARCH64_CALL26	_printk
   178f8: f947fe88     	ldr	x8, [x20, #0xff8]
   178fc: b4fffd68     	cbz	x8, 0x178a8 <tp_frame_data_write+0x4c>
   17900: b94007e1     	ldr	w1, [sp, #0x4]
   17904: aa1403e0     	mov	x0, x20
   17908: b85fc110     	ldur	w16, [x8, #-0x4]
   1790c: 72969331     	movk	w17, #0xb499
   17910: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   17914: 6b11021f     	cmp	w16, w17
   17918: 54000040     	b.eq	0x17920 <tp_frame_data_write+0xc4>
   1791c: d4304500     	brk	#0x8228
   17920: d63f0100     	blr	x8
   17924: 17ffffe1     	b	0x178a8 <tp_frame_data_write+0x4c>
   17928: 94000000     	bl	0x17928 <tp_frame_data_write+0xcc>
		0000000000017928:  R_AARCH64_CALL26	__stack_chk_fail
