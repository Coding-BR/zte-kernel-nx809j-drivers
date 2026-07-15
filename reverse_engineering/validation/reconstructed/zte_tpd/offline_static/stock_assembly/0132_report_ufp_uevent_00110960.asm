
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a0d8 <report_ufp_uevent>:
    a0d8: d503233f     	paciasp
    a0dc: d10103ff     	sub	sp, sp, #0x40
    a0e0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    a0e4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a0e8: 910083fd     	add	x29, sp, #0x20
    a0ec: d5384108     	mrs	x8, SP_EL0
    a0f0: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a0f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    a0f4: f9438908     	ldr	x8, [x8, #0x710]
    a0f8: f81f83a8     	stur	x8, [x29, #-0x8]
    a0fc: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a0fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6f8
    a100: f9400133     	ldr	x19, [x9]
		000000000000a100:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    a104: 39400109     	ldrb	w9, [x8]
		000000000000a104:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6f8
    a108: 34000040     	cbz	w0, 0xa110 <report_ufp_uevent+0x38>
    a10c: 360001e9     	tbz	w9, #0x0, 0xa148 <report_ufp_uevent+0x70>
    a110: 7100001f     	cmp	w0, #0x0
    a114: 1a8913e9     	csel	w9, wzr, w9, ne
    a118: 7100053f     	cmp	w9, #0x1
    a11c: 540002e0     	b.eq	0xa178 <report_ufp_uevent+0xa0>
    a120: d5384108     	mrs	x8, SP_EL0
    a124: f9438908     	ldr	x8, [x8, #0x710]
    a128: f85f83a9     	ldur	x9, [x29, #-0x8]
    a12c: eb09011f     	cmp	x8, x9
    a130: 54001121     	b.ne	0xa354 <report_ufp_uevent+0x27c>
    a134: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a138: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    a13c: 910103ff     	add	sp, sp, #0x40
    a140: d50323bf     	autiasp
    a144: d65f03c0     	ret
    a148: 52800029     	mov	w9, #0x1                // =1
    a14c: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a14c:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    a150: 39000109     	strb	w9, [x8]
		000000000000a150:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6f8
    a154: b9400268     	ldr	w8, [x19]
		000000000000a154:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    a158: 35000208     	cbnz	w8, 0xa198 <report_ufp_uevent+0xc0>
    a15c: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a15c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a160: f9400108     	ldr	x8, [x8]
		000000000000a160:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a164: b5000908     	cbnz	x8, 0xa284 <report_ufp_uevent+0x1ac>
    a168: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e3
    a16c: 91000000     	add	x0, x0, #0x0
		000000000000a16c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e3
    a170: 94000000     	bl	0xa170 <report_ufp_uevent+0x98>
		000000000000a170:  R_AARCH64_CALL26	_printk
    a174: 14000058     	b	0xa2d4 <report_ufp_uevent+0x1fc>
    a178: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a178:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a17c: 3900011f     	strb	wzr, [x8]
		000000000000a17c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6f8
    a180: f9400129     	ldr	x9, [x9]
		000000000000a180:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a184: b5000189     	cbnz	x9, 0xa1b4 <report_ufp_uevent+0xdc>
    a188: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e3
    a18c: 91000000     	add	x0, x0, #0x0
		000000000000a18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e3
    a190: 94000000     	bl	0xa190 <report_ufp_uevent+0xb8>
		000000000000a190:  R_AARCH64_CALL26	_printk
    a194: 1400001d     	b	0xa208 <report_ufp_uevent+0x130>
    a198: 90000014     	adrp	x20, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a198:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a19c: f9400288     	ldr	x8, [x20]
		000000000000a19c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a1a0: b5000a28     	cbnz	x8, 0xa2e4 <report_ufp_uevent+0x20c>
    a1a4: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e3
    a1a8: 91000000     	add	x0, x0, #0x0
		000000000000a1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e3
    a1ac: 94000000     	bl	0xa1ac <report_ufp_uevent+0xd4>
		000000000000a1ac:  R_AARCH64_CALL26	_printk
    a1b0: 14000065     	b	0xa344 <report_ufp_uevent+0x26c>
    a1b4: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a1b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac76
    a1b8: 91000108     	add	x8, x8, #0x0
		000000000000a1b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac76
    a1bc: f90003e8     	str	x8, [sp]
    a1c0: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a1c0:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    a1c4: b9400108     	ldr	w8, [x8]
		000000000000a1c4:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    a1c8: 71000d1f     	cmp	w8, #0x3
    a1cc: 54000c62     	b.hs	0xa358 <report_ufp_uevent+0x280>
    a1d0: 9000000a     	adrp	x10, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe98
    a1d4: 9100014a     	add	x10, x10, #0x0
		000000000000a1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe98
    a1d8: 91004120     	add	x0, x9, #0x10
    a1dc: f8687948     	ldr	x8, [x10, x8, lsl #3]
    a1e0: 910003e2     	mov	x2, sp
    a1e4: 52800041     	mov	w1, #0x2                // =2
    a1e8: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    a1ec: 94000000     	bl	0xa1ec <report_ufp_uevent+0x114>
		000000000000a1ec:  R_AARCH64_CALL26	kobject_uevent_env
    a1f0: f94007e2     	ldr	x2, [sp, #0x8]
    a1f4: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x691b
    a1f8: 91000000     	add	x0, x0, #0x0
		000000000000a1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x691b
    a1fc: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a1fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac76
    a200: 91000021     	add	x1, x1, #0x0
		000000000000a200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac76
    a204: 94000000     	bl	0xa204 <report_ufp_uevent+0x12c>
		000000000000a204:  R_AARCH64_CALL26	_printk
    a208: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a208:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    a20c: b9445a69     	ldr	w9, [x19, #0x458]
    a210: 39400108     	ldrb	w8, [x8]
		000000000000a210:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    a214: 340002a9     	cbz	w9, 0xa268 <report_ufp_uevent+0x190>
    a218: 90000014     	adrp	x20, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a218:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
    a21c: 34000108     	cbz	w8, 0xa23c <report_ufp_uevent+0x164>
    a220: 39400288     	ldrb	w8, [x20]
		000000000000a220:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    a224: 370000c8     	tbnz	w8, #0x0, 0xa23c <report_ufp_uevent+0x164>
    a228: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a228:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    a22c: 91000273     	add	x19, x19, #0x0
		000000000000a22c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    a230: aa1303e0     	mov	x0, x19
    a234: 94000000     	bl	0xa234 <report_ufp_uevent+0x15c>
		000000000000a234:  R_AARCH64_CALL26	complete
    a238: 3900827f     	strb	wzr, [x19, #0x20]
    a23c: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a23c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
    a240: 39400109     	ldrb	w9, [x8]
		000000000000a240:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    a244: 7100053f     	cmp	w9, #0x1
    a248: 54fff6c1     	b.ne	0xa120 <report_ufp_uevent+0x48>
    a24c: 39400289     	ldrb	w9, [x20]
		000000000000a24c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    a250: 3707f689     	tbnz	w9, #0x0, 0xa120 <report_ufp_uevent+0x48>
    a254: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x617f
    a258: 91000000     	add	x0, x0, #0x0
		000000000000a258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x617f
    a25c: 3900011f     	strb	wzr, [x8]
		000000000000a25c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    a260: 94000000     	bl	0xa260 <report_ufp_uevent+0x188>
		000000000000a260:  R_AARCH64_CALL26	_printk
    a264: 17ffffaf     	b	0xa120 <report_ufp_uevent+0x48>
    a268: 34fff5c8     	cbz	w8, 0xa120 <report_ufp_uevent+0x48>
    a26c: 90000013     	adrp	x19, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a26c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    a270: 91000273     	add	x19, x19, #0x0
		000000000000a270:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    a274: aa1303e0     	mov	x0, x19
    a278: 94000000     	bl	0xa278 <report_ufp_uevent+0x1a0>
		000000000000a278:  R_AARCH64_CALL26	complete
    a27c: 3900827f     	strb	wzr, [x19, #0x20]
    a280: 17ffffa8     	b	0xa120 <report_ufp_uevent+0x48>
    a284: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc031
    a288: 91000129     	add	x9, x9, #0x0
		000000000000a288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc031
    a28c: f90003e9     	str	x9, [sp]
    a290: b9400269     	ldr	w9, [x19]
		000000000000a290:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    a294: 71000d3f     	cmp	w9, #0x3
    a298: 54000602     	b.hs	0xa358 <report_ufp_uevent+0x280>
    a29c: 9000000a     	adrp	x10, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a29c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe98
    a2a0: 9100014a     	add	x10, x10, #0x0
		000000000000a2a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe98
    a2a4: 91004100     	add	x0, x8, #0x10
    a2a8: f8697949     	ldr	x9, [x10, x9, lsl #3]
    a2ac: 910003e2     	mov	x2, sp
    a2b0: 52800041     	mov	w1, #0x2                // =2
    a2b4: a900ffe9     	stp	x9, xzr, [sp, #0x8]
    a2b8: 94000000     	bl	0xa2b8 <report_ufp_uevent+0x1e0>
		000000000000a2b8:  R_AARCH64_CALL26	kobject_uevent_env
    a2bc: f94007e2     	ldr	x2, [sp, #0x8]
    a2c0: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x691b
    a2c4: 91000000     	add	x0, x0, #0x0
		000000000000a2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x691b
    a2c8: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a2c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc031
    a2cc: 91000021     	add	x1, x1, #0x0
		000000000000a2cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc031
    a2d0: 94000000     	bl	0xa2d0 <report_ufp_uevent+0x1f8>
		000000000000a2d0:  R_AARCH64_CALL26	_printk
    a2d4: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a2d4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
    a2d8: 52800029     	mov	w9, #0x1                // =1
    a2dc: 39000109     	strb	w9, [x8]
		000000000000a2dc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    a2e0: 17ffff90     	b	0xa120 <report_ufp_uevent+0x48>
    a2e4: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a2e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dec
    a2e8: 91000000     	add	x0, x0, #0x0
		000000000000a2e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dec
    a2ec: 94000000     	bl	0xa2ec <report_ufp_uevent+0x214>
		000000000000a2ec:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    a2f0: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a2f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f6a
    a2f4: 91000108     	add	x8, x8, #0x0
		000000000000a2f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f6a
    a2f8: f90003e8     	str	x8, [sp]
    a2fc: b9400268     	ldr	w8, [x19]
		000000000000a2fc:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    a300: 71000d1f     	cmp	w8, #0x3
    a304: 540002a2     	b.hs	0xa358 <report_ufp_uevent+0x280>
    a308: 90000009     	adrp	x9, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe98
    a30c: 91000129     	add	x9, x9, #0x0
		000000000000a30c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe98
    a310: 910003e2     	mov	x2, sp
    a314: f8687928     	ldr	x8, [x9, x8, lsl #3]
    a318: f9400289     	ldr	x9, [x20]
		000000000000a318:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a31c: 52800041     	mov	w1, #0x2                // =2
    a320: 91004120     	add	x0, x9, #0x10
    a324: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    a328: 94000000     	bl	0xa328 <report_ufp_uevent+0x250>
		000000000000a328:  R_AARCH64_CALL26	kobject_uevent_env
    a32c: f94007e2     	ldr	x2, [sp, #0x8]
    a330: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x691b
    a334: 91000000     	add	x0, x0, #0x0
		000000000000a334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x691b
    a338: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f6a
    a33c: 91000021     	add	x1, x1, #0x0
		000000000000a33c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f6a
    a340: 94000000     	bl	0xa340 <report_ufp_uevent+0x268>
		000000000000a340:  R_AARCH64_CALL26	_printk
    a344: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a344:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    a348: 52800029     	mov	w9, #0x1                // =1
    a34c: 39000109     	strb	w9, [x8]
		000000000000a34c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    a350: 17ffff74     	b	0xa120 <report_ufp_uevent+0x48>
    a354: 94000000     	bl	0xa354 <report_ufp_uevent+0x27c>
		000000000000a354:  R_AARCH64_CALL26	__stack_chk_fail
    a358: d42aa240     	brk	#0x5512
