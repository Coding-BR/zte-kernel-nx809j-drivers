
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cee4 <tpd_set_singlefpgesture>:
    cee4: d503233f     	paciasp
    cee8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ceec: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cef0: 910003fd     	mov	x29, sp
    cef4: f946dc14     	ldr	x20, [x0, #0xdb8]
    cef8: b9457e88     	ldr	w8, [x20, #0x57c]
    cefc: 7100051f     	cmp	w8, #0x1
    cf00: 54000141     	b.ne	0xcf28 <tpd_set_singlefpgesture+0x44>
    cf04: b945b688     	ldr	w8, [x20, #0x5b4]
    cf08: b945be89     	ldr	w9, [x20, #0x5bc]
    cf0c: 7100003f     	cmp	w1, #0x0
    cf10: 1a9fd7e2     	cset	w2, gt
    cf14: 2a090108     	orr	w8, w8, w9
    cf18: b905ba82     	str	w2, [x20, #0x5b8]
    cf1c: 2a020108     	orr	w8, w8, w2
    cf20: b905b288     	str	w8, [x20, #0x5b0]
    cf24: 14000007     	b	0xcf40 <tpd_set_singlefpgesture+0x5c>
    cf28: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf28:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    cf2c: 91000000     	add	x0, x0, #0x0
		000000000000cf2c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    cf30: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191f9
    cf34: 91000021     	add	x1, x1, #0x0
		000000000000cf34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191f9
    cf38: 94000000     	bl	0xcf38 <tpd_set_singlefpgesture+0x54>
		000000000000cf38:  R_AARCH64_CALL26	_printk
    cf3c: b945ba82     	ldr	w2, [x20, #0x5b8]
    cf40: 90000013     	adrp	x19, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191f9
    cf44: 91000273     	add	x19, x19, #0x0
		000000000000cf44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191f9
    cf48: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf48:  R_AARCH64_ADR_PREL_PG_HI21	unk_3526D
    cf4c: 91000000     	add	x0, x0, #0x0
		000000000000cf4c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3526D
    cf50: aa1303e1     	mov	x1, x19
    cf54: 94000000     	bl	0xcf54 <tpd_set_singlefpgesture+0x70>
		000000000000cf54:  R_AARCH64_CALL26	_printk
    cf58: b945b682     	ldr	w2, [x20, #0x5b4]
    cf5c: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf5c:  R_AARCH64_ADR_PREL_PG_HI21	unk_33365
    cf60: 91000000     	add	x0, x0, #0x0
		000000000000cf60:  R_AARCH64_ADD_ABS_LO12_NC	unk_33365
    cf64: aa1303e1     	mov	x1, x19
    cf68: 94000000     	bl	0xcf68 <tpd_set_singlefpgesture+0x84>
		000000000000cf68:  R_AARCH64_CALL26	_printk
    cf6c: b945b282     	ldr	w2, [x20, #0x5b0]
    cf70: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf70:  R_AARCH64_ADR_PREL_PG_HI21	unk_35831
    cf74: 91000000     	add	x0, x0, #0x0
		000000000000cf74:  R_AARCH64_ADD_ABS_LO12_NC	unk_35831
    cf78: aa1303e1     	mov	x1, x19
    cf7c: 94000000     	bl	0xcf7c <tpd_set_singlefpgesture+0x98>
		000000000000cf7c:  R_AARCH64_CALL26	_printk
    cf80: 2a1f03e0     	mov	w0, wzr
    cf84: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cf88: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cf8c: d50323bf     	autiasp
    cf90: d65f03c0     	ret
