
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004a78 <aw9620x_reg_read_val>:
    4a78: d503233f     	paciasp
    4a7c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    4a80: f9000bf5     	str	x21, [sp, #0x10]
    4a84: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4a88: 910003fd     	mov	x29, sp
    4a8c: 2a0203f5     	mov	w21, w2
    4a90: aa0103f4     	mov	x20, x1
    4a94: 12003c42     	and	w2, w2, #0xffff
    4a98: 5288e081     	mov	w1, #0x4704             // =18180
    4a9c: aa0003f3     	mov	x19, x0
    4aa0: 97fff35c     	bl	0x1810 <aw9620x_i2c_write>
    4aa4: 35000400     	cbnz	w0, 0x4b24 <aw9620x_reg_read_val+0xac>
    4aa8: 530e3ea8     	ubfx	w8, w21, #14, #2
    4aac: 52800469     	mov	w9, #0x23               // =35
    4ab0: aa1303e0     	mov	x0, x19
    4ab4: 5288e201     	mov	w1, #0x4710             // =18192
    4ab8: 7100011f     	cmp	w8, #0x0
    4abc: 52800068     	mov	w8, #0x3                // =3
    4ac0: 1a881122     	csel	w2, w9, w8, ne
    4ac4: 97fff353     	bl	0x1810 <aw9620x_i2c_write>
    4ac8: 35000400     	cbnz	w0, 0x4b48 <aw9620x_reg_read_val+0xd0>
    4acc: aa1303e0     	mov	x0, x19
    4ad0: 5288e281     	mov	w1, #0x4714             // =18196
    4ad4: 52800022     	mov	w2, #0x1                // =1
    4ad8: 97fff34e     	bl	0x1810 <aw9620x_i2c_write>
    4adc: 35000480     	cbnz	w0, 0x4b6c <aw9620x_reg_read_val+0xf4>
    4ae0: aa1303e0     	mov	x0, x19
    4ae4: 97ffff5d     	bl	0x4858 <aw9620x_check_isp_go_reg>
    4ae8: 35000540     	cbnz	w0, 0x4b90 <aw9620x_reg_read_val+0x118>
    4aec: aa1303e0     	mov	x0, x19
    4af0: 5288e181     	mov	w1, #0x470c             // =18188
    4af4: aa1403e2     	mov	x2, x20
    4af8: 97fffc02     	bl	0x3b00 <aw9620x_i2c_read>
    4afc: 340005e0     	cbz	w0, 0x4bb8 <aw9620x_reg_read_val+0x140>
    4b00: f9401a61     	ldr	x1, [x19, #0x30]
    4b04: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4b08: 91000000     	add	x0, x0, #0x0
		0000000000004b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4b0c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee9
    4b10: 91000042     	add	x2, x2, #0x0
		0000000000004b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee9
    4b14: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151f
    4b18: 91000063     	add	x3, x3, #0x0
		0000000000004b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151f
    4b1c: 52809d24     	mov	w4, #0x4e9              // =1257
    4b20: 14000024     	b	0x4bb0 <aw9620x_reg_read_val+0x138>
    4b24: f9401a61     	ldr	x1, [x19, #0x30]
    4b28: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4b2c: 91000000     	add	x0, x0, #0x0
		0000000000004b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4b30: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x657
    4b34: 91000042     	add	x2, x2, #0x0
		0000000000004b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x657
    4b38: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151f
    4b3c: 91000063     	add	x3, x3, #0x0
		0000000000004b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151f
    4b40: 528099a4     	mov	w4, #0x4cd              // =1229
    4b44: 1400001b     	b	0x4bb0 <aw9620x_reg_read_val+0x138>
    4b48: f9401a61     	ldr	x1, [x19, #0x30]
    4b4c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4b50: 91000000     	add	x0, x0, #0x0
		0000000000004b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4b54: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee9
    4b58: 91000042     	add	x2, x2, #0x0
		0000000000004b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee9
    4b5c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151f
    4b60: 91000063     	add	x3, x3, #0x0
		0000000000004b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151f
    4b64: 52809ae4     	mov	w4, #0x4d7              // =1239
    4b68: 14000012     	b	0x4bb0 <aw9620x_reg_read_val+0x138>
    4b6c: f9401a61     	ldr	x1, [x19, #0x30]
    4b70: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4b74: 91000000     	add	x0, x0, #0x0
		0000000000004b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4b78: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee9
    4b7c: 91000042     	add	x2, x2, #0x0
		0000000000004b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee9
    4b80: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151f
    4b84: 91000063     	add	x3, x3, #0x0
		0000000000004b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151f
    4b88: 52809ba4     	mov	w4, #0x4dd              // =1245
    4b8c: 14000009     	b	0x4bb0 <aw9620x_reg_read_val+0x138>
    4b90: f9401a61     	ldr	x1, [x19, #0x30]
    4b94: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4b98: 91000000     	add	x0, x0, #0x0
		0000000000004b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4b9c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2955
    4ba0: 91000042     	add	x2, x2, #0x0
		0000000000004ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2955
    4ba4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151f
    4ba8: 91000063     	add	x3, x3, #0x0
		0000000000004ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151f
    4bac: 52809c64     	mov	w4, #0x4e3              // =1251
    4bb0: 94000000     	bl	0x4bb0 <aw9620x_reg_read_val+0x138>
		0000000000004bb0:  R_AARCH64_CALL26	_dev_printk
    4bb4: 12800000     	mov	w0, #-0x1               // =-1
    4bb8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4bbc: f9400bf5     	ldr	x21, [sp, #0x10]
    4bc0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    4bc4: d50323bf     	autiasp
    4bc8: d65f03c0     	ret
