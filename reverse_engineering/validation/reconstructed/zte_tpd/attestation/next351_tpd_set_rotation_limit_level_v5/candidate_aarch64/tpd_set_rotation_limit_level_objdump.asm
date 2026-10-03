
/out/tpd_set_rotation_limit_level.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_rotation_limit_level>:
       0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       4: f9000bf5     	str	x21, [sp, #0x10]
       8: 2a0103f5     	mov	w21, w1
       c: 90000001     	adrp	x1, 0x0 <tpd_set_rotation_limit_level>
		000000000000000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      10: 91000021     	add	x1, x1, #0x0
		0000000000000010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      14: a9024ff4     	stp	x20, x19, [sp, #0x20]
      18: aa0003f4     	mov	x20, x0
      1c: f946dc13     	ldr	x19, [x0, #0xdb8]
      20: 90000000     	adrp	x0, 0x0 <tpd_set_rotation_limit_level>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
      24: 91000000     	add	x0, x0, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
      28: 910003fd     	mov	x29, sp
      2c: 94000000     	bl	0x2c <tpd_set_rotation_limit_level+0x2c>
		000000000000002c:  R_AARCH64_CALL26	printk
      30: b4000133     	cbz	x19, 0x54 <tpd_set_rotation_limit_level+0x54>
      34: f9413a69     	ldr	x9, [x19, #0x270]
      38: f9400268     	ldr	x8, [x19]
      3c: b940b92a     	ldr	w10, [x9, #0xb8]
      40: 3400006a     	cbz	w10, 0x4c <tpd_set_rotation_limit_level+0x4c>
      44: 3942f129     	ldrb	w9, [x9, #0xbc]
      48: 370000a9     	tbnz	w9, #0x0, 0x5c <tpd_set_rotation_limit_level+0x5c>
      4c: b9420d02     	ldr	w2, [x8, #0x20c]
      50: 14000004     	b	0x60 <tpd_set_rotation_limit_level+0x60>
      54: 128002a0     	mov	w0, #-0x16              // =-22
      58: 14000016     	b	0xb0 <tpd_set_rotation_limit_level+0xb0>
      5c: 2a1f03e2     	mov	w2, wzr
      60: b9457e68     	ldr	w8, [x19, #0x57c]
      64: 71000ebf     	cmp	w21, #0x3
      68: 52800069     	mov	w9, #0x3                // =3
      6c: 1a89b2a9     	csel	w9, w21, w9, lt
      70: 7100051f     	cmp	w8, #0x1
      74: b9060e69     	str	w9, [x19, #0x60c]
      78: 54000101     	b.ne	0x98 <tpd_set_rotation_limit_level+0x98>
      7c: b9401281     	ldr	w1, [x20, #0x10]
      80: aa1303e0     	mov	x0, x19
      84: 94000000     	bl	0x84 <tpd_set_rotation_limit_level+0x84>
		0000000000000084:  R_AARCH64_CALL26	syna_dev_set_display_rotation
      88: 34000140     	cbz	w0, 0xb0 <tpd_set_rotation_limit_level+0xb0>
      8c: 90000000     	adrp	x0, 0x0 <tpd_set_rotation_limit_level>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3220D
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	unk_3220D
      94: 14000003     	b	0xa0 <tpd_set_rotation_limit_level+0xa0>
      98: 90000000     	adrp	x0, 0x0 <tpd_set_rotation_limit_level>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
      9c: 91000000     	add	x0, x0, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
      a0: 90000001     	adrp	x1, 0x0 <tpd_set_rotation_limit_level>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      a4: 91000021     	add	x1, x1, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      a8: 94000000     	bl	0xa8 <tpd_set_rotation_limit_level+0xa8>
		00000000000000a8:  R_AARCH64_CALL26	printk
      ac: 2a1f03e0     	mov	w0, wzr
      b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      b4: f9400bf5     	ldr	x21, [sp, #0x10]
      b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      bc: d65f03c0     	ret
