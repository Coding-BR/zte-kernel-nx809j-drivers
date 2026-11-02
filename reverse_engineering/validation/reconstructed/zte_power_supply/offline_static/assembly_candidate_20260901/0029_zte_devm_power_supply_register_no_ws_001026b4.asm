
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a10 <zte_devm_power_supply_register_no_ws>:
     a10: d503233f     	paciasp
     a14: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     a18: a90157f6     	stp	x22, x21, [sp, #0x10]
     a1c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     a20: 910003fd     	mov	x29, sp
     a24: aa0203f4     	mov	x20, x2
     a28: aa0103f6     	mov	x22, x1
     a2c: aa0003f3     	mov	x19, x0
     a30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a30:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9ec
     a34: 91000000     	add	x0, x0, #0x0
		0000000000000a34:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9ec
     a38: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x535
     a3c: 91000084     	add	x4, x4, #0x0
		0000000000000a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x535
     a40: 52800101     	mov	w1, #0x8                // =8
     a44: 52819802     	mov	w2, #0xcc0              // =3264
     a48: 12800003     	mov	w3, #-0x1               // =-1
     a4c: 94000000     	bl	0xa4c <zte_devm_power_supply_register_no_ws+0x3c>
		0000000000000a4c:  R_AARCH64_CALL26	__devres_alloc_node
     a50: b40001a0     	cbz	x0, 0xa84 <zte_devm_power_supply_register_no_ws+0x74>
     a54: aa0003f5     	mov	x21, x0
     a58: aa1303e0     	mov	x0, x19
     a5c: aa1603e1     	mov	x1, x22
     a60: aa1403e2     	mov	x2, x20
     a64: 2a1f03e3     	mov	w3, wzr
     a68: 97fffec9     	bl	0x58c <__zte_power_supply_register>
     a6c: aa0003f4     	mov	x20, x0
     a70: b13ffc1f     	cmn	x0, #0xfff
     a74: 540000c3     	b.lo	0xa8c <zte_devm_power_supply_register_no_ws+0x7c>
     a78: aa1503e0     	mov	x0, x21
     a7c: 94000000     	bl	0xa7c <zte_devm_power_supply_register_no_ws+0x6c>
		0000000000000a7c:  R_AARCH64_CALL26	devres_free
     a80: 14000007     	b	0xa9c <zte_devm_power_supply_register_no_ws+0x8c>
     a84: 92800174     	mov	x20, #-0xc              // =-12
     a88: 14000005     	b	0xa9c <zte_devm_power_supply_register_no_ws+0x8c>
     a8c: aa1303e0     	mov	x0, x19
     a90: aa1503e1     	mov	x1, x21
     a94: f90002b4     	str	x20, [x21]
     a98: 94000000     	bl	0xa98 <zte_devm_power_supply_register_no_ws+0x88>
		0000000000000a98:  R_AARCH64_CALL26	devres_add
     a9c: aa1403e0     	mov	x0, x20
     aa0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     aa4: a94157f6     	ldp	x22, x21, [sp, #0x10]
     aa8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     aac: d50323bf     	autiasp
     ab0: d65f03c0     	ret
