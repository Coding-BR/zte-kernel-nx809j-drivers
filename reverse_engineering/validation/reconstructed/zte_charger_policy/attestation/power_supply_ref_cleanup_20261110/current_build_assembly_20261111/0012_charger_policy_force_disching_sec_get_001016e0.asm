
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016f4 <charger_policy_force_disching_sec_get>:
    16f4: d503233f     	paciasp
    16f8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    16fc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1700: 910003fd     	mov	x29, sp
    1704: aa0003f3     	mov	x19, x0
    1708: b50001e1     	cbnz	x1, 0x1744 <charger_policy_force_disching_sec_get+0x50>
    170c: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000170c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1710: 91000000     	add	x0, x0, #0x0
		0000000000001710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1714: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ac
    1718: 91000021     	add	x1, x1, #0x0
		0000000000001718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ac
    171c: 94000000     	bl	0x171c <charger_policy_force_disching_sec_get+0x28>
		000000000000171c:  R_AARCH64_CALL26	_printk
    1720: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    1724: 91000129     	add	x9, x9, #0x0
		0000000000001724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1728: 528d8ea8     	mov	w8, #0x6c75             // =27765
    172c: f9400129     	ldr	x9, [x9]
    1730: 72a00d88     	movk	w8, #0x6c, lsl #16
    1734: 52800160     	mov	w0, #0xb                // =11
    1738: b9000a68     	str	w8, [x19, #0x8]
    173c: f9000269     	str	x9, [x19]
    1740: 1400000f     	b	0x177c <charger_policy_force_disching_sec_get+0x88>
    1744: b941f822     	ldr	w2, [x1, #0x1f8]
    1748: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ac
    174c: 91000108     	add	x8, x8, #0x0
		000000000000174c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ac
    1750: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x372
    1754: 91000000     	add	x0, x0, #0x0
		0000000000001754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x372
    1758: aa0103f4     	mov	x20, x1
    175c: aa0803e1     	mov	x1, x8
    1760: 94000000     	bl	0x1760 <charger_policy_force_disching_sec_get+0x6c>
		0000000000001760:  R_AARCH64_CALL26	_printk
    1764: b941fa83     	ldr	w3, [x20, #0x1f8]
    1768: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    176c: 91000042     	add	x2, x2, #0x0
		000000000000176c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    1770: aa1303e0     	mov	x0, x19
    1774: 52820001     	mov	w1, #0x1000             // =4096
    1778: 94000000     	bl	0x1778 <charger_policy_force_disching_sec_get+0x84>
		0000000000001778:  R_AARCH64_CALL26	snprintf
    177c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1780: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1784: d50323bf     	autiasp
    1788: d65f03c0     	ret
