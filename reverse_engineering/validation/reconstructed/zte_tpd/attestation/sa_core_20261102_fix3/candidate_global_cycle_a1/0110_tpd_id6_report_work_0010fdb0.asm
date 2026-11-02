
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019738 <tpd_id6_report_work>:
   19738: d503233f     	paciasp
   1973c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19740: 910003fd     	mov	x29, sp
   19744: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019744:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x3b0
   19748: 528000c1     	mov	w1, #0x6                // =6
   1974c: f9400100     	ldr	x0, [x8]
		000000000001974c:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x3b0
   19750: 940000b9     	bl	0x19a34 <uf_touch_report+0x7c>
		0000000000019750:  R_AARCH64_CALL26	edge_long_press_up
   19754: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   19758: d50323bf     	autiasp
   1975c: d65f03c0     	ret
