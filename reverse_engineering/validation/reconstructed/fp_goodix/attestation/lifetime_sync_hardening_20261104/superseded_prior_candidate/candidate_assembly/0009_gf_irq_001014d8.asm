
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000058c <gf_irq>:
     58c: d503233f     	paciasp
     590: d10083ff     	sub	sp, sp, #0x20
     594: a9017bfd     	stp	x29, x30, [sp, #0x10]
     598: 910043fd     	add	x29, sp, #0x10
     59c: d5384108     	mrs	x8, SP_EL0
     5a0: 52800029     	mov	w9, #0x1                // =1
     5a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
     5a8: 91000000     	add	x0, x0, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
     5ac: f9438908     	ldr	x8, [x8, #0x710]
     5b0: 52813881     	mov	w1, #0x9c4              // =2500
     5b4: 2a1f03e2     	mov	w2, wzr
     5b8: f90007e8     	str	x8, [sp, #0x8]
     5bc: 390013e9     	strb	w9, [sp, #0x4]
     5c0: 94000000     	bl	0x5c0 <gf_irq+0x34>
		00000000000005c0:  R_AARCH64_CALL26	pm_wakeup_ws_event
     5c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1184
     5c8: 91000000     	add	x0, x0, #0x0
		00000000000005c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1184
     5cc: 94000000     	bl	0x5cc <gf_irq+0x40>
		00000000000005cc:  R_AARCH64_CALL26	_printk
     5d0: 910013e0     	add	x0, sp, #0x4
     5d4: 94000000     	bl	0x5d4 <gf_irq+0x48>
		00000000000005d4:  R_AARCH64_CALL26	sendnlmsg
     5d8: d5384108     	mrs	x8, SP_EL0
     5dc: f9438908     	ldr	x8, [x8, #0x710]
     5e0: f94007e9     	ldr	x9, [sp, #0x8]
     5e4: eb09011f     	cmp	x8, x9
     5e8: 540000c1     	b.ne	0x600 <gf_irq+0x74>
     5ec: 52800020     	mov	w0, #0x1                // =1
     5f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     5f4: 910083ff     	add	sp, sp, #0x20
     5f8: d50323bf     	autiasp
     5fc: d65f03c0     	ret
     600: 94000000     	bl	0x600 <gf_irq+0x74>
		0000000000000600:  R_AARCH64_CALL26	__stack_chk_fail
