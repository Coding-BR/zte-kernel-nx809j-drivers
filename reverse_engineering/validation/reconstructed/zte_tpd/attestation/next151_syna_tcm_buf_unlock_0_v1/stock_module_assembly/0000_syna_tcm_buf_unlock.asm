
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b8b8 <syna_tcm_buf_unlock>:
   1b8b8: d503233f     	paciasp
   1b8bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b8c0: f9000bf3     	str	x19, [sp, #0x10]
   1b8c4: 910003fd     	mov	x29, sp
   1b8c8: 39410002     	ldrb	w2, [x0, #0x40]
   1b8cc: 7100045f     	cmp	w2, #0x1
   1b8d0: 54000121     	b.ne	0x1b8f4 <syna_tcm_buf_unlock+0x3c>
   1b8d4: 2a1f03e8     	mov	w8, wzr
   1b8d8: 39010008     	strb	w8, [x0, #0x40]
   1b8dc: 91004000     	add	x0, x0, #0x10
   1b8e0: 94000000     	bl	0x1b8e0 <syna_tcm_buf_unlock+0x28>
		000000000001b8e0:  R_AARCH64_CALL26	mutex_unlock
   1b8e4: f9400bf3     	ldr	x19, [sp, #0x10]
   1b8e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b8ec: d50323bf     	autiasp
   1b8f0: d65f03c0     	ret
   1b8f4: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b8f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1b8f8: 91000108     	add	x8, x8, #0x0
		000000000001b8f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1b8fc: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b8fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1b900: 91000021     	add	x1, x1, #0x0
		000000000001b900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1b904: aa0003f3     	mov	x19, x0
   1b908: aa0803e0     	mov	x0, x8
   1b90c: 94000000     	bl	0x1b90c <syna_tcm_buf_unlock+0x54>
		000000000001b90c:  R_AARCH64_CALL26	_printk
   1b910: 39410268     	ldrb	w8, [x19, #0x40]
   1b914: aa1303e0     	mov	x0, x19
   1b918: 51000508     	sub	w8, w8, #0x1
   1b91c: 17ffffef     	b	0x1b8d8 <syna_tcm_buf_unlock+0x20>
