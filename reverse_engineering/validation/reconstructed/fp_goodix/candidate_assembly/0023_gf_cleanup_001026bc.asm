
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e90 <gf_cleanup>:
    1e90: d503233f     	paciasp
    1e94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1e98: f9000bf3     	str	x19, [sp, #0x10]
    1e9c: 910003fd     	mov	x29, sp
    1ea0: aa0003f3     	mov	x19, x0
    1ea4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1288
    1ea8: 91000000     	add	x0, x0, #0x0
		0000000000001ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1288
    1eac: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1eb0: 91000021     	add	x1, x1, #0x0
		0000000000001eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1eb4: 94000000     	bl	0x1eb4 <gf_cleanup+0x24>
		0000000000001eb4:  R_AARCH64_CALL26	_printk
    1eb8: b9403e60     	ldr	w0, [x19, #0x3c]
    1ebc: 36f80140     	tbz	w0, #0x1f, 0x1ee4 <gf_cleanup+0x54>
    1ec0: b9404260     	ldr	w0, [x19, #0x40]
    1ec4: 36f801c0     	tbz	w0, #0x1f, 0x1efc <gf_cleanup+0x6c>
    1ec8: f9404e60     	ldr	x0, [x19, #0x98]
    1ecc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1ed0: 54000209     	b.ls	0x1f10 <gf_cleanup+0x80>
    1ed4: f9400bf3     	ldr	x19, [sp, #0x10]
    1ed8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1edc: d50323bf     	autiasp
    1ee0: d65f03c0     	ret
    1ee4: 94000000     	bl	0x1ee4 <gf_cleanup+0x54>
		0000000000001ee4:  R_AARCH64_CALL26	gpio_free
    1ee8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d5
    1eec: 91000000     	add	x0, x0, #0x0
		0000000000001eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d5
    1ef0: 94000000     	bl	0x1ef0 <gf_cleanup+0x60>
		0000000000001ef0:  R_AARCH64_CALL26	_printk
    1ef4: b9404260     	ldr	w0, [x19, #0x40]
    1ef8: 37fffe80     	tbnz	w0, #0x1f, 0x1ec8 <gf_cleanup+0x38>
    1efc: 94000000     	bl	0x1efc <gf_cleanup+0x6c>
		0000000000001efc:  R_AARCH64_CALL26	gpio_free
    1f00: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc43
    1f04: 91000000     	add	x0, x0, #0x0
		0000000000001f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc43
    1f08: 94000000     	bl	0x1f08 <gf_cleanup+0x78>
		0000000000001f08:  R_AARCH64_CALL26	_printk
    1f0c: 17ffffef     	b	0x1ec8 <gf_cleanup+0x38>
    1f10: 94000000     	bl	0x1f10 <gf_cleanup+0x80>
		0000000000001f10:  R_AARCH64_CALL26	regulator_is_enabled
    1f14: 35000080     	cbnz	w0, 0x1f24 <gf_cleanup+0x94>
    1f18: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1225
    1f1c: 91000000     	add	x0, x0, #0x0
		0000000000001f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1225
    1f20: 14000005     	b	0x1f34 <gf_cleanup+0xa4>
    1f24: f9404e60     	ldr	x0, [x19, #0x98]
    1f28: 94000000     	bl	0x1f28 <gf_cleanup+0x98>
		0000000000001f28:  R_AARCH64_CALL26	regulator_disable
    1f2c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x129c
    1f30: 91000000     	add	x0, x0, #0x0
		0000000000001f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x129c
    1f34: 94000000     	bl	0x1f34 <gf_cleanup+0xa4>
		0000000000001f34:  R_AARCH64_CALL26	_printk
    1f38: 17ffffe7     	b	0x1ed4 <gf_cleanup+0x44>
