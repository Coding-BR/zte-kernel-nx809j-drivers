
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260b8 <syna_ghost_check_reset>:
   260b8: d503233f     	paciasp
   260bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   260c0: f9000bf3     	str	x19, [sp, #0x10]
   260c4: 910003fd     	mov	x29, sp
   260c8: f946dc13     	ldr	x19, [x0, #0xdb8]
   260cc: aa1303e0     	mov	x0, x19
   260d0: 94000000     	bl	0x260d0 <syna_ghost_check_reset+0x18>
		00000000000260d0:  R_AARCH64_CALL26	syna_dev_free_input_events
   260d4: f9413a60     	ldr	x0, [x19, #0x270]
   260d8: 94000000     	bl	0x260d8 <syna_ghost_check_reset+0x20>
		00000000000260d8:  R_AARCH64_CALL26	syna_spi_hw_reset
   260dc: aa1303e0     	mov	x0, x19
   260e0: 94000000     	bl	0x260e0 <syna_ghost_check_reset+0x28>
		00000000000260e0:  R_AARCH64_CALL26	syna_recovery_game_mode_after_reset
   260e4: aa1303e0     	mov	x0, x19
   260e8: 2a1f03e1     	mov	w1, wzr
   260ec: 94000000     	bl	0x260ec <syna_ghost_check_reset+0x34>
		00000000000260ec:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
   260f0: 90000000     	adrp	x0, 0x26000 <tpd_set_frame_data+0x70>
		00000000000260f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ce7
   260f4: 91000000     	add	x0, x0, #0x0
		00000000000260f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ce7
   260f8: 90000001     	adrp	x1, 0x26000 <tpd_set_frame_data+0x70>
		00000000000260f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59e4
   260fc: 91000021     	add	x1, x1, #0x0
		00000000000260fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59e4
   26100: 94000000     	bl	0x26100 <syna_ghost_check_reset+0x48>
		0000000000026100:  R_AARCH64_CALL26	_printk
   26104: 2a1f03e0     	mov	w0, wzr
   26108: f9400bf3     	ldr	x19, [sp, #0x10]
   2610c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26110: d50323bf     	autiasp
   26114: d65f03c0     	ret
