
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000196e0 <tpd_id4_report_work>:
   196e0: d503233f     	paciasp
   196e4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   196e8: 910003fd     	mov	x29, sp
   196ec: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000196ec:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2a0
   196f0: 52800081     	mov	w1, #0x4                // =4
   196f4: f9400100     	ldr	x0, [x8]
		00000000000196f4:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x2a0
   196f8: 940000cf     	bl	0x19a34 <uf_touch_report+0x7c>
		00000000000196f8:  R_AARCH64_CALL26	edge_long_press_up
   196fc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   19700: d50323bf     	autiasp
   19704: d65f03c0     	ret
