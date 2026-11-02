
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

000000000000009c <zlog_create_log_dev>:
      9c: d503233f     	paciasp
      a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      a4: f9000bf3     	str	x19, [sp, #0x10]
      a8: 910003fd     	mov	x29, sp
      ac: 52801fe8     	mov	w8, #0xff               // =255
      b0: 90000013     	adrp	x19, 0x0 <.init.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x40
      b4: 91000273     	add	x19, x19, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x40
      b8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x233
      bc: 91000000     	add	x0, x0, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x233
      c0: 52819801     	mov	w1, #0xcc0              // =3264
      c4: b9000268     	str	w8, [x19]
      c8: 94000000     	bl	0xc8 <zlog_create_log_dev+0x2c>
		00000000000000c8:  R_AARCH64_CALL26	kstrdup
      cc: f9000660     	str	x0, [x19, #0x8]
      d0: b50000c0     	cbnz	x0, 0xe8 <zlog_create_log_dev+0x4c>
      d4: 12800160     	mov	w0, #-0xc               // =-12
      d8: f9400bf3     	ldr	x19, [sp, #0x10]
      dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      e0: d50323bf     	autiasp
      e4: d65f03c0     	ret
      e8: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
      ec: 91000108     	add	x8, x8, #0x0
		00000000000000ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
      f0: aa1303e0     	mov	x0, x19
      f4: f9000a68     	str	x8, [x19, #0x10]
      f8: f900167f     	str	xzr, [x19, #0x28]
      fc: 94000000     	bl	0xfc <zlog_create_log_dev+0x60>
		00000000000000fc:  R_AARCH64_CALL26	misc_register
     100: f9400662     	ldr	x2, [x19, #0x8]
     104: 35000120     	cbnz	w0, 0x128 <zlog_create_log_dev+0x8c>
     108: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec
     10c: 91000000     	add	x0, x0, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec
     110: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd8
     114: 91000021     	add	x1, x1, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd8
     118: 2a1f03e3     	mov	w3, wzr
     11c: 94000000     	bl	0x11c <zlog_create_log_dev+0x80>
		000000000000011c:  R_AARCH64_CALL26	_printk
     120: 2a1f03e0     	mov	w0, wzr
     124: 17ffffed     	b	0xd8 <zlog_create_log_dev+0x3c>
     128: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x370
     12c: 91000108     	add	x8, x8, #0x0
		000000000000012c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x370
     130: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd8
     134: 91000021     	add	x1, x1, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd8
     138: 2a0003f3     	mov	w19, w0
     13c: aa0803e0     	mov	x0, x8
     140: 94000000     	bl	0x140 <zlog_create_log_dev+0xa4>
		0000000000000140:  R_AARCH64_CALL26	_printk
     144: 2a1303e0     	mov	w0, w19
     148: 17ffffe4     	b	0xd8 <zlog_create_log_dev+0x3c>
