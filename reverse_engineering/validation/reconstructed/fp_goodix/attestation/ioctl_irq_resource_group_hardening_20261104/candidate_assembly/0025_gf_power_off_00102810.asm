
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001814 <gf_power_off>:
    1814: d503233f     	paciasp
    1818: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    181c: f9000bf3     	str	x19, [sp, #0x10]
    1820: 910003fd     	mov	x29, sp
    1824: b40000a0     	cbz	x0, 0x1838 <gf_power_off+0x24>
    1828: f9404c08     	ldr	x8, [x0, #0x98]
    182c: aa0003f3     	mov	x19, x0
    1830: b13ffd1f     	cmn	x8, #0xfff
    1834: 540000c3     	b.lo	0x184c <gf_power_off+0x38>
    1838: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
    183c: 91000000     	add	x0, x0, #0x0
		000000000000183c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
    1840: 94000000     	bl	0x1840 <gf_power_off+0x2c>
		0000000000001840:  R_AARCH64_CALL26	_printk
    1844: 12800240     	mov	w0, #-0x13              // =-19
    1848: 1400000a     	b	0x1870 <gf_power_off+0x5c>
    184c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000184c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb01
    1850: 91000000     	add	x0, x0, #0x0
		0000000000001850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb01
    1854: 94000000     	bl	0x1854 <gf_power_off+0x40>
		0000000000001854:  R_AARCH64_CALL26	_printk
    1858: f9404e60     	ldr	x0, [x19, #0x98]
    185c: 94000000     	bl	0x185c <gf_power_off+0x48>
		000000000000185c:  R_AARCH64_CALL26	regulator_is_enabled
    1860: 34000100     	cbz	w0, 0x1880 <gf_power_off+0x6c>
    1864: f9404e60     	ldr	x0, [x19, #0x98]
    1868: 94000000     	bl	0x1868 <gf_power_off+0x54>
		0000000000001868:  R_AARCH64_CALL26	regulator_disable
    186c: 35000140     	cbnz	w0, 0x1894 <gf_power_off+0x80>
    1870: f9400bf3     	ldr	x19, [sp, #0x10]
    1874: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1878: d50323bf     	autiasp
    187c: d65f03c0     	ret
    1880: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x291
    1884: 91000000     	add	x0, x0, #0x0
		0000000000001884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x291
    1888: 94000000     	bl	0x1888 <gf_power_off+0x74>
		0000000000001888:  R_AARCH64_CALL26	_printk
    188c: 2a1f03e0     	mov	w0, wzr
    1890: 17fffff8     	b	0x1870 <gf_power_off+0x5c>
    1894: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89
    1898: 91000108     	add	x8, x8, #0x0
		0000000000001898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89
    189c: 2a0003f3     	mov	w19, w0
    18a0: aa0803e0     	mov	x0, x8
    18a4: 2a1303e1     	mov	w1, w19
    18a8: 94000000     	bl	0x18a8 <gf_power_off+0x94>
		00000000000018a8:  R_AARCH64_CALL26	_printk
    18ac: 2a1303e0     	mov	w0, w19
    18b0: 17fffff0     	b	0x1870 <gf_power_off+0x5c>
