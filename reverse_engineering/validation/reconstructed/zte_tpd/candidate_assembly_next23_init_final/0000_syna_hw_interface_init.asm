
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aed4 <syna_hw_interface_init>:
    aed4: d503233f     	paciasp
    aed8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    aedc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    aee0: 910003fd     	mov	x29, sp
    aee4: 90000000     	adrp	x0, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000aee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167c
    aee8: 91000000     	add	x0, x0, #0x0
		000000000000aee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167c
    aeec: 90000001     	adrp	x1, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000aeec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4531
    aef0: 91000021     	add	x1, x1, #0x0
		000000000000aef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4531
    aef4: 94000000     	bl	0xaef4 <syna_hw_interface_init+0x20>
		000000000000aef4:  R_AARCH64_CALL26	_printk
    aef8: 90000014     	adrp	x20, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000aef8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_device
    aefc: 91000294     	add	x20, x20, #0x0
		000000000000aefc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_device
    af00: aa1403e0     	mov	x0, x20
    af04: 94000000     	bl	0xaf04 <syna_hw_interface_init+0x30>
		000000000000af04:  R_AARCH64_CALL26	platform_device_register
    af08: 36f800a0     	tbz	w0, #0x1f, 0xaf1c <syna_hw_interface_init+0x48>
    af0c: 2a0003f3     	mov	w19, w0
    af10: 90000000     	adrp	x0, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd97
    af14: 91000000     	add	x0, x0, #0x0
		000000000000af14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd97
    af18: 1400000c     	b	0xaf48 <syna_hw_interface_init+0x74>
    af1c: 90000008     	adrp	x8, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af1c:  R_AARCH64_ADR_PREL_PG_HI21	p_device
    af20: 90000000     	adrp	x0, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af20:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    af24: 91000000     	add	x0, x0, #0x0
		000000000000af24:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    af28: 90000001     	adrp	x1, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af28:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_driver
    af2c: 91000021     	add	x1, x1, #0x0
		000000000000af2c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_driver
    af30: f9000114     	str	x20, [x8]
		000000000000af30:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
    af34: 94000000     	bl	0xaf34 <syna_hw_interface_init+0x60>
		000000000000af34:  R_AARCH64_CALL26	__spi_register_driver
    af38: 2a0003f3     	mov	w19, w0
    af3c: 36f800e0     	tbz	w0, #0x1f, 0xaf58 <syna_hw_interface_init+0x84>
    af40: 90000000     	adrp	x0, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x815
    af44: 91000000     	add	x0, x0, #0x0
		000000000000af44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x815
    af48: 90000001     	adrp	x1, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4531
    af4c: 91000021     	add	x1, x1, #0x0
		000000000000af4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4531
    af50: 94000000     	bl	0xaf50 <syna_hw_interface_init+0x7c>
		000000000000af50:  R_AARCH64_CALL26	_printk
    af54: 1400000c     	b	0xaf84 <syna_hw_interface_init+0xb0>
    af58: 90000000     	adrp	x0, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2c
    af5c: 91000000     	add	x0, x0, #0x0
		000000000000af5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2c
    af60: 90000001     	adrp	x1, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4531
    af64: 91000021     	add	x1, x1, #0x0
		000000000000af64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4531
    af68: 94000000     	bl	0xaf68 <syna_hw_interface_init+0x94>
		000000000000af68:  R_AARCH64_CALL26	_printk
    af6c: 90000008     	adrp	x8, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af6c:  R_AARCH64_ADR_PREL_PG_HI21	buf_size
    af70: 90000009     	adrp	x9, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af70:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
    af74: b900011f     	str	wzr, [x8]
		000000000000af74:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
    af78: 90000008     	adrp	x8, 0xa000 <syna_dev_set_display_rotation+0x9c>
		000000000000af78:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
    af7c: f900013f     	str	xzr, [x9]
		000000000000af7c:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
    af80: f900011f     	str	xzr, [x8]
		000000000000af80:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
    af84: 2a1303e0     	mov	w0, w19
    af88: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    af8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    af90: d50323bf     	autiasp
    af94: d65f03c0     	ret
