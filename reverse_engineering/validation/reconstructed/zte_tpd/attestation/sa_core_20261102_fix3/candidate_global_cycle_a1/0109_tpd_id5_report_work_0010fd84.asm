
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001970c <tpd_id5_report_work>:
   1970c: d503233f     	paciasp
   19710: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   19714: 910003fd     	mov	x29, sp
   19718: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019718:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x328
   1971c: 528000a1     	mov	w1, #0x5                // =5
   19720: f9400100     	ldr	x0, [x8]
		0000000000019720:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x328
   19724: 940000c4     	bl	0x19a34 <uf_touch_report+0x7c>
		0000000000019724:  R_AARCH64_CALL26	edge_long_press_up
   19728: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1972c: d50323bf     	autiasp
   19730: d65f03c0     	ret
