
/out/tpd_set_palm_mode.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_palm_mode>:
       0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       4: f946dc08     	ldr	x8, [x0, #0xdb8]
       8: 2a0103e2     	mov	w2, w1
       c: 90000000     	adrp	x0, 0x0 <tpd_set_palm_mode>
		000000000000000c:  R_AARCH64_ADR_PREL_PG_HI21	unk_37B5F
      10: 91000000     	add	x0, x0, #0x0
		0000000000000010:  R_AARCH64_ADD_ABS_LO12_NC	unk_37B5F
      14: 910003fd     	mov	x29, sp
      18: b905e501     	str	w1, [x8, #0x5e4]
      1c: 90000001     	adrp	x1, 0x0 <tpd_set_palm_mode>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      24: 94000000     	bl	0x24 <tpd_set_palm_mode+0x24>
		0000000000000024:  R_AARCH64_CALL26	printk
      28: 2a1f03e0     	mov	w0, wzr
      2c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      30: d65f03c0     	ret
