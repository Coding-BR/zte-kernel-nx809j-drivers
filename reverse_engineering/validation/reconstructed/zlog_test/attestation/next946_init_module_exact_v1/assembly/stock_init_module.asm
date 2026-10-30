
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000013     	adrp	x19, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x235
      1c: 91000273     	add	x19, x19, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x235
      20: 52800141     	mov	w1, #0xa                // =10
      24: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79
      28: 91000063     	add	x3, x3, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79
      2c: aa1303e0     	mov	x0, x19
      30: 72a000c1     	movk	w1, #0x6, lsl #16
      34: 52800022     	mov	w2, #0x1                // =1
      38: 94000000     	bl	0x38 <init_module+0x34>
		0000000000000038:  R_AARCH64_CALL26	alloc_workqueue
      3c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
      40: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
      44: 91000129     	add	x9, x9, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x38
      48: b26b7bf5     	mov	x21, #0xfffffffe00000   // =4503599625273344
      4c: f9000100     	str	x0, [x8]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
      50: 91002128     	add	x8, x9, #0x8
      54: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
      58: 91000294     	add	x20, x20, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
      5c: f9000135     	str	x21, [x9]
      60: f9000528     	str	x8, [x9, #0x8]
      64: 91008120     	add	x0, x9, #0x20
      68: aa1403e1     	mov	x1, x20
      6c: f9000928     	str	x8, [x9, #0x10]
      70: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x498
      74: 91000108     	add	x8, x8, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x498
      78: 52a00402     	mov	w2, #0x200000           // =2097152
      7c: aa1f03e3     	mov	x3, xzr
      80: aa1f03e4     	mov	x4, xzr
      84: f9000d28     	str	x8, [x9, #0x18]
      88: 94000000     	bl	0x88 <init_module+0x84>
		0000000000000088:  R_AARCH64_CALL26	init_timer_key
      8c: 52800141     	mov	w1, #0xa                // =10
      90: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c
      94: 91000063     	add	x3, x3, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c
      98: aa1303e0     	mov	x0, x19
      9c: 72a000c1     	movk	w1, #0x6, lsl #16
      a0: 52800022     	mov	w2, #0x1                // =1
      a4: 94000000     	bl	0xa4 <init_module+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	alloc_workqueue
      a8: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa0
      ac: 90000009     	adrp	x9, 0x0 <.init.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
      b0: 91000129     	add	x9, x9, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
      b4: f9000100     	str	x0, [x8]
		00000000000000b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xa0
      b8: 91002128     	add	x8, x9, #0x8
      bc: 91008120     	add	x0, x9, #0x20
      c0: f9000135     	str	x21, [x9]
      c4: aa1403e1     	mov	x1, x20
      c8: 52a00402     	mov	w2, #0x200000           // =2097152
      cc: f9000528     	str	x8, [x9, #0x8]
      d0: aa1f03e3     	mov	x3, xzr
      d4: aa1f03e4     	mov	x4, xzr
      d8: f9000928     	str	x8, [x9, #0x10]
      dc: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x588
      e0: 91000108     	add	x8, x8, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x588
      e4: f9000d28     	str	x8, [x9, #0x18]
      e8: 94000000     	bl	0xe8 <init_module+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	init_timer_key
      ec: 52800141     	mov	w1, #0xa                // =10
      f0: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x557
      f4: 91000063     	add	x3, x3, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x557
      f8: aa1303e0     	mov	x0, x19
      fc: 72a000c1     	movk	w1, #0x6, lsl #16
     100: 52800022     	mov	w2, #0x1                // =1
     104: 94000000     	bl	0x104 <init_module+0x100>
		0000000000000104:  R_AARCH64_CALL26	alloc_workqueue
     108: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x110
     10c: 90000009     	adrp	x9, 0x0 <.init.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     110: 91000129     	add	x9, x9, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x118
     114: f9000100     	str	x0, [x8]
		0000000000000114:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x110
     118: 91002128     	add	x8, x9, #0x8
     11c: 91008120     	add	x0, x9, #0x20
     120: f9000135     	str	x21, [x9]
     124: aa1403e1     	mov	x1, x20
     128: 52a00402     	mov	w2, #0x200000           // =2097152
     12c: f9000528     	str	x8, [x9, #0x8]
     130: aa1f03e3     	mov	x3, xzr
     134: aa1f03e4     	mov	x4, xzr
     138: f9000928     	str	x8, [x9, #0x10]
     13c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x678
     140: 91000108     	add	x8, x8, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x678
     144: f9000d28     	str	x8, [x9, #0x18]
     148: 94000000     	bl	0x148 <init_module+0x144>
		0000000000000148:  R_AARCH64_CALL26	init_timer_key
     14c: 52800141     	mov	w1, #0xa                // =10
     150: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x668
     154: 91000063     	add	x3, x3, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x668
     158: aa1303e0     	mov	x0, x19
     15c: 72a000c1     	movk	w1, #0x6, lsl #16
     160: 52800022     	mov	w2, #0x1                // =1
     164: 94000000     	bl	0x164 <init_module+0x160>
		0000000000000164:  R_AARCH64_CALL26	alloc_workqueue
     168: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x180
     16c: 90000009     	adrp	x9, 0x0 <.init.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x188
     170: 91000129     	add	x9, x9, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x188
     174: f9000100     	str	x0, [x8]
		0000000000000174:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x180
     178: 91002128     	add	x8, x9, #0x8
     17c: 91008120     	add	x0, x9, #0x20
     180: f9000135     	str	x21, [x9]
     184: aa1403e1     	mov	x1, x20
     188: 52a00402     	mov	w2, #0x200000           // =2097152
     18c: f9000528     	str	x8, [x9, #0x8]
     190: aa1f03e3     	mov	x3, xzr
     194: aa1f03e4     	mov	x4, xzr
     198: f9000928     	str	x8, [x9, #0x10]
     19c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x768
     1a0: 91000108     	add	x8, x8, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x768
     1a4: f9000d28     	str	x8, [x9, #0x18]
     1a8: 94000000     	bl	0x1a8 <init_module+0x1a4>
		00000000000001a8:  R_AARCH64_CALL26	init_timer_key
     1ac: 52800141     	mov	w1, #0xa                // =10
     1b0: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5dd
     1b4: 91000063     	add	x3, x3, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5dd
     1b8: aa1303e0     	mov	x0, x19
     1bc: 72a000c1     	movk	w1, #0x6, lsl #16
     1c0: 52800022     	mov	w2, #0x1                // =1
     1c4: 94000000     	bl	0x1c4 <init_module+0x1c0>
		00000000000001c4:  R_AARCH64_CALL26	alloc_workqueue
     1c8: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     1cc: 90000009     	adrp	x9, 0x0 <.init.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     1d0: 91000129     	add	x9, x9, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1f8
     1d4: f9000100     	str	x0, [x8]
		00000000000001d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     1d8: 91002128     	add	x8, x9, #0x8
     1dc: 91008120     	add	x0, x9, #0x20
     1e0: f9000135     	str	x21, [x9]
     1e4: aa1403e1     	mov	x1, x20
     1e8: 52a00402     	mov	w2, #0x200000           // =2097152
     1ec: f9000528     	str	x8, [x9, #0x8]
     1f0: aa1f03e3     	mov	x3, xzr
     1f4: aa1f03e4     	mov	x4, xzr
     1f8: f9000928     	str	x8, [x9, #0x10]
     1fc: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x858
     200: 91000108     	add	x8, x8, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x858
     204: f9000d28     	str	x8, [x9, #0x18]
     208: 94000000     	bl	0x208 <init_module+0x204>
		0000000000000208:  R_AARCH64_CALL26	init_timer_key
     20c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_node
     210: 91000000     	add	x0, x0, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	zlog_enable_test_node
     214: aa1f03e1     	mov	x1, xzr
     218: 94000000     	bl	0x218 <init_module+0x214>
		0000000000000218:  R_AARCH64_CALL26	zte_misc_register_callback
     21c: 36f80100     	tbz	w0, #0x1f, 0x23c <init_module+0x238>
     220: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bb
     224: 91000021     	add	x1, x1, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bb
     228: 2a0003e3     	mov	w3, w0
     22c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191
     234: aa0103e2     	mov	x2, x1
     238: 94000000     	bl	0x238 <init_module+0x234>
		0000000000000238:  R_AARCH64_CALL26	_printk
     23c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bb
     240: 91000021     	add	x1, x1, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bb
     244: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d5
     248: 91000000     	add	x0, x0, #0x0
		0000000000000248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d5
     24c: aa0103e2     	mov	x2, x1
     250: 94000000     	bl	0x250 <init_module+0x24c>
		0000000000000250:  R_AARCH64_CALL26	_printk
     254: 2a1f03e0     	mov	w0, wzr
     258: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     25c: f9400bf5     	ldr	x21, [sp, #0x10]
     260: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     264: d50323bf     	autiasp
     268: d65f03c0     	ret
