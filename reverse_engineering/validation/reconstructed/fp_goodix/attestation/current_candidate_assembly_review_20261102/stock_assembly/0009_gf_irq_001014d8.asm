
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cb8 <gf_irq>:
     cb8: d503233f     	paciasp
     cbc: d10083ff     	sub	sp, sp, #0x20
     cc0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     cc4: 910043fd     	add	x29, sp, #0x10
     cc8: d5384108     	mrs	x8, SP_EL0
     ccc: 52800029     	mov	w9, #0x1                // =1
     cd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
     cd4: 91000000     	add	x0, x0, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
     cd8: f9438908     	ldr	x8, [x8, #0x710]
     cdc: 52813881     	mov	w1, #0x9c4              // =2500
     ce0: 2a1f03e2     	mov	w2, wzr
     ce4: f90007e8     	str	x8, [sp, #0x8]
     ce8: 390013e9     	strb	w9, [sp, #0x4]
     cec: 94000000     	bl	0xcec <gf_irq+0x34>
		0000000000000cec:  R_AARCH64_CALL26	pm_wakeup_ws_event
     cf0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1184
     cf4: 91000000     	add	x0, x0, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1184
     cf8: 94000000     	bl	0xcf8 <gf_irq+0x40>
		0000000000000cf8:  R_AARCH64_CALL26	_printk
     cfc: 910013e0     	add	x0, sp, #0x4
     d00: 94000000     	bl	0xd00 <gf_irq+0x48>
		0000000000000d00:  R_AARCH64_CALL26	sendnlmsg
     d04: d5384108     	mrs	x8, SP_EL0
     d08: f9438908     	ldr	x8, [x8, #0x710]
     d0c: f94007e9     	ldr	x9, [sp, #0x8]
     d10: eb09011f     	cmp	x8, x9
     d14: 540000c1     	b.ne	0xd2c <gf_irq+0x74>
     d18: 52800020     	mov	w0, #0x1                // =1
     d1c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d20: 910083ff     	add	sp, sp, #0x20
     d24: d50323bf     	autiasp
     d28: d65f03c0     	ret
     d2c: 94000000     	bl	0xd2c <gf_irq+0x74>
		0000000000000d2c:  R_AARCH64_CALL26	__stack_chk_fail
