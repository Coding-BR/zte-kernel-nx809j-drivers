
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018560 <syna_tcm_buf_lock>:
   18560: d503233f     	paciasp
   18564: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   18568: f9000bf3     	str	x19, [sp, #0x10]
   1856c: 910003fd     	mov	x29, sp
   18570: 39410002     	ldrb	w2, [x0, #0x40]
   18574: aa0003f3     	mov	x19, x0
   18578: 35000142     	cbnz	w2, 0x185a0 <syna_tcm_buf_lock+0x40>
   1857c: 91004260     	add	x0, x19, #0x10
   18580: 94000000     	bl	0x18580 <syna_tcm_buf_lock+0x20>
		0000000000018580:  R_AARCH64_CALL26	mutex_lock
   18584: 39410268     	ldrb	w8, [x19, #0x40]
   18588: 11000508     	add	w8, w8, #0x1
   1858c: 39010268     	strb	w8, [x19, #0x40]
   18590: f9400bf3     	ldr	x19, [sp, #0x10]
   18594: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   18598: d50323bf     	autiasp
   1859c: d65f03c0     	ret
   185a0: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000185a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   185a4: 91000000     	add	x0, x0, #0x0
		00000000000185a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   185a8: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000185a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   185ac: 91000021     	add	x1, x1, #0x0
		00000000000185ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   185b0: 94000000     	bl	0x185b0 <syna_tcm_buf_lock+0x50>
		00000000000185b0:  R_AARCH64_CALL26	_printk
   185b4: 17fffff2     	b	0x1857c <syna_tcm_buf_lock+0x1c>
