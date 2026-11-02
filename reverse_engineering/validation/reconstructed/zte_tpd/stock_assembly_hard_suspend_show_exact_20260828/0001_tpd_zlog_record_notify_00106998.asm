
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000110 <tpd_zlog_record_notify>:
     110: d503233f     	paciasp
     114: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     118: a9015ff8     	stp	x24, x23, [sp, #0x10]
     11c: a90257f6     	stp	x22, x21, [sp, #0x20]
     120: a9034ff4     	stp	x20, x19, [sp, #0x30]
     124: 910003fd     	mov	x29, sp
     128: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     12c: 2a0003f5     	mov	w21, w0
     130: f9400313     	ldr	x19, [x24]
		0000000000000130:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     134: 396fc268     	ldrb	w8, [x19, #0xbf0]
     138: 37000068     	tbnz	w8, #0x0, 0x144 <tpd_zlog_record_notify+0x34>
     13c: aa1303e0     	mov	x0, x19
     140: 94000000     	bl	0x140 <tpd_zlog_record_notify+0x30>
		0000000000000140:  R_AARCH64_CALL26	tpd_zlog_register
     144: f9452668     	ldr	x8, [x19, #0xa48]
     148: b40005a8     	cbz	x8, 0x1fc <tpd_zlog_record_notify+0xec>
     14c: f945f668     	ldr	x8, [x19, #0xbe8]
     150: b4000568     	cbz	x8, 0x1fc <tpd_zlog_record_notify+0xec>
     154: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000154:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
     158: f94002e8     	ldr	x8, [x23]
		0000000000000158:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     15c: f945fe69     	ldr	x9, [x19, #0xbf8]
     160: cb090100     	sub	x0, x8, x9
     164: 94000000     	bl	0x164 <tpd_zlog_record_notify+0x54>
		0000000000000164:  R_AARCH64_CALL26	jiffies_to_msecs
     168: f945f676     	ldr	x22, [x19, #0xbe8]
     16c: 2a0003f4     	mov	w20, w0
     170: aa1603e0     	mov	x0, x22
     174: 94000000     	bl	0x174 <tpd_zlog_record_notify+0x64>
		0000000000000174:  R_AARCH64_CALL26	strlen
     178: 52810008     	mov	w8, #0x800              // =2048
     17c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev+0x10
     180: 91000129     	add	x9, x9, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev+0x10
     184: 4b000108     	sub	w8, w8, w0
     188: a9400d24     	ldp	x4, x3, [x9]
     18c: 8b20c2c0     	add	x0, x22, w0, sxtw
     190: 93407d01     	sxtw	x1, w8
     194: b94d0265     	ldr	w5, [x19, #0xd00]
     198: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb80d
     19c: 91000042     	add	x2, x2, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb80d
     1a0: 94000000     	bl	0x1a0 <tpd_zlog_record_notify+0x90>
		00000000000001a0:  R_AARCH64_CALL26	snprintf
     1a4: 510006a8     	sub	w8, w21, #0x1
     1a8: 7100451f     	cmp	w8, #0x11
     1ac: 540065c8     	b.hi	0xe64 <tpd_zlog_record_notify+0xd54>
     1b0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     1b4: 91000129     	add	x9, x9, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     1b8: 1000008a     	adr	x10, 0x1c8 <tpd_zlog_record_notify+0xb8>
     1bc: 7868792b     	ldrh	w11, [x9, x8, lsl #1]
     1c0: 8b0b094a     	add	x10, x10, x11, lsl #2
     1c4: d61f0140     	br	x10
     1c8: f9400315     	ldr	x21, [x24]
		00000000000001c8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     1cc: f94562a8     	ldr	x8, [x21, #0xac0]
     1d0: b40021e8     	cbz	x8, 0x60c <tpd_zlog_record_notify+0x4fc>
     1d4: f94002e8     	ldr	x8, [x23]
		00000000000001d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     1d8: f945aea9     	ldr	x9, [x21, #0xb58]
     1dc: cb090100     	sub	x0, x8, x9
     1e0: 94000000     	bl	0x1e0 <tpd_zlog_record_notify+0xd0>
		00000000000001e0:  R_AARCH64_CALL26	jiffies_to_msecs
     1e4: 53057c08     	lsr	w8, w0, #5
     1e8: 711d4d1f     	cmp	w8, #0x753
     1ec: 54004183     	b.lo	0xa1c <tpd_zlog_record_notify+0x90c>
     1f0: f94562a8     	ldr	x8, [x21, #0xac0]
     1f4: 91000508     	add	x8, x8, #0x1
     1f8: 14000106     	b	0x610 <tpd_zlog_record_notify+0x500>
     1fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9
     200: 91000000     	add	x0, x0, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9
     204: 94000000     	bl	0x204 <tpd_zlog_record_notify+0xf4>
		0000000000000204:  R_AARCH64_CALL26	_printk
     208: 1400031b     	b	0xe74 <tpd_zlog_record_notify+0xd64>
     20c: f9400315     	ldr	x21, [x24]
		000000000000020c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     210: f945a2a8     	ldr	x8, [x21, #0xb40]
     214: b4001008     	cbz	x8, 0x414 <tpd_zlog_record_notify+0x304>
     218: f94002e8     	ldr	x8, [x23]
		0000000000000218:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     21c: f945eea9     	ldr	x9, [x21, #0xbd8]
     220: cb090100     	sub	x0, x8, x9
     224: 94000000     	bl	0x224 <tpd_zlog_record_notify+0x114>
		0000000000000224:  R_AARCH64_CALL26	jiffies_to_msecs
     228: 53057c08     	lsr	w8, w0, #5
     22c: 711d4d1f     	cmp	w8, #0x753
     230: 540035a3     	b.lo	0x8e4 <tpd_zlog_record_notify+0x7d4>
     234: f945a2a8     	ldr	x8, [x21, #0xb40]
     238: 91000508     	add	x8, x8, #0x1
     23c: 14000077     	b	0x418 <tpd_zlog_record_notify+0x308>
     240: f9400315     	ldr	x21, [x24]
		0000000000000240:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     244: f945a6a8     	ldr	x8, [x21, #0xb48]
     248: b40010e8     	cbz	x8, 0x464 <tpd_zlog_record_notify+0x354>
     24c: f94002e8     	ldr	x8, [x23]
		000000000000024c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     250: f945f2a9     	ldr	x9, [x21, #0xbe0]
     254: cb090100     	sub	x0, x8, x9
     258: 94000000     	bl	0x258 <tpd_zlog_record_notify+0x148>
		0000000000000258:  R_AARCH64_CALL26	jiffies_to_msecs
     25c: 53057c08     	lsr	w8, w0, #5
     260: 711d4d1f     	cmp	w8, #0x753
     264: 540035a3     	b.lo	0x918 <tpd_zlog_record_notify+0x808>
     268: f945a6a8     	ldr	x8, [x21, #0xb48]
     26c: 91000508     	add	x8, x8, #0x1
     270: 1400007e     	b	0x468 <tpd_zlog_record_notify+0x358>
     274: f9400315     	ldr	x21, [x24]
		0000000000000274:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     278: f94572a8     	ldr	x8, [x21, #0xae0]
     27c: b40011c8     	cbz	x8, 0x4b4 <tpd_zlog_record_notify+0x3a4>
     280: f94002e8     	ldr	x8, [x23]
		0000000000000280:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     284: f945bea9     	ldr	x9, [x21, #0xb78]
     288: cb090100     	sub	x0, x8, x9
     28c: 94000000     	bl	0x28c <tpd_zlog_record_notify+0x17c>
		000000000000028c:  R_AARCH64_CALL26	jiffies_to_msecs
     290: 53057c08     	lsr	w8, w0, #5
     294: 711d4d1f     	cmp	w8, #0x753
     298: 540035a3     	b.lo	0x94c <tpd_zlog_record_notify+0x83c>
     29c: f94572a8     	ldr	x8, [x21, #0xae0]
     2a0: 91000508     	add	x8, x8, #0x1
     2a4: 14000085     	b	0x4b8 <tpd_zlog_record_notify+0x3a8>
     2a8: f9400315     	ldr	x21, [x24]
		00000000000002a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     2ac: f9456aa8     	ldr	x8, [x21, #0xad0]
     2b0: b40013c8     	cbz	x8, 0x528 <tpd_zlog_record_notify+0x418>
     2b4: f94002e8     	ldr	x8, [x23]
		00000000000002b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     2b8: f945b6a9     	ldr	x9, [x21, #0xb68]
     2bc: cb090100     	sub	x0, x8, x9
     2c0: 94000000     	bl	0x2c0 <tpd_zlog_record_notify+0x1b0>
		00000000000002c0:  R_AARCH64_CALL26	jiffies_to_msecs
     2c4: 53057c08     	lsr	w8, w0, #5
     2c8: 711d4d1f     	cmp	w8, #0x753
     2cc: 540035a3     	b.lo	0x980 <tpd_zlog_record_notify+0x870>
     2d0: f9456aa8     	ldr	x8, [x21, #0xad0]
     2d4: 91000508     	add	x8, x8, #0x1
     2d8: 14000095     	b	0x52c <tpd_zlog_record_notify+0x41c>
     2dc: f9400315     	ldr	x21, [x24]
		00000000000002dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     2e0: f9456ea8     	ldr	x8, [x21, #0xad8]
     2e4: b4001488     	cbz	x8, 0x574 <tpd_zlog_record_notify+0x464>
     2e8: f94002e8     	ldr	x8, [x23]
		00000000000002e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     2ec: f945baa9     	ldr	x9, [x21, #0xb70]
     2f0: cb090100     	sub	x0, x8, x9
     2f4: 94000000     	bl	0x2f4 <tpd_zlog_record_notify+0x1e4>
		00000000000002f4:  R_AARCH64_CALL26	jiffies_to_msecs
     2f8: 53057c08     	lsr	w8, w0, #5
     2fc: 711d4d1f     	cmp	w8, #0x753
     300: 540035a3     	b.lo	0x9b4 <tpd_zlog_record_notify+0x8a4>
     304: f9456ea8     	ldr	x8, [x21, #0xad8]
     308: 91000508     	add	x8, x8, #0x1
     30c: 1400009b     	b	0x578 <tpd_zlog_record_notify+0x468>
     310: f9400315     	ldr	x21, [x24]
		0000000000000310:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     314: f9457ea8     	ldr	x8, [x21, #0xaf8]
     318: b4001548     	cbz	x8, 0x5c0 <tpd_zlog_record_notify+0x4b0>
     31c: f94002e8     	ldr	x8, [x23]
		000000000000031c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     320: f945caa9     	ldr	x9, [x21, #0xb90]
     324: cb090100     	sub	x0, x8, x9
     328: 94000000     	bl	0x328 <tpd_zlog_record_notify+0x218>
		0000000000000328:  R_AARCH64_CALL26	jiffies_to_msecs
     32c: 53057c08     	lsr	w8, w0, #5
     330: 711d4d1f     	cmp	w8, #0x753
     334: 540035a3     	b.lo	0x9e8 <tpd_zlog_record_notify+0x8d8>
     338: f9457ea8     	ldr	x8, [x21, #0xaf8]
     33c: 91000508     	add	x8, x8, #0x1
     340: 140000a1     	b	0x5c4 <tpd_zlog_record_notify+0x4b4>
     344: f9400315     	ldr	x21, [x24]
		0000000000000344:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     348: f94566a8     	ldr	x8, [x21, #0xac8]
     34c: b40019c8     	cbz	x8, 0x684 <tpd_zlog_record_notify+0x574>
     350: f94002e8     	ldr	x8, [x23]
		0000000000000350:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     354: f945b2a9     	ldr	x9, [x21, #0xb60]
     358: cb090100     	sub	x0, x8, x9
     35c: 94000000     	bl	0x35c <tpd_zlog_record_notify+0x24c>
		000000000000035c:  R_AARCH64_CALL26	jiffies_to_msecs
     360: 53057c08     	lsr	w8, w0, #5
     364: 711d4d1f     	cmp	w8, #0x753
     368: 54003743     	b.lo	0xa50 <tpd_zlog_record_notify+0x940>
     36c: f94566a8     	ldr	x8, [x21, #0xac8]
     370: 91000508     	add	x8, x8, #0x1
     374: 140000c5     	b	0x688 <tpd_zlog_record_notify+0x578>
     378: f9400315     	ldr	x21, [x24]
		0000000000000378:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     37c: f94576a8     	ldr	x8, [x21, #0xae8]
     380: b4001c08     	cbz	x8, 0x700 <tpd_zlog_record_notify+0x5f0>
     384: f94002e8     	ldr	x8, [x23]
		0000000000000384:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     388: f945c2a9     	ldr	x9, [x21, #0xb80]
     38c: cb090100     	sub	x0, x8, x9
     390: 94000000     	bl	0x390 <tpd_zlog_record_notify+0x280>
		0000000000000390:  R_AARCH64_CALL26	jiffies_to_msecs
     394: 53057c08     	lsr	w8, w0, #5
     398: 711d4d1f     	cmp	w8, #0x753
     39c: 54003743     	b.lo	0xa84 <tpd_zlog_record_notify+0x974>
     3a0: f94576a8     	ldr	x8, [x21, #0xae8]
     3a4: 91000508     	add	x8, x8, #0x1
     3a8: 140000d7     	b	0x704 <tpd_zlog_record_notify+0x5f4>
     3ac: f9400315     	ldr	x21, [x24]
		00000000000003ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     3b0: f9457aa8     	ldr	x8, [x21, #0xaf0]
     3b4: b4001e48     	cbz	x8, 0x77c <tpd_zlog_record_notify+0x66c>
     3b8: f94002e8     	ldr	x8, [x23]
		00000000000003b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     3bc: f945c6a9     	ldr	x9, [x21, #0xb88]
     3c0: cb090100     	sub	x0, x8, x9
     3c4: 94000000     	bl	0x3c4 <tpd_zlog_record_notify+0x2b4>
		00000000000003c4:  R_AARCH64_CALL26	jiffies_to_msecs
     3c8: 53057c08     	lsr	w8, w0, #5
     3cc: 711d4d1f     	cmp	w8, #0x753
     3d0: 54003743     	b.lo	0xab8 <tpd_zlog_record_notify+0x9a8>
     3d4: f9457aa8     	ldr	x8, [x21, #0xaf0]
     3d8: 91000508     	add	x8, x8, #0x1
     3dc: 140000e9     	b	0x780 <tpd_zlog_record_notify+0x670>
     3e0: f9400315     	ldr	x21, [x24]
		00000000000003e0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     3e4: f94582a8     	ldr	x8, [x21, #0xb00]
     3e8: b4001f68     	cbz	x8, 0x7d4 <tpd_zlog_record_notify+0x6c4>
     3ec: f94002e8     	ldr	x8, [x23]
		00000000000003ec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     3f0: f945cea9     	ldr	x9, [x21, #0xb98]
     3f4: cb090100     	sub	x0, x8, x9
     3f8: 94000000     	bl	0x3f8 <tpd_zlog_record_notify+0x2e8>
		00000000000003f8:  R_AARCH64_CALL26	jiffies_to_msecs
     3fc: 53057c08     	lsr	w8, w0, #5
     400: 711d4d1f     	cmp	w8, #0x753
     404: 54003743     	b.lo	0xaec <tpd_zlog_record_notify+0x9dc>
     408: f94582a8     	ldr	x8, [x21, #0xb00]
     40c: 91000508     	add	x8, x8, #0x1
     410: 140000f2     	b	0x7d8 <tpd_zlog_record_notify+0x6c8>
     414: 52800028     	mov	w8, #0x1                // =1
     418: 7103229f     	cmp	w20, #0xc8
     41c: f905a2a8     	str	x8, [x21, #0xb40]
     420: 54005223     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     424: f94002e8     	ldr	x8, [x23]
		0000000000000424:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     428: f945a261     	ldr	x1, [x19, #0xb40]
     42c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000042c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x72e9
     430: 91000000     	add	x0, x0, #0x0
		0000000000000430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x72e9
     434: f945f662     	ldr	x2, [x19, #0xbe8]
     438: f905ee68     	str	x8, [x19, #0xbd8]
     43c: 94000000     	bl	0x43c <tpd_zlog_record_notify+0x32c>
		000000000000043c:  R_AARCH64_CALL26	_printk
     440: f9452660     	ldr	x0, [x19, #0xa48]
     444: f945a262     	ldr	x2, [x19, #0xb40]
     448: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1180
     44c: 91000021     	add	x1, x1, #0x0
		000000000000044c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1180
     450: f945f663     	ldr	x3, [x19, #0xbe8]
     454: 94000000     	bl	0x454 <tpd_zlog_record_notify+0x344>
		0000000000000454:  R_AARCH64_CALL26	zlog_client_record
     458: f9452660     	ldr	x0, [x19, #0xa48]
     45c: 52800221     	mov	w1, #0x11               // =17
     460: 14000280     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     464: 52800028     	mov	w8, #0x1                // =1
     468: 7103229f     	cmp	w20, #0xc8
     46c: f905a6a8     	str	x8, [x21, #0xb48]
     470: 54004fa3     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     474: f94002e8     	ldr	x8, [x23]
		0000000000000474:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     478: f945a661     	ldr	x1, [x19, #0xb48]
     47c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000047c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x731d
     480: 91000000     	add	x0, x0, #0x0
		0000000000000480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x731d
     484: f945f662     	ldr	x2, [x19, #0xbe8]
     488: f905f268     	str	x8, [x19, #0xbe0]
     48c: 94000000     	bl	0x48c <tpd_zlog_record_notify+0x37c>
		000000000000048c:  R_AARCH64_CALL26	_printk
     490: f9452660     	ldr	x0, [x19, #0xa48]
     494: f945a662     	ldr	x2, [x19, #0xb48]
     498: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67ef
     49c: 91000021     	add	x1, x1, #0x0
		000000000000049c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67ef
     4a0: f945f663     	ldr	x3, [x19, #0xbe8]
     4a4: 94000000     	bl	0x4a4 <tpd_zlog_record_notify+0x394>
		00000000000004a4:  R_AARCH64_CALL26	zlog_client_record
     4a8: f9452660     	ldr	x0, [x19, #0xa48]
     4ac: 52800241     	mov	w1, #0x12               // =18
     4b0: 1400026c     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     4b4: 52800028     	mov	w8, #0x1                // =1
     4b8: 7103229f     	cmp	w20, #0xc8
     4bc: f90572a8     	str	x8, [x21, #0xae0]
     4c0: 54004d23     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     4c4: f94002e8     	ldr	x8, [x23]
		00000000000004c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     4c8: f9457261     	ldr	x1, [x19, #0xae0]
     4cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa472
     4d0: 91000000     	add	x0, x0, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa472
     4d4: f945f662     	ldr	x2, [x19, #0xbe8]
     4d8: f905be68     	str	x8, [x19, #0xb78]
     4dc: 94000000     	bl	0x4dc <tpd_zlog_record_notify+0x3cc>
		00000000000004dc:  R_AARCH64_CALL26	_printk
     4e0: f9452660     	ldr	x0, [x19, #0xa48]
     4e4: f9457262     	ldr	x2, [x19, #0xae0]
     4e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     4ec: 91000021     	add	x1, x1, #0x0
		00000000000004ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     4f0: f945f663     	ldr	x3, [x19, #0xbe8]
     4f4: 94000000     	bl	0x4f4 <tpd_zlog_record_notify+0x3e4>
		00000000000004f4:  R_AARCH64_CALL26	zlog_client_record
     4f8: f9457268     	ldr	x8, [x19, #0xae0]
     4fc: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
     500: f9452660     	ldr	x0, [x19, #0xa48]
     504: f29999a9     	movk	x9, #0xcccd
     508: 9b097d08     	mul	x8, x8, x9
     50c: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
     510: d2410929     	eor	x9, x9, #0x8000000000000003
     514: 93c80508     	ror	x8, x8, #0x1
     518: eb09011f     	cmp	x8, x9
     51c: 54001542     	b.hs	0x7c4 <tpd_zlog_record_notify+0x6b4>
     520: 528000c1     	mov	w1, #0x6                // =6
     524: 1400024f     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     528: 52800028     	mov	w8, #0x1                // =1
     52c: 7103229f     	cmp	w20, #0xc8
     530: f9056aa8     	str	x8, [x21, #0xad0]
     534: 54004983     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     538: f94002e8     	ldr	x8, [x23]
		0000000000000538:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     53c: f9456a61     	ldr	x1, [x19, #0xad0]
     540: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c9
     544: 91000000     	add	x0, x0, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c9
     548: f945f662     	ldr	x2, [x19, #0xbe8]
     54c: f905b668     	str	x8, [x19, #0xb68]
     550: 94000000     	bl	0x550 <tpd_zlog_record_notify+0x440>
		0000000000000550:  R_AARCH64_CALL26	_printk
     554: f9452660     	ldr	x0, [x19, #0xa48]
     558: f9456a62     	ldr	x2, [x19, #0xad0]
     55c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a1d
     560: 91000021     	add	x1, x1, #0x0
		0000000000000560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a1d
     564: f945f663     	ldr	x3, [x19, #0xbe8]
     568: 94000000     	bl	0x568 <tpd_zlog_record_notify+0x458>
		0000000000000568:  R_AARCH64_CALL26	zlog_client_record
     56c: f9452660     	ldr	x0, [x19, #0xa48]
     570: 14000042     	b	0x678 <tpd_zlog_record_notify+0x568>
     574: 52800028     	mov	w8, #0x1                // =1
     578: 7103229f     	cmp	w20, #0xc8
     57c: f9056ea8     	str	x8, [x21, #0xad8]
     580: 54004723     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     584: f94002e8     	ldr	x8, [x23]
		0000000000000584:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     588: f9456e61     	ldr	x1, [x19, #0xad8]
     58c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x303d
     590: 91000000     	add	x0, x0, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x303d
     594: f945f662     	ldr	x2, [x19, #0xbe8]
     598: f905ba68     	str	x8, [x19, #0xb70]
     59c: 94000000     	bl	0x59c <tpd_zlog_record_notify+0x48c>
		000000000000059c:  R_AARCH64_CALL26	_printk
     5a0: f9452660     	ldr	x0, [x19, #0xa48]
     5a4: f9456e62     	ldr	x2, [x19, #0xad8]
     5a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36c6
     5ac: 91000021     	add	x1, x1, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36c6
     5b0: f945f663     	ldr	x3, [x19, #0xbe8]
     5b4: 94000000     	bl	0x5b4 <tpd_zlog_record_notify+0x4a4>
		00000000000005b4:  R_AARCH64_CALL26	zlog_client_record
     5b8: f9452660     	ldr	x0, [x19, #0xa48]
     5bc: 1400004d     	b	0x6f0 <tpd_zlog_record_notify+0x5e0>
     5c0: 52800028     	mov	w8, #0x1                // =1
     5c4: 7103229f     	cmp	w20, #0xc8
     5c8: f9057ea8     	str	x8, [x21, #0xaf8]
     5cc: 540044c3     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     5d0: f94002e8     	ldr	x8, [x23]
		00000000000005d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     5d4: f9457e61     	ldr	x1, [x19, #0xaf8]
     5d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ccd
     5dc: 91000000     	add	x0, x0, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ccd
     5e0: f945f662     	ldr	x2, [x19, #0xbe8]
     5e4: f905ca68     	str	x8, [x19, #0xb90]
     5e8: 94000000     	bl	0x5e8 <tpd_zlog_record_notify+0x4d8>
		00000000000005e8:  R_AARCH64_CALL26	_printk
     5ec: f9452660     	ldr	x0, [x19, #0xa48]
     5f0: f9457e62     	ldr	x2, [x19, #0xaf8]
     5f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc3
     5f8: 91000021     	add	x1, x1, #0x0
		00000000000005f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc3
     5fc: f945f663     	ldr	x3, [x19, #0xbe8]
     600: 94000000     	bl	0x600 <tpd_zlog_record_notify+0x4f0>
		0000000000000600:  R_AARCH64_CALL26	zlog_client_record
     604: f9452660     	ldr	x0, [x19, #0xa48]
     608: 14000059     	b	0x76c <tpd_zlog_record_notify+0x65c>
     60c: 52800028     	mov	w8, #0x1                // =1
     610: 7103229f     	cmp	w20, #0xc8
     614: f90562a8     	str	x8, [x21, #0xac0]
     618: 54004263     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     61c: f94002e8     	ldr	x8, [x23]
		000000000000061c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     620: f9456261     	ldr	x1, [x19, #0xac0]
     624: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab3f
     628: 91000000     	add	x0, x0, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab3f
     62c: f945f662     	ldr	x2, [x19, #0xbe8]
     630: f905ae68     	str	x8, [x19, #0xb58]
     634: 94000000     	bl	0x634 <tpd_zlog_record_notify+0x524>
		0000000000000634:  R_AARCH64_CALL26	_printk
     638: f9452660     	ldr	x0, [x19, #0xa48]
     63c: f9456262     	ldr	x2, [x19, #0xac0]
     640: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5504
     644: 91000021     	add	x1, x1, #0x0
		0000000000000644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5504
     648: f945f663     	ldr	x3, [x19, #0xbe8]
     64c: 94000000     	bl	0x64c <tpd_zlog_record_notify+0x53c>
		000000000000064c:  R_AARCH64_CALL26	zlog_client_record
     650: f9456268     	ldr	x8, [x19, #0xac0]
     654: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
     658: f9452660     	ldr	x0, [x19, #0xa48]
     65c: f29999a9     	movk	x9, #0xcccd
     660: 9b097d08     	mul	x8, x8, x9
     664: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
     668: d2410929     	eor	x9, x9, #0x8000000000000003
     66c: 93c80508     	ror	x8, x8, #0x1
     670: eb09011f     	cmp	x8, x9
     674: 540031e3     	b.lo	0xcb0 <tpd_zlog_record_notify+0xba0>
     678: 52800161     	mov	w1, #0xb                // =11
     67c: 72a00801     	movk	w1, #0x40, lsl #16
     680: 140001f8     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     684: 52800028     	mov	w8, #0x1                // =1
     688: 7103229f     	cmp	w20, #0xc8
     68c: f90566a8     	str	x8, [x21, #0xac8]
     690: 54003ea3     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     694: f94002e8     	ldr	x8, [x23]
		0000000000000694:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     698: f9456661     	ldr	x1, [x19, #0xac8]
     69c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa445
     6a0: 91000000     	add	x0, x0, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa445
     6a4: f945f662     	ldr	x2, [x19, #0xbe8]
     6a8: f905b268     	str	x8, [x19, #0xb60]
     6ac: 94000000     	bl	0x6ac <tpd_zlog_record_notify+0x59c>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: f9452660     	ldr	x0, [x19, #0xa48]
     6b4: f9456662     	ldr	x2, [x19, #0xac8]
     6b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a1d
     6bc: 91000021     	add	x1, x1, #0x0
		00000000000006bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a1d
     6c0: f945f663     	ldr	x3, [x19, #0xbe8]
     6c4: 94000000     	bl	0x6c4 <tpd_zlog_record_notify+0x5b4>
		00000000000006c4:  R_AARCH64_CALL26	zlog_client_record
     6c8: f9456668     	ldr	x8, [x19, #0xac8]
     6cc: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
     6d0: f9452660     	ldr	x0, [x19, #0xa48]
     6d4: f29999a9     	movk	x9, #0xcccd
     6d8: 9b097d08     	mul	x8, x8, x9
     6dc: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
     6e0: d2410929     	eor	x9, x9, #0x8000000000000003
     6e4: 93c80508     	ror	x8, x8, #0x1
     6e8: eb09011f     	cmp	x8, x9
     6ec: 54002e63     	b.lo	0xcb8 <tpd_zlog_record_notify+0xba8>
     6f0: 52800168     	mov	w8, #0xb                // =11
     6f4: 72a00808     	movk	w8, #0x40, lsl #16
     6f8: 11000501     	add	w1, w8, #0x1
     6fc: 140001d9     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     700: 52800028     	mov	w8, #0x1                // =1
     704: 7103229f     	cmp	w20, #0xc8
     708: f90576a8     	str	x8, [x21, #0xae8]
     70c: 54003ac3     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     710: f94002e8     	ldr	x8, [x23]
		0000000000000710:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     714: f9457661     	ldr	x1, [x19, #0xae8]
     718: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1154
     71c: 91000000     	add	x0, x0, #0x0
		000000000000071c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1154
     720: f945f662     	ldr	x2, [x19, #0xbe8]
     724: f905c268     	str	x8, [x19, #0xb80]
     728: 94000000     	bl	0x728 <tpd_zlog_record_notify+0x618>
		0000000000000728:  R_AARCH64_CALL26	_printk
     72c: f9452660     	ldr	x0, [x19, #0xa48]
     730: f9457662     	ldr	x2, [x19, #0xae8]
     734: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6b
     738: 91000021     	add	x1, x1, #0x0
		0000000000000738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6b
     73c: f945f663     	ldr	x3, [x19, #0xbe8]
     740: 94000000     	bl	0x740 <tpd_zlog_record_notify+0x630>
		0000000000000740:  R_AARCH64_CALL26	zlog_client_record
     744: f9457668     	ldr	x8, [x19, #0xae8]
     748: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
     74c: f9452660     	ldr	x0, [x19, #0xa48]
     750: f29999a9     	movk	x9, #0xcccd
     754: 9b097d08     	mul	x8, x8, x9
     758: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
     75c: d2410929     	eor	x9, x9, #0x8000000000000003
     760: 93c80508     	ror	x8, x8, #0x1
     764: eb09011f     	cmp	x8, x9
     768: 54002ac3     	b.lo	0xcc0 <tpd_zlog_record_notify+0xbb0>
     76c: 52800168     	mov	w8, #0xb                // =11
     770: 72a00808     	movk	w8, #0x40, lsl #16
     774: 11000d01     	add	w1, w8, #0x3
     778: 140001ba     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     77c: 52800028     	mov	w8, #0x1                // =1
     780: 7103229f     	cmp	w20, #0xc8
     784: f9057aa8     	str	x8, [x21, #0xaf0]
     788: 540036e3     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     78c: f94002e8     	ldr	x8, [x23]
		000000000000078c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     790: f9457a61     	ldr	x1, [x19, #0xaf0]
     794: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb841
     798: 91000000     	add	x0, x0, #0x0
		0000000000000798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb841
     79c: f945f662     	ldr	x2, [x19, #0xbe8]
     7a0: f905c668     	str	x8, [x19, #0xb88]
     7a4: 94000000     	bl	0x7a4 <tpd_zlog_record_notify+0x694>
		00000000000007a4:  R_AARCH64_CALL26	_printk
     7a8: f9452660     	ldr	x0, [x19, #0xa48]
     7ac: f9457a62     	ldr	x2, [x19, #0xaf0]
     7b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f9
     7b4: 91000021     	add	x1, x1, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f9
     7b8: f945f663     	ldr	x3, [x19, #0xbe8]
     7bc: 94000000     	bl	0x7bc <tpd_zlog_record_notify+0x6ac>
		00000000000007bc:  R_AARCH64_CALL26	zlog_client_record
     7c0: f9452660     	ldr	x0, [x19, #0xa48]
     7c4: 52800168     	mov	w8, #0xb                // =11
     7c8: 72a00808     	movk	w8, #0x40, lsl #16
     7cc: 11000901     	add	w1, w8, #0x2
     7d0: 140001a4     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     7d4: 52800028     	mov	w8, #0x1                // =1
     7d8: 7103229f     	cmp	w20, #0xc8
     7dc: f90582a8     	str	x8, [x21, #0xb00]
     7e0: 54003423     	b.lo	0xe64 <tpd_zlog_record_notify+0xd54>
     7e4: f94002e8     	ldr	x8, [x23]
		00000000000007e4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     7e8: f9458261     	ldr	x1, [x19, #0xb00]
     7ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x171d
     7f0: 91000000     	add	x0, x0, #0x0
		00000000000007f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x171d
     7f4: f945f662     	ldr	x2, [x19, #0xbe8]
     7f8: f905ce68     	str	x8, [x19, #0xb98]
     7fc: 94000000     	bl	0x7fc <tpd_zlog_record_notify+0x6ec>
		00000000000007fc:  R_AARCH64_CALL26	_printk
     800: f9452660     	ldr	x0, [x19, #0xa48]
     804: f9458262     	ldr	x2, [x19, #0xb00]
     808: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f
     80c: 91000021     	add	x1, x1, #0x0
		000000000000080c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f
     810: f945f663     	ldr	x3, [x19, #0xbe8]
     814: 94000000     	bl	0x814 <tpd_zlog_record_notify+0x704>
		0000000000000814:  R_AARCH64_CALL26	zlog_client_record
     818: f9452660     	ldr	x0, [x19, #0xa48]
     81c: 52800061     	mov	w1, #0x3                // =3
     820: 14000190     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     824: f9400314     	ldr	x20, [x24]
		0000000000000824:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     828: f9458e88     	ldr	x8, [x20, #0xb18]
     82c: b50017a8     	cbnz	x8, 0xb20 <tpd_zlog_record_notify+0xa10>
     830: 52800028     	mov	w8, #0x1                // =1
     834: 14000127     	b	0xcd0 <tpd_zlog_record_notify+0xbc0>
     838: f9400314     	ldr	x20, [x24]
		0000000000000838:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     83c: f9458a88     	ldr	x8, [x20, #0xb10]
     840: b5001988     	cbnz	x8, 0xb70 <tpd_zlog_record_notify+0xa60>
     844: 52800028     	mov	w8, #0x1                // =1
     848: 14000134     	b	0xd18 <tpd_zlog_record_notify+0xc08>
     84c: f9400314     	ldr	x20, [x24]
		000000000000084c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     850: f9458688     	ldr	x8, [x20, #0xb08]
     854: b5001b68     	cbnz	x8, 0xbc0 <tpd_zlog_record_notify+0xab0>
     858: 52800028     	mov	w8, #0x1                // =1
     85c: 1400014f     	b	0xd98 <tpd_zlog_record_notify+0xc88>
     860: f945f661     	ldr	x1, [x19, #0xbe8]
     864: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6054
     868: 91000000     	add	x0, x0, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6054
     86c: 94000000     	bl	0x86c <tpd_zlog_record_notify+0x75c>
		000000000000086c:  R_AARCH64_CALL26	_printk
     870: f9452660     	ldr	x0, [x19, #0xa48]
     874: f945f662     	ldr	x2, [x19, #0xbe8]
     878: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d5
     87c: 91000021     	add	x1, x1, #0x0
		000000000000087c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d5
     880: 94000000     	bl	0x880 <tpd_zlog_record_notify+0x770>
		0000000000000880:  R_AARCH64_CALL26	zlog_client_record
     884: f9452660     	ldr	x0, [x19, #0xa48]
     888: 52800121     	mov	w1, #0x9                // =9
     88c: 14000175     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     890: f945f661     	ldr	x1, [x19, #0xbe8]
     894: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e76
     898: 91000000     	add	x0, x0, #0x0
		0000000000000898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e76
     89c: 94000000     	bl	0x89c <tpd_zlog_record_notify+0x78c>
		000000000000089c:  R_AARCH64_CALL26	_printk
     8a0: f9452660     	ldr	x0, [x19, #0xa48]
     8a4: f945f662     	ldr	x2, [x19, #0xbe8]
     8a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e95
     8ac: 91000021     	add	x1, x1, #0x0
		00000000000008ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e95
     8b0: 94000000     	bl	0x8b0 <tpd_zlog_record_notify+0x7a0>
		00000000000008b0:  R_AARCH64_CALL26	zlog_client_record
     8b4: f9452660     	ldr	x0, [x19, #0xa48]
     8b8: 14000134     	b	0xd88 <tpd_zlog_record_notify+0xc78>
     8bc: f9400314     	ldr	x20, [x24]
		00000000000008bc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     8c0: f9459e88     	ldr	x8, [x20, #0xb38]
     8c4: b5001a68     	cbnz	x8, 0xc10 <tpd_zlog_record_notify+0xb00>
     8c8: 52800028     	mov	w8, #0x1                // =1
     8cc: 14000142     	b	0xdd4 <tpd_zlog_record_notify+0xcc4>
     8d0: f9400314     	ldr	x20, [x24]
		00000000000008d0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     8d4: f9459a88     	ldr	x8, [x20, #0xb30]
     8d8: b5001c48     	cbnz	x8, 0xc60 <tpd_zlog_record_notify+0xb50>
     8dc: 52800028     	mov	w8, #0x1                // =1
     8e0: 14000150     	b	0xe20 <tpd_zlog_record_notify+0xd10>
     8e4: f94002e8     	ldr	x8, [x23]
		00000000000008e4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     8e8: f945eea9     	ldr	x9, [x21, #0xbd8]
     8ec: cb090100     	sub	x0, x8, x9
     8f0: 94000000     	bl	0x8f0 <tpd_zlog_record_notify+0x7e0>
		00000000000008f0:  R_AARCH64_CALL26	jiffies_to_msecs
     8f4: 2a0003e1     	mov	w1, w0
     8f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     8fc: 91000000     	add	x0, x0, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     900: 52800222     	mov	w2, #0x11               // =17
     904: 94000000     	bl	0x904 <tpd_zlog_record_notify+0x7f4>
		0000000000000904:  R_AARCH64_CALL26	_printk
     908: f945a2a8     	ldr	x8, [x21, #0xb40]
     90c: 91000508     	add	x8, x8, #0x1
     910: f905a2a8     	str	x8, [x21, #0xb40]
     914: 14000154     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     918: f94002e8     	ldr	x8, [x23]
		0000000000000918:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     91c: f945f2a9     	ldr	x9, [x21, #0xbe0]
     920: cb090100     	sub	x0, x8, x9
     924: 94000000     	bl	0x924 <tpd_zlog_record_notify+0x814>
		0000000000000924:  R_AARCH64_CALL26	jiffies_to_msecs
     928: 2a0003e1     	mov	w1, w0
     92c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000092c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     930: 91000000     	add	x0, x0, #0x0
		0000000000000930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     934: 52800242     	mov	w2, #0x12               // =18
     938: 94000000     	bl	0x938 <tpd_zlog_record_notify+0x828>
		0000000000000938:  R_AARCH64_CALL26	_printk
     93c: f945a6a8     	ldr	x8, [x21, #0xb48]
     940: 91000508     	add	x8, x8, #0x1
     944: f905a6a8     	str	x8, [x21, #0xb48]
     948: 14000147     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     94c: f94002e8     	ldr	x8, [x23]
		000000000000094c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     950: f945bea9     	ldr	x9, [x21, #0xb78]
     954: cb090100     	sub	x0, x8, x9
     958: 94000000     	bl	0x958 <tpd_zlog_record_notify+0x848>
		0000000000000958:  R_AARCH64_CALL26	jiffies_to_msecs
     95c: 2a0003e1     	mov	w1, w0
     960: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     964: 91000000     	add	x0, x0, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     968: 528000a2     	mov	w2, #0x5                // =5
     96c: 94000000     	bl	0x96c <tpd_zlog_record_notify+0x85c>
		000000000000096c:  R_AARCH64_CALL26	_printk
     970: f94572a8     	ldr	x8, [x21, #0xae0]
     974: 91000508     	add	x8, x8, #0x1
     978: f90572a8     	str	x8, [x21, #0xae0]
     97c: 1400013a     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     980: f94002e8     	ldr	x8, [x23]
		0000000000000980:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     984: f945b6a9     	ldr	x9, [x21, #0xb68]
     988: cb090100     	sub	x0, x8, x9
     98c: 94000000     	bl	0x98c <tpd_zlog_record_notify+0x87c>
		000000000000098c:  R_AARCH64_CALL26	jiffies_to_msecs
     990: 2a0003e1     	mov	w1, w0
     994: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     998: 91000000     	add	x0, x0, #0x0
		0000000000000998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     99c: 52800062     	mov	w2, #0x3                // =3
     9a0: 94000000     	bl	0x9a0 <tpd_zlog_record_notify+0x890>
		00000000000009a0:  R_AARCH64_CALL26	_printk
     9a4: f9456aa8     	ldr	x8, [x21, #0xad0]
     9a8: 91000508     	add	x8, x8, #0x1
     9ac: f9056aa8     	str	x8, [x21, #0xad0]
     9b0: 1400012d     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     9b4: f94002e8     	ldr	x8, [x23]
		00000000000009b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     9b8: f945baa9     	ldr	x9, [x21, #0xb70]
     9bc: cb090100     	sub	x0, x8, x9
     9c0: 94000000     	bl	0x9c0 <tpd_zlog_record_notify+0x8b0>
		00000000000009c0:  R_AARCH64_CALL26	jiffies_to_msecs
     9c4: 2a0003e1     	mov	w1, w0
     9c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     9cc: 91000000     	add	x0, x0, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     9d0: 52800082     	mov	w2, #0x4                // =4
     9d4: 94000000     	bl	0x9d4 <tpd_zlog_record_notify+0x8c4>
		00000000000009d4:  R_AARCH64_CALL26	_printk
     9d8: f9456ea8     	ldr	x8, [x21, #0xad8]
     9dc: 91000508     	add	x8, x8, #0x1
     9e0: f9056ea8     	str	x8, [x21, #0xad8]
     9e4: 14000120     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     9e8: f94002e8     	ldr	x8, [x23]
		00000000000009e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     9ec: f945caa9     	ldr	x9, [x21, #0xb90]
     9f0: cb090100     	sub	x0, x8, x9
     9f4: 94000000     	bl	0x9f4 <tpd_zlog_record_notify+0x8e4>
		00000000000009f4:  R_AARCH64_CALL26	jiffies_to_msecs
     9f8: 2a0003e1     	mov	w1, w0
     9fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     a00: 91000000     	add	x0, x0, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     a04: 52800102     	mov	w2, #0x8                // =8
     a08: 94000000     	bl	0xa08 <tpd_zlog_record_notify+0x8f8>
		0000000000000a08:  R_AARCH64_CALL26	_printk
     a0c: f9457ea8     	ldr	x8, [x21, #0xaf8]
     a10: 91000508     	add	x8, x8, #0x1
     a14: f9057ea8     	str	x8, [x21, #0xaf8]
     a18: 14000113     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     a1c: f94002e8     	ldr	x8, [x23]
		0000000000000a1c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     a20: f945aea9     	ldr	x9, [x21, #0xb58]
     a24: cb090100     	sub	x0, x8, x9
     a28: 94000000     	bl	0xa28 <tpd_zlog_record_notify+0x918>
		0000000000000a28:  R_AARCH64_CALL26	jiffies_to_msecs
     a2c: 2a0003e1     	mov	w1, w0
     a30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     a34: 91000000     	add	x0, x0, #0x0
		0000000000000a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     a38: 52800022     	mov	w2, #0x1                // =1
     a3c: 94000000     	bl	0xa3c <tpd_zlog_record_notify+0x92c>
		0000000000000a3c:  R_AARCH64_CALL26	_printk
     a40: f94562a8     	ldr	x8, [x21, #0xac0]
     a44: 91000508     	add	x8, x8, #0x1
     a48: f90562a8     	str	x8, [x21, #0xac0]
     a4c: 14000106     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     a50: f94002e8     	ldr	x8, [x23]
		0000000000000a50:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     a54: f945b2a9     	ldr	x9, [x21, #0xb60]
     a58: cb090100     	sub	x0, x8, x9
     a5c: 94000000     	bl	0xa5c <tpd_zlog_record_notify+0x94c>
		0000000000000a5c:  R_AARCH64_CALL26	jiffies_to_msecs
     a60: 2a0003e1     	mov	w1, w0
     a64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     a68: 91000000     	add	x0, x0, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     a6c: 52800042     	mov	w2, #0x2                // =2
     a70: 94000000     	bl	0xa70 <tpd_zlog_record_notify+0x960>
		0000000000000a70:  R_AARCH64_CALL26	_printk
     a74: f94566a8     	ldr	x8, [x21, #0xac8]
     a78: 91000508     	add	x8, x8, #0x1
     a7c: f90566a8     	str	x8, [x21, #0xac8]
     a80: 140000f9     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     a84: f94002e8     	ldr	x8, [x23]
		0000000000000a84:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     a88: f945c2a9     	ldr	x9, [x21, #0xb80]
     a8c: cb090100     	sub	x0, x8, x9
     a90: 94000000     	bl	0xa90 <tpd_zlog_record_notify+0x980>
		0000000000000a90:  R_AARCH64_CALL26	jiffies_to_msecs
     a94: 2a0003e1     	mov	w1, w0
     a98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     a9c: 91000000     	add	x0, x0, #0x0
		0000000000000a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     aa0: 528000c2     	mov	w2, #0x6                // =6
     aa4: 94000000     	bl	0xaa4 <tpd_zlog_record_notify+0x994>
		0000000000000aa4:  R_AARCH64_CALL26	_printk
     aa8: f94576a8     	ldr	x8, [x21, #0xae8]
     aac: 91000508     	add	x8, x8, #0x1
     ab0: f90576a8     	str	x8, [x21, #0xae8]
     ab4: 140000ec     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     ab8: f94002e8     	ldr	x8, [x23]
		0000000000000ab8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     abc: f945c6a9     	ldr	x9, [x21, #0xb88]
     ac0: cb090100     	sub	x0, x8, x9
     ac4: 94000000     	bl	0xac4 <tpd_zlog_record_notify+0x9b4>
		0000000000000ac4:  R_AARCH64_CALL26	jiffies_to_msecs
     ac8: 2a0003e1     	mov	w1, w0
     acc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     ad0: 91000000     	add	x0, x0, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     ad4: 528000e2     	mov	w2, #0x7                // =7
     ad8: 94000000     	bl	0xad8 <tpd_zlog_record_notify+0x9c8>
		0000000000000ad8:  R_AARCH64_CALL26	_printk
     adc: f9457aa8     	ldr	x8, [x21, #0xaf0]
     ae0: 91000508     	add	x8, x8, #0x1
     ae4: f9057aa8     	str	x8, [x21, #0xaf0]
     ae8: 140000df     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     aec: f94002e8     	ldr	x8, [x23]
		0000000000000aec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     af0: f945cea9     	ldr	x9, [x21, #0xb98]
     af4: cb090100     	sub	x0, x8, x9
     af8: 94000000     	bl	0xaf8 <tpd_zlog_record_notify+0x9e8>
		0000000000000af8:  R_AARCH64_CALL26	jiffies_to_msecs
     afc: 2a0003e1     	mov	w1, w0
     b00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     b04: 91000000     	add	x0, x0, #0x0
		0000000000000b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     b08: 52800122     	mov	w2, #0x9                // =9
     b0c: 94000000     	bl	0xb0c <tpd_zlog_record_notify+0x9fc>
		0000000000000b0c:  R_AARCH64_CALL26	_printk
     b10: f94582a8     	ldr	x8, [x21, #0xb00]
     b14: 91000508     	add	x8, x8, #0x1
     b18: f90582a8     	str	x8, [x21, #0xb00]
     b1c: 140000d2     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     b20: f94002e8     	ldr	x8, [x23]
		0000000000000b20:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     b24: f945da89     	ldr	x9, [x20, #0xbb0]
     b28: cb090100     	sub	x0, x8, x9
     b2c: 94000000     	bl	0xb2c <tpd_zlog_record_notify+0xa1c>
		0000000000000b2c:  R_AARCH64_CALL26	jiffies_to_msecs
     b30: 53057c08     	lsr	w8, w0, #5
     b34: 711d4d1f     	cmp	w8, #0x753
     b38: 54000c82     	b.hs	0xcc8 <tpd_zlog_record_notify+0xbb8>
     b3c: f94002e8     	ldr	x8, [x23]
		0000000000000b3c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     b40: f945da89     	ldr	x9, [x20, #0xbb0]
     b44: cb090100     	sub	x0, x8, x9
     b48: 94000000     	bl	0xb48 <tpd_zlog_record_notify+0xa38>
		0000000000000b48:  R_AARCH64_CALL26	jiffies_to_msecs
     b4c: 2a0003e1     	mov	w1, w0
     b50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     b54: 91000000     	add	x0, x0, #0x0
		0000000000000b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     b58: 52800182     	mov	w2, #0xc                // =12
     b5c: 94000000     	bl	0xb5c <tpd_zlog_record_notify+0xa4c>
		0000000000000b5c:  R_AARCH64_CALL26	_printk
     b60: f9458e88     	ldr	x8, [x20, #0xb18]
     b64: 91000508     	add	x8, x8, #0x1
     b68: f9058e88     	str	x8, [x20, #0xb18]
     b6c: 140000be     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     b70: f94002e8     	ldr	x8, [x23]
		0000000000000b70:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     b74: f945d689     	ldr	x9, [x20, #0xba8]
     b78: cb090100     	sub	x0, x8, x9
     b7c: 94000000     	bl	0xb7c <tpd_zlog_record_notify+0xa6c>
		0000000000000b7c:  R_AARCH64_CALL26	jiffies_to_msecs
     b80: 53057c08     	lsr	w8, w0, #5
     b84: 711d4d1f     	cmp	w8, #0x753
     b88: 54000c42     	b.hs	0xd10 <tpd_zlog_record_notify+0xc00>
     b8c: f94002e8     	ldr	x8, [x23]
		0000000000000b8c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     b90: f945d689     	ldr	x9, [x20, #0xba8]
     b94: cb090100     	sub	x0, x8, x9
     b98: 94000000     	bl	0xb98 <tpd_zlog_record_notify+0xa88>
		0000000000000b98:  R_AARCH64_CALL26	jiffies_to_msecs
     b9c: 2a0003e1     	mov	w1, w0
     ba0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     ba4: 91000000     	add	x0, x0, #0x0
		0000000000000ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     ba8: 52800162     	mov	w2, #0xb                // =11
     bac: 94000000     	bl	0xbac <tpd_zlog_record_notify+0xa9c>
		0000000000000bac:  R_AARCH64_CALL26	_printk
     bb0: f9458a88     	ldr	x8, [x20, #0xb10]
     bb4: 91000508     	add	x8, x8, #0x1
     bb8: f9058a88     	str	x8, [x20, #0xb10]
     bbc: 140000aa     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     bc0: f94002e8     	ldr	x8, [x23]
		0000000000000bc0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     bc4: f945d289     	ldr	x9, [x20, #0xba0]
     bc8: cb090100     	sub	x0, x8, x9
     bcc: 94000000     	bl	0xbcc <tpd_zlog_record_notify+0xabc>
		0000000000000bcc:  R_AARCH64_CALL26	jiffies_to_msecs
     bd0: 53057c08     	lsr	w8, w0, #5
     bd4: 711d4d1f     	cmp	w8, #0x753
     bd8: 54000dc2     	b.hs	0xd90 <tpd_zlog_record_notify+0xc80>
     bdc: f94002e8     	ldr	x8, [x23]
		0000000000000bdc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     be0: f945d289     	ldr	x9, [x20, #0xba0]
     be4: cb090100     	sub	x0, x8, x9
     be8: 94000000     	bl	0xbe8 <tpd_zlog_record_notify+0xad8>
		0000000000000be8:  R_AARCH64_CALL26	jiffies_to_msecs
     bec: 2a0003e1     	mov	w1, w0
     bf0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     bf4: 91000000     	add	x0, x0, #0x0
		0000000000000bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     bf8: 52800142     	mov	w2, #0xa                // =10
     bfc: 94000000     	bl	0xbfc <tpd_zlog_record_notify+0xaec>
		0000000000000bfc:  R_AARCH64_CALL26	_printk
     c00: f9458688     	ldr	x8, [x20, #0xb08]
     c04: 91000508     	add	x8, x8, #0x1
     c08: f9058688     	str	x8, [x20, #0xb08]
     c0c: 14000096     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     c10: f94002e8     	ldr	x8, [x23]
		0000000000000c10:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     c14: f945ea89     	ldr	x9, [x20, #0xbd0]
     c18: cb090100     	sub	x0, x8, x9
     c1c: 94000000     	bl	0xc1c <tpd_zlog_record_notify+0xb0c>
		0000000000000c1c:  R_AARCH64_CALL26	jiffies_to_msecs
     c20: 53057c08     	lsr	w8, w0, #5
     c24: 711d4d1f     	cmp	w8, #0x753
     c28: 54000d22     	b.hs	0xdcc <tpd_zlog_record_notify+0xcbc>
     c2c: f94002e8     	ldr	x8, [x23]
		0000000000000c2c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     c30: f945ea89     	ldr	x9, [x20, #0xbd0]
     c34: cb090100     	sub	x0, x8, x9
     c38: 94000000     	bl	0xc38 <tpd_zlog_record_notify+0xb28>
		0000000000000c38:  R_AARCH64_CALL26	jiffies_to_msecs
     c3c: 2a0003e1     	mov	w1, w0
     c40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     c44: 91000000     	add	x0, x0, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     c48: 52800202     	mov	w2, #0x10               // =16
     c4c: 94000000     	bl	0xc4c <tpd_zlog_record_notify+0xb3c>
		0000000000000c4c:  R_AARCH64_CALL26	_printk
     c50: f9459e88     	ldr	x8, [x20, #0xb38]
     c54: 91000508     	add	x8, x8, #0x1
     c58: f9059e88     	str	x8, [x20, #0xb38]
     c5c: 14000082     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     c60: f94002e8     	ldr	x8, [x23]
		0000000000000c60:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     c64: f945e689     	ldr	x9, [x20, #0xbc8]
     c68: cb090100     	sub	x0, x8, x9
     c6c: 94000000     	bl	0xc6c <tpd_zlog_record_notify+0xb5c>
		0000000000000c6c:  R_AARCH64_CALL26	jiffies_to_msecs
     c70: 53057c08     	lsr	w8, w0, #5
     c74: 711d4d1f     	cmp	w8, #0x753
     c78: 54000d02     	b.hs	0xe18 <tpd_zlog_record_notify+0xd08>
     c7c: f94002e8     	ldr	x8, [x23]
		0000000000000c7c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     c80: f945e689     	ldr	x9, [x20, #0xbc8]
     c84: cb090100     	sub	x0, x8, x9
     c88: 94000000     	bl	0xc88 <tpd_zlog_record_notify+0xb78>
		0000000000000c88:  R_AARCH64_CALL26	jiffies_to_msecs
     c8c: 2a0003e1     	mov	w1, w0
     c90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     c94: 91000000     	add	x0, x0, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     c98: 528001e2     	mov	w2, #0xf                // =15
     c9c: 94000000     	bl	0xc9c <tpd_zlog_record_notify+0xb8c>
		0000000000000c9c:  R_AARCH64_CALL26	_printk
     ca0: f9459a88     	ldr	x8, [x20, #0xb30]
     ca4: 91000508     	add	x8, x8, #0x1
     ca8: f9059a88     	str	x8, [x20, #0xb30]
     cac: 1400006e     	b	0xe64 <tpd_zlog_record_notify+0xd54>
     cb0: 52800021     	mov	w1, #0x1                // =1
     cb4: 1400006b     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     cb8: 52800041     	mov	w1, #0x2                // =2
     cbc: 14000069     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     cc0: 528000e1     	mov	w1, #0x7                // =7
     cc4: 14000067     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     cc8: f9458e88     	ldr	x8, [x20, #0xb18]
     ccc: 91000508     	add	x8, x8, #0x1
     cd0: f9058e88     	str	x8, [x20, #0xb18]
     cd4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94c1
     cd8: 91000000     	add	x0, x0, #0x0
		0000000000000cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94c1
     cdc: f94002e8     	ldr	x8, [x23]
		0000000000000cdc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     ce0: f9458e61     	ldr	x1, [x19, #0xb18]
     ce4: f945f662     	ldr	x2, [x19, #0xbe8]
     ce8: f905da68     	str	x8, [x19, #0xbb0]
     cec: 94000000     	bl	0xcec <tpd_zlog_record_notify+0xbdc>
		0000000000000cec:  R_AARCH64_CALL26	_printk
     cf0: f9452660     	ldr	x0, [x19, #0xa48]
     cf4: f9458e62     	ldr	x2, [x19, #0xb18]
     cf8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dbb
     cfc: 91000021     	add	x1, x1, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dbb
     d00: f945f663     	ldr	x3, [x19, #0xbe8]
     d04: 94000000     	bl	0xd04 <tpd_zlog_record_notify+0xbf4>
		0000000000000d04:  R_AARCH64_CALL26	zlog_client_record
     d08: f9452660     	ldr	x0, [x19, #0xa48]
     d0c: 1400001b     	b	0xd78 <tpd_zlog_record_notify+0xc68>
     d10: f9458a88     	ldr	x8, [x20, #0xb10]
     d14: 91000508     	add	x8, x8, #0x1
     d18: f9058a88     	str	x8, [x20, #0xb10]
     d1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4964
     d20: 91000000     	add	x0, x0, #0x0
		0000000000000d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4964
     d24: f94002e8     	ldr	x8, [x23]
		0000000000000d24:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     d28: f9458a61     	ldr	x1, [x19, #0xb10]
     d2c: f945f662     	ldr	x2, [x19, #0xbe8]
     d30: f905d668     	str	x8, [x19, #0xba8]
     d34: 94000000     	bl	0xd34 <tpd_zlog_record_notify+0xc24>
		0000000000000d34:  R_AARCH64_CALL26	_printk
     d38: f9452660     	ldr	x0, [x19, #0xa48]
     d3c: f9458a62     	ldr	x2, [x19, #0xb10]
     d40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3097
     d44: 91000021     	add	x1, x1, #0x0
		0000000000000d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3097
     d48: f945f663     	ldr	x3, [x19, #0xbe8]
     d4c: 94000000     	bl	0xd4c <tpd_zlog_record_notify+0xc3c>
		0000000000000d4c:  R_AARCH64_CALL26	zlog_client_record
     d50: f9458a68     	ldr	x8, [x19, #0xb10]
     d54: b202e7e9     	mov	x9, #-0x3333333333333334 // =-3689348814741910324
     d58: f9452660     	ldr	x0, [x19, #0xa48]
     d5c: f29999a9     	movk	x9, #0xcccd
     d60: 9b097d08     	mul	x8, x8, x9
     d64: b201e7e9     	mov	x9, #-0x6666666666666667 // =-7378697629483820647
     d68: d2410929     	eor	x9, x9, #0x8000000000000003
     d6c: 93c80508     	ror	x8, x8, #0x1
     d70: eb09011f     	cmp	x8, x9
     d74: 540000a3     	b.lo	0xd88 <tpd_zlog_record_notify+0xc78>
     d78: 52800168     	mov	w8, #0xb                // =11
     d7c: 72a00808     	movk	w8, #0x40, lsl #16
     d80: 321e0101     	orr	w1, w8, #0x4
     d84: 14000037     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     d88: 528000a1     	mov	w1, #0x5                // =5
     d8c: 14000035     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     d90: f9458688     	ldr	x8, [x20, #0xb08]
     d94: 91000508     	add	x8, x8, #0x1
     d98: f9058688     	str	x8, [x20, #0xb08]
     d9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7901
     da0: 91000000     	add	x0, x0, #0x0
		0000000000000da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7901
     da4: f94002e8     	ldr	x8, [x23]
		0000000000000da4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     da8: f9458661     	ldr	x1, [x19, #0xb08]
     dac: f945f662     	ldr	x2, [x19, #0xbe8]
     db0: f905d268     	str	x8, [x19, #0xba0]
     db4: 94000000     	bl	0xdb4 <tpd_zlog_record_notify+0xca4>
		0000000000000db4:  R_AARCH64_CALL26	_printk
     db8: f9452660     	ldr	x0, [x19, #0xa48]
     dbc: f9458662     	ldr	x2, [x19, #0xb08]
     dc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306e
     dc4: 91000021     	add	x1, x1, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306e
     dc8: 14000022     	b	0xe50 <tpd_zlog_record_notify+0xd40>
     dcc: f9459e88     	ldr	x8, [x20, #0xb38]
     dd0: 91000508     	add	x8, x8, #0x1
     dd4: f9059e88     	str	x8, [x20, #0xb38]
     dd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb09
     ddc: 91000000     	add	x0, x0, #0x0
		0000000000000ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb09
     de0: f94002e8     	ldr	x8, [x23]
		0000000000000de0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     de4: f9459e61     	ldr	x1, [x19, #0xb38]
     de8: f945f662     	ldr	x2, [x19, #0xbe8]
     dec: f905ea68     	str	x8, [x19, #0xbd0]
     df0: 94000000     	bl	0xdf0 <tpd_zlog_record_notify+0xce0>
		0000000000000df0:  R_AARCH64_CALL26	_printk
     df4: f9452660     	ldr	x0, [x19, #0xa48]
     df8: f9459e62     	ldr	x2, [x19, #0xb38]
     dfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67d1
     e00: 91000021     	add	x1, x1, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67d1
     e04: f945f663     	ldr	x3, [x19, #0xbe8]
     e08: 94000000     	bl	0xe08 <tpd_zlog_record_notify+0xcf8>
		0000000000000e08:  R_AARCH64_CALL26	zlog_client_record
     e0c: f9452660     	ldr	x0, [x19, #0xa48]
     e10: 52800201     	mov	w1, #0x10               // =16
     e14: 14000013     	b	0xe60 <tpd_zlog_record_notify+0xd50>
     e18: f9459a88     	ldr	x8, [x20, #0xb30]
     e1c: 91000508     	add	x8, x8, #0x1
     e20: f9059a88     	str	x8, [x20, #0xb30]
     e24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174a
     e28: 91000000     	add	x0, x0, #0x0
		0000000000000e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174a
     e2c: f94002e8     	ldr	x8, [x23]
		0000000000000e2c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     e30: f9459a61     	ldr	x1, [x19, #0xb30]
     e34: f945f662     	ldr	x2, [x19, #0xbe8]
     e38: f905e668     	str	x8, [x19, #0xbc8]
     e3c: 94000000     	bl	0xe3c <tpd_zlog_record_notify+0xd2c>
		0000000000000e3c:  R_AARCH64_CALL26	_printk
     e40: f9452660     	ldr	x0, [x19, #0xa48]
     e44: f9459a62     	ldr	x2, [x19, #0xb30]
     e48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d1b
     e4c: 91000021     	add	x1, x1, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d1b
     e50: f945f663     	ldr	x3, [x19, #0xbe8]
     e54: 94000000     	bl	0xe54 <tpd_zlog_record_notify+0xd44>
		0000000000000e54:  R_AARCH64_CALL26	zlog_client_record
     e58: f9452660     	ldr	x0, [x19, #0xa48]
     e5c: 52800081     	mov	w1, #0x4                // =4
     e60: 94000000     	bl	0xe60 <tpd_zlog_record_notify+0xd50>
		0000000000000e60:  R_AARCH64_CALL26	zlog_client_notify
     e64: f945f660     	ldr	x0, [x19, #0xbe8]
     e68: 2a1f03e1     	mov	w1, wzr
     e6c: 52810002     	mov	w2, #0x800              // =2048
     e70: 94000000     	bl	0xe70 <tpd_zlog_record_notify+0xd60>
		0000000000000e70:  R_AARCH64_CALL26	memset
     e74: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     e78: a94257f6     	ldp	x22, x21, [sp, #0x20]
     e7c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     e80: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     e84: d50323bf     	autiasp
     e88: d65f03c0     	ret
