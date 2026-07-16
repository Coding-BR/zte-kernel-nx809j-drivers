
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zlog_write_internal>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0xb4
      20: b9400108     	ldr	w8, [x8]
		0000000000000020:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_info+0xb4
      24: 7110051f     	cmp	w8, #0x401
      28: 5400080a     	b.ge	0x128 <zlog_write_internal+0x124>
      2c: aa0103f3     	mov	x19, x1
      30: aa0003f5     	mov	x21, x0
      34: d503201f     	nop
      38: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
      3c: 5281b801     	mov	w1, #0xdc0              // =3520
      40: 52800402     	mov	w2, #0x20               // =32
      44: f9400100     	ldr	x0, [x8]
		0000000000000044:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
      48: 94000000     	bl	0x48 <zlog_write_internal+0x44>
		0000000000000048:  R_AARCH64_CALL26	__kmalloc_cache_noprof
      4c: aa0003f4     	mov	x20, x0
      50: b40009f4     	cbz	x20, 0x18c <zlog_write_internal+0x188>
      54: 11000668     	add	w8, w19, #0x1
      58: b9001288     	str	w8, [x20, #0x10]
      5c: d503201f     	nop
      60: b9401296     	ldr	w22, [x20, #0x10]
      64: 5281b801     	mov	w1, #0xdc0              // =3520
      68: aa1603e0     	mov	x0, x22
      6c: 94000000     	bl	0x6c <zlog_write_internal+0x68>
		000000000000006c:  R_AARCH64_CALL26	__kmalloc_noprof
      70: f9000e80     	str	x0, [x20, #0x18]
      74: b4000b20     	cbz	x0, 0x1d8 <zlog_write_internal+0x1d4>
      78: eb1302df     	cmp	x22, x19
      7c: 54000663     	b.lo	0x148 <zlog_write_internal+0x144>
      80: f9400e80     	ldr	x0, [x20, #0x18]
      84: aa1503e1     	mov	x1, x21
      88: aa1303e2     	mov	x2, x19
      8c: 94000000     	bl	0x8c <zlog_write_internal+0x88>
		000000000000008c:  R_AARCH64_CALL26	memcpy
      90: f9400e88     	ldr	x8, [x20, #0x18]
      94: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info
      98: 910002b5     	add	x21, x21, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info
      9c: aa1503e0     	mov	x0, x21
      a0: 3833691f     	strb	wzr, [x8, x19]
      a4: 94000000     	bl	0xa4 <zlog_write_internal+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	mutex_lock
      a8: f9401aa2     	ldr	x2, [x21, #0x30]
      ac: eb14005f     	cmp	x2, x20
      b0: 54000420     	b.eq	0x134 <zlog_write_internal+0x130>
      b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x30
      b8: 91000108     	add	x8, x8, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x30
      bc: eb08029f     	cmp	x20, x8
      c0: 540003a0     	b.eq	0x134 <zlog_write_internal+0x130>
      c4: f9400449     	ldr	x9, [x2, #0x8]
      c8: eb08013f     	cmp	x9, x8
      cc: 54000341     	b.ne	0x134 <zlog_write_internal+0x130>
      d0: f9000454     	str	x20, [x2, #0x8]
      d4: a9002282     	stp	x2, x8, [x20]
      d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x30
      dc: f9000114     	str	x20, [x8]
		00000000000000dc:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_info+0x30
      e0: b940b6a8     	ldr	w8, [x21, #0xb4]
      e4: 52800029     	mov	w9, #0x1                // =1
      e8: aa1503e0     	mov	x0, x21
      ec: 11000508     	add	w8, w8, #0x1
      f0: 291622a9     	stp	w9, w8, [x21, #0xb0]
      f4: 94000000     	bl	0xf4 <zlog_write_internal+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	mutex_unlock
      f8: 910262a0     	add	x0, x21, #0x98
      fc: 52800021     	mov	w1, #0x1                // =1
     100: 52800022     	mov	w2, #0x1                // =1
     104: aa1f03e3     	mov	x3, xzr
     108: 94000000     	bl	0x108 <zlog_write_internal+0x104>
		0000000000000108:  R_AARCH64_CALL26	__wake_up
     10c: aa1303e0     	mov	x0, x19
     110: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     114: a94257f6     	ldp	x22, x21, [sp, #0x20]
     118: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     11c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     120: d50323bf     	autiasp
     124: d65f03c0     	ret
     128: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c
     12c: 91000000     	add	x0, x0, #0x0
		000000000000012c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c
     130: 14000019     	b	0x194 <zlog_write_internal+0x190>
     134: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000134:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x30
     138: 91000021     	add	x1, x1, #0x0
		0000000000000138:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x30
     13c: aa1403e0     	mov	x0, x20
     140: 94000000     	bl	0x140 <zlog_write_internal+0x13c>
		0000000000000140:  R_AARCH64_CALL26	__list_add_valid_or_report
     144: 17ffffe7     	b	0xe0 <zlog_write_internal+0xdc>
     148: 52800220     	mov	w0, #0x11               // =17
     14c: aa1603e1     	mov	x1, x22
     150: aa1303e2     	mov	x2, x19
     154: 94000000     	bl	0x154 <zlog_write_internal+0x150>
		0000000000000154:  R_AARCH64_CALL26	__fortify_panic
     158: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     15c: d5384116     	mrs	x22, SP_EL0
     160: f9402ad7     	ldr	x23, [x22, #0x50]
     164: f9400100     	ldr	x0, [x8]
		0000000000000164:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     168: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     16c: 91000108     	add	x8, x8, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     170: 5281b801     	mov	w1, #0xdc0              // =3520
     174: 52800402     	mov	w2, #0x20               // =32
     178: f9002ac8     	str	x8, [x22, #0x50]
     17c: 94000000     	bl	0x17c <zlog_write_internal+0x178>
		000000000000017c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     180: aa0003f4     	mov	x20, x0
     184: f9002ad7     	str	x23, [x22, #0x50]
     188: b5fff674     	cbnz	x20, 0x54 <zlog_write_internal+0x50>
     18c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x323
     190: 91000000     	add	x0, x0, #0x0
		0000000000000190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x323
     194: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30f
     198: 91000021     	add	x1, x1, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30f
     19c: 94000000     	bl	0x19c <zlog_write_internal+0x198>
		000000000000019c:  R_AARCH64_CALL26	_printk
     1a0: 92800173     	mov	x19, #-0xc              // =-12
     1a4: 17ffffda     	b	0x10c <zlog_write_internal+0x108>
     1a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     1ac: 91000108     	add	x8, x8, #0x0
		00000000000001ac:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     1b0: d5384117     	mrs	x23, SP_EL0
     1b4: f9402af8     	ldr	x24, [x23, #0x50]
     1b8: f9002ae8     	str	x8, [x23, #0x50]
     1bc: 5281b801     	mov	w1, #0xdc0              // =3520
     1c0: b9401296     	ldr	w22, [x20, #0x10]
     1c4: aa1603e0     	mov	x0, x22
     1c8: 94000000     	bl	0x1c8 <zlog_write_internal+0x1c4>
		00000000000001c8:  R_AARCH64_CALL26	__kmalloc_noprof
     1cc: f9002af8     	str	x24, [x23, #0x50]
     1d0: f9000e80     	str	x0, [x20, #0x18]
     1d4: b5fff520     	cbnz	x0, 0x78 <zlog_write_internal+0x74>
     1d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     1dc: 91000000     	add	x0, x0, #0x0
		00000000000001dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     1e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30f
     1e4: 91000021     	add	x1, x1, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30f
     1e8: 94000000     	bl	0x1e8 <zlog_write_internal+0x1e4>
		00000000000001e8:  R_AARCH64_CALL26	_printk
     1ec: f9400e80     	ldr	x0, [x20, #0x18]
     1f0: b4000040     	cbz	x0, 0x1f8 <zlog_write_internal+0x1f4>
     1f4: 94000000     	bl	0x1f4 <zlog_write_internal+0x1f0>
		00000000000001f4:  R_AARCH64_CALL26	kfree
     1f8: aa1403e0     	mov	x0, x20
     1fc: 94000000     	bl	0x1fc <zlog_write_internal+0x1f8>
		00000000000001fc:  R_AARCH64_CALL26	kfree
     200: aa1f03f3     	mov	x19, xzr
     204: 17ffffc2     	b	0x10c <zlog_write_internal+0x108>
