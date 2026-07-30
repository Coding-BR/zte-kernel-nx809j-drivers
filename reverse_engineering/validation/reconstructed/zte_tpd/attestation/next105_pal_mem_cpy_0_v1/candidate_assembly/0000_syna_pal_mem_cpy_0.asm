
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b368 <syna_pal_mem_cpy_0>:
    b368: b40000e0     	cbz	x0, 0xb384 <syna_pal_mem_cpy_0+0x1c>
    b36c: b40000c2     	cbz	x2, 0xb384 <syna_pal_mem_cpy_0+0x1c>
    b370: 2a0103e3     	mov	w3, w1
    b374: 71003c3f     	cmp	w1, #0xf
    b378: 54000089     	b.ls	0xb388 <syna_pal_mem_cpy_0+0x20>
    b37c: a9402049     	ldp	x9, x8, [x2]
    b380: a9002009     	stp	x9, x8, [x0]
    b384: d65f03c0     	ret
    b388: d503233f     	paciasp
    b38c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b390: 910003fd     	mov	x29, sp
    b394: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x382c
    b398: 91000000     	add	x0, x0, #0x0
		000000000000b398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x382c
    b39c: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0xc8>
		000000000000b39c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    b3a0: 91000021     	add	x1, x1, #0x0
		000000000000b3a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    b3a4: 52800202     	mov	w2, #0x10               // =16
    b3a8: 52800204     	mov	w4, #0x10               // =16
    b3ac: 94000000     	bl	0xb3ac <syna_pal_mem_cpy_0+0x44>
		000000000000b3ac:  R_AARCH64_CALL26	_printk
    b3b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b3b4: d50323bf     	autiasp
    b3b8: d65f03c0     	ret
