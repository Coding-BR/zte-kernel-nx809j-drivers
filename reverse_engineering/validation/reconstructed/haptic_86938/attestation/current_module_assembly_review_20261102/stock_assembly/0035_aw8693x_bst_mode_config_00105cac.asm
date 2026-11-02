
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002e8c <aw8693x_bst_mode_config>:
    2e8c: d503233f     	paciasp
    2e90: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2e94: f9000bf3     	str	x19, [sp, #0x10]
    2e98: 910003fd     	mov	x29, sp
    2e9c: 72001c28     	ands	w8, w1, #0xff
    2ea0: aa0003f3     	mov	x19, x0
    2ea4: 54000220     	b.eq	0x2ee8 <aw8693x_bst_mode_config+0x5c>
    2ea8: 7100051f     	cmp	w8, #0x1
    2eac: 540003a1     	b.ne	0x2f20 <aw8693x_bst_mode_config+0x94>
    2eb0: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b2
    2eb4: 91000000     	add	x0, x0, #0x0
		0000000000002eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b2
    2eb8: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2ebc: 91000021     	add	x1, x1, #0x0
		0000000000002ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2ec0: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    2ec4: 91000063     	add	x3, x3, #0x0
		0000000000002ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    2ec8: 52803f02     	mov	w2, #0x1f8              // =504
    2ecc: 94000000     	bl	0x2ecc <aw8693x_bst_mode_config+0x40>
		0000000000002ecc:  R_AARCH64_CALL26	_printk
    2ed0: aa1303e0     	mov	x0, x19
    2ed4: 528000c1     	mov	w1, #0x6                // =6
    2ed8: 12800402     	mov	w2, #-0x21              // =-33
    2edc: 52800403     	mov	w3, #0x20               // =32
    2ee0: 94000000     	bl	0x2ee0 <aw8693x_bst_mode_config+0x54>
		0000000000002ee0:  R_AARCH64_CALL26	i2c_w_bits
    2ee4: 14000019     	b	0x2f48 <aw8693x_bst_mode_config+0xbc>
    2ee8: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x505
    2eec: 91000000     	add	x0, x0, #0x0
		0000000000002eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x505
    2ef0: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2ef4: 91000021     	add	x1, x1, #0x0
		0000000000002ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2ef8: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    2efc: 91000063     	add	x3, x3, #0x0
		0000000000002efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    2f00: 52803fc2     	mov	w2, #0x1fe              // =510
    2f04: 94000000     	bl	0x2f04 <aw8693x_bst_mode_config+0x78>
		0000000000002f04:  R_AARCH64_CALL26	_printk
    2f08: aa1303e0     	mov	x0, x19
    2f0c: 528000c1     	mov	w1, #0x6                // =6
    2f10: 12800402     	mov	w2, #-0x21              // =-33
    2f14: 2a1f03e3     	mov	w3, wzr
    2f18: 94000000     	bl	0x2f18 <aw8693x_bst_mode_config+0x8c>
		0000000000002f18:  R_AARCH64_CALL26	i2c_w_bits
    2f1c: 1400000b     	b	0x2f48 <aw8693x_bst_mode_config+0xbc>
    2f20: 90000008     	adrp	x8, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2f24: 91000108     	add	x8, x8, #0x0
		0000000000002f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2f28: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d5
    2f2c: 91000000     	add	x0, x0, #0x0
		0000000000002f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d5
    2f30: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    2f34: 91000063     	add	x3, x3, #0x0
		0000000000002f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    2f38: 12001c24     	and	w4, w1, #0xff
    2f3c: aa0803e1     	mov	x1, x8
    2f40: 52804082     	mov	w2, #0x204              // =516
    2f44: 94000000     	bl	0x2f44 <aw8693x_bst_mode_config+0xb8>
		0000000000002f44:  R_AARCH64_CALL26	_printk
    2f48: f9400bf3     	ldr	x19, [sp, #0x10]
    2f4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2f50: d50323bf     	autiasp
    2f54: d65f03c0     	ret
