
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
       c: a9016ffc     	stp	x28, x27, [sp, #0x10]
      10: a90267fa     	stp	x26, x25, [sp, #0x20]
      14: a9035ff8     	stp	x24, x23, [sp, #0x30]
      18: a90457f6     	stp	x22, x21, [sp, #0x40]
      1c: a9054ff4     	stp	x20, x19, [sp, #0x50]
      20: 910003fd     	mov	x29, sp
      24: 90000018     	adrp	x24, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      28: b9400308     	ldr	w8, [x24]
		0000000000000028:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      2c: 51004508     	sub	w8, w8, #0x11
      30: 3100451f     	cmn	w8, #0x11
      34: 540011a9     	b.ls	0x268 <init_module+0x264>
      38: d503201f     	nop
      3c: b9800308     	ldrsw	x8, [x24]
		000000000000003c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      40: 52803909     	mov	w9, #0x1c8              // =456
      44: 9bc97d0a     	umulh	x10, x8, x9
      48: eb0a03ff     	cmp	xzr, x10
      4c: 54001921     	b.ne	0x370 <init_module+0x36c>
      50: 9b297d00     	smull	x0, w8, w9
      54: 5281b801     	mov	w1, #0xdc0              // =3520
      58: 94000000     	bl	0x58 <init_module+0x54>
		0000000000000058:  R_AARCH64_CALL26	__kmalloc_noprof
      5c: 9000001a     	adrp	x26, 0x0 <.init.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      60: f9000340     	str	x0, [x26]
		0000000000000060:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      64: b40018a0     	cbz	x0, 0x378 <init_module+0x374>
      68: b9400308     	ldr	w8, [x24]
		0000000000000068:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      6c: 90000019     	adrp	x25, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      70: 91000339     	add	x25, x25, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x94
      74: 7100051f     	cmp	w8, #0x1
      78: 5400016b     	b.lt	0xa4 <init_module+0xa0>
      7c: aa1f03e8     	mov	x8, xzr
      80: 52800589     	mov	w9, #0x2c               // =44
      84: 1280024a     	mov	w10, #-0x13             // =-19
      88: f840432b     	ldur	x11, [x25, #0x4]
      8c: 91000508     	add	x8, x8, #0x1
      90: b829696a     	str	w10, [x11, x9]
      94: 91072129     	add	x9, x9, #0x1c8
      98: b980032b     	ldrsw	x11, [x25]
      9c: eb0b011f     	cmp	x8, x11
      a0: 54ffff4b     	b.lt	0x88 <init_module+0x84>
      a4: 90000016     	adrp	x22, 0x0 <.init.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      a8: 910002d6     	add	x22, x22, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      ac: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
      b0: 91000000     	add	x0, x0, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
      b4: aa1603e1     	mov	x1, x22
      b8: 94000000     	bl	0xb8 <init_module+0xb4>
		00000000000000b8:  R_AARCH64_CALL26	__platform_driver_register
      bc: 2a0003f4     	mov	w20, w0
      c0: 340003c0     	cbz	w0, 0x138 <init_module+0x134>
      c4: f8404320     	ldur	x0, [x25, #0x4]
      c8: b4000320     	cbz	x0, 0x12c <init_module+0x128>
      cc: b9400328     	ldr	w8, [x25]
      d0: 7100051f     	cmp	w8, #0x1
      d4: 540002cb     	b.lt	0x12c <init_module+0x128>
      d8: aa1f03f5     	mov	x21, xzr
      dc: 52800a16     	mov	w22, #0x50              // =80
      e0: 90000013     	adrp	x19, 0x0 <.init.text>
		00000000000000e0:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
      e4: 91000273     	add	x19, x19, #0x0
		00000000000000e4:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
      e8: f9400357     	ldr	x23, [x26]
		00000000000000e8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      ec: aa1303e0     	mov	x0, x19
      f0: 94000000     	bl	0xf0 <init_module+0xec>
		00000000000000f0:  R_AARCH64_CALL26	mutex_lock
      f4: f8766ae0     	ldr	x0, [x23, x22]
      f8: b40000a0     	cbz	x0, 0x10c <init_module+0x108>
      fc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     100: 54000068     	b.hi	0x10c <init_module+0x108>
     104: f8366aff     	str	xzr, [x23, x22]
     108: 94000000     	bl	0x108 <init_module+0x104>
		0000000000000108:  R_AARCH64_CALL26	qcom_smem_state_put
     10c: aa1303e0     	mov	x0, x19
     110: 94000000     	bl	0x110 <init_module+0x10c>
		0000000000000110:  R_AARCH64_CALL26	mutex_unlock
     114: b9800308     	ldrsw	x8, [x24]
		0000000000000114:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     118: 910006b5     	add	x21, x21, #0x1
     11c: 910722d6     	add	x22, x22, #0x1c8
     120: eb0802bf     	cmp	x21, x8
     124: 54fffe2b     	b.lt	0xe8 <init_module+0xe4>
     128: f9400340     	ldr	x0, [x26]
		0000000000000128:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     12c: 94000000     	bl	0x12c <init_module+0x128>
		000000000000012c:  R_AARCH64_CALL26	kfree
     130: f900035f     	str	xzr, [x26]
		0000000000000130:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     134: 14000092     	b	0x37c <init_module+0x378>
     138: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     13c: 910002f7     	add	x23, x23, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     140: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ad
     144: 91000063     	add	x3, x3, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ad
     148: b94006e2     	ldr	w2, [x23, #0x4]
     14c: aa1703e0     	mov	x0, x23
     150: 2a1f03e1     	mov	w1, wzr
     154: 94000000     	bl	0x154 <init_module+0x150>
		0000000000000154:  R_AARCH64_CALL26	alloc_chrdev_region
     158: 35000aa0     	cbnz	w0, 0x2ac <init_module+0x2a8>
     15c: 90000014     	adrp	x20, 0x0 <.init.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     160: 91000294     	add	x20, x20, #0x0
		0000000000000160:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     164: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3e8
     168: 91000021     	add	x1, x1, #0x0
		0000000000000168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3e8
     16c: b9409288     	ldr	w8, [x20, #0x90]
     170: aa1403e0     	mov	x0, x20
     174: 120c2d15     	and	w21, w8, #0xfff00000
     178: 94000000     	bl	0x178 <init_module+0x174>
		0000000000000178:  R_AARCH64_CALL26	cdev_init
     17c: b9409682     	ldr	w2, [x20, #0x94]
     180: aa1403e0     	mov	x0, x20
     184: 2a1503e1     	mov	w1, w21
     188: f9003296     	str	x22, [x20, #0x60]
     18c: 94000000     	bl	0x18c <init_module+0x188>
		000000000000018c:  R_AARCH64_CALL26	cdev_add
     190: 35000980     	cbnz	w0, 0x2c0 <init_module+0x2bc>
     194: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     198: 91000000     	add	x0, x0, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     19c: 94000000     	bl	0x19c <init_module+0x198>
		000000000000019c:  R_AARCH64_CALL26	class_create
     1a0: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     1a4: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     1a8: f9000100     	str	x0, [x8]
		00000000000001a8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     1ac: 54000948     	b.hi	0x2d4 <init_module+0x2d0>
     1b0: b9400308     	ldr	w8, [x24]
		00000000000001b0:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     1b4: aa1803f6     	mov	x22, x24
     1b8: 7100051f     	cmp	w8, #0x1
     1bc: 5400060b     	b.lt	0x27c <init_module+0x278>
     1c0: aa1f03fa     	mov	x26, xzr
     1c4: aa1f03f8     	mov	x24, xzr
     1c8: 2a1f03f3     	mov	w19, wzr
     1cc: 90000017     	adrp	x23, 0x0 <.init.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     1d0: 910002f7     	add	x23, x23, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1d4: 9280001c     	mov	x28, #-0x1              // =-1
     1d8: 9000001b     	adrp	x27, 0x0 <.init.text>
		00000000000001d8:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     1dc: 9100037b     	add	x27, x27, #0x0
		00000000000001dc:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
     1e0: f1003f9f     	cmp	x28, #0xf
     1e4: 54000de0     	b.eq	0x3a0 <init_module+0x39c>
     1e8: f106031f     	cmp	x24, #0x180
     1ec: 54000dc0     	b.eq	0x3a4 <init_module+0x3a0>
     1f0: f8786ae5     	ldr	x5, [x23, x24]
     1f4: b4000285     	cbz	x5, 0x244 <init_module+0x240>
     1f8: f9400360     	ldr	x0, [x27]
     1fc: 11000788     	add	w8, w28, #0x1
     200: aa1f03e1     	mov	x1, xzr
     204: 2a0802a2     	orr	w2, w21, w8
     208: aa1f03e3     	mov	x3, xzr
     20c: 90000004     	adrp	x4, 0x0 <.init.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b2
     210: 91000084     	add	x4, x4, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b2
     214: 94000000     	bl	0x214 <init_module+0x210>
		0000000000000214:  R_AARCH64_CALL26	device_create
     218: f9400b68     	ldr	x8, [x27, #0x10]
     21c: f83a6900     	str	x0, [x8, x26]
     220: f9400b68     	ldr	x8, [x27, #0x10]
     224: f87a6914     	ldr	x20, [x8, x26]
     228: b13ffe9f     	cmn	x20, #0xfff
     22c: 540006e2     	b.hs	0x308 <init_module+0x304>
     230: 8b1a0108     	add	x8, x8, x26
     234: 52800029     	mov	w9, #0x1                // =1
     238: 11000673     	add	w19, w19, #0x1
     23c: 39016109     	strb	w9, [x8, #0x58]
     240: b94002c8     	ldr	w8, [x22]
		0000000000000240:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     244: 91000b89     	add	x9, x28, #0x2
     248: 9100079c     	add	x28, x28, #0x1
     24c: 91006318     	add	x24, x24, #0x18
     250: eb28c13f     	cmp	x9, w8, sxtw
     254: 9107235a     	add	x26, x26, #0x1c8
     258: 54fffc4b     	b.lt	0x1e0 <init_module+0x1dc>
     25c: 34000113     	cbz	w19, 0x27c <init_module+0x278>
     260: 2a1f03f4     	mov	w20, wzr
     264: 14000046     	b	0x37c <init_module+0x378>
     268: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51c
     26c: 91000000     	add	x0, x0, #0x0
		000000000000026c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51c
     270: 94000000     	bl	0x270 <init_module+0x26c>
		0000000000000270:  R_AARCH64_CALL26	_printk
     274: 12800414     	mov	w20, #-0x21             // =-33
     278: 14000041     	b	0x37c <init_module+0x378>
     27c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f
     280: 91000000     	add	x0, x0, #0x0
		0000000000000280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f
     284: 94000000     	bl	0x284 <init_module+0x280>
		0000000000000284:  R_AARCH64_CALL26	_printk
     288: 128002b4     	mov	w20, #-0x16             // =-22
     28c: 9000001a     	adrp	x26, 0x0 <.init.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     290: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     294: 910002f7     	add	x23, x23, #0x0
		0000000000000294:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     298: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     29c: f9400100     	ldr	x0, [x8]
		000000000000029c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     2a0: 94000000     	bl	0x2a0 <init_module+0x29c>
		00000000000002a0:  R_AARCH64_CALL26	class_destroy
     2a4: aa1603f8     	mov	x24, x22
     2a8: 1400000f     	b	0x2e4 <init_module+0x2e0>
     2ac: 2a0003f4     	mov	w20, w0
     2b0: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368
     2b4: 91000000     	add	x0, x0, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368
     2b8: 94000000     	bl	0x2b8 <init_module+0x2b4>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: 1400000f     	b	0x2f8 <init_module+0x2f4>
     2c0: 2a0003f4     	mov	w20, w0
     2c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x620
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x620
     2cc: 94000000     	bl	0x2cc <init_module+0x2c8>
		00000000000002cc:  R_AARCH64_CALL26	_printk
     2d0: 14000008     	b	0x2f0 <init_module+0x2ec>
     2d4: aa0003f4     	mov	x20, x0
     2d8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     2dc: 91000000     	add	x0, x0, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     2e0: 94000000     	bl	0x2e0 <init_module+0x2dc>
		00000000000002e0:  R_AARCH64_CALL26	_printk
     2e4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     2e8: 91000000     	add	x0, x0, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     2ec: 94000000     	bl	0x2ec <init_module+0x2e8>
		00000000000002ec:  R_AARCH64_CALL26	cdev_del
     2f0: 294006e0     	ldp	w0, w1, [x23]
     2f4: 94000000     	bl	0x2f4 <init_module+0x2f0>
		00000000000002f4:  R_AARCH64_CALL26	unregister_chrdev_region
     2f8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
     2fc: 91000000     	add	x0, x0, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
     300: 94000000     	bl	0x300 <init_module+0x2fc>
		0000000000000300:  R_AARCH64_CALL26	platform_driver_unregister
     304: 17ffff70     	b	0xc4 <init_module+0xc0>
     308: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x539
     30c: 91000000     	add	x0, x0, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x539
     310: 94000000     	bl	0x310 <init_module+0x30c>
		0000000000000310:  R_AARCH64_CALL26	_printk
     314: b100079f     	cmn	x28, #0x1
     318: 54fffba0     	b.eq	0x28c <init_module+0x288>
     31c: 9000001a     	adrp	x26, 0x0 <.init.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     320: 52803913     	mov	w19, #0x1c8             // =456
     324: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000324:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     328: 910002f7     	add	x23, x23, #0x0
		0000000000000328:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     32c: f9400348     	ldr	x8, [x26]
		000000000000032c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     330: 92407f89     	and	x9, x28, #0xffffffff
     334: 9bb32129     	umaddl	x9, w9, w19, x8
     338: 39416129     	ldrb	w9, [x9, #0x58]
     33c: 7100053f     	cmp	w9, #0x1
     340: 540000e1     	b.ne	0x35c <init_module+0x358>
     344: b9400b68     	ldr	w8, [x27, #0x8]
     348: f9400360     	ldr	x0, [x27]
     34c: 120c2d08     	and	w8, w8, #0xfff00000
     350: 2a1c0101     	orr	w1, w8, w28
     354: 94000000     	bl	0x354 <init_module+0x350>
		0000000000000354:  R_AARCH64_CALL26	device_destroy
     358: f9400b68     	ldr	x8, [x27, #0x10]
     35c: 91000789     	add	x9, x28, #0x1
     360: d100079c     	sub	x28, x28, #0x1
     364: f100053f     	cmp	x9, #0x1
     368: 54fffe4c     	b.gt	0x330 <init_module+0x32c>
     36c: 17ffffcb     	b	0x298 <init_module+0x294>
     370: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     374: f900011f     	str	xzr, [x8]
		0000000000000374:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     378: 12800174     	mov	w20, #-0xc              // =-12
     37c: 2a1403e0     	mov	w0, w20
     380: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     384: a94457f6     	ldp	x22, x21, [sp, #0x40]
     388: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     38c: a94267fa     	ldp	x26, x25, [sp, #0x20]
     390: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     394: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     398: d50323bf     	autiasp
     39c: d65f03c0     	ret
     3a0: d42aa240     	brk	#0x5512
     3a4: d4200020     	brk	#0x1
     3a8: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
     3ac: 91000108     	add	x8, x8, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
     3b0: d5384113     	mrs	x19, SP_EL0
     3b4: f9402a74     	ldr	x20, [x19, #0x50]
     3b8: f9002a68     	str	x8, [x19, #0x50]
     3bc: 52803909     	mov	w9, #0x1c8              // =456
     3c0: b9800308     	ldrsw	x8, [x24]
		00000000000003c0:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     3c4: aa1803f5     	mov	x21, x24
     3c8: 9bc97d0a     	umulh	x10, x8, x9
     3cc: eb0a03ff     	cmp	xzr, x10
     3d0: 540000e1     	b.ne	0x3ec <init_module+0x3e8>
     3d4: 9b297d00     	smull	x0, w8, w9
     3d8: 5281b801     	mov	w1, #0xdc0              // =3520
     3dc: 94000000     	bl	0x3dc <init_module+0x3d8>
		00000000000003dc:  R_AARCH64_CALL26	__kmalloc_noprof
     3e0: f9002a74     	str	x20, [x19, #0x50]
     3e4: aa1503f8     	mov	x24, x21
     3e8: 17ffff1d     	b	0x5c <init_module+0x58>
     3ec: aa1f03e0     	mov	x0, xzr
     3f0: 17fffffc     	b	0x3e0 <init_module+0x3dc>
