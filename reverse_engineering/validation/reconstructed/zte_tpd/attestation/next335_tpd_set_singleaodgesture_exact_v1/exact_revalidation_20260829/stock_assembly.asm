
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254a8 <tpd_set_singleaodgesture>:
   254a8: d503233f     	paciasp
   254ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   254b0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   254b4: 910003fd     	mov	x29, sp
   254b8: f946dc14     	ldr	x20, [x0, #0xdb8]
   254bc: b9457e88     	ldr	w8, [x20, #0x57c]
   254c0: 7100051f     	cmp	w8, #0x1
   254c4: 54000141     	b.ne	0x254ec <tpd_set_singleaodgesture+0x44>
   254c8: b945ba82     	ldr	w2, [x20, #0x5b8]
   254cc: b945be88     	ldr	w8, [x20, #0x5bc]
   254d0: 7100003f     	cmp	w1, #0x0
   254d4: 1a9fd7e9     	cset	w9, gt
   254d8: 2a080048     	orr	w8, w2, w8
   254dc: b905b689     	str	w9, [x20, #0x5b4]
   254e0: 2a090108     	orr	w8, w8, w9
   254e4: b905b288     	str	w8, [x20, #0x5b0]
   254e8: 14000007     	b	0x25504 <tpd_set_singleaodgesture+0x5c>
   254ec: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000254ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   254f0: 91000000     	add	x0, x0, #0x0
		00000000000254f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   254f4: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000254f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57d
   254f8: 91000021     	add	x1, x1, #0x0
		00000000000254f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57d
   254fc: 94000000     	bl	0x254fc <tpd_set_singleaodgesture+0x54>
		00000000000254fc:  R_AARCH64_CALL26	_printk
   25500: b945ba82     	ldr	w2, [x20, #0x5b8]
   25504: 90000013     	adrp	x19, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57d
   25508: 91000273     	add	x19, x19, #0x0
		0000000000025508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57d
   2550c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002550c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d82
   25510: 91000000     	add	x0, x0, #0x0
		0000000000025510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d82
   25514: aa1303e1     	mov	x1, x19
   25518: 94000000     	bl	0x25518 <tpd_set_singleaodgesture+0x70>
		0000000000025518:  R_AARCH64_CALL26	_printk
   2551c: b945b682     	ldr	w2, [x20, #0x5b4]
   25520: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d60
   25524: 91000000     	add	x0, x0, #0x0
		0000000000025524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d60
   25528: aa1303e1     	mov	x1, x19
   2552c: 94000000     	bl	0x2552c <tpd_set_singleaodgesture+0x84>
		000000000002552c:  R_AARCH64_CALL26	_printk
   25530: b945b282     	ldr	w2, [x20, #0x5b0]
   25534: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x436c
   25538: 91000000     	add	x0, x0, #0x0
		0000000000025538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x436c
   2553c: aa1303e1     	mov	x1, x19
   25540: 94000000     	bl	0x25540 <tpd_set_singleaodgesture+0x98>
		0000000000025540:  R_AARCH64_CALL26	_printk
   25544: 2a1f03e0     	mov	w0, wzr
   25548: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   2554c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25550: d50323bf     	autiasp
   25554: d65f03c0     	ret
