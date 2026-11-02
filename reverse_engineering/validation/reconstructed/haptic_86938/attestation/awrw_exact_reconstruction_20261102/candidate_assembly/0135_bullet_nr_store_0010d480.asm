
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000027fc <bullet_nr_store>:
    27fc: d503233f     	paciasp
    2800: d100c3ff     	sub	sp, sp, #0x30
    2804: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2808: a9024ff4     	stp	x20, x19, [sp, #0x20]
    280c: 910043fd     	add	x29, sp, #0x10
    2810: d5384109     	mrs	x9, SP_EL0
    2814: aa0203e8     	mov	x8, x2
    2818: 910013e2     	add	x2, sp, #0x4
    281c: f9438929     	ldr	x9, [x9, #0x710]
    2820: 2a1f03e1     	mov	w1, wzr
    2824: aa0303f3     	mov	x19, x3
    2828: f90007e9     	str	x9, [sp, #0x8]
    282c: f9404c14     	ldr	x20, [x0, #0x98]
    2830: aa0803e0     	mov	x0, x8
    2834: b90007ff     	str	wzr, [sp, #0x4]
    2838: 94000000     	bl	0x2838 <bullet_nr_store+0x3c>
		0000000000002838:  R_AARCH64_CALL26	kstrtouint
    283c: 37f80100     	tbnz	w0, #0x1f, 0x285c <bullet_nr_store+0x60>
    2840: 91092280     	add	x0, x20, #0x248
    2844: 94000000     	bl	0x2844 <bullet_nr_store+0x48>
		0000000000002844:  R_AARCH64_CALL26	mutex_lock
    2848: b94007e8     	ldr	w8, [sp, #0x4]
    284c: 91092280     	add	x0, x20, #0x248
    2850: b81d8288     	stur	w8, [x20, #-0x28]
    2854: 94000000     	bl	0x2854 <bullet_nr_store+0x58>
		0000000000002854:  R_AARCH64_CALL26	mutex_unlock
    2858: 14000002     	b	0x2860 <bullet_nr_store+0x64>
    285c: 93407c13     	sxtw	x19, w0
    2860: d5384108     	mrs	x8, SP_EL0
    2864: f9438908     	ldr	x8, [x8, #0x710]
    2868: f94007e9     	ldr	x9, [sp, #0x8]
    286c: eb09011f     	cmp	x8, x9
    2870: 540000e1     	b.ne	0x288c <bullet_nr_store+0x90>
    2874: aa1303e0     	mov	x0, x19
    2878: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    287c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2880: 9100c3ff     	add	sp, sp, #0x30
    2884: d50323bf     	autiasp
    2888: d65f03c0     	ret
    288c: 94000000     	bl	0x288c <bullet_nr_store+0x90>
		000000000000288c:  R_AARCH64_CALL26	__stack_chk_fail
