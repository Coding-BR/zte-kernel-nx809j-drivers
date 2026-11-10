
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002ec <poll>:
     2ec: d503233f     	paciasp
     2f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     2f4: f9000bf3     	str	x19, [sp, #0x10]
     2f8: 910003fd     	mov	x29, sp
     2fc: 94000000     	bl	0x2fc <poll+0x10>
		00000000000002fc:  R_AARCH64_CALL26	get_random_u32
     300: 528000a8     	mov	w8, #0x5                // =5
     304: 7200001f     	tst	w0, #0x1
     308: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b
     30c: 91000021     	add	x1, x1, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b
     310: 1a9f0113     	csel	w19, w8, wzr, eq
     314: 2a0003e3     	mov	w3, w0
     318: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41a
     31c: 91000000     	add	x0, x0, #0x0
		000000000000031c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41a
     320: aa0103e2     	mov	x2, x1
     324: 2a1303e4     	mov	w4, w19
     328: 94000000     	bl	0x328 <poll+0x3c>
		0000000000000328:  R_AARCH64_CALL26	_printk
     32c: 2a1303e0     	mov	w0, w19
     330: f9400bf3     	ldr	x19, [sp, #0x10]
     334: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     338: d50323bf     	autiasp
     33c: d65f03c0     	ret
