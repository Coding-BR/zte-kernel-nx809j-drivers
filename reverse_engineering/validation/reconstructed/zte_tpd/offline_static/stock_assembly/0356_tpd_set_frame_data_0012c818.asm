
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025f90 <tpd_set_frame_data>:
   25f90: d503233f     	paciasp
   25f94: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   25f98: f9000bf5     	str	x21, [sp, #0x10]
   25f9c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25fa0: 910003fd     	mov	x29, sp
   25fa4: f946dc13     	ldr	x19, [x0, #0xdb8]
   25fa8: 2a0103f4     	mov	w20, w1
   25fac: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25fb0: 91000000     	add	x0, x0, #0x0
		0000000000025fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25fb4: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43c6
   25fb8: 91000021     	add	x1, x1, #0x0
		0000000000025fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43c6
   25fbc: 94000000     	bl	0x25fbc <tpd_set_frame_data+0x2c>
		0000000000025fbc:  R_AARCH64_CALL26	_printk
   25fc0: b40002f3     	cbz	x19, 0x2601c <tpd_set_frame_data+0x8c>
   25fc4: f9413a69     	ldr	x9, [x19, #0x270]
   25fc8: f9400268     	ldr	x8, [x19]
   25fcc: b940b92a     	ldr	w10, [x9, #0xb8]
   25fd0: 340000aa     	cbz	w10, 0x25fe4 <tpd_set_frame_data+0x54>
   25fd4: 3942f129     	ldrb	w9, [x9, #0xbc]
   25fd8: 36000069     	tbz	w9, #0x0, 0x25fe4 <tpd_set_frame_data+0x54>
   25fdc: 2a1f03f5     	mov	w21, wzr
   25fe0: 14000002     	b	0x25fe8 <tpd_set_frame_data+0x58>
   25fe4: b9420d15     	ldr	w21, [x8, #0x20c]
   25fe8: b9457e68     	ldr	w8, [x19, #0x57c]
   25fec: 7100051f     	cmp	w8, #0x1
   25ff0: 54000221     	b.ne	0x26034 <tpd_set_frame_data+0xa4>
   25ff4: aa1303e0     	mov	x0, x19
   25ff8: b905e274     	str	w20, [x19, #0x5e0]
   25ffc: 94000000     	bl	0x25ffc <tpd_set_frame_data+0x6c>
		0000000000025ffc:  R_AARCH64_CALL26	zte_reset_frame_list
   26000: aa1303e0     	mov	x0, x19
   26004: 2a1403e1     	mov	w1, w20
   26008: 2a1503e2     	mov	w2, w21
   2600c: 94000000     	bl	0x2600c <tpd_set_frame_data+0x7c>
		000000000002600c:  R_AARCH64_CALL26	syna_dev_get_frame_data
   26010: 37f80180     	tbnz	w0, #0x1f, 0x26040 <tpd_set_frame_data+0xb0>
   26014: 2a1f03e0     	mov	w0, wzr
   26018: 14000002     	b	0x26020 <tpd_set_frame_data+0x90>
   2601c: 128002a0     	mov	w0, #-0x16              // =-22
   26020: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   26024: f9400bf5     	ldr	x21, [sp, #0x10]
   26028: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   2602c: d50323bf     	autiasp
   26030: d65f03c0     	ret
   26034: 90000000     	adrp	x0, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   26038: 91000000     	add	x0, x0, #0x0
		0000000000026038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   2603c: 14000003     	b	0x26048 <tpd_set_frame_data+0xb8>
   26040: 90000000     	adrp	x0, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe9
   26044: 91000000     	add	x0, x0, #0x0
		0000000000026044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe9
   26048: 90000001     	adrp	x1, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43c6
   2604c: 91000021     	add	x1, x1, #0x0
		000000000002604c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43c6
   26050: 94000000     	bl	0x26050 <tpd_set_frame_data+0xc0>
		0000000000026050:  R_AARCH64_CALL26	_printk
   26054: 17fffff0     	b	0x26014 <tpd_set_frame_data+0x84>
