
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c27c <tpd_set_tp_report_rate>:
   1c27c: d503233f     	paciasp
   1c280: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c284: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c288: 910003fd     	mov	x29, sp
   1c28c: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c290: 2a0103f4     	mov	w20, w1
   1c294: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c298: 91000000     	add	x0, x0, #0x0
		000000000001c298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c29c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c29c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   1c2a0: 91000021     	add	x1, x1, #0x0
		000000000001c2a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   1c2a4: 94000000     	bl	0x1c2a4 <tpd_set_tp_report_rate+0x28>
		000000000001c2a4:  R_AARCH64_CALL26	_printk
   1c2a8: b40002d3     	cbz	x19, 0x1c300 <tpd_set_tp_report_rate+0x84>
   1c2ac: f9413a69     	ldr	x9, [x19, #0x270]
   1c2b0: f9400268     	ldr	x8, [x19]
   1c2b4: b940b92a     	ldr	w10, [x9, #0xb8]
   1c2b8: 340000aa     	cbz	w10, 0x1c2cc <tpd_set_tp_report_rate+0x50>
   1c2bc: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c2c0: 36000069     	tbz	w9, #0x0, 0x1c2cc <tpd_set_tp_report_rate+0x50>
   1c2c4: 2a1f03e2     	mov	w2, wzr
   1c2c8: 14000002     	b	0x1c2d0 <tpd_set_tp_report_rate+0x54>
   1c2cc: b9420d02     	ldr	w2, [x8, #0x20c]
   1c2d0: b9457e68     	ldr	w8, [x19, #0x57c]
   1c2d4: 7100129f     	cmp	w20, #0x4
   1c2d8: 52800089     	mov	w9, #0x4                // =4
   1c2dc: 1a89b281     	csel	w1, w20, w9, lt
   1c2e0: 7100051f     	cmp	w8, #0x1
   1c2e4: b905fa61     	str	w1, [x19, #0x5f8]
   1c2e8: 54000161     	b.ne	0x1c314 <tpd_set_tp_report_rate+0x98>
   1c2ec: aa1303e0     	mov	x0, x19
   1c2f0: 94000000     	bl	0x1c2f0 <tpd_set_tp_report_rate+0x74>
		000000000001c2f0:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   1c2f4: 37f80160     	tbnz	w0, #0x1f, 0x1c320 <tpd_set_tp_report_rate+0xa4>
   1c2f8: 2a1f03e0     	mov	w0, wzr
   1c2fc: 14000002     	b	0x1c304 <tpd_set_tp_report_rate+0x88>
   1c300: 128002a0     	mov	w0, #-0x16              // =-22
   1c304: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c308: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c30c: d50323bf     	autiasp
   1c310: d65f03c0     	ret
   1c314: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c318: 91000000     	add	x0, x0, #0x0
		000000000001c318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c31c: 14000003     	b	0x1c328 <tpd_set_tp_report_rate+0xac>
   1c320: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68c8
   1c324: 91000000     	add	x0, x0, #0x0
		000000000001c324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68c8
   1c328: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   1c32c: 91000021     	add	x1, x1, #0x0
		000000000001c32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   1c330: 94000000     	bl	0x1c330 <tpd_set_tp_report_rate+0xb4>
		000000000001c330:  R_AARCH64_CALL26	_printk
   1c334: 17fffff1     	b	0x1c2f8 <tpd_set_tp_report_rate+0x7c>
