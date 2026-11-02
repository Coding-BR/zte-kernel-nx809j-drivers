
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020df0 <tpd_set_game_partition>:
   20df0: d503233f     	paciasp
   20df4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   20df8: 910003fd     	mov	x29, sp
   20dfc: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96a
   20e00: 91000021     	add	x1, x1, #0x0
		0000000000020e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96a
   20e04: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020e04:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A85B
   20e08: 91000000     	add	x0, x0, #0x0
		0000000000020e08:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A85B
   20e0c: aa0103e2     	mov	x2, x1
   20e10: 94000000     	bl	0x20e10 <tpd_set_game_partition+0x20>
		0000000000020e10:  R_AARCH64_CALL26	_printk
   20e14: 2a1f03e0     	mov	w0, wzr
   20e18: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   20e1c: d50323bf     	autiasp
   20e20: d65f03c0     	ret
