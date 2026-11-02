
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013ad4 <syna_spi_get_gpio>:
   13ad4: d503233f     	paciasp
   13ad8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13adc: a90157f6     	stp	x22, x21, [sp, #0x10]
   13ae0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13ae4: 910003fd     	mov	x29, sp
   13ae8: 2a0003f3     	mov	w19, w0
   13aec: aa0303f6     	mov	x22, x3
   13af0: 2a0203f4     	mov	w20, w2
   13af4: 2a0103f5     	mov	w21, w1
   13af8: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87d4
   13afc: 91000042     	add	x2, x2, #0x0
		0000000000013afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87d4
   13b00: aa0303e0     	mov	x0, x3
   13b04: 52800201     	mov	w1, #0x10               // =16
   13b08: 2a1303e3     	mov	w3, w19
   13b0c: 94000000     	bl	0x13b0c <syna_spi_get_gpio+0x38>
		0000000000013b0c:  R_AARCH64_CALL26	scnprintf
   13b10: 37f802c0     	tbnz	w0, #0x1f, 0x13b68 <syna_spi_get_gpio+0x94>
   13b14: 2a1303e0     	mov	w0, w19
   13b18: aa1603e1     	mov	x1, x22
   13b1c: 94000000     	bl	0x13b1c <syna_spi_get_gpio+0x48>
		0000000000013b1c:  R_AARCH64_CALL26	gpio_request
   13b20: 37f80360     	tbnz	w0, #0x1f, 0x13b8c <syna_spi_get_gpio+0xb8>
   13b24: 2a1303e0     	mov	w0, w19
   13b28: 94000000     	bl	0x13b28 <syna_spi_get_gpio+0x54>
		0000000000013b28:  R_AARCH64_CALL26	gpio_to_desc
   13b2c: 34000155     	cbz	w21, 0x13b54 <syna_spi_get_gpio+0x80>
   13b30: 2a1403e1     	mov	w1, w20
   13b34: 94000000     	bl	0x13b34 <syna_spi_get_gpio+0x60>
		0000000000013b34:  R_AARCH64_CALL26	gpiod_direction_output_raw
   13b38: 37f80120     	tbnz	w0, #0x1f, 0x13b5c <syna_spi_get_gpio+0x88>
   13b3c: 2a1f03e0     	mov	w0, wzr
   13b40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13b44: a94157f6     	ldp	x22, x21, [sp, #0x10]
   13b48: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13b4c: d50323bf     	autiasp
   13b50: d65f03c0     	ret
   13b54: 94000000     	bl	0x13b54 <syna_spi_get_gpio+0x80>
		0000000000013b54:  R_AARCH64_CALL26	gpiod_direction_input
   13b58: 36ffff20     	tbz	w0, #0x1f, 0x13b3c <syna_spi_get_gpio+0x68>
   13b5c: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703d
   13b60: 91000108     	add	x8, x8, #0x0
		0000000000013b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703d
   13b64: 1400000c     	b	0x13b94 <syna_spi_get_gpio+0xc0>
   13b68: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa03c
   13b6c: 91000108     	add	x8, x8, #0x0
		0000000000013b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa03c
   13b70: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a70
   13b74: 91000021     	add	x1, x1, #0x0
		0000000000013b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a70
   13b78: 2a0003f3     	mov	w19, w0
   13b7c: aa0803e0     	mov	x0, x8
   13b80: 94000000     	bl	0x13b80 <syna_spi_get_gpio+0xac>
		0000000000013b80:  R_AARCH64_CALL26	_printk
   13b84: 2a1303e0     	mov	w0, w19
   13b88: 17ffffee     	b	0x13b40 <syna_spi_get_gpio+0x6c>
   13b8c: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4e1
   13b90: 91000108     	add	x8, x8, #0x0
		0000000000013b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4e1
   13b94: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a70
   13b98: 91000021     	add	x1, x1, #0x0
		0000000000013b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a70
   13b9c: 2a0003f4     	mov	w20, w0
   13ba0: aa0803e0     	mov	x0, x8
   13ba4: 2a1303e2     	mov	w2, w19
   13ba8: 94000000     	bl	0x13ba8 <syna_spi_get_gpio+0xd4>
		0000000000013ba8:  R_AARCH64_CALL26	_printk
   13bac: 2a1403e0     	mov	w0, w20
   13bb0: 17ffffe4     	b	0x13b40 <syna_spi_get_gpio+0x6c>
