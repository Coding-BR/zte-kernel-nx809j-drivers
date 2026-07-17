
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f154 <tp_game_partition_write>:
   1f154: d503233f     	paciasp
   1f158: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1f15c: a90157fc     	stp	x28, x21, [sp, #0x10]
   1f160: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f164: 910003fd     	mov	x29, sp
   1f168: d11043ff     	sub	sp, sp, #0x410
   1f16c: d5384108     	mrs	x8, SP_EL0
   1f170: aa0203f3     	mov	x19, x2
   1f174: aa0103f5     	mov	x21, x1
   1f178: f9438908     	ldr	x8, [x8, #0x710]
   1f17c: 910023e0     	add	x0, sp, #0x8
   1f180: 2a1f03e1     	mov	w1, wzr
   1f184: 52808002     	mov	w2, #0x400              // =1024
   1f188: f81f83a8     	stur	x8, [x29, #-0x8]
   1f18c: 94000000     	bl	0x1f18c <tp_game_partition_write+0x38>
		000000000001f18c:  R_AARCH64_CALL26	memset
   1f190: 90000008     	adrp	x8, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f190:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f194: d5384109     	mrs	x9, SP_EL0
   1f198: 90000000     	adrp	x0, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f198:  R_AARCH64_ADR_PREL_PG_HI21	unk_39237
   1f19c: 91000000     	add	x0, x0, #0x0
		000000000001f19c:  R_AARCH64_ADD_ABS_LO12_NC	unk_39237
   1f1a0: f9400114     	ldr	x20, [x8]
		000000000001f1a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f1a4: 90000001     	adrp	x1, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4b
   1f1a8: 91000021     	add	x1, x1, #0x0
		000000000001f1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4b
   1f1ac: 52808002     	mov	w2, #0x400              // =1024
   1f1b0: 94000000     	bl	0x1f1b0 <tp_game_partition_write+0x5c>
		000000000001f1b0:  R_AARCH64_CALL26	_printk
   1f1b4: f110067f     	cmp	x19, #0x401
   1f1b8: 5400008b     	b.lt	0x1f1c8 <tp_game_partition_write+0x74>
   1f1bc: 90000000     	adrp	x0, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f1bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3924C
   1f1c0: 91000000     	add	x0, x0, #0x0
		000000000001f1c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3924C
   1f1c4: 14000027     	b	0x1f260 <tp_game_partition_write+0x10c>
   1f1c8: 910023e0     	add	x0, sp, #0x8
   1f1cc: 2a1f03e1     	mov	w1, wzr
   1f1d0: 52808002     	mov	w2, #0x400              // =1024
   1f1d4: 94000000     	bl	0x1f1d4 <tp_game_partition_write+0x80>
		000000000001f1d4:  R_AARCH64_CALL26	memset
   1f1d8: 910023e0     	add	x0, sp, #0x8
   1f1dc: aa1303e1     	mov	x1, x19
   1f1e0: 2a1f03e2     	mov	w2, wzr
   1f1e4: 94000000     	bl	0x1f1e4 <tp_game_partition_write+0x90>
		000000000001f1e4:  R_AARCH64_CALL26	__check_object_size
   1f1e8: 910023e0     	add	x0, sp, #0x8
   1f1ec: aa1503e1     	mov	x1, x21
   1f1f0: aa1303e2     	mov	x2, x19
   1f1f4: 94000000     	bl	0x1f1f4 <tp_game_partition_write+0xa0>
		000000000001f1f4:  R_AARCH64_CALL26	_inline_copy_from_user
   1f1f8: b5000300     	cbnz	x0, 0x1f258 <tp_game_partition_write+0x104>
   1f1fc: f946ce88     	ldr	x8, [x20, #0xd98]
   1f200: 910023e1     	add	x1, sp, #0x8
   1f204: aa1403e0     	mov	x0, x20
   1f208: b85fc110     	ldur	w16, [x8, #-0x4]
   1f20c: 729cc5d1     	movk	w17, #0xe62e
   1f210: 72a575f1     	movk	w17, #0x2baf, lsl #16
   1f214: 6b11021f     	cmp	w16, w17
   1f218: 54000040     	b.eq	0x1f220 <tp_game_partition_write+0xcc>
   1f21c: d4304500     	brk	#0x8228
   1f220: d63f0100     	blr	x8
   1f224: 90000002     	adrp	x2, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf47
   1f228: 91000042     	add	x2, x2, #0x0
		000000000001f228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf47
   1f22c: 91010680     	add	x0, x20, #0x41
   1f230: 910023e3     	add	x3, sp, #0x8
   1f234: 52808001     	mov	w1, #0x400              // =1024
   1f238: 94000000     	bl	0x1f238 <tp_game_partition_write+0xe4>
		000000000001f238:  R_AARCH64_CALL26	snprintf
   1f23c: 90000000     	adrp	x0, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f23c:  R_AARCH64_ADR_PREL_PG_HI21	unk_318B2
   1f240: 91000000     	add	x0, x0, #0x0
		000000000001f240:  R_AARCH64_ADD_ABS_LO12_NC	unk_318B2
   1f244: 90000001     	adrp	x1, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4b
   1f248: 91000021     	add	x1, x1, #0x0
		000000000001f248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4b
   1f24c: 91010682     	add	x2, x20, #0x41
   1f250: 94000000     	bl	0x1f250 <tp_game_partition_write+0xfc>
		000000000001f250:  R_AARCH64_CALL26	_printk
   1f254: 14000008     	b	0x1f274 <tp_game_partition_write+0x120>
   1f258: 90000000     	adrp	x0, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f258:  R_AARCH64_ADR_PREL_PG_HI21	unk_35311
   1f25c: 91000000     	add	x0, x0, #0x0
		000000000001f25c:  R_AARCH64_ADD_ABS_LO12_NC	unk_35311
   1f260: 90000001     	adrp	x1, 0x1f000 <tp_frame_data_write+0xc4>
		000000000001f260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4b
   1f264: 91000021     	add	x1, x1, #0x0
		000000000001f264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4b
   1f268: aa1f03e2     	mov	x2, xzr
   1f26c: 94000000     	bl	0x1f26c <tp_game_partition_write+0x118>
		000000000001f26c:  R_AARCH64_CALL26	_printk
   1f270: 928002b3     	mov	x19, #-0x16             // =-22
   1f274: d5384108     	mrs	x8, SP_EL0
   1f278: f9438908     	ldr	x8, [x8, #0x710]
   1f27c: d5384109     	mrs	x9, SP_EL0
   1f280: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f284: eb09011f     	cmp	x8, x9
   1f288: 54000101     	b.ne	0x1f2a8 <tp_game_partition_write+0x154>
   1f28c: aa1303e0     	mov	x0, x19
   1f290: 911043ff     	add	sp, sp, #0x410
   1f294: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f298: a94157fc     	ldp	x28, x21, [sp, #0x10]
   1f29c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1f2a0: d50323bf     	autiasp
   1f2a4: d65f03c0     	ret
   1f2a8: 94000000     	bl	0x1f2a8 <tp_game_partition_write+0x154>
		000000000001f2a8:  R_AARCH64_CALL26	__stack_chk_fail
