
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000958 <zte_devm_power_supply_register>:
     958: d503233f     	paciasp
     95c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     960: a90157f6     	stp	x22, x21, [sp, #0x10]
     964: a9024ff4     	stp	x20, x19, [sp, #0x20]
     968: 910003fd     	mov	x29, sp
     96c: aa0203f4     	mov	x20, x2
     970: aa0103f6     	mov	x22, x1
     974: aa0003f3     	mov	x19, x0
     978: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xa00
     97c: 91000000     	add	x0, x0, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xa00
     980: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e7
     984: 91000084     	add	x4, x4, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e7
     988: 52800101     	mov	w1, #0x8                // =8
     98c: 52819802     	mov	w2, #0xcc0              // =3264
     990: 12800003     	mov	w3, #-0x1               // =-1
     994: 94000000     	bl	0x994 <zte_devm_power_supply_register+0x3c>
		0000000000000994:  R_AARCH64_CALL26	__devres_alloc_node
     998: b40001a0     	cbz	x0, 0x9cc <zte_devm_power_supply_register+0x74>
     99c: aa0003f5     	mov	x21, x0
     9a0: aa1303e0     	mov	x0, x19
     9a4: aa1603e1     	mov	x1, x22
     9a8: aa1403e2     	mov	x2, x20
     9ac: 52800023     	mov	w3, #0x1                // =1
     9b0: 97fffef7     	bl	0x58c <__zte_power_supply_register>
     9b4: aa0003f4     	mov	x20, x0
     9b8: b13ffc1f     	cmn	x0, #0xfff
     9bc: 540000c3     	b.lo	0x9d4 <zte_devm_power_supply_register+0x7c>
     9c0: aa1503e0     	mov	x0, x21
     9c4: 94000000     	bl	0x9c4 <zte_devm_power_supply_register+0x6c>
		00000000000009c4:  R_AARCH64_CALL26	devres_free
     9c8: 14000007     	b	0x9e4 <zte_devm_power_supply_register+0x8c>
     9cc: 92800174     	mov	x20, #-0xc              // =-12
     9d0: 14000005     	b	0x9e4 <zte_devm_power_supply_register+0x8c>
     9d4: aa1303e0     	mov	x0, x19
     9d8: aa1503e1     	mov	x1, x21
     9dc: f90002b4     	str	x20, [x21]
     9e0: 94000000     	bl	0x9e0 <zte_devm_power_supply_register+0x88>
		00000000000009e0:  R_AARCH64_CALL26	devres_add
     9e4: aa1403e0     	mov	x0, x20
     9e8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     9ec: a94157f6     	ldp	x22, x21, [sp, #0x10]
     9f0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     9f4: d50323bf     	autiasp
     9f8: d65f03c0     	ret
