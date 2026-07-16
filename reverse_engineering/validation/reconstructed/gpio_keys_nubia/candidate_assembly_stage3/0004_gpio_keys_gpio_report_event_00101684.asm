
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f74 <gpio_keys_gpio_report_event>:
     f74: d503233f     	paciasp
     f78: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     f7c: f9000bf9     	str	x25, [sp, #0x10]
     f80: a9025ff8     	stp	x24, x23, [sp, #0x20]
     f84: a90357f6     	stp	x22, x21, [sp, #0x30]
     f88: a9044ff4     	stp	x20, x19, [sp, #0x40]
     f8c: 910003fd     	mov	x29, sp
     f90: a9404c17     	ldp	x23, x19, [x0]
     f94: aa0003f5     	mov	x21, x0
     f98: b940c808     	ldr	w8, [x0, #0xc8]
     f9c: b9401af8     	ldr	w24, [x23, #0x18]
     fa0: 7100071f     	cmp	w24, #0x1
     fa4: 1a9f8714     	csinc	w20, w24, wzr, hi
     fa8: 37f802c8     	tbnz	w8, #0x1f, 0x1000 <gpio_keys_gpio_report_event+0x8c>
     fac: b940c6a0     	ldr	w0, [x21, #0xc4]
     fb0: 94000000     	bl	0xfb0 <gpio_keys_gpio_report_event+0x3c>
		0000000000000fb0:  R_AARCH64_CALL26	gpio_to_desc
     fb4: 94000000     	bl	0xfb4 <gpio_keys_gpio_report_event+0x40>
		0000000000000fb4:  R_AARCH64_CALL26	gpiod_get_raw_value
     fb8: 2a0003f6     	mov	w22, w0
     fbc: b940caa0     	ldr	w0, [x21, #0xc8]
     fc0: 710002df     	cmp	w22, #0x0
     fc4: 1a9f17f9     	cset	w25, eq
     fc8: 94000000     	bl	0xfc8 <gpio_keys_gpio_report_event+0x54>
		0000000000000fc8:  R_AARCH64_CALL26	gpio_to_desc
     fcc: 94000000     	bl	0xfcc <gpio_keys_gpio_report_event+0x58>
		0000000000000fcc:  R_AARCH64_CALL26	gpiod_get_raw_value
     fd0: 7100001f     	cmp	w0, #0x0
     fd4: 1a9f17e8     	cset	w8, eq
     fd8: 710002df     	cmp	w22, #0x0
     fdc: 4a080329     	eor	w9, w25, w8
     fe0: 36000529     	tbz	w9, #0x0, 0x1084 <gpio_keys_gpio_report_event+0x110>
     fe4: 1a9f17ea     	cset	w10, eq
     fe8: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000fe8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     fec: b940012b     	ldr	w11, [x9]
		0000000000000fec:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     ff0: 2a0a0508     	orr	w8, w8, w10, lsl #1
     ff4: 6b08017f     	cmp	w11, w8
     ff8: 54000240     	b.eq	0x1040 <gpio_keys_gpio_report_event+0xcc>
     ffc: b9000128     	str	w8, [x9]
		0000000000000ffc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
    1000: a94122a0     	ldp	x0, x8, [x21, #0x10]
    1004: 79400116     	ldrh	w22, [x8]
    1008: 94000000     	bl	0x1008 <gpio_keys_gpio_report_event+0x94>
		0000000000001008:  R_AARCH64_CALL26	gpiod_get_value_cansleep
    100c: 71003edf     	cmp	w22, #0xf
    1010: 54000061     	b.ne	0x101c <gpio_keys_gpio_report_event+0xa8>
    1014: 7100171f     	cmp	w24, #0x5
    1018: 54000220     	b.eq	0x105c <gpio_keys_gpio_report_event+0xe8>
    101c: 37f80260     	tbnz	w0, #0x1f, 0x1068 <gpio_keys_gpio_report_event+0xf4>
    1020: 71000f1f     	cmp	w24, #0x3
    1024: 540003e1     	b.ne	0x10a0 <gpio_keys_gpio_report_event+0x12c>
    1028: 35000580     	cbnz	w0, 0x10d8 <gpio_keys_gpio_report_event+0x164>
    102c: aa1303e0     	mov	x0, x19
    1030: 2a1f03e1     	mov	w1, wzr
    1034: 2a1f03e2     	mov	w2, wzr
    1038: 2a1f03e3     	mov	w3, wzr
    103c: 94000000     	bl	0x103c <gpio_keys_gpio_report_event+0xc8>
		000000000000103c:  R_AARCH64_CALL26	input_event
    1040: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1044: f9400bf9     	ldr	x25, [sp, #0x10]
    1048: a94357f6     	ldp	x22, x21, [sp, #0x30]
    104c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1050: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1054: d50323bf     	autiasp
    1058: d65f03c0     	ret
    105c: 7100001f     	cmp	w0, #0x0
    1060: 1a9f17e8     	cset	w8, eq
    1064: 14000010     	b	0x10a4 <gpio_keys_gpio_report_event+0x130>
    1068: f9414a68     	ldr	x8, [x19, #0x290]
    106c: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a1
    1070: 91000021     	add	x1, x1, #0x0
		0000000000001070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a1
    1074: 2a0003e2     	mov	w2, w0
    1078: aa0803e0     	mov	x0, x8
    107c: 94000000     	bl	0x107c <gpio_keys_gpio_report_event+0x108>
		000000000000107c:  R_AARCH64_CALL26	_dev_err
    1080: 17fffff0     	b	0x1040 <gpio_keys_gpio_report_event+0xcc>
    1084: 1a9f17e2     	cset	w2, eq
    1088: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53d
    108c: 91000000     	add	x0, x0, #0x0
		000000000000108c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53d
    1090: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f5
    1094: 91000021     	add	x1, x1, #0x0
		0000000000001094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f5
    1098: 94000000     	bl	0x1098 <gpio_keys_gpio_report_event+0x124>
		0000000000001098:  R_AARCH64_CALL26	_printk
    109c: 17ffffe9     	b	0x1040 <gpio_keys_gpio_report_event+0xcc>
    10a0: 2a0003e8     	mov	w8, w0
    10a4: f9400ea9     	ldr	x9, [x21, #0x18]
    10a8: aa1303e0     	mov	x0, x19
    10ac: 2a1403e1     	mov	w1, w20
    10b0: 2a0803e3     	mov	w3, w8
    10b4: 2a0803f5     	mov	w21, w8
    10b8: 79400122     	ldrh	w2, [x9]
    10bc: 94000000     	bl	0x10bc <gpio_keys_gpio_report_event+0x148>
		00000000000010bc:  R_AARCH64_CALL26	input_event
    10c0: b94002e2     	ldr	w2, [x23]
    10c4: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000010c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x488
    10c8: 91000000     	add	x0, x0, #0x0
		00000000000010c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x488
    10cc: 2a1403e1     	mov	w1, w20
    10d0: 2a1503e3     	mov	w3, w21
    10d4: 1400000b     	b	0x1100 <gpio_keys_gpio_report_event+0x18c>
    10d8: b94002e2     	ldr	w2, [x23]
    10dc: b9402ee3     	ldr	w3, [x23, #0x2c]
    10e0: aa1303e0     	mov	x0, x19
    10e4: 52800061     	mov	w1, #0x3                // =3
    10e8: 94000000     	bl	0x10e8 <gpio_keys_gpio_report_event+0x174>
		00000000000010e8:  R_AARCH64_CALL26	input_event
    10ec: b94002e2     	ldr	w2, [x23]
    10f0: b9402ee3     	ldr	w3, [x23, #0x2c]
    10f4: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000010f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    10f8: 91000000     	add	x0, x0, #0x0
		00000000000010f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    10fc: 52800061     	mov	w1, #0x3                // =3
    1100: 94000000     	bl	0x1100 <gpio_keys_gpio_report_event+0x18c>
		0000000000001100:  R_AARCH64_CALL26	_printk
    1104: 17ffffca     	b	0x102c <gpio_keys_gpio_report_event+0xb8>
