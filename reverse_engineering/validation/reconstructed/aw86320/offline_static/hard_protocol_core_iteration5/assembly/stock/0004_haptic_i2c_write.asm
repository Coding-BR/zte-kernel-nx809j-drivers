
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000043c <haptic_i2c_write>:
     43c: d503233f     	paciasp
     440: d100c3ff     	sub	sp, sp, #0x30
     444: a9017bfd     	stp	x29, x30, [sp, #0x10]
     448: a9024ff4     	stp	x20, x19, [sp, #0x20]
     44c: 910043fd     	add	x29, sp, #0x10
     450: d5384108     	mrs	x8, SP_EL0
     454: 5ac00849     	rev	w9, w2
     458: 910013e2     	add	x2, sp, #0x4
     45c: f9438908     	ldr	x8, [x8, #0x710]
     460: 53107d29     	lsr	w9, w9, #16
     464: 52800043     	mov	w3, #0x2                // =2
     468: 2a0103f3     	mov	w19, w1
     46c: aa0003f4     	mov	x20, x0
     470: f90007e8     	str	x8, [sp, #0x8]
     474: 79000be9     	strh	w9, [sp, #0x4]
     478: 940000d3     	bl	0x7c4 <haptic_i2c_writes>
     47c: 37f80160     	tbnz	w0, #0x1f, 0x4a8 <haptic_i2c_write+0x6c>
     480: d5384108     	mrs	x8, SP_EL0
     484: f9438908     	ldr	x8, [x8, #0x710]
     488: f94007e9     	ldr	x9, [sp, #0x8]
     48c: eb09011f     	cmp	x8, x9
     490: 540009a1     	b.ne	0x5c4 <haptic_i2c_write+0x188>
     494: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     498: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     49c: 9100c3ff     	add	sp, sp, #0x30
     4a0: d50323bf     	autiasp
     4a4: d65f03c0     	ret
     4a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea
     4ac: 91000108     	add	x8, x8, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea
     4b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     4b8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000004b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf
     4bc: 91000063     	add	x3, x3, #0x0
		00000000000004bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf
     4c0: 2a0003e5     	mov	w5, w0
     4c4: aa0803e0     	mov	x0, x8
     4c8: 52800cc2     	mov	w2, #0x66               // =102
     4cc: 2a1f03e4     	mov	w4, wzr
     4d0: 94000000     	bl	0x4d0 <haptic_i2c_write+0x94>
		00000000000004d0:  R_AARCH64_CALL26	_printk
     4d4: 910013e2     	add	x2, sp, #0x4
     4d8: aa1403e0     	mov	x0, x20
     4dc: 2a1303e1     	mov	w1, w19
     4e0: 52800043     	mov	w3, #0x2                // =2
     4e4: 940000b8     	bl	0x7c4 <haptic_i2c_writes>
     4e8: 36fffcc0     	tbz	w0, #0x1f, 0x480 <haptic_i2c_write+0x44>
     4ec: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea
     4f0: 91000108     	add	x8, x8, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea
     4f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     4f8: 91000021     	add	x1, x1, #0x0
		00000000000004f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     4fc: 90000003     	adrp	x3, 0x0 <.text>
		00000000000004fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf
     500: 91000063     	add	x3, x3, #0x0
		0000000000000500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf
     504: 2a0003e5     	mov	w5, w0
     508: aa0803e0     	mov	x0, x8
     50c: 52800cc2     	mov	w2, #0x66               // =102
     510: 52800024     	mov	w4, #0x1                // =1
     514: 94000000     	bl	0x514 <haptic_i2c_write+0xd8>
		0000000000000514:  R_AARCH64_CALL26	_printk
     518: 910013e2     	add	x2, sp, #0x4
     51c: aa1403e0     	mov	x0, x20
     520: 2a1303e1     	mov	w1, w19
     524: 52800043     	mov	w3, #0x2                // =2
     528: 940000a7     	bl	0x7c4 <haptic_i2c_writes>
     52c: 36fffaa0     	tbz	w0, #0x1f, 0x480 <haptic_i2c_write+0x44>
     530: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea
     534: 91000108     	add	x8, x8, #0x0
		0000000000000534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea
     538: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     53c: 91000021     	add	x1, x1, #0x0
		000000000000053c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     540: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf
     544: 91000063     	add	x3, x3, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf
     548: 2a0003e5     	mov	w5, w0
     54c: aa0803e0     	mov	x0, x8
     550: 52800cc2     	mov	w2, #0x66               // =102
     554: 52800044     	mov	w4, #0x2                // =2
     558: 94000000     	bl	0x558 <haptic_i2c_write+0x11c>
		0000000000000558:  R_AARCH64_CALL26	_printk
     55c: 910013e2     	add	x2, sp, #0x4
     560: aa1403e0     	mov	x0, x20
     564: 2a1303e1     	mov	w1, w19
     568: 52800043     	mov	w3, #0x2                // =2
     56c: 94000096     	bl	0x7c4 <haptic_i2c_writes>
     570: 36fff880     	tbz	w0, #0x1f, 0x480 <haptic_i2c_write+0x44>
     574: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea
     578: 91000108     	add	x8, x8, #0x0
		0000000000000578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea
     57c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     580: 91000021     	add	x1, x1, #0x0
		0000000000000580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     584: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf
     588: 91000063     	add	x3, x3, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf
     58c: 2a0003e5     	mov	w5, w0
     590: aa0803e0     	mov	x0, x8
     594: 52800cc2     	mov	w2, #0x66               // =102
     598: 52800064     	mov	w4, #0x3                // =3
     59c: 94000000     	bl	0x59c <haptic_i2c_write+0x160>
		000000000000059c:  R_AARCH64_CALL26	_printk
     5a0: 910013e2     	add	x2, sp, #0x4
     5a4: aa1403e0     	mov	x0, x20
     5a8: 2a1303e1     	mov	w1, w19
     5ac: 52800043     	mov	w3, #0x2                // =2
     5b0: 94000085     	bl	0x7c4 <haptic_i2c_writes>
     5b4: 2a0003f3     	mov	w19, w0
     5b8: 37f80080     	tbnz	w0, #0x1f, 0x5c8 <haptic_i2c_write+0x18c>
     5bc: 2a1303e0     	mov	w0, w19
     5c0: 17ffffb0     	b	0x480 <haptic_i2c_write+0x44>
     5c4: 94000000     	bl	0x5c4 <haptic_i2c_write+0x188>
		00000000000005c4:  R_AARCH64_CALL26	__stack_chk_fail
     5c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ea
     5cc: 91000000     	add	x0, x0, #0x0
		00000000000005cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ea
     5d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     5d4: 91000021     	add	x1, x1, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     5d8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf
     5dc: 91000063     	add	x3, x3, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf
     5e0: 52800cc2     	mov	w2, #0x66               // =102
     5e4: 52800084     	mov	w4, #0x4                // =4
     5e8: 2a1303e5     	mov	w5, w19
     5ec: 94000000     	bl	0x5ec <haptic_i2c_write+0x1b0>
		00000000000005ec:  R_AARCH64_CALL26	_printk
     5f0: 17fffff3     	b	0x5bc <haptic_i2c_write+0x180>
