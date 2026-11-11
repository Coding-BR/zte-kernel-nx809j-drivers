
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
      34: 54001029     	b.ls	0x238 <init_module+0x234>
      38: d503201f     	nop
      3c: b9800308     	ldrsw	x8, [x24]
		000000000000003c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      40: 52803909     	mov	w9, #0x1c8              // =456
      44: 9bc97d0a     	umulh	x10, x8, x9
      48: eb0a03ff     	cmp	xzr, x10
      4c: 540017c1     	b.ne	0x344 <init_module+0x340>
      50: 9b297d00     	smull	x0, w8, w9
      54: 5281b801     	mov	w1, #0xdc0              // =3520
      58: 94000000     	bl	0x58 <init_module+0x54>
		0000000000000058:  R_AARCH64_CALL26	__kmalloc_noprof
      5c: 90000019     	adrp	x25, 0x0 <.init.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      60: f9000320     	str	x0, [x25]
		0000000000000060:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      64: b4001740     	cbz	x0, 0x34c <init_module+0x348>
      68: 90000016     	adrp	x22, 0x0 <.init.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      6c: 910002d6     	add	x22, x22, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      70: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
      74: 91000000     	add	x0, x0, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
      78: aa1603e1     	mov	x1, x22
      7c: 94000000     	bl	0x7c <init_module+0x78>
		000000000000007c:  R_AARCH64_CALL26	__platform_driver_register
      80: 2a0003f4     	mov	w20, w0
      84: 34000400     	cbz	w0, 0x104 <init_module+0x100>
      88: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      8c: 91000108     	add	x8, x8, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x94
      90: f8404100     	ldur	x0, [x8, #0x4]
      94: b4000320     	cbz	x0, 0xf8 <init_module+0xf4>
      98: b9400108     	ldr	w8, [x8]
      9c: 7100051f     	cmp	w8, #0x1
      a0: 540002cb     	b.lt	0xf8 <init_module+0xf4>
      a4: aa1f03f5     	mov	x21, xzr
      a8: 52800a16     	mov	w22, #0x50              // =80
      ac: 90000013     	adrp	x19, 0x0 <.init.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
      b0: 91000273     	add	x19, x19, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
      b4: f9400337     	ldr	x23, [x25]
		00000000000000b4:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      b8: aa1303e0     	mov	x0, x19
      bc: 94000000     	bl	0xbc <init_module+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	mutex_lock
      c0: f8766ae0     	ldr	x0, [x23, x22]
      c4: b40000a0     	cbz	x0, 0xd8 <init_module+0xd4>
      c8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      cc: 54000068     	b.hi	0xd8 <init_module+0xd4>
      d0: f8366aff     	str	xzr, [x23, x22]
      d4: 94000000     	bl	0xd4 <init_module+0xd0>
		00000000000000d4:  R_AARCH64_CALL26	qcom_smem_state_put
      d8: aa1303e0     	mov	x0, x19
      dc: 94000000     	bl	0xdc <init_module+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	mutex_unlock
      e0: b9800308     	ldrsw	x8, [x24]
		00000000000000e0:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      e4: 910006b5     	add	x21, x21, #0x1
      e8: 910722d6     	add	x22, x22, #0x1c8
      ec: eb0802bf     	cmp	x21, x8
      f0: 54fffe2b     	b.lt	0xb4 <init_module+0xb0>
      f4: f9400320     	ldr	x0, [x25]
		00000000000000f4:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      f8: 94000000     	bl	0xf8 <init_module+0xf4>
		00000000000000f8:  R_AARCH64_CALL26	kfree
      fc: f900033f     	str	xzr, [x25]
		00000000000000fc:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     100: 14000094     	b	0x350 <init_module+0x34c>
     104: 9000001c     	adrp	x28, 0x0 <.init.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     108: 9100039c     	add	x28, x28, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     10c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x367
     110: 91000063     	add	x3, x3, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x367
     114: b9400782     	ldr	w2, [x28, #0x4]
     118: aa1c03e0     	mov	x0, x28
     11c: 2a1f03e1     	mov	w1, wzr
     120: 94000000     	bl	0x120 <init_module+0x11c>
		0000000000000120:  R_AARCH64_CALL26	alloc_chrdev_region
     124: 35000ac0     	cbnz	w0, 0x27c <init_module+0x278>
     128: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     12c: 91000294     	add	x20, x20, #0x0
		000000000000012c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     130: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3e8
     134: 91000021     	add	x1, x1, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3e8
     138: b9409288     	ldr	w8, [x20, #0x90]
     13c: aa1403e0     	mov	x0, x20
     140: 120c2d15     	and	w21, w8, #0xfff00000
     144: 94000000     	bl	0x144 <init_module+0x140>
		0000000000000144:  R_AARCH64_CALL26	cdev_init
     148: b9409682     	ldr	w2, [x20, #0x94]
     14c: aa1403e0     	mov	x0, x20
     150: 2a1503e1     	mov	w1, w21
     154: f9003296     	str	x22, [x20, #0x60]
     158: 94000000     	bl	0x158 <init_module+0x154>
		0000000000000158:  R_AARCH64_CALL26	cdev_add
     15c: 350009a0     	cbnz	w0, 0x290 <init_module+0x28c>
     160: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     164: 91000000     	add	x0, x0, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     168: 94000000     	bl	0x168 <init_module+0x164>
		0000000000000168:  R_AARCH64_CALL26	class_create
     16c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     170: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     174: f9000100     	str	x0, [x8]
		0000000000000174:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     178: 54000968     	b.hi	0x2a4 <init_module+0x2a0>
     17c: b9400308     	ldr	w8, [x24]
		000000000000017c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     180: aa1803f7     	mov	x23, x24
     184: 7100051f     	cmp	w8, #0x1
     188: 5400062b     	b.lt	0x24c <init_module+0x248>
     18c: aa1f03fc     	mov	x28, xzr
     190: aa1f03f3     	mov	x19, xzr
     194: 2a1f03f9     	mov	w25, wzr
     198: 90000018     	adrp	x24, 0x0 <.init.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     19c: 91000318     	add	x24, x24, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     1a0: 9280001b     	mov	x27, #-0x1              // =-1
     1a4: 9000001a     	adrp	x26, 0x0 <.init.text>
		00000000000001a4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     1a8: 9100035a     	add	x26, x26, #0x0
		00000000000001a8:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
     1ac: 90000016     	adrp	x22, 0x0 <.init.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c
     1b0: 910002d6     	add	x22, x22, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c
     1b4: f1003f7f     	cmp	x27, #0xf
     1b8: 54000de0     	b.eq	0x374 <init_module+0x370>
     1bc: f106027f     	cmp	x19, #0x180
     1c0: 54000dc0     	b.eq	0x378 <init_module+0x374>
     1c4: f8736b05     	ldr	x5, [x24, x19]
     1c8: b4000265     	cbz	x5, 0x214 <init_module+0x210>
     1cc: f9400340     	ldr	x0, [x26]
     1d0: 11000768     	add	w8, w27, #0x1
     1d4: aa1f03e1     	mov	x1, xzr
     1d8: 2a0802a2     	orr	w2, w21, w8
     1dc: aa1f03e3     	mov	x3, xzr
     1e0: aa1603e4     	mov	x4, x22
     1e4: 94000000     	bl	0x1e4 <init_module+0x1e0>
		00000000000001e4:  R_AARCH64_CALL26	device_create
     1e8: f9400b48     	ldr	x8, [x26, #0x10]
     1ec: f83c6900     	str	x0, [x8, x28]
     1f0: f9400b48     	ldr	x8, [x26, #0x10]
     1f4: f87c6914     	ldr	x20, [x8, x28]
     1f8: b13ffe9f     	cmn	x20, #0xfff
     1fc: 540006e2     	b.hs	0x2d8 <init_module+0x2d4>
     200: 8b1c0108     	add	x8, x8, x28
     204: 52800029     	mov	w9, #0x1                // =1
     208: 11000739     	add	w25, w25, #0x1
     20c: 39016109     	strb	w9, [x8, #0x58]
     210: b94002e8     	ldr	w8, [x23]
		0000000000000210:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     214: 91000b69     	add	x9, x27, #0x2
     218: 9100077b     	add	x27, x27, #0x1
     21c: 91006273     	add	x19, x19, #0x18
     220: eb28c13f     	cmp	x9, w8, sxtw
     224: 9107239c     	add	x28, x28, #0x1c8
     228: 54fffc6b     	b.lt	0x1b4 <init_module+0x1b0>
     22c: 34000119     	cbz	w25, 0x24c <init_module+0x248>
     230: 2a1f03f4     	mov	w20, wzr
     234: 14000047     	b	0x350 <init_module+0x34c>
     238: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x495
     23c: 91000000     	add	x0, x0, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x495
     240: 94000000     	bl	0x240 <init_module+0x23c>
		0000000000000240:  R_AARCH64_CALL26	_printk
     244: 12800414     	mov	w20, #-0x21             // =-33
     248: 14000042     	b	0x350 <init_module+0x34c>
     24c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b
     250: 91000000     	add	x0, x0, #0x0
		0000000000000250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b
     254: 94000000     	bl	0x254 <init_module+0x250>
		0000000000000254:  R_AARCH64_CALL26	_printk
     258: 128002b4     	mov	w20, #-0x16             // =-22
     25c: 90000019     	adrp	x25, 0x0 <.init.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     260: 9000001c     	adrp	x28, 0x0 <.init.text>
		0000000000000260:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     264: 9100039c     	add	x28, x28, #0x0
		0000000000000264:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     268: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000268:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     26c: f94002a0     	ldr	x0, [x21]
		000000000000026c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     270: 94000000     	bl	0x270 <init_module+0x26c>
		0000000000000270:  R_AARCH64_CALL26	class_destroy
     274: aa1703f8     	mov	x24, x23
     278: 1400000f     	b	0x2b4 <init_module+0x2b0>
     27c: 2a0003f4     	mov	w20, w0
     280: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x322
     284: 91000000     	add	x0, x0, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x322
     288: 94000000     	bl	0x288 <init_module+0x284>
		0000000000000288:  R_AARCH64_CALL26	_printk
     28c: 1400000f     	b	0x2c8 <init_module+0x2c4>
     290: 2a0003f4     	mov	w20, w0
     294: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     298: 91000000     	add	x0, x0, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     29c: 94000000     	bl	0x29c <init_module+0x298>
		000000000000029c:  R_AARCH64_CALL26	_printk
     2a0: 14000008     	b	0x2c0 <init_module+0x2bc>
     2a4: aa0003f4     	mov	x20, x0
     2a8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     2b0: 94000000     	bl	0x2b0 <init_module+0x2ac>
		00000000000002b0:  R_AARCH64_CALL26	_printk
     2b4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002b4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     2b8: 91000000     	add	x0, x0, #0x0
		00000000000002b8:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     2bc: 94000000     	bl	0x2bc <init_module+0x2b8>
		00000000000002bc:  R_AARCH64_CALL26	cdev_del
     2c0: 29400780     	ldp	w0, w1, [x28]
     2c4: 94000000     	bl	0x2c4 <init_module+0x2c0>
		00000000000002c4:  R_AARCH64_CALL26	unregister_chrdev_region
     2c8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
     2cc: 91000000     	add	x0, x0, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
     2d0: 94000000     	bl	0x2d0 <init_module+0x2cc>
		00000000000002d0:  R_AARCH64_CALL26	platform_driver_unregister
     2d4: 17ffff6d     	b	0x88 <init_module+0x84>
     2d8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2
     2dc: 91000000     	add	x0, x0, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2
     2e0: 94000000     	bl	0x2e0 <init_module+0x2dc>
		00000000000002e0:  R_AARCH64_CALL26	_printk
     2e4: b100077f     	cmn	x27, #0x1
     2e8: 54fffba0     	b.eq	0x25c <init_module+0x258>
     2ec: 90000019     	adrp	x25, 0x0 <.init.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     2f0: 52803913     	mov	w19, #0x1c8             // =456
     2f4: 9000001c     	adrp	x28, 0x0 <.init.text>
		00000000000002f4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     2f8: 9100039c     	add	x28, x28, #0x0
		00000000000002f8:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     2fc: f9400328     	ldr	x8, [x25]
		00000000000002fc:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     300: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     304: 92407f69     	and	x9, x27, #0xffffffff
     308: 9bb32129     	umaddl	x9, w9, w19, x8
     30c: 39416129     	ldrb	w9, [x9, #0x58]
     310: 7100053f     	cmp	w9, #0x1
     314: 540000e1     	b.ne	0x330 <init_module+0x32c>
     318: b9400b48     	ldr	w8, [x26, #0x8]
     31c: f9400340     	ldr	x0, [x26]
     320: 120c2d08     	and	w8, w8, #0xfff00000
     324: 2a1b0101     	orr	w1, w8, w27
     328: 94000000     	bl	0x328 <init_module+0x324>
		0000000000000328:  R_AARCH64_CALL26	device_destroy
     32c: f9400b48     	ldr	x8, [x26, #0x10]
     330: 91000769     	add	x9, x27, #0x1
     334: d100077b     	sub	x27, x27, #0x1
     338: f100053f     	cmp	x9, #0x1
     33c: 54fffe4c     	b.gt	0x304 <init_module+0x300>
     340: 17ffffcb     	b	0x26c <init_module+0x268>
     344: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     348: f900011f     	str	xzr, [x8]
		0000000000000348:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     34c: 12800174     	mov	w20, #-0xc              // =-12
     350: 2a1403e0     	mov	w0, w20
     354: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     358: a94457f6     	ldp	x22, x21, [sp, #0x40]
     35c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     360: a94267fa     	ldp	x26, x25, [sp, #0x20]
     364: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     368: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     36c: d50323bf     	autiasp
     370: d65f03c0     	ret
     374: d42aa240     	brk	#0x5512
     378: d4200020     	brk	#0x1
     37c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000037c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
     380: 91000108     	add	x8, x8, #0x0
		0000000000000380:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
     384: d5384113     	mrs	x19, SP_EL0
     388: f9402a74     	ldr	x20, [x19, #0x50]
     38c: f9002a68     	str	x8, [x19, #0x50]
     390: 52803909     	mov	w9, #0x1c8              // =456
     394: b9800308     	ldrsw	x8, [x24]
		0000000000000394:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     398: aa1803f5     	mov	x21, x24
     39c: 9bc97d0a     	umulh	x10, x8, x9
     3a0: eb0a03ff     	cmp	xzr, x10
     3a4: 540000e1     	b.ne	0x3c0 <init_module+0x3bc>
     3a8: 9b297d00     	smull	x0, w8, w9
     3ac: 5281b801     	mov	w1, #0xdc0              // =3520
     3b0: 94000000     	bl	0x3b0 <init_module+0x3ac>
		00000000000003b0:  R_AARCH64_CALL26	__kmalloc_noprof
     3b4: f9002a74     	str	x20, [x19, #0x50]
     3b8: aa1503f8     	mov	x24, x21
     3bc: 17ffff28     	b	0x5c <init_module+0x58>
     3c0: aa1f03e0     	mov	x0, xzr
     3c4: 17fffffc     	b	0x3b4 <init_module+0x3b0>
