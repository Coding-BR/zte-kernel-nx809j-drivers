
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ca8 <zte_power_supply_get_by_phandle_array>:
     ca8: d503233f     	paciasp
     cac: d10283ff     	sub	sp, sp, #0xa0
     cb0: a9087bfd     	stp	x29, x30, [sp, #0x80]
     cb4: a9094ff4     	stp	x20, x19, [sp, #0x90]
     cb8: 910203fd     	add	x29, sp, #0x80
     cbc: d5384108     	mrs	x8, SP_EL0
     cc0: f9438908     	ldr	x8, [x8, #0x710]
     cc4: f81f83a8     	stur	x8, [x29, #-0x8]
     cc8: 128002a8     	mov	w8, #-0x16              // =-22
     ccc: b40003c2     	cbz	x2, 0xd44 <zte_power_supply_get_by_phandle_array+0x9c>
     cd0: aa0303f3     	mov	x19, x3
     cd4: b4000383     	cbz	x3, 0xd44 <zte_power_supply_get_by_phandle_array+0x9c>
     cd8: aa0203f4     	mov	x20, x2
     cdc: 9100a3e5     	add	x5, sp, #0x28
     ce0: aa1f03e2     	mov	x2, xzr
     ce4: 2a1f03e3     	mov	w3, wzr
     ce8: 2a1f03e4     	mov	w4, wzr
     cec: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     cf0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     cf4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
     cf8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
     cfc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     d00: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     d04: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     d08: 94000000     	bl	0xd08 <zte_power_supply_get_by_phandle_array+0x60>
		0000000000000d08:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     d0c: 12800248     	mov	w8, #-0x13              // =-19
     d10: 350001a0     	cbnz	w0, 0xd44 <zte_power_supply_get_by_phandle_array+0x9c>
     d14: f94017e9     	ldr	x9, [sp, #0x28]
     d18: b4000169     	cbz	x9, 0xd44 <zte_power_supply_get_by_phandle_array+0x9c>
     d1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     d20: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000d20:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd78
     d24: 91000063     	add	x3, x3, #0x0
		0000000000000d24:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd78
     d28: f9400100     	ldr	x0, [x8]
		0000000000000d28:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     d2c: 910023e2     	add	x2, sp, #0x8
     d30: aa1f03e1     	mov	x1, xzr
     d34: a900d3e9     	stp	x9, x20, [sp, #0x8]
     d38: a901fff3     	stp	x19, xzr, [sp, #0x18]
     d3c: 94000000     	bl	0xd3c <zte_power_supply_get_by_phandle_array+0x94>
		0000000000000d3c:  R_AARCH64_CALL26	class_for_each_device
     d40: b94023e8     	ldr	w8, [sp, #0x20]
     d44: d5384109     	mrs	x9, SP_EL0
     d48: f9438929     	ldr	x9, [x9, #0x710]
     d4c: f85f83aa     	ldur	x10, [x29, #-0x8]
     d50: eb0a013f     	cmp	x9, x10
     d54: 540000e1     	b.ne	0xd70 <zte_power_supply_get_by_phandle_array+0xc8>
     d58: 2a0803e0     	mov	w0, w8
     d5c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     d60: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     d64: 910283ff     	add	sp, sp, #0xa0
     d68: d50323bf     	autiasp
     d6c: d65f03c0     	ret
     d70: 94000000     	bl	0xd70 <zte_power_supply_get_by_phandle_array+0xc8>
		0000000000000d70:  R_AARCH64_CALL26	__stack_chk_fail
