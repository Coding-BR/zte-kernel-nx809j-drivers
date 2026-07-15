
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_ir_write>:
       4: d503233f     	paciasp
       8: d10503ff     	sub	sp, sp, #0x140
       c: a9107bfd     	stp	x29, x30, [sp, #0x100]
      10: a9115ffc     	stp	x28, x23, [sp, #0x110]
      14: a91257f6     	stp	x22, x21, [sp, #0x120]
      18: a9134ff4     	stp	x20, x19, [sp, #0x130]
      1c: 910403fd     	add	x29, sp, #0x100
      20: d5384108     	mrs	x8, SP_EL0
      24: aa0103f4     	mov	x20, x1
      28: aa0003f5     	mov	x21, x0
      2c: f9438908     	ldr	x8, [x8, #0x710]
      30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3
      34: 91000000     	add	x0, x0, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3
      38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd9
      3c: 91000021     	add	x1, x1, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd9
      40: aa0203f3     	mov	x19, x2
      44: f81f83a8     	stur	x8, [x29, #-0x8]
      48: a907ffff     	stp	xzr, xzr, [sp, #0x78]
      4c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
      50: a905ffff     	stp	xzr, xzr, [sp, #0x58]
      54: a904ffff     	stp	xzr, xzr, [sp, #0x48]
      58: a903ffff     	stp	xzr, xzr, [sp, #0x38]
      5c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
      60: a901ffff     	stp	xzr, xzr, [sp, #0x18]
      64: a900ffff     	stp	xzr, xzr, [sp, #0x8]
      68: f90003ff     	str	xzr, [sp]
      6c: 94000000     	bl	0x6c <zte_ir_write+0x68>
		000000000000006c:  R_AARCH64_CALL26	_printk
      70: f94012b5     	ldr	x21, [x21, #0x20]
      74: 52871516     	mov	w22, #0x38a8            // =14504
      78: 72a00036     	movk	w22, #0x1, lsl #16
      7c: 8b1602a0     	add	x0, x21, x22
      80: 94000000     	bl	0x80 <zte_ir_write+0x7c>
		0000000000000080:  R_AARCH64_CALL26	mutex_lock
      84: aa1403e0     	mov	x0, x20
      88: aa1303e1     	mov	x1, x19
      8c: 94000000     	bl	0x8c <zte_ir_write+0x88>
		000000000000008c:  R_AARCH64_CALL26	memdup_user
      90: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      94: 54000269     	b.ls	0xe0 <zte_ir_write+0xdc>
      98: 2a0003f4     	mov	w20, w0
      9c: 8b1602a0     	add	x0, x21, x22
      a0: 94000000     	bl	0xa0 <zte_ir_write+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	mutex_unlock
      a4: 93407e88     	sxtw	x8, w20
      a8: 7100029f     	cmp	w20, #0x0
      ac: 9a880260     	csel	x0, x19, x8, eq
      b0: d5384108     	mrs	x8, SP_EL0
      b4: f9438908     	ldr	x8, [x8, #0x710]
      b8: f85f83a9     	ldur	x9, [x29, #-0x8]
      bc: eb09011f     	cmp	x8, x9
      c0: 54001361     	b.ne	0x32c <zte_ir_write+0x328>
      c4: a9534ff4     	ldp	x20, x19, [sp, #0x130]
      c8: a95257f6     	ldp	x22, x21, [sp, #0x120]
      cc: a9515ffc     	ldp	x28, x23, [sp, #0x110]
      d0: a9507bfd     	ldp	x29, x30, [sp, #0x100]
      d4: 910503ff     	add	sp, sp, #0x140
      d8: d50323bf     	autiasp
      dc: d65f03c0     	ret
      e0: f100127f     	cmp	x19, #0x4
      e4: 91404eb7     	add	x23, x21, #0x13, lsl #12 // =0x13000
      e8: 54000062     	b.hs	0xf4 <zte_ir_write+0xf0>
      ec: 2a1f03e2     	mov	w2, wzr
      f0: 14000059     	b	0x254 <zte_ir_write+0x250>
      f4: d291a6ef     	mov	x15, #0x8d37            // =36151
      f8: d342fe69     	lsr	x9, x19, #2
      fc: 5287108a     	mov	w10, #0x3884            // =14468
     100: f2b6bdaf     	movk	x15, #0xb5ed, lsl #16
     104: 5294240e     	mov	w14, #0xa120            // =41248
     108: aa1f03e2     	mov	x2, xzr
     10c: f2def40f     	movk	x15, #0xf7a0, lsl #32
     110: 2a1f03e8     	mov	w8, wzr
     114: 2a1f03ed     	mov	w13, wzr
     118: 72a0002a     	movk	w10, #0x1, lsl #16
     11c: 91001aab     	add	x11, x21, #0x6
     120: 910012ac     	add	x12, x21, #0x4
     124: 72a000ee     	movk	w14, #0x7, lsl #16
     128: f2e218cf     	movk	x15, #0x10c6, lsl #48
     12c: 52938810     	mov	w16, #0x9c40            // =40000
     130: 129387f1     	mov	w17, #-0x9c40           // =-40000
     134: 52800041     	mov	w1, #0x2                // =2
     138: 14000005     	b	0x14c <zte_ir_write+0x148>
     13c: 11000508     	add	w8, w8, #0x1
     140: 93407d02     	sxtw	x2, w8
     144: eb02013f     	cmp	x9, x2
     148: 54000849     	b.ls	0x250 <zte_ir_write+0x24c>
     14c: d37ef443     	lsl	x3, x2, #2
     150: eb030263     	subs	x3, x19, x3
     154: b7f80ea2     	tbnz	x2, #0x3f, 0x328 <zte_ir_write+0x324>
     158: 54000e83     	b.lo	0x328 <zte_ir_write+0x324>
     15c: f100107f     	cmp	x3, #0x4
     160: 54000e43     	b.lo	0x328 <zte_ir_write+0x324>
     164: b9488ae3     	ldr	w3, [x23, #0x888]
     168: b8627802     	ldr	w2, [x0, x2, lsl #2]
     16c: d344fc63     	lsr	x3, x3, #4
     170: 9ba33842     	umaddl	x2, w2, w3, x14
     174: 9bcf7c42     	umulh	x2, x2, x15
     178: d350fc43     	lsr	x3, x2, #16
     17c: 0b0301a2     	add	w2, w13, w3
     180: 53067c42     	lsr	w2, w2, #6
     184: 7109c45f     	cmp	w2, #0x271
     188: 54000542     	b.hs	0x230 <zte_ir_write+0x22c>
     18c: 91000942     	add	x2, x10, #0x2
     190: 7200011f     	tst	w8, #0x1
     194: 9a820142     	csel	x2, x10, x2, eq
     198: 34fffd23     	cbz	w3, 0x13c <zte_ir_write+0x138>
     19c: 6b0d0205     	subs	w5, w16, w13
     1a0: 51000466     	sub	w6, w3, #0x1
     1a4: 78626aa2     	ldrh	w2, [x21, x2]
     1a8: 1a8533e5     	csel	w5, wzr, w5, lo
     1ac: eb0500df     	cmp	x6, x5
     1b0: 9a8530c5     	csel	x5, x6, x5, lo
     1b4: 2a0d03e6     	mov	w6, w13
     1b8: f10008bf     	cmp	x5, #0x2
     1bc: 54000062     	b.hs	0x1c8 <zte_ir_write+0x1c4>
     1c0: 2a1f03e4     	mov	w4, wzr
     1c4: 1400000d     	b	0x1f8 <zte_ir_write+0x1f4>
     1c8: 910004a4     	add	x4, x5, #0x1
     1cc: aa2503f4     	mvn	x20, x5
     1d0: 8b060565     	add	x5, x11, x6, lsl #1
     1d4: f2400087     	ands	x7, x4, #0x1
     1d8: 9a870027     	csel	x7, x1, x7, eq
     1dc: cb070084     	sub	x4, x4, x7
     1e0: 8b070287     	add	x7, x20, x7
     1e4: 8b060086     	add	x6, x4, x6
     1e8: b10008e7     	adds	x7, x7, #0x2
     1ec: 781fe0a2     	sturh	w2, [x5, #-0x2]
     1f0: 780044a2     	strh	w2, [x5], #0x4
     1f4: 54ffffa1     	b.ne	0x1e8 <zte_ir_write+0x1e4>
     1f8: 6b1001bf     	cmp	w13, w16
     1fc: 8b060585     	add	x5, x12, x6, lsl #1
     200: 0b110087     	add	w7, w4, w17
     204: 1a9031ad     	csel	w13, w13, w16, lo
     208: 4b030083     	sub	w3, w4, w3
     20c: 0b0d00e7     	add	w7, w7, w13
     210: 2a0603ed     	mov	w13, w6
     214: 34000887     	cbz	w7, 0x324 <zte_ir_write+0x320>
     218: 31000463     	adds	w3, w3, #0x1
     21c: 110005ad     	add	w13, w13, #0x1
     220: 110004e7     	add	w7, w7, #0x1
     224: 780024a2     	strh	w2, [x5], #0x2
     228: 54ffff63     	b.lo	0x214 <zte_ir_write+0x210>
     22c: 17ffffc4     	b	0x13c <zte_ir_write+0x138>
     230: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56
     234: 91000000     	add	x0, x0, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56
     238: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd9
     23c: 91000021     	add	x1, x1, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd9
     240: 52938802     	mov	w2, #0x9c40             // =40000
     244: 94000000     	bl	0x244 <zte_ir_write+0x240>
		0000000000000244:  R_AARCH64_CALL26	_printk
     248: 928002a0     	mov	x0, #-0x16              // =-22
     24c: 17ffff99     	b	0xb0 <zte_ir_write+0xac>
     250: 531f79a2     	lsl	w2, w13, #1
     254: a907ffff     	stp	xzr, xzr, [sp, #0x78]
     258: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34
     25c: 91000000     	add	x0, x0, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34
     260: a906ffff     	stp	xzr, xzr, [sp, #0x68]
     264: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd9
     268: 91000021     	add	x1, x1, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd9
     26c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
     270: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     274: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     278: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     27c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     280: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     284: b9488ae8     	ldr	w8, [x23, #0x888]
     288: b90013e2     	str	w2, [sp, #0x10]
     28c: b9005be8     	str	w8, [sp, #0x58]
     290: 910012a8     	add	x8, x21, #0x4
     294: f90003e8     	str	x8, [sp]
     298: 94000000     	bl	0x298 <zte_ir_write+0x294>
		0000000000000298:  R_AARCH64_CALL26	_printk
     29c: d101e3a8     	sub	x8, x29, #0x78
     2a0: f9444ae0     	ldr	x0, [x23, #0x890]
     2a4: 910003ea     	mov	x10, sp
     2a8: 91016109     	add	x9, x8, #0x58
     2ac: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     2b0: d101e3a1     	sub	x1, x29, #0x78
     2b4: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     2b8: a93cffbf     	stp	xzr, xzr, [x29, #-0x38]
     2bc: a93bffbf     	stp	xzr, xzr, [x29, #-0x48]
     2c0: a93affbf     	stp	xzr, xzr, [x29, #-0x58]
     2c4: a939ffbf     	stp	xzr, xzr, [x29, #-0x68]
     2c8: f81883a8     	stur	x8, [x29, #-0x78]
     2cc: f81903a8     	stur	x8, [x29, #-0x70]
     2d0: f81e03a9     	stur	x9, [x29, #-0x20]
     2d4: f81e83a9     	stur	x9, [x29, #-0x18]
     2d8: 9101c149     	add	x9, x10, #0x70
     2dc: f81903a9     	stur	x9, [x29, #-0x70]
     2e0: a90723e8     	stp	x8, x8, [sp, #0x70]
     2e4: f81883a9     	stur	x9, [x29, #-0x78]
     2e8: 94000000     	bl	0x2e8 <zte_ir_write+0x2e4>
		00000000000002e8:  R_AARCH64_CALL26	spi_sync
     2ec: 2a0003f4     	mov	w20, w0
     2f0: 340000c0     	cbz	w0, 0x308 <zte_ir_write+0x304>
     2f4: f9444ae0     	ldr	x0, [x23, #0x890]
     2f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1
     2fc: 91000021     	add	x1, x1, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1
     300: 2a1403e2     	mov	w2, w20
     304: 94000000     	bl	0x304 <zte_ir_write+0x300>
		0000000000000304:  R_AARCH64_CALL26	_dev_err
     308: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26
     30c: 91000000     	add	x0, x0, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26
     310: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd9
     314: 91000021     	add	x1, x1, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd9
     318: 2a1403e2     	mov	w2, w20
     31c: 94000000     	bl	0x31c <zte_ir_write+0x318>
		000000000000031c:  R_AARCH64_CALL26	_printk
     320: 17ffff5f     	b	0x9c <zte_ir_write+0x98>
     324: d42aa240     	brk	#0x5512
     328: d4200020     	brk	#0x1
     32c: 94000000     	bl	0x32c <zte_ir_write+0x328>
		000000000000032c:  R_AARCH64_CALL26	__stack_chk_fail
