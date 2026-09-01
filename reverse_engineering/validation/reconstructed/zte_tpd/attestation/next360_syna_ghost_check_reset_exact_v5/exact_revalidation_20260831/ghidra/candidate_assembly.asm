
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a990 <syna_ghost_check_reset>:
    a990: d503233f     	paciasp
    a994: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a998: f9000bf3     	str	x19, [sp, #0x10]
    a99c: 910003fd     	mov	x29, sp
    a9a0: f946dc13     	ldr	x19, [x0, #0xdb8]
    a9a4: aa1303e0     	mov	x0, x19
    a9a8: 94000000     	bl	0xa9a8 <syna_ghost_check_reset+0x18>
		000000000000a9a8:  R_AARCH64_CALL26	syna_dev_free_input_events
    a9ac: f9413a60     	ldr	x0, [x19, #0x270]
    a9b0: 94000000     	bl	0xa9b0 <syna_ghost_check_reset+0x20>
		000000000000a9b0:  R_AARCH64_CALL26	syna_spi_hw_reset
    a9b4: aa1303e0     	mov	x0, x19
    a9b8: 94000000     	bl	0xa9b8 <syna_ghost_check_reset+0x28>
		000000000000a9b8:  R_AARCH64_CALL26	syna_recovery_game_mode_after_reset
    a9bc: aa1303e0     	mov	x0, x19
    a9c0: 2a1f03e1     	mov	w1, wzr
    a9c4: 94000000     	bl	0xa9c4 <syna_ghost_check_reset+0x34>
		000000000000a9c4:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
    a9c8: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a9c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b5cf
    a9cc: 91000000     	add	x0, x0, #0x0
		000000000000a9cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b5cf
    a9d0: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a9d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19937
    a9d4: 91000021     	add	x1, x1, #0x0
		000000000000a9d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19937
    a9d8: 94000000     	bl	0xa9d8 <syna_ghost_check_reset+0x48>
		000000000000a9d8:  R_AARCH64_CALL26	_printk
    a9dc: 2a1f03e0     	mov	w0, wzr
    a9e0: f9400bf3     	ldr	x19, [sp, #0x10]
    a9e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a9e8: d50323bf     	autiasp
    a9ec: d65f03c0     	ret
