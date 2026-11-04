
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000182c <charger_policy_cap_min_get>:
    182c: d503233f     	paciasp
    1830: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1834: f9000bf3     	str	x19, [sp, #0x10]
    1838: 910003fd     	mov	x29, sp
    183c: b4000141     	cbz	x1, 0x1864 <charger_policy_cap_min_get+0x38>
    1840: b9419c23     	ldr	w3, [x1, #0x19c]
    1844: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1848: 91000042     	add	x2, x2, #0x0
		0000000000001848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    184c: 52820001     	mov	w1, #0x1000             // =4096
    1850: 94000000     	bl	0x1850 <charger_policy_cap_min_get+0x24>
		0000000000001850:  R_AARCH64_CALL26	snprintf
    1854: f9400bf3     	ldr	x19, [sp, #0x10]
    1858: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    185c: d50323bf     	autiasp
    1860: d65f03c0     	ret
    1864: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1868: 91000108     	add	x8, x8, #0x0
		0000000000001868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    186c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		000000000000186c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b2
    1870: 91000021     	add	x1, x1, #0x0
		0000000000001870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b2
    1874: aa0003f3     	mov	x19, x0
    1878: aa0803e0     	mov	x0, x8
    187c: 94000000     	bl	0x187c <charger_policy_cap_min_get+0x50>
		000000000000187c:  R_AARCH64_CALL26	_printk
    1880: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    1884: 91000129     	add	x9, x9, #0x0
		0000000000001884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1888: 528d8ea8     	mov	w8, #0x6c75             // =27765
    188c: f9400129     	ldr	x9, [x9]
    1890: 72a00d88     	movk	w8, #0x6c, lsl #16
    1894: 52800160     	mov	w0, #0xb                // =11
    1898: b9000a68     	str	w8, [x19, #0x8]
    189c: f9000269     	str	x9, [x19]
    18a0: 17ffffed     	b	0x1854 <charger_policy_cap_min_get+0x28>
