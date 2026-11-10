
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

000000000000014c <zlog_comm_create_ctrl_dev>:
     14c: d503233f     	paciasp
     150: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     154: a9014ff4     	stp	x20, x19, [sp, #0x10]
     158: 910003fd     	mov	x29, sp
     15c: 52801fe8     	mov	w8, #0xff               // =255
     160: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2470
     164: 91000294     	add	x20, x20, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x2470
     168: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa10
     16c: 91000000     	add	x0, x0, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa10
     170: 52819801     	mov	w1, #0xcc0              // =3264
     174: b9000288     	str	w8, [x20]
     178: 94000000     	bl	0x178 <zlog_comm_create_ctrl_dev+0x2c>
		0000000000000178:  R_AARCH64_CALL26	kstrdup
     17c: f9000680     	str	x0, [x20, #0x8]
     180: b5000100     	cbnz	x0, 0x1a0 <zlog_comm_create_ctrl_dev+0x54>
     184: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88f
     188: 91000000     	add	x0, x0, #0x0
		0000000000000188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88f
     18c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ad
     190: 91000021     	add	x1, x1, #0x0
		0000000000000190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ad
     194: 94000000     	bl	0x194 <zlog_comm_create_ctrl_dev+0x48>
		0000000000000194:  R_AARCH64_CALL26	_printk
     198: 12800173     	mov	w19, #-0xc              // =-12
     19c: 14000019     	b	0x200 <zlog_comm_create_ctrl_dev+0xb4>
     1a0: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     1a4: 91000108     	add	x8, x8, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     1a8: aa1403e0     	mov	x0, x20
     1ac: f9000a88     	str	x8, [x20, #0x10]
     1b0: f900169f     	str	xzr, [x20, #0x28]
     1b4: 94000000     	bl	0x1b4 <zlog_comm_create_ctrl_dev+0x68>
		00000000000001b4:  R_AARCH64_CALL26	misc_register
     1b8: f9400682     	ldr	x2, [x20, #0x8]
     1bc: 2a0003f3     	mov	w19, w0
     1c0: 350000e0     	cbnz	w0, 0x1dc <zlog_comm_create_ctrl_dev+0x90>
     1c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4f
     1c8: 91000000     	add	x0, x0, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4f
     1cc: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ad
     1d0: 91000021     	add	x1, x1, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ad
     1d4: 94000000     	bl	0x1d4 <zlog_comm_create_ctrl_dev+0x88>
		00000000000001d4:  R_AARCH64_CALL26	_printk
     1d8: 1400000a     	b	0x200 <zlog_comm_create_ctrl_dev+0xb4>
     1dc: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x795
     1e0: 91000000     	add	x0, x0, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x795
     1e4: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ad
     1e8: 91000021     	add	x1, x1, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ad
     1ec: 94000000     	bl	0x1ec <zlog_comm_create_ctrl_dev+0xa0>
		00000000000001ec:  R_AARCH64_CALL26	_printk
     1f0: 90000014     	adrp	x20, 0x0 <.init.text>
		00000000000001f0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2478
     1f4: f9400280     	ldr	x0, [x20]
		00000000000001f4:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_server+0x2478
     1f8: 94000000     	bl	0x1f8 <zlog_comm_create_ctrl_dev+0xac>
		00000000000001f8:  R_AARCH64_CALL26	kfree
     1fc: f900029f     	str	xzr, [x20]
		00000000000001fc:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_server+0x2478
     200: 2a1303e0     	mov	w0, w19
     204: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     208: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     20c: d50323bf     	autiasp
     210: d65f03c0     	ret
