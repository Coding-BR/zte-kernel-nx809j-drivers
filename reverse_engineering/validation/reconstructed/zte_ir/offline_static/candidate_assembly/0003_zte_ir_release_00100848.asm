
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000430 <zte_ir_release>:
     430: d503233f     	paciasp
     434: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     438: f9000bf5     	str	x21, [sp, #0x10]
     43c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     440: 910003fd     	mov	x29, sp
     444: f9401033     	ldr	x19, [x1, #0x20]
     448: b4000333     	cbz	x19, 0x4ac <zte_ir_release+0x7c>
     44c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     450: 91000000     	add	x0, x0, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.data
     454: aa0103f4     	mov	x20, x1
     458: 91404e75     	add	x21, x19, #0x13, lsl #12 // =0x13000
     45c: 94000000     	bl	0x45c <zte_ir_release+0x2c>
		000000000000045c:  R_AARCH64_CALL26	mutex_lock
     460: f900129f     	str	xzr, [x20, #0x20]
     464: b948eaa8     	ldr	w8, [x21, #0x8e8]
     468: 34000188     	cbz	w8, 0x498 <zte_ir_release+0x68>
     46c: 71000508     	subs	w8, w8, #0x1
     470: b908eaa8     	str	w8, [x21, #0x8e8]
     474: 54000121     	b.ne	0x498 <zte_ir_release+0x68>
     478: 3963b2a8     	ldrb	w8, [x21, #0x8ec]
     47c: 360000e8     	tbz	w8, #0x0, 0x498 <zte_ir_release+0x68>
     480: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000480:  R_AARCH64_ADR_PREL_PG_HI21	.data
     484: 91000000     	add	x0, x0, #0x0
		0000000000000484:  R_AARCH64_ADD_ABS_LO12_NC	.data
     488: 94000000     	bl	0x488 <zte_ir_release+0x58>
		0000000000000488:  R_AARCH64_CALL26	mutex_unlock
     48c: aa1303e0     	mov	x0, x19
     490: 94000000     	bl	0x490 <zte_ir_release+0x60>
		0000000000000490:  R_AARCH64_CALL26	kfree
     494: 14000004     	b	0x4a4 <zte_ir_release+0x74>
     498: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000498:  R_AARCH64_ADR_PREL_PG_HI21	.data
     49c: 91000000     	add	x0, x0, #0x0
		000000000000049c:  R_AARCH64_ADD_ABS_LO12_NC	.data
     4a0: 94000000     	bl	0x4a0 <zte_ir_release+0x70>
		00000000000004a0:  R_AARCH64_CALL26	mutex_unlock
     4a4: 2a1f03e0     	mov	w0, wzr
     4a8: 14000002     	b	0x4b0 <zte_ir_release+0x80>
     4ac: 12800240     	mov	w0, #-0x13              // =-19
     4b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     4b4: f9400bf5     	ldr	x21, [sp, #0x10]
     4b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     4bc: d50323bf     	autiasp
     4c0: d65f03c0     	ret
