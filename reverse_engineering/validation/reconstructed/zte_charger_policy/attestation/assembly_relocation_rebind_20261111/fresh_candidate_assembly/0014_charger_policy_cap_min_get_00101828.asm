
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000183c <charger_policy_cap_min_get>:
    183c: d503233f     	paciasp
    1840: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1844: f9000bf3     	str	x19, [sp, #0x10]
    1848: 910003fd     	mov	x29, sp
    184c: b4000141     	cbz	x1, 0x1874 <charger_policy_cap_min_get+0x38>
    1850: b9419c23     	ldr	w3, [x1, #0x19c]
    1854: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1858: 91000042     	add	x2, x2, #0x0
		0000000000001858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    185c: 52820001     	mov	w1, #0x1000             // =4096
    1860: 94000000     	bl	0x1860 <charger_policy_cap_min_get+0x24>
		0000000000001860:  R_AARCH64_CALL26	snprintf
    1864: f9400bf3     	ldr	x19, [sp, #0x10]
    1868: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    186c: d50323bf     	autiasp
    1870: d65f03c0     	ret
    1874: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1878: 91000108     	add	x8, x8, #0x0
		0000000000001878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    187c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000187c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b2
    1880: 91000021     	add	x1, x1, #0x0
		0000000000001880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b2
    1884: aa0003f3     	mov	x19, x0
    1888: aa0803e0     	mov	x0, x8
    188c: 94000000     	bl	0x188c <charger_policy_cap_min_get+0x50>
		000000000000188c:  R_AARCH64_CALL26	_printk
    1890: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    1894: 91000129     	add	x9, x9, #0x0
		0000000000001894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1898: 528d8ea8     	mov	w8, #0x6c75             // =27765
    189c: f9400129     	ldr	x9, [x9]
    18a0: 72a00d88     	movk	w8, #0x6c, lsl #16
    18a4: 52800160     	mov	w0, #0xb                // =11
    18a8: b9000a68     	str	w8, [x19, #0x8]
    18ac: f9000269     	str	x9, [x19]
    18b0: 17ffffed     	b	0x1864 <charger_policy_cap_min_get+0x28>
