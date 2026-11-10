
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001770 <gf_power_on>:
    1770: d503233f     	paciasp
    1774: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1778: f9000bf3     	str	x19, [sp, #0x10]
    177c: 910003fd     	mov	x29, sp
    1780: b40000a0     	cbz	x0, 0x1794 <gf_power_on+0x24>
    1784: f9404c08     	ldr	x8, [x0, #0x98]
    1788: aa0003f3     	mov	x19, x0
    178c: b13ffd1f     	cmn	x8, #0xfff
    1790: 540000c3     	b.lo	0x17a8 <gf_power_on+0x38>
    1794: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f9
    1798: 91000000     	add	x0, x0, #0x0
		0000000000001798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f9
    179c: 94000000     	bl	0x179c <gf_power_on+0x2c>
		000000000000179c:  R_AARCH64_CALL26	_printk
    17a0: 12800240     	mov	w0, #-0x13              // =-19
    17a4: 1400000a     	b	0x17cc <gf_power_on+0x5c>
    17a8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000017a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b8
    17ac: 91000000     	add	x0, x0, #0x0
		00000000000017ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b8
    17b0: 94000000     	bl	0x17b0 <gf_power_on+0x40>
		00000000000017b0:  R_AARCH64_CALL26	_printk
    17b4: f9404e60     	ldr	x0, [x19, #0x98]
    17b8: 94000000     	bl	0x17b8 <gf_power_on+0x48>
		00000000000017b8:  R_AARCH64_CALL26	regulator_is_enabled
    17bc: 35000100     	cbnz	w0, 0x17dc <gf_power_on+0x6c>
    17c0: f9404e60     	ldr	x0, [x19, #0x98]
    17c4: 94000000     	bl	0x17c4 <gf_power_on+0x54>
		00000000000017c4:  R_AARCH64_CALL26	regulator_enable
    17c8: 35000140     	cbnz	w0, 0x17f0 <gf_power_on+0x80>
    17cc: f9400bf3     	ldr	x19, [sp, #0x10]
    17d0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    17d4: d50323bf     	autiasp
    17d8: d65f03c0     	ret
    17dc: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000017dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    17e0: 91000000     	add	x0, x0, #0x0
		00000000000017e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    17e4: 94000000     	bl	0x17e4 <gf_power_on+0x74>
		00000000000017e4:  R_AARCH64_CALL26	_printk
    17e8: 2a1f03e0     	mov	w0, wzr
    17ec: 17fffff8     	b	0x17cc <gf_power_on+0x5c>
    17f0: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x254
    17f4: 91000108     	add	x8, x8, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x254
    17f8: 2a0003f3     	mov	w19, w0
    17fc: aa0803e0     	mov	x0, x8
    1800: 2a1303e1     	mov	w1, w19
    1804: 94000000     	bl	0x1804 <gf_power_on+0x94>
		0000000000001804:  R_AARCH64_CALL26	_printk
    1808: 2a1303e0     	mov	w0, w19
    180c: 17fffff0     	b	0x17cc <gf_power_on+0x5c>
