
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c438 <tpd_set_follow_hand_level>:
   1c438: d503233f     	paciasp
   1c43c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c440: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c444: 910003fd     	mov	x29, sp
   1c448: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c44c: 2a0103f4     	mov	w20, w1
   1c450: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c454: 91000000     	add	x0, x0, #0x0
		000000000001c454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c458: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90a4
   1c45c: 91000021     	add	x1, x1, #0x0
		000000000001c45c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90a4
   1c460: 94000000     	bl	0x1c460 <tpd_set_follow_hand_level+0x28>
		000000000001c460:  R_AARCH64_CALL26	_printk
   1c464: b40002d3     	cbz	x19, 0x1c4bc <tpd_set_follow_hand_level+0x84>
   1c468: f9413a69     	ldr	x9, [x19, #0x270]
   1c46c: f9400268     	ldr	x8, [x19]
   1c470: b940b92a     	ldr	w10, [x9, #0xb8]
   1c474: 340000aa     	cbz	w10, 0x1c488 <tpd_set_follow_hand_level+0x50>
   1c478: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c47c: 36000069     	tbz	w9, #0x0, 0x1c488 <tpd_set_follow_hand_level+0x50>
   1c480: 2a1f03e2     	mov	w2, wzr
   1c484: 14000002     	b	0x1c48c <tpd_set_follow_hand_level+0x54>
   1c488: b9420d02     	ldr	w2, [x8, #0x20c]
   1c48c: b9457e68     	ldr	w8, [x19, #0x57c]
   1c490: 7100129f     	cmp	w20, #0x4
   1c494: 52800089     	mov	w9, #0x4                // =4
   1c498: 1a89b281     	csel	w1, w20, w9, lt
   1c49c: 7100051f     	cmp	w8, #0x1
   1c4a0: b9060261     	str	w1, [x19, #0x600]
   1c4a4: 54000161     	b.ne	0x1c4d0 <tpd_set_follow_hand_level+0x98>
   1c4a8: aa1303e0     	mov	x0, x19
   1c4ac: 94000000     	bl	0x1c4ac <tpd_set_follow_hand_level+0x74>
		000000000001c4ac:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   1c4b0: 37f80160     	tbnz	w0, #0x1f, 0x1c4dc <tpd_set_follow_hand_level+0xa4>
   1c4b4: 2a1f03e0     	mov	w0, wzr
   1c4b8: 14000002     	b	0x1c4c0 <tpd_set_follow_hand_level+0x88>
   1c4bc: 128002a0     	mov	w0, #-0x16              // =-22
   1c4c0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c4c4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c4c8: d50323bf     	autiasp
   1c4cc: d65f03c0     	ret
   1c4d0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c4d4: 91000000     	add	x0, x0, #0x0
		000000000001c4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c4d8: 14000003     	b	0x1c4e4 <tpd_set_follow_hand_level+0xac>
   1c4dc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c4dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x448c
   1c4e0: 91000000     	add	x0, x0, #0x0
		000000000001c4e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x448c
   1c4e4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c4e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90a4
   1c4e8: 91000021     	add	x1, x1, #0x0
		000000000001c4e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90a4
   1c4ec: 94000000     	bl	0x1c4ec <tpd_set_follow_hand_level+0xb4>
		000000000001c4ec:  R_AARCH64_CALL26	_printk
   1c4f0: 17fffff1     	b	0x1c4b4 <tpd_set_follow_hand_level+0x7c>
