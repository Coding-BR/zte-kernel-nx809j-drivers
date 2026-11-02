
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000196b4 <tpd_id3_report_work>:
   196b4: d503233f     	paciasp
   196b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   196bc: 910003fd     	mov	x29, sp
   196c0: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000196c0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x218
   196c4: 52800061     	mov	w1, #0x3                // =3
   196c8: f9400100     	ldr	x0, [x8]
		00000000000196c8:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x218
   196cc: 940000da     	bl	0x19a34 <uf_touch_report+0x7c>
		00000000000196cc:  R_AARCH64_CALL26	edge_long_press_up
   196d0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   196d4: d50323bf     	autiasp
   196d8: d65f03c0     	ret
