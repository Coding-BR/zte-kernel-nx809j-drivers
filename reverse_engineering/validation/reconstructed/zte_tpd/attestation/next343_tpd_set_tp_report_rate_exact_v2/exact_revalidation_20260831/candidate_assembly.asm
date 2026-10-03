
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c220 <tpd_set_tp_report_rate>:
   1c220: d503233f     	paciasp
   1c224: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c228: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c22c: 910003fd     	mov	x29, sp
   1c230: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c234: 2a0103f4     	mov	w20, w1
   1c238: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c23c: 91000000     	add	x0, x0, #0x0
		000000000001c23c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c240: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   1c244: 91000021     	add	x1, x1, #0x0
		000000000001c244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   1c248: 94000000     	bl	0x1c248 <tpd_set_tp_report_rate+0x28>
		000000000001c248:  R_AARCH64_CALL26	_printk
   1c24c: b40002d3     	cbz	x19, 0x1c2a4 <tpd_set_tp_report_rate+0x84>
   1c250: f9413a69     	ldr	x9, [x19, #0x270]
   1c254: f9400268     	ldr	x8, [x19]
   1c258: b940b92a     	ldr	w10, [x9, #0xb8]
   1c25c: 340000aa     	cbz	w10, 0x1c270 <tpd_set_tp_report_rate+0x50>
   1c260: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c264: 36000069     	tbz	w9, #0x0, 0x1c270 <tpd_set_tp_report_rate+0x50>
   1c268: 2a1f03e2     	mov	w2, wzr
   1c26c: 14000002     	b	0x1c274 <tpd_set_tp_report_rate+0x54>
   1c270: b9420d02     	ldr	w2, [x8, #0x20c]
   1c274: b9457e68     	ldr	w8, [x19, #0x57c]
   1c278: 7100129f     	cmp	w20, #0x4
   1c27c: 52800089     	mov	w9, #0x4                // =4
   1c280: 1a89b281     	csel	w1, w20, w9, lt
   1c284: 7100051f     	cmp	w8, #0x1
   1c288: b905fa61     	str	w1, [x19, #0x5f8]
   1c28c: 54000161     	b.ne	0x1c2b8 <tpd_set_tp_report_rate+0x98>
   1c290: aa1303e0     	mov	x0, x19
   1c294: 94000000     	bl	0x1c294 <tpd_set_tp_report_rate+0x74>
		000000000001c294:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   1c298: 37f80160     	tbnz	w0, #0x1f, 0x1c2c4 <tpd_set_tp_report_rate+0xa4>
   1c29c: 2a1f03e0     	mov	w0, wzr
   1c2a0: 14000002     	b	0x1c2a8 <tpd_set_tp_report_rate+0x88>
   1c2a4: 128002a0     	mov	w0, #-0x16              // =-22
   1c2a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c2ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c2b0: d50323bf     	autiasp
   1c2b4: d65f03c0     	ret
   1c2b8: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c2b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c2bc: 91000000     	add	x0, x0, #0x0
		000000000001c2bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c2c0: 14000003     	b	0x1c2cc <tpd_set_tp_report_rate+0xac>
   1c2c4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c2c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68c8
   1c2c8: 91000000     	add	x0, x0, #0x0
		000000000001c2c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68c8
   1c2cc: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c2cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   1c2d0: 91000021     	add	x1, x1, #0x0
		000000000001c2d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   1c2d4: 94000000     	bl	0x1c2d4 <tpd_set_tp_report_rate+0xb4>
		000000000001c2d4:  R_AARCH64_CALL26	_printk
   1c2d8: 17fffff1     	b	0x1c29c <tpd_set_tp_report_rate+0x7c>
