
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d78c <syna_tcm_set_report_dispatcher>:
   1d78c: d503233f     	paciasp
   1d790: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1d794: f9000bf7     	str	x23, [sp, #0x10]
   1d798: a90257f6     	stp	x22, x21, [sp, #0x20]
   1d79c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1d7a0: 910003fd     	mov	x29, sp
   1d7a4: b5000100     	cbnz	x0, 0x1d7c4 <syna_tcm_set_report_dispatcher+0x38>
   1d7a8: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d7a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d7ac: 91000000     	add	x0, x0, #0x0
		000000000001d7ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d7b0: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d7b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3542
   1d7b4: 91000021     	add	x1, x1, #0x0
		000000000001d7b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3542
   1d7b8: 94000000     	bl	0x1d7b8 <syna_tcm_set_report_dispatcher+0x2c>
		000000000001d7b8:  R_AARCH64_CALL26	_printk
   1d7bc: 12801e00     	mov	w0, #-0xf1              // =-241
   1d7c0: 1400001c     	b	0x1d830 <syna_tcm_set_report_dispatcher+0xa4>
   1d7c4: 12001c33     	and	w19, w1, #0xff
   1d7c8: 2a0103f4     	mov	w20, w1
   1d7cc: 71003e7f     	cmp	w19, #0xf
   1d7d0: 540001c8     	b.hi	0x1d808 <syna_tcm_set_report_dispatcher+0x7c>
   1d7d4: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb639
   1d7d8: 91000108     	add	x8, x8, #0x0
		000000000001d7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb639
   1d7dc: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d7dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3542
   1d7e0: 91000021     	add	x1, x1, #0x0
		000000000001d7e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3542
   1d7e4: aa0003f5     	mov	x21, x0
   1d7e8: aa0803e0     	mov	x0, x8
   1d7ec: aa0203f6     	mov	x22, x2
   1d7f0: 2a1303e2     	mov	w2, w19
   1d7f4: aa0303f7     	mov	x23, x3
   1d7f8: 94000000     	bl	0x1d7f8 <syna_tcm_set_report_dispatcher+0x6c>
		000000000001d7f8:  R_AARCH64_CALL26	_printk
   1d7fc: aa1503e0     	mov	x0, x21
   1d800: aa1603e2     	mov	x2, x22
   1d804: aa1703e3     	mov	x3, x23
   1d808: 8b341008     	add	x8, x0, w20, uxtb #4
   1d80c: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22b8
   1d810: 91000000     	add	x0, x0, #0x0
		000000000001d810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22b8
   1d814: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3542
   1d818: 91000021     	add	x1, x1, #0x0
		000000000001d818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3542
   1d81c: f901f102     	str	x2, [x8, #0x3e0]
   1d820: 2a1303e2     	mov	w2, w19
   1d824: f901ed03     	str	x3, [x8, #0x3d8]
   1d828: 94000000     	bl	0x1d828 <syna_tcm_set_report_dispatcher+0x9c>
		000000000001d828:  R_AARCH64_CALL26	_printk
   1d82c: 2a1f03e0     	mov	w0, wzr
   1d830: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1d834: f9400bf7     	ldr	x23, [sp, #0x10]
   1d838: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1d83c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1d840: d50323bf     	autiasp
   1d844: d65f03c0     	ret
