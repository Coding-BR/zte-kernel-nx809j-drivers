
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c83c <syna_ts_register_for_panel_events>:
   1c83c: d503233f     	paciasp
   1c840: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c844: f9000bf5     	str	x21, [sp, #0x10]
   1c848: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c84c: 910003fd     	mov	x29, sp
   1c850: 90000015     	adrp	x21, 0x1c000 <syna_testing_pt0a_zte+0x1bc>
		000000000001c850:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
   1c854: aa0003f3     	mov	x19, x0
   1c858: 90000003     	adrp	x3, 0x1c000 <syna_testing_pt0a_zte+0x1bc>
		000000000001c858:  R_AARCH64_ADR_PREL_PG_HI21	syna_ts_panel_notifier_callback
   1c85c: 91000063     	add	x3, x3, #0x0
		000000000001c85c:  R_AARCH64_ADD_ABS_LO12_NC	syna_ts_panel_notifier_callback
   1c860: f94002a2     	ldr	x2, [x21]
		000000000001c860:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1c864: 52800020     	mov	w0, #0x1                // =1
   1c868: 2a1f03e1     	mov	w1, wzr
   1c86c: aa1303e4     	mov	x4, x19
   1c870: 94000000     	bl	0x1c870 <syna_ts_register_for_panel_events+0x34>
		000000000001c870:  R_AARCH64_CALL26	panel_event_notifier_register
   1c874: b5000100     	cbnz	x0, 0x1c894 <syna_ts_register_for_panel_events+0x58>
   1c878: f94002a2     	ldr	x2, [x21]
		000000000001c878:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1c87c: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x1bc>
		000000000001c87c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A3A7
   1c880: 91000000     	add	x0, x0, #0x0
		000000000001c880:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A3A7
   1c884: 90000001     	adrp	x1, 0x1c000 <syna_testing_pt0a_zte+0x1bc>
		000000000001c884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cc6
   1c888: 91000021     	add	x1, x1, #0x0
		000000000001c888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cc6
   1c88c: 94000000     	bl	0x1c88c <syna_ts_register_for_panel_events+0x50>
		000000000001c88c:  R_AARCH64_CALL26	_printk
   1c890: 14000009     	b	0x1c8b4 <syna_ts_register_for_panel_events+0x78>
   1c894: f94002a2     	ldr	x2, [x21]
		000000000001c894:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1c898: aa0003f4     	mov	x20, x0
   1c89c: 90000000     	adrp	x0, 0x1c000 <syna_testing_pt0a_zte+0x1bc>
		000000000001c89c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A96E
   1c8a0: 91000000     	add	x0, x0, #0x0
		000000000001c8a0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A96E
   1c8a4: 90000001     	adrp	x1, 0x1c000 <syna_testing_pt0a_zte+0x1bc>
		000000000001c8a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cc6
   1c8a8: 91000021     	add	x1, x1, #0x0
		000000000001c8a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cc6
   1c8ac: 94000000     	bl	0x1c8ac <syna_ts_register_for_panel_events+0x70>
		000000000001c8ac:  R_AARCH64_CALL26	_printk
   1c8b0: f902aa74     	str	x20, [x19, #0x550]
   1c8b4: 93407c00     	sxtw	x0, w0
   1c8b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c8bc: f9400bf5     	ldr	x21, [sp, #0x10]
   1c8c0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c8c4: d50323bf     	autiasp
   1c8c8: d65f03c0     	ret
