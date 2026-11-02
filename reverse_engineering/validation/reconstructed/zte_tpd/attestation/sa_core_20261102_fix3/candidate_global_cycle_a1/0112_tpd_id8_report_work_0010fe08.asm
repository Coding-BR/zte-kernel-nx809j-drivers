
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019790 <tpd_id8_report_work>:
   19790: d503233f     	paciasp
   19794: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19798: 910003fd     	mov	x29, sp
   1979c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001979c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x4c0
   197a0: 52800101     	mov	w1, #0x8                // =8
   197a4: f9400100     	ldr	x0, [x8]
		00000000000197a4:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x4c0
   197a8: 940000a3     	bl	0x19a34 <uf_touch_report+0x7c>
		00000000000197a8:  R_AARCH64_CALL26	edge_long_press_up
   197ac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   197b0: d50323bf     	autiasp
   197b4: d65f03c0     	ret
