
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016e4 <charger_policy_force_disching_sec_get>:
    16e4: d503233f     	paciasp
    16e8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    16ec: a9014ff4     	stp	x20, x19, [sp, #0x10]
    16f0: 910003fd     	mov	x29, sp
    16f4: aa0003f3     	mov	x19, x0
    16f8: b50001e1     	cbnz	x1, 0x1734 <charger_policy_force_disching_sec_get+0x50>
    16fc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000016fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1700: 91000000     	add	x0, x0, #0x0
		0000000000001700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1704: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ac
    1708: 91000021     	add	x1, x1, #0x0
		0000000000001708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ac
    170c: 94000000     	bl	0x170c <charger_policy_force_disching_sec_get+0x28>
		000000000000170c:  R_AARCH64_CALL26	_printk
    1710: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    1714: 91000129     	add	x9, x9, #0x0
		0000000000001714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1718: 528d8ea8     	mov	w8, #0x6c75             // =27765
    171c: f9400129     	ldr	x9, [x9]
    1720: 72a00d88     	movk	w8, #0x6c, lsl #16
    1724: 52800160     	mov	w0, #0xb                // =11
    1728: b9000a68     	str	w8, [x19, #0x8]
    172c: f9000269     	str	x9, [x19]
    1730: 1400000f     	b	0x176c <charger_policy_force_disching_sec_get+0x88>
    1734: b941f822     	ldr	w2, [x1, #0x1f8]
    1738: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ac
    173c: 91000108     	add	x8, x8, #0x0
		000000000000173c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ac
    1740: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x372
    1744: 91000000     	add	x0, x0, #0x0
		0000000000001744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x372
    1748: aa0103f4     	mov	x20, x1
    174c: aa0803e1     	mov	x1, x8
    1750: 94000000     	bl	0x1750 <charger_policy_force_disching_sec_get+0x6c>
		0000000000001750:  R_AARCH64_CALL26	_printk
    1754: b941fa83     	ldr	w3, [x20, #0x1f8]
    1758: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    175c: 91000042     	add	x2, x2, #0x0
		000000000000175c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    1760: aa1303e0     	mov	x0, x19
    1764: 52820001     	mov	w1, #0x1000             // =4096
    1768: 94000000     	bl	0x1768 <charger_policy_force_disching_sec_get+0x84>
		0000000000001768:  R_AARCH64_CALL26	snprintf
    176c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1770: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1774: d50323bf     	autiasp
    1778: d65f03c0     	ret
