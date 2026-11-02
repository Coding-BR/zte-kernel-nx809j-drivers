
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001965c <tpd_id1_report_work>:
   1965c: d503233f     	paciasp
   19660: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19664: 910003fd     	mov	x29, sp
   19668: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019668:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x108
   1966c: 52800021     	mov	w1, #0x1                // =1
   19670: f9400100     	ldr	x0, [x8]
		0000000000019670:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x108
   19674: 940000f0     	bl	0x19a34 <uf_touch_report+0x7c>
		0000000000019674:  R_AARCH64_CALL26	edge_long_press_up
   19678: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1967c: d50323bf     	autiasp
   19680: d65f03c0     	ret
