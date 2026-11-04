
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000018b8 <gf_hw_reset>:
    18b8: d503233f     	paciasp
    18bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    18c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    18c4: 910003fd     	mov	x29, sp
    18c8: b50000a0     	cbnz	x0, 0x18dc <gf_hw_reset+0x24>
    18cc: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000018cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe5f
    18d0: 91000000     	add	x0, x0, #0x0
		00000000000018d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe5f
    18d4: 12800253     	mov	w19, #-0x13             // =-19
    18d8: 14000020     	b	0x1958 <gf_hw_reset+0xa0>
    18dc: b9404008     	ldr	w8, [x0, #0x40]
    18e0: 37f80368     	tbnz	w8, #0x1f, 0x194c <gf_hw_reset+0x94>
    18e4: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000018e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c9
    18e8: 91000108     	add	x8, x8, #0x0
		00000000000018e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c9
    18ec: aa0003f4     	mov	x20, x0
    18f0: aa0803e0     	mov	x0, x8
    18f4: 2a0103f3     	mov	w19, w1
    18f8: 94000000     	bl	0x18f8 <gf_hw_reset+0x40>
		00000000000018f8:  R_AARCH64_CALL26	_printk
    18fc: b9404280     	ldr	w0, [x20, #0x40]
    1900: 94000000     	bl	0x1900 <gf_hw_reset+0x48>
		0000000000001900:  R_AARCH64_CALL26	gpio_to_desc
    1904: 2a1f03e1     	mov	w1, wzr
    1908: 94000000     	bl	0x1908 <gf_hw_reset+0x50>
		0000000000001908:  R_AARCH64_CALL26	gpiod_set_raw_value
    190c: 5284e200     	mov	w0, #0x2710             // =10000
    1910: 5284ee81     	mov	w1, #0x2774             // =10100
    1914: 52800042     	mov	w2, #0x2                // =2
    1918: 94000000     	bl	0x1918 <gf_hw_reset+0x60>
		0000000000001918:  R_AARCH64_CALL26	usleep_range_state
    191c: b9404280     	ldr	w0, [x20, #0x40]
    1920: 94000000     	bl	0x1920 <gf_hw_reset+0x68>
		0000000000001920:  R_AARCH64_CALL26	gpio_to_desc
    1924: 52800021     	mov	w1, #0x1                // =1
    1928: 94000000     	bl	0x1928 <gf_hw_reset+0x70>
		0000000000001928:  R_AARCH64_CALL26	gpiod_set_raw_value
    192c: 34000193     	cbz	w19, 0x195c <gf_hw_reset+0xa4>
    1930: 2a1303f3     	mov	w19, w19
    1934: 52912b00     	mov	w0, #0x8958             // =35160
    1938: d1000673     	sub	x19, x19, #0x1
    193c: 72a00820     	movk	w0, #0x41, lsl #16
    1940: 94000000     	bl	0x1940 <gf_hw_reset+0x88>
		0000000000001940:  R_AARCH64_CALL26	__const_udelay
    1944: b5ffff93     	cbnz	x19, 0x1934 <gf_hw_reset+0x7c>
    1948: 14000005     	b	0x195c <gf_hw_reset+0xa4>
    194c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000194c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcf
    1950: 91000000     	add	x0, x0, #0x0
		0000000000001950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcf
    1954: 2a1f03f3     	mov	w19, wzr
    1958: 94000000     	bl	0x1958 <gf_hw_reset+0xa0>
		0000000000001958:  R_AARCH64_CALL26	_printk
    195c: 2a1303e0     	mov	w0, w19
    1960: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1964: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1968: d50323bf     	autiasp
    196c: d65f03c0     	ret
