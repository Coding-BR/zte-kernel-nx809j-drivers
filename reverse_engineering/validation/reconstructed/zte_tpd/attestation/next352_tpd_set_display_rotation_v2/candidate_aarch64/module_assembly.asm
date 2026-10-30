
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020a44 <tpd_set_display_rotation>:
   20a44: d503233f     	paciasp
   20a48: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20a4c: a90157f6     	stp	x22, x21, [sp, #0x10]
   20a50: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20a54: 910003fd     	mov	x29, sp
   20a58: aa0003f3     	mov	x19, x0
   20a5c: f946dc14     	ldr	x20, [x0, #0xdb8]
   20a60: 2a0103f6     	mov	w22, w1
   20a64: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020a64:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
   20a68: 91000000     	add	x0, x0, #0x0
		0000000000020a68:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
   20a6c: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20a70: 91000021     	add	x1, x1, #0x0
		0000000000020a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20a74: 94000000     	bl	0x20a74 <tpd_set_display_rotation+0x30>
		0000000000020a74:  R_AARCH64_CALL26	_printk
   20a78: b50000f4     	cbnz	x20, 0x20a94 <tpd_set_display_rotation+0x50>
   20a7c: 128002a0     	mov	w0, #-0x16              // =-22
   20a80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20a84: a94157f6     	ldp	x22, x21, [sp, #0x10]
   20a88: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20a8c: d50323bf     	autiasp
   20a90: d65f03c0     	ret
   20a94: f9413a89     	ldr	x9, [x20, #0x270]
   20a98: f9400288     	ldr	x8, [x20]
   20a9c: b940b92a     	ldr	w10, [x9, #0xb8]
   20aa0: 3400006a     	cbz	w10, 0x20aac <tpd_set_display_rotation+0x68>
   20aa4: 3942f129     	ldrb	w9, [x9, #0xbc]
   20aa8: 37000069     	tbnz	w9, #0x0, 0x20ab4 <tpd_set_display_rotation+0x70>
   20aac: b9420d15     	ldr	w21, [x8, #0x20c]
   20ab0: 14000002     	b	0x20ab8 <tpd_set_display_rotation+0x74>
   20ab4: 2a1f03f5     	mov	w21, wzr
   20ab8: b9001276     	str	w22, [x19, #0x10]
   20abc: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020abc:  R_AARCH64_ADR_PREL_PG_HI21	unk_37B3D
   20ac0: 91000000     	add	x0, x0, #0x0
		0000000000020ac0:  R_AARCH64_ADD_ABS_LO12_NC	unk_37B3D
   20ac4: b9060a96     	str	w22, [x20, #0x608]
   20ac8: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20acc: 91000021     	add	x1, x1, #0x0
		0000000000020acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20ad0: b9401262     	ldr	w2, [x19, #0x10]
   20ad4: 94000000     	bl	0x20ad4 <tpd_set_display_rotation+0x90>
		0000000000020ad4:  R_AARCH64_CALL26	_printk
   20ad8: b9457e88     	ldr	w8, [x20, #0x57c]
   20adc: 7100051f     	cmp	w8, #0x1
   20ae0: 54000101     	b.ne	0x20b00 <tpd_set_display_rotation+0xbc>
   20ae4: b9401261     	ldr	w1, [x19, #0x10]
   20ae8: aa1403e0     	mov	x0, x20
   20aec: 2a1503e2     	mov	w2, w21
   20af0: 94000000     	bl	0x20af0 <tpd_set_display_rotation+0xac>
		0000000000020af0:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   20af4: 37f807a0     	tbnz	w0, #0x1f, 0x20be8 <tpd_set_display_rotation+0x1a4>
   20af8: b9401260     	ldr	w0, [x19, #0x10]
   20afc: 17ffffe1     	b	0x20a80 <tpd_set_display_rotation+0x3c>
   20b00: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b00:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
   20b04: 91000000     	add	x0, x0, #0x0
		0000000000020b04:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
   20b08: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20b0c: 91000021     	add	x1, x1, #0x0
		0000000000020b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20b10: 2a1f03e2     	mov	w2, wzr
   20b14: 94000000     	bl	0x20b14 <tpd_set_display_rotation+0xd0>
		0000000000020b14:  R_AARCH64_CALL26	_printk
   20b18: 52801900     	mov	w0, #0xc8               // =200
   20b1c: 94000000     	bl	0x20b1c <tpd_set_display_rotation+0xd8>
		0000000000020b1c:  R_AARCH64_CALL26	msleep
   20b20: b9457e88     	ldr	w8, [x20, #0x57c]
   20b24: 7100051f     	cmp	w8, #0x1
   20b28: 54fffde0     	b.eq	0x20ae4 <tpd_set_display_rotation+0xa0>
   20b2c: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b2c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
   20b30: 91000000     	add	x0, x0, #0x0
		0000000000020b30:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
   20b34: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20b38: 91000021     	add	x1, x1, #0x0
		0000000000020b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20b3c: 52800022     	mov	w2, #0x1                // =1
   20b40: 94000000     	bl	0x20b40 <tpd_set_display_rotation+0xfc>
		0000000000020b40:  R_AARCH64_CALL26	_printk
   20b44: 52801900     	mov	w0, #0xc8               // =200
   20b48: 94000000     	bl	0x20b48 <tpd_set_display_rotation+0x104>
		0000000000020b48:  R_AARCH64_CALL26	msleep
   20b4c: b9457e88     	ldr	w8, [x20, #0x57c]
   20b50: 7100051f     	cmp	w8, #0x1
   20b54: 54fffc80     	b.eq	0x20ae4 <tpd_set_display_rotation+0xa0>
   20b58: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b58:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
   20b5c: 91000000     	add	x0, x0, #0x0
		0000000000020b5c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
   20b60: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20b64: 91000021     	add	x1, x1, #0x0
		0000000000020b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20b68: 52800042     	mov	w2, #0x2                // =2
   20b6c: 94000000     	bl	0x20b6c <tpd_set_display_rotation+0x128>
		0000000000020b6c:  R_AARCH64_CALL26	_printk
   20b70: 52801900     	mov	w0, #0xc8               // =200
   20b74: 94000000     	bl	0x20b74 <tpd_set_display_rotation+0x130>
		0000000000020b74:  R_AARCH64_CALL26	msleep
   20b78: b9457e88     	ldr	w8, [x20, #0x57c]
   20b7c: 7100051f     	cmp	w8, #0x1
   20b80: 54fffb20     	b.eq	0x20ae4 <tpd_set_display_rotation+0xa0>
   20b84: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b84:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
   20b88: 91000000     	add	x0, x0, #0x0
		0000000000020b88:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
   20b8c: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20b90: 91000021     	add	x1, x1, #0x0
		0000000000020b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20b94: 52800062     	mov	w2, #0x3                // =3
   20b98: 94000000     	bl	0x20b98 <tpd_set_display_rotation+0x154>
		0000000000020b98:  R_AARCH64_CALL26	_printk
   20b9c: 52801900     	mov	w0, #0xc8               // =200
   20ba0: 94000000     	bl	0x20ba0 <tpd_set_display_rotation+0x15c>
		0000000000020ba0:  R_AARCH64_CALL26	msleep
   20ba4: b9457e88     	ldr	w8, [x20, #0x57c]
   20ba8: 7100051f     	cmp	w8, #0x1
   20bac: 54fff9c0     	b.eq	0x20ae4 <tpd_set_display_rotation+0xa0>
   20bb0: 90000013     	adrp	x19, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20bb4: 91000273     	add	x19, x19, #0x0
		0000000000020bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20bb8: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020bb8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
   20bbc: 91000000     	add	x0, x0, #0x0
		0000000000020bbc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
   20bc0: aa1303e1     	mov	x1, x19
   20bc4: 52800082     	mov	w2, #0x4                // =4
   20bc8: 94000000     	bl	0x20bc8 <tpd_set_display_rotation+0x184>
		0000000000020bc8:  R_AARCH64_CALL26	_printk
   20bcc: 52801900     	mov	w0, #0xc8               // =200
   20bd0: 94000000     	bl	0x20bd0 <tpd_set_display_rotation+0x18c>
		0000000000020bd0:  R_AARCH64_CALL26	msleep
   20bd4: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020bd4:  R_AARCH64_ADR_PREL_PG_HI21	unk_38BA1
   20bd8: 91000000     	add	x0, x0, #0x0
		0000000000020bd8:  R_AARCH64_ADD_ABS_LO12_NC	unk_38BA1
   20bdc: aa1303e1     	mov	x1, x19
   20be0: 94000000     	bl	0x20be0 <tpd_set_display_rotation+0x19c>
		0000000000020be0:  R_AARCH64_CALL26	_printk
   20be4: 17ffffa6     	b	0x20a7c <tpd_set_display_rotation+0x38>
   20be8: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020be8:  R_AARCH64_ADR_PREL_PG_HI21	unk_36936
   20bec: 91000000     	add	x0, x0, #0x0
		0000000000020bec:  R_AARCH64_ADD_ABS_LO12_NC	unk_36936
   20bf0: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0d
   20bf4: 91000021     	add	x1, x1, #0x0
		0000000000020bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0d
   20bf8: 94000000     	bl	0x20bf8 <tpd_set_display_rotation+0x1b4>
		0000000000020bf8:  R_AARCH64_CALL26	_printk
   20bfc: 17ffffbf     	b	0x20af8 <tpd_set_display_rotation+0xb4>
