
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c90 <aw22xxx_interrupt_setup>:
    1c90: d503233f     	paciasp
    1c94: d10143ff     	sub	sp, sp, #0x50
    1c98: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1c9c: f9001bf5     	str	x21, [sp, #0x30]
    1ca0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1ca4: 910083fd     	add	x29, sp, #0x20
    1ca8: d5384108     	mrs	x8, SP_EL0
    1cac: 90000014     	adrp	x20, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001cac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    1cb0: 91000294     	add	x20, x20, #0x0
		0000000000001cb0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    1cb4: f9438908     	ldr	x8, [x8, #0x710]
    1cb8: aa0003f3     	mov	x19, x0
    1cbc: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001cbc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1320
    1cc0: 91000021     	add	x1, x1, #0x0
		0000000000001cc0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1320
    1cc4: aa1403e0     	mov	x0, x20
    1cc8: f81f83a8     	stur	x8, [x29, #-0x8]
    1ccc: 94000000     	bl	0x1ccc <aw22xxx_interrupt_setup+0x3c>
		0000000000001ccc:  R_AARCH64_CALL26	_printk
    1cd0: 90000015     	adrp	x21, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001cd0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x36f
    1cd4: 910002b5     	add	x21, x21, #0x0
		0000000000001cd4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x36f
    1cd8: aa1403e0     	mov	x0, x20
    1cdc: aa1503e1     	mov	x1, x21
    1ce0: 390033ff     	strb	wzr, [sp, #0xc]
    1ce4: 94000000     	bl	0x1ce4 <aw22xxx_interrupt_setup+0x54>
		0000000000001ce4:  R_AARCH64_CALL26	_printk
    1ce8: 910033e2     	add	x2, sp, #0xc
    1cec: aa1303e0     	mov	x0, x19
    1cf0: 52800141     	mov	w1, #0xa                // =10
    1cf4: 97fffd26     	bl	0x118c <aw22xxx_i2c_read>
    1cf8: 394033e2     	ldrb	w2, [sp, #0xc]
    1cfc: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001cfc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x387
    1d00: 91000000     	add	x0, x0, #0x0
		0000000000001d00:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x387
    1d04: aa1503e1     	mov	x1, x21
    1d08: 94000000     	bl	0x1d08 <aw22xxx_interrupt_setup+0x78>
		0000000000001d08:  R_AARCH64_CALL26	_printk
    1d0c: 910043e2     	add	x2, sp, #0x10
    1d10: aa1303e0     	mov	x0, x19
    1d14: 52800121     	mov	w1, #0x9                // =9
    1d18: 390043ff     	strb	wzr, [sp, #0x10]
    1d1c: 97fffd1c     	bl	0x118c <aw22xxx_i2c_read>
    1d20: 394043e8     	ldrb	w8, [sp, #0x10]
    1d24: aa1303e0     	mov	x0, x19
    1d28: 52800121     	mov	w1, #0x9                // =9
    1d2c: 32000102     	orr	w2, w8, #0x1
    1d30: 390043e2     	strb	w2, [sp, #0x10]
    1d34: 97fffcca     	bl	0x105c <aw22xxx_i2c_write>
    1d38: d10033a2     	sub	x2, x29, #0xc
    1d3c: aa1303e0     	mov	x0, x19
    1d40: 52800121     	mov	w1, #0x9                // =9
    1d44: 381f43bf     	sturb	wzr, [x29, #-0xc]
    1d48: 97fffd11     	bl	0x118c <aw22xxx_i2c_read>
    1d4c: 385f43a8     	ldurb	w8, [x29, #-0xc]
    1d50: aa1303e0     	mov	x0, x19
    1d54: 52800121     	mov	w1, #0x9                // =9
    1d58: 321c0102     	orr	w2, w8, #0x10
    1d5c: 381f43a2     	sturb	w2, [x29, #-0xc]
    1d60: 97fffcbf     	bl	0x105c <aw22xxx_i2c_write>
    1d64: d5384108     	mrs	x8, SP_EL0
    1d68: f9438908     	ldr	x8, [x8, #0x710]
    1d6c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1d70: eb09011f     	cmp	x8, x9
    1d74: 540000e1     	b.ne	0x1d90 <aw22xxx_interrupt_setup+0x100>
    1d78: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1d7c: f9401bf5     	ldr	x21, [sp, #0x30]
    1d80: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1d84: 910143ff     	add	sp, sp, #0x50
    1d88: d50323bf     	autiasp
    1d8c: d65f03c0     	ret
    1d90: 94000000     	bl	0x1d90 <aw22xxx_interrupt_setup+0x100>
		0000000000001d90:  R_AARCH64_CALL26	__stack_chk_fail
