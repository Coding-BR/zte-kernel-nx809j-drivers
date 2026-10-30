
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ce30 <tpd_set_singleaodgesture>:
    ce30: d503233f     	paciasp
    ce34: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ce38: a9014ff4     	stp	x20, x19, [sp, #0x10]
    ce3c: 910003fd     	mov	x29, sp
    ce40: f946dc14     	ldr	x20, [x0, #0xdb8]
    ce44: b9457e88     	ldr	w8, [x20, #0x57c]
    ce48: 7100051f     	cmp	w8, #0x1
    ce4c: 54000141     	b.ne	0xce74 <tpd_set_singleaodgesture+0x44>
    ce50: b945ba82     	ldr	w2, [x20, #0x5b8]
    ce54: b945be88     	ldr	w8, [x20, #0x5bc]
    ce58: 7100003f     	cmp	w1, #0x0
    ce5c: 1a9fd7e9     	cset	w9, gt
    ce60: 2a080048     	orr	w8, w2, w8
    ce64: b905b689     	str	w9, [x20, #0x5b4]
    ce68: 2a090108     	orr	w8, w8, w9
    ce6c: b905b288     	str	w8, [x20, #0x5b0]
    ce70: 14000007     	b	0xce8c <tpd_set_singleaodgesture+0x5c>
    ce74: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce74:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    ce78: 91000000     	add	x0, x0, #0x0
		000000000000ce78:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    ce7c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17486
    ce80: 91000021     	add	x1, x1, #0x0
		000000000000ce80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17486
    ce84: 94000000     	bl	0xce84 <tpd_set_singleaodgesture+0x54>
		000000000000ce84:  R_AARCH64_CALL26	_printk
    ce88: b945ba82     	ldr	w2, [x20, #0x5b8]
    ce8c: 90000013     	adrp	x19, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17486
    ce90: 91000273     	add	x19, x19, #0x0
		000000000000ce90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17486
    ce94: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce94:  R_AARCH64_ADR_PREL_PG_HI21	unk_3526D
    ce98: 91000000     	add	x0, x0, #0x0
		000000000000ce98:  R_AARCH64_ADD_ABS_LO12_NC	unk_3526D
    ce9c: aa1303e1     	mov	x1, x19
    cea0: 94000000     	bl	0xcea0 <tpd_set_singleaodgesture+0x70>
		000000000000cea0:  R_AARCH64_CALL26	_printk
    cea4: b945b682     	ldr	w2, [x20, #0x5b4]
    cea8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cea8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33365
    ceac: 91000000     	add	x0, x0, #0x0
		000000000000ceac:  R_AARCH64_ADD_ABS_LO12_NC	unk_33365
    ceb0: aa1303e1     	mov	x1, x19
    ceb4: 94000000     	bl	0xceb4 <tpd_set_singleaodgesture+0x84>
		000000000000ceb4:  R_AARCH64_CALL26	_printk
    ceb8: b945b282     	ldr	w2, [x20, #0x5b0]
    cebc: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cebc:  R_AARCH64_ADR_PREL_PG_HI21	unk_35831
    cec0: 91000000     	add	x0, x0, #0x0
		000000000000cec0:  R_AARCH64_ADD_ABS_LO12_NC	unk_35831
    cec4: aa1303e1     	mov	x1, x19
    cec8: 94000000     	bl	0xcec8 <tpd_set_singleaodgesture+0x98>
		000000000000cec8:  R_AARCH64_CALL26	_printk
    cecc: 2a1f03e0     	mov	w0, wzr
    ced0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    ced4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    ced8: d50323bf     	autiasp
    cedc: d65f03c0     	ret
