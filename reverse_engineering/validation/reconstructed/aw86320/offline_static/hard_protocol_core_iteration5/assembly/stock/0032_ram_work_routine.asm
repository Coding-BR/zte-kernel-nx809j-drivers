
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000033cc <ram_work_routine>:
    33cc: d503233f     	paciasp
    33d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    33d4: 910003fd     	mov	x29, sp
    33d8: f8580003     	ldur	x3, [x0, #-0x80]
    33dc: d1098005     	sub	x5, x0, #0x260
    33e0: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		00000000000033e0:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    33e4: 91000000     	add	x0, x0, #0x0
		00000000000033e4:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    33e8: 90000002     	adrp	x2, 0x3000 <ram_load+0x8d0>
		00000000000033e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a7
    33ec: 91000042     	add	x2, x2, #0x0
		00000000000033ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a7
    33f0: 90000006     	adrp	x6, 0x3000 <ram_load+0x8d0>
		00000000000033f0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2730
    33f4: 910000c6     	add	x6, x6, #0x0
		00000000000033f4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2730
    33f8: 52800021     	mov	w1, #0x1                // =1
    33fc: 52819804     	mov	w4, #0xcc0              // =3264
    3400: 390000bf     	strb	wzr, [x5]
    3404: 94000000     	bl	0x3404 <ram_work_routine+0x38>
		0000000000003404:  R_AARCH64_CALL26	request_firmware_nowait
    3408: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    340c: d50323bf     	autiasp
    3410: d65f03c0     	ret
