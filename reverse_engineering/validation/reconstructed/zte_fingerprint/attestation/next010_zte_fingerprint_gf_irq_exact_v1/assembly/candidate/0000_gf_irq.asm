
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001590 <gf_irq>:
    1590: d503233f     	paciasp
    1594: d10083ff     	sub	sp, sp, #0x20
    1598: a9017bfd     	stp	x29, x30, [sp, #0x10]
    159c: 910043fd     	add	x29, sp, #0x10
    15a0: d5384108     	mrs	x8, SP_EL0
    15a4: 52800029     	mov	w9, #0x1                // =1
    15a8: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000015a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    15ac: 91000000     	add	x0, x0, #0x0
		00000000000015ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    15b0: f9438908     	ldr	x8, [x8, #0x710]
    15b4: 52813881     	mov	w1, #0x9c4              // =2500
    15b8: 2a1f03e2     	mov	w2, wzr
    15bc: f90007e8     	str	x8, [sp, #0x8]
    15c0: 390013e9     	strb	w9, [sp, #0x4]
    15c4: 94000000     	bl	0x15c4 <gf_irq+0x34>
		00000000000015c4:  R_AARCH64_CALL26	pm_wakeup_ws_event
    15c8: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd44
    15cc: 91000000     	add	x0, x0, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd44
    15d0: 94000000     	bl	0x15d0 <gf_irq+0x40>
		00000000000015d0:  R_AARCH64_CALL26	_printk
    15d4: 910013e0     	add	x0, sp, #0x4
    15d8: 9400000c     	bl	0x1608 <sendnlmsg>
    15dc: d5384108     	mrs	x8, SP_EL0
    15e0: f9438908     	ldr	x8, [x8, #0x710]
    15e4: f94007e9     	ldr	x9, [sp, #0x8]
    15e8: eb09011f     	cmp	x8, x9
    15ec: 540000c1     	b.ne	0x1604 <gf_irq+0x74>
    15f0: 52800020     	mov	w0, #0x1                // =1
    15f4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    15f8: 910083ff     	add	sp, sp, #0x20
    15fc: d50323bf     	autiasp
    1600: d65f03c0     	ret
    1604: 94000000     	bl	0x1604 <gf_irq+0x74>
		0000000000001604:  R_AARCH64_CALL26	__stack_chk_fail
