
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f43c <syna_tcm_buf_unlock>:
    f43c: d503233f     	paciasp
    f440: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    f444: f9000bf3     	str	x19, [sp, #0x10]
    f448: 910003fd     	mov	x29, sp
    f44c: 39410002     	ldrb	w2, [x0, #0x40]
    f450: 7100045f     	cmp	w2, #0x1
    f454: 54000121     	b.ne	0xf478 <syna_tcm_buf_unlock+0x3c>
    f458: 2a1f03e8     	mov	w8, wzr
    f45c: 39010008     	strb	w8, [x0, #0x40]
    f460: 91004000     	add	x0, x0, #0x10
    f464: 94000000     	bl	0xf464 <syna_tcm_buf_unlock+0x28>
		000000000000f464:  R_AARCH64_CALL26	mutex_unlock
    f468: f9400bf3     	ldr	x19, [sp, #0x10]
    f46c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    f470: d50323bf     	autiasp
    f474: d65f03c0     	ret
    f478: 90000008     	adrp	x8, 0xf000 <syna_tcm_buf_copy_0+0x148>
		000000000000f478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32f0
    f47c: 91000108     	add	x8, x8, #0x0
		000000000000f47c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32f0
    f480: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy_0+0x148>
		000000000000f480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55e2
    f484: 91000021     	add	x1, x1, #0x0
		000000000000f484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55e2
    f488: aa0003f3     	mov	x19, x0
    f48c: aa0803e0     	mov	x0, x8
    f490: 94000000     	bl	0xf490 <syna_tcm_buf_unlock+0x54>
		000000000000f490:  R_AARCH64_CALL26	_printk
    f494: 39410268     	ldrb	w8, [x19, #0x40]
    f498: aa1303e0     	mov	x0, x19
    f49c: 51000508     	sub	w8, w8, #0x1
    f4a0: 17ffffef     	b	0xf45c <syna_tcm_buf_unlock+0x20>
