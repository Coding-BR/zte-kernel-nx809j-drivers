
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_misc_probe>:
       4: d503233f     	paciasp
       8: d103c3ff     	sub	sp, sp, #0xf0
       c: a9097bfd     	stp	x29, x30, [sp, #0x90]
      10: a90a6ffc     	stp	x28, x27, [sp, #0xa0]
      14: a90b67fa     	stp	x26, x25, [sp, #0xb0]
      18: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
      1c: a90d57f6     	stp	x22, x21, [sp, #0xd0]
      20: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
      24: 910243fd     	add	x29, sp, #0x90
      28: d5384108     	mrs	x8, SP_EL0
      2c: aa0003f3     	mov	x19, x0
      30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x397
      34: 91000000     	add	x0, x0, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x397
      38: f9438908     	ldr	x8, [x8, #0x710]
      3c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
      40: 91000021     	add	x1, x1, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
      44: f81f83a8     	stur	x8, [x29, #-0x8]
      48: 94000000     	bl	0x48 <zte_misc_probe+0x44>
		0000000000000048:  R_AARCH64_CALL26	_printk
      4c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95
      50: 91000000     	add	x0, x0, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95
      54: aa1f03e1     	mov	x1, xzr
      58: a9007fff     	stp	xzr, xzr, [sp]
      5c: a907ffff     	stp	xzr, xzr, [sp, #0x78]
      60: a906ffff     	stp	xzr, xzr, [sp, #0x68]
      64: a905ffff     	stp	xzr, xzr, [sp, #0x58]
      68: a904ffff     	stp	xzr, xzr, [sp, #0x48]
      6c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
      70: a902ffff     	stp	xzr, xzr, [sp, #0x28]
      74: a901ffff     	stp	xzr, xzr, [sp, #0x18]
      78: f9000bff     	str	xzr, [sp, #0x10]
      7c: 94000000     	bl	0x7c <zte_misc_probe+0x78>
		000000000000007c:  R_AARCH64_CALL26	of_find_node_opts_by_path
      80: b5000080     	cbnz	x0, 0x90 <zte_misc_probe+0x8c>
      84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x200
      88: 91000000     	add	x0, x0, #0x0
		0000000000000088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x200
      8c: 14000008     	b	0xac <zte_misc_probe+0xa8>
      90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf
      94: 91000021     	add	x1, x1, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf
      98: 910003e2     	mov	x2, sp
      9c: 94000000     	bl	0x9c <zte_misc_probe+0x98>
		000000000000009c:  R_AARCH64_CALL26	of_property_read_string
      a0: 36f80340     	tbz	w0, #0x1f, 0x108 <zte_misc_probe+0x104>
      a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a
      a8: 91000000     	add	x0, x0, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a
      ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x224
      b0: 91000021     	add	x1, x1, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x224
      b4: 94000000     	bl	0xb4 <zte_misc_probe+0xb0>
		00000000000000b4:  R_AARCH64_CALL26	_printk
      b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x311
      bc: 91000000     	add	x0, x0, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x311
      c0: 94000000     	bl	0xc0 <zte_misc_probe+0xbc>
		00000000000000c0:  R_AARCH64_CALL26	_printk
      c4: f9417e74     	ldr	x20, [x19, #0x2f8]
      c8: b50005b4     	cbnz	x20, 0x17c <zte_misc_probe+0x178>
      cc: 12800240     	mov	w0, #-0x13              // =-19
      d0: d5384108     	mrs	x8, SP_EL0
      d4: f9438908     	ldr	x8, [x8, #0x710]
      d8: f85f83a9     	ldur	x9, [x29, #-0x8]
      dc: eb09011f     	cmp	x8, x9
      e0: 54000d81     	b.ne	0x290 <zte_misc_probe+0x28c>
      e4: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
      e8: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
      ec: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
      f0: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
      f4: a94a6ffc     	ldp	x28, x27, [sp, #0xa0]
      f8: a9497bfd     	ldp	x29, x30, [sp, #0x90]
      fc: 9103c3ff     	add	sp, sp, #0xf0
     100: d50323bf     	autiasp
     104: d65f03c0     	ret
     108: f94003e0     	ldr	x0, [sp]
     10c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
     110: 91000021     	add	x1, x1, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
     114: 94000000     	bl	0x114 <zte_misc_probe+0x110>
		0000000000000114:  R_AARCH64_CALL26	strstr
     118: b50000a0     	cbnz	x0, 0x12c <zte_misc_probe+0x128>
     11c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6
     120: 91000000     	add	x0, x0, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6
     124: 94000000     	bl	0x124 <zte_misc_probe+0x120>
		0000000000000124:  R_AARCH64_CALL26	_printk
     128: 17ffffe4     	b	0xb8 <zte_misc_probe+0xb4>
     12c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000012c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
     130: 91000021     	add	x1, x1, #0x0
		0000000000000130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
     134: 910023e2     	add	x2, sp, #0x8
     138: 94000000     	bl	0x138 <zte_misc_probe+0x134>
		0000000000000138:  R_AARCH64_CALL26	sscanf
     13c: b9400be8     	ldr	w8, [sp, #0x8]
     140: 528d0c6a     	mov	w10, #0x6863            // =26723
     144: b840b3e9     	ldur	w9, [sp, #0xb]
     148: 72ae4c2a     	movk	w10, #0x7261, lsl #16
     14c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c8
     150: 91000000     	add	x0, x0, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c8
     154: 6b0a011f     	cmp	w8, w10
     158: 528cee48     	mov	w8, #0x6772             // =26482
     15c: 910023e2     	add	x2, sp, #0x8
     160: 72ae4ca8     	movk	w8, #0x7265, lsl #16
     164: 7a480120     	ccmp	w9, w8, #0x0, eq
     168: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x108
     16c: 1a9f17e1     	cset	w1, eq
     170: 39000101     	strb	w1, [x8]
		0000000000000170:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x108
     174: 94000000     	bl	0x174 <zte_misc_probe+0x170>
		0000000000000174:  R_AARCH64_CALL26	_printk
     178: 17ffffd0     	b	0xb8 <zte_misc_probe+0xb4>
     17c: aa1403e0     	mov	x0, x20
     180: aa1f03e1     	mov	x1, xzr
     184: 94000000     	bl	0x184 <zte_misc_probe+0x180>
		0000000000000184:  R_AARCH64_CALL26	of_get_next_child
     188: b4000740     	cbz	x0, 0x270 <zte_misc_probe+0x26c>
     18c: aa0003f5     	mov	x21, x0
     190: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
     194: 910002d6     	add	x22, x22, #0x0
		0000000000000194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
     198: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d
     19c: 910002f7     	add	x23, x23, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d
     1a0: 9000001a     	adrp	x26, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	zte_gpios
     1a4: 9100035a     	add	x26, x26, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	zte_gpios
     1a8: 90000018     	adrp	x24, 0x0 <.text>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
     1ac: 91000318     	add	x24, x24, #0x0
		00000000000001ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
     1b0: 1280001b     	mov	w27, #-0x1              // =-1
     1b4: 90000019     	adrp	x25, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb
     1b8: 91000339     	add	x25, x25, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb
     1bc: 14000009     	b	0x1e0 <zte_misc_probe+0x1dc>
     1c0: 91004260     	add	x0, x19, #0x10
     1c4: aa1703e1     	mov	x1, x23
     1c8: 94000000     	bl	0x1c8 <zte_misc_probe+0x1c4>
		00000000000001c8:  R_AARCH64_CALL26	_dev_warn
     1cc: aa1403e0     	mov	x0, x20
     1d0: aa1503e1     	mov	x1, x21
     1d4: 94000000     	bl	0x1d4 <zte_misc_probe+0x1d0>
		00000000000001d4:  R_AARCH64_CALL26	of_get_next_child
     1d8: aa0003f5     	mov	x21, x0
     1dc: b40004a0     	cbz	x0, 0x270 <zte_misc_probe+0x26c>
     1e0: aa1503e0     	mov	x0, x21
     1e4: aa1603e1     	mov	x1, x22
     1e8: aa1f03e2     	mov	x2, xzr
     1ec: 94000000     	bl	0x1ec <zte_misc_probe+0x1e8>
		00000000000001ec:  R_AARCH64_CALL26	of_find_property
     1f0: b4fffe80     	cbz	x0, 0x1c0 <zte_misc_probe+0x1bc>
     1f4: 71003f7f     	cmp	w27, #0xf
     1f8: 54000360     	b.eq	0x264 <zte_misc_probe+0x260>
     1fc: aa1503e0     	mov	x0, x21
     200: aa1603e1     	mov	x1, x22
     204: aa1f03e2     	mov	x2, xzr
     208: 1100077b     	add	w27, w27, #0x1
     20c: 94000000     	bl	0x20c <zte_misc_probe+0x208>
		000000000000020c:  R_AARCH64_CALL26	of_get_property
     210: 52819801     	mov	w1, #0xcc0              // =3264
     214: 94000000     	bl	0x214 <zte_misc_probe+0x210>
		0000000000000214:  R_AARCH64_CALL26	kstrdup
     218: 52800108     	mov	w8, #0x8                // =8
     21c: b37c7f68     	bfi	x8, x27, #4, #32
     220: f104011f     	cmp	x8, #0x100
     224: 54000348     	b.hi	0x28c <zte_misc_probe+0x288>
     228: d37c7f68     	ubfiz	x8, x27, #4, #32
     22c: aa1803e1     	mov	x1, x24
     230: 2a1f03e2     	mov	w2, wzr
     234: 8b08035c     	add	x28, x26, x8
     238: f9000780     	str	x0, [x28, #0x8]
     23c: aa1503e0     	mov	x0, x21
     240: 94000000     	bl	0x240 <zte_misc_probe+0x23c>
		0000000000000240:  R_AARCH64_CALL26	of_get_named_gpio
     244: 7100437f     	cmp	w27, #0x10
     248: 54000220     	b.eq	0x28c <zte_misc_probe+0x288>
     24c: f9400782     	ldr	x2, [x28, #0x8]
     250: 2a0003e1     	mov	w1, w0
     254: b9000380     	str	w0, [x28]
     258: aa1903e0     	mov	x0, x25
     25c: 94000000     	bl	0x25c <zte_misc_probe+0x258>
		000000000000025c:  R_AARCH64_CALL26	_printk
     260: 17ffffdb     	b	0x1cc <zte_misc_probe+0x1c8>
     264: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34b
     268: 91000000     	add	x0, x0, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34b
     26c: 94000000     	bl	0x26c <zte_misc_probe+0x268>
		000000000000026c:  R_AARCH64_CALL26	_printk
     270: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5
     274: 91000000     	add	x0, x0, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5
     278: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     27c: 91000021     	add	x1, x1, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     280: 94000000     	bl	0x280 <zte_misc_probe+0x27c>
		0000000000000280:  R_AARCH64_CALL26	_printk
     284: 2a1f03e0     	mov	w0, wzr
     288: 17ffff92     	b	0xd0 <zte_misc_probe+0xcc>
     28c: d4200020     	brk	#0x1
     290: 94000000     	bl	0x290 <zte_misc_probe+0x28c>
		0000000000000290:  R_AARCH64_CALL26	__stack_chk_fail
