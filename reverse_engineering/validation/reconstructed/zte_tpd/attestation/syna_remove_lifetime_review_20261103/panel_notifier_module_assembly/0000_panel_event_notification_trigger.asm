
/input/panel_event_notifier.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000158 <panel_event_notification_trigger>:
     158: d503233f     	paciasp
     15c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     160: a90157f6     	stp	x22, x21, [sp, #0x10]
     164: a9024ff4     	stp	x20, x19, [sp, #0x20]
     168: 910003fd     	mov	x29, sp
     16c: 51000408     	sub	w8, w0, #0x1
     170: 7100051f     	cmp	w8, #0x1
     174: 54001108     	b.hi	0x394 <panel_event_notification_trigger+0x23c>
     178: 2a0003f3     	mov	w19, w0
     17c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     180: 91000000     	add	x0, x0, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	.data
     184: aa0103f4     	mov	x20, x1
     188: 94000000     	bl	0x188 <panel_event_notification_trigger+0x30>
		0000000000000188:  R_AARCH64_CALL26	mutex_lock
     18c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     190: f9400a89     	ldr	x9, [x20, #0x10]
     194: f9400108     	ldr	x8, [x8]
		0000000000000194:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     198: eb08013f     	cmp	x9, x8
     19c: 540000a0     	b.eq	0x1b0 <panel_event_notification_trigger+0x58>
     1a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.data
     1a4: 91000000     	add	x0, x0, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.data
     1a8: 94000000     	bl	0x1a8 <panel_event_notification_trigger+0x50>
		00000000000001a8:  R_AARCH64_CALL26	mutex_unlock
     1ac: 14000016     	b	0x204 <panel_event_notification_trigger+0xac>
     1b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     1b4: b9400101     	ldr	w1, [x8]
		00000000000001b4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     1b8: 6b13003f     	cmp	w1, w19
     1bc: 54000fc1     	b.ne	0x3b4 <panel_event_notification_trigger+0x25c>
     1c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     1c4: 91000108     	add	x8, x8, #0x0
		00000000000001c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     1c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	.data
     1cc: 91000000     	add	x0, x0, #0x0
		00000000000001cc:  R_AARCH64_ADD_ABS_LO12_NC	.data
     1d0: a9405516     	ldp	x22, x21, [x8]
     1d4: 94000000     	bl	0x1d4 <panel_event_notification_trigger+0x7c>
		00000000000001d4:  R_AARCH64_CALL26	mutex_unlock
     1d8: b4000176     	cbz	x22, 0x204 <panel_event_notification_trigger+0xac>
     1dc: 2a1303e0     	mov	w0, w19
     1e0: aa1403e1     	mov	x1, x20
     1e4: aa1503e2     	mov	x2, x21
     1e8: b85fc2d0     	ldur	w16, [x22, #-0x4]
     1ec: 728df2f1     	movk	w17, #0x6f97
     1f0: 72a80231     	movk	w17, #0x4011, lsl #16
     1f4: 6b11021f     	cmp	w16, w17
     1f8: 54000040     	b.eq	0x200 <panel_event_notification_trigger+0xa8>
     1fc: d43046c0     	brk	#0x8236
     200: d63f02c0     	blr	x22
     204: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000204:  R_AARCH64_ADR_PREL_PG_HI21	.data
     208: 91000000     	add	x0, x0, #0x0
		0000000000000208:  R_AARCH64_ADD_ABS_LO12_NC	.data
     20c: 94000000     	bl	0x20c <panel_event_notification_trigger+0xb4>
		000000000000020c:  R_AARCH64_CALL26	mutex_lock
     210: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
     214: f9400a89     	ldr	x9, [x20, #0x10]
     218: f9400108     	ldr	x8, [x8]
		0000000000000218:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
     21c: eb08013f     	cmp	x9, x8
     220: 540000a0     	b.eq	0x234 <panel_event_notification_trigger+0xdc>
     224: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	.data
     228: 91000000     	add	x0, x0, #0x0
		0000000000000228:  R_AARCH64_ADD_ABS_LO12_NC	.data
     22c: 94000000     	bl	0x22c <panel_event_notification_trigger+0xd4>
		000000000000022c:  R_AARCH64_CALL26	mutex_unlock
     230: 14000016     	b	0x288 <panel_event_notification_trigger+0x130>
     234: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
     238: b9400101     	ldr	w1, [x8]
		0000000000000238:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x38
     23c: 6b13003f     	cmp	w1, w19
     240: 54000c41     	b.ne	0x3c8 <panel_event_notification_trigger+0x270>
     244: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000244:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
     248: 91000108     	add	x8, x8, #0x0
		0000000000000248:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
     24c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     250: 91000000     	add	x0, x0, #0x0
		0000000000000250:  R_AARCH64_ADD_ABS_LO12_NC	.data
     254: a9405516     	ldp	x22, x21, [x8]
     258: 94000000     	bl	0x258 <panel_event_notification_trigger+0x100>
		0000000000000258:  R_AARCH64_CALL26	mutex_unlock
     25c: b4000176     	cbz	x22, 0x288 <panel_event_notification_trigger+0x130>
     260: 2a1303e0     	mov	w0, w19
     264: aa1403e1     	mov	x1, x20
     268: aa1503e2     	mov	x2, x21
     26c: b85fc2d0     	ldur	w16, [x22, #-0x4]
     270: 728df2f1     	movk	w17, #0x6f97
     274: 72a80231     	movk	w17, #0x4011, lsl #16
     278: 6b11021f     	cmp	w16, w17
     27c: 54000040     	b.eq	0x284 <panel_event_notification_trigger+0x12c>
     280: d43046c0     	brk	#0x8236
     284: d63f02c0     	blr	x22
     288: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.data
     28c: 91000000     	add	x0, x0, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.data
     290: 94000000     	bl	0x290 <panel_event_notification_trigger+0x138>
		0000000000000290:  R_AARCH64_CALL26	mutex_lock
     294: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x50
     298: f9400a89     	ldr	x9, [x20, #0x10]
     29c: f9400108     	ldr	x8, [x8]
		000000000000029c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x50
     2a0: eb08013f     	cmp	x9, x8
     2a4: 540000a0     	b.eq	0x2b8 <panel_event_notification_trigger+0x160>
     2a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.data
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.data
     2b0: 94000000     	bl	0x2b0 <panel_event_notification_trigger+0x158>
		00000000000002b0:  R_AARCH64_CALL26	mutex_unlock
     2b4: 14000016     	b	0x30c <panel_event_notification_trigger+0x1b4>
     2b8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x58
     2bc: b9400101     	ldr	w1, [x8]
		00000000000002bc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x58
     2c0: 6b13003f     	cmp	w1, w19
     2c4: 540008c1     	b.ne	0x3dc <panel_event_notification_trigger+0x284>
     2c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     2cc: 91000108     	add	x8, x8, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
     2d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	.data
     2d4: 91000000     	add	x0, x0, #0x0
		00000000000002d4:  R_AARCH64_ADD_ABS_LO12_NC	.data
     2d8: a9405516     	ldp	x22, x21, [x8]
     2dc: 94000000     	bl	0x2dc <panel_event_notification_trigger+0x184>
		00000000000002dc:  R_AARCH64_CALL26	mutex_unlock
     2e0: b4000176     	cbz	x22, 0x30c <panel_event_notification_trigger+0x1b4>
     2e4: 2a1303e0     	mov	w0, w19
     2e8: aa1403e1     	mov	x1, x20
     2ec: aa1503e2     	mov	x2, x21
     2f0: b85fc2d0     	ldur	w16, [x22, #-0x4]
     2f4: 728df2f1     	movk	w17, #0x6f97
     2f8: 72a80231     	movk	w17, #0x4011, lsl #16
     2fc: 6b11021f     	cmp	w16, w17
     300: 54000040     	b.eq	0x308 <panel_event_notification_trigger+0x1b0>
     304: d43046c0     	brk	#0x8236
     308: d63f02c0     	blr	x22
     30c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     310: 91000000     	add	x0, x0, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.data
     314: 94000000     	bl	0x314 <panel_event_notification_trigger+0x1bc>
		0000000000000314:  R_AARCH64_CALL26	mutex_lock
     318: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000318:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x70
     31c: f9400a89     	ldr	x9, [x20, #0x10]
     320: f9400108     	ldr	x8, [x8]
		0000000000000320:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x70
     324: eb08013f     	cmp	x9, x8
     328: 540000a0     	b.eq	0x33c <panel_event_notification_trigger+0x1e4>
     32c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     330: 91000000     	add	x0, x0, #0x0
		0000000000000330:  R_AARCH64_ADD_ABS_LO12_NC	.data
     334: 94000000     	bl	0x334 <panel_event_notification_trigger+0x1dc>
		0000000000000334:  R_AARCH64_CALL26	mutex_unlock
     338: 1400001a     	b	0x3a0 <panel_event_notification_trigger+0x248>
     33c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000033c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x78
     340: b9400101     	ldr	w1, [x8]
		0000000000000340:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x78
     344: 6b13003f     	cmp	w1, w19
     348: 54000541     	b.ne	0x3f0 <panel_event_notification_trigger+0x298>
     34c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000034c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
     350: 91000108     	add	x8, x8, #0x0
		0000000000000350:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x60
     354: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000354:  R_AARCH64_ADR_PREL_PG_HI21	.data
     358: 91000000     	add	x0, x0, #0x0
		0000000000000358:  R_AARCH64_ADD_ABS_LO12_NC	.data
     35c: a9405516     	ldp	x22, x21, [x8]
     360: 94000000     	bl	0x360 <panel_event_notification_trigger+0x208>
		0000000000000360:  R_AARCH64_CALL26	mutex_unlock
     364: b40001f6     	cbz	x22, 0x3a0 <panel_event_notification_trigger+0x248>
     368: 2a1303e0     	mov	w0, w19
     36c: aa1403e1     	mov	x1, x20
     370: aa1503e2     	mov	x2, x21
     374: b85fc2d0     	ldur	w16, [x22, #-0x4]
     378: 728df2f1     	movk	w17, #0x6f97
     37c: 72a80231     	movk	w17, #0x4011, lsl #16
     380: 6b11021f     	cmp	w16, w17
     384: 54000040     	b.eq	0x38c <panel_event_notification_trigger+0x234>
     388: d43046c0     	brk	#0x8236
     38c: d63f02c0     	blr	x22
     390: 14000004     	b	0x3a0 <panel_event_notification_trigger+0x248>
     394: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85
     398: 91000000     	add	x0, x0, #0x0
		0000000000000398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85
     39c: 94000000     	bl	0x39c <panel_event_notification_trigger+0x244>
		000000000000039c:  R_AARCH64_CALL26	_printk
     3a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     3a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
     3a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     3ac: d50323bf     	autiasp
     3b0: d65f03c0     	ret
     3b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     3b8: 91000000     	add	x0, x0, #0x0
		00000000000003b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     3bc: 2a1303e2     	mov	w2, w19
     3c0: 94000000     	bl	0x3c0 <panel_event_notification_trigger+0x268>
		00000000000003c0:  R_AARCH64_CALL26	_printk
     3c4: 17ffff77     	b	0x1a0 <panel_event_notification_trigger+0x48>
     3c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     3cc: 91000000     	add	x0, x0, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     3d0: 2a1303e2     	mov	w2, w19
     3d4: 94000000     	bl	0x3d4 <panel_event_notification_trigger+0x27c>
		00000000000003d4:  R_AARCH64_CALL26	_printk
     3d8: 17ffff93     	b	0x224 <panel_event_notification_trigger+0xcc>
     3dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     3e0: 91000000     	add	x0, x0, #0x0
		00000000000003e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     3e4: 2a1303e2     	mov	w2, w19
     3e8: 94000000     	bl	0x3e8 <panel_event_notification_trigger+0x290>
		00000000000003e8:  R_AARCH64_CALL26	_printk
     3ec: 17ffffaf     	b	0x2a8 <panel_event_notification_trigger+0x150>
     3f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     3f4: 91000000     	add	x0, x0, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     3f8: 2a1303e2     	mov	w2, w19
     3fc: 94000000     	bl	0x3fc <panel_event_notification_trigger+0x2a4>
		00000000000003fc:  R_AARCH64_CALL26	_printk
     400: 17ffffcb     	b	0x32c <panel_event_notification_trigger+0x1d4>
