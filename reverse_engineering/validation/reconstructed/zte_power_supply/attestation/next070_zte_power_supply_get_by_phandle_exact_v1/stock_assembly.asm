
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001c4 <zte_power_supply_get_by_phandle>:
     1c4: d503233f     	paciasp
     1c8: d101c3ff     	sub	sp, sp, #0x70
     1cc: a9067bfd     	stp	x29, x30, [sp, #0x60]
     1d0: 910183fd     	add	x29, sp, #0x60
     1d4: d5384108     	mrs	x8, SP_EL0
     1d8: 910023e5     	add	x5, sp, #0x8
     1dc: aa1f03e2     	mov	x2, xzr
     1e0: f9438908     	ldr	x8, [x8, #0x710]
     1e4: 2a1f03e3     	mov	w3, wzr
     1e8: 2a1f03e4     	mov	w4, wzr
     1ec: f81f83a8     	stur	x8, [x29, #-0x8]
     1f0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     1f4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     1f8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     1fc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     200: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     204: 94000000     	bl	0x204 <zte_power_supply_get_by_phandle+0x40>
		0000000000000204:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     208: 2a0003e8     	mov	w8, w0
     20c: 92800240     	mov	x0, #-0x13              // =-19
     210: 350001e8     	cbnz	w8, 0x24c <zte_power_supply_get_by_phandle+0x88>
     214: f94007e2     	ldr	x2, [sp, #0x8]
     218: b40001a2     	cbz	x2, 0x24c <zte_power_supply_get_by_phandle+0x88>
     21c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000021c:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     220: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x294
     224: 91000063     	add	x3, x3, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x294
     228: f9400100     	ldr	x0, [x8]
		0000000000000228:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     22c: aa1f03e1     	mov	x1, xzr
     230: 94000000     	bl	0x230 <zte_power_supply_get_by_phandle+0x6c>
		0000000000000230:  R_AARCH64_CALL26	class_find_device
     234: b40000c0     	cbz	x0, 0x24c <zte_power_supply_get_by_phandle+0x88>
     238: f9404c00     	ldr	x0, [x0, #0x98]
     23c: 1400000e     	b	0x274 <zte_power_supply_get_by_phandle+0xb0>
     240: 91116008     	add	x8, x0, #0x458
     244: 52800029     	mov	w9, #0x1                // =1
     248: b829011f     	stadd	w9, [x8]
     24c: d5384108     	mrs	x8, SP_EL0
     250: f9438908     	ldr	x8, [x8, #0x710]
     254: f85f83a9     	ldur	x9, [x29, #-0x8]
     258: eb09011f     	cmp	x8, x9
     25c: 540000a1     	b.ne	0x270 <zte_power_supply_get_by_phandle+0xac>
     260: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     264: 9101c3ff     	add	sp, sp, #0x70
     268: d50323bf     	autiasp
     26c: d65f03c0     	ret
     270: 94000000     	bl	0x270 <zte_power_supply_get_by_phandle+0xac>
		0000000000000270:  R_AARCH64_CALL26	__stack_chk_fail
     274: 91116008     	add	x8, x0, #0x458
     278: f9800111     	prfm	pstl1strm, [x8]
     27c: 885f7d09     	ldxr	w9, [x8]
     280: 11000529     	add	w9, w9, #0x1
     284: 880a7d09     	stxr	w10, w9, [x8]
     288: 35ffffaa     	cbnz	w10, 0x27c <zte_power_supply_get_by_phandle+0xb8>
     28c: 17fffff0     	b	0x24c <zte_power_supply_get_by_phandle+0x88>
