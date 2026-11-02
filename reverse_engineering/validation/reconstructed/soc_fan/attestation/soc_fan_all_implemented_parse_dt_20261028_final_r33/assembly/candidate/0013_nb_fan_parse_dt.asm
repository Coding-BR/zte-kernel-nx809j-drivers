
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000040 <nb_fan_parse_dt>:
      40: d503233f     	paciasp
      44: d101c3ff     	sub	sp, sp, #0x70
      48: a9027bfd     	stp	x29, x30, [sp, #0x20]
      4c: a90367fa     	stp	x26, x25, [sp, #0x30]
      50: a9045ff8     	stp	x24, x23, [sp, #0x40]
      54: a90557f6     	stp	x22, x21, [sp, #0x50]
      58: a9064ff4     	stp	x20, x19, [sp, #0x60]
      5c: 910083fd     	add	x29, sp, #0x20
      60: d5384108     	mrs	x8, SP_EL0
      64: aa0003f3     	mov	x19, x0
      68: aa1f03e1     	mov	x1, xzr
      6c: f9438908     	ldr	x8, [x8, #0x710]
      70: f81f83a8     	stur	x8, [x29, #-0x8]
      74: f9400008     	ldr	x8, [x0]
      78: a900ffff     	stp	xzr, xzr, [sp, #0x8]
      7c: f90003ff     	str	xzr, [sp]
      80: f9417514     	ldr	x20, [x8, #0x2e8]
      84: aa1403e0     	mov	x0, x20
      88: 94000000     	bl	0x88 <nb_fan_parse_dt+0x48>
		0000000000000088:  R_AARCH64_CALL26	of_get_next_available_child
      8c: b4000ca0     	cbz	x0, 0x220 <nb_fan_parse_dt+0x1e0>
      90: aa0003e1     	mov	x1, x0
      94: 12800015     	mov	w21, #-0x1              // =-1
      98: aa1403e0     	mov	x0, x20
      9c: 94000000     	bl	0x9c <nb_fan_parse_dt+0x5c>
		000000000000009c:  R_AARCH64_CALL26	of_get_next_available_child
      a0: aa0003e1     	mov	x1, x0
      a4: 110006b5     	add	w21, w21, #0x1
      a8: b5ffff80     	cbnz	x0, 0x98 <nb_fan_parse_dt+0x58>
      ac: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
      b0: 6b0802bf     	cmp	w21, w8
      b4: 54000b62     	b.hs	0x220 <nb_fan_parse_dt+0x1e0>
      b8: 35000c95     	cbnz	w21, 0x248 <nb_fan_parse_dt+0x208>
      bc: f9400260     	ldr	x0, [x19]
      c0: 52801501     	mov	w1, #0xa8               // =168
      c4: 5281b802     	mov	w2, #0xdc0              // =3520
      c8: 94000000     	bl	0xc8 <nb_fan_parse_dt+0x88>
		00000000000000c8:  R_AARCH64_CALL26	devm_kmalloc
      cc: f9000660     	str	x0, [x19, #0x8]
      d0: b4000d40     	cbz	x0, 0x278 <nb_fan_parse_dt+0x238>
      d4: aa1403e0     	mov	x0, x20
      d8: aa1f03e1     	mov	x1, xzr
      dc: 94000000     	bl	0xdc <nb_fan_parse_dt+0x9c>
		00000000000000dc:  R_AARCH64_CALL26	of_get_next_available_child
      e0: b4000940     	cbz	x0, 0x208 <nb_fan_parse_dt+0x1c8>
      e4: aa0003f5     	mov	x21, x0
      e8: 90000016     	adrp	x22, 0x0 <.text>
		00000000000000e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56e
      ec: 910002d6     	add	x22, x22, #0x0
		00000000000000ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56e
      f0: 90000017     	adrp	x23, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
      f4: 910002f7     	add	x23, x23, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
      f8: 90000018     	adrp	x24, 0x0 <.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
      fc: 91000318     	add	x24, x24, #0x0
		00000000000000fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     100: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     104: 91000339     	add	x25, x25, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     108: 14000006     	b	0x120 <nb_fan_parse_dt+0xe0>
     10c: aa1403e0     	mov	x0, x20
     110: aa1503e1     	mov	x1, x21
     114: 94000000     	bl	0x114 <nb_fan_parse_dt+0xd4>
		0000000000000114:  R_AARCH64_CALL26	of_get_next_available_child
     118: aa0003f5     	mov	x21, x0
     11c: b4000760     	cbz	x0, 0x208 <nb_fan_parse_dt+0x1c8>
     120: aa1503e0     	mov	x0, x21
     124: aa1603e1     	mov	x1, x22
     128: aa1f03e2     	mov	x2, xzr
     12c: 94000000     	bl	0x12c <nb_fan_parse_dt+0xec>
		000000000000012c:  R_AARCH64_CALL26	of_get_property
     130: b5000060     	cbnz	x0, 0x13c <nb_fan_parse_dt+0xfc>
     134: f94002a0     	ldr	x0, [x21]
     138: b4001000     	cbz	x0, 0x338 <nb_fan_parse_dt+0x2f8>
     13c: 39400008     	ldrb	w8, [x0]
     140: 71019908     	subs	w8, w8, #0x66
     144: 54000081     	b.ne	0x154 <nb_fan_parse_dt+0x114>
     148: 39400408     	ldrb	w8, [x0, #0x1]
     14c: 71018508     	subs	w8, w8, #0x61
     150: 54000540     	b.eq	0x1f8 <nb_fan_parse_dt+0x1b8>
     154: 35fffdc8     	cbnz	w8, 0x10c <nb_fan_parse_dt+0xcc>
     158: f9400668     	ldr	x8, [x19, #0x8]
     15c: b4fffd88     	cbz	x8, 0x10c <nb_fan_parse_dt+0xcc>
     160: aa0003fa     	mov	x26, x0
     164: f9400260     	ldr	x0, [x19]
     168: 910062a1     	add	x1, x21, #0x18
     16c: aa1f03e2     	mov	x2, xzr
     170: 94000000     	bl	0x170 <nb_fan_parse_dt+0x130>
		0000000000000170:  R_AARCH64_CALL26	devm_fwnode_pwm_get
     174: b13ffc1f     	cmn	x0, #0xfff
     178: 540004c2     	b.hs	0x210 <nb_fan_parse_dt+0x1d0>
     17c: f9400668     	ldr	x8, [x19, #0x8]
     180: 910003e2     	mov	x2, sp
     184: f900111a     	str	x26, [x8, #0x20]
     188: f9400668     	ldr	x8, [x19, #0x8]
     18c: f9003500     	str	x0, [x8, #0x68]
     190: f9400668     	ldr	x8, [x19, #0x8]
     194: f9403501     	ldr	x1, [x8, #0x68]
     198: a941a820     	ldp	x0, x10, [x1, #0x18]
     19c: f9402028     	ldr	x8, [x1, #0x40]
     1a0: b9402829     	ldr	w9, [x1, #0x28]
     1a4: a900a3ff     	stp	xzr, x8, [sp, #0x8]
     1a8: f941c808     	ldr	x8, [x0, #0x390]
     1ac: b90013e9     	str	w9, [sp, #0x10]
     1b0: f90003ea     	str	x10, [sp]
     1b4: f9400d08     	ldr	x8, [x8, #0x18]
     1b8: 79002bff     	strh	wzr, [sp, #0x14]
     1bc: b85fc110     	ldur	w16, [x8, #-0x4]
     1c0: 7292fa11     	movk	w17, #0x97d0
     1c4: 72bbba11     	movk	w17, #0xddd0, lsl #16
     1c8: 6b11021f     	cmp	w16, w17
     1cc: 54000040     	b.eq	0x1d4 <nb_fan_parse_dt+0x194>
     1d0: d4304500     	brk	#0x8228
     1d4: d63f0100     	blr	x8
     1d8: 35000640     	cbnz	w0, 0x2a0 <nb_fan_parse_dt+0x260>
     1dc: aa1703e0     	mov	x0, x23
     1e0: aa1803e1     	mov	x1, x24
     1e4: aa1903e2     	mov	x2, x25
     1e8: 52805c83     	mov	w3, #0x2e4              // =740
     1ec: aa1a03e4     	mov	x4, x26
     1f0: 94000000     	bl	0x1f0 <nb_fan_parse_dt+0x1b0>
		00000000000001f0:  R_AARCH64_CALL26	_printk
     1f4: 17ffffc6     	b	0x10c <nb_fan_parse_dt+0xcc>
     1f8: 39400808     	ldrb	w8, [x0, #0x2]
     1fc: 5101b908     	sub	w8, w8, #0x6e
     200: 35fff868     	cbnz	w8, 0x10c <nb_fan_parse_dt+0xcc>
     204: 17ffffd5     	b	0x158 <nb_fan_parse_dt+0x118>
     208: 2a1f03f3     	mov	w19, wzr
     20c: 1400003d     	b	0x300 <nb_fan_parse_dt+0x2c0>
     210: 3108141f     	cmn	w0, #0x205
     214: 540005e1     	b.ne	0x2d0 <nb_fan_parse_dt+0x290>
     218: 12804093     	mov	w19, #-0x205            // =-517
     21c: 14000039     	b	0x300 <nb_fan_parse_dt+0x2c0>
     220: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x457
     224: 91000000     	add	x0, x0, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x457
     228: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     22c: 91000021     	add	x1, x1, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     230: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     234: 91000042     	add	x2, x2, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     238: 52805443     	mov	w3, #0x2a2              // =674
     23c: 94000000     	bl	0x23c <nb_fan_parse_dt+0x1fc>
		000000000000023c:  R_AARCH64_CALL26	_printk
     240: 12800253     	mov	w19, #-0x13             // =-19
     244: 1400002f     	b	0x300 <nb_fan_parse_dt+0x2c0>
     248: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x263
     24c: 91000000     	add	x0, x0, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x263
     250: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     254: 91000021     	add	x1, x1, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     258: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     25c: 91000042     	add	x2, x2, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     260: 110006a4     	add	w4, w21, #0x1
     264: 528054e3     	mov	w3, #0x2a7              // =679
     268: 52800025     	mov	w5, #0x1                // =1
     26c: 94000000     	bl	0x26c <nb_fan_parse_dt+0x22c>
		000000000000026c:  R_AARCH64_CALL26	_printk
     270: 128002b3     	mov	w19, #-0x16             // =-22
     274: 14000023     	b	0x300 <nb_fan_parse_dt+0x2c0>
     278: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f7
     27c: 91000000     	add	x0, x0, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f7
     280: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     284: 91000021     	add	x1, x1, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     288: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     28c: 91000042     	add	x2, x2, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     290: 528057a3     	mov	w3, #0x2bd              // =701
     294: 94000000     	bl	0x294 <nb_fan_parse_dt+0x254>
		0000000000000294:  R_AARCH64_CALL26	_printk
     298: 12800173     	mov	w19, #-0xc              // =-12
     29c: 14000019     	b	0x300 <nb_fan_parse_dt+0x2c0>
     2a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34b
     2a4: 91000108     	add	x8, x8, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34b
     2a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     2ac: 91000021     	add	x1, x1, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     2b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     2b4: 91000042     	add	x2, x2, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     2b8: aa0003f3     	mov	x19, x0
     2bc: aa0803e0     	mov	x0, x8
     2c0: 52805c23     	mov	w3, #0x2e1              // =737
     2c4: aa1a03e4     	mov	x4, x26
     2c8: 94000000     	bl	0x2c8 <nb_fan_parse_dt+0x288>
		00000000000002c8:  R_AARCH64_CALL26	_printk
     2cc: 1400000d     	b	0x300 <nb_fan_parse_dt+0x2c0>
     2d0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x481
     2d4: 91000108     	add	x8, x8, #0x0
		00000000000002d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x481
     2d8: aa0003f3     	mov	x19, x0
     2dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     2e0: 91000021     	add	x1, x1, #0x0
		00000000000002e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     2e4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     2e8: 91000042     	add	x2, x2, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     2ec: aa0803e0     	mov	x0, x8
     2f0: 52805aa3     	mov	w3, #0x2d5              // =725
     2f4: aa1a03e4     	mov	x4, x26
     2f8: 2a1303e5     	mov	w5, w19
     2fc: 94000000     	bl	0x2fc <nb_fan_parse_dt+0x2bc>
		00000000000002fc:  R_AARCH64_CALL26	_printk
     300: d5384108     	mrs	x8, SP_EL0
     304: f9438908     	ldr	x8, [x8, #0x710]
     308: f85f83a9     	ldur	x9, [x29, #-0x8]
     30c: eb09011f     	cmp	x8, x9
     310: 54000241     	b.ne	0x358 <nb_fan_parse_dt+0x318>
     314: 2a1303e0     	mov	w0, w19
     318: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     31c: a94557f6     	ldp	x22, x21, [sp, #0x50]
     320: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     324: a94367fa     	ldp	x26, x25, [sp, #0x30]
     328: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     32c: 9101c3ff     	add	sp, sp, #0x70
     330: d50323bf     	autiasp
     334: d65f03c0     	ret
     338: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d5
     33c: 91000000     	add	x0, x0, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d5
     340: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     344: 91000021     	add	x1, x1, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     348: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     34c: 91000042     	add	x2, x2, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     350: 52805883     	mov	w3, #0x2c4              // =708
     354: 17ffffba     	b	0x23c <nb_fan_parse_dt+0x1fc>
     358: 94000000     	bl	0x358 <nb_fan_parse_dt+0x318>
		0000000000000358:  R_AARCH64_CALL26	__stack_chk_fail
