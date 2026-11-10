
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013cc <charger_policy_demo_sts_get>:
    13cc: d503233f     	paciasp
    13d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    13d4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    13d8: 910003fd     	mov	x29, sp
    13dc: aa0003f3     	mov	x19, x0
    13e0: b50001e1     	cbnz	x1, 0x141c <charger_policy_demo_sts_get+0x50>
    13e4: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000013e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    13e8: 91000000     	add	x0, x0, #0x0
		00000000000013e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    13ec: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000013ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    13f0: 91000021     	add	x1, x1, #0x0
		00000000000013f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    13f4: 94000000     	bl	0x13f4 <charger_policy_demo_sts_get+0x28>
		00000000000013f4:  R_AARCH64_CALL26	_printk
    13f8: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000013f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    13fc: 91000129     	add	x9, x9, #0x0
		00000000000013fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1400: 528d8ea8     	mov	w8, #0x6c75             // =27765
    1404: f9400129     	ldr	x9, [x9]
    1408: 72a00d88     	movk	w8, #0x6c, lsl #16
    140c: 52800160     	mov	w0, #0xb                // =11
    1410: b9000a68     	str	w8, [x19, #0x8]
    1414: f9000269     	str	x9, [x19]
    1418: 14000011     	b	0x145c <charger_policy_demo_sts_get+0x90>
    141c: 39486422     	ldrb	w2, [x1, #0x219]
    1420: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ea
    1424: 91000108     	add	x8, x8, #0x0
		0000000000001424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ea
    1428: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26d0
    142c: 91000000     	add	x0, x0, #0x0
		000000000000142c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26d0
    1430: aa0103f4     	mov	x20, x1
    1434: aa0803e1     	mov	x1, x8
    1438: 94000000     	bl	0x1438 <charger_policy_demo_sts_get+0x6c>
		0000000000001438:  R_AARCH64_CALL26	_printk
    143c: 39486688     	ldrb	w8, [x20, #0x219]
    1440: 7100051f     	cmp	w8, #0x1
    1444: 54000061     	b.ne	0x1450 <charger_policy_demo_sts_get+0x84>
    1448: 52800628     	mov	w8, #0x31               // =49
    144c: 14000002     	b	0x1454 <charger_policy_demo_sts_get+0x88>
    1450: 52800608     	mov	w8, #0x30               // =48
    1454: 52800020     	mov	w0, #0x1                // =1
    1458: 79000268     	strh	w8, [x19]
    145c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1460: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1464: d50323bf     	autiasp
    1468: d65f03c0     	ret
