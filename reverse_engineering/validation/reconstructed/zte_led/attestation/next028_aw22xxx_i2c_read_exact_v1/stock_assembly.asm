
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000054c <aw22xxx_i2c_read>:
     54c: d503233f     	paciasp
     550: d100c3ff     	sub	sp, sp, #0x30
     554: a9017bfd     	stp	x29, x30, [sp, #0x10]
     558: a9024ff4     	stp	x20, x19, [sp, #0x20]
     55c: 910043fd     	add	x29, sp, #0x10
     560: d5384108     	mrs	x8, SP_EL0
     564: aa0003f4     	mov	x20, x0
     568: aa0203f3     	mov	x19, x2
     56c: f9438908     	ldr	x8, [x8, #0x710]
     570: 52800022     	mov	w2, #0x1                // =1
     574: 2a1f03e3     	mov	w3, wzr
     578: f90007e8     	str	x8, [sp, #0x8]
     57c: f9400000     	ldr	x0, [x0]
     580: 390013e1     	strb	w1, [sp, #0x4]
     584: 910013e1     	add	x1, sp, #0x4
     588: 94000000     	bl	0x588 <aw22xxx_i2c_read+0x3c>
		0000000000000588:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     58c: 37f80220     	tbnz	w0, #0x1f, 0x5d0 <aw22xxx_i2c_read+0x84>
     590: f9400280     	ldr	x0, [x20]
     594: aa1303e1     	mov	x1, x19
     598: 52800022     	mov	w2, #0x1                // =1
     59c: 52800023     	mov	w3, #0x1                // =1
     5a0: 94000000     	bl	0x5a0 <aw22xxx_i2c_read+0x54>
		00000000000005a0:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     5a4: 37f80220     	tbnz	w0, #0x1f, 0x5e8 <aw22xxx_i2c_read+0x9c>
     5a8: d5384108     	mrs	x8, SP_EL0
     5ac: f9438908     	ldr	x8, [x8, #0x710]
     5b0: f94007e9     	ldr	x9, [sp, #0x8]
     5b4: eb09011f     	cmp	x8, x9
     5b8: 54000641     	b.ne	0x680 <aw22xxx_i2c_read+0x134>
     5bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     5c0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     5c4: 9100c3ff     	add	sp, sp, #0x30
     5c8: d50323bf     	autiasp
     5cc: d65f03c0     	ret
     5d0: 2a0003e2     	mov	w2, w0
     5d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1168
     5d8: 91000000     	add	x0, x0, #0x0
		00000000000005d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1168
     5dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     5e0: 91000021     	add	x1, x1, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     5e4: 14000008     	b	0x604 <aw22xxx_i2c_read+0xb8>
     5e8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x717
     5ec: 91000108     	add	x8, x8, #0x0
		00000000000005ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x717
     5f0: 39000260     	strb	w0, [x19]
     5f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     5f8: 91000021     	add	x1, x1, #0x0
		00000000000005f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     5fc: 2a0003e2     	mov	w2, w0
     600: aa0803e0     	mov	x0, x8
     604: 94000000     	bl	0x604 <aw22xxx_i2c_read+0xb8>
		0000000000000604:  R_AARCH64_CALL26	_printk
     608: 52800020     	mov	w0, #0x1                // =1
     60c: 94000000     	bl	0x60c <aw22xxx_i2c_read+0xc0>
		000000000000060c:  R_AARCH64_CALL26	msleep
     610: f9400280     	ldr	x0, [x20]
     614: 910013e1     	add	x1, sp, #0x4
     618: 52800022     	mov	w2, #0x1                // =1
     61c: 2a1f03e3     	mov	w3, wzr
     620: 94000000     	bl	0x620 <aw22xxx_i2c_read+0xd4>
		0000000000000620:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     624: 37f80160     	tbnz	w0, #0x1f, 0x650 <aw22xxx_i2c_read+0x104>
     628: f9400280     	ldr	x0, [x20]
     62c: aa1303e1     	mov	x1, x19
     630: 52800022     	mov	w2, #0x1                // =1
     634: 52800023     	mov	w3, #0x1                // =1
     638: 94000000     	bl	0x638 <aw22xxx_i2c_read+0xec>
		0000000000000638:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     63c: 36fffb60     	tbz	w0, #0x1f, 0x5a8 <aw22xxx_i2c_read+0x5c>
     640: 39000260     	strb	w0, [x19]
     644: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x717
     648: 91000108     	add	x8, x8, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x717
     64c: 14000003     	b	0x658 <aw22xxx_i2c_read+0x10c>
     650: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1168
     654: 91000108     	add	x8, x8, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1168
     658: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     65c: 91000021     	add	x1, x1, #0x0
		000000000000065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     660: 2a0003e2     	mov	w2, w0
     664: aa0803e0     	mov	x0, x8
     668: 2a0203f3     	mov	w19, w2
     66c: 94000000     	bl	0x66c <aw22xxx_i2c_read+0x120>
		000000000000066c:  R_AARCH64_CALL26	_printk
     670: 52800020     	mov	w0, #0x1                // =1
     674: 94000000     	bl	0x674 <aw22xxx_i2c_read+0x128>
		0000000000000674:  R_AARCH64_CALL26	msleep
     678: 2a1303e0     	mov	w0, w19
     67c: 17ffffcb     	b	0x5a8 <aw22xxx_i2c_read+0x5c>
     680: 94000000     	bl	0x680 <aw22xxx_i2c_read+0x134>
		0000000000000680:  R_AARCH64_CALL26	__stack_chk_fail
