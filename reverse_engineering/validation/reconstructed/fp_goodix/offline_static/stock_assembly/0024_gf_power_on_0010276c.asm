
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f4c <gf_power_on>:
    1f4c: d503233f     	paciasp
    1f50: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1f54: f9000bf3     	str	x19, [sp, #0x10]
    1f58: 910003fd     	mov	x29, sp
    1f5c: b40000a0     	cbz	x0, 0x1f70 <gf_power_on+0x24>
    1f60: f9404c08     	ldr	x8, [x0, #0x98]
    1f64: aa0003f3     	mov	x19, x0
    1f68: b13ffd1f     	cmn	x8, #0xfff
    1f6c: 540000c3     	b.lo	0x1f84 <gf_power_on+0x38>
    1f70: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
    1f74: 91000000     	add	x0, x0, #0x0
		0000000000001f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
    1f78: 94000000     	bl	0x1f78 <gf_power_on+0x2c>
		0000000000001f78:  R_AARCH64_CALL26	_printk
    1f7c: 12800240     	mov	w0, #-0x13              // =-19
    1f80: 1400000a     	b	0x1fa8 <gf_power_on+0x5c>
    1f84: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1152
    1f88: 91000000     	add	x0, x0, #0x0
		0000000000001f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1152
    1f8c: 94000000     	bl	0x1f8c <gf_power_on+0x40>
		0000000000001f8c:  R_AARCH64_CALL26	_printk
    1f90: f9404e60     	ldr	x0, [x19, #0x98]
    1f94: 94000000     	bl	0x1f94 <gf_power_on+0x48>
		0000000000001f94:  R_AARCH64_CALL26	regulator_is_enabled
    1f98: 35000100     	cbnz	w0, 0x1fb8 <gf_power_on+0x6c>
    1f9c: f9404e60     	ldr	x0, [x19, #0x98]
    1fa0: 94000000     	bl	0x1fa0 <gf_power_on+0x54>
		0000000000001fa0:  R_AARCH64_CALL26	regulator_enable
    1fa4: 35000140     	cbnz	w0, 0x1fcc <gf_power_on+0x80>
    1fa8: f9400bf3     	ldr	x19, [sp, #0x10]
    1fac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1fb0: d50323bf     	autiasp
    1fb4: d65f03c0     	ret
    1fb8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46
    1fbc: 91000000     	add	x0, x0, #0x0
		0000000000001fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46
    1fc0: 94000000     	bl	0x1fc0 <gf_power_on+0x74>
		0000000000001fc0:  R_AARCH64_CALL26	_printk
    1fc4: 2a1f03e0     	mov	w0, wzr
    1fc8: 17fffff8     	b	0x1fa8 <gf_power_on+0x5c>
    1fcc: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		0000000000001fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
    1fd0: 91000108     	add	x8, x8, #0x0
		0000000000001fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
    1fd4: 2a0003f3     	mov	w19, w0
    1fd8: aa0803e0     	mov	x0, x8
    1fdc: 2a1303e1     	mov	w1, w19
    1fe0: 94000000     	bl	0x1fe0 <gf_power_on+0x94>
		0000000000001fe0:  R_AARCH64_CALL26	_printk
    1fe4: 2a1303e0     	mov	w0, w19
    1fe8: 17fffff0     	b	0x1fa8 <gf_power_on+0x5c>
