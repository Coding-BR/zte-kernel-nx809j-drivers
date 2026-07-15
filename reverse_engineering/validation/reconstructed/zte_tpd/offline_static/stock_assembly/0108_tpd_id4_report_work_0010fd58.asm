
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000094d0 <tpd_id4_report_work>:
    94d0: d503233f     	paciasp
    94d4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    94d8: 910003fd     	mov	x29, sp
    94dc: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000094dc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2a0
    94e0: 52800081     	mov	w1, #0x4                // =4
    94e4: f9400100     	ldr	x0, [x8]
		00000000000094e4:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x2a0
    94e8: 940000cf     	bl	0x9824 <edge_long_press_up>
    94ec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    94f0: d50323bf     	autiasp
    94f4: d65f03c0     	ret
