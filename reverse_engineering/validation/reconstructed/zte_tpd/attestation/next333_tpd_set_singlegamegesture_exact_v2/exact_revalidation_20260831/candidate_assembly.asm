
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cf98 <tpd_set_singlegamegesture>:
    cf98: d503233f     	paciasp
    cf9c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cfa0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cfa4: 910003fd     	mov	x29, sp
    cfa8: f946dc14     	ldr	x20, [x0, #0xdb8]
    cfac: b9457e88     	ldr	w8, [x20, #0x57c]
    cfb0: 7100051f     	cmp	w8, #0x1
    cfb4: 54000141     	b.ne	0xcfdc <tpd_set_singlegamegesture+0x44>
    cfb8: b945b688     	ldr	w8, [x20, #0x5b4]
    cfbc: b945ba82     	ldr	w2, [x20, #0x5b8]
    cfc0: 7100003f     	cmp	w1, #0x0
    cfc4: 1a9fd7e9     	cset	w9, gt
    cfc8: 2a020108     	orr	w8, w8, w2
    cfcc: b905be89     	str	w9, [x20, #0x5bc]
    cfd0: 2a090108     	orr	w8, w8, w9
    cfd4: b905b288     	str	w8, [x20, #0x5b0]
    cfd8: 14000007     	b	0xcff4 <tpd_set_singlegamegesture+0x5c>
    cfdc: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cfdc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    cfe0: 91000000     	add	x0, x0, #0x0
		000000000000cfe0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    cfe4: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cfe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ee8
    cfe8: 91000021     	add	x1, x1, #0x0
		000000000000cfe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ee8
    cfec: 94000000     	bl	0xcfec <tpd_set_singlegamegesture+0x54>
		000000000000cfec:  R_AARCH64_CALL26	_printk
    cff0: b945ba82     	ldr	w2, [x20, #0x5b8]
    cff4: 90000013     	adrp	x19, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ee8
    cff8: 91000273     	add	x19, x19, #0x0
		000000000000cff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ee8
    cffc: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cffc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3526D
    d000: 91000000     	add	x0, x0, #0x0
		000000000000d000:  R_AARCH64_ADD_ABS_LO12_NC	unk_3526D
    d004: aa1303e1     	mov	x1, x19
    d008: 94000000     	bl	0xd008 <tpd_set_singlegamegesture+0x70>
		000000000000d008:  R_AARCH64_CALL26	_printk
    d00c: b945b682     	ldr	w2, [x20, #0x5b4]
    d010: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d010:  R_AARCH64_ADR_PREL_PG_HI21	unk_33365
    d014: 91000000     	add	x0, x0, #0x0
		000000000000d014:  R_AARCH64_ADD_ABS_LO12_NC	unk_33365
    d018: aa1303e1     	mov	x1, x19
    d01c: 94000000     	bl	0xd01c <tpd_set_singlegamegesture+0x84>
		000000000000d01c:  R_AARCH64_CALL26	_printk
    d020: b945be82     	ldr	w2, [x20, #0x5bc]
    d024: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d024:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C339
    d028: 91000000     	add	x0, x0, #0x0
		000000000000d028:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C339
    d02c: aa1303e1     	mov	x1, x19
    d030: 94000000     	bl	0xd030 <tpd_set_singlegamegesture+0x98>
		000000000000d030:  R_AARCH64_CALL26	_printk
    d034: b945b282     	ldr	w2, [x20, #0x5b0]
    d038: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d038:  R_AARCH64_ADR_PREL_PG_HI21	unk_35831
    d03c: 91000000     	add	x0, x0, #0x0
		000000000000d03c:  R_AARCH64_ADD_ABS_LO12_NC	unk_35831
    d040: aa1303e1     	mov	x1, x19
    d044: 94000000     	bl	0xd044 <tpd_set_singlegamegesture+0xac>
		000000000000d044:  R_AARCH64_CALL26	_printk
    d048: 2a1f03e0     	mov	w0, wzr
    d04c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    d050: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d054: d50323bf     	autiasp
    d058: d65f03c0     	ret
