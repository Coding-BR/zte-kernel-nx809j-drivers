
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d86c <syna_ts_panel_notifier_compat_callback>:
    d86c: d503233f     	paciasp
    d870: d100c3ff     	sub	sp, sp, #0x30
    d874: a9027bfd     	stp	x29, x30, [sp, #0x20]
    d878: 910083fd     	add	x29, sp, #0x20
    d87c: d5384108     	mrs	x8, SP_EL0
    d880: f9438908     	ldr	x8, [x8, #0x710]
    d884: f81f83a8     	stur	x8, [x29, #-0x8]
    d888: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    d88c: b4000161     	cbz	x1, 0xd8b8 <syna_ts_panel_notifier_compat_callback+0x4c>
    d890: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d890:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    d894: f9400429     	ldr	x9, [x1, #0x8]
    d898: f9400108     	ldr	x8, [x8]
		000000000000d898:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    d89c: eb08013f     	cmp	x9, x8
    d8a0: 540000e1     	b.ne	0xd8bc <syna_ts_panel_notifier_compat_callback+0x50>
    d8a4: b9400028     	ldr	w8, [x1]
    d8a8: 39406029     	ldrb	w9, [x1, #0x18]
    d8ac: 910023e1     	add	x1, sp, #0x8
    d8b0: b9000be8     	str	w8, [sp, #0x8]
    d8b4: 390053e9     	strb	w9, [sp, #0x14]
    d8b8: 94000000     	bl	0xd8b8 <syna_ts_panel_notifier_compat_callback+0x4c>
		000000000000d8b8:  R_AARCH64_CALL26	syna_ts_panel_notifier_callback
    d8bc: d5384108     	mrs	x8, SP_EL0
    d8c0: f9438908     	ldr	x8, [x8, #0x710]
    d8c4: f85f83a9     	ldur	x9, [x29, #-0x8]
    d8c8: eb09011f     	cmp	x8, x9
    d8cc: 540000a1     	b.ne	0xd8e0 <syna_ts_panel_notifier_compat_callback+0x74>
    d8d0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    d8d4: 9100c3ff     	add	sp, sp, #0x30
    d8d8: d50323bf     	autiasp
    d8dc: d65f03c0     	ret
    d8e0: 94000000     	bl	0xd8e0 <syna_ts_panel_notifier_compat_callback+0x74>
		000000000000d8e0:  R_AARCH64_CALL26	__stack_chk_fail
