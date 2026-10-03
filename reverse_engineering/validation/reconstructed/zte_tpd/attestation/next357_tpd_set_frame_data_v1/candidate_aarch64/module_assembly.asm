
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020d20 <tpd_set_frame_data>:
   20d20: d503233f     	paciasp
   20d24: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20d28: f9000bf5     	str	x21, [sp, #0x10]
   20d2c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20d30: 910003fd     	mov	x29, sp
   20d34: f946dc13     	ldr	x19, [x0, #0xdb8]
   20d38: 2a0103f4     	mov	w20, w1
   20d3c: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020d3c:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
   20d40: 91000000     	add	x0, x0, #0x0
		0000000000020d40:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
   20d44: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28e8
   20d48: 91000021     	add	x1, x1, #0x0
		0000000000020d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28e8
   20d4c: 94000000     	bl	0x20d4c <tpd_set_frame_data+0x2c>
		0000000000020d4c:  R_AARCH64_CALL26	_printk
   20d50: b4000133     	cbz	x19, 0x20d74 <tpd_set_frame_data+0x54>
   20d54: f9413a68     	ldr	x8, [x19, #0x270]
   20d58: b940b909     	ldr	w9, [x8, #0xb8]
   20d5c: 34000069     	cbz	w9, 0x20d68 <tpd_set_frame_data+0x48>
   20d60: 3942f108     	ldrb	w8, [x8, #0xbc]
   20d64: 370000c8     	tbnz	w8, #0x0, 0x20d7c <tpd_set_frame_data+0x5c>
   20d68: f9400268     	ldr	x8, [x19]
   20d6c: b9420d15     	ldr	w21, [x8, #0x20c]
   20d70: 14000004     	b	0x20d80 <tpd_set_frame_data+0x60>
   20d74: 128002a0     	mov	w0, #-0x16              // =-22
   20d78: 1400000e     	b	0x20db0 <tpd_set_frame_data+0x90>
   20d7c: 2a1f03f5     	mov	w21, wzr
   20d80: b9457e68     	ldr	w8, [x19, #0x57c]
   20d84: 7100051f     	cmp	w8, #0x1
   20d88: 540001e1     	b.ne	0x20dc4 <tpd_set_frame_data+0xa4>
   20d8c: aa1303e0     	mov	x0, x19
   20d90: b905e274     	str	w20, [x19, #0x5e0]
   20d94: 94000000     	bl	0x20d94 <tpd_set_frame_data+0x74>
		0000000000020d94:  R_AARCH64_CALL26	zte_reset_frame_list
   20d98: aa1303e0     	mov	x0, x19
   20d9c: 2a1403e1     	mov	w1, w20
   20da0: 2a1503e2     	mov	w2, w21
   20da4: 94000000     	bl	0x20da4 <tpd_set_frame_data+0x84>
		0000000000020da4:  R_AARCH64_CALL26	syna_dev_get_frame_data
   20da8: 37f80140     	tbnz	w0, #0x1f, 0x20dd0 <tpd_set_frame_data+0xb0>
   20dac: 2a1f03e0     	mov	w0, wzr
   20db0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20db4: f9400bf5     	ldr	x21, [sp, #0x10]
   20db8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20dbc: d50323bf     	autiasp
   20dc0: d65f03c0     	ret
   20dc4: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020dc4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
   20dc8: 91000000     	add	x0, x0, #0x0
		0000000000020dc8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
   20dcc: 14000003     	b	0x20dd8 <tpd_set_frame_data+0xb8>
   20dd0: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020dd0:  R_AARCH64_ADR_PREL_PG_HI21	unk_345B2
   20dd4: 91000000     	add	x0, x0, #0x0
		0000000000020dd4:  R_AARCH64_ADD_ABS_LO12_NC	unk_345B2
   20dd8: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28e8
   20ddc: 91000021     	add	x1, x1, #0x0
		0000000000020ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28e8
   20de0: 94000000     	bl	0x20de0 <tpd_set_frame_data+0xc0>
		0000000000020de0:  R_AARCH64_CALL26	_printk
   20de4: 17fffff2     	b	0x20dac <tpd_set_frame_data+0x8c>
