
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000944 <zte_devm_power_supply_register>:
     944: d503233f     	paciasp
     948: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     94c: a90157f6     	stp	x22, x21, [sp, #0x10]
     950: a9024ff4     	stp	x20, x19, [sp, #0x20]
     954: 910003fd     	mov	x29, sp
     958: aa0203f4     	mov	x20, x2
     95c: aa0103f6     	mov	x22, x1
     960: aa0003f3     	mov	x19, x0
     964: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000964:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9ec
     968: 91000000     	add	x0, x0, #0x0
		0000000000000968:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9ec
     96c: 90000004     	adrp	x4, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x535
     970: 91000084     	add	x4, x4, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x535
     974: 52800101     	mov	w1, #0x8                // =8
     978: 52819802     	mov	w2, #0xcc0              // =3264
     97c: 12800003     	mov	w3, #-0x1               // =-1
     980: 94000000     	bl	0x980 <zte_devm_power_supply_register+0x3c>
		0000000000000980:  R_AARCH64_CALL26	__devres_alloc_node
     984: b40001a0     	cbz	x0, 0x9b8 <zte_devm_power_supply_register+0x74>
     988: aa0003f5     	mov	x21, x0
     98c: aa1303e0     	mov	x0, x19
     990: aa1603e1     	mov	x1, x22
     994: aa1403e2     	mov	x2, x20
     998: 52800023     	mov	w3, #0x1                // =1
     99c: 97fffefc     	bl	0x58c <__zte_power_supply_register>
     9a0: aa0003f4     	mov	x20, x0
     9a4: b13ffc1f     	cmn	x0, #0xfff
     9a8: 540000c3     	b.lo	0x9c0 <zte_devm_power_supply_register+0x7c>
     9ac: aa1503e0     	mov	x0, x21
     9b0: 94000000     	bl	0x9b0 <zte_devm_power_supply_register+0x6c>
		00000000000009b0:  R_AARCH64_CALL26	devres_free
     9b4: 14000007     	b	0x9d0 <zte_devm_power_supply_register+0x8c>
     9b8: 92800174     	mov	x20, #-0xc              // =-12
     9bc: 14000005     	b	0x9d0 <zte_devm_power_supply_register+0x8c>
     9c0: aa1303e0     	mov	x0, x19
     9c4: aa1503e1     	mov	x1, x21
     9c8: f90002b4     	str	x20, [x21]
     9cc: 94000000     	bl	0x9cc <zte_devm_power_supply_register+0x88>
		00000000000009cc:  R_AARCH64_CALL26	devres_add
     9d0: aa1403e0     	mov	x0, x20
     9d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     9d8: a94157f6     	ldp	x22, x21, [sp, #0x10]
     9dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     9e0: d50323bf     	autiasp
     9e4: d65f03c0     	ret
