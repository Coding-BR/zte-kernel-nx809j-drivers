
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f428 <syna_tcm_buf_unlock_0>:
    f428: d503233f     	paciasp
    f42c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    f430: f9000bf3     	str	x19, [sp, #0x10]
    f434: 910003fd     	mov	x29, sp
    f438: 39410002     	ldrb	w2, [x0, #0x40]
    f43c: 7100045f     	cmp	w2, #0x1
    f440: 54000121     	b.ne	0xf464 <syna_tcm_buf_unlock_0+0x3c>
    f444: 2a1f03e8     	mov	w8, wzr
    f448: 39010008     	strb	w8, [x0, #0x40]
    f44c: 91004000     	add	x0, x0, #0x10
    f450: 94000000     	bl	0xf450 <syna_tcm_buf_unlock_0+0x28>
		000000000000f450:  R_AARCH64_CALL26	mutex_unlock
    f454: f9400bf3     	ldr	x19, [sp, #0x10]
    f458: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    f45c: d50323bf     	autiasp
    f460: d65f03c0     	ret
    f464: 90000008     	adrp	x8, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000f464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x330d
    f468: 91000108     	add	x8, x8, #0x0
		000000000000f468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x330d
    f46c: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000f46c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5626
    f470: 91000021     	add	x1, x1, #0x0
		000000000000f470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5626
    f474: aa0003f3     	mov	x19, x0
    f478: aa0803e0     	mov	x0, x8
    f47c: 94000000     	bl	0xf47c <syna_tcm_buf_unlock_0+0x54>
		000000000000f47c:  R_AARCH64_CALL26	_printk
    f480: 39410268     	ldrb	w8, [x19, #0x40]
    f484: aa1303e0     	mov	x0, x19
    f488: 51000508     	sub	w8, w8, #0x1
    f48c: 17ffffef     	b	0xf448 <syna_tcm_buf_unlock_0+0x20>
