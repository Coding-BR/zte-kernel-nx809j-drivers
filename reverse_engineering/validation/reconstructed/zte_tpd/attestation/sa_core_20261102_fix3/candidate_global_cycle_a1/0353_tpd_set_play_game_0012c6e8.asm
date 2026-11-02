
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c87c <tpd_set_play_game>:
   1c87c: d503233f     	paciasp
   1c880: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c884: f9000bf5     	str	x21, [sp, #0x10]
   1c888: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c88c: 910003fd     	mov	x29, sp
   1c890: aa0003f3     	mov	x19, x0
   1c894: f946dc14     	ldr	x20, [x0, #0xdb8]
   1c898: 2a0103f5     	mov	w21, w1
   1c89c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c89c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c8a0: 91000000     	add	x0, x0, #0x0
		000000000001c8a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c8a4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c8a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c58
   1c8a8: 91000021     	add	x1, x1, #0x0
		000000000001c8a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c58
   1c8ac: 94000000     	bl	0x1c8ac <tpd_set_play_game+0x30>
		000000000001c8ac:  R_AARCH64_CALL26	_printk
   1c8b0: b40002f4     	cbz	x20, 0x1c90c <tpd_set_play_game+0x90>
   1c8b4: f9413a89     	ldr	x9, [x20, #0x270]
   1c8b8: f9400288     	ldr	x8, [x20]
   1c8bc: b940b92a     	ldr	w10, [x9, #0xb8]
   1c8c0: 340000aa     	cbz	w10, 0x1c8d4 <tpd_set_play_game+0x58>
   1c8c4: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c8c8: 36000069     	tbz	w9, #0x0, 0x1c8d4 <tpd_set_play_game+0x58>
   1c8cc: 2a1f03e2     	mov	w2, wzr
   1c8d0: 14000002     	b	0x1c8d8 <tpd_set_play_game+0x5c>
   1c8d4: b9420d02     	ldr	w2, [x8, #0x20c]
   1c8d8: b9457e88     	ldr	w8, [x20, #0x57c]
   1c8dc: 7100051f     	cmp	w8, #0x1
   1c8e0: 54000221     	b.ne	0x1c924 <tpd_set_play_game+0xa8>
   1c8e4: b945de88     	ldr	w8, [x20, #0x5dc]
   1c8e8: 6b15011f     	cmp	w8, w21
   1c8ec: 54000220     	b.eq	0x1c930 <tpd_set_play_game+0xb4>
   1c8f0: aa1403e0     	mov	x0, x20
   1c8f4: 2a1503e1     	mov	w1, w21
   1c8f8: b905de95     	str	w21, [x20, #0x5dc]
   1c8fc: 94000000     	bl	0x1c8fc <tpd_set_play_game+0x80>
		000000000001c8fc:  R_AARCH64_CALL26	syna_dev_set_play_game
   1c900: 37f801e0     	tbnz	w0, #0x1f, 0x1c93c <tpd_set_play_game+0xc0>
   1c904: b9401260     	ldr	w0, [x19, #0x10]
   1c908: 14000002     	b	0x1c910 <tpd_set_play_game+0x94>
   1c90c: 128002a0     	mov	w0, #-0x16              // =-22
   1c910: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c914: f9400bf5     	ldr	x21, [sp, #0x10]
   1c918: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c91c: d50323bf     	autiasp
   1c920: d65f03c0     	ret
   1c924: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c928: 91000000     	add	x0, x0, #0x0
		000000000001c928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c92c: 14000006     	b	0x1c944 <tpd_set_play_game+0xc8>
   1c930: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e6
   1c934: 91000000     	add	x0, x0, #0x0
		000000000001c934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e6
   1c938: 14000003     	b	0x1c944 <tpd_set_play_game+0xc8>
   1c93c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c93c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x375c
   1c940: 91000000     	add	x0, x0, #0x0
		000000000001c940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x375c
   1c944: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c58
   1c948: 91000021     	add	x1, x1, #0x0
		000000000001c948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c58
   1c94c: 94000000     	bl	0x1c94c <tpd_set_play_game+0xd0>
		000000000001c94c:  R_AARCH64_CALL26	_printk
   1c950: 17ffffed     	b	0x1c904 <tpd_set_play_game+0x88>
