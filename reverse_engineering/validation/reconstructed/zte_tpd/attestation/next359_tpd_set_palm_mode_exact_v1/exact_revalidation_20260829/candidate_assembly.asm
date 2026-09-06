
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000262c4 <tpd_set_palm_mode>:
   262c4: d503233f     	paciasp
   262c8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   262cc: 910003fd     	mov	x29, sp
   262d0: f946dc08     	ldr	x8, [x0, #0xdb8]
   262d4: 2a0103e2     	mov	w2, w1
   262d8: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000262d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6916
   262dc: 91000000     	add	x0, x0, #0x0
		00000000000262dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6916
   262e0: b905e501     	str	w1, [x8, #0x5e4]
   262e4: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		00000000000262e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61a2
   262e8: 91000021     	add	x1, x1, #0x0
		00000000000262e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61a2
   262ec: 94000000     	bl	0x262ec <tpd_set_palm_mode+0x28>
		00000000000262ec:  R_AARCH64_CALL26	_printk
   262f0: 2a1f03e0     	mov	w0, wzr
   262f4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   262f8: d50323bf     	autiasp
   262fc: d65f03c0     	ret
