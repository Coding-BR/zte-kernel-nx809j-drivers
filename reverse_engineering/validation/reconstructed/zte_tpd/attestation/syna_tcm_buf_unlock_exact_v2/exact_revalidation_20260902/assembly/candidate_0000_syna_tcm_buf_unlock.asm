
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012d04 <syna_tcm_buf_unlock>:
   12d04: d503233f     	paciasp
   12d08: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   12d0c: f9000bf3     	str	x19, [sp, #0x10]
   12d10: 910003fd     	mov	x29, sp
   12d14: 39410002     	ldrb	w2, [x0, #0x40]
   12d18: 7100045f     	cmp	w2, #0x1
   12d1c: 54000121     	b.ne	0x12d40 <syna_tcm_buf_unlock+0x3c>
   12d20: 2a1f03e8     	mov	w8, wzr
   12d24: 39010008     	strb	w8, [x0, #0x40]
   12d28: 91004000     	add	x0, x0, #0x10
   12d2c: 94000000     	bl	0x12d2c <syna_tcm_buf_unlock+0x28>
		0000000000012d2c:  R_AARCH64_CALL26	mutex_unlock
   12d30: f9400bf3     	ldr	x19, [sp, #0x10]
   12d34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   12d38: d50323bf     	autiasp
   12d3c: d65f03c0     	ret
   12d40: 90000008     	adrp	x8, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   12d44: 91000108     	add	x8, x8, #0x0
		0000000000012d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   12d48: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_read+0xc>
		0000000000012d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   12d4c: 91000021     	add	x1, x1, #0x0
		0000000000012d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   12d50: aa0003f3     	mov	x19, x0
   12d54: aa0803e0     	mov	x0, x8
   12d58: 94000000     	bl	0x12d58 <syna_tcm_buf_unlock+0x54>
		0000000000012d58:  R_AARCH64_CALL26	_printk
   12d5c: 39410268     	ldrb	w8, [x19, #0x40]
   12d60: aa1303e0     	mov	x0, x19
   12d64: 51000508     	sub	w8, w8, #0x1
   12d68: 17ffffef     	b	0x12d24 <syna_tcm_buf_unlock+0x20>
