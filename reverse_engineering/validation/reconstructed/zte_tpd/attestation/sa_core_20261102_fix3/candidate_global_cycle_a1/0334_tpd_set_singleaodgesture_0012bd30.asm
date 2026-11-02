
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ce8c <tpd_set_singleaodgesture>:
    ce8c: d503233f     	paciasp
    ce90: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ce94: a9014ff4     	stp	x20, x19, [sp, #0x10]
    ce98: 910003fd     	mov	x29, sp
    ce9c: f946dc14     	ldr	x20, [x0, #0xdb8]
    cea0: b9457e88     	ldr	w8, [x20, #0x57c]
    cea4: 7100051f     	cmp	w8, #0x1
    cea8: 54000141     	b.ne	0xced0 <tpd_set_singleaodgesture+0x44>
    ceac: b945ba82     	ldr	w2, [x20, #0x5b8]
    ceb0: b945be88     	ldr	w8, [x20, #0x5bc]
    ceb4: 7100003f     	cmp	w1, #0x0
    ceb8: 1a9fd7e9     	cset	w9, gt
    cebc: 2a080048     	orr	w8, w2, w8
    cec0: b905b689     	str	w9, [x20, #0x5b4]
    cec4: 2a090108     	orr	w8, w8, w9
    cec8: b905b288     	str	w8, [x20, #0x5b0]
    cecc: 14000007     	b	0xcee8 <tpd_set_singleaodgesture+0x5c>
    ced0: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ced0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    ced4: 91000000     	add	x0, x0, #0x0
		000000000000ced4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    ced8: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ced8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17486
    cedc: 91000021     	add	x1, x1, #0x0
		000000000000cedc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17486
    cee0: 94000000     	bl	0xcee0 <tpd_set_singleaodgesture+0x54>
		000000000000cee0:  R_AARCH64_CALL26	_printk
    cee4: b945ba82     	ldr	w2, [x20, #0x5b8]
    cee8: 90000013     	adrp	x19, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17486
    ceec: 91000273     	add	x19, x19, #0x0
		000000000000ceec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17486
    cef0: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cef0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3526D
    cef4: 91000000     	add	x0, x0, #0x0
		000000000000cef4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3526D
    cef8: aa1303e1     	mov	x1, x19
    cefc: 94000000     	bl	0xcefc <tpd_set_singleaodgesture+0x70>
		000000000000cefc:  R_AARCH64_CALL26	_printk
    cf00: b945b682     	ldr	w2, [x20, #0x5b4]
    cf04: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf04:  R_AARCH64_ADR_PREL_PG_HI21	unk_33365
    cf08: 91000000     	add	x0, x0, #0x0
		000000000000cf08:  R_AARCH64_ADD_ABS_LO12_NC	unk_33365
    cf0c: aa1303e1     	mov	x1, x19
    cf10: 94000000     	bl	0xcf10 <tpd_set_singleaodgesture+0x84>
		000000000000cf10:  R_AARCH64_CALL26	_printk
    cf14: b945b282     	ldr	w2, [x20, #0x5b0]
    cf18: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cf18:  R_AARCH64_ADR_PREL_PG_HI21	unk_35831
    cf1c: 91000000     	add	x0, x0, #0x0
		000000000000cf1c:  R_AARCH64_ADD_ABS_LO12_NC	unk_35831
    cf20: aa1303e1     	mov	x1, x19
    cf24: 94000000     	bl	0xcf24 <tpd_set_singleaodgesture+0x98>
		000000000000cf24:  R_AARCH64_CALL26	_printk
    cf28: 2a1f03e0     	mov	w0, wzr
    cf2c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cf30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cf34: d50323bf     	autiasp
    cf38: d65f03c0     	ret
