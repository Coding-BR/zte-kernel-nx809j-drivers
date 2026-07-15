
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025844 <tpd_set_tp_report_rate>:
   25844: d503233f     	paciasp
   25848: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2584c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25850: 910003fd     	mov	x29, sp
   25854: f946dc13     	ldr	x19, [x0, #0xdb8]
   25858: 2a0103f4     	mov	w20, w1
   2585c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002585c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25860: 91000000     	add	x0, x0, #0x0
		0000000000025860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25864: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb252
   25868: 91000021     	add	x1, x1, #0x0
		0000000000025868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb252
   2586c: 94000000     	bl	0x2586c <tpd_set_tp_report_rate+0x28>
		000000000002586c:  R_AARCH64_CALL26	_printk
   25870: b40002d3     	cbz	x19, 0x258c8 <tpd_set_tp_report_rate+0x84>
   25874: f9413a69     	ldr	x9, [x19, #0x270]
   25878: f9400268     	ldr	x8, [x19]
   2587c: b940b92a     	ldr	w10, [x9, #0xb8]
   25880: 340000aa     	cbz	w10, 0x25894 <tpd_set_tp_report_rate+0x50>
   25884: 3942f129     	ldrb	w9, [x9, #0xbc]
   25888: 36000069     	tbz	w9, #0x0, 0x25894 <tpd_set_tp_report_rate+0x50>
   2588c: 2a1f03e2     	mov	w2, wzr
   25890: 14000002     	b	0x25898 <tpd_set_tp_report_rate+0x54>
   25894: b9420d02     	ldr	w2, [x8, #0x20c]
   25898: b9457e68     	ldr	w8, [x19, #0x57c]
   2589c: 7100129f     	cmp	w20, #0x4
   258a0: 52800089     	mov	w9, #0x4                // =4
   258a4: 1a89b281     	csel	w1, w20, w9, lt
   258a8: 7100051f     	cmp	w8, #0x1
   258ac: b905fa61     	str	w1, [x19, #0x5f8]
   258b0: 54000161     	b.ne	0x258dc <tpd_set_tp_report_rate+0x98>
   258b4: aa1303e0     	mov	x0, x19
   258b8: 94000000     	bl	0x258b8 <tpd_set_tp_report_rate+0x74>
		00000000000258b8:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   258bc: 37f80160     	tbnz	w0, #0x1f, 0x258e8 <tpd_set_tp_report_rate+0xa4>
   258c0: 2a1f03e0     	mov	w0, wzr
   258c4: 14000002     	b	0x258cc <tpd_set_tp_report_rate+0x88>
   258c8: 128002a0     	mov	w0, #-0x16              // =-22
   258cc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   258d0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   258d4: d50323bf     	autiasp
   258d8: d65f03c0     	ret
   258dc: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000258dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   258e0: 91000000     	add	x0, x0, #0x0
		00000000000258e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   258e4: 14000003     	b	0x258f0 <tpd_set_tp_report_rate+0xac>
   258e8: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000258e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x672a
   258ec: 91000000     	add	x0, x0, #0x0
		00000000000258ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x672a
   258f0: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000258f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb252
   258f4: 91000021     	add	x1, x1, #0x0
		00000000000258f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb252
   258f8: 94000000     	bl	0x258f8 <tpd_set_tp_report_rate+0xb4>
		00000000000258f8:  R_AARCH64_CALL26	_printk
   258fc: 17fffff1     	b	0x258c0 <tpd_set_tp_report_rate+0x7c>
