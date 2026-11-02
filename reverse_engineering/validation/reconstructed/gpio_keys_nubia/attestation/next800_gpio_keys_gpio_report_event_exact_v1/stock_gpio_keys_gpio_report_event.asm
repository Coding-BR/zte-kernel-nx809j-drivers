
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f6c <gpio_keys_gpio_report_event>:
     f6c: d503233f     	paciasp
     f70: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     f74: f9000bf9     	str	x25, [sp, #0x10]
     f78: a9025ff8     	stp	x24, x23, [sp, #0x20]
     f7c: a90357f6     	stp	x22, x21, [sp, #0x30]
     f80: a9044ff4     	stp	x20, x19, [sp, #0x40]
     f84: 910003fd     	mov	x29, sp
     f88: a9404c17     	ldp	x23, x19, [x0]
     f8c: aa0003f5     	mov	x21, x0
     f90: b940c808     	ldr	w8, [x0, #0xc8]
     f94: b9401af8     	ldr	w24, [x23, #0x18]
     f98: 7100071f     	cmp	w24, #0x1
     f9c: 1a9f8714     	csinc	w20, w24, wzr, hi
     fa0: 37f802c8     	tbnz	w8, #0x1f, 0xff8 <gpio_keys_gpio_report_event+0x8c>
     fa4: b940c6a0     	ldr	w0, [x21, #0xc4]
     fa8: 94000000     	bl	0xfa8 <gpio_keys_gpio_report_event+0x3c>
		0000000000000fa8:  R_AARCH64_CALL26	gpio_to_desc
     fac: 94000000     	bl	0xfac <gpio_keys_gpio_report_event+0x40>
		0000000000000fac:  R_AARCH64_CALL26	gpiod_get_raw_value
     fb0: 2a0003f6     	mov	w22, w0
     fb4: b940caa0     	ldr	w0, [x21, #0xc8]
     fb8: 710002df     	cmp	w22, #0x0
     fbc: 1a9f17f9     	cset	w25, eq
     fc0: 94000000     	bl	0xfc0 <gpio_keys_gpio_report_event+0x54>
		0000000000000fc0:  R_AARCH64_CALL26	gpio_to_desc
     fc4: 94000000     	bl	0xfc4 <gpio_keys_gpio_report_event+0x58>
		0000000000000fc4:  R_AARCH64_CALL26	gpiod_get_raw_value
     fc8: 7100001f     	cmp	w0, #0x0
     fcc: 1a9f17e8     	cset	w8, eq
     fd0: 710002df     	cmp	w22, #0x0
     fd4: 4a080329     	eor	w9, w25, w8
     fd8: 36000529     	tbz	w9, #0x0, 0x107c <gpio_keys_gpio_report_event+0x110>
     fdc: 1a9f17ea     	cset	w10, eq
     fe0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     fe4: b940012b     	ldr	w11, [x9]
		0000000000000fe4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     fe8: 2a0a0508     	orr	w8, w8, w10, lsl #1
     fec: 6b08017f     	cmp	w11, w8
     ff0: 54000240     	b.eq	0x1038 <gpio_keys_gpio_report_event+0xcc>
     ff4: b9000128     	str	w8, [x9]
		0000000000000ff4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x4
     ff8: a94122a0     	ldp	x0, x8, [x21, #0x10]
     ffc: 79400116     	ldrh	w22, [x8]
    1000: 94000000     	bl	0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001000:  R_AARCH64_CALL26	gpiod_get_value_cansleep
    1004: 71003edf     	cmp	w22, #0xf
    1008: 54000061     	b.ne	0x1014 <gpio_keys_gpio_report_event+0xa8>
    100c: 7100171f     	cmp	w24, #0x5
    1010: 54000220     	b.eq	0x1054 <gpio_keys_gpio_report_event+0xe8>
    1014: 37f80260     	tbnz	w0, #0x1f, 0x1060 <gpio_keys_gpio_report_event+0xf4>
    1018: 71000f1f     	cmp	w24, #0x3
    101c: 540003e1     	b.ne	0x1098 <gpio_keys_gpio_report_event+0x12c>
    1020: 35000580     	cbnz	w0, 0x10d0 <gpio_keys_gpio_report_event+0x164>
    1024: aa1303e0     	mov	x0, x19
    1028: 2a1f03e1     	mov	w1, wzr
    102c: 2a1f03e2     	mov	w2, wzr
    1030: 2a1f03e3     	mov	w3, wzr
    1034: 94000000     	bl	0x1034 <gpio_keys_gpio_report_event+0xc8>
		0000000000001034:  R_AARCH64_CALL26	input_event
    1038: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    103c: f9400bf9     	ldr	x25, [sp, #0x10]
    1040: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1044: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1048: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    104c: d50323bf     	autiasp
    1050: d65f03c0     	ret
    1054: 7100001f     	cmp	w0, #0x0
    1058: 1a9f17e8     	cset	w8, eq
    105c: 14000010     	b	0x109c <gpio_keys_gpio_report_event+0x130>
    1060: f9414a68     	ldr	x8, [x19, #0x290]
    1064: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a1
    1068: 91000021     	add	x1, x1, #0x0
		0000000000001068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a1
    106c: 2a0003e2     	mov	w2, w0
    1070: aa0803e0     	mov	x0, x8
    1074: 94000000     	bl	0x1074 <gpio_keys_gpio_report_event+0x108>
		0000000000001074:  R_AARCH64_CALL26	_dev_err
    1078: 17fffff0     	b	0x1038 <gpio_keys_gpio_report_event+0xcc>
    107c: 1a9f17e2     	cset	w2, eq
    1080: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53d
    1084: 91000000     	add	x0, x0, #0x0
		0000000000001084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53d
    1088: 90000001     	adrp	x1, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f5
    108c: 91000021     	add	x1, x1, #0x0
		000000000000108c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f5
    1090: 94000000     	bl	0x1090 <gpio_keys_gpio_report_event+0x124>
		0000000000001090:  R_AARCH64_CALL26	_printk
    1094: 17ffffe9     	b	0x1038 <gpio_keys_gpio_report_event+0xcc>
    1098: 2a0003e8     	mov	w8, w0
    109c: f9400ea9     	ldr	x9, [x21, #0x18]
    10a0: aa1303e0     	mov	x0, x19
    10a4: 2a1403e1     	mov	w1, w20
    10a8: 2a0803e3     	mov	w3, w8
    10ac: 2a0803f5     	mov	w21, w8
    10b0: 79400122     	ldrh	w2, [x9]
    10b4: 94000000     	bl	0x10b4 <gpio_keys_gpio_report_event+0x148>
		00000000000010b4:  R_AARCH64_CALL26	input_event
    10b8: b94002e2     	ldr	w2, [x23]
    10bc: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		00000000000010bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x488
    10c0: 91000000     	add	x0, x0, #0x0
		00000000000010c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x488
    10c4: 2a1403e1     	mov	w1, w20
    10c8: 2a1503e3     	mov	w3, w21
    10cc: 1400000b     	b	0x10f8 <gpio_keys_gpio_report_event+0x18c>
    10d0: b94002e2     	ldr	w2, [x23]
    10d4: b9402ee3     	ldr	w3, [x23, #0x2c]
    10d8: aa1303e0     	mov	x0, x19
    10dc: 52800061     	mov	w1, #0x3                // =3
    10e0: 94000000     	bl	0x10e0 <gpio_keys_gpio_report_event+0x174>
		00000000000010e0:  R_AARCH64_CALL26	input_event
    10e4: b94002e2     	ldr	w2, [x23]
    10e8: b9402ee3     	ldr	w3, [x23, #0x2c]
    10ec: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		00000000000010ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    10f0: 91000000     	add	x0, x0, #0x0
		00000000000010f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    10f4: 52800061     	mov	w1, #0x3                // =3
    10f8: 94000000     	bl	0x10f8 <gpio_keys_gpio_report_event+0x18c>
		00000000000010f8:  R_AARCH64_CALL26	_printk
    10fc: 17ffffca     	b	0x1024 <gpio_keys_gpio_report_event+0xb8>
