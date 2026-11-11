
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000158c <gf_irq>:
    158c: d503233f     	paciasp
    1590: d10083ff     	sub	sp, sp, #0x20
    1594: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1598: 910043fd     	add	x29, sp, #0x10
    159c: d5384108     	mrs	x8, SP_EL0
    15a0: 52800029     	mov	w9, #0x1                // =1
    15a4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000015a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    15a8: 91000000     	add	x0, x0, #0x0
		00000000000015a8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    15ac: f9438908     	ldr	x8, [x8, #0x710]
    15b0: 52813881     	mov	w1, #0x9c4              // =2500
    15b4: 2a1f03e2     	mov	w2, wzr
    15b8: f90007e8     	str	x8, [sp, #0x8]
    15bc: 390013e9     	strb	w9, [sp, #0x4]
    15c0: 94000000     	bl	0x15c0 <gf_irq+0x34>
		00000000000015c0:  R_AARCH64_CALL26	pm_wakeup_ws_event
    15c4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f0
    15c8: 91000000     	add	x0, x0, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f0
    15cc: 94000000     	bl	0x15cc <gf_irq+0x40>
		00000000000015cc:  R_AARCH64_CALL26	_printk
    15d0: 910013e0     	add	x0, sp, #0x4
    15d4: 94000000     	bl	0x15d4 <gf_irq+0x48>
		00000000000015d4:  R_AARCH64_CALL26	sendnlmsg
    15d8: d5384108     	mrs	x8, SP_EL0
    15dc: f9438908     	ldr	x8, [x8, #0x710]
    15e0: f94007e9     	ldr	x9, [sp, #0x8]
    15e4: eb09011f     	cmp	x8, x9
    15e8: 540000c1     	b.ne	0x1600 <gf_irq+0x74>
    15ec: 52800020     	mov	w0, #0x1                // =1
    15f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    15f4: 910083ff     	add	sp, sp, #0x20
    15f8: d50323bf     	autiasp
    15fc: d65f03c0     	ret
    1600: 94000000     	bl	0x1600 <gf_irq+0x74>
		0000000000001600:  R_AARCH64_CALL26	__stack_chk_fail
