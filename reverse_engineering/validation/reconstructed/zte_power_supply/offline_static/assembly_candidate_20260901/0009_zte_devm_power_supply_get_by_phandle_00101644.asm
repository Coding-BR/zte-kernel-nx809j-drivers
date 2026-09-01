
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001960 <zte_devm_power_supply_get_by_phandle>:
    1960: d503233f     	paciasp
    1964: d10243ff     	sub	sp, sp, #0x90
    1968: a9067bfd     	stp	x29, x30, [sp, #0x60]
    196c: a90757f6     	stp	x22, x21, [sp, #0x70]
    1970: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1974: 910183fd     	add	x29, sp, #0x60
    1978: d5384108     	mrs	x8, SP_EL0
    197c: f9438908     	ldr	x8, [x8, #0x710]
    1980: f81f83a8     	stur	x8, [x29, #-0x8]
    1984: f9417414     	ldr	x20, [x0, #0x2e8]
    1988: b4000634     	cbz	x20, 0x1a4c <zte_devm_power_supply_get_by_phandle+0xec>
    198c: aa0103f5     	mov	x21, x1
    1990: aa0003f6     	mov	x22, x0
    1994: 90000000     	adrp	x0, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001994:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1ac4
    1998: 91000000     	add	x0, x0, #0x0
		0000000000001998:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1ac4
    199c: 90000004     	adrp	x4, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		000000000000199c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56a
    19a0: 91000084     	add	x4, x4, #0x0
		00000000000019a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56a
    19a4: 52800101     	mov	w1, #0x8                // =8
    19a8: 52819802     	mov	w2, #0xcc0              // =3264
    19ac: 12800003     	mov	w3, #-0x1               // =-1
    19b0: 94000000     	bl	0x19b0 <zte_devm_power_supply_get_by_phandle+0x50>
		00000000000019b0:  R_AARCH64_CALL26	__devres_alloc_node
    19b4: b4000500     	cbz	x0, 0x1a54 <zte_devm_power_supply_get_by_phandle+0xf4>
    19b8: aa0003f3     	mov	x19, x0
    19bc: 910023e5     	add	x5, sp, #0x8
    19c0: aa1403e0     	mov	x0, x20
    19c4: aa1503e1     	mov	x1, x21
    19c8: aa1f03e2     	mov	x2, xzr
    19cc: 2a1f03e3     	mov	w3, wzr
    19d0: 2a1f03e4     	mov	w4, wzr
    19d4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    19d8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    19dc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    19e0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    19e4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    19e8: 94000000     	bl	0x19e8 <zte_devm_power_supply_get_by_phandle+0x88>
		00000000000019e8:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    19ec: 92800254     	mov	x20, #-0x13             // =-19
    19f0: 35000380     	cbnz	w0, 0x1a60 <zte_devm_power_supply_get_by_phandle+0x100>
    19f4: f94007e2     	ldr	x2, [sp, #0x8]
    19f8: b4000342     	cbz	x2, 0x1a60 <zte_devm_power_supply_get_by_phandle+0x100>
    19fc: 90000008     	adrp	x8, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		00000000000019fc:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    1a00: 90000003     	adrp	x3, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001a00:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc84
    1a04: 91000063     	add	x3, x3, #0x0
		0000000000001a04:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc84
    1a08: f9400100     	ldr	x0, [x8]
		0000000000001a08:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1a0c: aa1f03e1     	mov	x1, xzr
    1a10: 94000000     	bl	0x1a10 <zte_devm_power_supply_get_by_phandle+0xb0>
		0000000000001a10:  R_AARCH64_CALL26	class_find_device
    1a14: b4000240     	cbz	x0, 0x1a5c <zte_devm_power_supply_get_by_phandle+0xfc>
    1a18: f9404c14     	ldr	x20, [x0, #0x98]
    1a1c: 14000020     	b	0x1a9c <zte_devm_power_supply_get_by_phandle+0x13c>
    1a20: 91116288     	add	x8, x20, #0x458
    1a24: 52800029     	mov	w9, #0x1                // =1
    1a28: b829011f     	stadd	w9, [x8]
    1a2c: aa1603e0     	mov	x0, x22
    1a30: b4000194     	cbz	x20, 0x1a60 <zte_devm_power_supply_get_by_phandle+0x100>
    1a34: b13ffe9f     	cmn	x20, #0xfff
    1a38: 54000142     	b.hs	0x1a60 <zte_devm_power_supply_get_by_phandle+0x100>
    1a3c: aa1303e1     	mov	x1, x19
    1a40: f9000274     	str	x20, [x19]
    1a44: 94000000     	bl	0x1a44 <zte_devm_power_supply_get_by_phandle+0xe4>
		0000000000001a44:  R_AARCH64_CALL26	devres_add
    1a48: 14000008     	b	0x1a68 <zte_devm_power_supply_get_by_phandle+0x108>
    1a4c: 92800254     	mov	x20, #-0x13             // =-19
    1a50: 14000006     	b	0x1a68 <zte_devm_power_supply_get_by_phandle+0x108>
    1a54: 92800174     	mov	x20, #-0xc              // =-12
    1a58: 14000004     	b	0x1a68 <zte_devm_power_supply_get_by_phandle+0x108>
    1a5c: aa1f03f4     	mov	x20, xzr
    1a60: aa1303e0     	mov	x0, x19
    1a64: 94000000     	bl	0x1a64 <zte_devm_power_supply_get_by_phandle+0x104>
		0000000000001a64:  R_AARCH64_CALL26	devres_free
    1a68: d5384108     	mrs	x8, SP_EL0
    1a6c: f9438908     	ldr	x8, [x8, #0x710]
    1a70: f85f83a9     	ldur	x9, [x29, #-0x8]
    1a74: eb09011f     	cmp	x8, x9
    1a78: 54000101     	b.ne	0x1a98 <zte_devm_power_supply_get_by_phandle+0x138>
    1a7c: aa1403e0     	mov	x0, x20
    1a80: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1a84: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1a88: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1a8c: 910243ff     	add	sp, sp, #0x90
    1a90: d50323bf     	autiasp
    1a94: d65f03c0     	ret
    1a98: 94000000     	bl	0x1a98 <zte_devm_power_supply_get_by_phandle+0x138>
		0000000000001a98:  R_AARCH64_CALL26	__stack_chk_fail
    1a9c: 91116288     	add	x8, x20, #0x458
    1aa0: f9800111     	prfm	pstl1strm, [x8]
    1aa4: 885f7d09     	ldxr	w9, [x8]
    1aa8: 11000529     	add	w9, w9, #0x1
    1aac: 880a7d09     	stxr	w10, w9, [x8]
    1ab0: 35ffffaa     	cbnz	w10, 0x1aa4 <zte_devm_power_supply_get_by_phandle+0x144>
    1ab4: aa1603e0     	mov	x0, x22
    1ab8: b5fffbf4     	cbnz	x20, 0x1a34 <zte_devm_power_supply_get_by_phandle+0xd4>
    1abc: 17ffffe9     	b	0x1a60 <zte_devm_power_supply_get_by_phandle+0x100>
