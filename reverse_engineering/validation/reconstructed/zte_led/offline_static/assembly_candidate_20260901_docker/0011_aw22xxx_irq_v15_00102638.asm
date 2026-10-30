
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c14 <aw22xxx_irq_v15>:
     c14: d503233f     	paciasp
     c18: d100c3ff     	sub	sp, sp, #0x30
     c1c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c20: a9024ff4     	stp	x20, x19, [sp, #0x20]
     c24: 910043fd     	add	x29, sp, #0x10
     c28: d5384108     	mrs	x8, SP_EL0
     c2c: aa0103f3     	mov	x19, x1
     c30: 910013e2     	add	x2, sp, #0x4
     c34: f9438908     	ldr	x8, [x8, #0x710]
     c38: aa0103e0     	mov	x0, x1
     c3c: 52800141     	mov	w1, #0xa                // =10
     c40: f90007e8     	str	x8, [sp, #0x8]
     c44: 390013ff     	strb	wzr, [sp, #0x4]
     c48: 390003ff     	strb	wzr, [sp]
     c4c: 940001f5     	bl	0x1420 <aw22xxx_i2c_read>
     c50: 394013e2     	ldrb	w2, [sp, #0x4]
     c54: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     c58: 91000000     	add	x0, x0, #0x0
		0000000000000c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     c5c: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee4
     c60: 91000021     	add	x1, x1, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee4
     c64: 94000000     	bl	0xc64 <aw22xxx_irq_v15+0x50>
		0000000000000c64:  R_AARCH64_CALL26	_printk
     c68: 394013e8     	ldrb	w8, [sp, #0x4]
     c6c: 370001a8     	tbnz	w8, #0x0, 0xca0 <aw22xxx_irq_v15+0x8c>
     c70: 372007c8     	tbnz	w8, #0x4, 0xd68 <aw22xxx_irq_v15+0x154>
     c74: d5384108     	mrs	x8, SP_EL0
     c78: f9438908     	ldr	x8, [x8, #0x710]
     c7c: f94007e9     	ldr	x9, [sp, #0x8]
     c80: eb09011f     	cmp	x8, x9
     c84: 54000ca1     	b.ne	0xe18 <aw22xxx_irq_v15+0x204>
     c88: 52800020     	mov	w0, #0x1                // =1
     c8c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c90: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     c94: 9100c3ff     	add	sp, sp, #0x30
     c98: d50323bf     	autiasp
     c9c: d65f03c0     	ret
     ca0: 90000014     	adrp	x20, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee4
     ca4: 91000294     	add	x20, x20, #0x0
		0000000000000ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee4
     ca8: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1732
     cac: 91000000     	add	x0, x0, #0x0
		0000000000000cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1732
     cb0: aa1403e1     	mov	x1, x20
     cb4: 94000000     	bl	0xcb4 <aw22xxx_irq_v15+0xa0>
		0000000000000cb4:  R_AARCH64_CALL26	_printk
     cb8: aa1303e0     	mov	x0, x19
     cbc: 52801fe1     	mov	w1, #0xff               // =255
     cc0: 2a1f03e2     	mov	w2, wzr
     cc4: 97fffce7     	bl	0x60 <aw22xxx_i2c_write>
     cc8: 910003e2     	mov	x2, sp
     ccc: aa1303e0     	mov	x0, x19
     cd0: 52800081     	mov	w1, #0x4                // =4
     cd4: 940001d3     	bl	0x1420 <aw22xxx_i2c_read>
     cd8: 394003e8     	ldrb	w8, [sp]
     cdc: aa1303e0     	mov	x0, x19
     ce0: 52800081     	mov	w1, #0x4                // =4
     ce4: 121e7902     	and	w2, w8, #0xfffffffd
     ce8: 97fffcde     	bl	0x60 <aw22xxx_i2c_write>
     cec: 910003e2     	mov	x2, sp
     cf0: aa1303e0     	mov	x0, x19
     cf4: 52800081     	mov	w1, #0x4                // =4
     cf8: 940001ca     	bl	0x1420 <aw22xxx_i2c_read>
     cfc: 394003e8     	ldrb	w8, [sp]
     d00: aa1303e0     	mov	x0, x19
     d04: 52800081     	mov	w1, #0x4                // =4
     d08: 121f7902     	and	w2, w8, #0xfffffffe
     d0c: 97fffcd5     	bl	0x60 <aw22xxx_i2c_write>
     d10: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105b
     d14: 91000000     	add	x0, x0, #0x0
		0000000000000d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105b
     d18: 94000000     	bl	0xd18 <aw22xxx_irq_v15+0x104>
		0000000000000d18:  R_AARCH64_CALL26	_printk
     d1c: 910003e2     	mov	x2, sp
     d20: aa1303e0     	mov	x0, x19
     d24: 52800041     	mov	w1, #0x2                // =2
     d28: 940001be     	bl	0x1420 <aw22xxx_i2c_read>
     d2c: 394003e8     	ldrb	w8, [sp]
     d30: aa1303e0     	mov	x0, x19
     d34: 52800041     	mov	w1, #0x2                // =2
     d38: 121f7902     	and	w2, w8, #0xfffffffe
     d3c: 97fffcc9     	bl	0x60 <aw22xxx_i2c_write>
     d40: 5280fa00     	mov	w0, #0x7d0              // =2000
     d44: 52817701     	mov	w1, #0xbb8              // =3000
     d48: 52800042     	mov	w2, #0x2                // =2
     d4c: 94000000     	bl	0xd4c <aw22xxx_irq_v15+0x138>
		0000000000000d4c:  R_AARCH64_CALL26	usleep_range_state
     d50: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c3
     d54: 91000000     	add	x0, x0, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c3
     d58: aa1403e1     	mov	x1, x20
     d5c: 94000000     	bl	0xd5c <aw22xxx_irq_v15+0x148>
		0000000000000d5c:  R_AARCH64_CALL26	_printk
     d60: 394013e8     	ldrb	w8, [sp, #0x4]
     d64: 3627f888     	tbz	w8, #0x4, 0xc74 <aw22xxx_irq_v15+0x60>
     d68: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1868
     d6c: 91000000     	add	x0, x0, #0x0
		0000000000000d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1868
     d70: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee4
     d74: 91000021     	add	x1, x1, #0x0
		0000000000000d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee4
     d78: 94000000     	bl	0xd78 <aw22xxx_irq_v15+0x164>
		0000000000000d78:  R_AARCH64_CALL26	_printk
     d7c: aa1303e0     	mov	x0, x19
     d80: 52801fe1     	mov	w1, #0xff               // =255
     d84: 2a1f03e2     	mov	w2, wzr
     d88: 97fffcb6     	bl	0x60 <aw22xxx_i2c_write>
     d8c: 910003e2     	mov	x2, sp
     d90: aa1303e0     	mov	x0, x19
     d94: 52800081     	mov	w1, #0x4                // =4
     d98: 940001a2     	bl	0x1420 <aw22xxx_i2c_read>
     d9c: 394003e8     	ldrb	w8, [sp]
     da0: aa1303e0     	mov	x0, x19
     da4: 52800081     	mov	w1, #0x4                // =4
     da8: 121e7902     	and	w2, w8, #0xfffffffd
     dac: 97fffcad     	bl	0x60 <aw22xxx_i2c_write>
     db0: 910003e2     	mov	x2, sp
     db4: aa1303e0     	mov	x0, x19
     db8: 52800081     	mov	w1, #0x4                // =4
     dbc: 94000199     	bl	0x1420 <aw22xxx_i2c_read>
     dc0: 394003e8     	ldrb	w8, [sp]
     dc4: aa1303e0     	mov	x0, x19
     dc8: 52800081     	mov	w1, #0x4                // =4
     dcc: 321f0102     	orr	w2, w8, #0x2
     dd0: 97fffca4     	bl	0x60 <aw22xxx_i2c_write>
     dd4: 910003e2     	mov	x2, sp
     dd8: aa1303e0     	mov	x0, x19
     ddc: 52800081     	mov	w1, #0x4                // =4
     de0: 94000190     	bl	0x1420 <aw22xxx_i2c_read>
     de4: 394003e8     	ldrb	w8, [sp]
     de8: aa1303e0     	mov	x0, x19
     dec: 52800081     	mov	w1, #0x4                // =4
     df0: 32000102     	orr	w2, w8, #0x1
     df4: 97fffc9b     	bl	0x60 <aw22xxx_i2c_write>
     df8: b9430268     	ldr	w8, [x19, #0x300]
     dfc: 34fff3c8     	cbz	w8, 0xc74 <aw22xxx_irq_v15+0x60>
     e00: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     e04: 9108c262     	add	x2, x19, #0x230
     e08: 52800400     	mov	w0, #0x20               // =32
     e0c: f9400101     	ldr	x1, [x8]
		0000000000000e0c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     e10: 94000000     	bl	0xe10 <aw22xxx_irq_v15+0x1fc>
		0000000000000e10:  R_AARCH64_CALL26	queue_work_on
     e14: 17ffff98     	b	0xc74 <aw22xxx_irq_v15+0x60>
     e18: 94000000     	bl	0xe18 <aw22xxx_irq_v15+0x204>
		0000000000000e18:  R_AARCH64_CALL26	__stack_chk_fail
