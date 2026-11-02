
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000178b8 <tp_frame_data_write>:
   178b8: d503233f     	paciasp
   178bc: d100c3ff     	sub	sp, sp, #0x30
   178c0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   178c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   178c8: 910043fd     	add	x29, sp, #0x10
   178cc: d5384108     	mrs	x8, SP_EL0
   178d0: aa0203f3     	mov	x19, x2
   178d4: aa0103e0     	mov	x0, x1
   178d8: f9438908     	ldr	x8, [x8, #0x710]
   178dc: 910013e3     	add	x3, sp, #0x4
   178e0: aa0203e1     	mov	x1, x2
   178e4: 52800142     	mov	w2, #0xa                // =10
   178e8: f90007e8     	str	x8, [sp, #0x8]
   178ec: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000178ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   178f0: f9400114     	ldr	x20, [x8]
		00000000000178f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   178f4: b90007ff     	str	wzr, [sp, #0x4]
   178f8: 94000000     	bl	0x178f8 <tp_frame_data_write+0x40>
		00000000000178f8:  R_AARCH64_CALL26	kstrtouint_from_user
   178fc: 340001a0     	cbz	w0, 0x17930 <tp_frame_data_write+0x78>
   17900: 928002b3     	mov	x19, #-0x16             // =-22
   17904: d5384108     	mrs	x8, SP_EL0
   17908: f9438908     	ldr	x8, [x8, #0x710]
   1790c: f94007e9     	ldr	x9, [sp, #0x8]
   17910: eb09011f     	cmp	x8, x9
   17914: 54000381     	b.ne	0x17984 <tp_frame_data_write+0xcc>
   17918: aa1303e0     	mov	x0, x19
   1791c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   17920: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   17924: 9100c3ff     	add	sp, sp, #0x30
   17928: d50323bf     	autiasp
   1792c: d65f03c0     	ret
   17930: b94007e8     	ldr	w8, [sp, #0x4]
   17934: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   17938: 91000000     	add	x0, x0, #0x0
		0000000000017938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   1793c: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		000000000001793c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9c
   17940: 91000021     	add	x1, x1, #0x0
		0000000000017940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9c
   17944: 7100011f     	cmp	w8, #0x0
   17948: 1a9f07e2     	cset	w2, ne
   1794c: b90007e2     	str	w2, [sp, #0x4]
   17950: 94000000     	bl	0x17950 <tp_frame_data_write+0x98>
		0000000000017950:  R_AARCH64_CALL26	_printk
   17954: f947fe88     	ldr	x8, [x20, #0xff8]
   17958: b4fffd68     	cbz	x8, 0x17904 <tp_frame_data_write+0x4c>
   1795c: b94007e1     	ldr	w1, [sp, #0x4]
   17960: aa1403e0     	mov	x0, x20
   17964: b85fc110     	ldur	w16, [x8, #-0x4]
   17968: 72969331     	movk	w17, #0xb499
   1796c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   17970: 6b11021f     	cmp	w16, w17
   17974: 54000040     	b.eq	0x1797c <tp_frame_data_write+0xc4>
   17978: d4304500     	brk	#0x8228
   1797c: d63f0100     	blr	x8
   17980: 17ffffe1     	b	0x17904 <tp_frame_data_write+0x4c>
   17984: 94000000     	bl	0x17984 <tp_frame_data_write+0xcc>
		0000000000017984:  R_AARCH64_CALL26	__stack_chk_fail
