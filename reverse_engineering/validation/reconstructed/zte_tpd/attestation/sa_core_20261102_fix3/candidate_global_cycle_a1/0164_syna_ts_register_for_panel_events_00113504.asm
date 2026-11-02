
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c090 <syna_ts_register_for_panel_events>:
    c090: d503233f     	paciasp
    c094: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    c098: f9000bf5     	str	x21, [sp, #0x10]
    c09c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c0a0: 910003fd     	mov	x29, sp
    c0a4: 90000015     	adrp	x21, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c0a4:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    c0a8: aa0003f3     	mov	x19, x0
    c0ac: 90000003     	adrp	x3, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c0ac:  R_AARCH64_ADR_PREL_PG_HI21	syna_ts_panel_notifier_callback
    c0b0: 91000063     	add	x3, x3, #0x0
		000000000000c0b0:  R_AARCH64_ADD_ABS_LO12_NC	syna_ts_panel_notifier_callback
    c0b4: f94002a2     	ldr	x2, [x21]
		000000000000c0b4:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    c0b8: 52800020     	mov	w0, #0x1                // =1
    c0bc: 2a1f03e1     	mov	w1, wzr
    c0c0: aa1303e4     	mov	x4, x19
    c0c4: 94000000     	bl	0xc0c4 <syna_ts_register_for_panel_events+0x34>
		000000000000c0c4:  R_AARCH64_CALL26	panel_event_notifier_register
    c0c8: b50000e0     	cbnz	x0, 0xc0e4 <syna_ts_register_for_panel_events+0x54>
    c0cc: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c0cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b409
    c0d0: 91000000     	add	x0, x0, #0x0
		000000000000c0d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b409
    c0d4: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c0d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1948f
    c0d8: 91000021     	add	x1, x1, #0x0
		000000000000c0d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1948f
    c0dc: 94000000     	bl	0xc0dc <syna_ts_register_for_panel_events+0x4c>
		000000000000c0dc:  R_AARCH64_CALL26	_printk
    c0e0: 14000009     	b	0xc104 <syna_ts_register_for_panel_events+0x74>
    c0e4: f94002a2     	ldr	x2, [x21]
		000000000000c0e4:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    c0e8: aa0003f4     	mov	x20, x0
    c0ec: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c0ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b661
    c0f0: 91000000     	add	x0, x0, #0x0
		000000000000c0f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b661
    c0f4: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c0f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1948f
    c0f8: 91000021     	add	x1, x1, #0x0
		000000000000c0f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1948f
    c0fc: 94000000     	bl	0xc0fc <syna_ts_register_for_panel_events+0x6c>
		000000000000c0fc:  R_AARCH64_CALL26	_printk
    c100: f902aa74     	str	x20, [x19, #0x550]
    c104: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    c108: f9400bf5     	ldr	x21, [sp, #0x10]
    c10c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    c110: d50323bf     	autiasp
    c114: d65f03c0     	ret
