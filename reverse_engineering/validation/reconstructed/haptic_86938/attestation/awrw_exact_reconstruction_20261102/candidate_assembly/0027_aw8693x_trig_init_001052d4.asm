
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007ea4 <aw8693x_trig_init>:
    7ea4: d503233f     	paciasp
    7ea8: d10103ff     	sub	sp, sp, #0x40
    7eac: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7eb0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7eb4: 910083fd     	add	x29, sp, #0x20
    7eb8: d5384108     	mrs	x8, SP_EL0
    7ebc: aa0003f3     	mov	x19, x0
    7ec0: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007ec0:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_enter
    7ec4: 91000000     	add	x0, x0, #0x0
		0000000000007ec4:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_enter
    7ec8: f9438908     	ldr	x8, [x8, #0x710]
    7ecc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007ecc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_haptic_hv
    7ed0: 91000021     	add	x1, x1, #0x0
		0000000000007ed0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_haptic_hv
    7ed4: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007ed4:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_trig_init
    7ed8: 91000063     	add	x3, x3, #0x0
		0000000000007ed8:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_trig_init
    7edc: 5280c322     	mov	w2, #0x619              // =1561
    7ee0: f81f83a8     	stur	x8, [x29, #-0x8]
    7ee4: 94000000     	bl	0x7ee4 <aw8693x_trig_init+0x40>
		0000000000007ee4:  R_AARCH64_CALL26	_printk
    7ee8: 3952fe68     	ldrb	w8, [x19, #0x4bf]
    7eec: 7100051f     	cmp	w8, #0x1
    7ef0: 54001660     	b.eq	0x81bc <aw8693x_trig_init+0x318>
    7ef4: 39529668     	ldrb	w8, [x19, #0x4a5]
    7ef8: 39529e6a     	ldrb	w10, [x19, #0x4a7]
    7efc: 12800feb     	mov	w11, #-0x80             // =-128
    7f00: 39529a69     	ldrb	w9, [x19, #0x4a6]
    7f04: 3952a66c     	ldrb	w12, [x19, #0x4a9]
    7f08: aa1303e0     	mov	x0, x19
    7f0c: 7100011f     	cmp	w8, #0x0
    7f10: 39179e68     	strb	w8, [x19, #0x5e7]
    7f14: 52800721     	mov	w1, #0x39               // =57
    7f18: 1a9f07e8     	cset	w8, ne
    7f1c: 3917a66a     	strb	w10, [x19, #0x5e9]
    7f20: 3952a26a     	ldrb	w10, [x19, #0x4a8]
    7f24: 531a650d     	lsl	w13, w8, #6
    7f28: 331a010b     	bfi	w11, w8, #6, #1
    7f2c: 3952ae68     	ldrb	w8, [x19, #0x4ab]
    7f30: 7100013f     	cmp	w9, #0x0
    7f34: 3917a269     	strb	w9, [x19, #0x5e8]
    7f38: 3952aa69     	ldrb	w9, [x19, #0x4aa]
    7f3c: 3917ae6a     	strb	w10, [x19, #0x5eb]
    7f40: 1a8b01aa     	csel	w10, w13, w11, eq
    7f44: 3952b26b     	ldrb	w11, [x19, #0x4ac]
    7f48: 3917aa6c     	strb	w12, [x19, #0x5ea]
    7f4c: 321b014c     	orr	w12, w10, #0x20
    7f50: 7100011f     	cmp	w8, #0x0
    7f54: 3917b269     	strb	w9, [x19, #0x5ec]
    7f58: 1a8c0149     	csel	w9, w10, w12, eq
    7f5c: 7100017f     	cmp	w11, #0x0
    7f60: 39179668     	strb	w8, [x19, #0x5e5]
    7f64: 321c0128     	orr	w8, w9, #0x10
    7f68: 12801e02     	mov	w2, #-0xf1              // =-241
    7f6c: 1a880123     	csel	w3, w9, w8, eq
    7f70: 39179a6b     	strb	w11, [x19, #0x5e6]
    7f74: 94000000     	bl	0x7f74 <aw8693x_trig_init+0xd0>
		0000000000007f74:  R_AARCH64_CALL26	i2c_w_bits
    7f78: 3957a668     	ldrb	w8, [x19, #0x5e9]
    7f7c: 910033e2     	add	x2, sp, #0xc
    7f80: aa1303e0     	mov	x0, x19
    7f84: 52800661     	mov	w1, #0x33               // =51
    7f88: 52800023     	mov	w3, #0x1                // =1
    7f8c: 7100011f     	cmp	w8, #0x0
    7f90: 3957ae68     	ldrb	w8, [x19, #0x5eb]
    7f94: 1a9f07e9     	cset	w9, ne
    7f98: 2a091d08     	orr	w8, w8, w9, lsl #7
    7f9c: 390033e8     	strb	w8, [sp, #0xc]
    7fa0: 94000000     	bl	0x7fa0 <aw8693x_trig_init+0xfc>
		0000000000007fa0:  R_AARCH64_CALL26	i2c_w_bytes
    7fa4: 3957aa68     	ldrb	w8, [x19, #0x5ea]
    7fa8: 910033e2     	add	x2, sp, #0xc
    7fac: aa1303e0     	mov	x0, x19
    7fb0: 528006c1     	mov	w1, #0x36               // =54
    7fb4: 52800023     	mov	w3, #0x1                // =1
    7fb8: 7100011f     	cmp	w8, #0x0
    7fbc: 3957b268     	ldrb	w8, [x19, #0x5ec]
    7fc0: 1a9f07e9     	cset	w9, ne
    7fc4: 2a091d08     	orr	w8, w8, w9, lsl #7
    7fc8: 390033e8     	strb	w8, [sp, #0xc]
    7fcc: 94000000     	bl	0x7fcc <aw8693x_trig_init+0x128>
		0000000000007fcc:  R_AARCH64_CALL26	i2c_w_bytes
    7fd0: 3952b668     	ldrb	w8, [x19, #0x4ad]
    7fd4: 3952be6a     	ldrb	w10, [x19, #0x4af]
    7fd8: 5280010d     	mov	w13, #0x8               // =8
    7fdc: 3952ba69     	ldrb	w9, [x19, #0x4ae]
    7fe0: 3952c26b     	ldrb	w11, [x19, #0x4b0]
    7fe4: aa1303e0     	mov	x0, x19
    7fe8: 7100011f     	cmp	w8, #0x0
    7fec: 3917da6a     	strb	w10, [x19, #0x5f6]
    7ff0: 52800721     	mov	w1, #0x39               // =57
    7ff4: 1a9f07ea     	cset	w10, ne
    7ff8: 3917d268     	strb	w8, [x19, #0x5f4]
    7ffc: 3952c668     	ldrb	w8, [x19, #0x4b1]
    8000: 531e754c     	lsl	w12, w10, #2
    8004: 331e014d     	bfi	w13, w10, #2, #1
    8008: 3952da6a     	ldrb	w10, [x19, #0x4b6]
    800c: 3917d669     	strb	w9, [x19, #0x5f5]
    8010: 7100013f     	cmp	w9, #0x0
    8014: 3952de69     	ldrb	w9, [x19, #0x4b7]
    8018: 3917e26b     	strb	w11, [x19, #0x5f8]
    801c: 3952ca6b     	ldrb	w11, [x19, #0x4b2]
    8020: 1a8d018c     	csel	w12, w12, w13, eq
    8024: 39180a6a     	strb	w10, [x19, #0x602]
    8028: 3952e26a     	ldrb	w10, [x19, #0x4b8]
    802c: 9117fe6d     	add	x13, x19, #0x5ff
    8030: 3917de68     	strb	w8, [x19, #0x5f7]
    8034: 3952ce68     	ldrb	w8, [x19, #0x4b3]
    8038: 128001e2     	mov	w2, #-0x10              // =-16
    803c: 3917e66b     	strb	w11, [x19, #0x5f9]
    8040: 3952d66b     	ldrb	w11, [x19, #0x4b5]
    8044: 39180e69     	strb	w9, [x19, #0x603]
    8048: 3952e669     	ldrb	w9, [x19, #0x4b9]
    804c: 7100011f     	cmp	w8, #0x0
    8050: 3918166a     	strb	w10, [x19, #0x605]
    8054: 3952d26a     	ldrb	w10, [x19, #0x4b4]
    8058: 3918066b     	strb	w11, [x19, #0x601]
    805c: 9112ee6b     	add	x11, x19, #0x4bb
    8060: 39181269     	strb	w9, [x19, #0x604]
    8064: 321f0189     	orr	w9, w12, #0x2
    8068: 7940016b     	ldrh	w11, [x11]
    806c: 3917ca68     	strb	w8, [x19, #0x5f2]
    8070: 3952ea68     	ldrb	w8, [x19, #0x4ba]
    8074: 1a890189     	csel	w9, w12, w9, eq
    8078: 7100015f     	cmp	w10, #0x0
    807c: 3917ce6a     	strb	w10, [x19, #0x5f3]
    8080: 1a890523     	cinc	w3, w9, ne
    8084: 39181a68     	strb	w8, [x19, #0x606]
    8088: 790001ab     	strh	w11, [x13]
    808c: 94000000     	bl	0x808c <aw8693x_trig_init+0x1e8>
		000000000000808c:  R_AARCH64_CALL26	i2c_w_bits
    8090: 3957da68     	ldrb	w8, [x19, #0x5f6]
    8094: 910043e2     	add	x2, sp, #0x10
    8098: aa1303e0     	mov	x0, x19
    809c: 52800681     	mov	w1, #0x34               // =52
    80a0: 52800023     	mov	w3, #0x1                // =1
    80a4: 7100011f     	cmp	w8, #0x0
    80a8: 3957e268     	ldrb	w8, [x19, #0x5f8]
    80ac: 1a9f07e9     	cset	w9, ne
    80b0: 2a091d08     	orr	w8, w8, w9, lsl #7
    80b4: 390043e8     	strb	w8, [sp, #0x10]
    80b8: 94000000     	bl	0x80b8 <aw8693x_trig_init+0x214>
		00000000000080b8:  R_AARCH64_CALL26	i2c_w_bytes
    80bc: 3957de68     	ldrb	w8, [x19, #0x5f7]
    80c0: 910043e2     	add	x2, sp, #0x10
    80c4: aa1303e0     	mov	x0, x19
    80c8: 528006e1     	mov	w1, #0x37               // =55
    80cc: 52800023     	mov	w3, #0x1                // =1
    80d0: 7100011f     	cmp	w8, #0x0
    80d4: 3957e668     	ldrb	w8, [x19, #0x5f9]
    80d8: 1a9f07e9     	cset	w9, ne
    80dc: 2a091d08     	orr	w8, w8, w9, lsl #7
    80e0: 390043e8     	strb	w8, [sp, #0x10]
    80e4: 94000000     	bl	0x80e4 <aw8693x_trig_init+0x240>
		00000000000080e4:  R_AARCH64_CALL26	i2c_w_bytes
    80e8: 39580668     	ldrb	w8, [x19, #0x601]
    80ec: 39580a69     	ldrb	w9, [x19, #0x602]
    80f0: 12800fea     	mov	w10, #-0x80             // =-128
    80f4: aa1303e0     	mov	x0, x19
    80f8: 52800741     	mov	w1, #0x3a               // =58
    80fc: 12801e02     	mov	w2, #-0xf1              // =-241
    8100: 7100011f     	cmp	w8, #0x0
    8104: 1a9f07e8     	cset	w8, ne
    8108: 7100013f     	cmp	w9, #0x0
    810c: 531a650b     	lsl	w11, w8, #6
    8110: 331a010a     	bfi	w10, w8, #6, #1
    8114: 3957fe68     	ldrb	w8, [x19, #0x5ff]
    8118: 1a8a0169     	csel	w9, w11, w10, eq
    811c: 7100011f     	cmp	w8, #0x0
    8120: 39580268     	ldrb	w8, [x19, #0x600]
    8124: 321b012a     	orr	w10, w9, #0x20
    8128: 1a8a0129     	csel	w9, w9, w10, eq
    812c: 7100011f     	cmp	w8, #0x0
    8130: 321c012a     	orr	w10, w9, #0x10
    8134: 1a8a0123     	csel	w3, w9, w10, eq
    8138: 94000000     	bl	0x8138 <aw8693x_trig_init+0x294>
		0000000000008138:  R_AARCH64_CALL26	i2c_w_bits
    813c: 39580e68     	ldrb	w8, [x19, #0x603]
    8140: d10033a2     	sub	x2, x29, #0xc
    8144: aa1303e0     	mov	x0, x19
    8148: 528006a1     	mov	w1, #0x35               // =53
    814c: 52800023     	mov	w3, #0x1                // =1
    8150: 7100011f     	cmp	w8, #0x0
    8154: 39581668     	ldrb	w8, [x19, #0x605]
    8158: 1a9f07e9     	cset	w9, ne
    815c: 2a091d08     	orr	w8, w8, w9, lsl #7
    8160: 381f43a8     	sturb	w8, [x29, #-0xc]
    8164: 94000000     	bl	0x8164 <aw8693x_trig_init+0x2c0>
		0000000000008164:  R_AARCH64_CALL26	i2c_w_bytes
    8168: 39581268     	ldrb	w8, [x19, #0x604]
    816c: d10033a2     	sub	x2, x29, #0xc
    8170: aa1303e0     	mov	x0, x19
    8174: 52800701     	mov	w1, #0x38               // =56
    8178: 52800023     	mov	w3, #0x1                // =1
    817c: 7100011f     	cmp	w8, #0x0
    8180: 39581a68     	ldrb	w8, [x19, #0x606]
    8184: 1a9f07e9     	cset	w9, ne
    8188: 2a091d08     	orr	w8, w8, w9, lsl #7
    818c: 381f43a8     	sturb	w8, [x29, #-0xc]
    8190: 94000000     	bl	0x8190 <aw8693x_trig_init+0x2ec>
		0000000000008190:  R_AARCH64_CALL26	i2c_w_bytes
    8194: d5384108     	mrs	x8, SP_EL0
    8198: f9438908     	ldr	x8, [x8, #0x710]
    819c: f85f83a9     	ldur	x9, [x29, #-0x8]
    81a0: eb09011f     	cmp	x8, x9
    81a4: 54000541     	b.ne	0x824c <aw8693x_trig_init+0x3a8>
    81a8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    81ac: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    81b0: 910103ff     	add	sp, sp, #0x40
    81b4: d50323bf     	autiasp
    81b8: d65f03c0     	ret
    81bc: 90000014     	adrp	x20, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000081bc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_haptic_hv
    81c0: 91000294     	add	x20, x20, #0x0
		00000000000081c0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_haptic_hv
    81c4: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000081c4:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_one_wire_enabled
    81c8: 91000000     	add	x0, x0, #0x0
		00000000000081c8:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_one_wire_enabled
    81cc: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000081cc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_trig_init
    81d0: 91000063     	add	x3, x3, #0x0
		00000000000081d0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_trig_init
    81d4: aa1403e1     	mov	x1, x20
    81d8: 5280c362     	mov	w2, #0x61b              // =1563
    81dc: 94000000     	bl	0x81dc <aw8693x_trig_init+0x338>
		00000000000081dc:  R_AARCH64_CALL26	_printk
    81e0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000081e0:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_enter
    81e4: 91000000     	add	x0, x0, #0x0
		00000000000081e4:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_enter
    81e8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000081e8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_one_wire_init
    81ec: 91000063     	add	x3, x3, #0x0
		00000000000081ec:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_one_wire_init
    81f0: aa1403e1     	mov	x1, x20
    81f4: 52806162     	mov	w2, #0x30b              // =779
    81f8: 94000000     	bl	0x81f8 <aw8693x_trig_init+0x354>
		00000000000081f8:  R_AARCH64_CALL26	_printk
    81fc: 52800d88     	mov	w8, #0x6c               // =108
    8200: 910023e2     	add	x2, sp, #0x8
    8204: aa1303e0     	mov	x0, x19
    8208: 528007c1     	mov	w1, #0x3e               // =62
    820c: 52800023     	mov	w3, #0x1                // =1
    8210: 390023e8     	strb	w8, [sp, #0x8]
    8214: 94000000     	bl	0x8214 <aw8693x_trig_init+0x370>
		0000000000008214:  R_AARCH64_CALL26	i2c_w_bytes
    8218: 52800ea8     	mov	w8, #0x75               // =117
    821c: 910023e2     	add	x2, sp, #0x8
    8220: aa1303e0     	mov	x0, x19
    8224: 52800781     	mov	w1, #0x3c               // =60
    8228: 52800023     	mov	w3, #0x1                // =1
    822c: 390023e8     	strb	w8, [sp, #0x8]
    8230: 94000000     	bl	0x8230 <aw8693x_trig_init+0x38c>
		0000000000008230:  R_AARCH64_CALL26	i2c_w_bytes
    8234: aa1303e0     	mov	x0, x19
    8238: 52800741     	mov	w1, #0x3a               // =58
    823c: 12800102     	mov	w2, #-0x9               // =-9
    8240: 52800103     	mov	w3, #0x8                // =8
    8244: 94000000     	bl	0x8244 <aw8693x_trig_init+0x3a0>
		0000000000008244:  R_AARCH64_CALL26	i2c_w_bits
    8248: 17ffff62     	b	0x7fd0 <aw8693x_trig_init+0x12c>
    824c: 94000000     	bl	0x824c <aw8693x_trig_init+0x3a8>
		000000000000824c:  R_AARCH64_CALL26	__stack_chk_fail
