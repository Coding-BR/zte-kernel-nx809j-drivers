
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020fb0 <tpd_set_rotation_limit_level>:
   20fb0: d503233f     	paciasp
   20fb4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20fb8: f9000bf5     	str	x21, [sp, #0x10]
   20fbc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20fc0: 910003fd     	mov	x29, sp
   20fc4: aa0003f4     	mov	x20, x0
   20fc8: f946dc13     	ldr	x19, [x0, #0xdb8]
   20fcc: 2a0103f5     	mov	w21, w1
   20fd0: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020fd0:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
   20fd4: 91000000     	add	x0, x0, #0x0
		0000000000020fd4:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
   20fd8: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6666
   20fdc: 91000021     	add	x1, x1, #0x0
		0000000000020fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6666
   20fe0: 94000000     	bl	0x20fe0 <tpd_set_rotation_limit_level+0x30>
		0000000000020fe0:  R_AARCH64_CALL26	_printk
   20fe4: b4000133     	cbz	x19, 0x21008 <tpd_set_rotation_limit_level+0x58>
   20fe8: f9413a69     	ldr	x9, [x19, #0x270]
   20fec: f9400268     	ldr	x8, [x19]
   20ff0: b940b92a     	ldr	w10, [x9, #0xb8]
   20ff4: 3400006a     	cbz	w10, 0x21000 <tpd_set_rotation_limit_level+0x50>
   20ff8: 3942f129     	ldrb	w9, [x9, #0xbc]
   20ffc: 370000a9     	tbnz	w9, #0x0, 0x21010 <tpd_set_rotation_limit_level+0x60>
   21000: b9420d02     	ldr	w2, [x8, #0x20c]
   21004: 14000004     	b	0x21014 <tpd_set_rotation_limit_level+0x64>
   21008: 128002a0     	mov	w0, #-0x16              // =-22
   2100c: 1400000d     	b	0x21040 <tpd_set_rotation_limit_level+0x90>
   21010: 2a1f03e2     	mov	w2, wzr
   21014: b9457e68     	ldr	w8, [x19, #0x57c]
   21018: 71000ebf     	cmp	w21, #0x3
   2101c: 52800069     	mov	w9, #0x3                // =3
   21020: 1a89b2a9     	csel	w9, w21, w9, lt
   21024: 7100051f     	cmp	w8, #0x1
   21028: b9060e69     	str	w9, [x19, #0x60c]
   2102c: 54000141     	b.ne	0x21054 <tpd_set_rotation_limit_level+0xa4>
   21030: b9401281     	ldr	w1, [x20, #0x10]
   21034: aa1303e0     	mov	x0, x19
   21038: 94000000     	bl	0x21038 <tpd_set_rotation_limit_level+0x88>
		0000000000021038:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   2103c: 35000120     	cbnz	w0, 0x21060 <tpd_set_rotation_limit_level+0xb0>
   21040: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   21044: f9400bf5     	ldr	x21, [sp, #0x10]
   21048: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   2104c: d50323bf     	autiasp
   21050: d65f03c0     	ret
   21054: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x50>
		0000000000021054:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
   21058: 91000000     	add	x0, x0, #0x0
		0000000000021058:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
   2105c: 14000003     	b	0x21068 <tpd_set_rotation_limit_level+0xb8>
   21060: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x50>
		0000000000021060:  R_AARCH64_ADR_PREL_PG_HI21	unk_3220D
   21064: 91000000     	add	x0, x0, #0x0
		0000000000021064:  R_AARCH64_ADD_ABS_LO12_NC	unk_3220D
   21068: 90000001     	adrp	x1, 0x21000 <tpd_set_rotation_limit_level+0x50>
		0000000000021068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6666
   2106c: 91000021     	add	x1, x1, #0x0
		000000000002106c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6666
   21070: 94000000     	bl	0x21070 <tpd_set_rotation_limit_level+0xc0>
		0000000000021070:  R_AARCH64_CALL26	_printk
   21074: 2a1f03e0     	mov	w0, wzr
   21078: 17fffff2     	b	0x21040 <tpd_set_rotation_limit_level+0x90>
