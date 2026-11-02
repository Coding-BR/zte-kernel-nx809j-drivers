
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000884 <nb_fan_gpio_proc>:
     884: f9400408     	ldr	x8, [x0, #0x8]
     888: b5000068     	cbnz	x8, 0x894 <nb_fan_gpio_proc+0x10>
     88c: 12800240     	mov	w0, #-0x13              // =-19
     890: d65f03c0     	ret
     894: d503233f     	paciasp
     898: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     89c: f9000bf5     	str	x21, [sp, #0x10]
     8a0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     8a4: 910003fd     	mov	x29, sp
     8a8: f9400008     	ldr	x8, [x0]
     8ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52d
     8b0: 91000021     	add	x1, x1, #0x0
		00000000000008b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52d
     8b4: aa0003f4     	mov	x20, x0
     8b8: 2a1f03e2     	mov	w2, wzr
     8bc: f9417513     	ldr	x19, [x8, #0x2e8]
     8c0: aa1303e0     	mov	x0, x19
     8c4: 94000000     	bl	0x8c4 <nb_fan_gpio_proc+0x40>
		00000000000008c4:  R_AARCH64_CALL26	of_get_named_gpio
     8c8: f9400688     	ldr	x8, [x20, #0x8]
     8cc: aa1403f5     	mov	x21, x20
     8d0: b9001500     	str	w0, [x8, #0x14]
     8d4: f9400688     	ldr	x8, [x20, #0x8]
     8d8: b9401500     	ldr	w0, [x8, #0x14]
     8dc: 36f80180     	tbz	w0, #0x1f, 0x90c <nb_fan_gpio_proc+0x88>
     8e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x109
     8e4: 91000000     	add	x0, x0, #0x0
		00000000000008e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x109
     8e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     8ec: 91000021     	add	x1, x1, #0x0
		00000000000008ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     8f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     8f4: 91000042     	add	x2, x2, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     8f8: 52806863     	mov	w3, #0x343              // =835
     8fc: 94000000     	bl	0x8fc <nb_fan_gpio_proc+0x78>
		00000000000008fc:  R_AARCH64_CALL26	_printk
     900: f94006a8     	ldr	x8, [x21, #0x8]
     904: b9401500     	ldr	w0, [x8, #0x14]
     908: 14000029     	b	0x9ac <nb_fan_gpio_proc+0x128>
     90c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000090c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ee
     910: 91000021     	add	x1, x1, #0x0
		0000000000000910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ee
     914: 94000000     	bl	0x914 <nb_fan_gpio_proc+0x90>
		0000000000000914:  R_AARCH64_CALL26	gpio_request
     918: f94006a8     	ldr	x8, [x21, #0x8]
     91c: b9401504     	ldr	w4, [x8, #0x14]
     920: 35000300     	cbnz	w0, 0x980 <nb_fan_gpio_proc+0xfc>
     924: 2a0403e0     	mov	w0, w4
     928: 94000000     	bl	0x928 <nb_fan_gpio_proc+0xa4>
		0000000000000928:  R_AARCH64_CALL26	gpio_to_desc
     92c: 94000000     	bl	0x92c <nb_fan_gpio_proc+0xa8>
		000000000000092c:  R_AARCH64_CALL26	gpiod_to_irq
     930: f94006a8     	ldr	x8, [x21, #0x8]
     934: 52800043     	mov	w3, #0x2                // =2
     938: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x4
     93c: 91000021     	add	x1, x1, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x4
     940: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e1
     944: 91000084     	add	x4, x4, #0x0
		0000000000000944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e1
     948: b9001d00     	str	w0, [x8, #0x1c]
     94c: aa1f03e2     	mov	x2, xzr
     950: 72a00403     	movk	w3, #0x20, lsl #16
     954: f94006a8     	ldr	x8, [x21, #0x8]
     958: aa1503e5     	mov	x5, x21
     95c: b9401d00     	ldr	w0, [x8, #0x1c]
     960: 94000000     	bl	0x960 <nb_fan_gpio_proc+0xdc>
		0000000000000960:  R_AARCH64_CALL26	request_threaded_irq
     964: 36f802e0     	tbz	w0, #0x1f, 0x9c0 <nb_fan_gpio_proc+0x13c>
     968: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fd
     96c: 91000108     	add	x8, x8, #0x0
		000000000000096c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fd
     970: 2a0003f3     	mov	w19, w0
     974: aa0803e0     	mov	x0, x8
     978: 94000000     	bl	0x978 <nb_fan_gpio_proc+0xf4>
		0000000000000978:  R_AARCH64_CALL26	_printk
     97c: 1400000b     	b	0x9a8 <nb_fan_gpio_proc+0x124>
     980: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d0
     984: 91000108     	add	x8, x8, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d0
     988: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     98c: 91000021     	add	x1, x1, #0x0
		000000000000098c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     990: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     994: 91000042     	add	x2, x2, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     998: 2a0003f3     	mov	w19, w0
     99c: aa0803e0     	mov	x0, x8
     9a0: 52806903     	mov	w3, #0x348              // =840
     9a4: 94000000     	bl	0x9a4 <nb_fan_gpio_proc+0x120>
		00000000000009a4:  R_AARCH64_CALL26	_printk
     9a8: 2a1303e0     	mov	w0, w19
     9ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     9b0: f9400bf5     	ldr	x21, [sp, #0x10]
     9b4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     9b8: d50323bf     	autiasp
     9bc: d65f03c0     	ret
     9c0: f94006a8     	ldr	x8, [x21, #0x8]
     9c4: b9401d00     	ldr	w0, [x8, #0x1c]
     9c8: 94000000     	bl	0x9c8 <nb_fan_gpio_proc+0x144>
		00000000000009c8:  R_AARCH64_CALL26	disable_irq
     9cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93c
     9d0: 91000021     	add	x1, x1, #0x0
		00000000000009d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93c
     9d4: aa1303e0     	mov	x0, x19
     9d8: 2a1f03e2     	mov	w2, wzr
     9dc: 94000000     	bl	0x9dc <nb_fan_gpio_proc+0x158>
		00000000000009dc:  R_AARCH64_CALL26	of_get_named_gpio
     9e0: f94006a9     	ldr	x9, [x21, #0x8]
     9e4: b9001120     	str	w0, [x9, #0x10]
     9e8: f94006a9     	ldr	x9, [x21, #0x8]
     9ec: b9401120     	ldr	w0, [x9, #0x10]
     9f0: 36f80180     	tbz	w0, #0x1f, 0xa20 <nb_fan_gpio_proc+0x19c>
     9f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f6
     9f8: 91000000     	add	x0, x0, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f6
     9fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     a00: 91000021     	add	x1, x1, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     a04: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     a08: 91000042     	add	x2, x2, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     a0c: 52806aa3     	mov	w3, #0x355              // =853
     a10: 94000000     	bl	0xa10 <nb_fan_gpio_proc+0x18c>
		0000000000000a10:  R_AARCH64_CALL26	_printk
     a14: f94006a8     	ldr	x8, [x21, #0x8]
     a18: b9401100     	ldr	w0, [x8, #0x10]
     a1c: 17ffffe4     	b	0x9ac <nb_fan_gpio_proc+0x128>
     a20: 94000000     	bl	0xa20 <nb_fan_gpio_proc+0x19c>
		0000000000000a20:  R_AARCH64_CALL26	gpio_to_desc
     a24: 94000000     	bl	0xa24 <nb_fan_gpio_proc+0x1a0>
		0000000000000a24:  R_AARCH64_CALL26	gpiod_get_raw_value
     a28: 2a0003e4     	mov	w4, w0
     a2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4d
     a30: 91000000     	add	x0, x0, #0x0
		0000000000000a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4d
     a34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     a38: 91000021     	add	x1, x1, #0x0
		0000000000000a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     a3c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
     a40: 91000042     	add	x2, x2, #0x0
		0000000000000a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
     a44: 52806b03     	mov	w3, #0x358              // =856
     a48: 94000000     	bl	0xa48 <nb_fan_gpio_proc+0x1c4>
		0000000000000a48:  R_AARCH64_CALL26	_printk
     a4c: 2a1f03e0     	mov	w0, wzr
     a50: 17ffffd7     	b	0x9ac <nb_fan_gpio_proc+0x128>
