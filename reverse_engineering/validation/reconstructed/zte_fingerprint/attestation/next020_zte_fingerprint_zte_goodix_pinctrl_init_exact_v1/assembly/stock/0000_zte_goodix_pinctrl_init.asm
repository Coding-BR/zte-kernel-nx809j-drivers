
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019cc <zte_goodix_pinctrl_init>:
    19cc: d503233f     	paciasp
    19d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    19d4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    19d8: 910003fd     	mov	x29, sp
    19dc: aa0003f3     	mov	x19, x0
    19e0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000019e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88c
    19e4: 91000000     	add	x0, x0, #0x0
		00000000000019e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88c
    19e8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		00000000000019e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
    19ec: 91000021     	add	x1, x1, #0x0
		00000000000019ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
    19f0: 94000000     	bl	0x19f0 <zte_goodix_pinctrl_init+0x24>
		00000000000019f0:  R_AARCH64_CALL26	_printk
    19f4: f9400e68     	ldr	x8, [x19, #0x18]
    19f8: 91004100     	add	x0, x8, #0x10
    19fc: 94000000     	bl	0x19fc <zte_goodix_pinctrl_init+0x30>
		00000000000019fc:  R_AARCH64_CALL26	devm_pinctrl_get
    1a00: aa1303f4     	mov	x20, x19
    1a04: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x476
    1a08: 91000021     	add	x1, x1, #0x0
		0000000000001a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x476
    1a0c: f8080e80     	str	x0, [x20, #0x80]!
    1a10: b40003a0     	cbz	x0, 0x1a84 <zte_goodix_pinctrl_init+0xb8>
    1a14: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1a18: 54000368     	b.hi	0x1a84 <zte_goodix_pinctrl_init+0xb8>
    1a1c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x151a
    1a20: 91000021     	add	x1, x1, #0x0
		0000000000001a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x151a
    1a24: 94000000     	bl	0x1a24 <zte_goodix_pinctrl_init+0x58>
		0000000000001a24:  R_AARCH64_CALL26	pinctrl_lookup_state
    1a28: aa1303f4     	mov	x20, x19
    1a2c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe12
    1a30: 91000021     	add	x1, x1, #0x0
		0000000000001a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe12
    1a34: f8088e80     	str	x0, [x20, #0x88]!
    1a38: b4000260     	cbz	x0, 0x1a84 <zte_goodix_pinctrl_init+0xb8>
    1a3c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1a40: 54000228     	b.hi	0x1a84 <zte_goodix_pinctrl_init+0xb8>
    1a44: f9404260     	ldr	x0, [x19, #0x80]
    1a48: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1528
    1a4c: 91000021     	add	x1, x1, #0x0
		0000000000001a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1528
    1a50: 94000000     	bl	0x1a50 <zte_goodix_pinctrl_init+0x84>
		0000000000001a50:  R_AARCH64_CALL26	pinctrl_lookup_state
    1a54: aa1303f4     	mov	x20, x19
    1a58: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ac
    1a5c: 91000021     	add	x1, x1, #0x0
		0000000000001a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ac
    1a60: f8090e80     	str	x0, [x20, #0x90]!
    1a64: b4000100     	cbz	x0, 0x1a84 <zte_goodix_pinctrl_init+0xb8>
    1a68: b13ffc1f     	cmn	x0, #0xfff
    1a6c: 540000c2     	b.hs	0x1a84 <zte_goodix_pinctrl_init+0xb8>
    1a70: 2a1f03e0     	mov	w0, wzr
    1a74: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1a78: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1a7c: d50323bf     	autiasp
    1a80: d65f03c0     	ret
    1a84: f9400e68     	ldr	x8, [x19, #0x18]
    1a88: 91004100     	add	x0, x8, #0x10
    1a8c: 94000000     	bl	0x1a8c <zte_goodix_pinctrl_init+0xc0>
		0000000000001a8c:  R_AARCH64_CALL26	_dev_err
    1a90: b9400280     	ldr	w0, [x20]
    1a94: f900427f     	str	xzr, [x19, #0x80]
    1a98: 17fffff7     	b	0x1a74 <zte_goodix_pinctrl_init+0xa8>
