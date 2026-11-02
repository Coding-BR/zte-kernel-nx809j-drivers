
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007ed4 <aw8693x_trig_init>:
    7ed4: d503233f     	paciasp
    7ed8: d10103ff     	sub	sp, sp, #0x40
    7edc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7ee0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7ee4: 910083fd     	add	x29, sp, #0x20
    7ee8: d5384108     	mrs	x8, SP_EL0
    7eec: aa0003f3     	mov	x19, x0
    7ef0: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007ef0:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_enter
    7ef4: 91000000     	add	x0, x0, #0x0
		0000000000007ef4:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_enter
    7ef8: f9438908     	ldr	x8, [x8, #0x710]
    7efc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007efc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_haptic_hv
    7f00: 91000021     	add	x1, x1, #0x0
		0000000000007f00:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_haptic_hv
    7f04: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007f04:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_trig_init
    7f08: 91000063     	add	x3, x3, #0x0
		0000000000007f08:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_trig_init
    7f0c: 5280c322     	mov	w2, #0x619              // =1561
    7f10: f81f83a8     	stur	x8, [x29, #-0x8]
    7f14: 94000000     	bl	0x7f14 <aw8693x_trig_init+0x40>
		0000000000007f14:  R_AARCH64_CALL26	_printk
    7f18: 3952fe68     	ldrb	w8, [x19, #0x4bf]
    7f1c: 7100051f     	cmp	w8, #0x1
    7f20: 54001660     	b.eq	0x81ec <aw8693x_trig_init+0x318>
    7f24: 39529668     	ldrb	w8, [x19, #0x4a5]
    7f28: 39529e6a     	ldrb	w10, [x19, #0x4a7]
    7f2c: 12800feb     	mov	w11, #-0x80             // =-128
    7f30: 39529a69     	ldrb	w9, [x19, #0x4a6]
    7f34: 3952a66c     	ldrb	w12, [x19, #0x4a9]
    7f38: aa1303e0     	mov	x0, x19
    7f3c: 7100011f     	cmp	w8, #0x0
    7f40: 39179e68     	strb	w8, [x19, #0x5e7]
    7f44: 52800721     	mov	w1, #0x39               // =57
    7f48: 1a9f07e8     	cset	w8, ne
    7f4c: 3917a66a     	strb	w10, [x19, #0x5e9]
    7f50: 3952a26a     	ldrb	w10, [x19, #0x4a8]
    7f54: 531a650d     	lsl	w13, w8, #6
    7f58: 331a010b     	bfi	w11, w8, #6, #1
    7f5c: 3952ae68     	ldrb	w8, [x19, #0x4ab]
    7f60: 7100013f     	cmp	w9, #0x0
    7f64: 3917a269     	strb	w9, [x19, #0x5e8]
    7f68: 3952aa69     	ldrb	w9, [x19, #0x4aa]
    7f6c: 3917ae6a     	strb	w10, [x19, #0x5eb]
    7f70: 1a8b01aa     	csel	w10, w13, w11, eq
    7f74: 3952b26b     	ldrb	w11, [x19, #0x4ac]
    7f78: 3917aa6c     	strb	w12, [x19, #0x5ea]
    7f7c: 321b014c     	orr	w12, w10, #0x20
    7f80: 7100011f     	cmp	w8, #0x0
    7f84: 3917b269     	strb	w9, [x19, #0x5ec]
    7f88: 1a8c0149     	csel	w9, w10, w12, eq
    7f8c: 7100017f     	cmp	w11, #0x0
    7f90: 39179668     	strb	w8, [x19, #0x5e5]
    7f94: 321c0128     	orr	w8, w9, #0x10
    7f98: 12801e02     	mov	w2, #-0xf1              // =-241
    7f9c: 1a880123     	csel	w3, w9, w8, eq
    7fa0: 39179a6b     	strb	w11, [x19, #0x5e6]
    7fa4: 94000000     	bl	0x7fa4 <aw8693x_trig_init+0xd0>
		0000000000007fa4:  R_AARCH64_CALL26	i2c_w_bits
    7fa8: 3957a668     	ldrb	w8, [x19, #0x5e9]
    7fac: 910033e2     	add	x2, sp, #0xc
    7fb0: aa1303e0     	mov	x0, x19
    7fb4: 52800661     	mov	w1, #0x33               // =51
    7fb8: 52800023     	mov	w3, #0x1                // =1
    7fbc: 7100011f     	cmp	w8, #0x0
    7fc0: 3957ae68     	ldrb	w8, [x19, #0x5eb]
    7fc4: 1a9f07e9     	cset	w9, ne
    7fc8: 2a091d08     	orr	w8, w8, w9, lsl #7
    7fcc: 390033e8     	strb	w8, [sp, #0xc]
    7fd0: 94000000     	bl	0x7fd0 <aw8693x_trig_init+0xfc>
		0000000000007fd0:  R_AARCH64_CALL26	i2c_w_bytes
    7fd4: 3957aa68     	ldrb	w8, [x19, #0x5ea]
    7fd8: 910033e2     	add	x2, sp, #0xc
    7fdc: aa1303e0     	mov	x0, x19
    7fe0: 528006c1     	mov	w1, #0x36               // =54
    7fe4: 52800023     	mov	w3, #0x1                // =1
    7fe8: 7100011f     	cmp	w8, #0x0
    7fec: 3957b268     	ldrb	w8, [x19, #0x5ec]
    7ff0: 1a9f07e9     	cset	w9, ne
    7ff4: 2a091d08     	orr	w8, w8, w9, lsl #7
    7ff8: 390033e8     	strb	w8, [sp, #0xc]
    7ffc: 94000000     	bl	0x7ffc <aw8693x_trig_init+0x128>
		0000000000007ffc:  R_AARCH64_CALL26	i2c_w_bytes
    8000: 3952b668     	ldrb	w8, [x19, #0x4ad]
    8004: 3952be6a     	ldrb	w10, [x19, #0x4af]
    8008: 5280010d     	mov	w13, #0x8               // =8
    800c: 3952ba69     	ldrb	w9, [x19, #0x4ae]
    8010: 3952c26b     	ldrb	w11, [x19, #0x4b0]
    8014: aa1303e0     	mov	x0, x19
    8018: 7100011f     	cmp	w8, #0x0
    801c: 3917da6a     	strb	w10, [x19, #0x5f6]
    8020: 52800721     	mov	w1, #0x39               // =57
    8024: 1a9f07ea     	cset	w10, ne
    8028: 3917d268     	strb	w8, [x19, #0x5f4]
    802c: 3952c668     	ldrb	w8, [x19, #0x4b1]
    8030: 531e754c     	lsl	w12, w10, #2
    8034: 331e014d     	bfi	w13, w10, #2, #1
    8038: 3952da6a     	ldrb	w10, [x19, #0x4b6]
    803c: 3917d669     	strb	w9, [x19, #0x5f5]
    8040: 7100013f     	cmp	w9, #0x0
    8044: 3952de69     	ldrb	w9, [x19, #0x4b7]
    8048: 3917e26b     	strb	w11, [x19, #0x5f8]
    804c: 3952ca6b     	ldrb	w11, [x19, #0x4b2]
    8050: 1a8d018c     	csel	w12, w12, w13, eq
    8054: 39180a6a     	strb	w10, [x19, #0x602]
    8058: 3952e26a     	ldrb	w10, [x19, #0x4b8]
    805c: 9117fe6d     	add	x13, x19, #0x5ff
    8060: 3917de68     	strb	w8, [x19, #0x5f7]
    8064: 3952ce68     	ldrb	w8, [x19, #0x4b3]
    8068: 128001e2     	mov	w2, #-0x10              // =-16
    806c: 3917e66b     	strb	w11, [x19, #0x5f9]
    8070: 3952d66b     	ldrb	w11, [x19, #0x4b5]
    8074: 39180e69     	strb	w9, [x19, #0x603]
    8078: 3952e669     	ldrb	w9, [x19, #0x4b9]
    807c: 7100011f     	cmp	w8, #0x0
    8080: 3918166a     	strb	w10, [x19, #0x605]
    8084: 3952d26a     	ldrb	w10, [x19, #0x4b4]
    8088: 3918066b     	strb	w11, [x19, #0x601]
    808c: 9112ee6b     	add	x11, x19, #0x4bb
    8090: 39181269     	strb	w9, [x19, #0x604]
    8094: 321f0189     	orr	w9, w12, #0x2
    8098: 7940016b     	ldrh	w11, [x11]
    809c: 3917ca68     	strb	w8, [x19, #0x5f2]
    80a0: 3952ea68     	ldrb	w8, [x19, #0x4ba]
    80a4: 1a890189     	csel	w9, w12, w9, eq
    80a8: 7100015f     	cmp	w10, #0x0
    80ac: 3917ce6a     	strb	w10, [x19, #0x5f3]
    80b0: 1a890523     	cinc	w3, w9, ne
    80b4: 39181a68     	strb	w8, [x19, #0x606]
    80b8: 790001ab     	strh	w11, [x13]
    80bc: 94000000     	bl	0x80bc <aw8693x_trig_init+0x1e8>
		00000000000080bc:  R_AARCH64_CALL26	i2c_w_bits
    80c0: 3957da68     	ldrb	w8, [x19, #0x5f6]
    80c4: 910043e2     	add	x2, sp, #0x10
    80c8: aa1303e0     	mov	x0, x19
    80cc: 52800681     	mov	w1, #0x34               // =52
    80d0: 52800023     	mov	w3, #0x1                // =1
    80d4: 7100011f     	cmp	w8, #0x0
    80d8: 3957e268     	ldrb	w8, [x19, #0x5f8]
    80dc: 1a9f07e9     	cset	w9, ne
    80e0: 2a091d08     	orr	w8, w8, w9, lsl #7
    80e4: 390043e8     	strb	w8, [sp, #0x10]
    80e8: 94000000     	bl	0x80e8 <aw8693x_trig_init+0x214>
		00000000000080e8:  R_AARCH64_CALL26	i2c_w_bytes
    80ec: 3957de68     	ldrb	w8, [x19, #0x5f7]
    80f0: 910043e2     	add	x2, sp, #0x10
    80f4: aa1303e0     	mov	x0, x19
    80f8: 528006e1     	mov	w1, #0x37               // =55
    80fc: 52800023     	mov	w3, #0x1                // =1
    8100: 7100011f     	cmp	w8, #0x0
    8104: 3957e668     	ldrb	w8, [x19, #0x5f9]
    8108: 1a9f07e9     	cset	w9, ne
    810c: 2a091d08     	orr	w8, w8, w9, lsl #7
    8110: 390043e8     	strb	w8, [sp, #0x10]
    8114: 94000000     	bl	0x8114 <aw8693x_trig_init+0x240>
		0000000000008114:  R_AARCH64_CALL26	i2c_w_bytes
    8118: 39580668     	ldrb	w8, [x19, #0x601]
    811c: 39580a69     	ldrb	w9, [x19, #0x602]
    8120: 12800fea     	mov	w10, #-0x80             // =-128
    8124: aa1303e0     	mov	x0, x19
    8128: 52800741     	mov	w1, #0x3a               // =58
    812c: 12801e02     	mov	w2, #-0xf1              // =-241
    8130: 7100011f     	cmp	w8, #0x0
    8134: 1a9f07e8     	cset	w8, ne
    8138: 7100013f     	cmp	w9, #0x0
    813c: 531a650b     	lsl	w11, w8, #6
    8140: 331a010a     	bfi	w10, w8, #6, #1
    8144: 3957fe68     	ldrb	w8, [x19, #0x5ff]
    8148: 1a8a0169     	csel	w9, w11, w10, eq
    814c: 7100011f     	cmp	w8, #0x0
    8150: 39580268     	ldrb	w8, [x19, #0x600]
    8154: 321b012a     	orr	w10, w9, #0x20
    8158: 1a8a0129     	csel	w9, w9, w10, eq
    815c: 7100011f     	cmp	w8, #0x0
    8160: 321c012a     	orr	w10, w9, #0x10
    8164: 1a8a0123     	csel	w3, w9, w10, eq
    8168: 94000000     	bl	0x8168 <aw8693x_trig_init+0x294>
		0000000000008168:  R_AARCH64_CALL26	i2c_w_bits
    816c: 39580e68     	ldrb	w8, [x19, #0x603]
    8170: d10033a2     	sub	x2, x29, #0xc
    8174: aa1303e0     	mov	x0, x19
    8178: 528006a1     	mov	w1, #0x35               // =53
    817c: 52800023     	mov	w3, #0x1                // =1
    8180: 7100011f     	cmp	w8, #0x0
    8184: 39581668     	ldrb	w8, [x19, #0x605]
    8188: 1a9f07e9     	cset	w9, ne
    818c: 2a091d08     	orr	w8, w8, w9, lsl #7
    8190: 381f43a8     	sturb	w8, [x29, #-0xc]
    8194: 94000000     	bl	0x8194 <aw8693x_trig_init+0x2c0>
		0000000000008194:  R_AARCH64_CALL26	i2c_w_bytes
    8198: 39581268     	ldrb	w8, [x19, #0x604]
    819c: d10033a2     	sub	x2, x29, #0xc
    81a0: aa1303e0     	mov	x0, x19
    81a4: 52800701     	mov	w1, #0x38               // =56
    81a8: 52800023     	mov	w3, #0x1                // =1
    81ac: 7100011f     	cmp	w8, #0x0
    81b0: 39581a68     	ldrb	w8, [x19, #0x606]
    81b4: 1a9f07e9     	cset	w9, ne
    81b8: 2a091d08     	orr	w8, w8, w9, lsl #7
    81bc: 381f43a8     	sturb	w8, [x29, #-0xc]
    81c0: 94000000     	bl	0x81c0 <aw8693x_trig_init+0x2ec>
		00000000000081c0:  R_AARCH64_CALL26	i2c_w_bytes
    81c4: d5384108     	mrs	x8, SP_EL0
    81c8: f9438908     	ldr	x8, [x8, #0x710]
    81cc: f85f83a9     	ldur	x9, [x29, #-0x8]
    81d0: eb09011f     	cmp	x8, x9
    81d4: 54000541     	b.ne	0x827c <aw8693x_trig_init+0x3a8>
    81d8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    81dc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    81e0: 910103ff     	add	sp, sp, #0x40
    81e4: d50323bf     	autiasp
    81e8: d65f03c0     	ret
    81ec: 90000014     	adrp	x20, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000081ec:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_haptic_hv
    81f0: 91000294     	add	x20, x20, #0x0
		00000000000081f0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_haptic_hv
    81f4: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000081f4:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_one_wire_enabled
    81f8: 91000000     	add	x0, x0, #0x0
		00000000000081f8:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_one_wire_enabled
    81fc: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000081fc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_trig_init
    8200: 91000063     	add	x3, x3, #0x0
		0000000000008200:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_trig_init
    8204: aa1403e1     	mov	x1, x20
    8208: 5280c362     	mov	w2, #0x61b              // =1563
    820c: 94000000     	bl	0x820c <aw8693x_trig_init+0x338>
		000000000000820c:  R_AARCH64_CALL26	_printk
    8210: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008210:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_enter
    8214: 91000000     	add	x0, x0, #0x0
		0000000000008214:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_enter
    8218: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008218:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_one_wire_init
    821c: 91000063     	add	x3, x3, #0x0
		000000000000821c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_one_wire_init
    8220: aa1403e1     	mov	x1, x20
    8224: 52806162     	mov	w2, #0x30b              // =779
    8228: 94000000     	bl	0x8228 <aw8693x_trig_init+0x354>
		0000000000008228:  R_AARCH64_CALL26	_printk
    822c: 52800d88     	mov	w8, #0x6c               // =108
    8230: 910023e2     	add	x2, sp, #0x8
    8234: aa1303e0     	mov	x0, x19
    8238: 528007c1     	mov	w1, #0x3e               // =62
    823c: 52800023     	mov	w3, #0x1                // =1
    8240: 390023e8     	strb	w8, [sp, #0x8]
    8244: 94000000     	bl	0x8244 <aw8693x_trig_init+0x370>
		0000000000008244:  R_AARCH64_CALL26	i2c_w_bytes
    8248: 52800ea8     	mov	w8, #0x75               // =117
    824c: 910023e2     	add	x2, sp, #0x8
    8250: aa1303e0     	mov	x0, x19
    8254: 52800781     	mov	w1, #0x3c               // =60
    8258: 52800023     	mov	w3, #0x1                // =1
    825c: 390023e8     	strb	w8, [sp, #0x8]
    8260: 94000000     	bl	0x8260 <aw8693x_trig_init+0x38c>
		0000000000008260:  R_AARCH64_CALL26	i2c_w_bytes
    8264: aa1303e0     	mov	x0, x19
    8268: 52800741     	mov	w1, #0x3a               // =58
    826c: 12800102     	mov	w2, #-0x9               // =-9
    8270: 52800103     	mov	w3, #0x8                // =8
    8274: 94000000     	bl	0x8274 <aw8693x_trig_init+0x3a0>
		0000000000008274:  R_AARCH64_CALL26	i2c_w_bits
    8278: 17ffff62     	b	0x8000 <aw8693x_trig_init+0x12c>
    827c: 94000000     	bl	0x827c <aw8693x_trig_init+0x3a8>
		000000000000827c:  R_AARCH64_CALL26	__stack_chk_fail
