
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005f4 <haptic_i2c_read>:
     5f4: d503233f     	paciasp
     5f8: d10243ff     	sub	sp, sp, #0x90
     5fc: a9037bfd     	stp	x29, x30, [sp, #0x30]
     600: a9046ffc     	stp	x28, x27, [sp, #0x40]
     604: a90567fa     	stp	x26, x25, [sp, #0x50]
     608: a9065ff8     	stp	x24, x23, [sp, #0x60]
     60c: a90757f6     	stp	x22, x21, [sp, #0x70]
     610: a9084ff4     	stp	x20, x19, [sp, #0x80]
     614: 9100c3fd     	add	x29, sp, #0x30
     618: d5384108     	mrs	x8, SP_EL0
     61c: 5280003a     	mov	w26, #0x1               // =1
     620: aa0203f3     	mov	x19, x2
     624: f9438908     	ldr	x8, [x8, #0x710]
     628: 2a0103f4     	mov	w20, w1
     62c: aa0003f5     	mov	x21, x0
     630: 2a1f03f6     	mov	w22, wzr
     634: 52a0003c     	mov	w28, #0x10000           // =65536
     638: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     63c: 91000318     	add	x24, x24, #0x0
		000000000000063c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     640: 910003f9     	mov	x25, sp
     644: 72a0005a     	movk	w26, #0x2, lsl #16
     648: 910013fb     	add	x27, sp, #0x4
     64c: f81f83a8     	stur	x8, [x29, #-0x8]
     650: 79000bff     	strh	wzr, [sp, #0x4]
     654: f940f6a8     	ldr	x8, [x21, #0x1e8]
     658: 910023e1     	add	x1, sp, #0x8
     65c: 52800042     	mov	w2, #0x2                // =2
     660: 390003f4     	strb	w20, [sp]
     664: 79400509     	ldrh	w9, [x8, #0x2]
     668: f90013fb     	str	x27, [sp, #0x20]
     66c: f9400d00     	ldr	x0, [x8, #0x18]
     670: b800a3fc     	stur	w28, [sp, #0xa]
     674: 79001fff     	strh	wzr, [sp, #0xe]
     678: f9000bf9     	str	x25, [sp, #0x10]
     67c: 790013e9     	strh	w9, [sp, #0x8]
     680: 790033e9     	strh	w9, [sp, #0x18]
     684: b801a3fa     	stur	w26, [sp, #0x1a]
     688: 79003fff     	strh	wzr, [sp, #0x1e]
     68c: 94000000     	bl	0x68c <haptic_i2c_read+0x98>
		000000000000068c:  R_AARCH64_CALL26	i2c_transfer
     690: 2a0003f7     	mov	w23, w0
     694: 37f80300     	tbnz	w0, #0x1f, 0x6f4 <haptic_i2c_read+0x100>
     698: 71000aff     	cmp	w23, #0x2
     69c: 540003c0     	b.eq	0x714 <haptic_i2c_read+0x120>
     6a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x8c9
     6a4: 91000000     	add	x0, x0, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x8c9
     6a8: aa1803e1     	mov	x1, x24
     6ac: 52801122     	mov	w2, #0x89               // =137
     6b0: 90000003     	adrp	x3, 0x0 <.text>
		00000000000006b0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa3f
     6b4: 91000063     	add	x3, x3, #0x0
		00000000000006b4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa3f
     6b8: 94000000     	bl	0x6b8 <haptic_i2c_read+0xc4>
		00000000000006b8:  R_AARCH64_CALL26	_printk
     6bc: 128000b7     	mov	w23, #-0x6              // =-6
     6c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x34
     6c4: 91000000     	add	x0, x0, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x34
     6c8: aa1803e1     	mov	x1, x24
     6cc: 52801322     	mov	w2, #0x99               // =153
     6d0: 90000003     	adrp	x3, 0x0 <.text>
		00000000000006d0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x317
     6d4: 91000063     	add	x3, x3, #0x0
		00000000000006d4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x317
     6d8: 2a1603e4     	mov	w4, w22
     6dc: 2a1703e5     	mov	w5, w23
     6e0: 94000000     	bl	0x6e0 <haptic_i2c_read+0xec>
		00000000000006e0:  R_AARCH64_CALL26	_printk
     6e4: 110006d6     	add	w22, w22, #0x1
     6e8: 710016df     	cmp	w22, #0x5
     6ec: 54fffb41     	b.ne	0x654 <haptic_i2c_read+0x60>
     6f0: 1400000d     	b	0x724 <haptic_i2c_read+0x130>
     6f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x488
     6f8: 91000000     	add	x0, x0, #0x0
		00000000000006f8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x488
     6fc: aa1803e1     	mov	x1, x24
     700: 528010c2     	mov	w2, #0x86               // =134
     704: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa3f
     708: 91000063     	add	x3, x3, #0x0
		0000000000000708:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa3f
     70c: 94000000     	bl	0x70c <haptic_i2c_read+0x118>
		000000000000070c:  R_AARCH64_CALL26	_printk
     710: 17ffffec     	b	0x6c0 <haptic_i2c_read+0xcc>
     714: 79400be8     	ldrh	w8, [sp, #0x4]
     718: 5ac00908     	rev	w8, w8
     71c: 53107d08     	lsr	w8, w8, #16
     720: 79000268     	strh	w8, [x19]
     724: d5384108     	mrs	x8, SP_EL0
     728: f9438908     	ldr	x8, [x8, #0x710]
     72c: f85f83a9     	ldur	x9, [x29, #-0x8]
     730: eb09011f     	cmp	x8, x9
     734: 54000161     	b.ne	0x760 <haptic_i2c_read+0x16c>
     738: 2a1703e0     	mov	w0, w23
     73c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     740: a94757f6     	ldp	x22, x21, [sp, #0x70]
     744: a9465ff8     	ldp	x24, x23, [sp, #0x60]
     748: a94567fa     	ldp	x26, x25, [sp, #0x50]
     74c: a9446ffc     	ldp	x28, x27, [sp, #0x40]
     750: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     754: 910243ff     	add	sp, sp, #0x90
     758: d50323bf     	autiasp
     75c: d65f03c0     	ret
     760: 94000000     	bl	0x760 <haptic_i2c_read+0x16c>
		0000000000000760:  R_AARCH64_CALL26	__stack_chk_fail
