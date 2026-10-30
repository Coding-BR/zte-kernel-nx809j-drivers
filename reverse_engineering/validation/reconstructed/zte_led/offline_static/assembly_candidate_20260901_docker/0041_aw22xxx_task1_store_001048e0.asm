
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003710 <aw22xxx_task1_store>:
    3710: d503233f     	paciasp
    3714: d100c3ff     	sub	sp, sp, #0x30
    3718: a9017bfd     	stp	x29, x30, [sp, #0x10]
    371c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3720: 910043fd     	add	x29, sp, #0x10
    3724: d5384109     	mrs	x9, SP_EL0
    3728: aa0203e8     	mov	x8, x2
    372c: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		000000000000372c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    3730: 91000021     	add	x1, x1, #0x0
		0000000000003730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    3734: f9438929     	ldr	x9, [x9, #0x710]
    3738: 910013e2     	add	x2, sp, #0x4
    373c: aa0303f3     	mov	x19, x3
    3740: f90007e9     	str	x9, [sp, #0x8]
    3744: f9404c14     	ldr	x20, [x0, #0x98]
    3748: aa0803e0     	mov	x0, x8
    374c: b90007ff     	str	wzr, [sp, #0x4]
    3750: 94000000     	bl	0x3750 <aw22xxx_task1_store+0x40>
		0000000000003750:  R_AARCH64_CALL26	sscanf
    3754: 7100041f     	cmp	w0, #0x1
    3758: 54000121     	b.ne	0x377c <aw22xxx_task1_store+0x6c>
    375c: b94007e2     	ldr	w2, [sp, #0x4]
    3760: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa9
    3764: 91000000     	add	x0, x0, #0x0
		0000000000003764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa9
    3768: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc3
    376c: 91000021     	add	x1, x1, #0x0
		000000000000376c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc3
    3770: 390bb682     	strb	w2, [x20, #0x2ed]
    3774: 94000000     	bl	0x3774 <aw22xxx_task1_store+0x64>
		0000000000003774:  R_AARCH64_CALL26	_printk
    3778: 14000007     	b	0x3794 <aw22xxx_task1_store+0x84>
    377c: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		000000000000377c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bc
    3780: 91000000     	add	x0, x0, #0x0
		0000000000003780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bc
    3784: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc3
    3788: 91000021     	add	x1, x1, #0x0
		0000000000003788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc3
    378c: 94000000     	bl	0x378c <aw22xxx_task1_store+0x7c>
		000000000000378c:  R_AARCH64_CALL26	_printk
    3790: 928002b3     	mov	x19, #-0x16             // =-22
    3794: d5384108     	mrs	x8, SP_EL0
    3798: f9438908     	ldr	x8, [x8, #0x710]
    379c: f94007e9     	ldr	x9, [sp, #0x8]
    37a0: eb09011f     	cmp	x8, x9
    37a4: 540000e1     	b.ne	0x37c0 <aw22xxx_task1_store+0xb0>
    37a8: aa1303e0     	mov	x0, x19
    37ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    37b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    37b4: 9100c3ff     	add	sp, sp, #0x30
    37b8: d50323bf     	autiasp
    37bc: d65f03c0     	ret
    37c0: 94000000     	bl	0x37c0 <aw22xxx_task1_store+0xb0>
		00000000000037c0:  R_AARCH64_CALL26	__stack_chk_fail
