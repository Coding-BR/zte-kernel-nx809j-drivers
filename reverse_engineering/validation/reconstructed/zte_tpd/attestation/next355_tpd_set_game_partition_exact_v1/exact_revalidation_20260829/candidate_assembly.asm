
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002628c <tpd_set_game_partition>:
   2628c: d503233f     	paciasp
   26290: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26294: 910003fd     	mov	x29, sp
   26298: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117c
   2629c: 91000021     	add	x1, x1, #0x0
		000000000002629c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117c
   262a0: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		00000000000262a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c6
   262a4: 91000000     	add	x0, x0, #0x0
		00000000000262a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c6
   262a8: aa0103e2     	mov	x2, x1
   262ac: 94000000     	bl	0x262ac <tpd_set_game_partition+0x20>
		00000000000262ac:  R_AARCH64_CALL26	_printk
   262b0: 2a1f03e0     	mov	w0, wzr
   262b4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   262b8: d50323bf     	autiasp
   262bc: d65f03c0     	ret
