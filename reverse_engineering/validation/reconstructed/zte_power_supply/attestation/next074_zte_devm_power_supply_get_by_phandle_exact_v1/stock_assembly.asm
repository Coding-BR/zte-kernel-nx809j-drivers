
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000414 <zte_devm_power_supply_get_by_phandle>:
     414: d503233f     	paciasp
     418: d10243ff     	sub	sp, sp, #0x90
     41c: a9067bfd     	stp	x29, x30, [sp, #0x60]
     420: f9003bf5     	str	x21, [sp, #0x70]
     424: a9084ff4     	stp	x20, x19, [sp, #0x80]
     428: 910183fd     	add	x29, sp, #0x60
     42c: d5384108     	mrs	x8, SP_EL0
     430: f9438908     	ldr	x8, [x8, #0x710]
     434: f81f83a8     	stur	x8, [x29, #-0x8]
     438: f9417408     	ldr	x8, [x0, #0x2e8]
     43c: b4000628     	cbz	x8, 0x500 <zte_devm_power_supply_get_by_phandle+0xec>
     440: aa0003f3     	mov	x19, x0
     444: aa0103f5     	mov	x21, x1
     448: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000448:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x574
     44c: 91000000     	add	x0, x0, #0x0
		000000000000044c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x574
     450: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
     454: 91000084     	add	x4, x4, #0x0
		0000000000000454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
     458: 52800101     	mov	w1, #0x8                // =8
     45c: 52819802     	mov	w2, #0xcc0              // =3264
     460: 12800003     	mov	w3, #-0x1               // =-1
     464: 94000000     	bl	0x464 <zte_devm_power_supply_get_by_phandle+0x50>
		0000000000000464:  R_AARCH64_CALL26	__devres_alloc_node
     468: b4000500     	cbz	x0, 0x508 <zte_devm_power_supply_get_by_phandle+0xf4>
     46c: aa0003f4     	mov	x20, x0
     470: f9417660     	ldr	x0, [x19, #0x2e8]
     474: 910023e5     	add	x5, sp, #0x8
     478: aa1503e1     	mov	x1, x21
     47c: aa1f03e2     	mov	x2, xzr
     480: 2a1f03e3     	mov	w3, wzr
     484: 2a1f03e4     	mov	w4, wzr
     488: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     48c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     490: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     494: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     498: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     49c: 94000000     	bl	0x49c <zte_devm_power_supply_get_by_phandle+0x88>
		000000000000049c:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     4a0: 92800255     	mov	x21, #-0x13             // =-19
     4a4: 35000380     	cbnz	w0, 0x514 <zte_devm_power_supply_get_by_phandle+0x100>
     4a8: f94007e2     	ldr	x2, [sp, #0x8]
     4ac: b4000342     	cbz	x2, 0x514 <zte_devm_power_supply_get_by_phandle+0x100>
     4b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     4b4: 90000003     	adrp	x3, 0x0 <.text>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x294
     4b8: 91000063     	add	x3, x3, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x294
     4bc: f9400100     	ldr	x0, [x8]
		00000000000004bc:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     4c0: aa1f03e1     	mov	x1, xzr
     4c4: 94000000     	bl	0x4c4 <zte_devm_power_supply_get_by_phandle+0xb0>
		00000000000004c4:  R_AARCH64_CALL26	class_find_device
     4c8: b4000240     	cbz	x0, 0x510 <zte_devm_power_supply_get_by_phandle+0xfc>
     4cc: f9404c15     	ldr	x21, [x0, #0x98]
     4d0: 14000020     	b	0x550 <zte_devm_power_supply_get_by_phandle+0x13c>
     4d4: 911162a8     	add	x8, x21, #0x458
     4d8: 52800029     	mov	w9, #0x1                // =1
     4dc: b829011f     	stadd	w9, [x8]
     4e0: b40001b5     	cbz	x21, 0x514 <zte_devm_power_supply_get_by_phandle+0x100>
     4e4: b13ffebf     	cmn	x21, #0xfff
     4e8: 54000162     	b.hs	0x514 <zte_devm_power_supply_get_by_phandle+0x100>
     4ec: aa1303e0     	mov	x0, x19
     4f0: aa1403e1     	mov	x1, x20
     4f4: f9000295     	str	x21, [x20]
     4f8: 94000000     	bl	0x4f8 <zte_devm_power_supply_get_by_phandle+0xe4>
		00000000000004f8:  R_AARCH64_CALL26	devres_add
     4fc: 14000008     	b	0x51c <zte_devm_power_supply_get_by_phandle+0x108>
     500: 92800255     	mov	x21, #-0x13             // =-19
     504: 14000006     	b	0x51c <zte_devm_power_supply_get_by_phandle+0x108>
     508: 92800175     	mov	x21, #-0xc              // =-12
     50c: 14000004     	b	0x51c <zte_devm_power_supply_get_by_phandle+0x108>
     510: aa1f03f5     	mov	x21, xzr
     514: aa1403e0     	mov	x0, x20
     518: 94000000     	bl	0x518 <zte_devm_power_supply_get_by_phandle+0x104>
		0000000000000518:  R_AARCH64_CALL26	devres_free
     51c: d5384108     	mrs	x8, SP_EL0
     520: f9438908     	ldr	x8, [x8, #0x710]
     524: f85f83a9     	ldur	x9, [x29, #-0x8]
     528: eb09011f     	cmp	x8, x9
     52c: 54000101     	b.ne	0x54c <zte_devm_power_supply_get_by_phandle+0x138>
     530: aa1503e0     	mov	x0, x21
     534: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     538: f9403bf5     	ldr	x21, [sp, #0x70]
     53c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     540: 910243ff     	add	sp, sp, #0x90
     544: d50323bf     	autiasp
     548: d65f03c0     	ret
     54c: 94000000     	bl	0x54c <zte_devm_power_supply_get_by_phandle+0x138>
		000000000000054c:  R_AARCH64_CALL26	__stack_chk_fail
     550: 911162a8     	add	x8, x21, #0x458
     554: f9800111     	prfm	pstl1strm, [x8]
     558: 885f7d09     	ldxr	w9, [x8]
     55c: 11000529     	add	w9, w9, #0x1
     560: 880a7d09     	stxr	w10, w9, [x8]
     564: 35ffffaa     	cbnz	w10, 0x558 <zte_devm_power_supply_get_by_phandle+0x144>
     568: b5fffbf5     	cbnz	x21, 0x4e4 <zte_devm_power_supply_get_by_phandle+0xd0>
     56c: 17ffffea     	b	0x514 <zte_devm_power_supply_get_by_phandle+0x100>
