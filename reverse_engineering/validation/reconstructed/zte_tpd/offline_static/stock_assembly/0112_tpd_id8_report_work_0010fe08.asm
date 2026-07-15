
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009580 <tpd_id8_report_work>:
    9580: d503233f     	paciasp
    9584: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9588: 910003fd     	mov	x29, sp
    958c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000958c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x4c0
    9590: 52800101     	mov	w1, #0x8                // =8
    9594: f9400100     	ldr	x0, [x8]
		0000000000009594:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x4c0
    9598: 940000a3     	bl	0x9824 <edge_long_press_up>
    959c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    95a0: d50323bf     	autiasp
    95a4: d65f03c0     	ret
