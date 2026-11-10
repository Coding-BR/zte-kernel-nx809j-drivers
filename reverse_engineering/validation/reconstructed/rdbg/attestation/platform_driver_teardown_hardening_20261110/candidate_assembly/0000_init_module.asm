
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
      34: 54000d09     	b.ls	0x1d4 <init_module+0x1d0>
      38: d503201f     	nop
      3c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      40: 52803909     	mov	w9, #0x1c8              // =456
      44: b9800108     	ldrsw	x8, [x8]
		0000000000000044:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      48: 9bc97d0a     	umulh	x10, x8, x9
      4c: eb0a03ff     	cmp	xzr, x10
      50: 54001401     	b.ne	0x2d0 <init_module+0x2cc>
      54: 9b297d00     	smull	x0, w8, w9
      58: 5281b801     	mov	w1, #0xdc0              // =3520
      5c: 94000000     	bl	0x5c <init_module+0x58>
		000000000000005c:  R_AARCH64_CALL26	__kmalloc_noprof
      60: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      64: f90002e0     	str	x0, [x23]
		0000000000000064:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      68: b4001380     	cbz	x0, 0x2d8 <init_module+0x2d4>
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
      88: 340000a0     	cbz	w0, 0x9c <init_module+0x98>
      8c: f94002e0     	ldr	x0, [x23]
		000000000000008c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      90: 94000000     	bl	0x90 <init_module+0x8c>
		0000000000000090:  R_AARCH64_CALL26	kfree
      94: f90002ff     	str	xzr, [x23]
		0000000000000094:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      98: 14000091     	b	0x2dc <init_module+0x2d8>
      9c: 90000013     	adrp	x19, 0x0 <.init.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
      a0: 91000273     	add	x19, x19, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
      a4: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x367
      a8: 91000063     	add	x3, x3, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x367
      ac: b9400662     	ldr	w2, [x19, #0x4]
      b0: aa1303e0     	mov	x0, x19
      b4: 2a1f03e1     	mov	w1, wzr
      b8: 94000000     	bl	0xb8 <init_module+0xb4>
		00000000000000b8:  R_AARCH64_CALL26	alloc_chrdev_region
      bc: 35000ac0     	cbnz	w0, 0x214 <init_module+0x210>
      c0: 90000014     	adrp	x20, 0x0 <.init.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
      c4: 91000294     	add	x20, x20, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
      c8: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3e8
      cc: 91000021     	add	x1, x1, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3e8
      d0: b9409288     	ldr	w8, [x20, #0x90]
      d4: aa1403e0     	mov	x0, x20
      d8: 120c2d15     	and	w21, w8, #0xfff00000
      dc: 94000000     	bl	0xdc <init_module+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	cdev_init
      e0: b9409682     	ldr	w2, [x20, #0x94]
      e4: aa1403e0     	mov	x0, x20
      e8: 2a1503e1     	mov	w1, w21
      ec: f9003296     	str	x22, [x20, #0x60]
      f0: 94000000     	bl	0xf0 <init_module+0xec>
		00000000000000f0:  R_AARCH64_CALL26	cdev_add
      f4: 350009a0     	cbnz	w0, 0x228 <init_module+0x224>
      f8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      fc: 91000000     	add	x0, x0, #0x0
		00000000000000fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     100: 94000000     	bl	0x100 <init_module+0xfc>
		0000000000000100:  R_AARCH64_CALL26	class_create
     104: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     108: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     10c: f9000100     	str	x0, [x8]
		000000000000010c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     110: 54000968     	b.hi	0x23c <init_module+0x238>
     114: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     118: b9400108     	ldr	w8, [x8]
		0000000000000118:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     11c: 7100051f     	cmp	w8, #0x1
     120: 5400064b     	b.lt	0x1e8 <init_module+0x1e4>
     124: aa1f03fc     	mov	x28, xzr
     128: aa1f03f3     	mov	x19, xzr
     12c: 2a1f03f9     	mov	w25, wzr
     130: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     134: 910002f7     	add	x23, x23, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     138: 9280001b     	mov	x27, #-0x1              // =-1
     13c: 9000001a     	adrp	x26, 0x0 <.init.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     140: 9100035a     	add	x26, x26, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
     144: 90000016     	adrp	x22, 0x0 <.init.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c
     148: 910002d6     	add	x22, x22, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c
     14c: 52800038     	mov	w24, #0x1               // =1
     150: f1003f7f     	cmp	x27, #0xf
     154: 54000d60     	b.eq	0x300 <init_module+0x2fc>
     158: f106027f     	cmp	x19, #0x180
     15c: 54000d40     	b.eq	0x304 <init_module+0x300>
     160: f8736ae5     	ldr	x5, [x23, x19]
     164: b4000265     	cbz	x5, 0x1b0 <init_module+0x1ac>
     168: f9400340     	ldr	x0, [x26]
     16c: 11000768     	add	w8, w27, #0x1
     170: aa1f03e1     	mov	x1, xzr
     174: 2a0802a2     	orr	w2, w21, w8
     178: aa1f03e3     	mov	x3, xzr
     17c: aa1603e4     	mov	x4, x22
     180: 94000000     	bl	0x180 <init_module+0x17c>
		0000000000000180:  R_AARCH64_CALL26	device_create
     184: f9400b48     	ldr	x8, [x26, #0x10]
     188: f83c6900     	str	x0, [x8, x28]
     18c: f9400b48     	ldr	x8, [x26, #0x10]
     190: f87c6914     	ldr	x20, [x8, x28]
     194: b13ffe9f     	cmn	x20, #0xfff
     198: 540006c2     	b.hs	0x270 <init_module+0x26c>
     19c: 8b1c0108     	add	x8, x8, x28
     1a0: 11000739     	add	w25, w25, #0x1
     1a4: 39016118     	strb	w24, [x8, #0x58]
     1a8: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     1ac: b9400108     	ldr	w8, [x8]
		00000000000001ac:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     1b0: 91000b69     	add	x9, x27, #0x2
     1b4: 9100077b     	add	x27, x27, #0x1
     1b8: 91006273     	add	x19, x19, #0x18
     1bc: eb28c13f     	cmp	x9, w8, sxtw
     1c0: 9107239c     	add	x28, x28, #0x1c8
     1c4: 54fffc6b     	b.lt	0x150 <init_module+0x14c>
     1c8: 34000119     	cbz	w25, 0x1e8 <init_module+0x1e4>
     1cc: 2a1f03f4     	mov	w20, wzr
     1d0: 14000043     	b	0x2dc <init_module+0x2d8>
     1d4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x495
     1d8: 91000000     	add	x0, x0, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x495
     1dc: 94000000     	bl	0x1dc <init_module+0x1d8>
		00000000000001dc:  R_AARCH64_CALL26	_printk
     1e0: 12800414     	mov	w20, #-0x21             // =-33
     1e4: 1400003e     	b	0x2dc <init_module+0x2d8>
     1e8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b
     1ec: 91000000     	add	x0, x0, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b
     1f0: 94000000     	bl	0x1f0 <init_module+0x1ec>
		00000000000001f0:  R_AARCH64_CALL26	_printk
     1f4: 128002b4     	mov	w20, #-0x16             // =-22
     1f8: 90000017     	adrp	x23, 0x0 <.init.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     1fc: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
     200: f9400100     	ldr	x0, [x8]
		0000000000000200:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x88
     204: 94000000     	bl	0x204 <init_module+0x200>
		0000000000000204:  R_AARCH64_CALL26	class_destroy
     208: 90000013     	adrp	x19, 0x0 <.init.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x90
     20c: 91000273     	add	x19, x19, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x90
     210: 1400000f     	b	0x24c <init_module+0x248>
     214: 2a0003f4     	mov	w20, w0
     218: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x322
     21c: 91000000     	add	x0, x0, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x322
     220: 94000000     	bl	0x220 <init_module+0x21c>
		0000000000000220:  R_AARCH64_CALL26	_printk
     224: 1400000f     	b	0x260 <init_module+0x25c>
     228: 2a0003f4     	mov	w20, w0
     22c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
     234: 94000000     	bl	0x234 <init_module+0x230>
		0000000000000234:  R_AARCH64_CALL26	_printk
     238: 14000008     	b	0x258 <init_module+0x254>
     23c: aa0003f4     	mov	x20, x0
     240: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     244: 91000000     	add	x0, x0, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     248: 94000000     	bl	0x248 <init_module+0x244>
		0000000000000248:  R_AARCH64_CALL26	_printk
     24c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
     250: 91000000     	add	x0, x0, #0x0
		0000000000000250:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
     254: 94000000     	bl	0x254 <init_module+0x250>
		0000000000000254:  R_AARCH64_CALL26	cdev_del
     258: 29400660     	ldp	w0, w1, [x19]
     25c: 94000000     	bl	0x25c <init_module+0x258>
		000000000000025c:  R_AARCH64_CALL26	unregister_chrdev_region
     260: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000260:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
     264: 91000000     	add	x0, x0, #0x0
		0000000000000264:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
     268: 94000000     	bl	0x268 <init_module+0x264>
		0000000000000268:  R_AARCH64_CALL26	platform_driver_unregister
     26c: 17ffff88     	b	0x8c <init_module+0x88>
     270: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2
     274: 91000000     	add	x0, x0, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2
     278: 94000000     	bl	0x278 <init_module+0x274>
		0000000000000278:  R_AARCH64_CALL26	_printk
     27c: b100077f     	cmn	x27, #0x1
     280: 54fffbc0     	b.eq	0x1f8 <init_module+0x1f4>
     284: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000284:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     288: 52803913     	mov	w19, #0x1c8             // =456
     28c: f94002e8     	ldr	x8, [x23]
		000000000000028c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     290: 92407f69     	and	x9, x27, #0xffffffff
     294: 9bb32129     	umaddl	x9, w9, w19, x8
     298: 39416129     	ldrb	w9, [x9, #0x58]
     29c: 7100053f     	cmp	w9, #0x1
     2a0: 540000e1     	b.ne	0x2bc <init_module+0x2b8>
     2a4: b9400b48     	ldr	w8, [x26, #0x8]
     2a8: f9400340     	ldr	x0, [x26]
     2ac: 120c2d08     	and	w8, w8, #0xfff00000
     2b0: 2a1b0101     	orr	w1, w8, w27
     2b4: 94000000     	bl	0x2b4 <init_module+0x2b0>
		00000000000002b4:  R_AARCH64_CALL26	device_destroy
     2b8: f9400b48     	ldr	x8, [x26, #0x10]
     2bc: 91000769     	add	x9, x27, #0x1
     2c0: d100077b     	sub	x27, x27, #0x1
     2c4: f100053f     	cmp	x9, #0x1
     2c8: 54fffe4c     	b.gt	0x290 <init_module+0x28c>
     2cc: 17ffffcc     	b	0x1fc <init_module+0x1f8>
     2d0: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     2d4: f900011f     	str	xzr, [x8]
		00000000000002d4:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     2d8: 12800174     	mov	w20, #-0xc              // =-12
     2dc: 2a1403e0     	mov	w0, w20
     2e0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     2e4: a94457f6     	ldp	x22, x21, [sp, #0x40]
     2e8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     2ec: a94267fa     	ldp	x26, x25, [sp, #0x20]
     2f0: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     2f4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     2f8: d50323bf     	autiasp
     2fc: d65f03c0     	ret
     300: d42aa240     	brk	#0x5512
     304: d4200020     	brk	#0x1
     308: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
     30c: 91000108     	add	x8, x8, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
     310: d5384113     	mrs	x19, SP_EL0
     314: f9402a74     	ldr	x20, [x19, #0x50]
     318: f9002a68     	str	x8, [x19, #0x50]
     31c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     320: b9800108     	ldrsw	x8, [x8]
		0000000000000320:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     324: 52803909     	mov	w9, #0x1c8              // =456
     328: 9bc97d0a     	umulh	x10, x8, x9
     32c: eb0a03ff     	cmp	xzr, x10
     330: 540000c1     	b.ne	0x348 <init_module+0x344>
     334: 9b297d00     	smull	x0, w8, w9
     338: 5281b801     	mov	w1, #0xdc0              // =3520
     33c: 94000000     	bl	0x33c <init_module+0x338>
		000000000000033c:  R_AARCH64_CALL26	__kmalloc_noprof
     340: f9002a74     	str	x20, [x19, #0x50]
     344: 17ffff47     	b	0x60 <init_module+0x5c>
     348: aa1f03e0     	mov	x0, xzr
     34c: 17fffffd     	b	0x340 <init_module+0x33c>
