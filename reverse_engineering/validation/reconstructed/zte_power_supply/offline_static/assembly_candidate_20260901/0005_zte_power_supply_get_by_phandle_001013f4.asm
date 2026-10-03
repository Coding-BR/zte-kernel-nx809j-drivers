
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bb4 <zte_power_supply_get_by_phandle>:
     bb4: d503233f     	paciasp
     bb8: d101c3ff     	sub	sp, sp, #0x70
     bbc: a9067bfd     	stp	x29, x30, [sp, #0x60]
     bc0: 910183fd     	add	x29, sp, #0x60
     bc4: d5384108     	mrs	x8, SP_EL0
     bc8: 910023e5     	add	x5, sp, #0x8
     bcc: aa1f03e2     	mov	x2, xzr
     bd0: f9438908     	ldr	x8, [x8, #0x710]
     bd4: 2a1f03e3     	mov	w3, wzr
     bd8: 2a1f03e4     	mov	w4, wzr
     bdc: f81f83a8     	stur	x8, [x29, #-0x8]
     be0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     be4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     be8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     bec: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     bf0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     bf4: 94000000     	bl	0xbf4 <zte_power_supply_get_by_phandle+0x40>
		0000000000000bf4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     bf8: 2a0003e8     	mov	w8, w0
     bfc: 92800240     	mov	x0, #-0x13              // =-19
     c00: 350001e8     	cbnz	w8, 0xc3c <zte_power_supply_get_by_phandle+0x88>
     c04: f94007e2     	ldr	x2, [sp, #0x8]
     c08: b40001a2     	cbz	x2, 0xc3c <zte_power_supply_get_by_phandle+0x88>
     c0c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     c10: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c10:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc84
     c14: 91000063     	add	x3, x3, #0x0
		0000000000000c14:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc84
     c18: f9400100     	ldr	x0, [x8]
		0000000000000c18:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     c1c: aa1f03e1     	mov	x1, xzr
     c20: 94000000     	bl	0xc20 <zte_power_supply_get_by_phandle+0x6c>
		0000000000000c20:  R_AARCH64_CALL26	class_find_device
     c24: b40000c0     	cbz	x0, 0xc3c <zte_power_supply_get_by_phandle+0x88>
     c28: f9404c00     	ldr	x0, [x0, #0x98]
     c2c: 1400000e     	b	0xc64 <zte_power_supply_get_by_phandle+0xb0>
     c30: 91116008     	add	x8, x0, #0x458
     c34: 52800029     	mov	w9, #0x1                // =1
     c38: b829011f     	stadd	w9, [x8]
     c3c: d5384108     	mrs	x8, SP_EL0
     c40: f9438908     	ldr	x8, [x8, #0x710]
     c44: f85f83a9     	ldur	x9, [x29, #-0x8]
     c48: eb09011f     	cmp	x8, x9
     c4c: 540000a1     	b.ne	0xc60 <zte_power_supply_get_by_phandle+0xac>
     c50: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     c54: 9101c3ff     	add	sp, sp, #0x70
     c58: d50323bf     	autiasp
     c5c: d65f03c0     	ret
     c60: 94000000     	bl	0xc60 <zte_power_supply_get_by_phandle+0xac>
		0000000000000c60:  R_AARCH64_CALL26	__stack_chk_fail
     c64: 91116008     	add	x8, x0, #0x458
     c68: f9800111     	prfm	pstl1strm, [x8]
     c6c: 885f7d09     	ldxr	w9, [x8]
     c70: 11000529     	add	w9, w9, #0x1
     c74: 880a7d09     	stxr	w10, w9, [x8]
     c78: 35ffffaa     	cbnz	w10, 0xc6c <zte_power_supply_get_by_phandle+0xb8>
     c7c: 17fffff0     	b	0xc3c <zte_power_supply_get_by_phandle+0x88>
