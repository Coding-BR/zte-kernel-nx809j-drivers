
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000de8 <aw22xxx_hw_reset>:
     de8: d503233f     	paciasp
     dec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     df0: f9000bf3     	str	x19, [sp, #0x10]
     df4: 910003fd     	mov	x29, sp
     df8: aa0003f3     	mov	x19, x0
     dfc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
     e00: 91000000     	add	x0, x0, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
     e04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d6
     e08: 91000021     	add	x1, x1, #0x0
		0000000000000e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d6
     e0c: 94000000     	bl	0xe0c <aw22xxx_hw_reset+0x24>
		0000000000000e0c:  R_AARCH64_CALL26	_printk
     e10: b40002d3     	cbz	x19, 0xe68 <aw22xxx_hw_reset+0x80>
     e14: b942e260     	ldr	w0, [x19, #0x2e0]
     e18: 37f80280     	tbnz	w0, #0x1f, 0xe68 <aw22xxx_hw_reset+0x80>
     e1c: 94000000     	bl	0xe1c <aw22xxx_hw_reset+0x34>
		0000000000000e1c:  R_AARCH64_CALL26	gpio_to_desc
     e20: 2a1f03e1     	mov	w1, wzr
     e24: 94000000     	bl	0xe24 <aw22xxx_hw_reset+0x3c>
		0000000000000e24:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
     e28: 52807d00     	mov	w0, #0x3e8              // =1000
     e2c: 5280bb81     	mov	w1, #0x5dc              // =1500
     e30: 52800042     	mov	w2, #0x2                // =2
     e34: 94000000     	bl	0xe34 <aw22xxx_hw_reset+0x4c>
		0000000000000e34:  R_AARCH64_CALL26	usleep_range_state
     e38: b942e260     	ldr	w0, [x19, #0x2e0]
     e3c: 94000000     	bl	0xe3c <aw22xxx_hw_reset+0x54>
		0000000000000e3c:  R_AARCH64_CALL26	gpio_to_desc
     e40: 52800021     	mov	w1, #0x1                // =1
     e44: 94000000     	bl	0xe44 <aw22xxx_hw_reset+0x5c>
		0000000000000e44:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
     e48: 52807d00     	mov	w0, #0x3e8              // =1000
     e4c: 5280bb81     	mov	w1, #0x5dc              // =1500
     e50: 52800042     	mov	w2, #0x2                // =2
     e54: 94000000     	bl	0xe54 <aw22xxx_hw_reset+0x6c>
		0000000000000e54:  R_AARCH64_CALL26	usleep_range_state
     e58: f9400bf3     	ldr	x19, [sp, #0x10]
     e5c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e60: d50323bf     	autiasp
     e64: d65f03c0     	ret
     e68: f9400660     	ldr	x0, [x19, #0x8]
     e6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x833
     e70: 91000021     	add	x1, x1, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x833
     e74: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15d6
     e78: 91000042     	add	x2, x2, #0x0
		0000000000000e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15d6
     e7c: 94000000     	bl	0xe7c <aw22xxx_hw_reset+0x94>
		0000000000000e7c:  R_AARCH64_CALL26	_dev_err
     e80: 17fffff6     	b	0xe58 <aw22xxx_hw_reset+0x70>
