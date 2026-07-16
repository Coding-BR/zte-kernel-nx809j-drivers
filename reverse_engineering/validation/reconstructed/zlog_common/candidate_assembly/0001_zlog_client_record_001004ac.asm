
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000cc <zlog_client_record>:
      cc: d503233f     	paciasp
      d0: d10283ff     	sub	sp, sp, #0xa0
      d4: a9087bfd     	stp	x29, x30, [sp, #0x80]
      d8: a9094ff4     	stp	x20, x19, [sp, #0x90]
      dc: 910203fd     	add	x29, sp, #0x80
      e0: a9008fe2     	stp	x2, x3, [sp, #0x8]
      e4: a90197e4     	stp	x4, x5, [sp, #0x18]
      e8: d5384108     	mrs	x8, SP_EL0
      ec: f9438908     	ldr	x8, [x8, #0x710]
      f0: a9029fe6     	stp	x6, x7, [sp, #0x28]
      f4: f81f83a8     	stur	x8, [x29, #-0x8]
      f8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
      fc: 39400108     	ldrb	w8, [x8]
		00000000000000fc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
     100: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     104: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     108: 36000688     	tbz	w8, #0x0, 0x1d8 <zlog_client_record+0x10c>
     10c: aa0003f3     	mov	x19, x0
     110: b40006a0     	cbz	x0, 0x1e4 <zlog_client_record+0x118>
     114: 9102c260     	add	x0, x19, #0xb0
     118: aa0103f4     	mov	x20, x1
     11c: 94000000     	bl	0x11c <zlog_client_record+0x50>
		000000000000011c:  R_AARCH64_CALL26	mutex_lock
     120: f9407e68     	ldr	x8, [x19, #0xf8]
     124: f120011f     	cmp	x8, #0x800
     128: 540006e2     	b.hs	0x204 <zlog_client_record+0x138>
     12c: 910023ea     	add	x10, sp, #0x8
     130: 910083a9     	add	x9, x29, #0x20
     134: f85e83ab     	ldur	x11, [x29, #-0x18]
     138: 9100c14a     	add	x10, x10, #0x30
     13c: 128005e8     	mov	w8, #-0x30              // =-48
     140: 9100e3e3     	add	x3, sp, #0x38
     144: a93daba9     	stp	x9, x10, [x29, #-0x28]
     148: aa1403e2     	mov	x2, x20
     14c: a903abe9     	stp	x9, x10, [sp, #0x38]
     150: a94fb269     	ldp	x9, x12, [x19, #0xf8]
     154: f940866a     	ldr	x10, [x19, #0x108]
     158: a904a3eb     	stp	x11, x8, [sp, #0x48]
     15c: f81f03a8     	stur	x8, [x29, #-0x10]
     160: aa2903eb     	mvn	x11, x9
     164: 8b090140     	add	x0, x10, x9
     168: 8b0b0181     	add	x1, x12, x11
     16c: 94000000     	bl	0x16c <zlog_client_record+0xa0>
		000000000000016c:  R_AARCH64_CALL26	vsnprintf
     170: 2a0003f4     	mov	w20, w0
     174: 37f80580     	tbnz	w0, #0x1f, 0x224 <zlog_client_record+0x158>
     178: a94fa269     	ldp	x9, x8, [x19, #0xf8]
     17c: 8b344129     	add	x9, x9, w20, uxtw
     180: eb08013f     	cmp	x9, x8
     184: f9007e69     	str	x9, [x19, #0xf8]
     188: 54000063     	b.lo	0x194 <zlog_client_record+0xc8>
     18c: d1000508     	sub	x8, x8, #0x1
     190: f9007e68     	str	x8, [x19, #0xf8]
     194: 1400002c     	b	0x244 <zlog_client_record+0x178>
     198: 9103a268     	add	x8, x19, #0xe8
     19c: 52800089     	mov	w9, #0x4                // =4
     1a0: f829311f     	stset	x9, [x8]
     1a4: 9102c260     	add	x0, x19, #0xb0
     1a8: 94000000     	bl	0x1a8 <zlog_client_record+0xdc>
		00000000000001a8:  R_AARCH64_CALL26	mutex_unlock
     1ac: d5384108     	mrs	x8, SP_EL0
     1b0: f9438908     	ldr	x8, [x8, #0x710]
     1b4: f85f83a9     	ldur	x9, [x29, #-0x8]
     1b8: eb09011f     	cmp	x8, x9
     1bc: 54000421     	b.ne	0x240 <zlog_client_record+0x174>
     1c0: 2a1403e0     	mov	w0, w20
     1c4: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     1c8: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     1cc: 910283ff     	add	sp, sp, #0xa0
     1d0: d50323bf     	autiasp
     1d4: d65f03c0     	ret
     1d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b
     1dc: 91000000     	add	x0, x0, #0x0
		00000000000001dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b
     1e0: 14000003     	b	0x1ec <zlog_client_record+0x120>
     1e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d7
     1e8: 91000000     	add	x0, x0, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d7
     1ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x275
     1f0: 91000021     	add	x1, x1, #0x0
		00000000000001f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x275
     1f4: aa0103e2     	mov	x2, x1
     1f8: 94000000     	bl	0x1f8 <zlog_client_record+0x12c>
		00000000000001f8:  R_AARCH64_CALL26	_printk
     1fc: 2a1f03f4     	mov	w20, wzr
     200: 17ffffeb     	b	0x1ac <zlog_client_record+0xe0>
     204: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x275
     208: 91000021     	add	x1, x1, #0x0
		0000000000000208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x275
     20c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121
     210: 91000000     	add	x0, x0, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121
     214: aa0103e2     	mov	x2, x1
     218: 94000000     	bl	0x218 <zlog_client_record+0x14c>
		0000000000000218:  R_AARCH64_CALL26	_printk
     21c: 2a1f03f4     	mov	w20, wzr
     220: 17ffffe1     	b	0x1a4 <zlog_client_record+0xd8>
     224: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x275
     228: 91000021     	add	x1, x1, #0x0
		0000000000000228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x275
     22c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a
     234: aa0103e2     	mov	x2, x1
     238: 94000000     	bl	0x238 <zlog_client_record+0x16c>
		0000000000000238:  R_AARCH64_CALL26	_printk
     23c: 17ffffda     	b	0x1a4 <zlog_client_record+0xd8>
     240: 94000000     	bl	0x240 <zlog_client_record+0x174>
		0000000000000240:  R_AARCH64_CALL26	__stack_chk_fail
     244: 9103a268     	add	x8, x19, #0xe8
     248: f9800111     	prfm	pstl1strm, [x8]
     24c: c85f7d09     	ldxr	x9, [x8]
     250: b27e0129     	orr	x9, x9, #0x4
     254: c80a7d09     	stxr	w10, x9, [x8]
     258: 35ffffaa     	cbnz	w10, 0x24c <zlog_client_record+0x180>
     25c: 17ffffd2     	b	0x1a4 <zlog_client_record+0xd8>
