
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025f3c <tpd_set_game_partition>:
   25f3c: d503233f     	paciasp
   25f40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   25f44: 910003fd     	mov	x29, sp
   25f48: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113d
   25f4c: 91000021     	add	x1, x1, #0x0
		0000000000025f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113d
   25f50: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9664
   25f54: 91000000     	add	x0, x0, #0x0
		0000000000025f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9664
   25f58: aa0103e2     	mov	x2, x1
   25f5c: 94000000     	bl	0x25f5c <tpd_set_game_partition+0x20>
		0000000000025f5c:  R_AARCH64_CALL26	_printk
   25f60: 2a1f03e0     	mov	w0, wzr
   25f64: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   25f68: d50323bf     	autiasp
   25f6c: d65f03c0     	ret
