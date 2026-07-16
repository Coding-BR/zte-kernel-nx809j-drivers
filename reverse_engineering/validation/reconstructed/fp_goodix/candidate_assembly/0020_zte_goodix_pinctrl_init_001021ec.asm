
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019c0 <zte_goodix_pinctrl_init>:
    19c0: d503233f     	paciasp
    19c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    19c8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    19cc: 910003fd     	mov	x29, sp
    19d0: aa0003f3     	mov	x19, x0
    19d4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000019d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x802
    19d8: 91000000     	add	x0, x0, #0x0
		00000000000019d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x802
    19dc: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		00000000000019dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1119
    19e0: 91000021     	add	x1, x1, #0x0
		00000000000019e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1119
    19e4: 94000000     	bl	0x19e4 <zte_goodix_pinctrl_init+0x24>
		00000000000019e4:  R_AARCH64_CALL26	_printk
    19e8: f9400e68     	ldr	x8, [x19, #0x18]
    19ec: 91004100     	add	x0, x8, #0x10
    19f0: 94000000     	bl	0x19f0 <zte_goodix_pinctrl_init+0x30>
		00000000000019f0:  R_AARCH64_CALL26	devm_pinctrl_get
    19f4: aa1303f4     	mov	x20, x19
    19f8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e
    19fc: 91000021     	add	x1, x1, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e
    1a00: f8080e80     	str	x0, [x20, #0x80]!
    1a04: b40003a0     	cbz	x0, 0x1a78 <zte_goodix_pinctrl_init+0xb8>
    1a08: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1a0c: 54000368     	b.hi	0x1a78 <zte_goodix_pinctrl_init+0xb8>
    1a10: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    1a14: 91000021     	add	x1, x1, #0x0
		0000000000001a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    1a18: 94000000     	bl	0x1a18 <zte_goodix_pinctrl_init+0x58>
		0000000000001a18:  R_AARCH64_CALL26	pinctrl_lookup_state
    1a1c: aa1303f4     	mov	x20, x19
    1a20: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce7
    1a24: 91000021     	add	x1, x1, #0x0
		0000000000001a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce7
    1a28: f8088e80     	str	x0, [x20, #0x88]!
    1a2c: b4000260     	cbz	x0, 0x1a78 <zte_goodix_pinctrl_init+0xb8>
    1a30: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1a34: 54000228     	b.hi	0x1a78 <zte_goodix_pinctrl_init+0xb8>
    1a38: f9404260     	ldr	x0, [x19, #0x80]
    1a3c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    1a40: 91000021     	add	x1, x1, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1a44: 94000000     	bl	0x1a44 <zte_goodix_pinctrl_init+0x84>
		0000000000001a44:  R_AARCH64_CALL26	pinctrl_lookup_state
    1a48: aa1303f4     	mov	x20, x19
    1a4c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x291
    1a50: 91000021     	add	x1, x1, #0x0
		0000000000001a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x291
    1a54: f8090e80     	str	x0, [x20, #0x90]!
    1a58: b4000100     	cbz	x0, 0x1a78 <zte_goodix_pinctrl_init+0xb8>
    1a5c: b13ffc1f     	cmn	x0, #0xfff
    1a60: 540000c2     	b.hs	0x1a78 <zte_goodix_pinctrl_init+0xb8>
    1a64: 2a1f03e0     	mov	w0, wzr
    1a68: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1a6c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1a70: d50323bf     	autiasp
    1a74: d65f03c0     	ret
    1a78: f9400e68     	ldr	x8, [x19, #0x18]
    1a7c: 91004100     	add	x0, x8, #0x10
    1a80: 94000000     	bl	0x1a80 <zte_goodix_pinctrl_init+0xc0>
		0000000000001a80:  R_AARCH64_CALL26	_dev_err
    1a84: b9400280     	ldr	w0, [x20]
    1a88: f900427f     	str	xzr, [x19, #0x80]
    1a8c: 17fffff7     	b	0x1a68 <zte_goodix_pinctrl_init+0xa8>
