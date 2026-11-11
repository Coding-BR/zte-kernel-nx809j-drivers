
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015b0 <charger_policy_expired_sec_get>:
    15b0: d503233f     	paciasp
    15b4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    15b8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    15bc: 910003fd     	mov	x29, sp
    15c0: aa0003f3     	mov	x19, x0
    15c4: b50001e1     	cbnz	x1, 0x1600 <charger_policy_expired_sec_get+0x50>
    15c8: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    15cc: 91000000     	add	x0, x0, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    15d0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000015d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a00
    15d4: 91000021     	add	x1, x1, #0x0
		00000000000015d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a00
    15d8: 94000000     	bl	0x15d8 <charger_policy_expired_sec_get+0x28>
		00000000000015d8:  R_AARCH64_CALL26	_printk
    15dc: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000015dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    15e0: 91000129     	add	x9, x9, #0x0
		00000000000015e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    15e4: 528d8ea8     	mov	w8, #0x6c75             // =27765
    15e8: f9400129     	ldr	x9, [x9]
    15ec: 72a00d88     	movk	w8, #0x6c, lsl #16
    15f0: 52800160     	mov	w0, #0xb                // =11
    15f4: b9000a68     	str	w8, [x19, #0x8]
    15f8: f9000269     	str	x9, [x19]
    15fc: 1400000f     	b	0x1638 <charger_policy_expired_sec_get+0x88>
    1600: b941f422     	ldr	w2, [x1, #0x1f4]
    1604: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a00
    1608: 91000108     	add	x8, x8, #0x0
		0000000000001608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a00
    160c: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    1610: 91000000     	add	x0, x0, #0x0
		0000000000001610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    1614: aa0103f4     	mov	x20, x1
    1618: aa0803e1     	mov	x1, x8
    161c: 94000000     	bl	0x161c <charger_policy_expired_sec_get+0x6c>
		000000000000161c:  R_AARCH64_CALL26	_printk
    1620: b941f683     	ldr	w3, [x20, #0x1f4]
    1624: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1628: 91000042     	add	x2, x2, #0x0
		0000000000001628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    162c: aa1303e0     	mov	x0, x19
    1630: 52820001     	mov	w1, #0x1000             // =4096
    1634: 94000000     	bl	0x1634 <charger_policy_expired_sec_get+0x84>
		0000000000001634:  R_AARCH64_CALL26	snprintf
    1638: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    163c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1640: d50323bf     	autiasp
    1644: d65f03c0     	ret
