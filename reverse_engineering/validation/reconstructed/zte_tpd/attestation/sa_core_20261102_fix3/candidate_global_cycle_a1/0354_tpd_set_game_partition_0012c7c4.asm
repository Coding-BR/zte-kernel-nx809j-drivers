
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000262e8 <tpd_set_game_partition>:
   262e8: d503233f     	paciasp
   262ec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   262f0: 910003fd     	mov	x29, sp
   262f4: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		00000000000262f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117c
   262f8: 91000021     	add	x1, x1, #0x0
		00000000000262f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117c
   262fc: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		00000000000262fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c6
   26300: 91000000     	add	x0, x0, #0x0
		0000000000026300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c6
   26304: aa0103e2     	mov	x2, x1
   26308: 94000000     	bl	0x26308 <tpd_set_game_partition+0x20>
		0000000000026308:  R_AARCH64_CALL26	_printk
   2630c: 2a1f03e0     	mov	w0, wzr
   26310: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26314: d50323bf     	autiasp
   26318: d65f03c0     	ret
