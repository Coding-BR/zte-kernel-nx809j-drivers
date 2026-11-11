
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015ac <gf_irq>:
    15ac: d503233f     	paciasp
    15b0: d10083ff     	sub	sp, sp, #0x20
    15b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    15b8: 910043fd     	add	x29, sp, #0x10
    15bc: d5384108     	mrs	x8, SP_EL0
    15c0: 52800029     	mov	w9, #0x1                // =1
    15c4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    15c8: 91000000     	add	x0, x0, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    15cc: f9438908     	ldr	x8, [x8, #0x710]
    15d0: 52813881     	mov	w1, #0x9c4              // =2500
    15d4: 2a1f03e2     	mov	w2, wzr
    15d8: f90007e8     	str	x8, [sp, #0x8]
    15dc: 390013e9     	strb	w9, [sp, #0x4]
    15e0: 94000000     	bl	0x15e0 <gf_irq+0x34>
		00000000000015e0:  R_AARCH64_CALL26	pm_wakeup_ws_event
    15e4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000015e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11be
    15e8: 91000000     	add	x0, x0, #0x0
		00000000000015e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11be
    15ec: 94000000     	bl	0x15ec <gf_irq+0x40>
		00000000000015ec:  R_AARCH64_CALL26	_printk
    15f0: 910013e0     	add	x0, sp, #0x4
    15f4: 94000000     	bl	0x15f4 <gf_irq+0x48>
		00000000000015f4:  R_AARCH64_CALL26	sendnlmsg
    15f8: d5384108     	mrs	x8, SP_EL0
    15fc: f9438908     	ldr	x8, [x8, #0x710]
    1600: f94007e9     	ldr	x9, [sp, #0x8]
    1604: eb09011f     	cmp	x8, x9
    1608: 540000c1     	b.ne	0x1620 <gf_irq+0x74>
    160c: 52800020     	mov	w0, #0x1                // =1
    1610: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1614: 910083ff     	add	sp, sp, #0x20
    1618: d50323bf     	autiasp
    161c: d65f03c0     	ret
    1620: 94000000     	bl	0x1620 <gf_irq+0x74>
		0000000000001620:  R_AARCH64_CALL26	__stack_chk_fail
