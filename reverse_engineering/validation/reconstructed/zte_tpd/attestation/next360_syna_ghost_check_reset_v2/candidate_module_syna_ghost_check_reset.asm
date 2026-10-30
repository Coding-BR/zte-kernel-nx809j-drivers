
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ab68 <syna_ghost_check_reset>:
    ab68: d503233f     	paciasp
    ab6c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ab70: f9000bf3     	str	x19, [sp, #0x10]
    ab74: 910003fd     	mov	x29, sp
    ab78: f946dc13     	ldr	x19, [x0, #0xdb8]
    ab7c: aa1303e0     	mov	x0, x19
    ab80: 94000000     	bl	0xab80 <syna_ghost_check_reset+0x18>
		000000000000ab80:  R_AARCH64_CALL26	syna_dev_free_input_events
    ab84: f9413a60     	ldr	x0, [x19, #0x270]
    ab88: 94000000     	bl	0xab88 <syna_ghost_check_reset+0x20>
		000000000000ab88:  R_AARCH64_CALL26	syna_spi_hw_reset
    ab8c: aa1303e0     	mov	x0, x19
    ab90: 94000000     	bl	0xab90 <syna_ghost_check_reset+0x28>
		000000000000ab90:  R_AARCH64_CALL26	syna_recovery_game_mode_after_reset
    ab94: aa1303e0     	mov	x0, x19
    ab98: 2a1f03e1     	mov	w1, wzr
    ab9c: 94000000     	bl	0xab9c <syna_ghost_check_reset+0x34>
		000000000000ab9c:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
    aba0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x60>
		000000000000aba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57d2
    aba4: 91000000     	add	x0, x0, #0x0
		000000000000aba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57d2
    aba8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x60>
		000000000000aba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3235
    abac: 91000021     	add	x1, x1, #0x0
		000000000000abac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3235
    abb0: 94000000     	bl	0xabb0 <syna_ghost_check_reset+0x48>
		000000000000abb0:  R_AARCH64_CALL26	_printk
    abb4: 2a1f03e0     	mov	w0, wzr
    abb8: f9400bf3     	ldr	x19, [sp, #0x10]
    abbc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    abc0: d50323bf     	autiasp
    abc4: d65f03c0     	ret
