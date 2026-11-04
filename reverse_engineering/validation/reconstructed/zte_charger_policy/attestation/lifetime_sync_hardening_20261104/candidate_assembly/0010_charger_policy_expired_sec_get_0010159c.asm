
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015a0 <charger_policy_expired_sec_get>:
    15a0: d503233f     	paciasp
    15a4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    15a8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    15ac: 910003fd     	mov	x29, sp
    15b0: aa0003f3     	mov	x19, x0
    15b4: b50001e1     	cbnz	x1, 0x15f0 <charger_policy_expired_sec_get+0x50>
    15b8: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000015b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    15bc: 91000000     	add	x0, x0, #0x0
		00000000000015bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    15c0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a00
    15c4: 91000021     	add	x1, x1, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a00
    15c8: 94000000     	bl	0x15c8 <charger_policy_expired_sec_get+0x28>
		00000000000015c8:  R_AARCH64_CALL26	_printk
    15cc: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000015cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    15d0: 91000129     	add	x9, x9, #0x0
		00000000000015d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    15d4: 528d8ea8     	mov	w8, #0x6c75             // =27765
    15d8: f9400129     	ldr	x9, [x9]
    15dc: 72a00d88     	movk	w8, #0x6c, lsl #16
    15e0: 52800160     	mov	w0, #0xb                // =11
    15e4: b9000a68     	str	w8, [x19, #0x8]
    15e8: f9000269     	str	x9, [x19]
    15ec: 1400000f     	b	0x1628 <charger_policy_expired_sec_get+0x88>
    15f0: b941f422     	ldr	w2, [x1, #0x1f4]
    15f4: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000015f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a00
    15f8: 91000108     	add	x8, x8, #0x0
		00000000000015f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a00
    15fc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000015fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    1600: 91000000     	add	x0, x0, #0x0
		0000000000001600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    1604: aa0103f4     	mov	x20, x1
    1608: aa0803e1     	mov	x1, x8
    160c: 94000000     	bl	0x160c <charger_policy_expired_sec_get+0x6c>
		000000000000160c:  R_AARCH64_CALL26	_printk
    1610: b941f683     	ldr	w3, [x20, #0x1f4]
    1614: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1618: 91000042     	add	x2, x2, #0x0
		0000000000001618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    161c: aa1303e0     	mov	x0, x19
    1620: 52820001     	mov	w1, #0x1000             // =4096
    1624: 94000000     	bl	0x1624 <charger_policy_expired_sec_get+0x84>
		0000000000001624:  R_AARCH64_CALL26	snprintf
    1628: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    162c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1630: d50323bf     	autiasp
    1634: d65f03c0     	ret
