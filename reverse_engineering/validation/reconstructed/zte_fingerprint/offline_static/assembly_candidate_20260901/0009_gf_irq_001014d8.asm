
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000147c <gf_irq>:
    147c: d503233f     	paciasp
    1480: d10083ff     	sub	sp, sp, #0x20
    1484: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1488: 910043fd     	add	x29, sp, #0x10
    148c: d5384108     	mrs	x8, SP_EL0
    1490: 52800029     	mov	w9, #0x1                // =1
    1494: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001494:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1498: 91000000     	add	x0, x0, #0x0
		0000000000001498:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    149c: f9438908     	ldr	x8, [x8, #0x710]
    14a0: 52813881     	mov	w1, #0x9c4              // =2500
    14a4: 2a1f03e2     	mov	w2, wzr
    14a8: f90007e8     	str	x8, [sp, #0x8]
    14ac: 390013e9     	strb	w9, [sp, #0x4]
    14b0: 94000000     	bl	0x14b0 <gf_irq+0x34>
		00000000000014b0:  R_AARCH64_CALL26	pm_wakeup_ws_event
    14b4: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000014b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91a
    14b8: 91000000     	add	x0, x0, #0x0
		00000000000014b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91a
    14bc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000014bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93b
    14c0: 91000021     	add	x1, x1, #0x0
		00000000000014c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93b
    14c4: 94000000     	bl	0x14c4 <gf_irq+0x48>
		00000000000014c4:  R_AARCH64_CALL26	_printk
    14c8: 910013e0     	add	x0, sp, #0x4
    14cc: 94000049     	bl	0x15f0 <sendnlmsg>
    14d0: d5384108     	mrs	x8, SP_EL0
    14d4: f9438908     	ldr	x8, [x8, #0x710]
    14d8: f94007e9     	ldr	x9, [sp, #0x8]
    14dc: eb09011f     	cmp	x8, x9
    14e0: 540000c1     	b.ne	0x14f8 <gf_irq+0x7c>
    14e4: 52800020     	mov	w0, #0x1                // =1
    14e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    14ec: 910083ff     	add	sp, sp, #0x20
    14f0: d50323bf     	autiasp
    14f4: d65f03c0     	ret
    14f8: 94000000     	bl	0x14f8 <gf_irq+0x7c>
		00000000000014f8:  R_AARCH64_CALL26	__stack_chk_fail
