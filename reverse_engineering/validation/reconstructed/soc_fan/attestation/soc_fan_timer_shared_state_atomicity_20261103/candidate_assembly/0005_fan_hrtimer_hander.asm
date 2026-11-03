
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001764 <fan_hrtimer_hander>:
    1764: d503233f     	paciasp
    1768: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    176c: f9000bf3     	str	x19, [sp, #0x10]
    1770: 910003fd     	mov	x29, sp
    1774: 90000013     	adrp	x19, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001774:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1778: f9400268     	ldr	x8, [x19]
		0000000000001778:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    177c: f9400508     	ldr	x8, [x8, #0x8]
    1780: 39400909     	ldrb	w9, [x8, #0x2]
    1784: 7100093f     	cmp	w9, #0x2
    1788: 540004e0     	b.eq	0x1824 <fan_hrtimer_hander+0xc0>
    178c: 7100053f     	cmp	w9, #0x1
    1790: 540000c0     	b.eq	0x17a8 <fan_hrtimer_hander+0x44>
    1794: 2a1f03e0     	mov	w0, wzr
    1798: f9400bf3     	ldr	x19, [sp, #0x10]
    179c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    17a0: d50323bf     	autiasp
    17a4: d65f03c0     	ret
    17a8: b900051f     	str	wzr, [x8, #0x4]
    17ac: 52800049     	mov	w9, #0x2                // =2
    17b0: 528ca001     	mov	w1, #0x6500             // =25856
    17b4: f9400268     	ldr	x8, [x19]
		00000000000017b4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    17b8: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
    17bc: aa1f03e2     	mov	x2, xzr
    17c0: 52800023     	mov	w3, #0x1                // =1
    17c4: f9400508     	ldr	x8, [x8, #0x8]
    17c8: 39000909     	strb	w9, [x8, #0x2]
    17cc: f9400268     	ldr	x8, [x19]
		00000000000017cc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    17d0: f9400508     	ldr	x8, [x8, #0x8]
    17d4: 9100a100     	add	x0, x8, #0x28
    17d8: 94000000     	bl	0x17d8 <fan_hrtimer_hander+0x74>
		00000000000017d8:  R_AARCH64_CALL26	hrtimer_start_range_ns
    17dc: f9400268     	ldr	x8, [x19]
		00000000000017dc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    17e0: f9400508     	ldr	x8, [x8, #0x8]
    17e4: b9401d00     	ldr	w0, [x8, #0x1c]
    17e8: 94000000     	bl	0x17e8 <fan_hrtimer_hander+0x84>
		00000000000017e8:  R_AARCH64_CALL26	enable_irq
    17ec: f9400268     	ldr	x8, [x19]
		00000000000017ec:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    17f0: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
    17f4: 91000000     	add	x0, x0, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
    17f8: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		00000000000017f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    17fc: 91000021     	add	x1, x1, #0x0
		00000000000017fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    1800: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a4
    1804: 91000042     	add	x2, x2, #0x0
		0000000000001804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a4
    1808: f9400508     	ldr	x8, [x8, #0x8]
    180c: 52801043     	mov	w3, #0x82               // =130
    1810: 39400104     	ldrb	w4, [x8]
    1814: b9400505     	ldr	w5, [x8, #0x4]
    1818: 94000000     	bl	0x1818 <fan_hrtimer_hander+0xb4>
		0000000000001818:  R_AARCH64_CALL26	_printk
    181c: 52800020     	mov	w0, #0x1                // =1
    1820: 17ffffde     	b	0x1798 <fan_hrtimer_hander+0x34>
    1824: 52800069     	mov	w9, #0x3                // =3
    1828: 39000909     	strb	w9, [x8, #0x2]
    182c: f9400268     	ldr	x8, [x19]
		000000000000182c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1830: f9400509     	ldr	x9, [x8, #0x8]
    1834: b940052a     	ldr	w10, [x9, #0x4]
    1838: b900092a     	str	w10, [x9, #0x8]
    183c: f9400508     	ldr	x8, [x8, #0x8]
    1840: b9401d00     	ldr	w0, [x8, #0x1c]
    1844: 94000000     	bl	0x1844 <fan_hrtimer_hander+0xe0>
		0000000000001844:  R_AARCH64_CALL26	disable_irq_nosync
    1848: f9400268     	ldr	x8, [x19]
		0000000000001848:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    184c: 90000000     	adrp	x0, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000184c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57f
    1850: 91000000     	add	x0, x0, #0x0
		0000000000001850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57f
    1854: 90000001     	adrp	x1, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		0000000000001854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
    1858: 91000021     	add	x1, x1, #0x0
		0000000000001858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
    185c: 90000002     	adrp	x2, 0x1000 <nb_fan_probe_stock_exact+0x2e4>
		000000000000185c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a4
    1860: 91000042     	add	x2, x2, #0x0
		0000000000001860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a4
    1864: f9400508     	ldr	x8, [x8, #0x8]
    1868: 52801123     	mov	w3, #0x89               // =137
    186c: 39400104     	ldrb	w4, [x8]
    1870: b9400505     	ldr	w5, [x8, #0x4]
    1874: 94000000     	bl	0x1874 <fan_hrtimer_hander+0x110>
		0000000000001874:  R_AARCH64_CALL26	_printk
    1878: 17ffffc7     	b	0x1794 <fan_hrtimer_hander+0x30>
