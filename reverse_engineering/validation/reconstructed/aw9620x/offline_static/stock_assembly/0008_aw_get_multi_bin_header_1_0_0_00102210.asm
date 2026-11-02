
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000990 <aw_get_multi_bin_header_1_0_0>:
     990: d503233f     	paciasp
     994: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     998: f9000bf9     	str	x25, [sp, #0x10]
     99c: a9025ff8     	stp	x24, x23, [sp, #0x20]
     9a0: a90357f6     	stp	x22, x21, [sp, #0x30]
     9a4: a9044ff4     	stp	x20, x19, [sp, #0x40]
     9a8: 910003fd     	mov	x29, sp
     9ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe81
     9b0: 91000021     	add	x1, x1, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe81
     9b4: aa0003f3     	mov	x19, x0
     9b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2486
     9bc: 91000000     	add	x0, x0, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2486
     9c0: 52802c22     	mov	w2, #0x161              // =353
     9c4: aa0103e3     	mov	x3, x1
     9c8: 94000000     	bl	0x9c8 <aw_get_multi_bin_header_1_0_0+0x38>
		00000000000009c8:  R_AARCH64_CALL26	_printk
     9cc: f9400269     	ldr	x9, [x19]
     9d0: b9400e6a     	ldr	w10, [x19, #0xc]
     9d4: 3940fd28     	ldrb	w8, [x9, #0x3f]
     9d8: 3940f937     	ldrb	w23, [x9, #0x3e]
     9dc: 3940f538     	ldrb	w24, [x9, #0x3d]
     9e0: 3940f136     	ldrb	w22, [x9, #0x3c]
     9e4: 7100055f     	cmp	w10, #0x1
     9e8: 54000101     	b.ne	0xa08 <aw_get_multi_bin_header_1_0_0+0x78>
     9ec: b9400a69     	ldr	w9, [x19, #0x8]
     9f0: 7101913f     	cmp	w9, #0x64
     9f4: 54000582     	b.hs	0xaa4 <aw_get_multi_bin_header_1_0_0+0x114>
     9f8: 52800a8a     	mov	w10, #0x54              // =84
     9fc: 9baa4d29     	umaddl	x9, w9, w10, x19
     a00: 5280078a     	mov	w10, #0x3c              // =60
     a04: b900552a     	str	w10, [x9, #0x54]
     a08: 53081d19     	lsl	w25, w8, #24
     a0c: aa1303e0     	mov	x0, x19
     a10: 2a1903e8     	mov	w8, w25
     a14: 33101ee8     	bfi	w8, w23, #16, #8
     a18: 33181f08     	bfi	w8, w24, #8, #8
     a1c: 2a160114     	orr	w20, w8, w22
     a20: 94000000     	bl	0xa20 <aw_get_multi_bin_header_1_0_0+0x90>
		0000000000000a20:  R_AARCH64_CALL26	aw_get_single_bin_header_1_0_0
     a24: 34000314     	cbz	w20, 0xa84 <aw_get_multi_bin_header_1_0_0+0xf4>
     a28: 53103ee8     	lsl	w8, w23, #16
     a2c: 53185f09     	lsl	w9, w24, #8
     a30: 2a1f03f5     	mov	w21, wzr
     a34: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe81
     a38: 910002f7     	add	x23, x23, #0x0
		0000000000000a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe81
     a3c: 0b080328     	add	w8, w25, w8
     a40: 0b160129     	add	w9, w9, w22
     a44: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c5a
     a48: 910002d6     	add	x22, x22, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c5a
     a4c: 0b090118     	add	w24, w8, w9
     a50: aa1603e0     	mov	x0, x22
     a54: aa1703e1     	mov	x1, x23
     a58: 52802d62     	mov	w2, #0x16b              // =363
     a5c: 2a1503e3     	mov	w3, w21
     a60: 94000000     	bl	0xa60 <aw_get_multi_bin_header_1_0_0+0xd0>
		0000000000000a60:  R_AARCH64_CALL26	_printk
     a64: 2a1403e0     	mov	w0, w20
     a68: 2a1503e1     	mov	w1, w21
     a6c: aa1303e2     	mov	x2, x19
     a70: 94000000     	bl	0xa70 <aw_get_multi_bin_header_1_0_0+0xe0>
		0000000000000a70:  R_AARCH64_CALL26	aw_parse_each_of_multi_bins_1_0_0
     a74: 37f800a0     	tbnz	w0, #0x1f, 0xa88 <aw_get_multi_bin_header_1_0_0+0xf8>
     a78: 110006b5     	add	w21, w21, #0x1
     a7c: 6b15031f     	cmp	w24, w21
     a80: 54fffe81     	b.ne	0xa50 <aw_get_multi_bin_header_1_0_0+0xc0>
     a84: 2a1f03e0     	mov	w0, wzr
     a88: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     a8c: f9400bf9     	ldr	x25, [sp, #0x10]
     a90: a94357f6     	ldp	x22, x21, [sp, #0x30]
     a94: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     a98: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     a9c: d50323bf     	autiasp
     aa0: d65f03c0     	ret
     aa4: d42aa240     	brk	#0x5512
