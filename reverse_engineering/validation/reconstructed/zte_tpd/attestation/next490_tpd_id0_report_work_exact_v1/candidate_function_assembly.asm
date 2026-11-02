
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002535c <tpd_id0_report_work>:
   2535c: d503233f     	paciasp
   25360: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   25364: 910003fd     	mov	x29, sp
   25368: 90000008     	adrp	x8, 0x25000 <ghost_check_reset+0x28>
		0000000000025368:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x80
   2536c: 2a1f03e1     	mov	w1, wzr
   25370: f9400100     	ldr	x0, [x8]
		0000000000025370:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x80
   25374: 940000fb     	bl	0x25760 <syna_ts_check_dt+0x3d8>
		0000000000025374:  R_AARCH64_CALL26	edge_long_press_up
   25378: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2537c: d50323bf     	autiasp
   25380: d65f03c0     	ret
