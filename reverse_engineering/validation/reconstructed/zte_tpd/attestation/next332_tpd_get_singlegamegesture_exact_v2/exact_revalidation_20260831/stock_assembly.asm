
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025314 <tpd_get_singlegamegesture>:
   25314: d503233f     	paciasp
   25318: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2531c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25320: 910003fd     	mov	x29, sp
   25324: f946dc08     	ldr	x8, [x0, #0xdb8]
   25328: 90000014     	adrp	x20, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd50
   2532c: 91000294     	add	x20, x20, #0x0
		000000000002532c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd50
   25330: aa0003f3     	mov	x19, x0
   25334: aa1403e1     	mov	x1, x20
   25338: b945b909     	ldr	w9, [x8, #0x5b8]
   2533c: b9045409     	str	w9, [x0, #0x454]
   25340: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1664
   25344: 91000000     	add	x0, x0, #0x0
		0000000000025344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1664
   25348: b945bd02     	ldr	w2, [x8, #0x5bc]
   2534c: 94000000     	bl	0x2534c <tpd_get_singlegamegesture+0x38>
		000000000002534c:  R_AARCH64_CALL26	_printk
   25350: b9445662     	ldr	w2, [x19, #0x454]
   25354: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd6a
   25358: 91000000     	add	x0, x0, #0x0
		0000000000025358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd6a
   2535c: aa1403e1     	mov	x1, x20
   25360: 94000000     	bl	0x25360 <tpd_get_singlegamegesture+0x4c>
		0000000000025360:  R_AARCH64_CALL26	_printk
   25364: 2a1f03e0     	mov	w0, wzr
   25368: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   2536c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25370: d50323bf     	autiasp
   25374: d65f03c0     	ret
