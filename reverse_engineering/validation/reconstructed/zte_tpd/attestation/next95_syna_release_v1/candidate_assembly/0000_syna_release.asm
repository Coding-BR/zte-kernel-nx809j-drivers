
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b7ac <syna_release>:
    b7ac: d503233f     	paciasp
    b7b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b7b4: 910003fd     	mov	x29, sp
    b7b8: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b7b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4073
    b7bc: 91000000     	add	x0, x0, #0x0
		000000000000b7bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4073
    b7c0: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0xc8>
		000000000000b7c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x381
    b7c4: 91000021     	add	x1, x1, #0x0
		000000000000b7c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x381
    b7c8: 94000000     	bl	0xb7c8 <syna_release+0x1c>
		000000000000b7c8:  R_AARCH64_CALL26	_printk
    b7cc: 2a1f03e0     	mov	w0, wzr
    b7d0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b7d4: d50323bf     	autiasp
    b7d8: d65f03c0     	ret
