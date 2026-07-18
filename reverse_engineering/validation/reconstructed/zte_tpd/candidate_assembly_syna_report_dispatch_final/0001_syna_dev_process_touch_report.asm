
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000090a8 <syna_dev_process_touch_report>:
    90a8: d503233f     	paciasp
    90ac: d10243ff     	sub	sp, sp, #0x90
    90b0: a9037bfd     	stp	x29, x30, [sp, #0x30]
    90b4: a9046ffc     	stp	x28, x27, [sp, #0x40]
    90b8: a90567fa     	stp	x26, x25, [sp, #0x50]
    90bc: a9065ff8     	stp	x24, x23, [sp, #0x60]
    90c0: a90757f6     	stp	x22, x21, [sp, #0x70]
    90c4: a9084ff4     	stp	x20, x19, [sp, #0x80]
    90c8: 9100c3fd     	add	x29, sp, #0x30
    90cc: d5384108     	mrs	x8, SP_EL0
    90d0: f9438908     	ldr	x8, [x8, #0x710]
    90d4: f81f83a8     	stur	x8, [x29, #-0x8]
    90d8: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    90dc: d5384108     	mrs	x8, SP_EL0
    90e0: f9438908     	ldr	x8, [x8, #0x710]
    90e4: f90013e8     	str	x8, [sp, #0x20]
    90e8: b4002203     	cbz	x3, 0x9528 <syna_dev_process_touch_report+0x480>
    90ec: 12001c08     	and	w8, w0, #0xff
    90f0: 7100451f     	cmp	w8, #0x11
    90f4: 54002281     	b.ne	0x9544 <syna_dev_process_touch_report+0x49c>
    90f8: b9438468     	ldr	w8, [x3, #0x384]
    90fc: aa0303f3     	mov	x19, x3
    9100: 7100051f     	cmp	w8, #0x1
    9104: 5400008b     	b.lt	0x9114 <syna_dev_process_touch_report+0x6c>
    9108: 39561268     	ldrb	w8, [x19, #0x584]
    910c: 7100051f     	cmp	w8, #0x1
    9110: 54001ec1     	b.ne	0x94e8 <syna_dev_process_touch_report+0x440>
    9114: b945e268     	ldr	w8, [x19, #0x5e0]
    9118: 34000288     	cbz	w8, 0x9168 <syna_dev_process_touch_report+0xc0>
    911c: 52840008     	mov	w8, #0x2000             // =8192
    9120: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
    9124: f9423260     	ldr	x0, [x19, #0x460]
    9128: 72a00068     	movk	w8, #0x3, lsl #16
    912c: 2a0203f6     	mov	w22, w2
    9130: aa0103f4     	mov	x20, x1
    9134: 1a883055     	csel	w21, w2, w8, lo
    9138: aa1503e2     	mov	x2, x21
    913c: 94000000     	bl	0x913c <syna_dev_process_touch_report+0x94>
		000000000000913c:  R_AARCH64_CALL26	memcpy
    9140: 52800028     	mov	w8, #0x1                // =1
    9144: 91112260     	add	x0, x19, #0x448
    9148: 52800061     	mov	w1, #0x3                // =3
    914c: 52800022     	mov	w2, #0x1                // =1
    9150: aa1f03e3     	mov	x3, xzr
    9154: b9043a75     	str	w21, [x19, #0x438]
    9158: b9046a68     	str	w8, [x19, #0x468]
    915c: 94000000     	bl	0x915c <syna_dev_process_touch_report+0xb4>
		000000000000915c:  R_AARCH64_CALL26	__wake_up
    9160: aa1403e1     	mov	x1, x20
    9164: 2a1603e2     	mov	w2, w22
    9168: aa1303e3     	mov	x3, x19
    916c: f8410460     	ldr	x0, [x3], #0x10
    9170: 94000000     	bl	0x9170 <syna_dev_process_touch_report+0xc8>
		0000000000009170:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
    9174: 37f81f80     	tbnz	w0, #0x1f, 0x9564 <syna_dev_process_touch_report+0x4bc>
    9178: f941da74     	ldr	x20, [x19, #0x3b0]
    917c: b4001b74     	cbz	x20, 0x94e8 <syna_dev_process_touch_report+0x440>
    9180: f9400268     	ldr	x8, [x19]
    9184: 90000009     	adrp	x9, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009184:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9188: 9109e260     	add	x0, x19, #0x278
    918c: b9401917     	ldr	w23, [x8, #0x18]
    9190: f9400128     	ldr	x8, [x9]
		0000000000009190:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9194: f90007e8     	str	x8, [sp, #0x8]
    9198: 94000000     	bl	0x9198 <syna_dev_process_touch_report+0xf0>
		0000000000009198:  R_AARCH64_CALL26	mutex_lock
    919c: b9457e68     	ldr	w8, [x19, #0x57c]
    91a0: 7100091f     	cmp	w8, #0x2
    91a4: 54000081     	b.ne	0x91b4 <syna_dev_process_touch_report+0x10c>
    91a8: 394bd268     	ldrb	w8, [x19, #0x2f4]
    91ac: 7100051f     	cmp	w8, #0x1
    91b0: 54001ec0     	b.eq	0x9588 <syna_dev_process_touch_report+0x4e0>
    91b4: b9422268     	ldr	w8, [x19, #0x220]
    91b8: 7102011f     	cmp	w8, #0x80
    91bc: 540000a0     	b.eq	0x91d0 <syna_dev_process_touch_report+0x128>
    91c0: 7102051f     	cmp	w8, #0x81
    91c4: 540000a1     	b.ne	0x91d8 <syna_dev_process_touch_report+0x130>
    91c8: 2a1f03e0     	mov	w0, wzr
    91cc: 14000002     	b	0x91d4 <syna_dev_process_touch_report+0x12c>
    91d0: 52800020     	mov	w0, #0x1                // =1
    91d4: 94000000     	bl	0x91d4 <syna_dev_process_touch_report+0x12c>
		00000000000091d4:  R_AARCH64_CALL26	report_ufp_uevent
    91d8: b9457e68     	ldr	w8, [x19, #0x57c]
    91dc: 7100091f     	cmp	w8, #0x2
    91e0: 54001800     	b.eq	0x94e0 <syna_dev_process_touch_report+0x438>
    91e4: 34001617     	cbz	w23, 0x94a4 <syna_dev_process_touch_report+0x3fc>
    91e8: 2a1f03f6     	mov	w22, wzr
    91ec: aa1f03f5     	mov	x21, xzr
    91f0: 91099279     	add	x25, x19, #0x264
    91f4: 9100827a     	add	x26, x19, #0x20
    91f8: f90003f7     	str	x23, [sp]
    91fc: 14000011     	b	0x9240 <syna_dev_process_touch_report+0x198>
    9200: aa1403e0     	mov	x0, x20
    9204: 52800061     	mov	w1, #0x3                // =3
    9208: 528005e2     	mov	w2, #0x2f               // =47
    920c: 2a1503e3     	mov	w3, w21
    9210: 94000000     	bl	0x9210 <syna_dev_process_touch_report+0x168>
		0000000000009210:  R_AARCH64_CALL26	input_event
    9214: aa1403e0     	mov	x0, x20
    9218: 2a1f03e1     	mov	w1, wzr
    921c: 2a1f03e2     	mov	w2, wzr
    9220: 94000000     	bl	0x9220 <syna_dev_process_touch_report+0x178>
		0000000000009220:  R_AARCH64_CALL26	input_mt_report_slot_state
    9224: 910006a8     	add	x8, x21, #0x1
    9228: 385f8349     	ldurb	w9, [x26, #-0x8]
    922c: 9100d35a     	add	x26, x26, #0x34
    9230: eb0802ff     	cmp	x23, x8
    9234: 38396aa9     	strb	w9, [x21, x25]
    9238: aa0803f5     	mov	x21, x8
    923c: 54001320     	b.eq	0x94a0 <syna_dev_process_touch_report+0x3f8>
    9240: 385f8348     	ldurb	w8, [x26, #-0x8]
    9244: 7100191f     	cmp	w8, #0x6
    9248: 540001a1     	b.ne	0x927c <syna_dev_process_touch_report+0x1d4>
    924c: b945e668     	ldr	w8, [x19, #0x5e4]
    9250: 34000168     	cbz	w8, 0x927c <syna_dev_process_touch_report+0x1d4>
    9254: 90000008     	adrp	x8, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009254:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    9258: f9400108     	ldr	x8, [x8]
		0000000000009258:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    925c: b4000f08     	cbz	x8, 0x943c <syna_dev_process_touch_report+0x394>
    9260: 90000009     	adrp	x9, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009260:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
    9264: b9400129     	ldr	w9, [x9]
		0000000000009264:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
    9268: 36f80f09     	tbz	w9, #0x1f, 0x9448 <syna_dev_process_touch_report+0x3a0>
    926c: 90000009     	adrp	x9, 0x9000 <syna_dev_probe+0x4c0>
		000000000000926c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    9270: b9400129     	ldr	w9, [x9]
		0000000000009270:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    9274: 7100093f     	cmp	w9, #0x2
    9278: 54000f6d     	b.le	0x9464 <syna_dev_process_touch_report+0x3bc>
    927c: f1002abf     	cmp	x21, #0xa
    9280: 54000ce0     	b.eq	0x941c <syna_dev_process_touch_report+0x374>
    9284: 38756b29     	ldrb	w9, [x25, x21]
    9288: 385f8348     	ldurb	w8, [x26, #-0x8]
    928c: 35000049     	cbnz	w9, 0x9294 <syna_dev_process_touch_report+0x1ec>
    9290: 34fffca8     	cbz	w8, 0x9224 <syna_dev_process_touch_report+0x17c>
    9294: 51000509     	sub	w9, w8, #0x1
    9298: 7100053f     	cmp	w9, #0x1
    929c: 540001e8     	b.hi	0x92d8 <syna_dev_process_touch_report+0x230>
    92a0: b9461a68     	ldr	w8, [x19, #0x618]
    92a4: b85fc35b     	ldur	w27, [x26, #-0x4]
    92a8: 2a1603f7     	mov	w23, w22
    92ac: 7100111f     	cmp	w8, #0x4
    92b0: 54000361     	b.ne	0x931c <syna_dev_process_touch_report+0x274>
    92b4: 29406348     	ldp	w8, w24, [x26]
    92b8: 529999aa     	mov	w10, #0xcccd            // =52429
    92bc: b9400b56     	ldr	w22, [x26, #0x8]
    92c0: 72b9998a     	movk	w10, #0xcccc, lsl #16
    92c4: 9baa7f69     	umull	x9, w27, w10
    92c8: 9baa7d08     	umull	x8, w8, w10
    92cc: d363fd3b     	lsr	x27, x9, #35
    92d0: d363fd1c     	lsr	x28, x8, #35
    92d4: 14000026     	b	0x936c <syna_dev_process_touch_report+0x2c4>
    92d8: 35fffa68     	cbnz	w8, 0x9224 <syna_dev_process_touch_report+0x17c>
    92dc: f94007e8     	ldr	x8, [sp, #0x8]
    92e0: 39406d08     	ldrb	w8, [x8, #0x1b]
    92e4: 7100051f     	cmp	w8, #0x1
    92e8: 54fff8c1     	b.ne	0x9200 <syna_dev_process_touch_report+0x158>
    92ec: b9461a62     	ldr	w2, [x19, #0x618]
    92f0: 7100105f     	cmp	w2, #0x4
    92f4: 54fff860     	b.eq	0x9200 <syna_dev_process_touch_report+0x158>
    92f8: aa1403e0     	mov	x0, x20
    92fc: 2a1503e1     	mov	w1, w21
    9300: 94000000     	bl	0x9300 <syna_dev_process_touch_report+0x258>
		0000000000009300:  R_AARCH64_CALL26	tpd_touch_release
    9304: 2a1f03e0     	mov	w0, wzr
    9308: 12800001     	mov	w1, #-0x1               // =-1
    930c: 12800002     	mov	w2, #-0x1               // =-1
    9310: 2a1503e3     	mov	w3, w21
    9314: 94000000     	bl	0x9314 <syna_dev_process_touch_report+0x26c>
		0000000000009314:  R_AARCH64_CALL26	one_key_report
    9318: 17ffffc3     	b	0x9224 <syna_dev_process_touch_report+0x17c>
    931c: f94007e8     	ldr	x8, [sp, #0x8]
    9320: b940035c     	ldr	w28, [x26]
    9324: 2940db58     	ldp	w24, w22, [x26, #0x4]
    9328: 39406d08     	ldrb	w8, [x8, #0x1b]
    932c: 7100051f     	cmp	w8, #0x1
    9330: 540001e1     	b.ne	0x936c <syna_dev_process_touch_report+0x2c4>
    9334: 6b16031f     	cmp	w24, w22
    9338: aa1403e0     	mov	x0, x20
    933c: 2a1b03e1     	mov	w1, w27
    9340: 1a96c304     	csel	w4, w24, w22, gt
    9344: 2a1c03e2     	mov	w2, w28
    9348: aa1503e3     	mov	x3, x21
    934c: 2a1f03e5     	mov	w5, wzr
    9350: 94000000     	bl	0x9350 <syna_dev_process_touch_report+0x2a8>
		0000000000009350:  R_AARCH64_CALL26	tpd_touch_press
    9354: 52800020     	mov	w0, #0x1                // =1
    9358: 2a1b03e1     	mov	w1, w27
    935c: 2a1c03e2     	mov	w2, w28
    9360: 2a1503e3     	mov	w3, w21
    9364: 94000000     	bl	0x9364 <syna_dev_process_touch_report+0x2bc>
		0000000000009364:  R_AARCH64_CALL26	one_key_report
    9368: 1400002a     	b	0x9410 <syna_dev_process_touch_report+0x368>
    936c: aa1403e0     	mov	x0, x20
    9370: 52800061     	mov	w1, #0x3                // =3
    9374: 528005e2     	mov	w2, #0x2f               // =47
    9378: 2a1503e3     	mov	w3, w21
    937c: 94000000     	bl	0x937c <syna_dev_process_touch_report+0x2d4>
		000000000000937c:  R_AARCH64_CALL26	input_event
    9380: aa1403e0     	mov	x0, x20
    9384: 2a1f03e1     	mov	w1, wzr
    9388: 52800022     	mov	w2, #0x1                // =1
    938c: 94000000     	bl	0x938c <syna_dev_process_touch_report+0x2e4>
		000000000000938c:  R_AARCH64_CALL26	input_mt_report_slot_state
    9390: aa1403e0     	mov	x0, x20
    9394: 52800021     	mov	w1, #0x1                // =1
    9398: 52802942     	mov	w2, #0x14a              // =330
    939c: 52800023     	mov	w3, #0x1                // =1
    93a0: 94000000     	bl	0x93a0 <syna_dev_process_touch_report+0x2f8>
		00000000000093a0:  R_AARCH64_CALL26	input_event
    93a4: aa1403e0     	mov	x0, x20
    93a8: 52800021     	mov	w1, #0x1                // =1
    93ac: 528028a2     	mov	w2, #0x145              // =325
    93b0: 52800023     	mov	w3, #0x1                // =1
    93b4: 94000000     	bl	0x93b4 <syna_dev_process_touch_report+0x30c>
		00000000000093b4:  R_AARCH64_CALL26	input_event
    93b8: aa1403e0     	mov	x0, x20
    93bc: 52800061     	mov	w1, #0x3                // =3
    93c0: 528006a2     	mov	w2, #0x35               // =53
    93c4: 2a1b03e3     	mov	w3, w27
    93c8: 94000000     	bl	0x93c8 <syna_dev_process_touch_report+0x320>
		00000000000093c8:  R_AARCH64_CALL26	input_event
    93cc: aa1403e0     	mov	x0, x20
    93d0: 52800061     	mov	w1, #0x3                // =3
    93d4: 528006c2     	mov	w2, #0x36               // =54
    93d8: 2a1c03e3     	mov	w3, w28
    93dc: 94000000     	bl	0x93dc <syna_dev_process_touch_report+0x334>
		00000000000093dc:  R_AARCH64_CALL26	input_event
    93e0: 6b16031f     	cmp	w24, w22
    93e4: aa1403e0     	mov	x0, x20
    93e8: 52800061     	mov	w1, #0x3                // =3
    93ec: 1a96c303     	csel	w3, w24, w22, gt
    93f0: 52800602     	mov	w2, #0x30               // =48
    93f4: 1a96b31b     	csel	w27, w24, w22, lt
    93f8: 94000000     	bl	0x93f8 <syna_dev_process_touch_report+0x350>
		00000000000093f8:  R_AARCH64_CALL26	input_event
    93fc: aa1403e0     	mov	x0, x20
    9400: 52800061     	mov	w1, #0x3                // =3
    9404: 52800622     	mov	w2, #0x31               // =49
    9408: 2a1b03e3     	mov	w3, w27
    940c: 94000000     	bl	0x940c <syna_dev_process_touch_report+0x364>
		000000000000940c:  R_AARCH64_CALL26	input_event
    9410: 110006f6     	add	w22, w23, #0x1
    9414: f94003f7     	ldr	x23, [sp]
    9418: 17ffff83     	b	0x9224 <syna_dev_process_touch_report+0x17c>
    941c: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		000000000000941c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
    9420: 91000000     	add	x0, x0, #0x0
		0000000000009420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
    9424: 528aa241     	mov	w1, #0x5512             // =21778
    9428: 90000002     	adrp	x2, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1785
    942c: 91000042     	add	x2, x2, #0x0
		000000000000942c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1785
    9430: 52801283     	mov	w3, #0x94               // =148
    9434: 94000000     	bl	0x9434 <syna_dev_process_touch_report+0x38c>
		0000000000009434:  R_AARCH64_CALL26	_printk
    9438: 17ffff93     	b	0x9284 <syna_dev_process_touch_report+0x1dc>
    943c: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		000000000000943c:  R_AARCH64_ADR_PREL_PG_HI21	unk_33C0B
    9440: 91000000     	add	x0, x0, #0x0
		0000000000009440:  R_AARCH64_ADD_ABS_LO12_NC	unk_33C0B
    9444: 14000006     	b	0x945c <syna_dev_process_touch_report+0x3b4>
    9448: 51000528     	sub	w8, w9, #0x1
    944c: 90000009     	adrp	x9, 0x9000 <syna_dev_probe+0x4c0>
		000000000000944c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
    9450: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009450:  R_AARCH64_ADR_PREL_PG_HI21	unk_3475B
    9454: 91000000     	add	x0, x0, #0x0
		0000000000009454:  R_AARCH64_ADD_ABS_LO12_NC	unk_3475B
    9458: b9000128     	str	w8, [x9]
		0000000000009458:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
    945c: 94000000     	bl	0x945c <syna_dev_process_touch_report+0x3b4>
		000000000000945c:  R_AARCH64_CALL26	_printk
    9460: 17ffff87     	b	0x927c <syna_dev_process_touch_report+0x1d4>
    9464: 90000009     	adrp	x9, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46ca
    9468: 91000129     	add	x9, x9, #0x0
		0000000000009468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46ca
    946c: 91004100     	add	x0, x8, #0x10
    9470: 910043e2     	add	x2, sp, #0x10
    9474: 52800041     	mov	w1, #0x2                // =2
    9478: a9017fe9     	stp	x9, xzr, [sp, #0x10]
    947c: 94000000     	bl	0x947c <syna_dev_process_touch_report+0x3d4>
		000000000000947c:  R_AARCH64_CALL26	kobject_uevent_env
    9480: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009480:  R_AARCH64_ADR_PREL_PG_HI21	unk_32F20
    9484: 91000000     	add	x0, x0, #0x0
		0000000000009484:  R_AARCH64_ADD_ABS_LO12_NC	unk_32F20
    9488: 94000000     	bl	0x9488 <syna_dev_process_touch_report+0x3e0>
		0000000000009488:  R_AARCH64_CALL26	_printk
    948c: 90000009     	adrp	x9, 0x9000 <syna_dev_probe+0x4c0>
		000000000000948c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    9490: b9400128     	ldr	w8, [x9]
		0000000000009490:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    9494: 11000508     	add	w8, w8, #0x1
    9498: b9000128     	str	w8, [x9]
		0000000000009498:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    949c: 17ffff78     	b	0x927c <syna_dev_process_touch_report+0x1d4>
    94a0: 35000176     	cbnz	w22, 0x94cc <syna_dev_process_touch_report+0x424>
    94a4: aa1403e0     	mov	x0, x20
    94a8: 52800021     	mov	w1, #0x1                // =1
    94ac: 52802942     	mov	w2, #0x14a              // =330
    94b0: 2a1f03e3     	mov	w3, wzr
    94b4: 94000000     	bl	0x94b4 <syna_dev_process_touch_report+0x40c>
		00000000000094b4:  R_AARCH64_CALL26	input_event
    94b8: aa1403e0     	mov	x0, x20
    94bc: 52800021     	mov	w1, #0x1                // =1
    94c0: 528028a2     	mov	w2, #0x145              // =325
    94c4: 2a1f03e3     	mov	w3, wzr
    94c8: 94000000     	bl	0x94c8 <syna_dev_process_touch_report+0x420>
		00000000000094c8:  R_AARCH64_CALL26	input_event
    94cc: aa1403e0     	mov	x0, x20
    94d0: 2a1f03e1     	mov	w1, wzr
    94d4: 2a1f03e2     	mov	w2, wzr
    94d8: 2a1f03e3     	mov	w3, wzr
    94dc: 94000000     	bl	0x94dc <syna_dev_process_touch_report+0x434>
		00000000000094dc:  R_AARCH64_CALL26	input_event
    94e0: 9109e260     	add	x0, x19, #0x278
    94e4: 94000000     	bl	0x94e4 <syna_dev_process_touch_report+0x43c>
		00000000000094e4:  R_AARCH64_CALL26	mutex_unlock
    94e8: 2a1f03e0     	mov	w0, wzr
    94ec: d5384108     	mrs	x8, SP_EL0
    94f0: f9438908     	ldr	x8, [x8, #0x710]
    94f4: d5384109     	mrs	x9, SP_EL0
    94f8: f85f83a9     	ldur	x9, [x29, #-0x8]
    94fc: eb09011f     	cmp	x8, x9
    9500: 540008a1     	b.ne	0x9614 <syna_dev_process_touch_report+0x56c>
    9504: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    9508: a94757f6     	ldp	x22, x21, [sp, #0x70]
    950c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    9510: a94567fa     	ldp	x26, x25, [sp, #0x50]
    9514: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    9518: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    951c: 910243ff     	add	sp, sp, #0x90
    9520: d50323bf     	autiasp
    9524: d65f03c0     	ret
    9528: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009528:  R_AARCH64_ADR_PREL_PG_HI21	unk_3411A
    952c: 91000000     	add	x0, x0, #0x0
		000000000000952c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3411A
    9530: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
    9534: 91000021     	add	x1, x1, #0x0
		0000000000009534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
    9538: 94000000     	bl	0x9538 <syna_dev_process_touch_report+0x490>
		0000000000009538:  R_AARCH64_CALL26	_printk
    953c: 128002a0     	mov	w0, #-0x16              // =-22
    9540: 17ffffeb     	b	0x94ec <syna_dev_process_touch_report+0x444>
    9544: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009544:  R_AARCH64_ADR_PREL_PG_HI21	unk_3660C
    9548: 91000000     	add	x0, x0, #0x0
		0000000000009548:  R_AARCH64_ADD_ABS_LO12_NC	unk_3660C
    954c: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		000000000000954c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
    9550: 91000021     	add	x1, x1, #0x0
		0000000000009550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
    9554: 2a0803e2     	mov	w2, w8
    9558: 94000000     	bl	0x9558 <syna_dev_process_touch_report+0x4b0>
		0000000000009558:  R_AARCH64_CALL26	_printk
    955c: 128002a0     	mov	w0, #-0x16              // =-22
    9560: 17ffffe3     	b	0x94ec <syna_dev_process_touch_report+0x444>
    9564: 90000008     	adrp	x8, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009564:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A914
    9568: 91000108     	add	x8, x8, #0x0
		0000000000009568:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A914
    956c: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		000000000000956c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
    9570: 91000021     	add	x1, x1, #0x0
		0000000000009570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
    9574: 2a0003f3     	mov	w19, w0
    9578: aa0803e0     	mov	x0, x8
    957c: 94000000     	bl	0x957c <syna_dev_process_touch_report+0x4d4>
		000000000000957c:  R_AARCH64_CALL26	_printk
    9580: 2a1303e0     	mov	w0, w19
    9584: 17ffffda     	b	0x94ec <syna_dev_process_touch_report+0x444>
    9588: b9422262     	ldr	w2, [x19, #0x220]
    958c: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		000000000000958c:  R_AARCH64_ADR_PREL_PG_HI21	unk_35FD5
    9590: 91000000     	add	x0, x0, #0x0
		0000000000009590:  R_AARCH64_ADD_ABS_LO12_NC	unk_35FD5
    9594: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ace
    9598: 91000021     	add	x1, x1, #0x0
		0000000000009598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ace
    959c: 94000000     	bl	0x959c <syna_dev_process_touch_report+0x4f4>
		000000000000959c:  R_AARCH64_CALL26	_printk
    95a0: b9422268     	ldr	w8, [x19, #0x220]
    95a4: 7100411f     	cmp	w8, #0x10
    95a8: 54000180     	b.eq	0x95d8 <syna_dev_process_touch_report+0x530>
    95ac: 7100051f     	cmp	w8, #0x1
    95b0: 54000261     	b.ne	0x95fc <syna_dev_process_touch_report+0x554>
    95b4: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_35FFC
    95b8: 91000000     	add	x0, x0, #0x0
		00000000000095b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_35FFC
    95bc: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ace
    95c0: 91000021     	add	x1, x1, #0x0
		00000000000095c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ace
    95c4: 94000000     	bl	0x95c4 <syna_dev_process_touch_report+0x51c>
		00000000000095c4:  R_AARCH64_CALL26	_printk
    95c8: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cbe
    95cc: 91000000     	add	x0, x0, #0x0
		00000000000095cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cbe
    95d0: 94000000     	bl	0x95d0 <syna_dev_process_touch_report+0x528>
		00000000000095d0:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    95d4: 17fffef8     	b	0x91b4 <syna_dev_process_touch_report+0x10c>
    95d8: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3354D
    95dc: 91000000     	add	x0, x0, #0x0
		00000000000095dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3354D
    95e0: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ace
    95e4: 91000021     	add	x1, x1, #0x0
		00000000000095e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ace
    95e8: 94000000     	bl	0x95e8 <syna_dev_process_touch_report+0x540>
		00000000000095e8:  R_AARCH64_CALL26	_printk
    95ec: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a83
    95f0: 91000000     	add	x0, x0, #0x0
		00000000000095f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a83
    95f4: 94000000     	bl	0x95f4 <syna_dev_process_touch_report+0x54c>
		00000000000095f4:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    95f8: 17fffeef     	b	0x91b4 <syna_dev_process_touch_report+0x10c>
    95fc: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		00000000000095fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_37625
    9600: 91000000     	add	x0, x0, #0x0
		0000000000009600:  R_AARCH64_ADD_ABS_LO12_NC	unk_37625
    9604: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ace
    9608: 91000021     	add	x1, x1, #0x0
		0000000000009608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ace
    960c: 94000000     	bl	0x960c <syna_dev_process_touch_report+0x564>
		000000000000960c:  R_AARCH64_CALL26	_printk
    9610: 17fffee9     	b	0x91b4 <syna_dev_process_touch_report+0x10c>
    9614: 94000000     	bl	0x9614 <syna_dev_process_touch_report+0x56c>
		0000000000009614:  R_AARCH64_CALL26	__stack_chk_fail
