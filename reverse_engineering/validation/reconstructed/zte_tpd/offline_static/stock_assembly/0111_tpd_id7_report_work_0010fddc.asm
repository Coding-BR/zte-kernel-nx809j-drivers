
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009554 <tpd_id7_report_work>:
    9554: d503233f     	paciasp
    9558: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    955c: 910003fd     	mov	x29, sp
    9560: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009560:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x438
    9564: 528000e1     	mov	w1, #0x7                // =7
    9568: f9400100     	ldr	x0, [x8]
		0000000000009568:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x438
    956c: 940000ae     	bl	0x9824 <edge_long_press_up>
    9570: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9574: d50323bf     	autiasp
    9578: d65f03c0     	ret
