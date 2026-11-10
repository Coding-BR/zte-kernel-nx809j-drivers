
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000071c <gf_irq>:
     71c: d503233f     	paciasp
     720: d10083ff     	sub	sp, sp, #0x20
     724: a9017bfd     	stp	x29, x30, [sp, #0x10]
     728: 910043fd     	add	x29, sp, #0x10
     72c: d5384108     	mrs	x8, SP_EL0
     730: 52800029     	mov	w9, #0x1                // =1
     734: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000734:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x130
     738: 91000000     	add	x0, x0, #0x0
		0000000000000738:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x130
     73c: f9438908     	ldr	x8, [x8, #0x710]
     740: 52813881     	mov	w1, #0x9c4              // =2500
     744: 2a1f03e2     	mov	w2, wzr
     748: f90007e8     	str	x8, [sp, #0x8]
     74c: 390013e9     	strb	w9, [sp, #0x4]
     750: 94000000     	bl	0x750 <gf_irq+0x34>
		0000000000000750:  R_AARCH64_CALL26	pm_wakeup_ws_event
     754: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x114c
     758: 91000000     	add	x0, x0, #0x0
		0000000000000758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x114c
     75c: 94000000     	bl	0x75c <gf_irq+0x40>
		000000000000075c:  R_AARCH64_CALL26	_printk
     760: 910013e0     	add	x0, sp, #0x4
     764: 94000000     	bl	0x764 <gf_irq+0x48>
		0000000000000764:  R_AARCH64_CALL26	sendnlmsg
     768: d5384108     	mrs	x8, SP_EL0
     76c: f9438908     	ldr	x8, [x8, #0x710]
     770: f94007e9     	ldr	x9, [sp, #0x8]
     774: eb09011f     	cmp	x8, x9
     778: 540000c1     	b.ne	0x790 <gf_irq+0x74>
     77c: 52800020     	mov	w0, #0x1                // =1
     780: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     784: 910083ff     	add	sp, sp, #0x20
     788: d50323bf     	autiasp
     78c: d65f03c0     	ret
     790: 94000000     	bl	0x790 <gf_irq+0x74>
		0000000000000790:  R_AARCH64_CALL26	__stack_chk_fail
