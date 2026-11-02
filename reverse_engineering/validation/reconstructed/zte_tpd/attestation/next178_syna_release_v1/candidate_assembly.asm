
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b4b4 <syna_release>:
    b4b4: d503233f     	paciasp
    b4b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b4bc: 910003fd     	mov	x29, sp
    b4c0: 90000000     	adrp	x0, 0xb000 <syna_pal_mem_alloc+0x2c>
		000000000000b4c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53b7
    b4c4: 91000000     	add	x0, x0, #0x0
		000000000000b4c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53b7
    b4c8: 90000001     	adrp	x1, 0xb000 <syna_pal_mem_alloc+0x2c>
		000000000000b4c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce
    b4cc: 91000021     	add	x1, x1, #0x0
		000000000000b4cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce
    b4d0: 94000000     	bl	0xb4d0 <syna_release+0x1c>
		000000000000b4d0:  R_AARCH64_CALL26	_printk
    b4d4: 2a1f03e0     	mov	w0, wzr
    b4d8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b4dc: d50323bf     	autiasp
    b4e0: d65f03c0     	ret
