
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a814 <ufp_mac_exit>:
    a814: d503233f     	paciasp
    a818: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a81c: f9000bf3     	str	x19, [sp, #0x10]
    a820: 910003fd     	mov	x29, sp
    a824: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a824:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a828: 91000273     	add	x19, x19, #0x0
		000000000000a828:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops
    a82c: 91004260     	add	x0, x19, #0x10
    a830: 94000000     	bl	0xa830 <ufp_mac_exit+0x1c>
		000000000000a830:  R_AARCH64_CALL26	cancel_delayed_work_sync
    a834: f9403e60     	ldr	x0, [x19, #0x78]
    a838: 94000000     	bl	0xa838 <ufp_mac_exit+0x24>
		000000000000a838:  R_AARCH64_CALL26	__flush_workqueue
    a83c: f9403e60     	ldr	x0, [x19, #0x78]
    a840: 94000000     	bl	0xa840 <ufp_mac_exit+0x2c>
		000000000000a840:  R_AARCH64_CALL26	destroy_workqueue
    a844: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a844:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
    a848: 91000000     	add	x0, x0, #0x0
		000000000000a848:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
    a84c: 94000000     	bl	0xa84c <ufp_mac_exit+0x38>
		000000000000a84c:  R_AARCH64_CALL26	wakeup_source_remove
    a850: f900027f     	str	xzr, [x19]
    a854: f9400bf3     	ldr	x19, [sp, #0x10]
    a858: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a85c: d50323bf     	autiasp
    a860: d65f03c0     	ret
