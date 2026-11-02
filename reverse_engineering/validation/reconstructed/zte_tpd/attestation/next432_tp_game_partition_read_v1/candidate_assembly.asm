
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001da2c <tp_game_partition_read>:
   1da2c: d503233f     	paciasp
   1da30: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1da34: f9000bfc     	str	x28, [sp, #0x10]
   1da38: a90257f6     	stp	x22, x21, [sp, #0x20]
   1da3c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1da40: 910003fd     	mov	x29, sp
   1da44: d11043ff     	sub	sp, sp, #0x410
   1da48: d5384108     	mrs	x8, SP_EL0
   1da4c: aa0203f4     	mov	x20, x2
   1da50: aa0103f5     	mov	x21, x1
   1da54: f9438908     	ldr	x8, [x8, #0x710]
   1da58: 910023e0     	add	x0, sp, #0x8
   1da5c: 2a1f03e1     	mov	w1, wzr
   1da60: 52808002     	mov	w2, #0x400              // =1024
   1da64: aa0303f3     	mov	x19, x3
   1da68: f81f83a8     	stur	x8, [x29, #-0x8]
   1da6c: 94000000     	bl	0x1da6c <tp_game_partition_read+0x40>
		000000000001da6c:  R_AARCH64_CALL26	memset
   1da70: f9400268     	ldr	x8, [x19]
   1da74: b40001c8     	cbz	x8, 0x1daac <tp_game_partition_read+0x80>
   1da78: aa1f03e0     	mov	x0, xzr
   1da7c: d5384108     	mrs	x8, SP_EL0
   1da80: f9438908     	ldr	x8, [x8, #0x710]
   1da84: f85f83a9     	ldur	x9, [x29, #-0x8]
   1da88: eb09011f     	cmp	x8, x9
   1da8c: 540003a1     	b.ne	0x1db00 <tp_game_partition_read+0xd4>
   1da90: 911043ff     	add	sp, sp, #0x410
   1da94: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1da98: f9400bfc     	ldr	x28, [sp, #0x10]
   1da9c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1daa0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1daa4: d50323bf     	autiasp
   1daa8: d65f03c0     	ret
   1daac: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001daac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1dab0: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6144
   1dab4: 91000000     	add	x0, x0, #0x0
		000000000001dab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6144
   1dab8: f9400116     	ldr	x22, [x8]
		000000000001dab8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1dabc: 90000001     	adrp	x1, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dabc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26bb
   1dac0: 91000021     	add	x1, x1, #0x0
		000000000001dac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26bb
   1dac4: 910106c2     	add	x2, x22, #0x41
   1dac8: 94000000     	bl	0x1dac8 <tp_game_partition_read+0x9c>
		000000000001dac8:  R_AARCH64_CALL26	_printk
   1dacc: 90000002     	adrp	x2, 0x1d000 <tp_edge_report_limit_read+0x308>
		000000000001dacc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d7
   1dad0: 91000042     	add	x2, x2, #0x0
		000000000001dad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d7
   1dad4: 910023e0     	add	x0, sp, #0x8
   1dad8: 910106c3     	add	x3, x22, #0x41
   1dadc: 52808001     	mov	w1, #0x400              // =1024
   1dae0: 94000000     	bl	0x1dae0 <tp_game_partition_read+0xb4>
		000000000001dae0:  R_AARCH64_CALL26	snprintf
   1dae4: 93407c04     	sxtw	x4, w0
   1dae8: 910023e3     	add	x3, sp, #0x8
   1daec: aa1403e1     	mov	x1, x20
   1daf0: aa1503e0     	mov	x0, x21
   1daf4: aa1303e2     	mov	x2, x19
   1daf8: 94000000     	bl	0x1daf8 <tp_game_partition_read+0xcc>
		000000000001daf8:  R_AARCH64_CALL26	simple_read_from_buffer
   1dafc: 17ffffe0     	b	0x1da7c <tp_game_partition_read+0x50>
   1db00: 94000000     	bl	0x1db00 <tp_game_partition_read+0xd4>
		000000000001db00:  R_AARCH64_CALL26	__stack_chk_fail
