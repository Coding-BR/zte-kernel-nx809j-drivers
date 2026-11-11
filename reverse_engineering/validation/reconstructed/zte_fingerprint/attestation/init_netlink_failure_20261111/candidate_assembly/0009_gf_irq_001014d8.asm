
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015c0 <gf_irq>:
    15c0: d503233f     	paciasp
    15c4: d10083ff     	sub	sp, sp, #0x20
    15c8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    15cc: 910043fd     	add	x29, sp, #0x10
    15d0: d5384108     	mrs	x8, SP_EL0
    15d4: 52800029     	mov	w9, #0x1                // =1
    15d8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000015d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    15dc: 91000000     	add	x0, x0, #0x0
		00000000000015dc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    15e0: f9438908     	ldr	x8, [x8, #0x710]
    15e4: 52813881     	mov	w1, #0x9c4              // =2500
    15e8: 2a1f03e2     	mov	w2, wzr
    15ec: f90007e8     	str	x8, [sp, #0x8]
    15f0: 390013e9     	strb	w9, [sp, #0x4]
    15f4: 94000000     	bl	0x15f4 <gf_irq+0x34>
		00000000000015f4:  R_AARCH64_CALL26	pm_wakeup_ws_event
    15f8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000015f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f0
    15fc: 91000000     	add	x0, x0, #0x0
		00000000000015fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f0
    1600: 94000000     	bl	0x1600 <gf_irq+0x40>
		0000000000001600:  R_AARCH64_CALL26	_printk
    1604: 910013e0     	add	x0, sp, #0x4
    1608: 94000000     	bl	0x1608 <gf_irq+0x48>
		0000000000001608:  R_AARCH64_CALL26	sendnlmsg
    160c: d5384108     	mrs	x8, SP_EL0
    1610: f9438908     	ldr	x8, [x8, #0x710]
    1614: f94007e9     	ldr	x9, [sp, #0x8]
    1618: eb09011f     	cmp	x8, x9
    161c: 540000c1     	b.ne	0x1634 <gf_irq+0x74>
    1620: 52800020     	mov	w0, #0x1                // =1
    1624: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1628: 910083ff     	add	sp, sp, #0x20
    162c: d50323bf     	autiasp
    1630: d65f03c0     	ret
    1634: 94000000     	bl	0x1634 <gf_irq+0x74>
		0000000000001634:  R_AARCH64_CALL26	__stack_chk_fail
