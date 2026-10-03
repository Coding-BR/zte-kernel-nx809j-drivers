
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b3f4 <syna_tcm_buf_unlock_0>:
    b3f4: d503233f     	paciasp
    b3f8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b3fc: f9000bf3     	str	x19, [sp, #0x10]
    b400: 910003fd     	mov	x29, sp
    b404: 39410002     	ldrb	w2, [x0, #0x40]
    b408: 7100045f     	cmp	w2, #0x1
    b40c: 54000121     	b.ne	0xb430 <syna_tcm_buf_unlock_0+0x3c>
    b410: 2a1f03e8     	mov	w8, wzr
    b414: 39010008     	strb	w8, [x0, #0x40]
    b418: 91004000     	add	x0, x0, #0x10
    b41c: 94000000     	bl	0xb41c <syna_tcm_buf_unlock_0+0x28>
		000000000000b41c:  R_AARCH64_CALL26	mutex_unlock
    b420: f9400bf3     	ldr	x19, [sp, #0x10]
    b424: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b428: d50323bf     	autiasp
    b42c: d65f03c0     	ret
    b430: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
    b434: 91000108     	add	x8, x8, #0x0
		000000000000b434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
    b438: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
    b43c: 91000021     	add	x1, x1, #0x0
		000000000000b43c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
    b440: aa0003f3     	mov	x19, x0
    b444: aa0803e0     	mov	x0, x8
    b448: 94000000     	bl	0xb448 <syna_tcm_buf_unlock_0+0x54>
		000000000000b448:  R_AARCH64_CALL26	_printk
    b44c: 39410268     	ldrb	w8, [x19, #0x40]
    b450: aa1303e0     	mov	x0, x19
    b454: 51000508     	sub	w8, w8, #0x1
    b458: 17ffffef     	b	0xb414 <syna_tcm_buf_unlock_0+0x20>
