
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b7c <zte_power_supply_get_by_phandle>:
     b7c: d503233f     	paciasp
     b80: d101c3ff     	sub	sp, sp, #0x70
     b84: a9067bfd     	stp	x29, x30, [sp, #0x60]
     b88: 910183fd     	add	x29, sp, #0x60
     b8c: d5384108     	mrs	x8, SP_EL0
     b90: 910023e5     	add	x5, sp, #0x8
     b94: aa1f03e2     	mov	x2, xzr
     b98: f9438908     	ldr	x8, [x8, #0x710]
     b9c: 2a1f03e3     	mov	w3, wzr
     ba0: 2a1f03e4     	mov	w4, wzr
     ba4: f81f83a8     	stur	x8, [x29, #-0x8]
     ba8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     bac: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     bb0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     bb4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     bb8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     bbc: 94000000     	bl	0xbbc <zte_power_supply_get_by_phandle+0x40>
		0000000000000bbc:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     bc0: 2a0003e8     	mov	w8, w0
     bc4: 92800240     	mov	x0, #-0x13              // =-19
     bc8: 350001e8     	cbnz	w8, 0xc04 <zte_power_supply_get_by_phandle+0x88>
     bcc: f94007e2     	ldr	x2, [sp, #0x8]
     bd0: b40001a2     	cbz	x2, 0xc04 <zte_power_supply_get_by_phandle+0x88>
     bd4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bd4:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     bd8: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000bd8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc4c
     bdc: 91000063     	add	x3, x3, #0x0
		0000000000000bdc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc4c
     be0: f9400100     	ldr	x0, [x8]
		0000000000000be0:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     be4: aa1f03e1     	mov	x1, xzr
     be8: 94000000     	bl	0xbe8 <zte_power_supply_get_by_phandle+0x6c>
		0000000000000be8:  R_AARCH64_CALL26	class_find_device
     bec: b40000c0     	cbz	x0, 0xc04 <zte_power_supply_get_by_phandle+0x88>
     bf0: f9404c00     	ldr	x0, [x0, #0x98]
     bf4: 1400000e     	b	0xc2c <zte_power_supply_get_by_phandle+0xb0>
     bf8: 91116008     	add	x8, x0, #0x458
     bfc: 52800029     	mov	w9, #0x1                // =1
     c00: b829011f     	stadd	w9, [x8]
     c04: d5384108     	mrs	x8, SP_EL0
     c08: f9438908     	ldr	x8, [x8, #0x710]
     c0c: f85f83a9     	ldur	x9, [x29, #-0x8]
     c10: eb09011f     	cmp	x8, x9
     c14: 540000a1     	b.ne	0xc28 <zte_power_supply_get_by_phandle+0xac>
     c18: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     c1c: 9101c3ff     	add	sp, sp, #0x70
     c20: d50323bf     	autiasp
     c24: d65f03c0     	ret
     c28: 94000000     	bl	0xc28 <zte_power_supply_get_by_phandle+0xac>
		0000000000000c28:  R_AARCH64_CALL26	__stack_chk_fail
     c2c: 91116008     	add	x8, x0, #0x458
     c30: f9800111     	prfm	pstl1strm, [x8]
     c34: 885f7d09     	ldxr	w9, [x8]
     c38: 11000529     	add	w9, w9, #0x1
     c3c: 880a7d09     	stxr	w10, w9, [x8]
     c40: 35ffffaa     	cbnz	w10, 0xc34 <zte_power_supply_get_by_phandle+0xb8>
     c44: 17fffff0     	b	0xc04 <zte_power_supply_get_by_phandle+0x88>
