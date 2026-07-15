
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009478 <tpd_id2_report_work>:
    9478: d503233f     	paciasp
    947c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9480: 910003fd     	mov	x29, sp
    9484: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009484:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x190
    9488: 52800041     	mov	w1, #0x2                // =2
    948c: f9400100     	ldr	x0, [x8]
		000000000000948c:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x190
    9490: 940000e5     	bl	0x9824 <edge_long_press_up>
    9494: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9498: d50323bf     	autiasp
    949c: d65f03c0     	ret
