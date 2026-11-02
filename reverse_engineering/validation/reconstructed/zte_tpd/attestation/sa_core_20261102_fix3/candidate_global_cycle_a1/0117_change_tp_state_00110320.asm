
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a044 <change_tp_state>:
   1a044: d503233f     	paciasp
   1a048: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1a04c: a90157f6     	stp	x22, x21, [sp, #0x10]
   1a050: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1a054: 910003fd     	mov	x29, sp
   1a058: 90000015     	adrp	x21, 0x1a000 <edge_long_press_up+0x230>
		000000000001a058:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1a05c: 2a0003f3     	mov	w19, w0
   1a060: f94002b4     	ldr	x20, [x21]
		000000000001a060:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1a064: 91330280     	add	x0, x20, #0xcc0
   1a068: 94000000     	bl	0x1a068 <change_tp_state+0x24>
		000000000001a068:  R_AARCH64_CALL26	mutex_lock
   1a06c: 90000016     	adrp	x22, 0x1a000 <edge_long_press_up+0x230>
		000000000001a06c:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1a070: 71000e7f     	cmp	w19, #0x3
   1a074: b94002c8     	ldr	w8, [x22]
		000000000001a074:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1a078: 54000a08     	b.hi	0x1a1b8 <change_tp_state+0x174>
   1a07c: 71000d1f     	cmp	w8, #0x3
   1a080: 540009c2     	b.hs	0x1a1b8 <change_tp_state+0x174>
   1a084: 90000009     	adrp	x9, 0x1a000 <edge_long_press_up+0x230>
		000000000001a084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xf558
   1a088: 91000129     	add	x9, x9, #0x0
		000000000001a088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xf558
   1a08c: 9000000a     	adrp	x10, 0x1a000 <edge_long_press_up+0x230>
		000000000001a08c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xf540
   1a090: 9100014a     	add	x10, x10, #0x0
		000000000001a090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xf540
   1a094: f8735922     	ldr	x2, [x9, w19, uxtw #3]
   1a098: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2da
   1a09c: 91000000     	add	x0, x0, #0x0
		000000000001a09c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2da
   1a0a0: f8685941     	ldr	x1, [x10, w8, uxtw #3]
   1a0a4: 94000000     	bl	0x1a0a4 <change_tp_state+0x60>
		000000000001a0a4:  R_AARCH64_CALL26	_printk
   1a0a8: b94002c8     	ldr	w8, [x22]
		000000000001a0a8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1a0ac: 7100091f     	cmp	w8, #0x2
   1a0b0: 54000120     	b.eq	0x1a0d4 <change_tp_state+0x90>
   1a0b4: 7100051f     	cmp	w8, #0x1
   1a0b8: 54000280     	b.eq	0x1a108 <change_tp_state+0xc4>
   1a0bc: 35000668     	cbnz	w8, 0x1a188 <change_tp_state+0x144>
   1a0c0: 71000e7f     	cmp	w19, #0x3
   1a0c4: 54000120     	b.eq	0x1a0e8 <change_tp_state+0xa4>
   1a0c8: 7100067f     	cmp	w19, #0x1
   1a0cc: 54000380     	b.eq	0x1a13c <change_tp_state+0xf8>
   1a0d0: 1400002b     	b	0x1a17c <change_tp_state+0x138>
   1a0d4: 34000473     	cbz	w19, 0x1a160 <change_tp_state+0x11c>
   1a0d8: 71000a7f     	cmp	w19, #0x2
   1a0dc: 540001e0     	b.eq	0x1a118 <change_tp_state+0xd4>
   1a0e0: 71000e7f     	cmp	w19, #0x3
   1a0e4: 540004c1     	b.ne	0x1a17c <change_tp_state+0x138>
   1a0e8: 52800028     	mov	w8, #0x1                // =1
   1a0ec: 90000009     	adrp	x9, 0x1a000 <edge_long_press_up+0x230>
		000000000001a0ec:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   1a0f0: 91000129     	add	x9, x9, #0x0
		000000000001a0f0:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
   1a0f4: b90002c8     	str	w8, [x22]
		000000000001a0f4:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1a0f8: f94002a8     	ldr	x8, [x21]
		000000000001a0f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1a0fc: b900013f     	str	wzr, [x9]
   1a100: b900793f     	str	wzr, [x9, #0x78]
   1a104: 14000013     	b	0x1a150 <change_tp_state+0x10c>
   1a108: 7100067f     	cmp	w19, #0x1
   1a10c: 54000180     	b.eq	0x1a13c <change_tp_state+0xf8>
   1a110: 71000a7f     	cmp	w19, #0x2
   1a114: 54000341     	b.ne	0x1a17c <change_tp_state+0x138>
   1a118: b90002df     	str	wzr, [x22]
		000000000001a118:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1a11c: 52800400     	mov	w0, #0x20               // =32
   1a120: f94002a8     	ldr	x8, [x21]
		000000000001a120:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1a124: f9425901     	ldr	x1, [x8, #0x4b0]
   1a128: 91270102     	add	x2, x8, #0x9c0
   1a12c: 94000000     	bl	0x1a12c <change_tp_state+0xe8>
		000000000001a12c:  R_AARCH64_CALL26	queue_work_on
   1a130: 90000008     	adrp	x8, 0x1a000 <edge_long_press_up+0x230>
		000000000001a130:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   1a134: b900011f     	str	wzr, [x8]
		000000000001a134:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   1a138: 1400000a     	b	0x1a160 <change_tp_state+0x11c>
   1a13c: 52800048     	mov	w8, #0x2                // =2
   1a140: 90000009     	adrp	x9, 0x1a000 <edge_long_press_up+0x230>
		000000000001a140:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   1a144: b90002c8     	str	w8, [x22]
		000000000001a144:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1a148: f94002a8     	ldr	x8, [x21]
		000000000001a148:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1a14c: b900013f     	str	wzr, [x9]
		000000000001a14c:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   1a150: f9425901     	ldr	x1, [x8, #0x4b0]
   1a154: 91268102     	add	x2, x8, #0x9a0
   1a158: 52800400     	mov	w0, #0x20               // =32
   1a15c: 94000000     	bl	0x1a15c <change_tp_state+0x118>
		000000000001a15c:  R_AARCH64_CALL26	queue_work_on
   1a160: 91330280     	add	x0, x20, #0xcc0
   1a164: 94000000     	bl	0x1a164 <change_tp_state+0x120>
		000000000001a164:  R_AARCH64_CALL26	mutex_unlock
   1a168: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1a16c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1a170: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1a174: d50323bf     	autiasp
   1a178: d65f03c0     	ret
   1a17c: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x827a
   1a180: 91000000     	add	x0, x0, #0x0
		000000000001a180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x827a
   1a184: 1400000b     	b	0x1a1b0 <change_tp_state+0x16c>
   1a188: b90002df     	str	wzr, [x22]
		000000000001a188:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1a18c: 52800400     	mov	w0, #0x20               // =32
   1a190: f94002a8     	ldr	x8, [x21]
		000000000001a190:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1a194: f9425901     	ldr	x1, [x8, #0x4b0]
   1a198: 91270102     	add	x2, x8, #0x9c0
   1a19c: 94000000     	bl	0x1a19c <change_tp_state+0x158>
		000000000001a19c:  R_AARCH64_CALL26	queue_work_on
   1a1a0: 90000008     	adrp	x8, 0x1a000 <edge_long_press_up+0x230>
		000000000001a1a0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   1a1a4: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1890
   1a1a8: 91000000     	add	x0, x0, #0x0
		000000000001a1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1890
   1a1ac: b900011f     	str	wzr, [x8]
		000000000001a1ac:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   1a1b0: 94000000     	bl	0x1a1b0 <change_tp_state+0x16c>
		000000000001a1b0:  R_AARCH64_CALL26	_printk
   1a1b4: 17ffffeb     	b	0x1a160 <change_tp_state+0x11c>
   1a1b8: d42aa240     	brk	#0x5512
