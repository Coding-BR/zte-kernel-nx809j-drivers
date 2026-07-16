
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cac <gf_irq>:
     cac: d503233f     	paciasp
     cb0: d10083ff     	sub	sp, sp, #0x20
     cb4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     cb8: 910043fd     	add	x29, sp, #0x10
     cbc: d5384108     	mrs	x8, SP_EL0
     cc0: 52800029     	mov	w9, #0x1                // =1
     cc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cc4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
     cc8: 91000000     	add	x0, x0, #0x0
		0000000000000cc8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
     ccc: f9438908     	ldr	x8, [x8, #0x710]
     cd0: 52813881     	mov	w1, #0x9c4              // =2500
     cd4: 2a1f03e2     	mov	w2, wzr
     cd8: f90007e8     	str	x8, [sp, #0x8]
     cdc: 390013e9     	strb	w9, [sp, #0x4]
     ce0: 94000000     	bl	0xce0 <gf_irq+0x34>
		0000000000000ce0:  R_AARCH64_CALL26	pm_wakeup_ws_event
     ce4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1184
     ce8: 91000000     	add	x0, x0, #0x0
		0000000000000ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1184
     cec: 94000000     	bl	0xcec <gf_irq+0x40>
		0000000000000cec:  R_AARCH64_CALL26	_printk
     cf0: 910013e0     	add	x0, sp, #0x4
     cf4: 94000000     	bl	0xcf4 <gf_irq+0x48>
		0000000000000cf4:  R_AARCH64_CALL26	sendnlmsg
     cf8: d5384108     	mrs	x8, SP_EL0
     cfc: f9438908     	ldr	x8, [x8, #0x710]
     d00: f94007e9     	ldr	x9, [sp, #0x8]
     d04: eb09011f     	cmp	x8, x9
     d08: 540000c1     	b.ne	0xd20 <gf_irq+0x74>
     d0c: 52800020     	mov	w0, #0x1                // =1
     d10: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d14: 910083ff     	add	sp, sp, #0x20
     d18: d50323bf     	autiasp
     d1c: d65f03c0     	ret
     d20: 94000000     	bl	0xd20 <gf_irq+0x74>
		0000000000000d20:  R_AARCH64_CALL26	__stack_chk_fail
