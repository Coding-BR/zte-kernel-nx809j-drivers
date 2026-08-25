
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a7b0 <syna_ts_register_for_panel_events>:
   1a7b0: d503233f     	paciasp
   1a7b4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1a7b8: f9000bf5     	str	x21, [sp, #0x10]
   1a7bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1a7c0: 910003fd     	mov	x29, sp
   1a7c4: 90000015     	adrp	x21, 0x1a000 <syna_testing_pt0a_zte+0x80>
		000000000001a7c4:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
   1a7c8: aa0003f3     	mov	x19, x0
   1a7cc: 90000003     	adrp	x3, 0x1a000 <syna_testing_pt0a_zte+0x80>
		000000000001a7cc:  R_AARCH64_ADR_PREL_PG_HI21	syna_ts_panel_notifier_callback
   1a7d0: 91000063     	add	x3, x3, #0x0
		000000000001a7d0:  R_AARCH64_ADD_ABS_LO12_NC	syna_ts_panel_notifier_callback
   1a7d4: f94002a2     	ldr	x2, [x21]
		000000000001a7d4:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1a7d8: 52800020     	mov	w0, #0x1                // =1
   1a7dc: 2a1f03e1     	mov	w1, wzr
   1a7e0: aa1303e4     	mov	x4, x19
   1a7e4: 94000000     	bl	0x1a7e4 <syna_ts_register_for_panel_events+0x34>
		000000000001a7e4:  R_AARCH64_CALL26	panel_event_notifier_register
   1a7e8: b50000e0     	cbnz	x0, 0x1a804 <syna_ts_register_for_panel_events+0x54>
   1a7ec: 90000000     	adrp	x0, 0x1a000 <syna_testing_pt0a_zte+0x80>
		000000000001a7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10189
   1a7f0: 91000000     	add	x0, x0, #0x0
		000000000001a7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10189
   1a7f4: 90000001     	adrp	x1, 0x1a000 <syna_testing_pt0a_zte+0x80>
		000000000001a7f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd984
   1a7f8: 91000021     	add	x1, x1, #0x0
		000000000001a7f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd984
   1a7fc: 94000000     	bl	0x1a7fc <syna_ts_register_for_panel_events+0x4c>
		000000000001a7fc:  R_AARCH64_CALL26	_printk
   1a800: 14000009     	b	0x1a824 <syna_ts_register_for_panel_events+0x74>
   1a804: f94002a2     	ldr	x2, [x21]
		000000000001a804:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1a808: aa0003f4     	mov	x20, x0
   1a80c: 90000000     	adrp	x0, 0x1a000 <syna_testing_pt0a_zte+0x80>
		000000000001a80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1055a
   1a810: 91000000     	add	x0, x0, #0x0
		000000000001a810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1055a
   1a814: 90000001     	adrp	x1, 0x1a000 <syna_testing_pt0a_zte+0x80>
		000000000001a814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd984
   1a818: 91000021     	add	x1, x1, #0x0
		000000000001a818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd984
   1a81c: 94000000     	bl	0x1a81c <syna_ts_register_for_panel_events+0x6c>
		000000000001a81c:  R_AARCH64_CALL26	_printk
   1a820: f902aa74     	str	x20, [x19, #0x550]
   1a824: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1a828: f9400bf5     	ldr	x21, [sp, #0x10]
   1a82c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1a830: d50323bf     	autiasp
   1a834: d65f03c0     	ret
