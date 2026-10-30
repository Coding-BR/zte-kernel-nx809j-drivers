
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c3dc <tpd_set_follow_hand_level>:
   1c3dc: d503233f     	paciasp
   1c3e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c3e4: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c3e8: 910003fd     	mov	x29, sp
   1c3ec: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c3f0: 2a0103f4     	mov	w20, w1
   1c3f4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c3f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c3f8: 91000000     	add	x0, x0, #0x0
		000000000001c3f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c3fc: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c3fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90a4
   1c400: 91000021     	add	x1, x1, #0x0
		000000000001c400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90a4
   1c404: 94000000     	bl	0x1c404 <tpd_set_follow_hand_level+0x28>
		000000000001c404:  R_AARCH64_CALL26	_printk
   1c408: b40002d3     	cbz	x19, 0x1c460 <tpd_set_follow_hand_level+0x84>
   1c40c: f9413a69     	ldr	x9, [x19, #0x270]
   1c410: f9400268     	ldr	x8, [x19]
   1c414: b940b92a     	ldr	w10, [x9, #0xb8]
   1c418: 340000aa     	cbz	w10, 0x1c42c <tpd_set_follow_hand_level+0x50>
   1c41c: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c420: 36000069     	tbz	w9, #0x0, 0x1c42c <tpd_set_follow_hand_level+0x50>
   1c424: 2a1f03e2     	mov	w2, wzr
   1c428: 14000002     	b	0x1c430 <tpd_set_follow_hand_level+0x54>
   1c42c: b9420d02     	ldr	w2, [x8, #0x20c]
   1c430: b9457e68     	ldr	w8, [x19, #0x57c]
   1c434: 7100129f     	cmp	w20, #0x4
   1c438: 52800089     	mov	w9, #0x4                // =4
   1c43c: 1a89b281     	csel	w1, w20, w9, lt
   1c440: 7100051f     	cmp	w8, #0x1
   1c444: b9060261     	str	w1, [x19, #0x600]
   1c448: 54000161     	b.ne	0x1c474 <tpd_set_follow_hand_level+0x98>
   1c44c: aa1303e0     	mov	x0, x19
   1c450: 94000000     	bl	0x1c450 <tpd_set_follow_hand_level+0x74>
		000000000001c450:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   1c454: 37f80160     	tbnz	w0, #0x1f, 0x1c480 <tpd_set_follow_hand_level+0xa4>
   1c458: 2a1f03e0     	mov	w0, wzr
   1c45c: 14000002     	b	0x1c464 <tpd_set_follow_hand_level+0x88>
   1c460: 128002a0     	mov	w0, #-0x16              // =-22
   1c464: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c468: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c46c: d50323bf     	autiasp
   1c470: d65f03c0     	ret
   1c474: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c478: 91000000     	add	x0, x0, #0x0
		000000000001c478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c47c: 14000003     	b	0x1c488 <tpd_set_follow_hand_level+0xac>
   1c480: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x448c
   1c484: 91000000     	add	x0, x0, #0x0
		000000000001c484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x448c
   1c488: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90a4
   1c48c: 91000021     	add	x1, x1, #0x0
		000000000001c48c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90a4
   1c490: 94000000     	bl	0x1c490 <tpd_set_follow_hand_level+0xb4>
		000000000001c490:  R_AARCH64_CALL26	_printk
   1c494: 17fffff1     	b	0x1c458 <tpd_set_follow_hand_level+0x7c>
