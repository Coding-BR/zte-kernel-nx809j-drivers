
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000197bc <tpd_id9_report_work>:
   197bc: d503233f     	paciasp
   197c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   197c4: 910003fd     	mov	x29, sp
   197c8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000197c8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x548
   197cc: 52800121     	mov	w1, #0x9                // =9
   197d0: f9400100     	ldr	x0, [x8]
		00000000000197d0:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x548
   197d4: 94000098     	bl	0x19a34 <uf_touch_report+0x7c>
		00000000000197d4:  R_AARCH64_CALL26	edge_long_press_up
   197d8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   197dc: d50323bf     	autiasp
   197e0: d65f03c0     	ret
