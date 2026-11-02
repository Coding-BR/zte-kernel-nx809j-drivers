
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cff4 <tpd_set_singlegamegesture>:
    cff4: d503233f     	paciasp
    cff8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cffc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    d000: 910003fd     	mov	x29, sp
    d004: f946dc14     	ldr	x20, [x0, #0xdb8]
    d008: b9457e88     	ldr	w8, [x20, #0x57c]
    d00c: 7100051f     	cmp	w8, #0x1
    d010: 54000141     	b.ne	0xd038 <tpd_set_singlegamegesture+0x44>
    d014: b945b688     	ldr	w8, [x20, #0x5b4]
    d018: b945ba82     	ldr	w2, [x20, #0x5b8]
    d01c: 7100003f     	cmp	w1, #0x0
    d020: 1a9fd7e9     	cset	w9, gt
    d024: 2a020108     	orr	w8, w8, w2
    d028: b905be89     	str	w9, [x20, #0x5bc]
    d02c: 2a090108     	orr	w8, w8, w9
    d030: b905b288     	str	w8, [x20, #0x5b0]
    d034: 14000007     	b	0xd050 <tpd_set_singlegamegesture+0x5c>
    d038: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d038:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    d03c: 91000000     	add	x0, x0, #0x0
		000000000000d03c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    d040: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ee8
    d044: 91000021     	add	x1, x1, #0x0
		000000000000d044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ee8
    d048: 94000000     	bl	0xd048 <tpd_set_singlegamegesture+0x54>
		000000000000d048:  R_AARCH64_CALL26	_printk
    d04c: b945ba82     	ldr	w2, [x20, #0x5b8]
    d050: 90000013     	adrp	x19, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ee8
    d054: 91000273     	add	x19, x19, #0x0
		000000000000d054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ee8
    d058: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d058:  R_AARCH64_ADR_PREL_PG_HI21	unk_3526D
    d05c: 91000000     	add	x0, x0, #0x0
		000000000000d05c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3526D
    d060: aa1303e1     	mov	x1, x19
    d064: 94000000     	bl	0xd064 <tpd_set_singlegamegesture+0x70>
		000000000000d064:  R_AARCH64_CALL26	_printk
    d068: b945b682     	ldr	w2, [x20, #0x5b4]
    d06c: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d06c:  R_AARCH64_ADR_PREL_PG_HI21	unk_33365
    d070: 91000000     	add	x0, x0, #0x0
		000000000000d070:  R_AARCH64_ADD_ABS_LO12_NC	unk_33365
    d074: aa1303e1     	mov	x1, x19
    d078: 94000000     	bl	0xd078 <tpd_set_singlegamegesture+0x84>
		000000000000d078:  R_AARCH64_CALL26	_printk
    d07c: b945be82     	ldr	w2, [x20, #0x5bc]
    d080: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d080:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C339
    d084: 91000000     	add	x0, x0, #0x0
		000000000000d084:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C339
    d088: aa1303e1     	mov	x1, x19
    d08c: 94000000     	bl	0xd08c <tpd_set_singlegamegesture+0x98>
		000000000000d08c:  R_AARCH64_CALL26	_printk
    d090: b945b282     	ldr	w2, [x20, #0x5b0]
    d094: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d094:  R_AARCH64_ADR_PREL_PG_HI21	unk_35831
    d098: 91000000     	add	x0, x0, #0x0
		000000000000d098:  R_AARCH64_ADD_ABS_LO12_NC	unk_35831
    d09c: aa1303e1     	mov	x1, x19
    d0a0: 94000000     	bl	0xd0a0 <tpd_set_singlegamegesture+0xac>
		000000000000d0a0:  R_AARCH64_CALL26	_printk
    d0a4: 2a1f03e0     	mov	w0, wzr
    d0a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    d0ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d0b0: d50323bf     	autiasp
    d0b4: d65f03c0     	ret
