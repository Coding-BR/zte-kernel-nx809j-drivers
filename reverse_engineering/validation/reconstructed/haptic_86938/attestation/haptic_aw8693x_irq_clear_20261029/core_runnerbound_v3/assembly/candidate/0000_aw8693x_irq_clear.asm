
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001528 <aw8693x_irq_clear>:
    1528: d503233f     	paciasp
    152c: d10083ff     	sub	sp, sp, #0x20
    1530: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1534: 910043fd     	add	x29, sp, #0x10
    1538: d5384108     	mrs	x8, SP_EL0
    153c: 910013e2     	add	x2, sp, #0x4
    1540: 52800041     	mov	w1, #0x2                // =2
    1544: f9438908     	ldr	x8, [x8, #0x710]
    1548: 52800023     	mov	w3, #0x1                // =1
    154c: f90007e8     	str	x8, [sp, #0x8]
    1550: 390013ff     	strb	wzr, [sp, #0x4]
    1554: 94000000     	bl	0x1554 <aw8693x_irq_clear+0x2c>
		0000000000001554:  R_AARCH64_CALL26	i2c_r_bytes
    1558: 394013e4     	ldrb	w4, [sp, #0x4]
    155c: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		000000000000155c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f1
    1560: 91000000     	add	x0, x0, #0x0
		0000000000001560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f1
    1564: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1568: 91000021     	add	x1, x1, #0x0
		0000000000001568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    156c: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		000000000000156c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
    1570: 91000063     	add	x3, x3, #0x0
		0000000000001570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
    1574: 52808962     	mov	w2, #0x44b              // =1099
    1578: 94000000     	bl	0x1578 <aw8693x_irq_clear+0x50>
		0000000000001578:  R_AARCH64_CALL26	_printk
    157c: d5384108     	mrs	x8, SP_EL0
    1580: f9438908     	ldr	x8, [x8, #0x710]
    1584: f94007e9     	ldr	x9, [sp, #0x8]
    1588: eb09011f     	cmp	x8, x9
    158c: 540000a1     	b.ne	0x15a0 <aw8693x_irq_clear+0x78>
    1590: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1594: 910083ff     	add	sp, sp, #0x20
    1598: d50323bf     	autiasp
    159c: d65f03c0     	ret
    15a0: 94000000     	bl	0x15a0 <aw8693x_irq_clear+0x78>
		00000000000015a0:  R_AARCH64_CALL26	__stack_chk_fail
