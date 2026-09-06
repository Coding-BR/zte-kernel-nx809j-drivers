
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e2c <zte_power_supply_store_property>:
    1e2c: d503233f     	paciasp
    1e30: d10143ff     	sub	sp, sp, #0x50
    1e34: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1e38: a90357f6     	stp	x22, x21, [sp, #0x30]
    1e3c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1e40: 910083fd     	add	x29, sp, #0x20
    1e44: d5384108     	mrs	x8, SP_EL0
    1e48: aa0103f5     	mov	x21, x1
    1e4c: aa0303f3     	mov	x19, x3
    1e50: f9438908     	ldr	x8, [x8, #0x710]
    1e54: aa0203f6     	mov	x22, x2
    1e58: f81f83a8     	stur	x8, [x29, #-0x8]
    1e5c: b9402821     	ldr	w1, [x1, #0x28]
    1e60: f9404c14     	ldr	x20, [x0, #0x98]
    1e64: f9000bff     	str	xzr, [sp, #0x10]
    1e68: 7100043f     	cmp	w1, #0x1
    1e6c: 540000eb     	b.lt	0x1e88 <zte_power_supply_store_property+0x5c>
    1e70: f94012a0     	ldr	x0, [x21, #0x20]
    1e74: aa1603e2     	mov	x2, x22
    1e78: 94000000     	bl	0x1e78 <zte_power_supply_store_property+0x4c>
		0000000000001e78:  R_AARCH64_CALL26	__sysfs_match_string
    1e7c: 37f80060     	tbnz	w0, #0x1f, 0x1e88 <zte_power_supply_store_property+0x5c>
    1e80: 2a0003e8     	mov	w8, w0
    1e84: 14000008     	b	0x1ea4 <zte_power_supply_store_property+0x78>
    1e88: 910023e2     	add	x2, sp, #0x8
    1e8c: aa1603e0     	mov	x0, x22
    1e90: 52800141     	mov	w1, #0xa                // =10
    1e94: f90007ff     	str	xzr, [sp, #0x8]
    1e98: 94000000     	bl	0x1e98 <zte_power_supply_store_property+0x6c>
		0000000000001e98:  R_AARCH64_CALL26	kstrtoll
    1e9c: 37f80240     	tbnz	w0, #0x1f, 0x1ee4 <zte_power_supply_store_property+0xb8>
    1ea0: f94007e8     	ldr	x8, [sp, #0x8]
    1ea4: 90000009     	adrp	x9, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001ea4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
    1ea8: 91000129     	add	x9, x9, #0x0
		0000000000001ea8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
    1eac: 5291746a     	mov	w10, #0x8ba3            // =35747
    1eb0: cb0902a9     	sub	x9, x21, x9
    1eb4: 72b745ca     	movk	w10, #0xba2e, lsl #16
    1eb8: 910043e2     	add	x2, sp, #0x10
    1ebc: d100a129     	sub	x9, x9, #0x28
    1ec0: aa1403e0     	mov	x0, x20
    1ec4: b90013e8     	str	w8, [sp, #0x10]
    1ec8: d343fd29     	lsr	x9, x9, #3
    1ecc: 1b0a7d21     	mul	w1, w9, w10
    1ed0: 94000000     	bl	0x1ed0 <zte_power_supply_store_property+0xa4>
		0000000000001ed0:  R_AARCH64_CALL26	zte_power_supply_set_property
    1ed4: 93407c08     	sxtw	x8, w0
    1ed8: 7100001f     	cmp	w0, #0x0
    1edc: 9a93b100     	csel	x0, x8, x19, lt
    1ee0: 14000002     	b	0x1ee8 <zte_power_supply_store_property+0xbc>
    1ee4: 93407c00     	sxtw	x0, w0
    1ee8: d5384108     	mrs	x8, SP_EL0
    1eec: f9438908     	ldr	x8, [x8, #0x710]
    1ef0: f85f83a9     	ldur	x9, [x29, #-0x8]
    1ef4: eb09011f     	cmp	x8, x9
    1ef8: 540000e1     	b.ne	0x1f14 <zte_power_supply_store_property+0xe8>
    1efc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1f00: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1f04: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1f08: 910143ff     	add	sp, sp, #0x50
    1f0c: d50323bf     	autiasp
    1f10: d65f03c0     	ret
    1f14: 94000000     	bl	0x1f14 <zte_power_supply_store_property+0xe8>
		0000000000001f14:  R_AARCH64_CALL26	__stack_chk_fail
