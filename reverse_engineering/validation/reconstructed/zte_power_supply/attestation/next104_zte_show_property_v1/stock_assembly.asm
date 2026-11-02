
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cc0 <zte_power_supply_show_property>:
    1cc0: d503233f     	paciasp
    1cc4: d10103ff     	sub	sp, sp, #0x40
    1cc8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1ccc: f90013f5     	str	x21, [sp, #0x20]
    1cd0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1cd4: 910043fd     	add	x29, sp, #0x10
    1cd8: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001cd8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
    1cdc: 91000108     	add	x8, x8, #0x0
		0000000000001cdc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
    1ce0: d5384109     	mrs	x9, SP_EL0
    1ce4: cb080028     	sub	x8, x1, x8
    1ce8: 5291746a     	mov	w10, #0x8ba3            // =35747
    1cec: f9438929     	ldr	x9, [x9, #0x710]
    1cf0: d100a108     	sub	x8, x8, #0x28
    1cf4: 72b745ca     	movk	w10, #0xba2e, lsl #16
    1cf8: aa0103f3     	mov	x19, x1
    1cfc: d343fd08     	lsr	x8, x8, #3
    1d00: f90007e9     	str	x9, [sp, #0x8]
    1d04: aa0203f4     	mov	x20, x2
    1d08: f90003ff     	str	xzr, [sp]
    1d0c: 1b0a7d01     	mul	w1, w8, w10
    1d10: f9404c08     	ldr	x8, [x0, #0x98]
    1d14: 7101003f     	cmp	w1, #0x40
    1d18: 540000a1     	b.ne	0x1d2c <zte_power_supply_show_property+0x6c>
    1d1c: f9400108     	ldr	x8, [x8]
    1d20: b9400902     	ldr	w2, [x8, #0x8]
    1d24: b90003e2     	str	w2, [sp]
    1d28: 14000007     	b	0x1d44 <zte_power_supply_show_property+0x84>
    1d2c: aa0003f5     	mov	x21, x0
    1d30: 910003e2     	mov	x2, sp
    1d34: aa0803e0     	mov	x0, x8
    1d38: 94000000     	bl	0x1d38 <zte_power_supply_show_property+0x78>
		0000000000001d38:  R_AARCH64_CALL26	zte_power_supply_get_property
    1d3c: 37f803c0     	tbnz	w0, #0x1f, 0x1db4 <zte_power_supply_show_property+0xf4>
    1d40: b94003e2     	ldr	w2, [sp]
    1d44: b9402a68     	ldr	w8, [x19, #0x28]
    1d48: 7100051f     	cmp	w8, #0x1
    1d4c: 5400014b     	b.lt	0x1d74 <zte_power_supply_show_property+0xb4>
    1d50: 6b08005f     	cmp	w2, w8
    1d54: 54000102     	b.hs	0x1d74 <zte_power_supply_show_property+0xb4>
    1d58: f9401268     	ldr	x8, [x19, #0x20]
    1d5c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc
    1d60: 91000021     	add	x1, x1, #0x0
		0000000000001d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc
    1d64: aa1403e0     	mov	x0, x20
    1d68: f8625902     	ldr	x2, [x8, w2, uxtw #3]
    1d6c: 94000000     	bl	0x1d6c <zte_power_supply_show_property+0xac>
		0000000000001d6c:  R_AARCH64_CALL26	sprintf
    1d70: 14000005     	b	0x1d84 <zte_power_supply_show_property+0xc4>
    1d74: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
    1d78: 91000021     	add	x1, x1, #0x0
		0000000000001d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
    1d7c: aa1403e0     	mov	x0, x20
    1d80: 94000000     	bl	0x1d80 <zte_power_supply_show_property+0xc0>
		0000000000001d80:  R_AARCH64_CALL26	sprintf
    1d84: 93407c00     	sxtw	x0, w0
    1d88: d5384108     	mrs	x8, SP_EL0
    1d8c: f9438908     	ldr	x8, [x8, #0x710]
    1d90: f94007e9     	ldr	x9, [sp, #0x8]
    1d94: eb09011f     	cmp	x8, x9
    1d98: 54000461     	b.ne	0x1e24 <zte_power_supply_show_property+0x164>
    1d9c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1da0: f94013f5     	ldr	x21, [sp, #0x20]
    1da4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1da8: 910103ff     	add	sp, sp, #0x40
    1dac: d50323bf     	autiasp
    1db0: d65f03c0     	ret
    1db4: 93407c00     	sxtw	x0, w0
    1db8: 52800029     	mov	w9, #0x1                // =1
    1dbc: d280002a     	mov	x10, #0x1               // =1
    1dc0: f2c0800a     	movk	x10, #0x400, lsl #32
    1dc4: 1100f408     	add	w8, w0, #0x3d
    1dc8: f2e0008a     	movk	x10, #0x4, lsl #48
    1dcc: 9ac82129     	lsl	x9, x9, x8
    1dd0: 7100c91f     	cmp	w8, #0x32
    1dd4: 8a0a0128     	and	x8, x9, x10
    1dd8: fa409904     	ccmp	x8, #0x0, #0x4, ls
    1ddc: 54fffd61     	b.ne	0x1d88 <zte_power_supply_show_property+0xc8>
    1de0: aa0003f4     	mov	x20, x0
    1de4: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x6c0
    1de8: 91000000     	add	x0, x0, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x6c0
    1dec: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60
    1df0: 91000021     	add	x1, x1, #0x0
		0000000000001df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60
    1df4: 94000000     	bl	0x1df4 <zte_power_supply_show_property+0x134>
		0000000000001df4:  R_AARCH64_CALL26	___ratelimit
    1df8: 35000060     	cbnz	w0, 0x1e04 <zte_power_supply_show_property+0x144>
    1dfc: aa1403e0     	mov	x0, x20
    1e00: 17ffffe2     	b	0x1d88 <zte_power_supply_show_property+0xc8>
    1e04: f9400262     	ldr	x2, [x19]
    1e08: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x203
    1e0c: 91000021     	add	x1, x1, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x203
    1e10: aa1503e0     	mov	x0, x21
    1e14: aa1403e3     	mov	x3, x20
    1e18: 94000000     	bl	0x1e18 <zte_power_supply_show_property+0x158>
		0000000000001e18:  R_AARCH64_CALL26	_dev_err
    1e1c: aa1403e0     	mov	x0, x20
    1e20: 17ffffda     	b	0x1d88 <zte_power_supply_show_property+0xc8>
    1e24: 94000000     	bl	0x1e24 <zte_power_supply_show_property+0x164>
		0000000000001e24:  R_AARCH64_CALL26	__stack_chk_fail
