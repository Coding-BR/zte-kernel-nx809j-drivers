
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d8a4 <syna_ts_panel_notifier_compat_callback>:
    d8a4: d503233f     	paciasp
    d8a8: d100c3ff     	sub	sp, sp, #0x30
    d8ac: a9027bfd     	stp	x29, x30, [sp, #0x20]
    d8b0: 910083fd     	add	x29, sp, #0x20
    d8b4: d5384108     	mrs	x8, SP_EL0
    d8b8: f9438908     	ldr	x8, [x8, #0x710]
    d8bc: f81f83a8     	stur	x8, [x29, #-0x8]
    d8c0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    d8c4: b4000161     	cbz	x1, 0xd8f0 <syna_ts_panel_notifier_compat_callback+0x4c>
    d8c8: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d8c8:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    d8cc: f9400429     	ldr	x9, [x1, #0x8]
    d8d0: f9400108     	ldr	x8, [x8]
		000000000000d8d0:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    d8d4: eb08013f     	cmp	x9, x8
    d8d8: 540000e1     	b.ne	0xd8f4 <syna_ts_panel_notifier_compat_callback+0x50>
    d8dc: b9400028     	ldr	w8, [x1]
    d8e0: 39406029     	ldrb	w9, [x1, #0x18]
    d8e4: 910023e1     	add	x1, sp, #0x8
    d8e8: b9000be8     	str	w8, [sp, #0x8]
    d8ec: 390053e9     	strb	w9, [sp, #0x14]
    d8f0: 94000000     	bl	0xd8f0 <syna_ts_panel_notifier_compat_callback+0x4c>
		000000000000d8f0:  R_AARCH64_CALL26	syna_ts_panel_notifier_callback
    d8f4: d5384108     	mrs	x8, SP_EL0
    d8f8: f9438908     	ldr	x8, [x8, #0x710]
    d8fc: f85f83a9     	ldur	x9, [x29, #-0x8]
    d900: eb09011f     	cmp	x8, x9
    d904: 540000a1     	b.ne	0xd918 <syna_ts_panel_notifier_compat_callback+0x74>
    d908: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    d90c: 9100c3ff     	add	sp, sp, #0x30
    d910: d50323bf     	autiasp
    d914: d65f03c0     	ret
    d918: 94000000     	bl	0xd918 <syna_ts_panel_notifier_compat_callback+0x74>
		000000000000d918:  R_AARCH64_CALL26	__stack_chk_fail
