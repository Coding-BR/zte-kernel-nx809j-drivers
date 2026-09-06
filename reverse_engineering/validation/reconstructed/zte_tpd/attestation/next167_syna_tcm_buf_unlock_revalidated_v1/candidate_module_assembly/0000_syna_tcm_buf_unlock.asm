
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f3c0 <syna_tcm_buf_unlock>:
    f3c0: d503233f     	paciasp
    f3c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    f3c8: f9000bf3     	str	x19, [sp, #0x10]
    f3cc: 910003fd     	mov	x29, sp
    f3d0: 39410002     	ldrb	w2, [x0, #0x40]
    f3d4: 7100045f     	cmp	w2, #0x1
    f3d8: 54000121     	b.ne	0xf3fc <syna_tcm_buf_unlock+0x3c>
    f3dc: 2a1f03e8     	mov	w8, wzr
    f3e0: 39010008     	strb	w8, [x0, #0x40]
    f3e4: 91004000     	add	x0, x0, #0x10
    f3e8: 94000000     	bl	0xf3e8 <syna_tcm_buf_unlock+0x28>
		000000000000f3e8:  R_AARCH64_CALL26	mutex_unlock
    f3ec: f9400bf3     	ldr	x19, [sp, #0x10]
    f3f0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    f3f4: d50323bf     	autiasp
    f3f8: d65f03c0     	ret
    f3fc: 90000008     	adrp	x8, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000f3fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33a0
    f400: 91000108     	add	x8, x8, #0x0
		000000000000f400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33a0
    f404: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000f404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b9
    f408: 91000021     	add	x1, x1, #0x0
		000000000000f408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b9
    f40c: aa0003f3     	mov	x19, x0
    f410: aa0803e0     	mov	x0, x8
    f414: 94000000     	bl	0xf414 <syna_tcm_buf_unlock+0x54>
		000000000000f414:  R_AARCH64_CALL26	_printk
    f418: 39410268     	ldrb	w8, [x19, #0x40]
    f41c: aa1303e0     	mov	x0, x19
    f420: 51000508     	sub	w8, w8, #0x1
    f424: 17ffffef     	b	0xf3e0 <syna_tcm_buf_unlock+0x20>
