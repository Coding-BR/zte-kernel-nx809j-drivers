
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a38 <aw22xxx_interrupt_setup>:
     a38: d503233f     	paciasp
     a3c: d100c3ff     	sub	sp, sp, #0x30
     a40: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a44: f90013f3     	str	x19, [sp, #0x20]
     a48: 910043fd     	add	x29, sp, #0x10
     a4c: d5384108     	mrs	x8, SP_EL0
     a50: aa0003f3     	mov	x19, x0
     a54: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
     a58: 91000000     	add	x0, x0, #0x0
		0000000000000a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
     a5c: f9438908     	ldr	x8, [x8, #0x710]
     a60: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1434
     a64: 91000021     	add	x1, x1, #0x0
		0000000000000a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1434
     a68: f90007e8     	str	x8, [sp, #0x8]
     a6c: 390013ff     	strb	wzr, [sp, #0x4]
     a70: 94000000     	bl	0xa70 <aw22xxx_interrupt_setup+0x38>
		0000000000000a70:  R_AARCH64_CALL26	_printk
     a74: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6c
     a78: 91000000     	add	x0, x0, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6c
     a7c: 94000000     	bl	0xa7c <aw22xxx_interrupt_setup+0x44>
		0000000000000a7c:  R_AARCH64_CALL26	_printk
     a80: 910013e2     	add	x2, sp, #0x4
     a84: aa1303e0     	mov	x0, x19
     a88: 52800141     	mov	w1, #0xa                // =10
     a8c: 94000265     	bl	0x1420 <aw22xxx_i2c_read>
     a90: 394013e1     	ldrb	w1, [sp, #0x4]
     a94: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ca
     a98: 91000000     	add	x0, x0, #0x0
		0000000000000a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ca
     a9c: 94000000     	bl	0xa9c <aw22xxx_interrupt_setup+0x64>
		0000000000000a9c:  R_AARCH64_CALL26	_printk
     aa0: 910013e2     	add	x2, sp, #0x4
     aa4: aa1303e0     	mov	x0, x19
     aa8: 52800121     	mov	w1, #0x9                // =9
     aac: 9400025d     	bl	0x1420 <aw22xxx_i2c_read>
     ab0: 394013e8     	ldrb	w8, [sp, #0x4]
     ab4: aa1303e0     	mov	x0, x19
     ab8: 52800121     	mov	w1, #0x9                // =9
     abc: 32000102     	orr	w2, w8, #0x1
     ac0: 97fffd68     	bl	0x60 <aw22xxx_i2c_write>
     ac4: 910013e2     	add	x2, sp, #0x4
     ac8: aa1303e0     	mov	x0, x19
     acc: 52800121     	mov	w1, #0x9                // =9
     ad0: 94000254     	bl	0x1420 <aw22xxx_i2c_read>
     ad4: 394013e8     	ldrb	w8, [sp, #0x4]
     ad8: aa1303e0     	mov	x0, x19
     adc: 52800121     	mov	w1, #0x9                // =9
     ae0: 321c0102     	orr	w2, w8, #0x10
     ae4: 97fffd5f     	bl	0x60 <aw22xxx_i2c_write>
     ae8: d5384108     	mrs	x8, SP_EL0
     aec: f9438908     	ldr	x8, [x8, #0x710]
     af0: f94007e9     	ldr	x9, [sp, #0x8]
     af4: eb09011f     	cmp	x8, x9
     af8: 540000c1     	b.ne	0xb10 <aw22xxx_interrupt_setup+0xd8>
     afc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b00: f94013f3     	ldr	x19, [sp, #0x20]
     b04: 9100c3ff     	add	sp, sp, #0x30
     b08: d50323bf     	autiasp
     b0c: d65f03c0     	ret
     b10: 94000000     	bl	0xb10 <aw22xxx_interrupt_setup+0xd8>
		0000000000000b10:  R_AARCH64_CALL26	__stack_chk_fail
