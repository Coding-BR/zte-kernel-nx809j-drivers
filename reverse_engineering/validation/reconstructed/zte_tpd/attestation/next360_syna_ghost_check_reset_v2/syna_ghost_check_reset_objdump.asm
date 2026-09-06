
/out/syna_ghost_check_reset.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <syna_ghost_check_reset>:
       0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       4: f9000bf3     	str	x19, [sp, #0x10]
       8: f946dc13     	ldr	x19, [x0, #0xdb8]
       c: 910003fd     	mov	x29, sp
      10: aa1303e0     	mov	x0, x19
      14: 94000000     	bl	0x14 <syna_ghost_check_reset+0x14>
		0000000000000014:  R_AARCH64_CALL26	syna_dev_free_input_events
      18: f9413a60     	ldr	x0, [x19, #0x270]
      1c: 94000000     	bl	0x1c <syna_ghost_check_reset+0x1c>
		000000000000001c:  R_AARCH64_CALL26	syna_spi_hw_reset
      20: aa1303e0     	mov	x0, x19
      24: 94000000     	bl	0x24 <syna_ghost_check_reset+0x24>
		0000000000000024:  R_AARCH64_CALL26	syna_recovery_game_mode_after_reset
      28: aa1303e0     	mov	x0, x19
      2c: 2a1f03e1     	mov	w1, wzr
      30: 94000000     	bl	0x30 <syna_ghost_check_reset+0x30>
		0000000000000030:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
      34: 90000000     	adrp	x0, 0x0 <syna_ghost_check_reset>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      38: 91000000     	add	x0, x0, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      3c: 90000001     	adrp	x1, 0x0 <syna_ghost_check_reset>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27
      40: 91000021     	add	x1, x1, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27
      44: 94000000     	bl	0x44 <syna_ghost_check_reset+0x44>
		0000000000000044:  R_AARCH64_CALL26	printk
      48: f9400bf3     	ldr	x19, [sp, #0x10]
      4c: 2a1f03e0     	mov	w0, wzr
      50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      54: d65f03c0     	ret
