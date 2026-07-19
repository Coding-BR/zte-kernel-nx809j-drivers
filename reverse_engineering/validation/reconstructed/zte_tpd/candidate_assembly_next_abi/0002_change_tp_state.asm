
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000170 <change_tp_state>:
     170: d503233f     	paciasp
     174: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     178: f9000bf5     	str	x21, [sp, #0x10]
     17c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     180: 910003fd     	mov	x29, sp
     184: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     188: 2a0003f3     	mov	w19, w0
     18c: f9400288     	ldr	x8, [x20]
		000000000000018c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     190: 91330100     	add	x0, x8, #0xcc0
     194: 94000000     	bl	0x194 <change_tp_state+0x24>
		0000000000000194:  R_AARCH64_CALL26	mutex_lock
     198: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
     19c: 71000e7f     	cmp	w19, #0x3
     1a0: b94002a8     	ldr	w8, [x21]
		00000000000001a0:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     1a4: 54000348     	b.hi	0x20c <change_tp_state+0x9c>
     1a8: 71000d1f     	cmp	w8, #0x3
     1ac: 54000302     	b.hs	0x20c <change_tp_state+0x9c>
     1b0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1238
     1b4: 91000129     	add	x9, x9, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1238
     1b8: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1220
     1bc: 9100014a     	add	x10, x10, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1220
     1c0: f8735922     	ldr	x2, [x9, w19, uxtw #3]
     1c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x459e
     1c8: 91000000     	add	x0, x0, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x459e
     1cc: f8685941     	ldr	x1, [x10, w8, uxtw #3]
     1d0: 94000000     	bl	0x1d0 <change_tp_state+0x60>
		00000000000001d0:  R_AARCH64_CALL26	_printk
     1d4: f9400288     	ldr	x8, [x20]
		00000000000001d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     1d8: b94002a9     	ldr	w9, [x21]
		00000000000001d8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     1dc: f9425901     	ldr	x1, [x8, #0x4b0]
     1e0: 34000269     	cbz	w9, 0x22c <change_tp_state+0xbc>
     1e4: 7100053f     	cmp	w9, #0x1
     1e8: 54000380     	b.eq	0x258 <change_tp_state+0xe8>
     1ec: 7100093f     	cmp	w9, #0x2
     1f0: 540006e1     	b.ne	0x2cc <change_tp_state+0x15c>
     1f4: 34000573     	cbz	w19, 0x2a0 <change_tp_state+0x130>
     1f8: 71000e7f     	cmp	w19, #0x3
     1fc: 54000200     	b.eq	0x23c <change_tp_state+0xcc>
     200: 71000a7f     	cmp	w19, #0x2
     204: 54000420     	b.eq	0x288 <change_tp_state+0x118>
     208: 1400002e     	b	0x2c0 <change_tp_state+0x150>
     20c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     210: 91000000     	add	x0, x0, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     214: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20db
     218: 91000042     	add	x2, x2, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20db
     21c: 528aa241     	mov	w1, #0x5512             // =21778
     220: 528002e3     	mov	w3, #0x17               // =23
     224: 94000000     	bl	0x224 <change_tp_state+0xb4>
		0000000000000224:  R_AARCH64_CALL26	_printk
     228: 1400001e     	b	0x2a0 <change_tp_state+0x130>
     22c: 7100067f     	cmp	w19, #0x1
     230: 540001c0     	b.eq	0x268 <change_tp_state+0xf8>
     234: 71000e7f     	cmp	w19, #0x3
     238: 54000441     	b.ne	0x2c0 <change_tp_state+0x150>
     23c: 52800029     	mov	w9, #0x1                // =1
     240: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     244: 9100014a     	add	x10, x10, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
     248: b900795f     	str	wzr, [x10, #0x78]
     24c: b90002a9     	str	w9, [x21]
		000000000000024c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     250: b900015f     	str	wzr, [x10]
     254: 14000009     	b	0x278 <change_tp_state+0x108>
     258: 71000a7f     	cmp	w19, #0x2
     25c: 54000160     	b.eq	0x288 <change_tp_state+0x118>
     260: 7100067f     	cmp	w19, #0x1
     264: 540002e1     	b.ne	0x2c0 <change_tp_state+0x150>
     268: 52800049     	mov	w9, #0x2                // =2
     26c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000026c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     270: b90002a9     	str	w9, [x21]
		0000000000000270:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     274: b900015f     	str	wzr, [x10]
		0000000000000274:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     278: 91268102     	add	x2, x8, #0x9a0
     27c: 52800400     	mov	w0, #0x20               // =32
     280: 94000000     	bl	0x280 <change_tp_state+0x110>
		0000000000000280:  R_AARCH64_CALL26	queue_work_on
     284: 14000007     	b	0x2a0 <change_tp_state+0x130>
     288: 91270102     	add	x2, x8, #0x9c0
     28c: 52800400     	mov	w0, #0x20               // =32
     290: b90002bf     	str	wzr, [x21]
		0000000000000290:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     294: 94000000     	bl	0x294 <change_tp_state+0x124>
		0000000000000294:  R_AARCH64_CALL26	queue_work_on
     298: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     29c: b900011f     	str	wzr, [x8]
		000000000000029c:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     2a0: f9400288     	ldr	x8, [x20]
		00000000000002a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     2a4: 91330100     	add	x0, x8, #0xcc0
     2a8: 94000000     	bl	0x2a8 <change_tp_state+0x138>
		00000000000002a8:  R_AARCH64_CALL26	mutex_unlock
     2ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     2b0: f9400bf5     	ldr	x21, [sp, #0x10]
     2b4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     2b8: d50323bf     	autiasp
     2bc: d65f03c0     	ret
     2c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x300b
     2c4: 91000000     	add	x0, x0, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x300b
     2c8: 14000009     	b	0x2ec <change_tp_state+0x17c>
     2cc: 91270102     	add	x2, x8, #0x9c0
     2d0: 52800400     	mov	w0, #0x20               // =32
     2d4: b90002bf     	str	wzr, [x21]
		00000000000002d4:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
     2d8: 94000000     	bl	0x2d8 <change_tp_state+0x168>
		00000000000002d8:  R_AARCH64_CALL26	queue_work_on
     2dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002dc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
     2e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     2e4: 91000000     	add	x0, x0, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     2e8: b900011f     	str	wzr, [x8]
		00000000000002e8:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
     2ec: 94000000     	bl	0x2ec <change_tp_state+0x17c>
		00000000000002ec:  R_AARCH64_CALL26	_printk
     2f0: 17ffffec     	b	0x2a0 <change_tp_state+0x130>
