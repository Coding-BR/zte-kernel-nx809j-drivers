
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002555c <tpd_get_singlefpgesture>:
   2555c: d503233f     	paciasp
   25560: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25564: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25568: 910003fd     	mov	x29, sp
   2556c: f946dc08     	ldr	x8, [x0, #0xdb8]
   25570: 90000014     	adrp	x20, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7281
   25574: 91000294     	add	x20, x20, #0x0
		0000000000025574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7281
   25578: aa0003f3     	mov	x19, x0
   2557c: aa1403e1     	mov	x1, x20
   25580: b945b902     	ldr	w2, [x8, #0x5b8]
   25584: b9044c02     	str	w2, [x0, #0x44c]
   25588: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x946d
   2558c: 91000000     	add	x0, x0, #0x0
		000000000002558c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x946d
   25590: 94000000     	bl	0x25590 <tpd_get_singlefpgesture+0x34>
		0000000000025590:  R_AARCH64_CALL26	_printk
   25594: b9444e62     	ldr	w2, [x19, #0x44c]
   25598: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89f4
   2559c: 91000000     	add	x0, x0, #0x0
		000000000002559c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89f4
   255a0: aa1403e1     	mov	x1, x20
   255a4: 94000000     	bl	0x255a4 <tpd_get_singlefpgesture+0x48>
		00000000000255a4:  R_AARCH64_CALL26	_printk
   255a8: 2a1f03e0     	mov	w0, wzr
   255ac: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   255b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   255b4: d50323bf     	autiasp
   255b8: d65f03c0     	ret
