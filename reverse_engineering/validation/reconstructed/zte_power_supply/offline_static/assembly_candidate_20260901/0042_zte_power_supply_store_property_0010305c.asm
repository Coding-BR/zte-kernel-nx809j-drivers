
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003cc <zte_power_supply_store_property>:
     3cc: d503233f     	paciasp
     3d0: d10143ff     	sub	sp, sp, #0x50
     3d4: a9027bfd     	stp	x29, x30, [sp, #0x20]
     3d8: a90357f6     	stp	x22, x21, [sp, #0x30]
     3dc: a9044ff4     	stp	x20, x19, [sp, #0x40]
     3e0: 910083fd     	add	x29, sp, #0x20
     3e4: d5384108     	mrs	x8, SP_EL0
     3e8: aa0103f5     	mov	x21, x1
     3ec: aa0303f3     	mov	x19, x3
     3f0: f9438908     	ldr	x8, [x8, #0x710]
     3f4: aa0203f6     	mov	x22, x2
     3f8: f81f83a8     	stur	x8, [x29, #-0x8]
     3fc: b9402821     	ldr	w1, [x1, #0x28]
     400: f9404c14     	ldr	x20, [x0, #0x98]
     404: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     408: 7100043f     	cmp	w1, #0x1
     40c: 540000ab     	b.lt	0x420 <zte_power_supply_store_property+0x54>
     410: f94012a0     	ldr	x0, [x21, #0x20]
     414: aa1603e2     	mov	x2, x22
     418: 94000000     	bl	0x418 <zte_power_supply_store_property+0x4c>
		0000000000000418:  R_AARCH64_CALL26	__sysfs_match_string
     41c: 36f800e0     	tbz	w0, #0x1f, 0x438 <zte_power_supply_store_property+0x6c>
     420: 910023e2     	add	x2, sp, #0x8
     424: aa1603e0     	mov	x0, x22
     428: 52800141     	mov	w1, #0xa                // =10
     42c: 94000000     	bl	0x42c <zte_power_supply_store_property+0x60>
		000000000000042c:  R_AARCH64_CALL26	kstrtoll
     430: 37f80240     	tbnz	w0, #0x1f, 0x478 <zte_power_supply_store_property+0xac>
     434: b9400be0     	ldr	w0, [sp, #0x8]
     438: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000438:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x10
     43c: 91000108     	add	x8, x8, #0x0
		000000000000043c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x10
     440: 52917469     	mov	w9, #0x8ba3             // =35747
     444: cb0802a8     	sub	x8, x21, x8
     448: 72b745c9     	movk	w9, #0xba2e, lsl #16
     44c: b90013e0     	str	w0, [sp, #0x10]
     450: d100a108     	sub	x8, x8, #0x28
     454: 910043e2     	add	x2, sp, #0x10
     458: aa1403e0     	mov	x0, x20
     45c: d343fd08     	lsr	x8, x8, #3
     460: 1b097d01     	mul	w1, w8, w9
     464: 94000000     	bl	0x464 <zte_power_supply_store_property+0x98>
		0000000000000464:  R_AARCH64_CALL26	zte_power_supply_set_property
     468: 93407c08     	sxtw	x8, w0
     46c: 7100001f     	cmp	w0, #0x0
     470: 9a93b100     	csel	x0, x8, x19, lt
     474: 14000002     	b	0x47c <zte_power_supply_store_property+0xb0>
     478: 93407c00     	sxtw	x0, w0
     47c: d5384108     	mrs	x8, SP_EL0
     480: f9438908     	ldr	x8, [x8, #0x710]
     484: f85f83a9     	ldur	x9, [x29, #-0x8]
     488: eb09011f     	cmp	x8, x9
     48c: 540000e1     	b.ne	0x4a8 <zte_power_supply_store_property+0xdc>
     490: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     494: a94357f6     	ldp	x22, x21, [sp, #0x30]
     498: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     49c: 910143ff     	add	sp, sp, #0x50
     4a0: d50323bf     	autiasp
     4a4: d65f03c0     	ret
     4a8: 94000000     	bl	0x4a8 <zte_power_supply_store_property+0xdc>
		00000000000004a8:  R_AARCH64_CALL26	__stack_chk_fail
