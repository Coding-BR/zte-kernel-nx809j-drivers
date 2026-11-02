
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000af98 <syna_open>:
    af98: d503233f     	paciasp
    af9c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    afa0: 910003fd     	mov	x29, sp
    afa4: f9401028     	ldr	x8, [x1, #0x20]
    afa8: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x88>
		000000000000afa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6332
    afac: 91000000     	add	x0, x0, #0x0
		000000000000afac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6332
    afb0: d1128108     	sub	x8, x8, #0x4a0
    afb4: f9001028     	str	x8, [x1, #0x20]
    afb8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x88>
		000000000000afb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ced
    afbc: 91000021     	add	x1, x1, #0x0
		000000000000afbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ced
    afc0: 94000000     	bl	0xafc0 <syna_open+0x28>
		000000000000afc0:  R_AARCH64_CALL26	_printk
    afc4: 2a1f03e0     	mov	w0, wzr
    afc8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    afcc: d50323bf     	autiasp
    afd0: d65f03c0     	ret
