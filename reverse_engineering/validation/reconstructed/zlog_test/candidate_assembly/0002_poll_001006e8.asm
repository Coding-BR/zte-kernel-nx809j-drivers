
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000380 <poll>:
     380: d503233f     	paciasp
     384: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     388: f9000bf3     	str	x19, [sp, #0x10]
     38c: 910003fd     	mov	x29, sp
     390: 94000000     	bl	0x390 <poll+0x10>
		0000000000000390:  R_AARCH64_CALL26	get_random_u32
     394: 528000a8     	mov	w8, #0x5                // =5
     398: 7200001f     	tst	w0, #0x1
     39c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000039c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x169
     3a0: 91000021     	add	x1, x1, #0x0
		00000000000003a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x169
     3a4: 1a9f0113     	csel	w19, w8, wzr, eq
     3a8: 2a0003e3     	mov	w3, w0
     3ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44a
     3b0: 91000000     	add	x0, x0, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44a
     3b4: aa0103e2     	mov	x2, x1
     3b8: 2a1303e4     	mov	w4, w19
     3bc: 94000000     	bl	0x3bc <poll+0x3c>
		00000000000003bc:  R_AARCH64_CALL26	_printk
     3c0: 2a1303e0     	mov	w0, w19
     3c4: f9400bf3     	ldr	x19, [sp, #0x10]
     3c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     3cc: d50323bf     	autiasp
     3d0: d65f03c0     	ret
