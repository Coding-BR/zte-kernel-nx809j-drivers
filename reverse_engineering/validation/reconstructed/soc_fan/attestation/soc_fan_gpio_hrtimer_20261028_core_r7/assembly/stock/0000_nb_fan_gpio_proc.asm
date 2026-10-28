
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008c4 <nb_fan_gpio_proc>:
     8c4: f9400408     	ldr	x8, [x0, #0x8]
     8c8: b5000068     	cbnz	x8, 0x8d4 <nb_fan_gpio_proc+0x10>
     8cc: 12800240     	mov	w0, #-0x13              // =-19
     8d0: d65f03c0     	ret
     8d4: d503233f     	paciasp
     8d8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     8dc: f9000bf5     	str	x21, [sp, #0x10]
     8e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     8e4: 910003fd     	mov	x29, sp
     8e8: f9400008     	ldr	x8, [x0]
     8ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53d
     8f0: 91000021     	add	x1, x1, #0x0
		00000000000008f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53d
     8f4: aa0003f4     	mov	x20, x0
     8f8: 2a1f03e2     	mov	w2, wzr
     8fc: f9417513     	ldr	x19, [x8, #0x2e8]
     900: aa1303e0     	mov	x0, x19
     904: 94000000     	bl	0x904 <nb_fan_gpio_proc+0x40>
		0000000000000904:  R_AARCH64_CALL26	of_get_named_gpio
     908: f9400688     	ldr	x8, [x20, #0x8]
     90c: aa1403f5     	mov	x21, x20
     910: b9001500     	str	w0, [x8, #0x14]
     914: f9400688     	ldr	x8, [x20, #0x8]
     918: b9401500     	ldr	w0, [x8, #0x14]
     91c: 36f80180     	tbz	w0, #0x1f, 0x94c <nb_fan_gpio_proc+0x88>
     920: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x109
     924: 91000000     	add	x0, x0, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x109
     928: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     92c: 91000021     	add	x1, x1, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     930: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     934: 91000042     	add	x2, x2, #0x0
		0000000000000934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     938: 52806863     	mov	w3, #0x343              // =835
     93c: 94000000     	bl	0x93c <nb_fan_gpio_proc+0x78>
		000000000000093c:  R_AARCH64_CALL26	_printk
     940: f94006a8     	ldr	x8, [x21, #0x8]
     944: b9401500     	ldr	w0, [x8, #0x14]
     948: 14000029     	b	0x9ec <nb_fan_gpio_proc+0x128>
     94c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe
     950: 91000021     	add	x1, x1, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe
     954: 94000000     	bl	0x954 <nb_fan_gpio_proc+0x90>
		0000000000000954:  R_AARCH64_CALL26	gpio_request
     958: f94006a8     	ldr	x8, [x21, #0x8]
     95c: b9401504     	ldr	w4, [x8, #0x14]
     960: 35000300     	cbnz	w0, 0x9c0 <nb_fan_gpio_proc+0xfc>
     964: 2a0403e0     	mov	w0, w4
     968: 94000000     	bl	0x968 <nb_fan_gpio_proc+0xa4>
		0000000000000968:  R_AARCH64_CALL26	gpio_to_desc
     96c: 94000000     	bl	0x96c <nb_fan_gpio_proc+0xa8>
		000000000000096c:  R_AARCH64_CALL26	gpiod_to_irq
     970: f94006a8     	ldr	x8, [x21, #0x8]
     974: 52800043     	mov	w3, #0x2                // =2
     978: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	fan_speed_irq_proc
     97c: 91000021     	add	x1, x1, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	fan_speed_irq_proc
     980: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     984: 91000084     	add	x4, x4, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     988: b9001d00     	str	w0, [x8, #0x1c]
     98c: aa1f03e2     	mov	x2, xzr
     990: 72a00403     	movk	w3, #0x20, lsl #16
     994: f94006a8     	ldr	x8, [x21, #0x8]
     998: aa1503e5     	mov	x5, x21
     99c: b9401d00     	ldr	w0, [x8, #0x1c]
     9a0: 94000000     	bl	0x9a0 <nb_fan_gpio_proc+0xdc>
		00000000000009a0:  R_AARCH64_CALL26	request_threaded_irq
     9a4: 36f802e0     	tbz	w0, #0x1f, 0xa00 <nb_fan_gpio_proc+0x13c>
     9a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d
     9ac: 91000108     	add	x8, x8, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d
     9b0: 2a0003f3     	mov	w19, w0
     9b4: aa0803e0     	mov	x0, x8
     9b8: 94000000     	bl	0x9b8 <nb_fan_gpio_proc+0xf4>
		00000000000009b8:  R_AARCH64_CALL26	_printk
     9bc: 1400000b     	b	0x9e8 <nb_fan_gpio_proc+0x124>
     9c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c9
     9c4: 91000108     	add	x8, x8, #0x0
		00000000000009c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c9
     9c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     9cc: 91000021     	add	x1, x1, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     9d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     9d4: 91000042     	add	x2, x2, #0x0
		00000000000009d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     9d8: 2a0003f3     	mov	w19, w0
     9dc: aa0803e0     	mov	x0, x8
     9e0: 52806903     	mov	w3, #0x348              // =840
     9e4: 94000000     	bl	0x9e4 <nb_fan_gpio_proc+0x120>
		00000000000009e4:  R_AARCH64_CALL26	_printk
     9e8: 2a1303e0     	mov	w0, w19
     9ec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     9f0: f9400bf5     	ldr	x21, [sp, #0x10]
     9f4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     9f8: d50323bf     	autiasp
     9fc: d65f03c0     	ret
     a00: f94006a8     	ldr	x8, [x21, #0x8]
     a04: b9401d00     	ldr	w0, [x8, #0x1c]
     a08: 94000000     	bl	0xa08 <nb_fan_gpio_proc+0x144>
		0000000000000a08:  R_AARCH64_CALL26	disable_irq
     a0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x964
     a10: 91000021     	add	x1, x1, #0x0
		0000000000000a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x964
     a14: aa1303e0     	mov	x0, x19
     a18: 2a1f03e2     	mov	w2, wzr
     a1c: 94000000     	bl	0xa1c <nb_fan_gpio_proc+0x158>
		0000000000000a1c:  R_AARCH64_CALL26	of_get_named_gpio
     a20: f94006a9     	ldr	x9, [x21, #0x8]
     a24: b9001120     	str	w0, [x9, #0x10]
     a28: f94006a9     	ldr	x9, [x21, #0x8]
     a2c: b9401120     	ldr	w0, [x9, #0x10]
     a30: 36f80180     	tbz	w0, #0x1f, 0xa60 <nb_fan_gpio_proc+0x19c>
     a34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81e
     a38: 91000000     	add	x0, x0, #0x0
		0000000000000a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81e
     a3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     a40: 91000021     	add	x1, x1, #0x0
		0000000000000a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     a44: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     a48: 91000042     	add	x2, x2, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     a4c: 52806aa3     	mov	w3, #0x355              // =853
     a50: 94000000     	bl	0xa50 <nb_fan_gpio_proc+0x18c>
		0000000000000a50:  R_AARCH64_CALL26	_printk
     a54: f94006a8     	ldr	x8, [x21, #0x8]
     a58: b9401100     	ldr	w0, [x8, #0x10]
     a5c: 17ffffe4     	b	0x9ec <nb_fan_gpio_proc+0x128>
     a60: 94000000     	bl	0xa60 <nb_fan_gpio_proc+0x19c>
		0000000000000a60:  R_AARCH64_CALL26	gpio_to_desc
     a64: 94000000     	bl	0xa64 <nb_fan_gpio_proc+0x1a0>
		0000000000000a64:  R_AARCH64_CALL26	gpiod_get_raw_value
     a68: 2a0003e4     	mov	w4, w0
     a6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4b
     a70: 91000000     	add	x0, x0, #0x0
		0000000000000a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4b
     a74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     a78: 91000021     	add	x1, x1, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     a7c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     a80: 91000042     	add	x2, x2, #0x0
		0000000000000a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     a84: 52806b03     	mov	w3, #0x358              // =856
     a88: 94000000     	bl	0xa88 <nb_fan_gpio_proc+0x1c4>
		0000000000000a88:  R_AARCH64_CALL26	_printk
     a8c: 2a1f03e0     	mov	w0, wzr
     a90: 17ffffd7     	b	0x9ec <nb_fan_gpio_proc+0x128>
