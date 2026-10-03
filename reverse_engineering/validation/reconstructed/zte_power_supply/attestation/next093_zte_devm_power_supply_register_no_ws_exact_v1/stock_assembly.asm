
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001484 <zte_devm_power_supply_register_no_ws>:
    1484: d503233f     	paciasp
    1488: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    148c: a90157f6     	stp	x22, x21, [sp, #0x10]
    1490: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1494: 910003fd     	mov	x29, sp
    1498: aa0203f4     	mov	x20, x2
    149c: aa0103f6     	mov	x22, x1
    14a0: aa0003f3     	mov	x19, x0
    14a4: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		00000000000014a4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1460
    14a8: 91000000     	add	x0, x0, #0x0
		00000000000014a8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1460
    14ac: 90000004     	adrp	x4, 0x1000 <zte_power_supply_powers+0x8>
		00000000000014ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf
    14b0: 91000084     	add	x4, x4, #0x0
		00000000000014b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf
    14b4: 52800101     	mov	w1, #0x8                // =8
    14b8: 52819802     	mov	w2, #0xcc0              // =3264
    14bc: 12800003     	mov	w3, #-0x1               // =-1
    14c0: 94000000     	bl	0x14c0 <zte_devm_power_supply_register_no_ws+0x3c>
		00000000000014c0:  R_AARCH64_CALL26	__devres_alloc_node
    14c4: b40001a0     	cbz	x0, 0x14f8 <zte_devm_power_supply_register_no_ws+0x74>
    14c8: aa0003f5     	mov	x21, x0
    14cc: aa1303e0     	mov	x0, x19
    14d0: aa1603e1     	mov	x1, x22
    14d4: aa1403e2     	mov	x2, x20
    14d8: 2a1f03e3     	mov	w3, wzr
    14dc: 97fffef0     	bl	0x109c <__zte_power_supply_register>
    14e0: aa0003f4     	mov	x20, x0
    14e4: b13ffc1f     	cmn	x0, #0xfff
    14e8: 540000c3     	b.lo	0x1500 <zte_devm_power_supply_register_no_ws+0x7c>
    14ec: aa1503e0     	mov	x0, x21
    14f0: 94000000     	bl	0x14f0 <zte_devm_power_supply_register_no_ws+0x6c>
		00000000000014f0:  R_AARCH64_CALL26	devres_free
    14f4: 14000007     	b	0x1510 <zte_devm_power_supply_register_no_ws+0x8c>
    14f8: 92800174     	mov	x20, #-0xc              // =-12
    14fc: 14000005     	b	0x1510 <zte_devm_power_supply_register_no_ws+0x8c>
    1500: aa1303e0     	mov	x0, x19
    1504: aa1503e1     	mov	x1, x21
    1508: f90002b4     	str	x20, [x21]
    150c: 94000000     	bl	0x150c <zte_devm_power_supply_register_no_ws+0x88>
		000000000000150c:  R_AARCH64_CALL26	devres_add
    1510: aa1403e0     	mov	x0, x20
    1514: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1518: a94157f6     	ldp	x22, x21, [sp, #0x10]
    151c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1520: d50323bf     	autiasp
    1524: d65f03c0     	ret
