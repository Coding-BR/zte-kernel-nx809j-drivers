
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zlog_client_record>:
       4: d503233f     	paciasp
       8: d10283ff     	sub	sp, sp, #0xa0
       c: a9087bfd     	stp	x29, x30, [sp, #0x80]
      10: a9094ff4     	stp	x20, x19, [sp, #0x90]
      14: 910203fd     	add	x29, sp, #0x80
      18: a9008fe2     	stp	x2, x3, [sp, #0x8]
      1c: a90197e4     	stp	x4, x5, [sp, #0x18]
      20: d5384108     	mrs	x8, SP_EL0
      24: f9438908     	ldr	x8, [x8, #0x710]
      28: a9029fe6     	stp	x6, x7, [sp, #0x28]
      2c: f81f83a8     	stur	x8, [x29, #-0x8]
      30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0x24c4
      34: 39400108     	ldrb	w8, [x8]
		0000000000000034:  R_AARCH64_LDST8_ABS_LO12_NC	zlog_exact_bss_base+0x24c4
      38: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
      3c: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
      40: 36000688     	tbz	w8, #0x0, 0x110 <zlog_client_record+0x10c>
      44: aa0003f3     	mov	x19, x0
      48: b40006a0     	cbz	x0, 0x11c <zlog_client_record+0x118>
      4c: 9102c260     	add	x0, x19, #0xb0
      50: aa0103f4     	mov	x20, x1
      54: 94000000     	bl	0x54 <zlog_client_record+0x50>
		0000000000000054:  R_AARCH64_CALL26	mutex_lock
      58: f9407e68     	ldr	x8, [x19, #0xf8]
      5c: f120011f     	cmp	x8, #0x800
      60: 540006e2     	b.hs	0x13c <zlog_client_record+0x138>
      64: 910023eb     	add	x11, sp, #0x8
      68: 910083aa     	add	x10, x29, #0x20
      6c: f9407e6d     	ldr	x13, [x19, #0xf8]
      70: 9100c16b     	add	x11, x11, #0x30
      74: f85e83ac     	ldur	x12, [x29, #-0x18]
      78: aa2803e8     	mvn	x8, x8
      7c: a93dafaa     	stp	x10, x11, [x29, #-0x28]
      80: 128005e9     	mov	w9, #-0x30              // =-48
      84: 9100e3e3     	add	x3, sp, #0x38
      88: a903afea     	stp	x10, x11, [sp, #0x38]
      8c: a9502a6b     	ldp	x11, x10, [x19, #0x100]
      90: aa1403e2     	mov	x2, x20
      94: f81f03a9     	stur	x9, [x29, #-0x10]
      98: a904a7ec     	stp	x12, x9, [sp, #0x48]
      9c: 8b0d0140     	add	x0, x10, x13
      a0: 8b080161     	add	x1, x11, x8
      a4: 94000000     	bl	0xa4 <zlog_client_record+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	vsnprintf
      a8: 2a0003f4     	mov	w20, w0
      ac: 37f80580     	tbnz	w0, #0x1f, 0x15c <zlog_client_record+0x158>
      b0: a94fa269     	ldp	x9, x8, [x19, #0xf8]
      b4: 8b344129     	add	x9, x9, w20, uxtw
      b8: eb08013f     	cmp	x9, x8
      bc: f9007e69     	str	x9, [x19, #0xf8]
      c0: 54000063     	b.lo	0xcc <zlog_client_record+0xc8>
      c4: d1000508     	sub	x8, x8, #0x1
      c8: f9007e68     	str	x8, [x19, #0xf8]
      cc: 1400002c     	b	0x17c <zlog_client_record+0x178>
      d0: 9103a268     	add	x8, x19, #0xe8
      d4: 52800089     	mov	w9, #0x4                // =4
      d8: f829311f     	stset	x9, [x8]
      dc: 9102c260     	add	x0, x19, #0xb0
      e0: 94000000     	bl	0xe0 <zlog_client_record+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	mutex_unlock
      e4: d5384108     	mrs	x8, SP_EL0
      e8: f9438908     	ldr	x8, [x8, #0x710]
      ec: f85f83a9     	ldur	x9, [x29, #-0x8]
      f0: eb09011f     	cmp	x8, x9
      f4: 54000421     	b.ne	0x178 <zlog_client_record+0x174>
      f8: 2a1403e0     	mov	w0, w20
      fc: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     100: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     104: 910283ff     	add	sp, sp, #0xa0
     108: d50323bf     	autiasp
     10c: d65f03c0     	ret
     110: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x581
     114: 91000000     	add	x0, x0, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x581
     118: 14000003     	b	0x124 <zlog_client_record+0x120>
     11c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x3ed
     120: 91000000     	add	x0, x0, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x3ed
     124: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x275
     128: 91000021     	add	x1, x1, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x275
     12c: aa0103e2     	mov	x2, x1
     130: 94000000     	bl	0x130 <zlog_client_record+0x12c>
		0000000000000130:  R_AARCH64_CALL26	_printk
     134: 2a1f03f4     	mov	w20, wzr
     138: 17ffffeb     	b	0xe4 <zlog_client_record+0xe0>
     13c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x275
     140: 91000021     	add	x1, x1, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x275
     144: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x121
     148: 91000000     	add	x0, x0, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x121
     14c: aa0103e2     	mov	x2, x1
     150: 94000000     	bl	0x150 <zlog_client_record+0x14c>
		0000000000000150:  R_AARCH64_CALL26	_printk
     154: 2a1f03f4     	mov	w20, wzr
     158: 17ffffe1     	b	0xdc <zlog_client_record+0xd8>
     15c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x275
     160: 91000021     	add	x1, x1, #0x0
		0000000000000160:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x275
     164: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000164:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x14a
     168: 91000000     	add	x0, x0, #0x0
		0000000000000168:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x14a
     16c: aa0103e2     	mov	x2, x1
     170: 94000000     	bl	0x170 <zlog_client_record+0x16c>
		0000000000000170:  R_AARCH64_CALL26	_printk
     174: 17ffffda     	b	0xdc <zlog_client_record+0xd8>
     178: 94000000     	bl	0x178 <zlog_client_record+0x174>
		0000000000000178:  R_AARCH64_CALL26	__stack_chk_fail
     17c: 9103a268     	add	x8, x19, #0xe8
     180: f9800111     	prfm	pstl1strm, [x8]
     184: c85f7d09     	ldxr	x9, [x8]
     188: b27e0129     	orr	x9, x9, #0x4
     18c: c80a7d09     	stxr	w10, x9, [x8]
     190: 35ffffaa     	cbnz	w10, 0x184 <zlog_client_record+0x180>
     194: 17ffffd2     	b	0xdc <zlog_client_record+0xd8>
