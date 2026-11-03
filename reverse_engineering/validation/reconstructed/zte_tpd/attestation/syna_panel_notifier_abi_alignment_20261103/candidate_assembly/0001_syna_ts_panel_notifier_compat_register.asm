
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d86c <syna_ts_panel_notifier_compat_register>:
    d86c: d503233f     	paciasp
    d870: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    d874: 910003fd     	mov	x29, sp
    d878: aa0103e4     	mov	x4, x1
    d87c: aa0003e2     	mov	x2, x0
    d880: 90000003     	adrp	x3, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d880:  R_AARCH64_ADR_PREL_PG_HI21	syna_ts_panel_notifier_compat_callback
    d884: 91000063     	add	x3, x3, #0x0
		000000000000d884:  R_AARCH64_ADD_ABS_LO12_NC	syna_ts_panel_notifier_compat_callback
    d888: 2a1f03e0     	mov	w0, wzr
    d88c: 2a1f03e1     	mov	w1, wzr
    d890: 94000000     	bl	0xd890 <syna_ts_panel_notifier_compat_register+0x24>
		000000000000d890:  R_AARCH64_CALL26	panel_event_notifier_register
    d894: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    d898: d50323bf     	autiasp
    d89c: d65f03c0     	ret
