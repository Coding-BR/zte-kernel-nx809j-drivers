
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007548 <duration_store>:
    7548: d503233f     	paciasp
    754c: d100c3ff     	sub	sp, sp, #0x30
    7550: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7554: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7558: 910043fd     	add	x29, sp, #0x10
    755c: d5384109     	mrs	x9, SP_EL0
    7560: aa0203e8     	mov	x8, x2
    7564: 910013e2     	add	x2, sp, #0x4
    7568: f9438929     	ldr	x9, [x9, #0x710]
    756c: 2a1f03e1     	mov	w1, wzr
    7570: aa0303f3     	mov	x19, x3
    7574: f90007e9     	str	x9, [sp, #0x8]
    7578: f9404c14     	ldr	x20, [x0, #0x98]
    757c: aa0803e0     	mov	x0, x8
    7580: b90007ff     	str	wzr, [sp, #0x4]
    7584: 94000000     	bl	0x7584 <duration_store+0x3c>
		0000000000007584:  R_AARCH64_CALL26	kstrtouint
    7588: 37f800a0     	tbnz	w0, #0x1f, 0x759c <duration_store+0x54>
    758c: b94007e8     	ldr	w8, [sp, #0x4]
    7590: 34000088     	cbz	w8, 0x75a0 <duration_store+0x58>
    7594: b81ac288     	stur	w8, [x20, #-0x54]
    7598: 14000002     	b	0x75a0 <duration_store+0x58>
    759c: 93407c13     	sxtw	x19, w0
    75a0: d5384108     	mrs	x8, SP_EL0
    75a4: f9438908     	ldr	x8, [x8, #0x710]
    75a8: f94007e9     	ldr	x9, [sp, #0x8]
    75ac: eb09011f     	cmp	x8, x9
    75b0: 540000e1     	b.ne	0x75cc <duration_store+0x84>
    75b4: aa1303e0     	mov	x0, x19
    75b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    75bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    75c0: 9100c3ff     	add	sp, sp, #0x30
    75c4: d50323bf     	autiasp
    75c8: d65f03c0     	ret
    75cc: 94000000     	bl	0x75cc <duration_store+0x84>
		00000000000075cc:  R_AARCH64_CALL26	__stack_chk_fail
