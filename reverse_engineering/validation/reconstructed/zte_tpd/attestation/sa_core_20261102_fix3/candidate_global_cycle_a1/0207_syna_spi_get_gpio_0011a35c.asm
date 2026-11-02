
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aef8 <syna_spi_get_gpio>:
    aef8: d503233f     	paciasp
    aefc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    af00: a90157f6     	stp	x22, x21, [sp, #0x10]
    af04: a9024ff4     	stp	x20, x19, [sp, #0x20]
    af08: 910003fd     	mov	x29, sp
    af0c: 2a0003f3     	mov	w19, w0
    af10: aa0303f6     	mov	x22, x3
    af14: 2a0203f4     	mov	w20, w2
    af18: 2a0103f5     	mov	w21, w1
    af1c: 90000002     	adrp	x2, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000af1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af59
    af20: 91000042     	add	x2, x2, #0x0
		000000000000af20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af59
    af24: aa0303e0     	mov	x0, x3
    af28: 52800201     	mov	w1, #0x10               // =16
    af2c: 2a1303e3     	mov	w3, w19
    af30: 94000000     	bl	0xaf30 <syna_spi_get_gpio+0x38>
		000000000000af30:  R_AARCH64_CALL26	scnprintf
    af34: 37f802c0     	tbnz	w0, #0x1f, 0xaf8c <syna_spi_get_gpio+0x94>
    af38: 2a1303e0     	mov	w0, w19
    af3c: aa1603e1     	mov	x1, x22
    af40: 94000000     	bl	0xaf40 <syna_spi_get_gpio+0x48>
		000000000000af40:  R_AARCH64_CALL26	gpio_request
    af44: 37f80360     	tbnz	w0, #0x1f, 0xafb0 <syna_spi_get_gpio+0xb8>
    af48: 2a1303e0     	mov	w0, w19
    af4c: 94000000     	bl	0xaf4c <syna_spi_get_gpio+0x54>
		000000000000af4c:  R_AARCH64_CALL26	gpio_to_desc
    af50: 34000155     	cbz	w21, 0xaf78 <syna_spi_get_gpio+0x80>
    af54: 2a1403e1     	mov	w1, w20
    af58: 94000000     	bl	0xaf58 <syna_spi_get_gpio+0x60>
		000000000000af58:  R_AARCH64_CALL26	gpiod_direction_output_raw
    af5c: 37f80120     	tbnz	w0, #0x1f, 0xaf80 <syna_spi_get_gpio+0x88>
    af60: 2a1f03e0     	mov	w0, wzr
    af64: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    af68: a94157f6     	ldp	x22, x21, [sp, #0x10]
    af6c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    af70: d50323bf     	autiasp
    af74: d65f03c0     	ret
    af78: 94000000     	bl	0xaf78 <syna_spi_get_gpio+0x80>
		000000000000af78:  R_AARCH64_CALL26	gpiod_direction_input
    af7c: 36ffff20     	tbz	w0, #0x1f, 0xaf60 <syna_spi_get_gpio+0x68>
    af80: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000af80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a38e
    af84: 91000108     	add	x8, x8, #0x0
		000000000000af84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a38e
    af88: 1400000c     	b	0xafb8 <syna_spi_get_gpio+0xc0>
    af8c: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000af8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b95d
    af90: 91000108     	add	x8, x8, #0x0
		000000000000af90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b95d
    af94: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000af94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17de7
    af98: 91000021     	add	x1, x1, #0x0
		000000000000af98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17de7
    af9c: 2a0003f3     	mov	w19, w0
    afa0: aa0803e0     	mov	x0, x8
    afa4: 94000000     	bl	0xafa4 <syna_spi_get_gpio+0xac>
		000000000000afa4:  R_AARCH64_CALL26	_printk
    afa8: 2a1303e0     	mov	w0, w19
    afac: 17ffffee     	b	0xaf64 <syna_spi_get_gpio+0x6c>
    afb0: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000afb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21a
    afb4: 91000108     	add	x8, x8, #0x0
		000000000000afb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21a
    afb8: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000afb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17de7
    afbc: 91000021     	add	x1, x1, #0x0
		000000000000afbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17de7
    afc0: 2a0003f4     	mov	w20, w0
    afc4: aa0803e0     	mov	x0, x8
    afc8: 2a1303e2     	mov	w2, w19
    afcc: 94000000     	bl	0xafcc <syna_spi_get_gpio+0xd4>
		000000000000afcc:  R_AARCH64_CALL26	_printk
    afd0: 2a1403e0     	mov	w0, w20
    afd4: 17ffffe4     	b	0xaf64 <syna_spi_get_gpio+0x6c>
