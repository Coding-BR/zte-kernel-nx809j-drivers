
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004c4 <zte_ir_encode_pulses>:
     4c4: a9be57f6     	stp	x22, x21, [sp, #-0x20]!
     4c8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     4cc: b4000a04     	cbz	x4, 0x60c <zte_ir_encode_pulses+0x148>
     4d0: 128002a8     	mov	w8, #-0x16              // =-22
     4d4: f900009f     	str	xzr, [x4]
     4d8: b4000a61     	cbz	x1, 0x624 <zte_ir_encode_pulses+0x160>
     4dc: b4000a42     	cbz	x2, 0x624 <zte_ir_encode_pulses+0x160>
     4e0: 529697e9     	mov	w9, #0xb4bf             // =46271
     4e4: 72bff669     	movk	w9, #0xffb3, lsl #16
     4e8: 0b09006a     	add	w10, w3, w9
     4ec: 11004129     	add	w9, w9, #0x10
     4f0: 6b09015f     	cmp	w10, w9
     4f4: 54000983     	b.lo	0x624 <zte_ir_encode_pulses+0x160>
     4f8: d291a6ef     	mov	x15, #0x8d37            // =36151
     4fc: 5294240a     	mov	w10, #0xa120            // =41248
     500: 5287108b     	mov	w11, #0x3884            // =14468
     504: f2b6bdaf     	movk	x15, #0xb5ed, lsl #16
     508: 53047c6c     	lsr	w12, w3, #4
     50c: aa1f03e8     	mov	x8, xzr
     510: f2def40f     	movk	x15, #0xf7a0, lsl #32
     514: aa1f03e9     	mov	x9, xzr
     518: 72a000ea     	movk	w10, #0x7, lsl #16
     51c: 72a0002b     	movk	w11, #0x1, lsl #16
     520: 9100180d     	add	x13, x0, #0x6
     524: 9100100e     	add	x14, x0, #0x4
     528: f2e218cf     	movk	x15, #0x10c6, lsl #48
     52c: 52938810     	mov	w16, #0x9c40            // =40000
     530: 929387f1     	mov	x17, #-0x9c40           // =-40000
     534: 52800043     	mov	w3, #0x2                // =2
     538: 14000005     	b	0x54c <zte_ir_encode_pulses+0x88>
     53c: 91000508     	add	x8, x8, #0x1
     540: 8b0900a9     	add	x9, x5, x9
     544: eb02011f     	cmp	x8, x2
     548: 540006a0     	b.eq	0x61c <zte_ir_encode_pulses+0x158>
     54c: b8687826     	ldr	w6, [x1, x8, lsl #2]
     550: cb090207     	sub	x7, x16, x9
     554: 9bac28c5     	umaddl	x5, w6, w12, x10
     558: 9bcf7ca5     	umulh	x5, x5, x15
     55c: d350fca5     	lsr	x5, x5, #16
     560: eb0700bf     	cmp	x5, x7
     564: 54000582     	b.hs	0x614 <zte_ir_encode_pulses+0x150>
     568: 9bac7cc7     	umull	x7, w6, w12
     56c: 91000966     	add	x6, x11, #0x2
     570: f240011f     	tst	x8, #0x1
     574: 9a860166     	csel	x6, x11, x6, eq
     578: eb0a00ff     	cmp	x7, x10
     57c: 54fffe03     	b.lo	0x53c <zte_ir_encode_pulses+0x78>
     580: eb090207     	subs	x7, x16, x9
     584: 78666806     	ldrh	w6, [x0, x6]
     588: 9a8733f3     	csel	x19, xzr, x7, lo
     58c: f10004bf     	cmp	x5, #0x1
     590: 9a9f84a7     	csinc	x7, x5, xzr, hi
     594: d10004f4     	sub	x20, x7, #0x1
     598: eb13029f     	cmp	x20, x19
     59c: 9a933295     	csel	x21, x20, x19, lo
     5a0: aa1f03f3     	mov	x19, xzr
     5a4: f1000abf     	cmp	x21, #0x2
     5a8: 54000183     	b.lo	0x5d8 <zte_ir_encode_pulses+0x114>
     5ac: 910006b3     	add	x19, x21, #0x1
     5b0: aa3503f5     	mvn	x21, x21
     5b4: f2400274     	ands	x20, x19, #0x1
     5b8: 9a940076     	csel	x22, x3, x20, eq
     5bc: 8b0905b4     	add	x20, x13, x9, lsl #1
     5c0: cb160273     	sub	x19, x19, x22
     5c4: 8b1602b5     	add	x21, x21, x22
     5c8: b1000ab5     	adds	x21, x21, #0x2
     5cc: 781fe286     	sturh	w6, [x20, #-0x2]
     5d0: 78004686     	strh	w6, [x20], #0x4
     5d4: 54ffffa1     	b.ne	0x5c8 <zte_ir_encode_pulses+0x104>
     5d8: eb10013f     	cmp	x9, x16
     5dc: 8b090274     	add	x20, x19, x9
     5e0: 8b110276     	add	x22, x19, x17
     5e4: 9a903135     	csel	x21, x9, x16, lo
     5e8: 8b1405d4     	add	x20, x14, x20, lsl #1
     5ec: cb070267     	sub	x7, x19, x7
     5f0: 8b1502d5     	add	x21, x22, x21
     5f4: b4000215     	cbz	x21, 0x634 <zte_ir_encode_pulses+0x170>
     5f8: b10004e7     	adds	x7, x7, #0x1
     5fc: 910006b5     	add	x21, x21, #0x1
     600: 78002686     	strh	w6, [x20], #0x2
     604: 54ffff83     	b.lo	0x5f4 <zte_ir_encode_pulses+0x130>
     608: 17ffffcd     	b	0x53c <zte_ir_encode_pulses+0x78>
     60c: 128002a8     	mov	w8, #-0x16              // =-22
     610: 14000005     	b	0x624 <zte_ir_encode_pulses+0x160>
     614: 128000c8     	mov	w8, #-0x7               // =-7
     618: 14000003     	b	0x624 <zte_ir_encode_pulses+0x160>
     61c: 2a1f03e8     	mov	w8, wzr
     620: f9000089     	str	x9, [x4]
     624: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     628: 2a0803e0     	mov	w0, w8
     62c: a8c257f6     	ldp	x22, x21, [sp], #0x20
     630: d65f03c0     	ret
     634: d42aa240     	brk	#0x5512
