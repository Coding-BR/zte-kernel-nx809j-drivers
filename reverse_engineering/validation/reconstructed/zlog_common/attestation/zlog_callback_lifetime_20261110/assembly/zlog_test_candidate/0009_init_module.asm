
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_work
      20: 91000108     	add	x8, x8, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test1_work
      24: b26b7bf4     	mov	x20, #0xfffffffe00000   // =4503599625273344
      28: 91002109     	add	x9, x8, #0x8
      2c: 90000013     	adrp	x19, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
      30: 91000273     	add	x19, x19, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
      34: f9000114     	str	x20, [x8]
      38: 91008100     	add	x0, x8, #0x20
      3c: aa1303e1     	mov	x1, x19
      40: f9000509     	str	x9, [x8, #0x8]
      44: 52a00402     	mov	w2, #0x200000           // =2097152
      48: aa1f03e3     	mov	x3, xzr
      4c: f9000909     	str	x9, [x8, #0x10]
      50: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x498
      54: 91000129     	add	x9, x9, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x498
      58: aa1f03e4     	mov	x4, xzr
      5c: f9000d09     	str	x9, [x8, #0x18]
      60: 94000000     	bl	0x60 <init_module+0x5c>
		0000000000000060:  R_AARCH64_CALL26	init_timer_key
      64: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_work
      68: 91000108     	add	x8, x8, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test2_work
      6c: aa1303e1     	mov	x1, x19
      70: 91002109     	add	x9, x8, #0x8
      74: f9000114     	str	x20, [x8]
      78: 91008100     	add	x0, x8, #0x20
      7c: f9000509     	str	x9, [x8, #0x8]
      80: 52a00402     	mov	w2, #0x200000           // =2097152
      84: aa1f03e3     	mov	x3, xzr
      88: f9000909     	str	x9, [x8, #0x10]
      8c: 90000009     	adrp	x9, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x5c0
      90: 91000129     	add	x9, x9, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x5c0
      94: aa1f03e4     	mov	x4, xzr
      98: f9000d09     	str	x9, [x8, #0x18]
      9c: 94000000     	bl	0x9c <init_module+0x98>
		000000000000009c:  R_AARCH64_CALL26	init_timer_key
      a0: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_work
      a4: 91000108     	add	x8, x8, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test3_work
      a8: aa1303e1     	mov	x1, x19
      ac: 91002109     	add	x9, x8, #0x8
      b0: f9000114     	str	x20, [x8]
      b4: 91008100     	add	x0, x8, #0x20
      b8: f9000509     	str	x9, [x8, #0x8]
      bc: 52a00402     	mov	w2, #0x200000           // =2097152
      c0: aa1f03e3     	mov	x3, xzr
      c4: f9000909     	str	x9, [x8, #0x10]
      c8: 90000009     	adrp	x9, 0x0 <.init.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x6e8
      cc: 91000129     	add	x9, x9, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x6e8
      d0: aa1f03e4     	mov	x4, xzr
      d4: f9000d09     	str	x9, [x8, #0x18]
      d8: 94000000     	bl	0xd8 <init_module+0xd4>
		00000000000000d8:  R_AARCH64_CALL26	init_timer_key
      dc: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_work
      e0: 91000108     	add	x8, x8, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test4_work
      e4: aa1303e1     	mov	x1, x19
      e8: 91002109     	add	x9, x8, #0x8
      ec: f9000114     	str	x20, [x8]
      f0: 91008100     	add	x0, x8, #0x20
      f4: f9000509     	str	x9, [x8, #0x8]
      f8: 52a00402     	mov	w2, #0x200000           // =2097152
      fc: aa1f03e3     	mov	x3, xzr
     100: f9000909     	str	x9, [x8, #0x10]
     104: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x810
     108: 91000129     	add	x9, x9, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x810
     10c: aa1f03e4     	mov	x4, xzr
     110: f9000d09     	str	x9, [x8, #0x18]
     114: 94000000     	bl	0x114 <init_module+0x110>
		0000000000000114:  R_AARCH64_CALL26	init_timer_key
     118: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_work
     11c: 91000108     	add	x8, x8, #0x0
		000000000000011c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test5_work
     120: aa1303e1     	mov	x1, x19
     124: 91002109     	add	x9, x8, #0x8
     128: f9000114     	str	x20, [x8]
     12c: 91008100     	add	x0, x8, #0x20
     130: f9000509     	str	x9, [x8, #0x8]
     134: 52a00402     	mov	w2, #0x200000           // =2097152
     138: aa1f03e3     	mov	x3, xzr
     13c: f9000909     	str	x9, [x8, #0x10]
     140: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x938
     144: 91000129     	add	x9, x9, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x938
     148: aa1f03e4     	mov	x4, xzr
     14c: f9000d09     	str	x9, [x8, #0x18]
     150: 94000000     	bl	0x150 <init_module+0x14c>
		0000000000000150:  R_AARCH64_CALL26	init_timer_key
     154: 52800141     	mov	w1, #0xa                // =10
     158: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
     15c: 91000000     	add	x0, x0, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
     160: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
     164: 91000063     	add	x3, x3, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
     168: 72a000c1     	movk	w1, #0x6, lsl #16
     16c: 52800022     	mov	w2, #0x1                // =1
     170: 94000000     	bl	0x170 <init_module+0x16c>
		0000000000000170:  R_AARCH64_CALL26	alloc_workqueue
     174: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_workqueue
     178: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_workqueue
     17c: 90000016     	adrp	x22, 0x0 <.init.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_workqueue
     180: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_workqueue
     184: 90000018     	adrp	x24, 0x0 <.init.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_workqueue
     188: f9000280     	str	x0, [x20]
		0000000000000188:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
     18c: b4000560     	cbz	x0, 0x238 <init_module+0x234>
     190: 52800141     	mov	w1, #0xa                // =10
     194: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
     198: 91000000     	add	x0, x0, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
     19c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     1a0: 91000063     	add	x3, x3, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     1a4: 72a000c1     	movk	w1, #0x6, lsl #16
     1a8: 52800022     	mov	w2, #0x1                // =1
     1ac: 94000000     	bl	0x1ac <init_module+0x1a8>
		00000000000001ac:  R_AARCH64_CALL26	alloc_workqueue
     1b0: f90002a0     	str	x0, [x21]
		00000000000001b0:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
     1b4: b4000420     	cbz	x0, 0x238 <init_module+0x234>
     1b8: 52800141     	mov	w1, #0xa                // =10
     1bc: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
     1c0: 91000000     	add	x0, x0, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
     1c4: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f6
     1c8: 91000063     	add	x3, x3, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f6
     1cc: 72a000c1     	movk	w1, #0x6, lsl #16
     1d0: 52800022     	mov	w2, #0x1                // =1
     1d4: 94000000     	bl	0x1d4 <init_module+0x1d0>
		00000000000001d4:  R_AARCH64_CALL26	alloc_workqueue
     1d8: f90002c0     	str	x0, [x22]
		00000000000001d8:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
     1dc: b40002e0     	cbz	x0, 0x238 <init_module+0x234>
     1e0: 52800141     	mov	w1, #0xa                // =10
     1e4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
     1e8: 91000000     	add	x0, x0, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
     1ec: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000001ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f
     1f0: 91000063     	add	x3, x3, #0x0
		00000000000001f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f
     1f4: 72a000c1     	movk	w1, #0x6, lsl #16
     1f8: 52800022     	mov	w2, #0x1                // =1
     1fc: 94000000     	bl	0x1fc <init_module+0x1f8>
		00000000000001fc:  R_AARCH64_CALL26	alloc_workqueue
     200: f90002e0     	str	x0, [x23]
		0000000000000200:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     204: b40001a0     	cbz	x0, 0x238 <init_module+0x234>
     208: 52800141     	mov	w1, #0xa                // =10
     20c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
     210: 91000000     	add	x0, x0, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
     214: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x587
     218: 91000063     	add	x3, x3, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x587
     21c: 72a000c1     	movk	w1, #0x6, lsl #16
     220: 52800022     	mov	w2, #0x1                // =1
     224: 94000000     	bl	0x224 <init_module+0x220>
		0000000000000224:  R_AARCH64_CALL26	alloc_workqueue
     228: f9000300     	str	x0, [x24]
		0000000000000228:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     22c: b50003e0     	cbnz	x0, 0x2a8 <init_module+0x2a4>
     230: 12800173     	mov	w19, #-0xc              // =-12
     234: 14000006     	b	0x24c <init_module+0x248>
     238: 12800173     	mov	w19, #-0xc              // =-12
     23c: f9400300     	ldr	x0, [x24]
		000000000000023c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     240: b4000060     	cbz	x0, 0x24c <init_module+0x248>
     244: 94000000     	bl	0x244 <init_module+0x240>
		0000000000000244:  R_AARCH64_CALL26	destroy_workqueue
     248: f900031f     	str	xzr, [x24]
		0000000000000248:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     24c: f94002e0     	ldr	x0, [x23]
		000000000000024c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     250: b4000060     	cbz	x0, 0x25c <init_module+0x258>
     254: 94000000     	bl	0x254 <init_module+0x250>
		0000000000000254:  R_AARCH64_CALL26	destroy_workqueue
     258: f90002ff     	str	xzr, [x23]
		0000000000000258:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     25c: f94002c0     	ldr	x0, [x22]
		000000000000025c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
     260: b4000060     	cbz	x0, 0x26c <init_module+0x268>
     264: 94000000     	bl	0x264 <init_module+0x260>
		0000000000000264:  R_AARCH64_CALL26	destroy_workqueue
     268: f90002df     	str	xzr, [x22]
		0000000000000268:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
     26c: f94002a0     	ldr	x0, [x21]
		000000000000026c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
     270: b4000060     	cbz	x0, 0x27c <init_module+0x278>
     274: 94000000     	bl	0x274 <init_module+0x270>
		0000000000000274:  R_AARCH64_CALL26	destroy_workqueue
     278: f90002bf     	str	xzr, [x21]
		0000000000000278:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
     27c: f9400280     	ldr	x0, [x20]
		000000000000027c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
     280: b4000060     	cbz	x0, 0x28c <init_module+0x288>
     284: 94000000     	bl	0x284 <init_module+0x280>
		0000000000000284:  R_AARCH64_CALL26	destroy_workqueue
     288: f900029f     	str	xzr, [x20]
		0000000000000288:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
     28c: 2a1303e0     	mov	w0, w19
     290: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     294: a94257f6     	ldp	x22, x21, [sp, #0x20]
     298: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     29c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     2a0: d50323bf     	autiasp
     2a4: d65f03c0     	ret
     2a8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_node
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	zlog_enable_test_node
     2b0: aa1f03e1     	mov	x1, xzr
     2b4: 94000000     	bl	0x2b4 <init_module+0x2b0>
		00000000000002b4:  R_AARCH64_CALL26	zte_misc_register_callback
     2b8: 2a0003f3     	mov	w19, w0
     2bc: 35000100     	cbnz	w0, 0x2dc <init_module+0x2d8>
     2c0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66c
     2c4: 91000021     	add	x1, x1, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66c
     2c8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b9
     2cc: 91000000     	add	x0, x0, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b9
     2d0: aa0103e2     	mov	x2, x1
     2d4: 94000000     	bl	0x2d4 <init_module+0x2d0>
		00000000000002d4:  R_AARCH64_CALL26	_printk
     2d8: 17ffffed     	b	0x28c <init_module+0x288>
     2dc: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000002dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66c
     2e0: 91000021     	add	x1, x1, #0x0
		00000000000002e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66c
     2e4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178
     2e8: 91000000     	add	x0, x0, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178
     2ec: aa0103e2     	mov	x2, x1
     2f0: 2a1303e3     	mov	w3, w19
     2f4: 94000000     	bl	0x2f4 <init_module+0x2f0>
		00000000000002f4:  R_AARCH64_CALL26	_printk
     2f8: 17ffffd1     	b	0x23c <init_module+0x238>
