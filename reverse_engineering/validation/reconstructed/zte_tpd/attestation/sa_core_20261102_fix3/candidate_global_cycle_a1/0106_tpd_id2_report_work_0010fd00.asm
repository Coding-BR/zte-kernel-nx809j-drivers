
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019688 <tpd_id2_report_work>:
   19688: d503233f     	paciasp
   1968c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19690: 910003fd     	mov	x29, sp
   19694: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019694:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x190
   19698: 52800041     	mov	w1, #0x2                // =2
   1969c: f9400100     	ldr	x0, [x8]
		000000000001969c:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x190
   196a0: 940000e5     	bl	0x19a34 <uf_touch_report+0x7c>
		00000000000196a0:  R_AARCH64_CALL26	edge_long_press_up
   196a4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   196a8: d50323bf     	autiasp
   196ac: d65f03c0     	ret
