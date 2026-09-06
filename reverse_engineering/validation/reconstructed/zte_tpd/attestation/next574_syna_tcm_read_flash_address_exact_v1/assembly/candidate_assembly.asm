
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <syna_tcm_read_flash_address>:
       4: d503233f     	paciasp
       8: d103c3ff     	sub	sp, sp, #0xf0
       c: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
      10: f9005bf9     	str	x25, [sp, #0xb0]
      14: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
      18: a90d57f6     	stp	x22, x21, [sp, #0xd0]
      1c: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
      20: 910283fd     	add	x29, sp, #0xa0
      24: d5384108     	mrs	x8, SP_EL0
      28: f9438908     	ldr	x8, [x8, #0x710]
      2c: f81f83a8     	stur	x8, [x29, #-0x8]
      30: a908ffff     	stp	xzr, xzr, [sp, #0x88]
      34: a907ffff     	stp	xzr, xzr, [sp, #0x78]
      38: a906ffff     	stp	xzr, xzr, [sp, #0x68]
      3c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
      40: a904ffff     	stp	xzr, xzr, [sp, #0x48]
      44: a903ffff     	stp	xzr, xzr, [sp, #0x38]
      48: a902ffff     	stp	xzr, xzr, [sp, #0x28]
      4c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
      50: a900ffff     	stp	xzr, xzr, [sp, #0x8]
      54: f90003ff     	str	xzr, [sp]
      58: b4000bc0     	cbz	x0, 0x1d0 <syna_tcm_read_flash_address+0x1cc>
      5c: aa0303f6     	mov	x22, x3
      60: b4000be3     	cbz	x3, 0x1dc <syna_tcm_read_flash_address+0x1d8>
      64: 2a0403f3     	mov	w19, w4
      68: 2a0203f5     	mov	w21, w2
      6c: 2a0103f7     	mov	w23, w1
      70: aa0003f4     	mov	x20, x0
      74: 34000064     	cbz	w4, 0x80 <syna_tcm_read_flash_address+0x7c>
      78: b941ea83     	ldr	w3, [x20, #0x1e8]
      7c: 14000002     	b	0x84 <syna_tcm_read_flash_address+0x80>
      80: 2a1f03e3     	mov	w3, wzr
      84: 39402699     	ldrb	w25, [x20, #0x9]
      88: 71002f3f     	cmp	w25, #0xb
      8c: 54000061     	b.ne	0x98 <syna_tcm_read_flash_address+0x94>
      90: 2a1f03f8     	mov	w24, wzr
      94: 14000007     	b	0xb0 <syna_tcm_read_flash_address+0xac>
      98: 910003e1     	mov	x1, sp
      9c: aa1403e0     	mov	x0, x20
      a0: 2a1303e2     	mov	w2, w19
      a4: 9400008f     	bl	0x2e0 <syna_tcm_set_up_flash_access>
      a8: 2a0003f8     	mov	w24, w0
      ac: 37f80d00     	tbnz	w0, #0x1f, 0x24c <syna_tcm_read_flash_address+0x248>
      b0: 910003e8     	mov	x8, sp
      b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd8
      b8: 91000021     	add	x1, x1, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd8
      bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
      c0: 91000042     	add	x2, x2, #0x0
		00000000000000c0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
      c4: 91014100     	add	x0, x8, #0x50
      c8: 390203ff     	strb	wzr, [sp, #0x80]
      cc: a9047fff     	stp	xzr, xzr, [sp, #0x40]
      d0: 94000000     	bl	0xd0 <syna_tcm_read_flash_address+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	__mutex_init
      d4: 34000475     	cbz	w21, 0x160 <syna_tcm_read_flash_address+0x15c>
      d8: b9400ad8     	ldr	w24, [x22, #0x8]
      dc: f94002c0     	ldr	x0, [x22]
      e0: 6b15031f     	cmp	w24, w21
      e4: 54000242     	b.hs	0x12c <syna_tcm_read_flash_address+0x128>
      e8: b40000c0     	cbz	x0, 0x100 <syna_tcm_read_flash_address+0xfc>
      ec: aa0003f8     	mov	x24, x0
      f0: 94000000     	bl	0xf0 <syna_tcm_read_flash_address+0xec>
		00000000000000f0:  R_AARCH64_CALL26	syna_request_managed_device
      f4: b4000be0     	cbz	x0, 0x270 <syna_tcm_read_flash_address+0x26c>
      f8: aa1803e1     	mov	x1, x24
      fc: 94000000     	bl	0xfc <syna_tcm_read_flash_address+0xf8>
		00000000000000fc:  R_AARCH64_CALL26	devm_kfree
     100: 94000000     	bl	0x100 <syna_tcm_read_flash_address+0xfc>
		0000000000000100:  R_AARCH64_CALL26	syna_request_managed_device
     104: b4000c40     	cbz	x0, 0x28c <syna_tcm_read_flash_address+0x288>
     108: 710002bf     	cmp	w21, #0x0
     10c: 54000acd     	b.le	0x264 <syna_tcm_read_flash_address+0x260>
     110: 2a1503f8     	mov	w24, w21
     114: 5281b802     	mov	w2, #0xdc0              // =3520
     118: aa1803e1     	mov	x1, x24
     11c: 94000000     	bl	0x11c <syna_tcm_read_flash_address+0x118>
		000000000000011c:  R_AARCH64_CALL26	devm_kmalloc
     120: f90002c0     	str	x0, [x22]
     124: b4000c00     	cbz	x0, 0x2a4 <syna_tcm_read_flash_address+0x2a0>
     128: b9000ad5     	str	w21, [x22, #0x8]
     12c: 2a1f03e1     	mov	w1, wzr
     130: aa1803e2     	mov	x2, x24
     134: 94000000     	bl	0x134 <syna_tcm_read_flash_address+0x130>
		0000000000000134:  R_AARCH64_CALL26	memset
     138: f94002c2     	ldr	x2, [x22]
     13c: aa1403e0     	mov	x0, x20
     140: 2a1703e1     	mov	w1, w23
     144: 2a1503e3     	mov	w3, w21
     148: 2a1303e4     	mov	w4, w19
     14c: b9000edf     	str	wzr, [x22, #0xc]
     150: 9400011d     	bl	0x5c4 <syna_tcm_read_flash>
     154: 37f806a0     	tbnz	w0, #0x1f, 0x228 <syna_tcm_read_flash_address+0x224>
     158: 2a1f03f8     	mov	w24, wzr
     15c: b9000ed5     	str	w21, [x22, #0xc]
     160: 7100073f     	cmp	w25, #0x1
     164: 540000a1     	b.ne	0x178 <syna_tcm_read_flash_address+0x174>
     168: aa1403e0     	mov	x0, x20
     16c: 52800021     	mov	w1, #0x1                // =1
     170: 2a1303e2     	mov	w2, w19
     174: 94000000     	bl	0x174 <syna_tcm_read_flash_address+0x170>
		0000000000000174:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
     178: 394203e2     	ldrb	w2, [sp, #0x80]
     17c: 350003e2     	cbnz	w2, 0x1f8 <syna_tcm_read_flash_address+0x1f4>
     180: f94023f3     	ldr	x19, [sp, #0x40]
     184: 94000000     	bl	0x184 <syna_tcm_read_flash_address+0x180>
		0000000000000184:  R_AARCH64_CALL26	syna_request_managed_device
     188: b4000440     	cbz	x0, 0x210 <syna_tcm_read_flash_address+0x20c>
     18c: b4000073     	cbz	x19, 0x198 <syna_tcm_read_flash_address+0x194>
     190: aa1303e1     	mov	x1, x19
     194: 94000000     	bl	0x194 <syna_tcm_read_flash_address+0x190>
		0000000000000194:  R_AARCH64_CALL26	devm_kfree
     198: d5384108     	mrs	x8, SP_EL0
     19c: f9438908     	ldr	x8, [x8, #0x710]
     1a0: f85f83a9     	ldur	x9, [x29, #-0x8]
     1a4: eb09011f     	cmp	x8, x9
     1a8: 540009a1     	b.ne	0x2dc <syna_tcm_read_flash_address+0x2d8>
     1ac: 2a1803e0     	mov	w0, w24
     1b0: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
     1b4: f9405bf9     	ldr	x25, [sp, #0xb0]
     1b8: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
     1bc: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
     1c0: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
     1c4: 9103c3ff     	add	sp, sp, #0xf0
     1c8: d50323bf     	autiasp
     1cc: d65f03c0     	ret
     1d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
     1d4: 91000000     	add	x0, x0, #0x0
		00000000000001d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
     1d8: 14000003     	b	0x1e4 <syna_tcm_read_flash_address+0x1e0>
     1dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9dfa
     1e0: 91000000     	add	x0, x0, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9dfa
     1e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c8
     1e8: 91000021     	add	x1, x1, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c8
     1ec: 94000000     	bl	0x1ec <syna_tcm_read_flash_address+0x1e8>
		00000000000001ec:  R_AARCH64_CALL26	_printk
     1f0: 12801e18     	mov	w24, #-0xf1             // =-241
     1f4: 17ffffe9     	b	0x198 <syna_tcm_read_flash_address+0x194>
     1f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
     1fc: 91000000     	add	x0, x0, #0x0
		00000000000001fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
     200: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
     204: 91000021     	add	x1, x1, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
     208: 94000000     	bl	0x208 <syna_tcm_read_flash_address+0x204>
		0000000000000208:  R_AARCH64_CALL26	_printk
     20c: 17ffffdd     	b	0x180 <syna_tcm_read_flash_address+0x17c>
     210: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
     214: 91000000     	add	x0, x0, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
     218: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
     21c: 91000021     	add	x1, x1, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
     220: 94000000     	bl	0x220 <syna_tcm_read_flash_address+0x21c>
		0000000000000220:  R_AARCH64_CALL26	_printk
     224: 17ffffdd     	b	0x198 <syna_tcm_read_flash_address+0x194>
     228: 2a0003f8     	mov	w24, w0
     22c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ace
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ace
     234: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c8
     238: 91000021     	add	x1, x1, #0x0
		0000000000000238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c8
     23c: 2a1503e2     	mov	w2, w21
     240: 2a1703e3     	mov	w3, w23
     244: 94000000     	bl	0x244 <syna_tcm_read_flash_address+0x240>
		0000000000000244:  R_AARCH64_CALL26	_printk
     248: 17ffffc6     	b	0x160 <syna_tcm_read_flash_address+0x15c>
     24c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
     250: 91000000     	add	x0, x0, #0x0
		0000000000000250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
     254: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c8
     258: 91000021     	add	x1, x1, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c8
     25c: 94000000     	bl	0x25c <syna_tcm_read_flash_address+0x258>
		000000000000025c:  R_AARCH64_CALL26	_printk
     260: 17ffffce     	b	0x198 <syna_tcm_read_flash_address+0x194>
     264: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
     268: 91000000     	add	x0, x0, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
     26c: 1400000a     	b	0x294 <syna_tcm_read_flash_address+0x290>
     270: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
     274: 91000000     	add	x0, x0, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
     278: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
     27c: 91000021     	add	x1, x1, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
     280: 94000000     	bl	0x280 <syna_tcm_read_flash_address+0x27c>
		0000000000000280:  R_AARCH64_CALL26	_printk
     284: 94000000     	bl	0x284 <syna_tcm_read_flash_address+0x280>
		0000000000000284:  R_AARCH64_CALL26	syna_request_managed_device
     288: b5fff400     	cbnz	x0, 0x108 <syna_tcm_read_flash_address+0x104>
     28c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
     290: 91000000     	add	x0, x0, #0x0
		0000000000000290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
     294: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
     298: 91000021     	add	x1, x1, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
     29c: 94000000     	bl	0x29c <syna_tcm_read_flash_address+0x298>
		000000000000029c:  R_AARCH64_CALL26	_printk
     2a0: f90002df     	str	xzr, [x22]
     2a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d72
     2a8: 91000000     	add	x0, x0, #0x0
		00000000000002a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d72
     2ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d4
     2b0: 91000021     	add	x1, x1, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d4
     2b4: 2a1503e2     	mov	w2, w21
     2b8: 94000000     	bl	0x2b8 <syna_tcm_read_flash_address+0x2b4>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2904
     2c0: 91000000     	add	x0, x0, #0x0
		00000000000002c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2904
     2c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c8
     2c8: 91000021     	add	x1, x1, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c8
     2cc: f90006df     	str	xzr, [x22, #0x8]
     2d0: 94000000     	bl	0x2d0 <syna_tcm_read_flash_address+0x2cc>
		00000000000002d0:  R_AARCH64_CALL26	_printk
     2d4: 12801e58     	mov	w24, #-0xf3             // =-243
     2d8: 17ffffa2     	b	0x160 <syna_tcm_read_flash_address+0x15c>
     2dc: 94000000     	bl	0x2dc <syna_tcm_read_flash_address+0x2d8>
		00000000000002dc:  R_AARCH64_CALL26	__stack_chk_fail
