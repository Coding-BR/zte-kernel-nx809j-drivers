
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d91c <syna_ts_register_for_panel_events>:
    d91c: d503233f     	paciasp
    d920: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    d924: f9000bf5     	str	x21, [sp, #0x10]
    d928: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d92c: 910003fd     	mov	x29, sp
    d930: 90000015     	adrp	x21, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d930:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    d934: aa0003f3     	mov	x19, x0
    d938: f94002a8     	ldr	x8, [x21]
		000000000000d938:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    d93c: aa1303e1     	mov	x1, x19
    d940: aa0803e0     	mov	x0, x8
    d944: 94000000     	bl	0xd944 <syna_ts_register_for_panel_events+0x28>
		000000000000d944:  R_AARCH64_CALL26	syna_ts_panel_notifier_compat_register
    d948: b4000180     	cbz	x0, 0xd978 <syna_ts_register_for_panel_events+0x5c>
    d94c: aa0003f4     	mov	x20, x0
    d950: b13ffc1f     	cmn	x0, #0xfff
    d954: 54000122     	b.hs	0xd978 <syna_ts_register_for_panel_events+0x5c>
    d958: f94002a2     	ldr	x2, [x21]
		000000000000d958:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    d95c: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d95c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b562
    d960: 91000000     	add	x0, x0, #0x0
		000000000000d960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b562
    d964: 90000001     	adrp	x1, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19408
    d968: 91000021     	add	x1, x1, #0x0
		000000000000d968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19408
    d96c: 94000000     	bl	0xd96c <syna_ts_register_for_panel_events+0x50>
		000000000000d96c:  R_AARCH64_CALL26	_printk
    d970: f902aa74     	str	x20, [x19, #0x550]
    d974: 14000006     	b	0xd98c <syna_ts_register_for_panel_events+0x70>
    d978: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b30a
    d97c: 91000000     	add	x0, x0, #0x0
		000000000000d97c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b30a
    d980: 90000001     	adrp	x1, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19408
    d984: 91000021     	add	x1, x1, #0x0
		000000000000d984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19408
    d988: 94000000     	bl	0xd988 <syna_ts_register_for_panel_events+0x6c>
		000000000000d988:  R_AARCH64_CALL26	_printk
    d98c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d990: f9400bf5     	ldr	x21, [sp, #0x10]
    d994: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d998: d50323bf     	autiasp
    d99c: d65f03c0     	ret
