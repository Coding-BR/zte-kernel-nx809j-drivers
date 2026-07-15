
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002b8 <zte_power_supply_get_by_phandle_array>:
     2b8: d503233f     	paciasp
     2bc: d10283ff     	sub	sp, sp, #0xa0
     2c0: a9087bfd     	stp	x29, x30, [sp, #0x80]
     2c4: a9094ff4     	stp	x20, x19, [sp, #0x90]
     2c8: 910203fd     	add	x29, sp, #0x80
     2cc: d5384108     	mrs	x8, SP_EL0
     2d0: f9438908     	ldr	x8, [x8, #0x710]
     2d4: f81f83a8     	stur	x8, [x29, #-0x8]
     2d8: 128002a8     	mov	w8, #-0x16              // =-22
     2dc: b40003c2     	cbz	x2, 0x354 <zte_power_supply_get_by_phandle_array+0x9c>
     2e0: aa0303f3     	mov	x19, x3
     2e4: b4000383     	cbz	x3, 0x354 <zte_power_supply_get_by_phandle_array+0x9c>
     2e8: aa0203f4     	mov	x20, x2
     2ec: 9100a3e5     	add	x5, sp, #0x28
     2f0: aa1f03e2     	mov	x2, xzr
     2f4: 2a1f03e3     	mov	w3, wzr
     2f8: 2a1f03e4     	mov	w4, wzr
     2fc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     300: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     304: a906ffff     	stp	xzr, xzr, [sp, #0x68]
     308: a905ffff     	stp	xzr, xzr, [sp, #0x58]
     30c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     310: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     314: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     318: 94000000     	bl	0x318 <zte_power_supply_get_by_phandle_array+0x60>
		0000000000000318:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     31c: 12800248     	mov	w8, #-0x13              // =-19
     320: 350001a0     	cbnz	w0, 0x354 <zte_power_supply_get_by_phandle_array+0x9c>
     324: f94017e9     	ldr	x9, [sp, #0x28]
     328: b4000169     	cbz	x9, 0x354 <zte_power_supply_get_by_phandle_array+0x9c>
     32c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     330: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x388
     334: 91000063     	add	x3, x3, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x388
     338: f9400100     	ldr	x0, [x8]
		0000000000000338:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     33c: 910023e2     	add	x2, sp, #0x8
     340: aa1f03e1     	mov	x1, xzr
     344: a900d3e9     	stp	x9, x20, [sp, #0x8]
     348: a901fff3     	stp	x19, xzr, [sp, #0x18]
     34c: 94000000     	bl	0x34c <zte_power_supply_get_by_phandle_array+0x94>
		000000000000034c:  R_AARCH64_CALL26	class_for_each_device
     350: b94023e8     	ldr	w8, [sp, #0x20]
     354: d5384109     	mrs	x9, SP_EL0
     358: f9438929     	ldr	x9, [x9, #0x710]
     35c: f85f83aa     	ldur	x10, [x29, #-0x8]
     360: eb0a013f     	cmp	x9, x10
     364: 540000e1     	b.ne	0x380 <zte_power_supply_get_by_phandle_array+0xc8>
     368: 2a0803e0     	mov	w0, w8
     36c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     370: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     374: 910283ff     	add	sp, sp, #0xa0
     378: d50323bf     	autiasp
     37c: d65f03c0     	ret
     380: 94000000     	bl	0x380 <zte_power_supply_get_by_phandle_array+0xc8>
		0000000000000380:  R_AARCH64_CALL26	__stack_chk_fail
