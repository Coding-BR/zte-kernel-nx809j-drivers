
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252c4 <tpd_enable_wakegesture>:
   252c4: f946dc08     	ldr	x8, [x0, #0xdb8]
   252c8: b9457d09     	ldr	w9, [x8, #0x57c]
   252cc: 7100053f     	cmp	w9, #0x1
   252d0: 54000081     	b.ne	0x252e0 <tpd_enable_wakegesture+0x1c>
   252d4: 2a1f03e0     	mov	w0, wzr
   252d8: b905c501     	str	w1, [x8, #0x5c4]
   252dc: d65f03c0     	ret
   252e0: d503233f     	paciasp
   252e4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   252e8: 910003fd     	mov	x29, sp
   252ec: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000252ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   252f0: 91000000     	add	x0, x0, #0x0
		00000000000252f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   252f4: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000252f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d6b
   252f8: 91000021     	add	x1, x1, #0x0
		00000000000252f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d6b
   252fc: 94000000     	bl	0x252fc <tpd_enable_wakegesture+0x38>
		00000000000252fc:  R_AARCH64_CALL26	_printk
   25300: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   25304: d50323bf     	autiasp
   25308: 2a1f03e0     	mov	w0, wzr
   2530c: d65f03c0     	ret
