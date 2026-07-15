
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009420 <tpd_id0_report_work>:
    9420: d503233f     	paciasp
    9424: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9428: 910003fd     	mov	x29, sp
    942c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000942c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x80
    9430: 2a1f03e1     	mov	w1, wzr
    9434: f9400100     	ldr	x0, [x8]
		0000000000009434:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x80
    9438: 940000fb     	bl	0x9824 <edge_long_press_up>
    943c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9440: d50323bf     	autiasp
    9444: d65f03c0     	ret
