
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012d60 <syna_tcm_buf_unlock>:
   12d60: d503233f     	paciasp
   12d64: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   12d68: f9000bf3     	str	x19, [sp, #0x10]
   12d6c: 910003fd     	mov	x29, sp
   12d70: 39410002     	ldrb	w2, [x0, #0x40]
   12d74: 7100045f     	cmp	w2, #0x1
   12d78: 54000121     	b.ne	0x12d9c <syna_tcm_buf_unlock+0x3c>
   12d7c: 2a1f03e8     	mov	w8, wzr
   12d80: 39010008     	strb	w8, [x0, #0x40]
   12d84: 91004000     	add	x0, x0, #0x10
   12d88: 94000000     	bl	0x12d88 <syna_tcm_buf_unlock+0x28>
		0000000000012d88:  R_AARCH64_CALL26	mutex_unlock
   12d8c: f9400bf3     	ldr	x19, [sp, #0x10]
   12d90: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   12d94: d50323bf     	autiasp
   12d98: d65f03c0     	ret
   12d9c: 90000008     	adrp	x8, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   12da0: 91000108     	add	x8, x8, #0x0
		0000000000012da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   12da4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   12da8: 91000021     	add	x1, x1, #0x0
		0000000000012da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   12dac: aa0003f3     	mov	x19, x0
   12db0: aa0803e0     	mov	x0, x8
   12db4: 94000000     	bl	0x12db4 <syna_tcm_buf_unlock+0x54>
		0000000000012db4:  R_AARCH64_CALL26	_printk
   12db8: 39410268     	ldrb	w8, [x19, #0x40]
   12dbc: aa1303e0     	mov	x0, x19
   12dc0: 51000508     	sub	w8, w8, #0x1
   12dc4: 17ffffef     	b	0x12d80 <syna_tcm_buf_unlock+0x20>
