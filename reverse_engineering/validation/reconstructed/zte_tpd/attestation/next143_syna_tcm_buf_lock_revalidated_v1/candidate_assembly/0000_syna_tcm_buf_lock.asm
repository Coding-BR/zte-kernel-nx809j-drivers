
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f378 <syna_tcm_buf_lock>:
    f378: d503233f     	paciasp
    f37c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    f380: f9000bf3     	str	x19, [sp, #0x10]
    f384: 910003fd     	mov	x29, sp
    f388: 39410002     	ldrb	w2, [x0, #0x40]
    f38c: aa0003f3     	mov	x19, x0
    f390: 35000142     	cbnz	w2, 0xf3b8 <syna_tcm_buf_lock+0x40>
    f394: 91004260     	add	x0, x19, #0x10
    f398: 94000000     	bl	0xf398 <syna_tcm_buf_lock+0x20>
		000000000000f398:  R_AARCH64_CALL26	mutex_lock
    f39c: 39410268     	ldrb	w8, [x19, #0x40]
    f3a0: 11000508     	add	w8, w8, #0x1
    f3a4: 39010268     	strb	w8, [x19, #0x40]
    f3a8: f9400bf3     	ldr	x19, [sp, #0x10]
    f3ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    f3b0: d50323bf     	autiasp
    f3b4: d65f03c0     	ret
    f3b8: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy_0+0x1b4>
		000000000000f3b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d2
    f3bc: 91000000     	add	x0, x0, #0x0
		000000000000f3bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d2
    f3c0: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy_0+0x1b4>
		000000000000f3c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31ec
    f3c4: 91000021     	add	x1, x1, #0x0
		000000000000f3c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31ec
    f3c8: 94000000     	bl	0xf3c8 <syna_tcm_buf_lock+0x50>
		000000000000f3c8:  R_AARCH64_CALL26	_printk
    f3cc: 17fffff2     	b	0xf394 <syna_tcm_buf_lock+0x1c>
