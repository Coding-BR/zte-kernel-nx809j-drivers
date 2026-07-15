
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000094a4 <tpd_id3_report_work>:
    94a4: d503233f     	paciasp
    94a8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    94ac: 910003fd     	mov	x29, sp
    94b0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000094b0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x218
    94b4: 52800061     	mov	w1, #0x3                // =3
    94b8: f9400100     	ldr	x0, [x8]
		00000000000094b8:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x218
    94bc: 940000da     	bl	0x9824 <edge_long_press_up>
    94c0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    94c4: d50323bf     	autiasp
    94c8: d65f03c0     	ret
