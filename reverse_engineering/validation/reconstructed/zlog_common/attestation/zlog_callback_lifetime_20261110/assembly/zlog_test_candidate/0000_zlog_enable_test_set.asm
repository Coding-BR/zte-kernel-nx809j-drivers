
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zlog_enable_test_set>:
       4: d503233f     	paciasp
       8: d100c3ff     	sub	sp, sp, #0x30
       c: a9017bfd     	stp	x29, x30, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910043fd     	add	x29, sp, #0x10
      18: d5384108     	mrs	x8, SP_EL0
      1c: aa0003f3     	mov	x19, x0
      20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
      24: 91000000     	add	x0, x0, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
      28: f9438908     	ldr	x8, [x8, #0x710]
      2c: f90007e8     	str	x8, [sp, #0x8]
      30: b90007ff     	str	wzr, [sp, #0x4]
      34: 94000000     	bl	0x34 <zlog_enable_test_set+0x30>
		0000000000000034:  R_AARCH64_CALL26	mutex_lock
      38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x402
      3c: 91000021     	add	x1, x1, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x402
      40: 910013e2     	add	x2, sp, #0x4
      44: aa1303e0     	mov	x0, x19
      48: 94000000     	bl	0x48 <zlog_enable_test_set+0x44>
		0000000000000048:  R_AARCH64_CALL26	sscanf
      4c: 7100041f     	cmp	w0, #0x1
      50: 54000b81     	b.ne	0x1c0 <zlog_enable_test_set+0x1bc>
      54: b94007e8     	ldr	w8, [sp, #0x4]
      58: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28f
      5c: 91000000     	add	x0, x0, #0x0
		000000000000005c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28f
      60: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
      64: 91000021     	add	x1, x1, #0x0
		0000000000000064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
      68: 7100011f     	cmp	w8, #0x0
      6c: 1a9f07e2     	cset	w2, ne
      70: b90007e2     	str	w2, [sp, #0x4]
      74: 94000000     	bl	0x74 <zlog_enable_test_set+0x70>
		0000000000000074:  R_AARCH64_CALL26	_printk
      78: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
      7c: b9400282     	ldr	w2, [x20]
		000000000000007c:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
      80: b94007e8     	ldr	w8, [sp, #0x4]
      84: 6b08005f     	cmp	w2, w8
      88: 54001080     	b.eq	0x298 <zlog_enable_test_set+0x294>
      8c: 34000a88     	cbz	w8, 0x1dc <zlog_enable_test_set+0x1d8>
      90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	test_dev_1
      94: 91000000     	add	x0, x0, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	test_dev_1
      98: 94000000     	bl	0x98 <zlog_enable_test_set+0x94>
		0000000000000098:  R_AARCH64_CALL26	zlog_register_client
      9c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	client_1
      a0: f9000100     	str	x0, [x8]
		00000000000000a0:  R_AARCH64_LDST64_ABS_LO12_NC	client_1
      a4: b4000ea0     	cbz	x0, 0x278 <zlog_enable_test_set+0x274>
      a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	test_dev_2
      ac: 91000000     	add	x0, x0, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	test_dev_2
      b0: 94000000     	bl	0xb0 <zlog_enable_test_set+0xac>
		00000000000000b0:  R_AARCH64_CALL26	zlog_register_client
      b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	client_2
      b8: f9000100     	str	x0, [x8]
		00000000000000b8:  R_AARCH64_LDST64_ABS_LO12_NC	client_2
      bc: b4000de0     	cbz	x0, 0x278 <zlog_enable_test_set+0x274>
      c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	test_dev_3
      c4: 91000000     	add	x0, x0, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	test_dev_3
      c8: 94000000     	bl	0xc8 <zlog_enable_test_set+0xc4>
		00000000000000c8:  R_AARCH64_CALL26	zlog_register_client
      cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	client_3
      d0: f9000100     	str	x0, [x8]
		00000000000000d0:  R_AARCH64_LDST64_ABS_LO12_NC	client_3
      d4: b4000d20     	cbz	x0, 0x278 <zlog_enable_test_set+0x274>
      d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	test_dev_4
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	test_dev_4
      e0: 94000000     	bl	0xe0 <zlog_enable_test_set+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	zlog_register_client
      e4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	client_4
      e8: f9000100     	str	x0, [x8]
		00000000000000e8:  R_AARCH64_LDST64_ABS_LO12_NC	client_4
      ec: b4000c60     	cbz	x0, 0x278 <zlog_enable_test_set+0x274>
      f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	test_dev_5
      f4: 91000000     	add	x0, x0, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	test_dev_5
      f8: 94000000     	bl	0xf8 <zlog_enable_test_set+0xf4>
		00000000000000f8:  R_AARCH64_CALL26	zlog_register_client
      fc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000fc:  R_AARCH64_ADR_PREL_PG_HI21	client_5
     100: f9000100     	str	x0, [x8]
		0000000000000100:  R_AARCH64_LDST64_ABS_LO12_NC	client_5
     104: b4000ba0     	cbz	x0, 0x278 <zlog_enable_test_set+0x274>
     108: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     10c: 91000273     	add	x19, x19, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     110: aa1303e0     	mov	x0, x19
     114: 94000000     	bl	0x114 <zlog_enable_test_set+0x110>
		0000000000000114:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     118: 52800028     	mov	w8, #0x1                // =1
     11c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_work
     120: 91000042     	add	x2, x2, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test1_work
     124: b9000288     	str	w8, [x20]
		0000000000000124:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     128: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_workqueue
     12c: aa0003f4     	mov	x20, x0
     130: f9400101     	ldr	x1, [x8]
		0000000000000130:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
     134: 52800400     	mov	w0, #0x20               // =32
     138: aa1f03e3     	mov	x3, xzr
     13c: 94000000     	bl	0x13c <zlog_enable_test_set+0x138>
		000000000000013c:  R_AARCH64_CALL26	queue_delayed_work_on
     140: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_workqueue
     144: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_work
     148: 91000042     	add	x2, x2, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test2_work
     14c: f9400101     	ldr	x1, [x8]
		000000000000014c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
     150: 52800400     	mov	w0, #0x20               // =32
     154: aa1f03e3     	mov	x3, xzr
     158: 94000000     	bl	0x158 <zlog_enable_test_set+0x154>
		0000000000000158:  R_AARCH64_CALL26	queue_delayed_work_on
     15c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_workqueue
     160: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_work
     164: 91000042     	add	x2, x2, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test3_work
     168: f9400101     	ldr	x1, [x8]
		0000000000000168:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
     16c: 52800400     	mov	w0, #0x20               // =32
     170: aa1f03e3     	mov	x3, xzr
     174: 94000000     	bl	0x174 <zlog_enable_test_set+0x170>
		0000000000000174:  R_AARCH64_CALL26	queue_delayed_work_on
     178: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_workqueue
     17c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_work
     180: 91000042     	add	x2, x2, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test4_work
     184: f9400101     	ldr	x1, [x8]
		0000000000000184:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     188: 52800400     	mov	w0, #0x20               // =32
     18c: aa1f03e3     	mov	x3, xzr
     190: 94000000     	bl	0x190 <zlog_enable_test_set+0x18c>
		0000000000000190:  R_AARCH64_CALL26	queue_delayed_work_on
     194: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_workqueue
     198: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_work
     19c: 91000042     	add	x2, x2, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test5_work
     1a0: f9400101     	ldr	x1, [x8]
		00000000000001a0:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     1a4: 52800400     	mov	w0, #0x20               // =32
     1a8: aa1f03e3     	mov	x3, xzr
     1ac: 94000000     	bl	0x1ac <zlog_enable_test_set+0x1a8>
		00000000000001ac:  R_AARCH64_CALL26	queue_delayed_work_on
     1b0: aa1303e0     	mov	x0, x19
     1b4: aa1403e1     	mov	x1, x20
     1b8: 94000000     	bl	0x1b8 <zlog_enable_test_set+0x1b4>
		00000000000001b8:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     1bc: 14000020     	b	0x23c <zlog_enable_test_set+0x238>
     1c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x320
     1c4: 91000000     	add	x0, x0, #0x0
		00000000000001c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x320
     1c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
     1cc: 91000021     	add	x1, x1, #0x0
		00000000000001cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
     1d0: 94000000     	bl	0x1d0 <zlog_enable_test_set+0x1cc>
		00000000000001d0:  R_AARCH64_CALL26	_printk
     1d4: 128002b3     	mov	w19, #-0x16             // =-22
     1d8: 1400001a     	b	0x240 <zlog_enable_test_set+0x23c>
     1dc: 90000013     	adrp	x19, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     1e0: 91000273     	add	x19, x19, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     1e4: aa1303e0     	mov	x0, x19
     1e8: 94000000     	bl	0x1e8 <zlog_enable_test_set+0x1e4>
		00000000000001e8:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     1ec: aa0003e1     	mov	x1, x0
     1f0: aa1303e0     	mov	x0, x19
     1f4: b900029f     	str	wzr, [x20]
		00000000000001f4:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     1f8: 94000000     	bl	0x1f8 <zlog_enable_test_set+0x1f4>
		00000000000001f8:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     1fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_work
     200: 91000000     	add	x0, x0, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test1_work
     204: 94000000     	bl	0x204 <zlog_enable_test_set+0x200>
		0000000000000204:  R_AARCH64_CALL26	cancel_delayed_work_sync
     208: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_work
     20c: 91000000     	add	x0, x0, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test2_work
     210: 94000000     	bl	0x210 <zlog_enable_test_set+0x20c>
		0000000000000210:  R_AARCH64_CALL26	cancel_delayed_work_sync
     214: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_work
     218: 91000000     	add	x0, x0, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test3_work
     21c: 94000000     	bl	0x21c <zlog_enable_test_set+0x218>
		000000000000021c:  R_AARCH64_CALL26	cancel_delayed_work_sync
     220: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_work
     224: 91000000     	add	x0, x0, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test4_work
     228: 94000000     	bl	0x228 <zlog_enable_test_set+0x224>
		0000000000000228:  R_AARCH64_CALL26	cancel_delayed_work_sync
     22c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_work
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test5_work
     234: 94000000     	bl	0x234 <zlog_enable_test_set+0x230>
		0000000000000234:  R_AARCH64_CALL26	cancel_delayed_work_sync
     238: 94000072     	bl	0x400 <zlog_test_unregister_clients>
     23c: 2a1f03f3     	mov	w19, wzr
     240: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
     244: 91000000     	add	x0, x0, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
     248: 94000000     	bl	0x248 <zlog_enable_test_set+0x244>
		0000000000000248:  R_AARCH64_CALL26	mutex_unlock
     24c: d5384108     	mrs	x8, SP_EL0
     250: f9438908     	ldr	x8, [x8, #0x710]
     254: f94007e9     	ldr	x9, [sp, #0x8]
     258: eb09011f     	cmp	x8, x9
     25c: 540002a1     	b.ne	0x2b0 <zlog_enable_test_set+0x2ac>
     260: 2a1303e0     	mov	w0, w19
     264: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     268: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     26c: 9100c3ff     	add	sp, sp, #0x30
     270: d50323bf     	autiasp
     274: d65f03c0     	ret
     278: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f7
     27c: 91000000     	add	x0, x0, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f7
     280: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
     284: 91000021     	add	x1, x1, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
     288: 94000000     	bl	0x288 <zlog_enable_test_set+0x284>
		0000000000000288:  R_AARCH64_CALL26	_printk
     28c: 9400005d     	bl	0x400 <zlog_test_unregister_clients>
     290: 12800173     	mov	w19, #-0xc              // =-12
     294: 17ffffeb     	b	0x240 <zlog_enable_test_set+0x23c>
     298: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57
     29c: 91000000     	add	x0, x0, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57
     2a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
     2a8: 94000000     	bl	0x2a8 <zlog_enable_test_set+0x2a4>
		00000000000002a8:  R_AARCH64_CALL26	_printk
     2ac: 17ffffe4     	b	0x23c <zlog_enable_test_set+0x238>
     2b0: 94000000     	bl	0x2b0 <zlog_enable_test_set+0x2ac>
		00000000000002b0:  R_AARCH64_CALL26	__stack_chk_fail
