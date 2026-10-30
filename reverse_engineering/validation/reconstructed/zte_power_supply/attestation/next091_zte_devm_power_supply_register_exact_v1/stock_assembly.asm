
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013b8 <zte_devm_power_supply_register>:
    13b8: d503233f     	paciasp
    13bc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    13c0: a90157f6     	stp	x22, x21, [sp, #0x10]
    13c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    13c8: 910003fd     	mov	x29, sp
    13cc: aa0203f4     	mov	x20, x2
    13d0: aa0103f6     	mov	x22, x1
    13d4: aa0003f3     	mov	x19, x0
    13d8: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1460
    13dc: 91000000     	add	x0, x0, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1460
    13e0: 90000004     	adrp	x4, 0x1000 <zte_power_supply_powers+0x8>
		00000000000013e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf
    13e4: 91000084     	add	x4, x4, #0x0
		00000000000013e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf
    13e8: 52800101     	mov	w1, #0x8                // =8
    13ec: 52819802     	mov	w2, #0xcc0              // =3264
    13f0: 12800003     	mov	w3, #-0x1               // =-1
    13f4: 94000000     	bl	0x13f4 <zte_devm_power_supply_register+0x3c>
		00000000000013f4:  R_AARCH64_CALL26	__devres_alloc_node
    13f8: b40001a0     	cbz	x0, 0x142c <zte_devm_power_supply_register+0x74>
    13fc: aa0003f5     	mov	x21, x0
    1400: aa1303e0     	mov	x0, x19
    1404: aa1603e1     	mov	x1, x22
    1408: aa1403e2     	mov	x2, x20
    140c: 52800023     	mov	w3, #0x1                // =1
    1410: 97ffff23     	bl	0x109c <__zte_power_supply_register>
    1414: aa0003f4     	mov	x20, x0
    1418: b13ffc1f     	cmn	x0, #0xfff
    141c: 540000c3     	b.lo	0x1434 <zte_devm_power_supply_register+0x7c>
    1420: aa1503e0     	mov	x0, x21
    1424: 94000000     	bl	0x1424 <zte_devm_power_supply_register+0x6c>
		0000000000001424:  R_AARCH64_CALL26	devres_free
    1428: 14000007     	b	0x1444 <zte_devm_power_supply_register+0x8c>
    142c: 92800174     	mov	x20, #-0xc              // =-12
    1430: 14000005     	b	0x1444 <zte_devm_power_supply_register+0x8c>
    1434: aa1303e0     	mov	x0, x19
    1438: aa1503e1     	mov	x1, x21
    143c: f90002b4     	str	x20, [x21]
    1440: 94000000     	bl	0x1440 <zte_devm_power_supply_register+0x88>
		0000000000001440:  R_AARCH64_CALL26	devres_add
    1444: aa1403e0     	mov	x0, x20
    1448: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    144c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1450: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1454: d50323bf     	autiasp
    1458: d65f03c0     	ret
