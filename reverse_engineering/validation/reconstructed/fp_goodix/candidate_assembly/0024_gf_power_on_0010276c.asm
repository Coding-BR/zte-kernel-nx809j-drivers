
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f40 <gf_power_on>:
    1f40: d503233f     	paciasp
    1f44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1f48: f9000bf3     	str	x19, [sp, #0x10]
    1f4c: 910003fd     	mov	x29, sp
    1f50: b40000a0     	cbz	x0, 0x1f64 <gf_power_on+0x24>
    1f54: f9404c08     	ldr	x8, [x0, #0x98]
    1f58: aa0003f3     	mov	x19, x0
    1f5c: b13ffd1f     	cmn	x8, #0xfff
    1f60: 540000c3     	b.lo	0x1f78 <gf_power_on+0x38>
    1f64: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
    1f68: 91000000     	add	x0, x0, #0x0
		0000000000001f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
    1f6c: 94000000     	bl	0x1f6c <gf_power_on+0x2c>
		0000000000001f6c:  R_AARCH64_CALL26	_printk
    1f70: 12800240     	mov	w0, #-0x13              // =-19
    1f74: 1400000a     	b	0x1f9c <gf_power_on+0x5c>
    1f78: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1152
    1f7c: 91000000     	add	x0, x0, #0x0
		0000000000001f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1152
    1f80: 94000000     	bl	0x1f80 <gf_power_on+0x40>
		0000000000001f80:  R_AARCH64_CALL26	_printk
    1f84: f9404e60     	ldr	x0, [x19, #0x98]
    1f88: 94000000     	bl	0x1f88 <gf_power_on+0x48>
		0000000000001f88:  R_AARCH64_CALL26	regulator_is_enabled
    1f8c: 35000100     	cbnz	w0, 0x1fac <gf_power_on+0x6c>
    1f90: f9404e60     	ldr	x0, [x19, #0x98]
    1f94: 94000000     	bl	0x1f94 <gf_power_on+0x54>
		0000000000001f94:  R_AARCH64_CALL26	regulator_enable
    1f98: 35000140     	cbnz	w0, 0x1fc0 <gf_power_on+0x80>
    1f9c: f9400bf3     	ldr	x19, [sp, #0x10]
    1fa0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1fa4: d50323bf     	autiasp
    1fa8: d65f03c0     	ret
    1fac: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46
    1fb0: 91000000     	add	x0, x0, #0x0
		0000000000001fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46
    1fb4: 94000000     	bl	0x1fb4 <gf_power_on+0x74>
		0000000000001fb4:  R_AARCH64_CALL26	_printk
    1fb8: 2a1f03e0     	mov	w0, wzr
    1fbc: 17fffff8     	b	0x1f9c <gf_power_on+0x5c>
    1fc0: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		0000000000001fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
    1fc4: 91000108     	add	x8, x8, #0x0
		0000000000001fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
    1fc8: 2a0003f3     	mov	w19, w0
    1fcc: aa0803e0     	mov	x0, x8
    1fd0: 2a1303e1     	mov	w1, w19
    1fd4: 94000000     	bl	0x1fd4 <gf_power_on+0x94>
		0000000000001fd4:  R_AARCH64_CALL26	_printk
    1fd8: 2a1303e0     	mov	w0, w19
    1fdc: 17fffff0     	b	0x1f9c <gf_power_on+0x5c>
