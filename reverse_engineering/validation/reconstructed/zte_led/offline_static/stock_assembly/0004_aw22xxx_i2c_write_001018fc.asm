
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000041c <aw22xxx_i2c_write>:
     41c: d503233f     	paciasp
     420: d10103ff     	sub	sp, sp, #0x40
     424: a9017bfd     	stp	x29, x30, [sp, #0x10]
     428: f90013f5     	str	x21, [sp, #0x20]
     42c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     430: 910043fd     	add	x29, sp, #0x10
     434: d5384108     	mrs	x8, SP_EL0
     438: aa0003f3     	mov	x19, x0
     43c: 2a1f03e3     	mov	w3, wzr
     440: f9438908     	ldr	x8, [x8, #0x710]
     444: f90007e8     	str	x8, [sp, #0x8]
     448: f9400000     	ldr	x0, [x0]
     44c: 390013e1     	strb	w1, [sp, #0x4]
     450: 910013e1     	add	x1, sp, #0x4
     454: 390017e2     	strb	w2, [sp, #0x5]
     458: 52800042     	mov	w2, #0x2                // =2
     45c: 94000000     	bl	0x45c <aw22xxx_i2c_write+0x40>
		000000000000045c:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     460: 37f80180     	tbnz	w0, #0x1f, 0x490 <aw22xxx_i2c_write+0x74>
     464: d5384108     	mrs	x8, SP_EL0
     468: f9438908     	ldr	x8, [x8, #0x710]
     46c: f94007e9     	ldr	x9, [sp, #0x8]
     470: eb09011f     	cmp	x8, x9
     474: 540006a1     	b.ne	0x548 <aw22xxx_i2c_write+0x12c>
     478: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     47c: f94013f5     	ldr	x21, [sp, #0x20]
     480: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     484: 910103ff     	add	sp, sp, #0x40
     488: d50323bf     	autiasp
     48c: d65f03c0     	ret
     490: b942e268     	ldr	w8, [x19, #0x2e0]
     494: 2a0003f4     	mov	w20, w0
     498: 2a0803e0     	mov	w0, w8
     49c: 94000000     	bl	0x49c <aw22xxx_i2c_write+0x80>
		000000000000049c:  R_AARCH64_CALL26	gpio_to_desc
     4a0: 94000000     	bl	0x4a0 <aw22xxx_i2c_write+0x84>
		00000000000004a0:  R_AARCH64_CALL26	gpiod_get_raw_value
     4a4: 2a0003e4     	mov	w4, w0
     4a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x283
     4ac: 91000000     	add	x0, x0, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x283
     4b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba9
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba9
     4b8: 2a1f03e2     	mov	w2, wzr
     4bc: 2a1403e3     	mov	w3, w20
     4c0: 94000000     	bl	0x4c0 <aw22xxx_i2c_write+0xa4>
		00000000000004c0:  R_AARCH64_CALL26	_printk
     4c4: 52800020     	mov	w0, #0x1                // =1
     4c8: 94000000     	bl	0x4c8 <aw22xxx_i2c_write+0xac>
		00000000000004c8:  R_AARCH64_CALL26	msleep
     4cc: f9400260     	ldr	x0, [x19]
     4d0: 910013e1     	add	x1, sp, #0x4
     4d4: 52800042     	mov	w2, #0x2                // =2
     4d8: 2a1f03e3     	mov	w3, wzr
     4dc: 94000000     	bl	0x4dc <aw22xxx_i2c_write+0xc0>
		00000000000004dc:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     4e0: 36fffc20     	tbz	w0, #0x1f, 0x464 <aw22xxx_i2c_write+0x48>
     4e4: b942e268     	ldr	w8, [x19, #0x2e0]
     4e8: 2a0003f4     	mov	w20, w0
     4ec: 2a0803e0     	mov	w0, w8
     4f0: 94000000     	bl	0x4f0 <aw22xxx_i2c_write+0xd4>
		00000000000004f0:  R_AARCH64_CALL26	gpio_to_desc
     4f4: 94000000     	bl	0x4f4 <aw22xxx_i2c_write+0xd8>
		00000000000004f4:  R_AARCH64_CALL26	gpiod_get_raw_value
     4f8: 90000015     	adrp	x21, 0x0 <.text>
		00000000000004f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba9
     4fc: 910002b5     	add	x21, x21, #0x0
		00000000000004fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba9
     500: 2a0003e4     	mov	w4, w0
     504: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x283
     508: 91000000     	add	x0, x0, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x283
     50c: aa1503e1     	mov	x1, x21
     510: 52800022     	mov	w2, #0x1                // =1
     514: 2a1403e3     	mov	w3, w20
     518: 94000000     	bl	0x518 <aw22xxx_i2c_write+0xfc>
		0000000000000518:  R_AARCH64_CALL26	_printk
     51c: b942e260     	ldr	w0, [x19, #0x2e0]
     520: 94000000     	bl	0x520 <aw22xxx_i2c_write+0x104>
		0000000000000520:  R_AARCH64_CALL26	gpio_to_desc
     524: 52800021     	mov	w1, #0x1                // =1
     528: 94000000     	bl	0x528 <aw22xxx_i2c_write+0x10c>
		0000000000000528:  R_AARCH64_CALL26	gpiod_direction_output_raw
     52c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000052c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab
     530: 91000000     	add	x0, x0, #0x0
		0000000000000530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab
     534: aa1503e1     	mov	x1, x21
     538: 94000000     	bl	0x538 <aw22xxx_i2c_write+0x11c>
		0000000000000538:  R_AARCH64_CALL26	_printk
     53c: 52800020     	mov	w0, #0x1                // =1
     540: 94000000     	bl	0x540 <aw22xxx_i2c_write+0x124>
		0000000000000540:  R_AARCH64_CALL26	msleep
     544: 17ffffc8     	b	0x464 <aw22xxx_i2c_write+0x48>
     548: 94000000     	bl	0x548 <aw22xxx_i2c_write+0x12c>
		0000000000000548:  R_AARCH64_CALL26	__stack_chk_fail
