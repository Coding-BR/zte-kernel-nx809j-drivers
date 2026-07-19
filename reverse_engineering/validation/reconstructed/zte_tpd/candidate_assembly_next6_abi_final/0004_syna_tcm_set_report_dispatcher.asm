
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016648 <syna_tcm_set_report_dispatcher>:
   16648: d503233f     	paciasp
   1664c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   16650: f9000bf7     	str	x23, [sp, #0x10]
   16654: a90257f6     	stp	x22, x21, [sp, #0x20]
   16658: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1665c: 910003fd     	mov	x29, sp
   16660: b5000100     	cbnz	x0, 0x16680 <syna_tcm_set_report_dispatcher+0x38>
   16664: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x28>
		0000000000016664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   16668: 91000000     	add	x0, x0, #0x0
		0000000000016668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   1666c: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x28>
		000000000001666c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7
   16670: 91000021     	add	x1, x1, #0x0
		0000000000016670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7
   16674: 94000000     	bl	0x16674 <syna_tcm_set_report_dispatcher+0x2c>
		0000000000016674:  R_AARCH64_CALL26	_printk
   16678: 12801e00     	mov	w0, #-0xf1              // =-241
   1667c: 1400001c     	b	0x166ec <syna_tcm_set_report_dispatcher+0xa4>
   16680: 12001c33     	and	w19, w1, #0xff
   16684: 2a0103f4     	mov	w20, w1
   16688: 71003e7f     	cmp	w19, #0xf
   1668c: 540001c8     	b.hi	0x166c4 <syna_tcm_set_report_dispatcher+0x7c>
   16690: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x28>
		0000000000016690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x445b
   16694: 91000108     	add	x8, x8, #0x0
		0000000000016694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x445b
   16698: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x28>
		0000000000016698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7
   1669c: 91000021     	add	x1, x1, #0x0
		000000000001669c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7
   166a0: aa0003f5     	mov	x21, x0
   166a4: aa0803e0     	mov	x0, x8
   166a8: aa0203f6     	mov	x22, x2
   166ac: 2a1303e2     	mov	w2, w19
   166b0: aa0303f7     	mov	x23, x3
   166b4: 94000000     	bl	0x166b4 <syna_tcm_set_report_dispatcher+0x6c>
		00000000000166b4:  R_AARCH64_CALL26	_printk
   166b8: aa1503e0     	mov	x0, x21
   166bc: aa1603e2     	mov	x2, x22
   166c0: aa1703e3     	mov	x3, x23
   166c4: 8b341008     	add	x8, x0, w20, uxtb #4
   166c8: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x28>
		00000000000166c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe11
   166cc: 91000000     	add	x0, x0, #0x0
		00000000000166cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe11
   166d0: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x28>
		00000000000166d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7
   166d4: 91000021     	add	x1, x1, #0x0
		00000000000166d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7
   166d8: f901f102     	str	x2, [x8, #0x3e0]
   166dc: 2a1303e2     	mov	w2, w19
   166e0: f901ed03     	str	x3, [x8, #0x3d8]
   166e4: 94000000     	bl	0x166e4 <syna_tcm_set_report_dispatcher+0x9c>
		00000000000166e4:  R_AARCH64_CALL26	_printk
   166e8: 2a1f03e0     	mov	w0, wzr
   166ec: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   166f0: f9400bf7     	ldr	x23, [sp, #0x10]
   166f4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   166f8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   166fc: d50323bf     	autiasp
   16700: d65f03c0     	ret
