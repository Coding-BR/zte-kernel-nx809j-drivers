
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cf40 <tpd_set_singlefpgesture>:
    cf40: d503233f     	paciasp
    cf44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cf48: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cf4c: 910003fd     	mov	x29, sp
    cf50: f946dc14     	ldr	x20, [x0, #0xdb8]
    cf54: b9457e88     	ldr	w8, [x20, #0x57c]
    cf58: 7100051f     	cmp	w8, #0x1
    cf5c: 54000141     	b.ne	0xcf84 <tpd_set_singlefpgesture+0x44>
    cf60: b945b688     	ldr	w8, [x20, #0x5b4]
    cf64: b945be89     	ldr	w9, [x20, #0x5bc]
    cf68: 7100003f     	cmp	w1, #0x0
    cf6c: 1a9fd7e2     	cset	w2, gt
    cf70: 2a090108     	orr	w8, w8, w9
    cf74: b905ba82     	str	w2, [x20, #0x5b8]
    cf78: 2a020108     	orr	w8, w8, w2
    cf7c: b905b288     	str	w8, [x20, #0x5b0]
    cf80: 14000007     	b	0xcf9c <tpd_set_singlefpgesture+0x5c>
    cf84: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf84:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    cf88: 91000000     	add	x0, x0, #0x0
		000000000000cf88:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    cf8c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191f9
    cf90: 91000021     	add	x1, x1, #0x0
		000000000000cf90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191f9
    cf94: 94000000     	bl	0xcf94 <tpd_set_singlefpgesture+0x54>
		000000000000cf94:  R_AARCH64_CALL26	_printk
    cf98: b945ba82     	ldr	w2, [x20, #0x5b8]
    cf9c: 90000013     	adrp	x19, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191f9
    cfa0: 91000273     	add	x19, x19, #0x0
		000000000000cfa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191f9
    cfa4: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cfa4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3526D
    cfa8: 91000000     	add	x0, x0, #0x0
		000000000000cfa8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3526D
    cfac: aa1303e1     	mov	x1, x19
    cfb0: 94000000     	bl	0xcfb0 <tpd_set_singlefpgesture+0x70>
		000000000000cfb0:  R_AARCH64_CALL26	_printk
    cfb4: b945b682     	ldr	w2, [x20, #0x5b4]
    cfb8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cfb8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33365
    cfbc: 91000000     	add	x0, x0, #0x0
		000000000000cfbc:  R_AARCH64_ADD_ABS_LO12_NC	unk_33365
    cfc0: aa1303e1     	mov	x1, x19
    cfc4: 94000000     	bl	0xcfc4 <tpd_set_singlefpgesture+0x84>
		000000000000cfc4:  R_AARCH64_CALL26	_printk
    cfc8: b945b282     	ldr	w2, [x20, #0x5b0]
    cfcc: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cfcc:  R_AARCH64_ADR_PREL_PG_HI21	unk_35831
    cfd0: 91000000     	add	x0, x0, #0x0
		000000000000cfd0:  R_AARCH64_ADD_ABS_LO12_NC	unk_35831
    cfd4: aa1303e1     	mov	x1, x19
    cfd8: 94000000     	bl	0xcfd8 <tpd_set_singlefpgesture+0x98>
		000000000000cfd8:  R_AARCH64_CALL26	_printk
    cfdc: 2a1f03e0     	mov	w0, wzr
    cfe0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cfe4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cfe8: d50323bf     	autiasp
    cfec: d65f03c0     	ret
