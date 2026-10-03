
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000158c <charger_policy_notifier_switch>:
    158c: b4000061     	cbz	x1, 0x1598 <charger_policy_notifier_switch+0xc>
    1590: 2a1f03e0     	mov	w0, wzr
    1594: d65f03c0     	ret
    1598: d503233f     	paciasp
    159c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    15a0: f9000bf5     	str	x21, [sp, #0x10]
    15a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    15a8: 910003fd     	mov	x29, sp
    15ac: aa0003f3     	mov	x19, x0
    15b0: f8498e68     	ldr	x8, [x19, #0x98]!
    15b4: 37000248     	tbnz	w8, #0x0, 0x15fc <charger_policy_notifier_switch+0x70>
    15b8: f9400048     	ldr	x8, [x2]
    15bc: f940d401     	ldr	x1, [x0, #0x1a8]
    15c0: aa0003f5     	mov	x21, x0
    15c4: f9400114     	ldr	x20, [x8]
    15c8: aa1403e0     	mov	x0, x20
    15cc: 94000000     	bl	0x15cc <charger_policy_notifier_switch+0x40>
		00000000000015cc:  R_AARCH64_CALL26	strcmp
    15d0: 340000c0     	cbz	w0, 0x15e8 <charger_policy_notifier_switch+0x5c>
    15d4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000015d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d
    15d8: 91000021     	add	x1, x1, #0x0
		00000000000015d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d
    15dc: aa1403e0     	mov	x0, x20
    15e0: 94000000     	bl	0x15e0 <charger_policy_notifier_switch+0x54>
		00000000000015e0:  R_AARCH64_CALL26	strcmp
    15e4: 350000c0     	cbnz	w0, 0x15fc <charger_policy_notifier_switch+0x70>
    15e8: f9404aa1     	ldr	x1, [x21, #0x90]
    15ec: 52800400     	mov	w0, #0x20               // =32
    15f0: aa1303e2     	mov	x2, x19
    15f4: 52800643     	mov	w3, #0x32               // =50
    15f8: 94000000     	bl	0x15f8 <charger_policy_notifier_switch+0x6c>
		00000000000015f8:  R_AARCH64_CALL26	queue_delayed_work_on
    15fc: 52800020     	mov	w0, #0x1                // =1
    1600: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1604: f9400bf5     	ldr	x21, [sp, #0x10]
    1608: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    160c: d50323bf     	autiasp
    1610: d65f03c0     	ret
