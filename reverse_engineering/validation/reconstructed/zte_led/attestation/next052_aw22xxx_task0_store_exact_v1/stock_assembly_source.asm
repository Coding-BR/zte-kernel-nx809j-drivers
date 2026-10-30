
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000032ec <aw22xxx_task0_store>:
    32ec: d503233f     	paciasp
    32f0: d100c3ff     	sub	sp, sp, #0x30
    32f4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    32f8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    32fc: 910043fd     	add	x29, sp, #0x10
    3300: d5384109     	mrs	x9, SP_EL0
    3304: aa0203e8     	mov	x8, x2
    3308: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    330c: 91000021     	add	x1, x1, #0x0
		000000000000330c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    3310: f9438929     	ldr	x9, [x9, #0x710]
    3314: 910013e2     	add	x2, sp, #0x4
    3318: aa0303f3     	mov	x19, x3
    331c: f90007e9     	str	x9, [sp, #0x8]
    3320: f9404c14     	ldr	x20, [x0, #0x98]
    3324: aa0803e0     	mov	x0, x8
    3328: b90007ff     	str	wzr, [sp, #0x4]
    332c: 94000000     	bl	0x332c <aw22xxx_task0_store+0x40>
		000000000000332c:  R_AARCH64_CALL26	sscanf
    3330: 7100041f     	cmp	w0, #0x1
    3334: 54000201     	b.ne	0x3374 <aw22xxx_task0_store+0x88>
    3338: b94007e8     	ldr	w8, [sp, #0x4]
    333c: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000333c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7df
    3340: 91000000     	add	x0, x0, #0x0
		0000000000003340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7df
    3344: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106d
    3348: 91000021     	add	x1, x1, #0x0
		0000000000003348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106d
    334c: 52811e82     	mov	w2, #0x8f4              // =2292
    3350: 12001d03     	and	w3, w8, #0xff
    3354: 390bb288     	strb	w8, [x20, #0x2ec]
    3358: 94000000     	bl	0x3358 <aw22xxx_task0_store+0x6c>
		0000000000003358:  R_AARCH64_CALL26	_printk
    335c: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000335c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    3360: 91078282     	add	x2, x20, #0x1e0
    3364: 52800400     	mov	w0, #0x20               // =32
    3368: f9400101     	ldr	x1, [x8]
		0000000000003368:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    336c: 94000000     	bl	0x336c <aw22xxx_task0_store+0x80>
		000000000000336c:  R_AARCH64_CALL26	queue_work_on
    3370: 14000008     	b	0x3390 <aw22xxx_task0_store+0xa4>
    3374: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b
    3378: 91000000     	add	x0, x0, #0x0
		0000000000003378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b
    337c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000337c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106d
    3380: 91000021     	add	x1, x1, #0x0
		0000000000003380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106d
    3384: 52811de2     	mov	w2, #0x8ef              // =2287
    3388: 94000000     	bl	0x3388 <aw22xxx_task0_store+0x9c>
		0000000000003388:  R_AARCH64_CALL26	_printk
    338c: 928002b3     	mov	x19, #-0x16             // =-22
    3390: d5384108     	mrs	x8, SP_EL0
    3394: f9438908     	ldr	x8, [x8, #0x710]
    3398: f94007e9     	ldr	x9, [sp, #0x8]
    339c: eb09011f     	cmp	x8, x9
    33a0: 540000e1     	b.ne	0x33bc <aw22xxx_task0_store+0xd0>
    33a4: aa1303e0     	mov	x0, x19
    33a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    33ac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    33b0: 9100c3ff     	add	sp, sp, #0x30
    33b4: d50323bf     	autiasp
    33b8: d65f03c0     	ret
    33bc: 94000000     	bl	0x33bc <aw22xxx_task0_store+0xd0>
		00000000000033bc:  R_AARCH64_CALL26	__stack_chk_fail
