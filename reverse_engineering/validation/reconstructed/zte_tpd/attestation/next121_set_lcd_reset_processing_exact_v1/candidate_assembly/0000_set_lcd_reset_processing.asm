
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b6e4 <set_lcd_reset_processing>:
   1b6e4: d503233f     	paciasp
   1b6e8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1b6ec: 910003fd     	mov	x29, sp
   1b6f0: 90000008     	adrp	x8, 0x1b000 <tp_edge_report_limit_read+0x474>
		000000000001b6f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b6f4: 12000001     	and	w1, w0, #0x1
   1b6f8: f9400108     	ldr	x8, [x8]
		000000000001b6f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b6fc: 39006100     	strb	w0, [x8, #0x18]
   1b700: 90000008     	adrp	x8, 0x1b000 <tp_edge_report_limit_read+0x474>
		000000000001b700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b80c
   1b704: 91000108     	add	x8, x8, #0x0
		000000000001b704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b80c
   1b708: aa0803e0     	mov	x0, x8
   1b70c: 94000000     	bl	0x1b70c <set_lcd_reset_processing+0x28>
		000000000001b70c:  R_AARCH64_CALL26	_printk
   1b710: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1b714: d50323bf     	autiasp
   1b718: d65f03c0     	ret
