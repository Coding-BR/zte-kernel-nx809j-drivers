
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f20 <gpio_keys_gpio_report_event>:
     f20: d503233f     	paciasp
     f24: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     f28: f9000bf9     	str	x25, [sp, #0x10]
     f2c: a9025ff8     	stp	x24, x23, [sp, #0x20]
     f30: a90357f6     	stp	x22, x21, [sp, #0x30]
     f34: a9044ff4     	stp	x20, x19, [sp, #0x40]
     f38: 910003fd     	mov	x29, sp
     f3c: a9404c17     	ldp	x23, x19, [x0]
     f40: aa0003f5     	mov	x21, x0
     f44: b940c808     	ldr	w8, [x0, #0xc8]
     f48: b9401af8     	ldr	w24, [x23, #0x18]
     f4c: 7100071f     	cmp	w24, #0x1
     f50: 1a9f8714     	csinc	w20, w24, wzr, hi
     f54: 37f802c8     	tbnz	w8, #0x1f, 0xfac <gpio_keys_gpio_report_event+0x8c>
     f58: b940c6a0     	ldr	w0, [x21, #0xc4]
     f5c: 94000000     	bl	0xf5c <gpio_keys_gpio_report_event+0x3c>
		0000000000000f5c:  R_AARCH64_CALL26	gpio_to_desc
     f60: 94000000     	bl	0xf60 <gpio_keys_gpio_report_event+0x40>
		0000000000000f60:  R_AARCH64_CALL26	gpiod_get_raw_value
     f64: 2a0003f6     	mov	w22, w0
     f68: b940caa0     	ldr	w0, [x21, #0xc8]
     f6c: 710002df     	cmp	w22, #0x0
     f70: 1a9f17f9     	cset	w25, eq
     f74: 94000000     	bl	0xf74 <gpio_keys_gpio_report_event+0x54>
		0000000000000f74:  R_AARCH64_CALL26	gpio_to_desc
     f78: 94000000     	bl	0xf78 <gpio_keys_gpio_report_event+0x58>
		0000000000000f78:  R_AARCH64_CALL26	gpiod_get_raw_value
     f7c: 7100001f     	cmp	w0, #0x0
     f80: 1a9f17e8     	cset	w8, eq
     f84: 710002df     	cmp	w22, #0x0
     f88: 4a080329     	eor	w9, w25, w8
     f8c: 36000609     	tbz	w9, #0x0, 0x104c <gpio_keys_gpio_report_event+0x12c>
     f90: 1a9f17ea     	cset	w10, eq
     f94: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000f94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     f98: b940012b     	ldr	w11, [x9]
		0000000000000f98:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     f9c: 2a0a0508     	orr	w8, w8, w10, lsl #1
     fa0: 6b08017f     	cmp	w11, w8
     fa4: 540002c0     	b.eq	0xffc <gpio_keys_gpio_report_event+0xdc>
     fa8: b9000128     	str	w8, [x9]
		0000000000000fa8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     fac: a94122a0     	ldp	x0, x8, [x21, #0x10]
     fb0: 79400116     	ldrh	w22, [x8]
     fb4: 94000000     	bl	0xfb4 <gpio_keys_gpio_report_event+0x94>
		0000000000000fb4:  R_AARCH64_CALL26	gpiod_get_value_cansleep
     fb8: 71003edf     	cmp	w22, #0xf
     fbc: 540000e1     	b.ne	0xfd8 <gpio_keys_gpio_report_event+0xb8>
     fc0: b9401ae8     	ldr	w8, [x23, #0x18]
     fc4: 7100151f     	cmp	w8, #0x5
     fc8: 54000081     	b.ne	0xfd8 <gpio_keys_gpio_report_event+0xb8>
     fcc: 7100001f     	cmp	w0, #0x0
     fd0: 1a9f17e0     	cset	w0, eq
     fd4: 14000002     	b	0xfdc <gpio_keys_gpio_report_event+0xbc>
     fd8: 37f80600     	tbnz	w0, #0x1f, 0x1098 <gpio_keys_gpio_report_event+0x178>
     fdc: 71000f1f     	cmp	w24, #0x3
     fe0: 540001c1     	b.ne	0x1018 <gpio_keys_gpio_report_event+0xf8>
     fe4: 35000420     	cbnz	w0, 0x1068 <gpio_keys_gpio_report_event+0x148>
     fe8: aa1303e0     	mov	x0, x19
     fec: 2a1f03e1     	mov	w1, wzr
     ff0: 2a1f03e2     	mov	w2, wzr
     ff4: 2a1f03e3     	mov	w3, wzr
     ff8: 94000000     	bl	0xff8 <gpio_keys_gpio_report_event+0xd8>
		0000000000000ff8:  R_AARCH64_CALL26	input_event
     ffc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1000: f9400bf9     	ldr	x25, [sp, #0x10]
    1004: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1008: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    100c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1010: d50323bf     	autiasp
    1014: d65f03c0     	ret
    1018: f9400ea8     	ldr	x8, [x21, #0x18]
    101c: 2a0003f5     	mov	w21, w0
    1020: aa1303e0     	mov	x0, x19
    1024: 2a1403e1     	mov	w1, w20
    1028: 2a1503e3     	mov	w3, w21
    102c: 79400102     	ldrh	w2, [x8]
    1030: 94000000     	bl	0x1030 <gpio_keys_gpio_report_event+0x110>
		0000000000001030:  R_AARCH64_CALL26	input_event
    1034: b94002e2     	ldr	w2, [x23]
    1038: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b
    103c: 91000000     	add	x0, x0, #0x0
		000000000000103c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b
    1040: 2a1403e1     	mov	w1, w20
    1044: 2a1503e3     	mov	w3, w21
    1048: 14000012     	b	0x1090 <gpio_keys_gpio_report_event+0x170>
    104c: 1a9f17e2     	cset	w2, eq
    1050: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f3
    1054: 91000000     	add	x0, x0, #0x0
		0000000000001054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f3
    1058: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x303
    105c: 91000021     	add	x1, x1, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x303
    1060: 94000000     	bl	0x1060 <gpio_keys_gpio_report_event+0x140>
		0000000000001060:  R_AARCH64_CALL26	_printk
    1064: 17ffffe6     	b	0xffc <gpio_keys_gpio_report_event+0xdc>
    1068: b94002e2     	ldr	w2, [x23]
    106c: b9402ee3     	ldr	w3, [x23, #0x2c]
    1070: aa1303e0     	mov	x0, x19
    1074: 52800061     	mov	w1, #0x3                // =3
    1078: 94000000     	bl	0x1078 <gpio_keys_gpio_report_event+0x158>
		0000000000001078:  R_AARCH64_CALL26	input_event
    107c: b94002e2     	ldr	w2, [x23]
    1080: b9402ee3     	ldr	w3, [x23, #0x2c]
    1084: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e
    1088: 91000000     	add	x0, x0, #0x0
		0000000000001088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e
    108c: 52800061     	mov	w1, #0x3                // =3
    1090: 94000000     	bl	0x1090 <gpio_keys_gpio_report_event+0x170>
		0000000000001090:  R_AARCH64_CALL26	_printk
    1094: 17ffffd5     	b	0xfe8 <gpio_keys_gpio_report_event+0xc8>
    1098: f9414a68     	ldr	x8, [x19, #0x290]
    109c: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		000000000000109c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2af
    10a0: 91000021     	add	x1, x1, #0x0
		00000000000010a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2af
    10a4: 2a0003e2     	mov	w2, w0
    10a8: aa0803e0     	mov	x0, x8
    10ac: 94000000     	bl	0x10ac <gpio_keys_gpio_report_event+0x18c>
		00000000000010ac:  R_AARCH64_CALL26	_dev_err
    10b0: 17ffffd3     	b	0xffc <gpio_keys_gpio_report_event+0xdc>
