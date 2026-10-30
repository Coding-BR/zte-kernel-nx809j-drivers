
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000185b8 <syna_tcm_buf_unlock>:
   185b8: d503233f     	paciasp
   185bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   185c0: f9000bf3     	str	x19, [sp, #0x10]
   185c4: 910003fd     	mov	x29, sp
   185c8: 39410002     	ldrb	w2, [x0, #0x40]
   185cc: 7100045f     	cmp	w2, #0x1
   185d0: 54000121     	b.ne	0x185f4 <syna_tcm_buf_unlock+0x3c>
   185d4: 2a1f03e8     	mov	w8, wzr
   185d8: 39010008     	strb	w8, [x0, #0x40]
   185dc: 91004000     	add	x0, x0, #0x10
   185e0: 94000000     	bl	0x185e0 <syna_tcm_buf_unlock+0x28>
		00000000000185e0:  R_AARCH64_CALL26	mutex_unlock
   185e4: f9400bf3     	ldr	x19, [sp, #0x10]
   185e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   185ec: d50323bf     	autiasp
   185f0: d65f03c0     	ret
   185f4: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000185f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   185f8: 91000108     	add	x8, x8, #0x0
		00000000000185f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   185fc: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000185fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   18600: 91000021     	add	x1, x1, #0x0
		0000000000018600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   18604: aa0003f3     	mov	x19, x0
   18608: aa0803e0     	mov	x0, x8
   1860c: 94000000     	bl	0x1860c <syna_tcm_buf_unlock+0x54>
		000000000001860c:  R_AARCH64_CALL26	_printk
   18610: 39410268     	ldrb	w8, [x19, #0x40]
   18614: aa1303e0     	mov	x0, x19
   18618: 51000508     	sub	w8, w8, #0x1
   1861c: 17ffffef     	b	0x185d8 <syna_tcm_buf_unlock+0x20>
