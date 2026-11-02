
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c70 <zte_power_supply_get_by_phandle_array>:
     c70: d503233f     	paciasp
     c74: d10283ff     	sub	sp, sp, #0xa0
     c78: a9087bfd     	stp	x29, x30, [sp, #0x80]
     c7c: a9094ff4     	stp	x20, x19, [sp, #0x90]
     c80: 910203fd     	add	x29, sp, #0x80
     c84: d5384108     	mrs	x8, SP_EL0
     c88: f9438908     	ldr	x8, [x8, #0x710]
     c8c: f81f83a8     	stur	x8, [x29, #-0x8]
     c90: 128002a8     	mov	w8, #-0x16              // =-22
     c94: b40003c2     	cbz	x2, 0xd0c <zte_power_supply_get_by_phandle_array+0x9c>
     c98: aa0303f3     	mov	x19, x3
     c9c: b4000383     	cbz	x3, 0xd0c <zte_power_supply_get_by_phandle_array+0x9c>
     ca0: aa0203f4     	mov	x20, x2
     ca4: 9100a3e5     	add	x5, sp, #0x28
     ca8: aa1f03e2     	mov	x2, xzr
     cac: 2a1f03e3     	mov	w3, wzr
     cb0: 2a1f03e4     	mov	w4, wzr
     cb4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     cb8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     cbc: a906ffff     	stp	xzr, xzr, [sp, #0x68]
     cc0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
     cc4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     cc8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     ccc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     cd0: 94000000     	bl	0xcd0 <zte_power_supply_get_by_phandle_array+0x60>
		0000000000000cd0:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     cd4: 12800248     	mov	w8, #-0x13              // =-19
     cd8: 350001a0     	cbnz	w0, 0xd0c <zte_power_supply_get_by_phandle_array+0x9c>
     cdc: f94017e9     	ldr	x9, [sp, #0x28]
     ce0: b4000169     	cbz	x9, 0xd0c <zte_power_supply_get_by_phandle_array+0x9c>
     ce4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ce4:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     ce8: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd40
     cec: 91000063     	add	x3, x3, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd40
     cf0: f9400100     	ldr	x0, [x8]
		0000000000000cf0:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     cf4: 910023e2     	add	x2, sp, #0x8
     cf8: aa1f03e1     	mov	x1, xzr
     cfc: a900d3e9     	stp	x9, x20, [sp, #0x8]
     d00: a901fff3     	stp	x19, xzr, [sp, #0x18]
     d04: 94000000     	bl	0xd04 <zte_power_supply_get_by_phandle_array+0x94>
		0000000000000d04:  R_AARCH64_CALL26	class_for_each_device
     d08: b94023e8     	ldr	w8, [sp, #0x20]
     d0c: d5384109     	mrs	x9, SP_EL0
     d10: f9438929     	ldr	x9, [x9, #0x710]
     d14: f85f83aa     	ldur	x10, [x29, #-0x8]
     d18: eb0a013f     	cmp	x9, x10
     d1c: 540000e1     	b.ne	0xd38 <zte_power_supply_get_by_phandle_array+0xc8>
     d20: 2a0803e0     	mov	w0, w8
     d24: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     d28: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     d2c: 910283ff     	add	sp, sp, #0xa0
     d30: d50323bf     	autiasp
     d34: d65f03c0     	ret
     d38: 94000000     	bl	0xd38 <zte_power_supply_get_by_phandle_array+0xc8>
		0000000000000d38:  R_AARCH64_CALL26	__stack_chk_fail
