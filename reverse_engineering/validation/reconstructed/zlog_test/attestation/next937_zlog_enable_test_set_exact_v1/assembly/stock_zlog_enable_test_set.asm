
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zlog_enable_test_set>:
       4: d503233f     	paciasp
       8: d10143ff     	sub	sp, sp, #0x50
       c: a9017bfd     	stp	x29, x30, [sp, #0x10]
      10: f90013f7     	str	x23, [sp, #0x20]
      14: a90357f6     	stp	x22, x21, [sp, #0x30]
      18: a9044ff4     	stp	x20, x19, [sp, #0x40]
      1c: 910043fd     	add	x29, sp, #0x10
      20: d5384108     	mrs	x8, SP_EL0
      24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x432
      28: 91000021     	add	x1, x1, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x432
      2c: f9438908     	ldr	x8, [x8, #0x710]
      30: 910013e2     	add	x2, sp, #0x4
      34: f90007e8     	str	x8, [sp, #0x8]
      38: b90007ff     	str	wzr, [sp, #0x4]
      3c: 94000000     	bl	0x3c <zlog_enable_test_set+0x38>
		000000000000003c:  R_AARCH64_CALL26	sscanf
      40: 7100041f     	cmp	w0, #0x1
      44: 54000aa1     	b.ne	0x198 <zlog_enable_test_set+0x194>
      48: b94007e8     	ldr	w8, [sp, #0x4]
      4c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d
      50: 91000000     	add	x0, x0, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d
      54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
      58: 91000021     	add	x1, x1, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
      5c: 7100011f     	cmp	w8, #0x0
      60: 1a9f07e2     	cset	w2, ne
      64: 94000000     	bl	0x64 <zlog_enable_test_set+0x60>
		0000000000000064:  R_AARCH64_CALL26	_printk
      68: b94007e8     	ldr	w8, [sp, #0x4]
      6c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      70: b9400122     	ldr	w2, [x9]
		0000000000000070:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      74: 7100011f     	cmp	w8, #0x0
      78: 1a9f07ea     	cset	w10, ne
      7c: 6b0a005f     	cmp	w2, w10
      80: 54001180     	b.eq	0x2b0 <zlog_enable_test_set+0x2ac>
      84: b900012a     	str	w10, [x9]
		0000000000000084:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      88: 34000968     	cbz	w8, 0x1b4 <zlog_enable_test_set+0x1b0>
      8c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
      94: 94000000     	bl	0x94 <zlog_enable_test_set+0x90>
		0000000000000094:  R_AARCH64_CALL26	zlog_register_client
      98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      9c: f9000100     	str	x0, [x8]
		000000000000009c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      a0: b4001160     	cbz	x0, 0x2cc <zlog_enable_test_set+0x2c8>
      a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x68
      a8: 91000000     	add	x0, x0, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x68
      ac: 94000000     	bl	0xac <zlog_enable_test_set+0xa8>
		00000000000000ac:  R_AARCH64_CALL26	zlog_register_client
      b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
      b4: f9000100     	str	x0, [x8]
		00000000000000b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
      b8: b4001160     	cbz	x0, 0x2e4 <zlog_enable_test_set+0x2e0>
      bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000bc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
      c0: 91000000     	add	x0, x0, #0x0
		00000000000000c0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x98
      c4: 94000000     	bl	0xc4 <zlog_enable_test_set+0xc0>
		00000000000000c4:  R_AARCH64_CALL26	zlog_register_client
      c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
      cc: f9000100     	str	x0, [x8]
		00000000000000cc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
      d0: b4001160     	cbz	x0, 0x2fc <zlog_enable_test_set+0x2f8>
      d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xc8
      d8: 91000000     	add	x0, x0, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xc8
      dc: 94000000     	bl	0xdc <zlog_enable_test_set+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	zlog_register_client
      e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000e0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
      e4: f9000100     	str	x0, [x8]
		00000000000000e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x20
      e8: b4001160     	cbz	x0, 0x314 <zlog_enable_test_set+0x310>
      ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf8
      f0: 91000000     	add	x0, x0, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf8
      f4: 94000000     	bl	0xf4 <zlog_enable_test_set+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	zlog_register_client
      f8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x28
      fc: f9000100     	str	x0, [x8]
		00000000000000fc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x28
     100: b4001160     	cbz	x0, 0x32c <zlog_enable_test_set+0x328>
     104: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
     108: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
     10c: 91000042     	add	x2, x2, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
     110: f9400101     	ldr	x1, [x8]
		0000000000000110:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
     114: 52800400     	mov	w0, #0x20               // =32
     118: aa1f03e3     	mov	x3, xzr
     11c: 94000000     	bl	0x11c <zlog_enable_test_set+0x118>
		000000000000011c:  R_AARCH64_CALL26	queue_delayed_work_on
     120: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000120:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa0
     124: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
     128: 91000042     	add	x2, x2, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
     12c: f9400101     	ldr	x1, [x8]
		000000000000012c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xa0
     130: 52800400     	mov	w0, #0x20               // =32
     134: aa1f03e3     	mov	x3, xzr
     138: 94000000     	bl	0x138 <zlog_enable_test_set+0x134>
		0000000000000138:  R_AARCH64_CALL26	queue_delayed_work_on
     13c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x110
     140: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     144: 91000042     	add	x2, x2, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x118
     148: f9400101     	ldr	x1, [x8]
		0000000000000148:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x110
     14c: 52800400     	mov	w0, #0x20               // =32
     150: aa1f03e3     	mov	x3, xzr
     154: 94000000     	bl	0x154 <zlog_enable_test_set+0x150>
		0000000000000154:  R_AARCH64_CALL26	queue_delayed_work_on
     158: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x180
     15c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x188
     160: 91000042     	add	x2, x2, #0x0
		0000000000000160:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x188
     164: f9400101     	ldr	x1, [x8]
		0000000000000164:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x180
     168: 52800400     	mov	w0, #0x20               // =32
     16c: aa1f03e3     	mov	x3, xzr
     170: 94000000     	bl	0x170 <zlog_enable_test_set+0x16c>
		0000000000000170:  R_AARCH64_CALL26	queue_delayed_work_on
     174: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     178: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     17c: 91000042     	add	x2, x2, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
     180: f9400101     	ldr	x1, [x8]
		0000000000000180:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     184: 52800400     	mov	w0, #0x20               // =32
     188: aa1f03e3     	mov	x3, xzr
     18c: 94000000     	bl	0x18c <zlog_enable_test_set+0x188>
		000000000000018c:  R_AARCH64_CALL26	queue_delayed_work_on
     190: 2a1f03e0     	mov	w0, wzr
     194: 1400003b     	b	0x280 <zlog_enable_test_set+0x27c>
     198: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
     19c: 91000000     	add	x0, x0, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
     1a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     1a4: 91000021     	add	x1, x1, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     1a8: 94000000     	bl	0x1a8 <zlog_enable_test_set+0x1a4>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: 128002a0     	mov	w0, #-0x16              // =-22
     1b0: 14000034     	b	0x280 <zlog_enable_test_set+0x27c>
     1b4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
     1b8: 91000273     	add	x19, x19, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
     1bc: aa1303e0     	mov	x0, x19
     1c0: 94000000     	bl	0x1c0 <zlog_enable_test_set+0x1bc>
		00000000000001c0:  R_AARCH64_CALL26	flush_delayed_work
     1c4: aa1303e0     	mov	x0, x19
     1c8: 94000000     	bl	0x1c8 <zlog_enable_test_set+0x1c4>
		00000000000001c8:  R_AARCH64_CALL26	cancel_delayed_work_sync
     1cc: 90000013     	adrp	x19, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
     1d0: 91000273     	add	x19, x19, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
     1d4: aa1303e0     	mov	x0, x19
     1d8: 94000000     	bl	0x1d8 <zlog_enable_test_set+0x1d4>
		00000000000001d8:  R_AARCH64_CALL26	flush_delayed_work
     1dc: aa1303e0     	mov	x0, x19
     1e0: 94000000     	bl	0x1e0 <zlog_enable_test_set+0x1dc>
		00000000000001e0:  R_AARCH64_CALL26	cancel_delayed_work_sync
     1e4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     1e8: 91000273     	add	x19, x19, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x118
     1ec: aa1303e0     	mov	x0, x19
     1f0: 94000000     	bl	0x1f0 <zlog_enable_test_set+0x1ec>
		00000000000001f0:  R_AARCH64_CALL26	flush_delayed_work
     1f4: aa1303e0     	mov	x0, x19
     1f8: 94000000     	bl	0x1f8 <zlog_enable_test_set+0x1f4>
		00000000000001f8:  R_AARCH64_CALL26	cancel_delayed_work_sync
     1fc: 90000013     	adrp	x19, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x188
     200: 91000273     	add	x19, x19, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x188
     204: aa1303e0     	mov	x0, x19
     208: 94000000     	bl	0x208 <zlog_enable_test_set+0x204>
		0000000000000208:  R_AARCH64_CALL26	flush_delayed_work
     20c: aa1303e0     	mov	x0, x19
     210: 94000000     	bl	0x210 <zlog_enable_test_set+0x20c>
		0000000000000210:  R_AARCH64_CALL26	cancel_delayed_work_sync
     214: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     218: 91000273     	add	x19, x19, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
     21c: aa1303e0     	mov	x0, x19
     220: 94000000     	bl	0x220 <zlog_enable_test_set+0x21c>
		0000000000000220:  R_AARCH64_CALL26	flush_delayed_work
     224: aa1303e0     	mov	x0, x19
     228: 94000000     	bl	0x228 <zlog_enable_test_set+0x224>
		0000000000000228:  R_AARCH64_CALL26	cancel_delayed_work_sync
     22c: 90000013     	adrp	x19, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     230: f9400260     	ldr	x0, [x19]
		0000000000000230:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     234: 94000000     	bl	0x234 <zlog_enable_test_set+0x230>
		0000000000000234:  R_AARCH64_CALL26	zlog_unregister_client
     238: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     23c: f9400280     	ldr	x0, [x20]
		000000000000023c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     240: 94000000     	bl	0x240 <zlog_enable_test_set+0x23c>
		0000000000000240:  R_AARCH64_CALL26	zlog_unregister_client
     244: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000244:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     248: f94002a0     	ldr	x0, [x21]
		0000000000000248:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     24c: 94000000     	bl	0x24c <zlog_enable_test_set+0x248>
		000000000000024c:  R_AARCH64_CALL26	zlog_unregister_client
     250: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
     254: f94002c0     	ldr	x0, [x22]
		0000000000000254:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x20
     258: 94000000     	bl	0x258 <zlog_enable_test_set+0x254>
		0000000000000258:  R_AARCH64_CALL26	zlog_unregister_client
     25c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x28
     260: f94002e0     	ldr	x0, [x23]
		0000000000000260:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x28
     264: 94000000     	bl	0x264 <zlog_enable_test_set+0x260>
		0000000000000264:  R_AARCH64_CALL26	zlog_unregister_client
     268: 2a1f03e0     	mov	w0, wzr
     26c: f900027f     	str	xzr, [x19]
		000000000000026c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     270: f900029f     	str	xzr, [x20]
		0000000000000270:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     274: f90002bf     	str	xzr, [x21]
		0000000000000274:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     278: f90002df     	str	xzr, [x22]
		0000000000000278:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x20
     27c: f90002ff     	str	xzr, [x23]
		000000000000027c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x28
     280: d5384108     	mrs	x8, SP_EL0
     284: f9438908     	ldr	x8, [x8, #0x710]
     288: f94007e9     	ldr	x9, [sp, #0x8]
     28c: eb09011f     	cmp	x8, x9
     290: 540005a1     	b.ne	0x344 <zlog_enable_test_set+0x340>
     294: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     298: f94013f7     	ldr	x23, [sp, #0x20]
     29c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     2a0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     2a4: 910143ff     	add	sp, sp, #0x50
     2a8: d50323bf     	autiasp
     2ac: d65f03c0     	ret
     2b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f5
     2b4: 91000000     	add	x0, x0, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f5
     2b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     2bc: 91000021     	add	x1, x1, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     2c0: 94000000     	bl	0x2c0 <zlog_enable_test_set+0x2bc>
		00000000000002c0:  R_AARCH64_CALL26	_printk
     2c4: 2a1f03e0     	mov	w0, wzr
     2c8: 17ffffee     	b	0x280 <zlog_enable_test_set+0x27c>
     2cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
     2d0: 91000000     	add	x0, x0, #0x0
		00000000000002d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
     2d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     2d8: 91000021     	add	x1, x1, #0x0
		00000000000002d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     2dc: 94000000     	bl	0x2dc <zlog_enable_test_set+0x2d8>
		00000000000002dc:  R_AARCH64_CALL26	_printk
     2e0: 17ffff71     	b	0xa4 <zlog_enable_test_set+0xa0>
     2e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x695
     2e8: 91000000     	add	x0, x0, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x695
     2ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     2f0: 91000021     	add	x1, x1, #0x0
		00000000000002f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     2f4: 94000000     	bl	0x2f4 <zlog_enable_test_set+0x2f0>
		00000000000002f4:  R_AARCH64_CALL26	_printk
     2f8: 17ffff71     	b	0xbc <zlog_enable_test_set+0xb8>
     2fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x147
     300: 91000000     	add	x0, x0, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x147
     304: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     308: 91000021     	add	x1, x1, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     30c: 94000000     	bl	0x30c <zlog_enable_test_set+0x308>
		000000000000030c:  R_AARCH64_CALL26	_printk
     310: 17ffff71     	b	0xd4 <zlog_enable_test_set+0xd0>
     314: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f
     318: 91000000     	add	x0, x0, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f
     31c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     320: 91000021     	add	x1, x1, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     324: 94000000     	bl	0x324 <zlog_enable_test_set+0x320>
		0000000000000324:  R_AARCH64_CALL26	_printk
     328: 17ffff71     	b	0xec <zlog_enable_test_set+0xe8>
     32c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     330: 91000000     	add	x0, x0, #0x0
		0000000000000330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     334: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
     338: 91000021     	add	x1, x1, #0x0
		0000000000000338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
     33c: 94000000     	bl	0x33c <zlog_enable_test_set+0x338>
		000000000000033c:  R_AARCH64_CALL26	_printk
     340: 17ffff71     	b	0x104 <zlog_enable_test_set+0x100>
     344: 94000000     	bl	0x344 <zlog_enable_test_set+0x340>
		0000000000000344:  R_AARCH64_CALL26	__stack_chk_fail
