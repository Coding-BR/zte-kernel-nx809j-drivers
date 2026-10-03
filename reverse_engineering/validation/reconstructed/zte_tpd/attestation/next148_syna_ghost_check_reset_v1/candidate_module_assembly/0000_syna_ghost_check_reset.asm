
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000abe0 <syna_ghost_check_reset>:
    abe0: d503233f     	paciasp
    abe4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    abe8: f9000bf3     	str	x19, [sp, #0x10]
    abec: 910003fd     	mov	x29, sp
    abf0: f946dc13     	ldr	x19, [x0, #0xdb8]
    abf4: aa1303e0     	mov	x0, x19
    abf8: 94000000     	bl	0xabf8 <syna_ghost_check_reset+0x18>
		000000000000abf8:  R_AARCH64_CALL26	syna_dev_free_input_events
    abfc: f9413a60     	ldr	x0, [x19, #0x270]
    ac00: 94000000     	bl	0xac00 <syna_ghost_check_reset+0x20>
		000000000000ac00:  R_AARCH64_CALL26	syna_spi_hw_reset
    ac04: aa1303e0     	mov	x0, x19
    ac08: 94000000     	bl	0xac08 <syna_ghost_check_reset+0x28>
		000000000000ac08:  R_AARCH64_CALL26	syna_recovery_game_mode_after_reset
    ac0c: aa1303e0     	mov	x0, x19
    ac10: 2a1f03e1     	mov	w1, wzr
    ac14: 94000000     	bl	0xac14 <syna_ghost_check_reset+0x34>
		000000000000ac14:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
    ac18: 90000000     	adrp	x0, 0xa000 <syna_dev_set_play_game+0x5c>
		000000000000ac18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4643
    ac1c: 91000000     	add	x0, x0, #0x0
		000000000000ac1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4643
    ac20: 90000001     	adrp	x1, 0xa000 <syna_dev_set_play_game+0x5c>
		000000000000ac20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x290e
    ac24: 91000021     	add	x1, x1, #0x0
		000000000000ac24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x290e
    ac28: 94000000     	bl	0xac28 <syna_ghost_check_reset+0x48>
		000000000000ac28:  R_AARCH64_CALL26	_printk
    ac2c: 2a1f03e0     	mov	w0, wzr
    ac30: f9400bf3     	ldr	x19, [sp, #0x10]
    ac34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    ac38: d50323bf     	autiasp
    ac3c: d65f03c0     	ret
