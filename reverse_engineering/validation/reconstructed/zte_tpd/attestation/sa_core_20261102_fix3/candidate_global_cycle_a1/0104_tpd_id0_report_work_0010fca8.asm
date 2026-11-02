
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019630 <tpd_id0_report_work>:
   19630: d503233f     	paciasp
   19634: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19638: 910003fd     	mov	x29, sp
   1963c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001963c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x80
   19640: 2a1f03e1     	mov	w1, wzr
   19644: f9400100     	ldr	x0, [x8]
		0000000000019644:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x80
   19648: 940000fb     	bl	0x19a34 <uf_touch_report+0x7c>
		0000000000019648:  R_AARCH64_CALL26	edge_long_press_up
   1964c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   19650: d50323bf     	autiasp
   19654: d65f03c0     	ret
