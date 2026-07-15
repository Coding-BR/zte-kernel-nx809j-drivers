
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000095ac <tpd_id9_report_work>:
    95ac: d503233f     	paciasp
    95b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    95b4: 910003fd     	mov	x29, sp
    95b8: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000095b8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x548
    95bc: 52800121     	mov	w1, #0x9                // =9
    95c0: f9400100     	ldr	x0, [x8]
		00000000000095c0:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x548
    95c4: 94000098     	bl	0x9824 <edge_long_press_up>
    95c8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    95cc: d50323bf     	autiasp
    95d0: d65f03c0     	ret
