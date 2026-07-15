
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009528 <tpd_id6_report_work>:
    9528: d503233f     	paciasp
    952c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9530: 910003fd     	mov	x29, sp
    9534: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009534:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x3b0
    9538: 528000c1     	mov	w1, #0x6                // =6
    953c: f9400100     	ldr	x0, [x8]
		000000000000953c:  R_AARCH64_LDST64_ABS_LO12_NC	point_report_info+0x3b0
    9540: 940000b9     	bl	0x9824 <edge_long_press_up>
    9544: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9548: d50323bf     	autiasp
    954c: d65f03c0     	ret
