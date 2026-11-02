
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000137ec <syna_tcm_get_dynamic_config>:
   137ec: d503233f     	paciasp
   137f0: d10103ff     	sub	sp, sp, #0x40
   137f4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   137f8: a90257f6     	stp	x22, x21, [sp, #0x20]
   137fc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   13800: 910043fd     	add	x29, sp, #0x10
   13804: d5384108     	mrs	x8, SP_EL0
   13808: f9438908     	ldr	x8, [x8, #0x710]
   1380c: f90007e8     	str	x8, [sp, #0x8]
   13810: b40005e0     	cbz	x0, 0x138cc <syna_tcm_get_dynamic_config+0xe0>
   13814: aa0203f3     	mov	x19, x2
   13818: 39402402     	ldrb	w2, [x0, #0x9]
   1381c: aa0003f5     	mov	x21, x0
   13820: 7100045f     	cmp	w2, #0x1
   13824: 54000621     	b.ne	0x138e8 <syna_tcm_get_dynamic_config+0xfc>
   13828: 2a0303f6     	mov	w22, w3
   1382c: 2a0103f4     	mov	w20, w1
   13830: 350000a3     	cbnz	w3, 0x13844 <syna_tcm_get_dynamic_config+0x58>
   13834: f94026a8     	ldr	x8, [x21, #0x48]
   13838: 39405108     	ldrb	w8, [x8, #0x14]
   1383c: 360008c8     	tbz	w8, #0x0, 0x13954 <syna_tcm_get_dynamic_config+0x168>
   13840: 2a1f03f6     	mov	w22, wzr
   13844: f941cea8     	ldr	x8, [x21, #0x398]
   13848: 910013e2     	add	x2, sp, #0x4
   1384c: aa1503e0     	mov	x0, x21
   13850: 52800461     	mov	w1, #0x23               // =35
   13854: 52800023     	mov	w3, #0x1                // =1
   13858: aa1f03e4     	mov	x4, xzr
   1385c: 2a1603e5     	mov	w5, w22
   13860: 390013f4     	strb	w20, [sp, #0x4]
   13864: b85fc110     	ldur	w16, [x8, #-0x4]
   13868: 728751d1     	movk	w17, #0x3a8e
   1386c: 72a48411     	movk	w17, #0x2420, lsl #16
   13870: 6b11021f     	cmp	w16, w17
   13874: 54000040     	b.eq	0x1387c <syna_tcm_get_dynamic_config+0x90>
   13878: d4304500     	brk	#0x8228
   1387c: d63f0100     	blr	x8
   13880: 37f80420     	tbnz	w0, #0x1f, 0x13904 <syna_tcm_get_dynamic_config+0x118>
   13884: b94156a2     	ldr	w2, [x21, #0x154]
   13888: 7100045f     	cmp	w2, #0x1
   1388c: 54000529     	b.ls	0x13930 <syna_tcm_get_dynamic_config+0x144>
   13890: f940a6a8     	ldr	x8, [x21, #0x148]
   13894: 2a1f03e0     	mov	w0, wzr
   13898: 79400108     	ldrh	w8, [x8]
   1389c: 79000268     	strh	w8, [x19]
   138a0: d5384108     	mrs	x8, SP_EL0
   138a4: f9438908     	ldr	x8, [x8, #0x710]
   138a8: f94007e9     	ldr	x9, [sp, #0x8]
   138ac: eb09011f     	cmp	x8, x9
   138b0: 54000601     	b.ne	0x13970 <syna_tcm_get_dynamic_config+0x184>
   138b4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   138b8: a94257f6     	ldp	x22, x21, [sp, #0x20]
   138bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   138c0: 910103ff     	add	sp, sp, #0x40
   138c4: d50323bf     	autiasp
   138c8: d65f03c0     	ret
   138cc: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000138cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   138d0: 91000000     	add	x0, x0, #0x0
		00000000000138d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   138d4: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000138d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35ba
   138d8: 91000021     	add	x1, x1, #0x0
		00000000000138d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35ba
   138dc: 94000000     	bl	0x138dc <syna_tcm_get_dynamic_config+0xf0>
		00000000000138dc:  R_AARCH64_CALL26	_printk
   138e0: 12801e00     	mov	w0, #-0xf1              // =-241
   138e4: 17ffffef     	b	0x138a0 <syna_tcm_get_dynamic_config+0xb4>
   138e8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000138e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   138ec: 91000000     	add	x0, x0, #0x0
		00000000000138ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   138f0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000138f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35ba
   138f4: 91000021     	add	x1, x1, #0x0
		00000000000138f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35ba
   138f8: 94000000     	bl	0x138f8 <syna_tcm_get_dynamic_config+0x10c>
		00000000000138f8:  R_AARCH64_CALL26	_printk
   138fc: 12801e00     	mov	w0, #-0xf1              // =-241
   13900: 17ffffe8     	b	0x138a0 <syna_tcm_get_dynamic_config+0xb4>
   13904: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35a
   13908: 91000108     	add	x8, x8, #0x0
		0000000000013908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35a
   1390c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001390c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35ba
   13910: 91000021     	add	x1, x1, #0x0
		0000000000013910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35ba
   13914: 12001e83     	and	w3, w20, #0xff
   13918: 2a0003f3     	mov	w19, w0
   1391c: aa0803e0     	mov	x0, x8
   13920: 52800462     	mov	w2, #0x23               // =35
   13924: 94000000     	bl	0x13924 <syna_tcm_get_dynamic_config+0x138>
		0000000000013924:  R_AARCH64_CALL26	_printk
   13928: 2a1303e0     	mov	w0, w19
   1392c: 17ffffdd     	b	0x138a0 <syna_tcm_get_dynamic_config+0xb4>
   13930: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f7a
   13934: 91000108     	add	x8, x8, #0x0
		0000000000013934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f7a
   13938: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35ba
   1393c: 91000021     	add	x1, x1, #0x0
		000000000001393c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35ba
   13940: 2a0003f3     	mov	w19, w0
   13944: aa0803e0     	mov	x0, x8
   13948: 94000000     	bl	0x13948 <syna_tcm_get_dynamic_config+0x15c>
		0000000000013948:  R_AARCH64_CALL26	_printk
   1394c: 2a1303e0     	mov	w0, w19
   13950: 17ffffd4     	b	0x138a0 <syna_tcm_get_dynamic_config+0xb4>
   13954: b9420eb6     	ldr	w22, [x21, #0x20c]
   13958: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   1395c: 91000000     	add	x0, x0, #0x0
		000000000001395c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13960: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35ba
   13964: 91000021     	add	x1, x1, #0x0
		0000000000013964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35ba
   13968: 94000000     	bl	0x13968 <syna_tcm_get_dynamic_config+0x17c>
		0000000000013968:  R_AARCH64_CALL26	_printk
   1396c: 17ffffb6     	b	0x13844 <syna_tcm_get_dynamic_config+0x58>
   13970: 94000000     	bl	0x13970 <syna_tcm_get_dynamic_config+0x184>
		0000000000013970:  R_AARCH64_CALL26	__stack_chk_fail
