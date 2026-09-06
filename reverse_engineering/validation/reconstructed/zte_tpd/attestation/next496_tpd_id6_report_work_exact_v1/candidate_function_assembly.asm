
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002535c <tpd_id6_report_work>:
   2535c: d503233f     	paciasp
   25360: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   25364: 910003fd     	mov	x29, sp
   25368: 90000008     	adrp	x8, 0x25000 <tpd_report_work_init+0x50>
		0000000000025368:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x3b0
   2536c: 528000c1     	mov	w1, #0x6                // =6
   25370: f9400100     	ldr	x0, [x8]
		0000000000025370:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x3b0
   25374: 940000b9     	bl	0x25658 <syna_ts_check_dt+0x2d0>
		0000000000025374:  R_AARCH64_CALL26	edge_long_press_up
   25378: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2537c: d50323bf     	autiasp
   25380: d65f03c0     	ret
