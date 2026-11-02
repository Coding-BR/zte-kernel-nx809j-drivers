
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002508 <f0_save_store>:
    2508: d503233f     	paciasp
    250c: d100c3ff     	sub	sp, sp, #0x30
    2510: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2514: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2518: 910043fd     	add	x29, sp, #0x10
    251c: d5384109     	mrs	x9, SP_EL0
    2520: aa0203e8     	mov	x8, x2
    2524: 910013e2     	add	x2, sp, #0x4
    2528: f9438929     	ldr	x9, [x9, #0x710]
    252c: 2a1f03e1     	mov	w1, wzr
    2530: aa0303f3     	mov	x19, x3
    2534: f90007e9     	str	x9, [sp, #0x8]
    2538: f9404c14     	ldr	x20, [x0, #0x98]
    253c: aa0803e0     	mov	x0, x8
    2540: b90007ff     	str	wzr, [sp, #0x4]
    2544: 94000000     	bl	0x2544 <f0_save_store+0x3c>
		0000000000002544:  R_AARCH64_CALL26	kstrtouint
    2548: 37f80080     	tbnz	w0, #0x1f, 0x2558 <f0_save_store+0x50>
    254c: b94007e8     	ldr	w8, [sp, #0x4]
    2550: b81e0288     	stur	w8, [x20, #-0x20]
    2554: 14000002     	b	0x255c <f0_save_store+0x54>
    2558: 93407c13     	sxtw	x19, w0
    255c: d5384108     	mrs	x8, SP_EL0
    2560: f9438908     	ldr	x8, [x8, #0x710]
    2564: f94007e9     	ldr	x9, [sp, #0x8]
    2568: eb09011f     	cmp	x8, x9
    256c: 540000e1     	b.ne	0x2588 <f0_save_store+0x80>
    2570: aa1303e0     	mov	x0, x19
    2574: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2578: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    257c: 9100c3ff     	add	sp, sp, #0x30
    2580: d50323bf     	autiasp
    2584: d65f03c0     	ret
    2588: 94000000     	bl	0x2588 <f0_save_store+0x80>
		0000000000002588:  R_AARCH64_CALL26	__stack_chk_fail
