
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000130 <change_tp_state>:
     130: d503233f     	paciasp
     134: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     138: a90157f6     	stp	x22, x21, [sp, #0x10]
     13c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     140: 910003fd     	mov	x29, sp
     144: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     148: 2a0003f3     	mov	w19, w0
     14c: f94002d4     	ldr	x20, [x22]
		000000000000014c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     150: 91330280     	add	x0, x20, #0xcc0
     154: 94000000     	bl	0x154 <change_tp_state+0x24>
		0000000000000154:  R_AARCH64_CALL26	mutex_lock
     158: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
     15c: 71000e7f     	cmp	w19, #0x3
     160: b94002a8     	ldr	w8, [x21]
		0000000000000160:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     164: 54000348     	b.hi	0x1cc <change_tp_state+0x9c>
     168: 71000d1f     	cmp	w8, #0x3
     16c: 54000302     	b.hs	0x1cc <change_tp_state+0x9c>
     170: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4448
     174: 91000129     	add	x9, x9, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4448
     178: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4430
     17c: 9100014a     	add	x10, x10, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4430
     180: f8735922     	ldr	x2, [x9, w19, uxtw #3]
     184: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6efc
     188: 91000000     	add	x0, x0, #0x0
		0000000000000188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6efc
     18c: f8685941     	ldr	x1, [x10, w8, uxtw #3]
     190: 94000000     	bl	0x190 <change_tp_state+0x60>
		0000000000000190:  R_AARCH64_CALL26	_printk
     194: f94002c8     	ldr	x8, [x22]
		0000000000000194:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     198: b94002a9     	ldr	w9, [x21]
		0000000000000198:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     19c: f9425901     	ldr	x1, [x8, #0x4b0]
     1a0: 34000269     	cbz	w9, 0x1ec <change_tp_state+0xbc>
     1a4: 7100053f     	cmp	w9, #0x1
     1a8: 54000340     	b.eq	0x210 <change_tp_state+0xe0>
     1ac: 7100093f     	cmp	w9, #0x2
     1b0: 54000681     	b.ne	0x280 <change_tp_state+0x150>
     1b4: 34000533     	cbz	w19, 0x258 <change_tp_state+0x128>
     1b8: 71000e7f     	cmp	w19, #0x3
     1bc: 54000200     	b.eq	0x1fc <change_tp_state+0xcc>
     1c0: 71000a7f     	cmp	w19, #0x2
     1c4: 540003e0     	b.eq	0x240 <change_tp_state+0x110>
     1c8: 1400002b     	b	0x274 <change_tp_state+0x144>
     1cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
     1d0: 91000000     	add	x0, x0, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
     1d4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4606
     1d8: 91000042     	add	x2, x2, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4606
     1dc: 528aa241     	mov	w1, #0x5512             // =21778
     1e0: 528002c3     	mov	w3, #0x16               // =22
     1e4: 94000000     	bl	0x1e4 <change_tp_state+0xb4>
		00000000000001e4:  R_AARCH64_CALL26	_printk
     1e8: 1400001c     	b	0x258 <change_tp_state+0x128>
     1ec: 7100067f     	cmp	w19, #0x1
     1f0: 540001c0     	b.eq	0x228 <change_tp_state+0xf8>
     1f4: 71000e7f     	cmp	w19, #0x3
     1f8: 540003e1     	b.ne	0x274 <change_tp_state+0x144>
     1fc: 52800029     	mov	w9, #0x1                // =1
     200: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     204: b90002a9     	str	w9, [x21]
		0000000000000204:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     208: b900015f     	str	wzr, [x10]
		0000000000000208:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     20c: 14000009     	b	0x230 <change_tp_state+0x100>
     210: 71000a7f     	cmp	w19, #0x2
     214: 54000160     	b.eq	0x240 <change_tp_state+0x110>
     218: 7100067f     	cmp	w19, #0x1
     21c: 540002c1     	b.ne	0x274 <change_tp_state+0x144>
     220: 52800049     	mov	w9, #0x2                // =2
     224: b90002a9     	str	w9, [x21]
		0000000000000224:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     228: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     22c: b900013f     	str	wzr, [x9]
		000000000000022c:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     230: 91268102     	add	x2, x8, #0x9a0
     234: 52800400     	mov	w0, #0x20               // =32
     238: 94000000     	bl	0x238 <change_tp_state+0x108>
		0000000000000238:  R_AARCH64_CALL26	queue_work_on
     23c: 14000007     	b	0x258 <change_tp_state+0x128>
     240: 91270102     	add	x2, x8, #0x9c0
     244: 52800400     	mov	w0, #0x20               // =32
     248: b90002bf     	str	wzr, [x21]
		0000000000000248:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     24c: 94000000     	bl	0x24c <change_tp_state+0x11c>
		000000000000024c:  R_AARCH64_CALL26	queue_work_on
     250: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     254: b900011f     	str	wzr, [x8]
		0000000000000254:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     258: 91330280     	add	x0, x20, #0xcc0
     25c: 94000000     	bl	0x25c <change_tp_state+0x12c>
		000000000000025c:  R_AARCH64_CALL26	mutex_unlock
     260: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     264: a94157f6     	ldp	x22, x21, [sp, #0x10]
     268: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     26c: d50323bf     	autiasp
     270: d65f03c0     	ret
     274: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4977
     278: 91000000     	add	x0, x0, #0x0
		0000000000000278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4977
     27c: 14000009     	b	0x2a0 <change_tp_state+0x170>
     280: 91270102     	add	x2, x8, #0x9c0
     284: 52800400     	mov	w0, #0x20               // =32
     288: b90002bf     	str	wzr, [x21]
		0000000000000288:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     28c: 94000000     	bl	0x28c <change_tp_state+0x15c>
		000000000000028c:  R_AARCH64_CALL26	queue_work_on
     290: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     294: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd6a
     298: 91000000     	add	x0, x0, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd6a
     29c: b900011f     	str	wzr, [x8]
		000000000000029c:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     2a0: 94000000     	bl	0x2a0 <change_tp_state+0x170>
		00000000000002a0:  R_AARCH64_CALL26	_printk
     2a4: 17ffffed     	b	0x258 <change_tp_state+0x128>
