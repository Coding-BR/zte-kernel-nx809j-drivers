
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002618 <osc_save_store>:
    2618: d503233f     	paciasp
    261c: d100c3ff     	sub	sp, sp, #0x30
    2620: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2624: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2628: 910043fd     	add	x29, sp, #0x10
    262c: d5384109     	mrs	x9, SP_EL0
    2630: aa0203e8     	mov	x8, x2
    2634: 910013e2     	add	x2, sp, #0x4
    2638: f9438929     	ldr	x9, [x9, #0x710]
    263c: 2a1f03e1     	mov	w1, wzr
    2640: aa0303f3     	mov	x19, x3
    2644: f90007e9     	str	x9, [sp, #0x8]
    2648: f9404c14     	ldr	x20, [x0, #0x98]
    264c: aa0803e0     	mov	x0, x8
    2650: b90007ff     	str	wzr, [sp, #0x4]
    2654: 94000000     	bl	0x2654 <osc_save_store+0x3c>
		0000000000002654:  R_AARCH64_CALL26	kstrtouint
    2658: 37f80080     	tbnz	w0, #0x1f, 0x2668 <osc_save_store+0x50>
    265c: b94007e8     	ldr	w8, [sp, #0x4]
    2660: b81f0288     	stur	w8, [x20, #-0x10]
    2664: 14000002     	b	0x266c <osc_save_store+0x54>
    2668: 93407c13     	sxtw	x19, w0
    266c: d5384108     	mrs	x8, SP_EL0
    2670: f9438908     	ldr	x8, [x8, #0x710]
    2674: f94007e9     	ldr	x9, [sp, #0x8]
    2678: eb09011f     	cmp	x8, x9
    267c: 540000e1     	b.ne	0x2698 <osc_save_store+0x80>
    2680: aa1303e0     	mov	x0, x19
    2684: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2688: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    268c: 9100c3ff     	add	sp, sp, #0x30
    2690: d50323bf     	autiasp
    2694: d65f03c0     	ret
    2698: 94000000     	bl	0x2698 <osc_save_store+0x80>
		0000000000002698:  R_AARCH64_CALL26	__stack_chk_fail
