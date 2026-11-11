
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013dc <charger_policy_demo_sts_get>:
    13dc: d503233f     	paciasp
    13e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    13e4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    13e8: 910003fd     	mov	x29, sp
    13ec: aa0003f3     	mov	x19, x0
    13f0: b50001e1     	cbnz	x1, 0x142c <charger_policy_demo_sts_get+0x50>
    13f4: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000013f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    13f8: 91000000     	add	x0, x0, #0x0
		00000000000013f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    13fc: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000013fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    1400: 91000021     	add	x1, x1, #0x0
		0000000000001400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    1404: 94000000     	bl	0x1404 <charger_policy_demo_sts_get+0x28>
		0000000000001404:  R_AARCH64_CALL26	_printk
    1408: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    140c: 91000129     	add	x9, x9, #0x0
		000000000000140c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1410: 528d8ea8     	mov	w8, #0x6c75             // =27765
    1414: f9400129     	ldr	x9, [x9]
    1418: 72a00d88     	movk	w8, #0x6c, lsl #16
    141c: 52800160     	mov	w0, #0xb                // =11
    1420: b9000a68     	str	w8, [x19, #0x8]
    1424: f9000269     	str	x9, [x19]
    1428: 14000011     	b	0x146c <charger_policy_demo_sts_get+0x90>
    142c: 39486422     	ldrb	w2, [x1, #0x219]
    1430: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    1434: 91000108     	add	x8, x8, #0x0
		0000000000001434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    1438: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26d0
    143c: 91000000     	add	x0, x0, #0x0
		000000000000143c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26d0
    1440: aa0103f4     	mov	x20, x1
    1444: aa0803e1     	mov	x1, x8
    1448: 94000000     	bl	0x1448 <charger_policy_demo_sts_get+0x6c>
		0000000000001448:  R_AARCH64_CALL26	_printk
    144c: 39486688     	ldrb	w8, [x20, #0x219]
    1450: 7100051f     	cmp	w8, #0x1
    1454: 54000061     	b.ne	0x1460 <charger_policy_demo_sts_get+0x84>
    1458: 52800628     	mov	w8, #0x31               // =49
    145c: 14000002     	b	0x1464 <charger_policy_demo_sts_get+0x88>
    1460: 52800608     	mov	w8, #0x30               // =48
    1464: 52800020     	mov	w0, #0x1                // =1
    1468: 79000268     	strh	w8, [x19]
    146c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1470: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1474: d50323bf     	autiasp
    1478: d65f03c0     	ret
