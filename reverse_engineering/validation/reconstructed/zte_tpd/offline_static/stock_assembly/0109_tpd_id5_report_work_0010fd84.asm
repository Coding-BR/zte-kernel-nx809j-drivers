
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000094fc <tpd_id5_report_work>:
    94fc: d503233f     	paciasp
    9500: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9504: 910003fd     	mov	x29, sp
    9508: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009508:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x328
    950c: 528000a1     	mov	w1, #0x5                // =5
    9510: f9400100     	ldr	x0, [x8]
		0000000000009510:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x328
    9514: 940000c4     	bl	0x9824 <edge_long_press_up>
    9518: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    951c: d50323bf     	autiasp
    9520: d65f03c0     	ret
