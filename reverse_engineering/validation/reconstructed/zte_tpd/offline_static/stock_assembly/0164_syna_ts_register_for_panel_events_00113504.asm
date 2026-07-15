
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cc7c <syna_ts_register_for_panel_events>:
    cc7c: d503233f     	paciasp
    cc80: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    cc84: f9000bf5     	str	x21, [sp, #0x10]
    cc88: a9024ff4     	stp	x20, x19, [sp, #0x20]
    cc8c: 910003fd     	mov	x29, sp
    cc90: 90000015     	adrp	x21, 0xc000 <syna_dev_connect+0x174>
		000000000000cc90:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7a0
    cc94: aa0003f3     	mov	x19, x0
    cc98: 90000003     	adrp	x3, 0xc000 <syna_dev_connect+0x174>
		000000000000cc98:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe08c
    cc9c: 91000063     	add	x3, x3, #0x0
		000000000000cc9c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe08c
    cca0: f94002a2     	ldr	x2, [x21]
		000000000000cca0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7a0
    cca4: 52800020     	mov	w0, #0x1                // =1
    cca8: 2a1f03e1     	mov	w1, wzr
    ccac: aa1303e4     	mov	x4, x19
    ccb0: 94000000     	bl	0xccb0 <syna_ts_register_for_panel_events+0x34>
		000000000000ccb0:  R_AARCH64_CALL26	panel_event_notifier_register
    ccb4: b50000e0     	cbnz	x0, 0xccd0 <syna_ts_register_for_panel_events+0x54>
    ccb8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000ccb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x917e
    ccbc: 91000000     	add	x0, x0, #0x0
		000000000000ccbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x917e
    ccc0: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000ccc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c87
    ccc4: 91000021     	add	x1, x1, #0x0
		000000000000ccc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c87
    ccc8: 94000000     	bl	0xccc8 <syna_ts_register_for_panel_events+0x4c>
		000000000000ccc8:  R_AARCH64_CALL26	_printk
    cccc: 14000009     	b	0xccf0 <syna_ts_register_for_panel_events+0x74>
    ccd0: f94002a2     	ldr	x2, [x21]
		000000000000ccd0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7a0
    ccd4: aa0003f4     	mov	x20, x0
    ccd8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000ccd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9777
    ccdc: 91000000     	add	x0, x0, #0x0
		000000000000ccdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9777
    cce0: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000cce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c87
    cce4: 91000021     	add	x1, x1, #0x0
		000000000000cce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c87
    cce8: 94000000     	bl	0xcce8 <syna_ts_register_for_panel_events+0x6c>
		000000000000cce8:  R_AARCH64_CALL26	_printk
    ccec: f902aa74     	str	x20, [x19, #0x550]
    ccf0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ccf4: f9400bf5     	ldr	x21, [sp, #0x10]
    ccf8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    ccfc: d50323bf     	autiasp
    cd00: d65f03c0     	ret
