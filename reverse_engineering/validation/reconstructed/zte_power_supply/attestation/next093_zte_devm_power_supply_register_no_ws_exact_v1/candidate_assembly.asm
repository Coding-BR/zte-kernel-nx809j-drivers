
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a24 <zte_devm_power_supply_register_no_ws>:
     a24: d503233f     	paciasp
     a28: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     a2c: a90157f6     	stp	x22, x21, [sp, #0x10]
     a30: a9024ff4     	stp	x20, x19, [sp, #0x20]
     a34: 910003fd     	mov	x29, sp
     a38: aa0203f4     	mov	x20, x2
     a3c: aa0103f6     	mov	x22, x1
     a40: aa0003f3     	mov	x19, x0
     a44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xa00
     a48: 91000000     	add	x0, x0, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xa00
     a4c: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e7
     a50: 91000084     	add	x4, x4, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e7
     a54: 52800101     	mov	w1, #0x8                // =8
     a58: 52819802     	mov	w2, #0xcc0              // =3264
     a5c: 12800003     	mov	w3, #-0x1               // =-1
     a60: 94000000     	bl	0xa60 <zte_devm_power_supply_register_no_ws+0x3c>
		0000000000000a60:  R_AARCH64_CALL26	__devres_alloc_node
     a64: b40001a0     	cbz	x0, 0xa98 <zte_devm_power_supply_register_no_ws+0x74>
     a68: aa0003f5     	mov	x21, x0
     a6c: aa1303e0     	mov	x0, x19
     a70: aa1603e1     	mov	x1, x22
     a74: aa1403e2     	mov	x2, x20
     a78: 2a1f03e3     	mov	w3, wzr
     a7c: 97fffec4     	bl	0x58c <__zte_power_supply_register>
     a80: aa0003f4     	mov	x20, x0
     a84: b13ffc1f     	cmn	x0, #0xfff
     a88: 540000c3     	b.lo	0xaa0 <zte_devm_power_supply_register_no_ws+0x7c>
     a8c: aa1503e0     	mov	x0, x21
     a90: 94000000     	bl	0xa90 <zte_devm_power_supply_register_no_ws+0x6c>
		0000000000000a90:  R_AARCH64_CALL26	devres_free
     a94: 14000007     	b	0xab0 <zte_devm_power_supply_register_no_ws+0x8c>
     a98: 92800174     	mov	x20, #-0xc              // =-12
     a9c: 14000005     	b	0xab0 <zte_devm_power_supply_register_no_ws+0x8c>
     aa0: aa1303e0     	mov	x0, x19
     aa4: aa1503e1     	mov	x1, x21
     aa8: f90002b4     	str	x20, [x21]
     aac: 94000000     	bl	0xaac <zte_devm_power_supply_register_no_ws+0x88>
		0000000000000aac:  R_AARCH64_CALL26	devres_add
     ab0: aa1403e0     	mov	x0, x20
     ab4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     ab8: a94157f6     	ldp	x22, x21, [sp, #0x10]
     abc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     ac0: d50323bf     	autiasp
     ac4: d65f03c0     	ret
