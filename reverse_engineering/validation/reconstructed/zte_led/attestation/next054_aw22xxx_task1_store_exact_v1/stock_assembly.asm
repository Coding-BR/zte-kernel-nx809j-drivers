
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003400 <aw22xxx_task1_store>:
    3400: d503233f     	paciasp
    3404: d100c3ff     	sub	sp, sp, #0x30
    3408: a9017bfd     	stp	x29, x30, [sp, #0x10]
    340c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3410: 910043fd     	add	x29, sp, #0x10
    3414: d5384109     	mrs	x9, SP_EL0
    3418: aa0203e8     	mov	x8, x2
    341c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000341c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    3420: 91000021     	add	x1, x1, #0x0
		0000000000003420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    3424: f9438929     	ldr	x9, [x9, #0x710]
    3428: 910013e2     	add	x2, sp, #0x4
    342c: aa0303f3     	mov	x19, x3
    3430: f90007e9     	str	x9, [sp, #0x8]
    3434: f9404c14     	ldr	x20, [x0, #0x98]
    3438: aa0803e0     	mov	x0, x8
    343c: b90007ff     	str	wzr, [sp, #0x4]
    3440: 94000000     	bl	0x3440 <aw22xxx_task1_store+0x40>
		0000000000003440:  R_AARCH64_CALL26	sscanf
    3444: 7100041f     	cmp	w0, #0x1
    3448: 54000161     	b.ne	0x3474 <aw22xxx_task1_store+0x74>
    344c: b94007e8     	ldr	w8, [sp, #0x4]
    3450: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59
    3454: 91000000     	add	x0, x0, #0x0
		0000000000003454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59
    3458: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc36
    345c: 91000021     	add	x1, x1, #0x0
		000000000000345c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc36
    3460: 52812222     	mov	w2, #0x911              // =2321
    3464: 12001d03     	and	w3, w8, #0xff
    3468: 390bb688     	strb	w8, [x20, #0x2ed]
    346c: 94000000     	bl	0x346c <aw22xxx_task1_store+0x6c>
		000000000000346c:  R_AARCH64_CALL26	_printk
    3470: 14000008     	b	0x3490 <aw22xxx_task1_store+0x90>
    3474: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b
    3478: 91000000     	add	x0, x0, #0x0
		0000000000003478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b
    347c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000347c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc36
    3480: 91000021     	add	x1, x1, #0x0
		0000000000003480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc36
    3484: 52812182     	mov	w2, #0x90c              // =2316
    3488: 94000000     	bl	0x3488 <aw22xxx_task1_store+0x88>
		0000000000003488:  R_AARCH64_CALL26	_printk
    348c: 928002b3     	mov	x19, #-0x16             // =-22
    3490: d5384108     	mrs	x8, SP_EL0
    3494: f9438908     	ldr	x8, [x8, #0x710]
    3498: f94007e9     	ldr	x9, [sp, #0x8]
    349c: eb09011f     	cmp	x8, x9
    34a0: 540000e1     	b.ne	0x34bc <aw22xxx_task1_store+0xbc>
    34a4: aa1303e0     	mov	x0, x19
    34a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    34ac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    34b0: 9100c3ff     	add	sp, sp, #0x30
    34b4: d50323bf     	autiasp
    34b8: d65f03c0     	ret
    34bc: 94000000     	bl	0x34bc <aw22xxx_task1_store+0xbc>
		00000000000034bc:  R_AARCH64_CALL26	__stack_chk_fail
