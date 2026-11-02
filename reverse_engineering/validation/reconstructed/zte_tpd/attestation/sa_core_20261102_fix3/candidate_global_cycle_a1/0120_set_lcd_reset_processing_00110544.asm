
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015784 <set_lcd_reset_processing>:
   15784: d503233f     	paciasp
   15788: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1578c: 910003fd     	mov	x29, sp
   15790: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015790:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15794: 12000001     	and	w1, w0, #0x1
   15798: f9400108     	ldr	x8, [x8]
		0000000000015798:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1579c: 39006100     	strb	w0, [x8, #0x18]
   157a0: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000157a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa46
   157a4: 91000108     	add	x8, x8, #0x0
		00000000000157a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa46
   157a8: aa0803e0     	mov	x0, x8
   157ac: 94000000     	bl	0x157ac <set_lcd_reset_processing+0x28>
		00000000000157ac:  R_AARCH64_CALL26	_printk
   157b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   157b4: d50323bf     	autiasp
   157b8: d65f03c0     	ret
