
/out/tpd_set_game_partition.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_game_partition>:
       0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       4: 90000001     	adrp	x1, 0x0 <tpd_set_game_partition>
		0000000000000004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
       8: 91000021     	add	x1, x1, #0x0
		0000000000000008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
       c: 90000000     	adrp	x0, 0x0 <tpd_set_game_partition>
		000000000000000c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A85B
      10: 91000000     	add	x0, x0, #0x0
		0000000000000010:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A85B
      14: aa0103e2     	mov	x2, x1
      18: 910003fd     	mov	x29, sp
      1c: 94000000     	bl	0x1c <tpd_set_game_partition+0x1c>
		000000000000001c:  R_AARCH64_CALL26	printk
      20: 2a1f03e0     	mov	w0, wzr
      24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      28: d65f03c0     	ret
