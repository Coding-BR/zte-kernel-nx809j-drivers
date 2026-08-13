
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f02c <tp_single_game_read>:
   1f02c: d503233f     	paciasp
   1f030: d10143ff     	sub	sp, sp, #0x50
   1f034: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f038: a90357f6     	stp	x22, x21, [sp, #0x30]
   1f03c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1f040: 910083fd     	add	x29, sp, #0x20
   1f044: d5384108     	mrs	x8, SP_EL0
   1f048: aa1f03e0     	mov	x0, xzr
   1f04c: f9438908     	ldr	x8, [x8, #0x710]
   1f050: f81f83a8     	stur	x8, [x29, #-0x8]
   1f054: f9400068     	ldr	x8, [x3]
   1f058: f90007ff     	str	xzr, [sp, #0x8]
   1f05c: b4000188     	cbz	x8, 0x1f08c <tp_single_game_read+0x60>
   1f060: d5384108     	mrs	x8, SP_EL0
   1f064: f9438908     	ldr	x8, [x8, #0x710]
   1f068: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f06c: eb09011f     	cmp	x8, x9
   1f070: 54000541     	b.ne	0x1f118 <tp_single_game_read+0xec>
   1f074: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1f078: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1f07c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f080: 910143ff     	add	sp, sp, #0x50
   1f084: d50323bf     	autiasp
   1f088: d65f03c0     	ret
   1f08c: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f08c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f090: f9000bff     	str	xzr, [sp, #0x10]
   1f094: aa0103f5     	mov	x21, x1
   1f098: f9400116     	ldr	x22, [x8]
		000000000001f098:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f09c: aa0203f4     	mov	x20, x2
   1f0a0: aa0303f3     	mov	x19, x3
   1f0a4: f9476ec8     	ldr	x8, [x22, #0xed8]
   1f0a8: b4000128     	cbz	x8, 0x1f0cc <tp_single_game_read+0xa0>
   1f0ac: aa1603e0     	mov	x0, x22
   1f0b0: b85fc110     	ldur	w16, [x8, #-0x4]
   1f0b4: 7281af31     	movk	w17, #0xd79
   1f0b8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1f0bc: 6b11021f     	cmp	w16, w17
   1f0c0: 54000040     	b.eq	0x1f0c8 <tp_single_game_read+0x9c>
   1f0c4: d4304500     	brk	#0x8228
   1f0c8: d63f0100     	blr	x8
   1f0cc: b94456c2     	ldr	w2, [x22, #0x454]
   1f0d0: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f0d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_34061
   1f0d4: 91000000     	add	x0, x0, #0x0
		000000000001f0d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_34061
   1f0d8: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x254f
   1f0dc: 91000021     	add	x1, x1, #0x0
		000000000001f0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x254f
   1f0e0: 94000000     	bl	0x1f0e0 <tp_single_game_read+0xb4>
		000000000001f0e0:  R_AARCH64_CALL26	_printk
   1f0e4: b94456c3     	ldr	w3, [x22, #0x454]
   1f0e8: 90000002     	adrp	x2, 0x1f000 <tp_single_aod_write+0xac>
		000000000001f0e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
   1f0ec: 91000042     	add	x2, x2, #0x0
		000000000001f0ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
   1f0f0: 910023e0     	add	x0, sp, #0x8
   1f0f4: 52800141     	mov	w1, #0xa                // =10
   1f0f8: 94000000     	bl	0x1f0f8 <tp_single_game_read+0xcc>
		000000000001f0f8:  R_AARCH64_CALL26	snprintf
   1f0fc: 93407c04     	sxtw	x4, w0
   1f100: 910023e3     	add	x3, sp, #0x8
   1f104: aa1403e1     	mov	x1, x20
   1f108: aa1503e0     	mov	x0, x21
   1f10c: aa1303e2     	mov	x2, x19
   1f110: 94000000     	bl	0x1f110 <tp_single_game_read+0xe4>
		000000000001f110:  R_AARCH64_CALL26	simple_read_from_buffer
   1f114: 17ffffd3     	b	0x1f060 <tp_single_game_read+0x34>
   1f118: 94000000     	bl	0x1f118 <tp_single_game_read+0xec>
		000000000001f118:  R_AARCH64_CALL26	__stack_chk_fail
