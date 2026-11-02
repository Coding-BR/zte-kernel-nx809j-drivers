
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000262a8 <syna_open>:
   262a8: d503233f     	paciasp
   262ac: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   262b0: 910003fd     	mov	x29, sp
   262b4: f9401028     	ldr	x8, [x1, #0x20]
   262b8: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		00000000000262b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb102
   262bc: 91000000     	add	x0, x0, #0x0
		00000000000262bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb102
   262c0: d1128108     	sub	x8, x8, #0x4a0
   262c4: f9001028     	str	x8, [x1, #0x20]
   262c8: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		00000000000262c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8906
   262cc: 91000021     	add	x1, x1, #0x0
		00000000000262cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8906
   262d0: 94000000     	bl	0x262d0 <syna_open+0x28>
		00000000000262d0:  R_AARCH64_CALL26	_printk
   262d4: 2a1f03e0     	mov	w0, wzr
   262d8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   262dc: d50323bf     	autiasp
   262e0: d65f03c0     	ret
