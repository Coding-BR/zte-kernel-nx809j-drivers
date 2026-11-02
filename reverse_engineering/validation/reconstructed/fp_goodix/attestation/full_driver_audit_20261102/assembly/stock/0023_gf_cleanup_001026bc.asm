
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e9c <gf_cleanup>:
    1e9c: d503233f     	paciasp
    1ea0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1ea4: f9000bf3     	str	x19, [sp, #0x10]
    1ea8: 910003fd     	mov	x29, sp
    1eac: aa0003f3     	mov	x19, x0
    1eb0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1288
    1eb4: 91000000     	add	x0, x0, #0x0
		0000000000001eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1288
    1eb8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1ebc: 91000021     	add	x1, x1, #0x0
		0000000000001ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1ec0: 94000000     	bl	0x1ec0 <gf_cleanup+0x24>
		0000000000001ec0:  R_AARCH64_CALL26	_printk
    1ec4: b9403e60     	ldr	w0, [x19, #0x3c]
    1ec8: 36f80140     	tbz	w0, #0x1f, 0x1ef0 <gf_cleanup+0x54>
    1ecc: b9404260     	ldr	w0, [x19, #0x40]
    1ed0: 36f801c0     	tbz	w0, #0x1f, 0x1f08 <gf_cleanup+0x6c>
    1ed4: f9404e60     	ldr	x0, [x19, #0x98]
    1ed8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1edc: 54000209     	b.ls	0x1f1c <gf_cleanup+0x80>
    1ee0: f9400bf3     	ldr	x19, [sp, #0x10]
    1ee4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1ee8: d50323bf     	autiasp
    1eec: d65f03c0     	ret
    1ef0: 94000000     	bl	0x1ef0 <gf_cleanup+0x54>
		0000000000001ef0:  R_AARCH64_CALL26	gpio_free
    1ef4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d5
    1ef8: 91000000     	add	x0, x0, #0x0
		0000000000001ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d5
    1efc: 94000000     	bl	0x1efc <gf_cleanup+0x60>
		0000000000001efc:  R_AARCH64_CALL26	_printk
    1f00: b9404260     	ldr	w0, [x19, #0x40]
    1f04: 37fffe80     	tbnz	w0, #0x1f, 0x1ed4 <gf_cleanup+0x38>
    1f08: 94000000     	bl	0x1f08 <gf_cleanup+0x6c>
		0000000000001f08:  R_AARCH64_CALL26	gpio_free
    1f0c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc43
    1f10: 91000000     	add	x0, x0, #0x0
		0000000000001f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc43
    1f14: 94000000     	bl	0x1f14 <gf_cleanup+0x78>
		0000000000001f14:  R_AARCH64_CALL26	_printk
    1f18: 17ffffef     	b	0x1ed4 <gf_cleanup+0x38>
    1f1c: 94000000     	bl	0x1f1c <gf_cleanup+0x80>
		0000000000001f1c:  R_AARCH64_CALL26	regulator_is_enabled
    1f20: 35000080     	cbnz	w0, 0x1f30 <gf_cleanup+0x94>
    1f24: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1225
    1f28: 91000000     	add	x0, x0, #0x0
		0000000000001f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1225
    1f2c: 14000005     	b	0x1f40 <gf_cleanup+0xa4>
    1f30: f9404e60     	ldr	x0, [x19, #0x98]
    1f34: 94000000     	bl	0x1f34 <gf_cleanup+0x98>
		0000000000001f34:  R_AARCH64_CALL26	regulator_disable
    1f38: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x129c
    1f3c: 91000000     	add	x0, x0, #0x0
		0000000000001f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x129c
    1f40: 94000000     	bl	0x1f40 <gf_cleanup+0xa4>
		0000000000001f40:  R_AARCH64_CALL26	_printk
    1f44: 17ffffe7     	b	0x1ee0 <gf_cleanup+0x44>
