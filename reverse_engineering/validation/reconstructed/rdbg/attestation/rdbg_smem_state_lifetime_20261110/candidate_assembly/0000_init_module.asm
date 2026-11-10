
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
      24: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      28: b9400108     	ldr	w8, [x8]
		0000000000000028:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      2c: 51004508     	sub	w8, w8, #0x11
      30: 3100451f     	cmn	w8, #0x11
      34: 54000fa9     	b.ls	0x228 <init_module+0x224>
      38: d503201f     	nop
      3c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      40: 52803909     	mov	w9, #0x1c8              // =456
      44: b9800108     	ldrsw	x8, [x8]
		0000000000000044:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      48: 9bc97d0a     	umulh	x10, x8, x9
      4c: eb0a03ff     	cmp	xzr, x10
      50: 54001701     	b.ne	0x330 <init_module+0x32c>
      54: 9b297d00     	smull	x0, w8, w9
      58: 5281b801     	mov	w1, #0xdc0              // =3520
      5c: 94000000     	bl	0x5c <init_module+0x58>
		000000000000005c:  R_AARCH64_CALL26	__kmalloc_noprof
      60: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      64: f90002e0     	str	x0, [x23]
		0000000000000064:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      68: b4001680     	cbz	x0, 0x338 <init_module+0x334>
      6c: 90000016     	adrp	x22, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      70: 910002d6     	add	x22, x22, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      74: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000074:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
      78: 91000000     	add	x0, x0, #0x0
		0000000000000078:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
      7c: aa1603e1     	mov	x1, x22
      80: 94000000     	bl	0x80 <init_module+0x7c>
		0000000000000080:  R_AARCH64_CALL26	__platform_driver_register
      84: 2a0003f4     	mov	w20, w0
      88: 34000340     	cbz	w0, 0xf0 <init_module+0xec>
      8c: 90000013     	adrp	x19, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      90: 91000273     	add	x19, x19, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x94
      94: f8404260     	ldur	x0, [x19, #0x4]
      98: b4000260     	cbz	x0, 0xe4 <init_module+0xe0>
      9c: b9400269     	ldr	w9, [x19]
      a0: 7100053f     	cmp	w9, #0x1
      a4: 5400020b     	b.lt	0xe4 <init_module+0xe0>
      a8: aa1f03f5     	mov	x21, xzr
      ac: 52800a16     	mov	w22, #0x50              // =80
      b0: f8766808     	ldr	x8, [x0, x22]
      b4: b4000108     	cbz	x8, 0xd4 <init_module+0xd0>
      b8: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
      bc: 540000c8     	b.hi	0xd4 <init_module+0xd0>
      c0: f836681f     	str	xzr, [x0, x22]
      c4: aa0803e0     	mov	x0, x8
      c8: 94000000     	bl	0xc8 <init_module+0xc4>
		00000000000000c8:  R_AARCH64_CALL26	qcom_smem_state_put
      cc: f8404260     	ldur	x0, [x19, #0x4]
      d0: b9400269     	ldr	w9, [x19]
      d4: 910006b5     	add	x21, x21, #0x1
      d8: 910722d6     	add	x22, x22, #0x1c8
      dc: eb29c2bf     	cmp	x21, w9, sxtw
      e0: 54fffe8b     	b.lt	0xb0 <init_module+0xac>
      e4: 94000000     	bl	0xe4 <init_module+0xe0>
		00000000000000e4:  R_AARCH64_CALL26	kfree
      e8: f90002ff     	str	xzr, [x23]
		00000000000000e8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      ec: 14000094     	b	0x33c <init_module+0x338>
      f0: 90000018     	adrp	x24, 0x0 <.init.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
      f4: 91000318     	add	x24, x24, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
      f8: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x367
      fc: 91000063     	add	x3, x3, #0x0
		00000000000000fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x367
     100: b9400702     	ldr	w2, [x24, #0x4]
     104: aa1803e0     	mov	x0, x24
     108: 2a1f03e1     	mov	w1, wzr
     10c: 94000000     	bl	0x10c <init_module+0x108>
		000000000000010c:  R_AARCH64_CALL26	alloc_chrdev_region
     110: 35000ac0     	cbnz	w0, 0x268 <init_module+0x264>
     114: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     118: 91000294     	add	x20, x20, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     11c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3e8
     120: 91000021     	add	x1, x1, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3e8
     124: b9409288     	ldr	w8, [x20, #0x90]
     128: aa1403e0     	mov	x0, x20
     12c: 120c2d15     	and	w21, w8, #0xfff00000
     130: 94000000     	bl	0x130 <init_module+0x12c>
		0000000000000130:  R_AARCH64_CALL26	cdev_init
     134: b9409682     	ldr	w2, [x20, #0x94]
     138: aa1403e0     	mov	x0, x20
     13c: 2a1503e1     	mov	w1, w21
     140: f9003296     	str	x22, [x20, #0x60]
     144: 94000000     	bl	0x144 <init_module+0x140>
		0000000000000144:  R_AARCH64_CALL26	cdev_add
     148: 350009a0     	cbnz	w0, 0x27c <init_module+0x278>
     14c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     150: 91000000     	add	x0, x0, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     154: 94000000     	bl	0x154 <init_module+0x150>
		0000000000000154:  R_AARCH64_CALL26	class_create
     158: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     15c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     160: f9000100     	str	x0, [x8]
		0000000000000160:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     164: 54000968     	b.hi	0x290 <init_module+0x28c>
     168: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     16c: b9400108     	ldr	w8, [x8]
		000000000000016c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     170: 7100051f     	cmp	w8, #0x1
     174: 5400064b     	b.lt	0x23c <init_module+0x238>
     178: aa1f03fc     	mov	x28, xzr
     17c: aa1f03f3     	mov	x19, xzr
     180: 2a1f03f9     	mov	w25, wzr
     184: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     188: 910002f7     	add	x23, x23, #0x0
		0000000000000188:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     18c: 9280001b     	mov	x27, #-0x1              // =-1
     190: 9000001a     	adrp	x26, 0x0 <.init.text>
		0000000000000190:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     194: 9100035a     	add	x26, x26, #0x0
		0000000000000194:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
     198: 90000016     	adrp	x22, 0x0 <.init.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c
     19c: 910002d6     	add	x22, x22, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c
     1a0: 52800038     	mov	w24, #0x1               // =1
     1a4: f1003f7f     	cmp	x27, #0xf
     1a8: 54000dc0     	b.eq	0x360 <init_module+0x35c>
     1ac: f106027f     	cmp	x19, #0x180
     1b0: 54000da0     	b.eq	0x364 <init_module+0x360>
     1b4: f8736ae5     	ldr	x5, [x23, x19]
     1b8: b4000265     	cbz	x5, 0x204 <init_module+0x200>
     1bc: f9400340     	ldr	x0, [x26]
     1c0: 11000768     	add	w8, w27, #0x1
     1c4: aa1f03e1     	mov	x1, xzr
     1c8: 2a0802a2     	orr	w2, w21, w8
     1cc: aa1f03e3     	mov	x3, xzr
     1d0: aa1603e4     	mov	x4, x22
     1d4: 94000000     	bl	0x1d4 <init_module+0x1d0>
		00000000000001d4:  R_AARCH64_CALL26	device_create
     1d8: f9400b48     	ldr	x8, [x26, #0x10]
     1dc: f83c6900     	str	x0, [x8, x28]
     1e0: f9400b48     	ldr	x8, [x26, #0x10]
     1e4: f87c6914     	ldr	x20, [x8, x28]
     1e8: b13ffe9f     	cmn	x20, #0xfff
     1ec: 540006c2     	b.hs	0x2c4 <init_module+0x2c0>
     1f0: 8b1c0108     	add	x8, x8, x28
     1f4: 11000739     	add	w25, w25, #0x1
     1f8: 39016118     	strb	w24, [x8, #0x58]
     1fc: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     200: b9400108     	ldr	w8, [x8]
		0000000000000200:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     204: 91000b69     	add	x9, x27, #0x2
     208: 9100077b     	add	x27, x27, #0x1
     20c: 91006273     	add	x19, x19, #0x18
     210: eb28c13f     	cmp	x9, w8, sxtw
     214: 9107239c     	add	x28, x28, #0x1c8
     218: 54fffc6b     	b.lt	0x1a4 <init_module+0x1a0>
     21c: 34000119     	cbz	w25, 0x23c <init_module+0x238>
     220: 2a1f03f4     	mov	w20, wzr
     224: 14000046     	b	0x33c <init_module+0x338>
     228: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x495
     22c: 91000000     	add	x0, x0, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x495
     230: 94000000     	bl	0x230 <init_module+0x22c>
		0000000000000230:  R_AARCH64_CALL26	_printk
     234: 12800414     	mov	w20, #-0x21             // =-33
     238: 14000041     	b	0x33c <init_module+0x338>
     23c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b
     240: 91000000     	add	x0, x0, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b
     244: 94000000     	bl	0x244 <init_module+0x240>
		0000000000000244:  R_AARCH64_CALL26	_printk
     248: 128002b4     	mov	w20, #-0x16             // =-22
     24c: 90000017     	adrp	x23, 0x0 <.init.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     250: 90000018     	adrp	x24, 0x0 <.init.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     254: 91000318     	add	x24, x24, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     258: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     25c: f94002a0     	ldr	x0, [x21]
		000000000000025c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     260: 94000000     	bl	0x260 <init_module+0x25c>
		0000000000000260:  R_AARCH64_CALL26	class_destroy
     264: 1400000f     	b	0x2a0 <init_module+0x29c>
     268: 2a0003f4     	mov	w20, w0
     26c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000026c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x322
     270: 91000000     	add	x0, x0, #0x0
		0000000000000270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x322
     274: 94000000     	bl	0x274 <init_module+0x270>
		0000000000000274:  R_AARCH64_CALL26	_printk
     278: 1400000f     	b	0x2b4 <init_module+0x2b0>
     27c: 2a0003f4     	mov	w20, w0
     280: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     284: 91000000     	add	x0, x0, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     288: 94000000     	bl	0x288 <init_module+0x284>
		0000000000000288:  R_AARCH64_CALL26	_printk
     28c: 14000008     	b	0x2ac <init_module+0x2a8>
     290: aa0003f4     	mov	x20, x0
     294: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     298: 91000000     	add	x0, x0, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     29c: 94000000     	bl	0x29c <init_module+0x298>
		000000000000029c:  R_AARCH64_CALL26	_printk
     2a0: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     2a4: 91000000     	add	x0, x0, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     2a8: 94000000     	bl	0x2a8 <init_module+0x2a4>
		00000000000002a8:  R_AARCH64_CALL26	cdev_del
     2ac: 29400700     	ldp	w0, w1, [x24]
     2b0: 94000000     	bl	0x2b0 <init_module+0x2ac>
		00000000000002b0:  R_AARCH64_CALL26	unregister_chrdev_region
     2b4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002b4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
     2b8: 91000000     	add	x0, x0, #0x0
		00000000000002b8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
     2bc: 94000000     	bl	0x2bc <init_module+0x2b8>
		00000000000002bc:  R_AARCH64_CALL26	platform_driver_unregister
     2c0: 17ffff73     	b	0x8c <init_module+0x88>
     2c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2
     2cc: 94000000     	bl	0x2cc <init_module+0x2c8>
		00000000000002cc:  R_AARCH64_CALL26	_printk
     2d0: b100077f     	cmn	x27, #0x1
     2d4: 54fffbc0     	b.eq	0x24c <init_module+0x248>
     2d8: 90000017     	adrp	x23, 0x0 <.init.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     2dc: 52803913     	mov	w19, #0x1c8             // =456
     2e0: 90000018     	adrp	x24, 0x0 <.init.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     2e4: 91000318     	add	x24, x24, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     2e8: f94002e8     	ldr	x8, [x23]
		00000000000002e8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     2ec: 90000015     	adrp	x21, 0x0 <.init.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     2f0: 92407f69     	and	x9, x27, #0xffffffff
     2f4: 9bb32129     	umaddl	x9, w9, w19, x8
     2f8: 39416129     	ldrb	w9, [x9, #0x58]
     2fc: 7100053f     	cmp	w9, #0x1
     300: 540000e1     	b.ne	0x31c <init_module+0x318>
     304: b9400b48     	ldr	w8, [x26, #0x8]
     308: f9400340     	ldr	x0, [x26]
     30c: 120c2d08     	and	w8, w8, #0xfff00000
     310: 2a1b0101     	orr	w1, w8, w27
     314: 94000000     	bl	0x314 <init_module+0x310>
		0000000000000314:  R_AARCH64_CALL26	device_destroy
     318: f9400b48     	ldr	x8, [x26, #0x10]
     31c: 91000769     	add	x9, x27, #0x1
     320: d100077b     	sub	x27, x27, #0x1
     324: f100053f     	cmp	x9, #0x1
     328: 54fffe4c     	b.gt	0x2f0 <init_module+0x2ec>
     32c: 17ffffcc     	b	0x25c <init_module+0x258>
     330: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     334: f900011f     	str	xzr, [x8]
		0000000000000334:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     338: 12800174     	mov	w20, #-0xc              // =-12
     33c: 2a1403e0     	mov	w0, w20
     340: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     344: a94457f6     	ldp	x22, x21, [sp, #0x40]
     348: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     34c: a94267fa     	ldp	x26, x25, [sp, #0x20]
     350: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     354: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     358: d50323bf     	autiasp
     35c: d65f03c0     	ret
     360: d42aa240     	brk	#0x5512
     364: d4200020     	brk	#0x1
     368: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
     36c: 91000108     	add	x8, x8, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
     370: d5384113     	mrs	x19, SP_EL0
     374: f9402a74     	ldr	x20, [x19, #0x50]
     378: f9002a68     	str	x8, [x19, #0x50]
     37c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000037c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     380: b9800108     	ldrsw	x8, [x8]
		0000000000000380:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     384: 52803909     	mov	w9, #0x1c8              // =456
     388: 9bc97d0a     	umulh	x10, x8, x9
     38c: eb0a03ff     	cmp	xzr, x10
     390: 540000c1     	b.ne	0x3a8 <init_module+0x3a4>
     394: 9b297d00     	smull	x0, w8, w9
     398: 5281b801     	mov	w1, #0xdc0              // =3520
     39c: 94000000     	bl	0x39c <init_module+0x398>
		000000000000039c:  R_AARCH64_CALL26	__kmalloc_noprof
     3a0: f9002a74     	str	x20, [x19, #0x50]
     3a4: 17ffff2f     	b	0x60 <init_module+0x5c>
     3a8: aa1f03e0     	mov	x0, xzr
     3ac: 17fffffd     	b	0x3a0 <init_module+0x39c>
