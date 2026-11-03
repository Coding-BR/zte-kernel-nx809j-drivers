
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008408 <richtap_rtp_work>:
    8408: d503233f     	paciasp
    840c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    8410: a9016ffc     	stp	x28, x27, [sp, #0x10]
    8414: a90267fa     	stp	x26, x25, [sp, #0x20]
    8418: a9035ff8     	stp	x24, x23, [sp, #0x30]
    841c: a90457f6     	stp	x22, x21, [sp, #0x40]
    8420: a9054ff4     	stp	x20, x19, [sp, #0x50]
    8424: 910003fd     	mov	x29, sp
    8428: 94000000     	bl	0x8428 <richtap_rtp_work+0x20>
		0000000000008428:  R_AARCH64_CALL26	haptic_lifetime_is_shutting_down
    842c: 37000ae0     	tbnz	w0, #0x0, 0x8588 <richtap_rtp_work+0x180>
    8430: 94000000     	bl	0x8430 <richtap_rtp_work+0x28>
		0000000000008430:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_lock
    8434: 94000000     	bl	0x8434 <richtap_rtp_work+0x2c>
		0000000000008434:  R_AARCH64_CALL26	haptic_lifetime_is_shutting_down
    8438: 37000a60     	tbnz	w0, #0x0, 0x8584 <richtap_rtp_work+0x17c>
    843c: b900781f     	str	wzr, [x0, #0x78]
    8440: aa0003f3     	mov	x19, x0
    8444: 2a1f03f5     	mov	w21, wzr
    8448: f85c8008     	ldur	x8, [x0, #-0x38]
    844c: 2a1f03f7     	mov	w23, wzr
    8450: d1192014     	sub	x20, x0, #0x648
    8454: d107c016     	sub	x22, x0, #0x1f0
    8458: 52801ff8     	mov	w24, #0xff              // =255
    845c: f81d8008     	stur	x8, [x0, #-0x28]
    8460: 94000000     	bl	0x8460 <richtap_rtp_work+0x58>
		0000000000008460:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_unlock
    8464: 94000000     	bl	0x8464 <richtap_rtp_work+0x5c>
		0000000000008464:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_lock
    8468: 94000000     	bl	0x8468 <richtap_rtp_work+0x60>
		0000000000008468:  R_AARCH64_CALL26	haptic_lifetime_is_shutting_down
    846c: 370008c0     	tbnz	w0, #0x0, 0x8584 <richtap_rtp_work+0x17c>
    8470: 5287d01b     	mov	w27, #0x3e80            // =16000
    8474: 14000006     	b	0x848c <richtap_rtp_work+0x84>
    8478: 94000000     	bl	0x8478 <richtap_rtp_work+0x70>
		0000000000008478:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_unlock
    847c: 110006f7     	add	w23, w23, #0x1
    8480: 94000000     	bl	0x8480 <richtap_rtp_work+0x78>
		0000000000008480:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_lock
    8484: 94000000     	bl	0x8484 <richtap_rtp_work+0x7c>
		0000000000008484:  R_AARCH64_CALL26	haptic_lifetime_is_shutting_down
    8488: 370007e0     	tbnz	w0, #0x0, 0x8584 <richtap_rtp_work+0x17c>
    848c: f85c8268     	ldur	x8, [x19, #-0x38]
    8490: f85d827c     	ldur	x28, [x19, #-0x28]
    8494: eb080389     	subs	x9, x28, x8
    8498: 54000723     	b.lo	0x857c <richtap_rtp_work+0x174>
    849c: b400071c     	cbz	x28, 0x857c <richtap_rtp_work+0x174>
    84a0: b40006e8     	cbz	x8, 0x857c <richtap_rtp_work+0x174>
    84a4: 9240350a     	and	x10, x8, #0x3fff
    84a8: b50006aa     	cbnz	x10, 0x857c <richtap_rtp_work+0x174>
    84ac: f272ed3f     	tst	x9, #0xffffffffffffc3ff
    84b0: 54000661     	b.ne	0x857c <richtap_rtp_work+0x174>
    84b4: b94002ca     	ldr	w10, [x22]
    84b8: 6b1b015f     	cmp	w10, w27
    84bc: 54000608     	b.hi	0x857c <richtap_rtp_work+0x174>
    84c0: f85c026b     	ldur	x11, [x19, #-0x40]
    84c4: b40005cb     	cbz	x11, 0x857c <richtap_rtp_work+0x174>
    84c8: 3940038b     	ldrb	w11, [x28]
    84cc: 7101557f     	cmp	w11, #0x55
    84d0: 54000180     	b.eq	0x8500 <richtap_rtp_work+0xf8>
    84d4: 7102a97f     	cmp	w11, #0xaa
    84d8: 540007a0     	b.eq	0x85cc <richtap_rtp_work+0x1c4>
    84dc: 94000000     	bl	0x84dc <richtap_rtp_work+0xd4>
		00000000000084dc:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_unlock
    84e0: 52800020     	mov	w0, #0x1                // =1
    84e4: 94000000     	bl	0x84e4 <richtap_rtp_work+0xdc>
		00000000000084e4:  R_AARCH64_CALL26	msleep
    84e8: b94002c8     	ldr	w8, [x22]
    84ec: 6b0802bf     	cmp	w21, w8
    84f0: 54000702     	b.hs	0x85d0 <richtap_rtp_work+0x1c8>
    84f4: 710076ff     	cmp	w23, #0x1d
    84f8: 54fffc29     	b.ls	0x847c <richtap_rtp_work+0x74>
    84fc: 14000035     	b	0x85d0 <richtap_rtp_work+0x1c8>
    8500: 79c00799     	ldrsh	w25, [x28, #0x2]
    8504: 710fa33f     	cmp	w25, #0x3e8
    8508: 540003a8     	b.hi	0x857c <richtap_rtp_work+0x174>
    850c: 6b15015a     	subs	w26, w10, w21
    8510: 54000363     	b.lo	0x857c <richtap_rtp_work+0x174>
    8514: 6b19035f     	cmp	w26, w25
    8518: 54000483     	b.lo	0x85a8 <richtap_rtp_work+0x1a0>
    851c: 5287800b     	mov	w11, #0x3c00            // =15360
    8520: f940079a     	ldr	x26, [x28, #0x8]
    8524: 9110038a     	add	x10, x28, #0x400
    8528: eb0b013f     	cmp	x9, x11
    852c: 9a8a0108     	csel	x8, x8, x10, eq
    8530: eb1a011f     	cmp	x8, x26
    8534: 54000241     	b.ne	0x857c <richtap_rtp_work+0x174>
    8538: 340000d9     	cbz	w25, 0x8550 <richtap_rtp_work+0x148>
    853c: f85c0268     	ldur	x8, [x19, #-0x40]
    8540: 91006381     	add	x1, x28, #0x18
    8544: aa1903e2     	mov	x2, x25
    8548: 8b354100     	add	x0, x8, w21, uxtw
    854c: 94000000     	bl	0x854c <richtap_rtp_work+0x144>
		000000000000854c:  R_AARCH64_CALL26	memcpy
    8550: 39000398     	strb	w24, [x28]
    8554: 0b1902b5     	add	w21, w21, w25
    8558: 7900079f     	strh	wzr, [x28, #0x2]
    855c: 7900e27f     	strh	wzr, [x19, #0x70]
    8560: f81d827a     	stur	x26, [x19, #-0x28]
    8564: b94002c8     	ldr	w8, [x22]
    8568: 6b0802bf     	cmp	w21, w8
    856c: 54000302     	b.hs	0x85cc <richtap_rtp_work+0x1c4>
    8570: 710076ff     	cmp	w23, #0x1d
    8574: 54fff829     	b.ls	0x8478 <richtap_rtp_work+0x70>
    8578: 14000015     	b	0x85cc <richtap_rtp_work+0x1c4>
    857c: aa1403e0     	mov	x0, x20
    8580: 94000000     	bl	0x8580 <richtap_rtp_work+0x178>
		0000000000008580:  R_AARCH64_CALL26	haptic_lifetime_richtap_fifo_reset
    8584: 94000000     	bl	0x8584 <richtap_rtp_work+0x17c>
		0000000000008584:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_unlock
    8588: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    858c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    8590: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    8594: a94267fa     	ldp	x26, x25, [sp, #0x20]
    8598: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    859c: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    85a0: d50323bf     	autiasp
    85a4: d65f03c0     	ret
    85a8: 6b15015f     	cmp	w10, w21
    85ac: 540000c0     	b.eq	0x85c4 <richtap_rtp_work+0x1bc>
    85b0: f85c0268     	ldur	x8, [x19, #-0x40]
    85b4: 91006381     	add	x1, x28, #0x18
    85b8: aa1a03e2     	mov	x2, x26
    85bc: 8b354100     	add	x0, x8, w21, uxtw
    85c0: 94000000     	bl	0x85c0 <richtap_rtp_work+0x1b8>
		00000000000085c0:  R_AARCH64_CALL26	memcpy
    85c4: 7900e27a     	strh	w26, [x19, #0x70]
    85c8: b94002d5     	ldr	w21, [x22]
    85cc: 94000000     	bl	0x85cc <richtap_rtp_work+0x1c4>
		00000000000085cc:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_unlock
    85d0: 94000000     	bl	0x85d0 <richtap_rtp_work+0x1c8>
		00000000000085d0:  R_AARCH64_CALL26	haptic_lifetime_irq_stop_lock
    85d4: 94000000     	bl	0x85d4 <richtap_rtp_work+0x1cc>
		00000000000085d4:  R_AARCH64_CALL26	haptic_lifetime_is_shutting_down
    85d8: 3707fd60     	tbnz	w0, #0x0, 0x8584 <richtap_rtp_work+0x17c>
    85dc: aa1403e0     	mov	x0, x20
    85e0: 94000000     	bl	0x85e0 <richtap_rtp_work+0x1d8>
		00000000000085e0:  R_AARCH64_CALL26	richtap_rtp_start
    85e4: 3607fd00     	tbz	w0, #0x0, 0x8584 <richtap_rtp_work+0x17c>
    85e8: f8580268     	ldur	x8, [x19, #-0x80]
    85ec: f85c0261     	ldur	x1, [x19, #-0x40]
    85f0: aa1403e0     	mov	x0, x20
    85f4: 2a1503e2     	mov	w2, w21
    85f8: aa1403f7     	mov	x23, x20
    85fc: f9406908     	ldr	x8, [x8, #0xd0]
    8600: b85fc110     	ldur	w16, [x8, #-0x4]
    8604: 72965371     	movk	w17, #0xb29b
    8608: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    860c: 6b11021f     	cmp	w16, w17
    8610: 54000040     	b.eq	0x8618 <richtap_rtp_work+0x210>
    8614: d4304500     	brk	#0x8228
    8618: d63f0100     	blr	x8
    861c: d118de68     	sub	x8, x19, #0x637
    8620: 39400108     	ldrb	w8, [x8]
    8624: 7100051f     	cmp	w8, #0x1
    8628: 540008e1     	b.ne	0x8744 <richtap_rtp_work+0x33c>
    862c: d118c674     	sub	x20, x19, #0x631
    8630: b9007668     	str	w8, [x19, #0x74]
    8634: f85c8269     	ldur	x9, [x19, #-0x38]
    8638: f85d826a     	ldur	x10, [x19, #-0x28]
    863c: eb090148     	subs	x8, x10, x9
    8640: 54000b23     	b.lo	0x87a4 <richtap_rtp_work+0x39c>
    8644: b4000b0a     	cbz	x10, 0x87a4 <richtap_rtp_work+0x39c>
    8648: b4000ae9     	cbz	x9, 0x87a4 <richtap_rtp_work+0x39c>
    864c: 92403529     	and	x9, x9, #0x3fff
    8650: b5000aa9     	cbnz	x9, 0x87a4 <richtap_rtp_work+0x39c>
    8654: f272ed1f     	tst	x8, #0xffffffffffffc3ff
    8658: 54000a61     	b.ne	0x87a4 <richtap_rtp_work+0x39c>
    865c: f8580268     	ldur	x8, [x19, #-0x80]
    8660: aa1703e0     	mov	x0, x23
    8664: f940b908     	ldr	x8, [x8, #0x170]
    8668: b85fc110     	ldur	w16, [x8, #-0x4]
    866c: 72870a91     	movk	w17, #0x3854
    8670: 72af0971     	movk	w17, #0x784b, lsl #16
    8674: 6b11021f     	cmp	w16, w17
    8678: 54000040     	b.eq	0x8680 <richtap_rtp_work+0x278>
    867c: d4304500     	brk	#0x8228
    8680: d63f0100     	blr	x8
    8684: 72001c1f     	tst	w0, #0xff
    8688: 54000321     	b.ne	0x86ec <richtap_rtp_work+0x2e4>
    868c: 39400288     	ldrb	w8, [x20]
    8690: 7100091f     	cmp	w8, #0x2
    8694: 540002c1     	b.ne	0x86ec <richtap_rtp_work+0x2e4>
    8698: f85d8268     	ldur	x8, [x19, #-0x28]
    869c: 39400108     	ldrb	w8, [x8]
    86a0: 7101551f     	cmp	w8, #0x55
    86a4: 54000241     	b.ne	0x86ec <richtap_rtp_work+0x2e4>
    86a8: b94002c8     	ldr	w8, [x22]
    86ac: aa1703e0     	mov	x0, x23
    86b0: 53027d01     	lsr	w1, w8, #2
    86b4: 94000000     	bl	0x86b4 <richtap_rtp_work+0x2ac>
		00000000000086b4:  R_AARCH64_CALL26	richtap_update_fifo_data
    86b8: f8580268     	ldur	x8, [x19, #-0x80]
    86bc: 360007a0     	tbz	w0, #0x0, 0x87b0 <richtap_rtp_work+0x3a8>
    86c0: f940b108     	ldr	x8, [x8, #0x160]
    86c4: aa1703e0     	mov	x0, x23
    86c8: b85fc110     	ldur	w16, [x8, #-0x4]
    86cc: 72870a91     	movk	w17, #0x3854
    86d0: 72af0971     	movk	w17, #0x784b, lsl #16
    86d4: 6b11021f     	cmp	w16, w17
    86d8: 54000040     	b.eq	0x86e0 <richtap_rtp_work+0x2d8>
    86dc: d4304500     	brk	#0x8228
    86e0: d63f0100     	blr	x8
    86e4: 72000c1f     	tst	w0, #0xf
    86e8: 54fffa61     	b.ne	0x8634 <richtap_rtp_work+0x22c>
    86ec: f8580268     	ldur	x8, [x19, #-0x80]
    86f0: aa1703e0     	mov	x0, x23
    86f4: f9407908     	ldr	x8, [x8, #0xf0]
    86f8: b85fc110     	ldur	w16, [x8, #-0x4]
    86fc: 72810611     	movk	w17, #0x830
    8700: 72b08f51     	movk	w17, #0x847a, lsl #16
    8704: 6b11021f     	cmp	w16, w17
    8708: 54000040     	b.eq	0x8710 <richtap_rtp_work+0x308>
    870c: d4304500     	brk	#0x8228
    8710: d63f0100     	blr	x8
    8714: f8580268     	ldur	x8, [x19, #-0x80]
    8718: aa1703e0     	mov	x0, x23
    871c: 52800021     	mov	w1, #0x1                // =1
    8720: f9408908     	ldr	x8, [x8, #0x110]
    8724: b85fc110     	ldur	w16, [x8, #-0x4]
    8728: 729bedd1     	movk	w17, #0xdf6e
    872c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    8730: 6b11021f     	cmp	w16, w17
    8734: 54000040     	b.eq	0x873c <richtap_rtp_work+0x334>
    8738: d4304500     	brk	#0x8228
    873c: d63f0100     	blr	x8
    8740: 17ffff91     	b	0x8584 <richtap_rtp_work+0x17c>
    8744: f8580268     	ldur	x8, [x19, #-0x80]
    8748: aa1703e0     	mov	x0, x23
    874c: 52800021     	mov	w1, #0x1                // =1
    8750: 52800034     	mov	w20, #0x1               // =1
    8754: f9408908     	ldr	x8, [x8, #0x110]
    8758: b85fc110     	ldur	w16, [x8, #-0x4]
    875c: 729bedd1     	movk	w17, #0xdf6e
    8760: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    8764: 6b11021f     	cmp	w16, w17
    8768: 54000040     	b.eq	0x8770 <richtap_rtp_work+0x368>
    876c: d4304500     	brk	#0x8228
    8770: d63f0100     	blr	x8
    8774: f8580268     	ldur	x8, [x19, #-0x80]
    8778: aa1703e0     	mov	x0, x23
    877c: f9407908     	ldr	x8, [x8, #0xf0]
    8780: b85fc110     	ldur	w16, [x8, #-0x4]
    8784: 72810611     	movk	w17, #0x830
    8788: 72b08f51     	movk	w17, #0x847a, lsl #16
    878c: 6b11021f     	cmp	w16, w17
    8790: 54000040     	b.eq	0x8798 <richtap_rtp_work+0x390>
    8794: d4304500     	brk	#0x8228
    8798: d63f0100     	blr	x8
    879c: b9007674     	str	w20, [x19, #0x74]
    87a0: 17ffff79     	b	0x8584 <richtap_rtp_work+0x17c>
    87a4: aa1703e0     	mov	x0, x23
    87a8: 94000000     	bl	0x87a8 <richtap_rtp_work+0x3a0>
		00000000000087a8:  R_AARCH64_CALL26	haptic_lifetime_richtap_fifo_reset
    87ac: f8580268     	ldur	x8, [x19, #-0x80]
    87b0: f9408908     	ldr	x8, [x8, #0x110]
    87b4: aa1703e0     	mov	x0, x23
    87b8: 2a1f03e1     	mov	w1, wzr
    87bc: b85fc110     	ldur	w16, [x8, #-0x4]
    87c0: 729bedd1     	movk	w17, #0xdf6e
    87c4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    87c8: 6b11021f     	cmp	w16, w17
    87cc: 54000040     	b.eq	0x87d4 <richtap_rtp_work+0x3cc>
    87d0: d4304500     	brk	#0x8228
    87d4: d63f0100     	blr	x8
    87d8: f8580268     	ldur	x8, [x19, #-0x80]
    87dc: aa1703e0     	mov	x0, x23
    87e0: f9407908     	ldr	x8, [x8, #0xf0]
    87e4: b85fc110     	ldur	w16, [x8, #-0x4]
    87e8: 72810611     	movk	w17, #0x830
    87ec: 72b08f51     	movk	w17, #0x847a, lsl #16
    87f0: 6b11021f     	cmp	w16, w17
    87f4: 54000040     	b.eq	0x87fc <richtap_rtp_work+0x3f4>
    87f8: d4304500     	brk	#0x8228
    87fc: d63f0100     	blr	x8
    8800: 17ffff61     	b	0x8584 <richtap_rtp_work+0x17c>
