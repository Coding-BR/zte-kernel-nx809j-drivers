
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019764 <tpd_id7_report_work>:
   19764: d503233f     	paciasp
   19768: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1976c: 910003fd     	mov	x29, sp
   19770: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019770:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x438
   19774: 528000e1     	mov	w1, #0x7                // =7
   19778: f9400100     	ldr	x0, [x8]
		0000000000019778:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x438
   1977c: 940000ae     	bl	0x19a34 <uf_touch_report+0x7c>
		000000000001977c:  R_AARCH64_CALL26	edge_long_press_up
   19780: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   19784: d50323bf     	autiasp
   19788: d65f03c0     	ret
