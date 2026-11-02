
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011afc <syna_spi_hw_reset>:
   11afc: b940f008     	ldr	w8, [x0, #0xf0]
   11b00: 35000048     	cbnz	w8, 0x11b08 <syna_spi_hw_reset+0xc>
   11b04: d65f03c0     	ret
   11b08: d503233f     	paciasp
   11b0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   11b10: a9014ff4     	stp	x20, x19, [sp, #0x10]
   11b14: 910003fd     	mov	x29, sp
   11b18: b940f414     	ldr	w20, [x0, #0xf4]
   11b1c: aa0003f3     	mov	x19, x0
   11b20: 2a0803e0     	mov	w0, w8
   11b24: 94000000     	bl	0x11b24 <syna_spi_hw_reset+0x28>
		0000000000011b24:  R_AARCH64_CALL26	gpio_to_desc
   11b28: 12000281     	and	w1, w20, #0x1
   11b2c: 94000000     	bl	0x11b2c <syna_spi_hw_reset+0x30>
		0000000000011b2c:  R_AARCH64_CALL26	gpiod_set_raw_value
   11b30: b940fe60     	ldr	w0, [x19, #0xfc]
   11b34: aa1303e8     	mov	x8, x19
   11b38: 7100041f     	cmp	w0, #0x1
   11b3c: 5400006b     	b.lt	0x11b48 <syna_spi_hw_reset+0x4c>
   11b40: 94000000     	bl	0x11b40 <syna_spi_hw_reset+0x44>
		0000000000011b40:  R_AARCH64_CALL26	msleep
   11b44: aa1303e8     	mov	x8, x19
   11b48: 295e2500     	ldp	w0, w9, [x8, #0xf0]
   11b4c: 7100013f     	cmp	w9, #0x0
   11b50: 1a9f17f3     	cset	w19, eq
   11b54: 94000000     	bl	0x11b54 <syna_spi_hw_reset+0x58>
		0000000000011b54:  R_AARCH64_CALL26	gpio_to_desc
   11b58: 2a1303e1     	mov	w1, w19
   11b5c: 94000000     	bl	0x11b5c <syna_spi_hw_reset+0x60>
		0000000000011b5c:  R_AARCH64_CALL26	gpiod_set_raw_value
   11b60: 52800a00     	mov	w0, #0x50               // =80
   11b64: 94000000     	bl	0x11b64 <syna_spi_hw_reset+0x68>
		0000000000011b64:  R_AARCH64_CALL26	msleep
   11b68: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b5f
   11b6c: 91000000     	add	x0, x0, #0x0
		0000000000011b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b5f
   11b70: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb5c
   11b74: 91000021     	add	x1, x1, #0x0
		0000000000011b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb5c
   11b78: 94000000     	bl	0x11b78 <syna_spi_hw_reset+0x7c>
		0000000000011b78:  R_AARCH64_CALL26	_printk
   11b7c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   11b80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   11b84: d50323bf     	autiasp
   11b88: d65f03c0     	ret
