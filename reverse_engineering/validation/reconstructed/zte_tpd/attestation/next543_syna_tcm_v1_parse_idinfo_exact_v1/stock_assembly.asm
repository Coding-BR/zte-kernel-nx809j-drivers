
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018e48 <syna_tcm_v1_parse_idinfo>:
   18e48: d503233f     	paciasp
   18e4c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   18e50: f9000bf3     	str	x19, [sp, #0x10]
   18e54: 910003fd     	mov	x29, sp
   18e58: b40002e1     	cbz	x1, 0x18eb4 <syna_tcm_v1_parse_idinfo+0x6c>
   18e5c: 340002c3     	cbz	w3, 0x18eb4 <syna_tcm_v1_parse_idinfo+0x6c>
   18e60: 7100c07f     	cmp	w3, #0x30
   18e64: 52800608     	mov	w8, #0x30               // =48
   18e68: 1a883064     	csel	w4, w3, w8, lo
   18e6c: 6b02009f     	cmp	w4, w2
   18e70: 54000308     	b.hi	0x18ed0 <syna_tcm_v1_parse_idinfo+0x88>
   18e74: aa0003f3     	mov	x19, x0
   18e78: 91020000     	add	x0, x0, #0x80
   18e7c: aa0403e2     	mov	x2, x4
   18e80: 94000000     	bl	0x18e80 <syna_tcm_v1_parse_idinfo+0x38>
		0000000000018e80:  R_AARCH64_CALL26	memcpy
   18e84: b8492268     	ldur	w8, [x19, #0x92]
   18e88: b9400e69     	ldr	w9, [x19, #0xc]
   18e8c: 6b08013f     	cmp	w9, w8
   18e90: 54000040     	b.eq	0x18e98 <syna_tcm_v1_parse_idinfo+0x50>
   18e94: b9000e68     	str	w8, [x19, #0xc]
   18e98: 39420668     	ldrb	w8, [x19, #0x81]
   18e9c: 2a1f03e0     	mov	w0, wzr
   18ea0: 39002668     	strb	w8, [x19, #0x9]
   18ea4: f9400bf3     	ldr	x19, [sp, #0x10]
   18ea8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   18eac: d50323bf     	autiasp
   18eb0: d65f03c0     	ret
   18eb4: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa14c
   18eb8: 91000000     	add	x0, x0, #0x0
		0000000000018eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa14c
   18ebc: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d9b
   18ec0: 91000021     	add	x1, x1, #0x0
		0000000000018ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d9b
   18ec4: 94000000     	bl	0x18ec4 <syna_tcm_v1_parse_idinfo+0x7c>
		0000000000018ec4:  R_AARCH64_CALL26	_printk
   18ec8: 12801e00     	mov	w0, #-0xf1              // =-241
   18ecc: 17fffff6     	b	0x18ea4 <syna_tcm_v1_parse_idinfo+0x5c>
   18ed0: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   18ed4: 91000000     	add	x0, x0, #0x0
		0000000000018ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   18ed8: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   18edc: 91000021     	add	x1, x1, #0x0
		0000000000018edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   18ee0: 52800603     	mov	w3, #0x30               // =48
   18ee4: 94000000     	bl	0x18ee4 <syna_tcm_v1_parse_idinfo+0x9c>
		0000000000018ee4:  R_AARCH64_CALL26	_printk
   18ee8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96b
   18eec: 91000000     	add	x0, x0, #0x0
		0000000000018eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96b
   18ef0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d9b
   18ef4: 91000021     	add	x1, x1, #0x0
		0000000000018ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d9b
   18ef8: 94000000     	bl	0x18ef8 <syna_tcm_v1_parse_idinfo+0xb0>
		0000000000018ef8:  R_AARCH64_CALL26	_printk
   18efc: 128002a0     	mov	w0, #-0x16              // =-22
   18f00: 17ffffe9     	b	0x18ea4 <syna_tcm_v1_parse_idinfo+0x5c>
