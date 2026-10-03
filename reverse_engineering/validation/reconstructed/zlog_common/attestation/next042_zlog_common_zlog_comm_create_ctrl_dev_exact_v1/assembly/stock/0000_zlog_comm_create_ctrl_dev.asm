
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000108 <zlog_comm_create_ctrl_dev>:
     108: d503233f     	paciasp
     10c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     110: f9000bf3     	str	x19, [sp, #0x10]
     114: 910003fd     	mov	x29, sp
     118: 52801fe8     	mov	w8, #0xff               // =255
     11c: 90000013     	adrp	x19, 0x0 <.init.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2470
     120: 91000273     	add	x19, x19, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2470
     124: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x568
     128: 91000000     	add	x0, x0, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x568
     12c: 52819801     	mov	w1, #0xcc0              // =3264
     130: b9000268     	str	w8, [x19]
     134: 94000000     	bl	0x134 <zlog_comm_create_ctrl_dev+0x2c>
		0000000000000134:  R_AARCH64_CALL26	kstrdup
     138: f9000660     	str	x0, [x19, #0x8]
     13c: b50000a0     	cbnz	x0, 0x150 <zlog_comm_create_ctrl_dev+0x48>
     140: f9400bf3     	ldr	x19, [sp, #0x10]
     144: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     148: d50323bf     	autiasp
     14c: d65f03c0     	ret
     150: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     154: 91000108     	add	x8, x8, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     158: aa1303e0     	mov	x0, x19
     15c: f9000a68     	str	x8, [x19, #0x10]
     160: f900167f     	str	xzr, [x19, #0x28]
     164: 94000000     	bl	0x164 <zlog_comm_create_ctrl_dev+0x5c>
		0000000000000164:  R_AARCH64_CALL26	misc_register
     168: f9400662     	ldr	x2, [x19, #0x8]
     16c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe2
     170: 91000108     	add	x8, x8, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe2
     174: 7100001f     	cmp	w0, #0x0
     178: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x607
     17c: 91000129     	add	x9, x9, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x607
     180: 9a880120     	csel	x0, x9, x8, eq
     184: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c4
     188: 91000021     	add	x1, x1, #0x0
		0000000000000188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c4
     18c: 94000000     	bl	0x18c <zlog_comm_create_ctrl_dev+0x84>
		000000000000018c:  R_AARCH64_CALL26	_printk
     190: 17ffffec     	b	0x140 <zlog_comm_create_ctrl_dev+0x38>
