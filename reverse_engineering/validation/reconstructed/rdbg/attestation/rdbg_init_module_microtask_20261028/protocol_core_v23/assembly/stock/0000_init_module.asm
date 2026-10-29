
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
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x94
      28: b9400108     	ldr	w8, [x8]
		0000000000000028:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
      2c: 51004508     	sub	w8, w8, #0x11
      30: 3100451f     	cmn	w8, #0x11
      34: 54000c89     	b.ls	0x1c4 <init_module+0x1c0>
      38: d503201f     	nop
      3c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x94
      40: 52803909     	mov	w9, #0x1c8              // =456
      44: b9800108     	ldrsw	x8, [x8]
		0000000000000044:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
      48: 9bc97d0a     	umulh	x10, x8, x9
      4c: eb0a03ff     	cmp	xzr, x10
      50: 54001361     	b.ne	0x2bc <init_module+0x2b8>
      54: 9b297d00     	smull	x0, w8, w9
      58: 5281b801     	mov	w1, #0xdc0              // =3520
      5c: 94000000     	bl	0x5c <init_module+0x58>
		000000000000005c:  R_AARCH64_CALL26	__kmalloc_noprof
      60: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
      64: f90002e0     	str	x0, [x23]
		0000000000000064:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
      68: b40012e0     	cbz	x0, 0x2c4 <init_module+0x2c0>
      6c: 90000016     	adrp	x22, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      70: 910002d6     	add	x22, x22, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      74: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000074:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xa0
      78: 91000000     	add	x0, x0, #0x0
		0000000000000078:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xa0
      7c: aa1603e1     	mov	x1, x22
      80: 94000000     	bl	0x80 <init_module+0x7c>
		0000000000000080:  R_AARCH64_CALL26	__platform_driver_register
      84: 2a0003f4     	mov	w20, w0
      88: 35001200     	cbnz	w0, 0x2c8 <init_module+0x2c4>
      8c: 90000013     	adrp	x19, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x90
      90: 91000273     	add	x19, x19, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x90
      94: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35a
      98: 91000063     	add	x3, x3, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35a
      9c: b9400662     	ldr	w2, [x19, #0x4]
      a0: aa1303e0     	mov	x0, x19
      a4: 2a1f03e1     	mov	w1, wzr
      a8: 94000000     	bl	0xa8 <init_module+0xa4>
		00000000000000a8:  R_AARCH64_CALL26	alloc_chrdev_region
      ac: 35000ac0     	cbnz	w0, 0x204 <init_module+0x200>
      b0: 90000014     	adrp	x20, 0x0 <.init.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.data
      b4: 91000294     	add	x20, x20, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.data
      b8: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3e8
      bc: 91000021     	add	x1, x1, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3e8
      c0: b9409288     	ldr	w8, [x20, #0x90]
      c4: aa1403e0     	mov	x0, x20
      c8: 120c2d15     	and	w21, w8, #0xfff00000
      cc: 94000000     	bl	0xcc <init_module+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	cdev_init
      d0: b9409682     	ldr	w2, [x20, #0x94]
      d4: aa1403e0     	mov	x0, x20
      d8: 2a1503e1     	mov	w1, w21
      dc: f9003296     	str	x22, [x20, #0x60]
      e0: 94000000     	bl	0xe0 <init_module+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	cdev_add
      e4: 350009a0     	cbnz	w0, 0x218 <init_module+0x214>
      e8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      ec: 91000000     	add	x0, x0, #0x0
		00000000000000ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      f0: 94000000     	bl	0xf0 <init_module+0xec>
		00000000000000f0:  R_AARCH64_CALL26	class_create
      f4: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
      f8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      fc: f9000100     	str	x0, [x8]
		00000000000000fc:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x88
     100: 54000968     	b.hi	0x22c <init_module+0x228>
     104: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x94
     108: b9400108     	ldr	w8, [x8]
		0000000000000108:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
     10c: 7100051f     	cmp	w8, #0x1
     110: 5400064b     	b.lt	0x1d8 <init_module+0x1d4>
     114: aa1f03fc     	mov	x28, xzr
     118: aa1f03f3     	mov	x19, xzr
     11c: 2a1f03f9     	mov	w25, wzr
     120: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4f0
     124: 910002f7     	add	x23, x23, #0x0
		0000000000000124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4f0
     128: 9280001b     	mov	x27, #-0x1              // =-1
     12c: 9000001a     	adrp	x26, 0x0 <.init.text>
		000000000000012c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     130: 9100035a     	add	x26, x26, #0x0
		0000000000000130:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     134: 90000016     	adrp	x22, 0x0 <.init.text>
		0000000000000134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24a
     138: 910002d6     	add	x22, x22, #0x0
		0000000000000138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24a
     13c: 52800038     	mov	w24, #0x1               // =1
     140: f1003f7f     	cmp	x27, #0xf
     144: 54000d40     	b.eq	0x2ec <init_module+0x2e8>
     148: f106027f     	cmp	x19, #0x180
     14c: 54000d20     	b.eq	0x2f0 <init_module+0x2ec>
     150: f8736ae5     	ldr	x5, [x23, x19]
     154: b4000265     	cbz	x5, 0x1a0 <init_module+0x19c>
     158: f9400340     	ldr	x0, [x26]
     15c: 11000768     	add	w8, w27, #0x1
     160: aa1f03e1     	mov	x1, xzr
     164: 2a0802a2     	orr	w2, w21, w8
     168: aa1f03e3     	mov	x3, xzr
     16c: aa1603e4     	mov	x4, x22
     170: 94000000     	bl	0x170 <init_module+0x16c>
		0000000000000170:  R_AARCH64_CALL26	device_create
     174: f9400b48     	ldr	x8, [x26, #0x10]
     178: f83c6900     	str	x0, [x8, x28]
     17c: f9400b48     	ldr	x8, [x26, #0x10]
     180: f87c6914     	ldr	x20, [x8, x28]
     184: b13ffe9f     	cmn	x20, #0xfff
     188: 540006a2     	b.hs	0x25c <init_module+0x258>
     18c: 8b1c0108     	add	x8, x8, x28
     190: 11000739     	add	w25, w25, #0x1
     194: 39016118     	strb	w24, [x8, #0x58]
     198: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x94
     19c: b9400108     	ldr	w8, [x8]
		000000000000019c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
     1a0: 91000b69     	add	x9, x27, #0x2
     1a4: 9100077b     	add	x27, x27, #0x1
     1a8: 91006273     	add	x19, x19, #0x18
     1ac: eb28c13f     	cmp	x9, w8, sxtw
     1b0: 9107239c     	add	x28, x28, #0x1c8
     1b4: 54fffc6b     	b.lt	0x140 <init_module+0x13c>
     1b8: 34000119     	cbz	w25, 0x1d8 <init_module+0x1d4>
     1bc: 2a1f03f4     	mov	w20, wzr
     1c0: 14000042     	b	0x2c8 <init_module+0x2c4>
     1c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46d
     1c8: 91000000     	add	x0, x0, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46d
     1cc: 94000000     	bl	0x1cc <init_module+0x1c8>
		00000000000001cc:  R_AARCH64_CALL26	_printk
     1d0: 12800414     	mov	w20, #-0x21             // =-33
     1d4: 1400003d     	b	0x2c8 <init_module+0x2c4>
     1d8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x552
     1dc: 91000000     	add	x0, x0, #0x0
		00000000000001dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x552
     1e0: 94000000     	bl	0x1e0 <init_module+0x1dc>
		00000000000001e0:  R_AARCH64_CALL26	_printk
     1e4: 128002b4     	mov	w20, #-0x16             // =-22
     1e8: 90000017     	adrp	x23, 0x0 <.init.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
     1ec: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000001ec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     1f0: f9400100     	ldr	x0, [x8]
		00000000000001f0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x88
     1f4: 94000000     	bl	0x1f4 <init_module+0x1f0>
		00000000000001f4:  R_AARCH64_CALL26	class_destroy
     1f8: 90000013     	adrp	x19, 0x0 <.init.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x90
     1fc: 91000273     	add	x19, x19, #0x0
		00000000000001fc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x90
     200: 1400000f     	b	0x23c <init_module+0x238>
     204: 2a0003f4     	mov	w20, w0
     208: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x315
     20c: 91000000     	add	x0, x0, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x315
     210: 94000000     	bl	0x210 <init_module+0x20c>
		0000000000000210:  R_AARCH64_CALL26	_printk
     214: 1400000f     	b	0x250 <init_module+0x24c>
     218: 2a0003f4     	mov	w20, w0
     21c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x528
     220: 91000000     	add	x0, x0, #0x0
		0000000000000220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x528
     224: 94000000     	bl	0x224 <init_module+0x220>
		0000000000000224:  R_AARCH64_CALL26	_printk
     228: 14000008     	b	0x248 <init_module+0x244>
     22c: aa0003f4     	mov	x20, x0
     230: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     234: 91000000     	add	x0, x0, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     238: 94000000     	bl	0x238 <init_module+0x234>
		0000000000000238:  R_AARCH64_CALL26	_printk
     23c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     240: 91000000     	add	x0, x0, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	.data
     244: 94000000     	bl	0x244 <init_module+0x240>
		0000000000000244:  R_AARCH64_CALL26	cdev_del
     248: 29400660     	ldp	w0, w1, [x19]
     24c: 94000000     	bl	0x24c <init_module+0x248>
		000000000000024c:  R_AARCH64_CALL26	unregister_chrdev_region
     250: f94002e0     	ldr	x0, [x23]
		0000000000000250:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
     254: 94000000     	bl	0x254 <init_module+0x250>
		0000000000000254:  R_AARCH64_CALL26	kfree
     258: 1400001c     	b	0x2c8 <init_module+0x2c4>
     25c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c9
     260: 91000000     	add	x0, x0, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c9
     264: 94000000     	bl	0x264 <init_module+0x260>
		0000000000000264:  R_AARCH64_CALL26	_printk
     268: b100077f     	cmn	x27, #0x1
     26c: 54fffbe0     	b.eq	0x1e8 <init_module+0x1e4>
     270: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
     274: 52803913     	mov	w19, #0x1c8             // =456
     278: f94002e8     	ldr	x8, [x23]
		0000000000000278:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
     27c: 92407f69     	and	x9, x27, #0xffffffff
     280: 9bb32129     	umaddl	x9, w9, w19, x8
     284: 39416129     	ldrb	w9, [x9, #0x58]
     288: 7100053f     	cmp	w9, #0x1
     28c: 540000e1     	b.ne	0x2a8 <init_module+0x2a4>
     290: b9400b48     	ldr	w8, [x26, #0x8]
     294: f9400340     	ldr	x0, [x26]
     298: 120c2d08     	and	w8, w8, #0xfff00000
     29c: 2a1b0101     	orr	w1, w8, w27
     2a0: 94000000     	bl	0x2a0 <init_module+0x29c>
		00000000000002a0:  R_AARCH64_CALL26	device_destroy
     2a4: f9400b48     	ldr	x8, [x26, #0x10]
     2a8: 91000769     	add	x9, x27, #0x1
     2ac: d100077b     	sub	x27, x27, #0x1
     2b0: f100053f     	cmp	x9, #0x1
     2b4: 54fffe4c     	b.gt	0x27c <init_module+0x278>
     2b8: 17ffffcd     	b	0x1ec <init_module+0x1e8>
     2bc: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000002bc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
     2c0: f900011f     	str	xzr, [x8]
		00000000000002c0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
     2c4: 12800174     	mov	w20, #-0xc              // =-12
     2c8: 2a1403e0     	mov	w0, w20
     2cc: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     2d0: a94457f6     	ldp	x22, x21, [sp, #0x40]
     2d4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     2d8: a94267fa     	ldp	x26, x25, [sp, #0x20]
     2dc: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     2e0: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     2e4: d50323bf     	autiasp
     2e8: d65f03c0     	ret
     2ec: d42aa240     	brk	#0x5512
     2f0: d4200020     	brk	#0x1
     2f4: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000002f4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     2f8: 91000108     	add	x8, x8, #0x0
		00000000000002f8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     2fc: d5384113     	mrs	x19, SP_EL0
     300: f9402a74     	ldr	x20, [x19, #0x50]
     304: f9002a68     	str	x8, [x19, #0x50]
     308: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x94
     30c: b9800108     	ldrsw	x8, [x8]
		000000000000030c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
     310: 52803909     	mov	w9, #0x1c8              // =456
     314: 9bc97d0a     	umulh	x10, x8, x9
     318: eb0a03ff     	cmp	xzr, x10
     31c: 540000c1     	b.ne	0x334 <init_module+0x330>
     320: 9b297d00     	smull	x0, w8, w9
     324: 5281b801     	mov	w1, #0xdc0              // =3520
     328: 94000000     	bl	0x328 <init_module+0x324>
		0000000000000328:  R_AARCH64_CALL26	__kmalloc_noprof
     32c: f9002a74     	str	x20, [x19, #0x50]
     330: 17ffff4c     	b	0x60 <init_module+0x5c>
     334: aa1f03e0     	mov	x0, xzr
     338: 17fffffd     	b	0x32c <init_module+0x328>
