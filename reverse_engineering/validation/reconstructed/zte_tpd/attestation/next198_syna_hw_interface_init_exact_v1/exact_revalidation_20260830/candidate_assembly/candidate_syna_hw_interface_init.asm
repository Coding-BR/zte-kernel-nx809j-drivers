
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a9f4 <syna_hw_interface_init>:
    a9f4: d503233f     	paciasp
    a9f8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a9fc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    aa00: 910003fd     	mov	x29, sp
    aa04: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18971
    aa08: 91000000     	add	x0, x0, #0x0
		000000000000aa08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18971
    aa0c: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc26
    aa10: 91000021     	add	x1, x1, #0x0
		000000000000aa10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc26
    aa14: 94000000     	bl	0xaa14 <syna_hw_interface_init+0x20>
		000000000000aa14:  R_AARCH64_CALL26	_printk
    aa18: 90000014     	adrp	x20, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa18:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_device
    aa1c: 91000294     	add	x20, x20, #0x0
		000000000000aa1c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_device
    aa20: aa1403e0     	mov	x0, x20
    aa24: 94000000     	bl	0xaa24 <syna_hw_interface_init+0x30>
		000000000000aa24:  R_AARCH64_CALL26	platform_device_register
    aa28: 36f800a0     	tbz	w0, #0x1f, 0xaa3c <syna_hw_interface_init+0x48>
    aa2c: 2a0003f3     	mov	w19, w0
    aa30: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18111
    aa34: 91000000     	add	x0, x0, #0x0
		000000000000aa34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18111
    aa38: 1400000c     	b	0xaa68 <syna_hw_interface_init+0x74>
    aa3c: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa3c:  R_AARCH64_ADR_PREL_PG_HI21	p_device
    aa40: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa40:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    aa44: 91000000     	add	x0, x0, #0x0
		000000000000aa44:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    aa48: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa48:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_driver
    aa4c: 91000021     	add	x1, x1, #0x0
		000000000000aa4c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_driver
    aa50: f9000114     	str	x20, [x8]
		000000000000aa50:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
    aa54: 94000000     	bl	0xaa54 <syna_hw_interface_init+0x60>
		000000000000aa54:  R_AARCH64_CALL26	__spi_register_driver
    aa58: 2a0003f3     	mov	w19, w0
    aa5c: 36f800e0     	tbz	w0, #0x1f, 0xaa78 <syna_hw_interface_init+0x84>
    aa60: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b6f
    aa64: 91000000     	add	x0, x0, #0x0
		000000000000aa64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b6f
    aa68: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc26
    aa6c: 91000021     	add	x1, x1, #0x0
		000000000000aa6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc26
    aa70: 94000000     	bl	0xaa70 <syna_hw_interface_init+0x7c>
		000000000000aa70:  R_AARCH64_CALL26	_printk
    aa74: 1400000c     	b	0xaaa4 <syna_hw_interface_init+0xb0>
    aa78: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1d9
    aa7c: 91000000     	add	x0, x0, #0x0
		000000000000aa7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1d9
    aa80: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc26
    aa84: 91000021     	add	x1, x1, #0x0
		000000000000aa84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc26
    aa88: 94000000     	bl	0xaa88 <syna_hw_interface_init+0x94>
		000000000000aa88:  R_AARCH64_CALL26	_printk
    aa8c: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa8c:  R_AARCH64_ADR_PREL_PG_HI21	buf_size
    aa90: 90000009     	adrp	x9, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa90:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
    aa94: b900011f     	str	wzr, [x8]
		000000000000aa94:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
    aa98: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000aa98:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
    aa9c: f900013f     	str	xzr, [x9]
		000000000000aa9c:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
    aaa0: f900011f     	str	xzr, [x8]
		000000000000aaa0:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
    aaa4: 2a1303e0     	mov	w0, w19
    aaa8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    aaac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    aab0: d50323bf     	autiasp
    aab4: d65f03c0     	ret
