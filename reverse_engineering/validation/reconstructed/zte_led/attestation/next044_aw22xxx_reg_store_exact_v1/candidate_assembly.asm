
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002c88 <aw22xxx_reg_store>:
    2c88: d503233f     	paciasp
    2c8c: d100c3ff     	sub	sp, sp, #0x30
    2c90: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2c94: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2c98: 910043fd     	add	x29, sp, #0x10
    2c9c: d5384109     	mrs	x9, SP_EL0
    2ca0: aa0203e8     	mov	x8, x2
    2ca4: aa0303f3     	mov	x19, x3
    2ca8: f9438929     	ldr	x9, [x9, #0x710]
    2cac: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002cac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10f0
    2cb0: 91000021     	add	x1, x1, #0x0
		0000000000002cb0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10f0
    2cb4: 910003e2     	mov	x2, sp
    2cb8: f90007e9     	str	x9, [sp, #0x8]
    2cbc: 910003e9     	mov	x9, sp
    2cc0: f9404c14     	ldr	x20, [x0, #0x98]
    2cc4: b27e0123     	orr	x3, x9, #0x4
    2cc8: aa0803e0     	mov	x0, x8
    2ccc: f90003ff     	str	xzr, [sp]
    2cd0: 94000000     	bl	0x2cd0 <aw22xxx_reg_store+0x48>
		0000000000002cd0:  R_AARCH64_CALL26	sscanf
    2cd4: 7100081f     	cmp	w0, #0x2
    2cd8: 54000241     	b.ne	0x2d20 <aw22xxx_reg_store+0x98>
    2cdc: b94003e1     	ldr	w1, [sp]
    2ce0: 7104003f     	cmp	w1, #0x100
    2ce4: 540001e2     	b.hs	0x2d20 <aw22xxx_reg_store+0x98>
    2ce8: b94007e2     	ldr	w2, [sp, #0x4]
    2cec: d1004280     	sub	x0, x20, #0x10
    2cf0: 97fff8db     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002cf0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2cf4: d5384108     	mrs	x8, SP_EL0
    2cf8: f9438908     	ldr	x8, [x8, #0x710]
    2cfc: f94007e9     	ldr	x9, [sp, #0x8]
    2d00: eb09011f     	cmp	x8, x9
    2d04: 540001e1     	b.ne	0x2d40 <aw22xxx_reg_store+0xb8>
    2d08: aa1303e0     	mov	x0, x19
    2d0c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2d10: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2d14: 9100c3ff     	add	sp, sp, #0x30
    2d18: d50323bf     	autiasp
    2d1c: d65f03c0     	ret
    2d20: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002d20:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x508
    2d24: 91000000     	add	x0, x0, #0x0
		0000000000002d24:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x508
    2d28: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002d28:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x3c
    2d2c: 91000021     	add	x1, x1, #0x0
		0000000000002d2c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x3c
    2d30: 5280f162     	mov	w2, #0x78b              // =1931
    2d34: 94000000     	bl	0x2d34 <aw22xxx_reg_store+0xac>
		0000000000002d34:  R_AARCH64_CALL26	_printk
    2d38: 928002b3     	mov	x19, #-0x16             // =-22
    2d3c: 17ffffee     	b	0x2cf4 <aw22xxx_reg_store+0x6c>
    2d40: 94000000     	bl	0x2d40 <aw22xxx_reg_store+0xb8>
		0000000000002d40:  R_AARCH64_CALL26	__stack_chk_fail
