
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000944c <tpd_id1_report_work>:
    944c: d503233f     	paciasp
    9450: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9454: 910003fd     	mov	x29, sp
    9458: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009458:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x108
    945c: 52800021     	mov	w1, #0x1                // =1
    9460: f9400100     	ldr	x0, [x8]
		0000000000009460:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x108
    9464: 940000f0     	bl	0x9824 <edge_long_press_up>
    9468: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    946c: d50323bf     	autiasp
    9470: d65f03c0     	ret
