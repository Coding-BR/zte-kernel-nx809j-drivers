
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006f98 <richtap_rtp_work>:
    6f98: d503233f     	paciasp
    6f9c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    6fa0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    6fa4: a90257f6     	stp	x22, x21, [sp, #0x20]
    6fa8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6fac: 910003fd     	mov	x29, sp
    6fb0: b900781f     	str	wzr, [x0, #0x78]
    6fb4: aa0003f3     	mov	x19, x0
    6fb8: 2a1f03f5     	mov	w21, wzr
    6fbc: f85c8008     	ldur	x8, [x0, #-0x38]
    6fc0: 2a1f03f7     	mov	w23, wzr
    6fc4: d1192014     	sub	x20, x0, #0x648
    6fc8: d107c016     	sub	x22, x0, #0x1f0
    6fcc: 52801ff8     	mov	w24, #0xff              // =255
    6fd0: f81d8008     	stur	x8, [x0, #-0x28]
    6fd4: f85d8268     	ldur	x8, [x19, #-0x28]
    6fd8: 39400109     	ldrb	w9, [x8]
    6fdc: 7101553f     	cmp	w9, #0x55
    6fe0: 540000c0     	b.eq	0x6ff8 <richtap_rtp_work+0x60>
    6fe4: 7102a93f     	cmp	w9, #0xaa
    6fe8: 54000540     	b.eq	0x7090 <richtap_rtp_work+0xf8>
    6fec: 52800020     	mov	w0, #0x1                // =1
    6ff0: 94000000     	bl	0x6ff0 <richtap_rtp_work+0x58>
		0000000000006ff0:  R_AARCH64_CALL26	msleep
    6ff4: 14000021     	b	0x7078 <richtap_rtp_work+0xe0>
    6ff8: 79c00508     	ldrsh	w8, [x8, #0x2]
    6ffc: b94002c9     	ldr	w9, [x22]
    7000: 0b0802aa     	add	w10, w21, w8
    7004: 6b09015f     	cmp	w10, w9
    7008: 54000189     	b.ls	0x7038 <richtap_rtp_work+0xa0>
    700c: f85c0268     	ldur	x8, [x19, #-0x40]
    7010: 4b150122     	sub	w2, w9, w21
    7014: 8b354100     	add	x0, x8, w21, uxtw
    7018: f85d8268     	ldur	x8, [x19, #-0x28]
    701c: 91006101     	add	x1, x8, #0x18
    7020: 94000000     	bl	0x7020 <richtap_rtp_work+0x88>
		0000000000007020:  R_AARCH64_CALL26	memcpy
    7024: b94002c8     	ldr	w8, [x22]
    7028: 4b150109     	sub	w9, w8, w21
    702c: 2a0803f5     	mov	w21, w8
    7030: 7900e269     	strh	w9, [x19, #0x70]
    7034: 14000011     	b	0x7078 <richtap_rtp_work+0xe0>
    7038: f85c0269     	ldur	x9, [x19, #-0x40]
    703c: 93407d02     	sxtw	x2, w8
    7040: f85d8268     	ldur	x8, [x19, #-0x28]
    7044: 8b354120     	add	x0, x9, w21, uxtw
    7048: 91006101     	add	x1, x8, #0x18
    704c: 94000000     	bl	0x704c <richtap_rtp_work+0xb4>
		000000000000704c:  R_AARCH64_CALL26	memcpy
    7050: f85d8268     	ldur	x8, [x19, #-0x28]
    7054: 39000118     	strb	w24, [x8]
    7058: 79c00508     	ldrsh	w8, [x8, #0x2]
    705c: f85d8269     	ldur	x9, [x19, #-0x28]
    7060: 0b0802b5     	add	w21, w21, w8
    7064: 7900053f     	strh	wzr, [x9, #0x2]
    7068: f85d8269     	ldur	x9, [x19, #-0x28]
    706c: 7900e27f     	strh	wzr, [x19, #0x70]
    7070: f9400529     	ldr	x9, [x9, #0x8]
    7074: f81d8269     	stur	x9, [x19, #-0x28]
    7078: b94002c8     	ldr	w8, [x22]
    707c: 6b0802bf     	cmp	w21, w8
    7080: 54000082     	b.hs	0x7090 <richtap_rtp_work+0xf8>
    7084: 71007aff     	cmp	w23, #0x1e
    7088: 110006f7     	add	w23, w23, #0x1
    708c: 54fffa43     	b.lo	0x6fd4 <richtap_rtp_work+0x3c>
    7090: aa1403e0     	mov	x0, x20
    7094: 94000000     	bl	0x7094 <richtap_rtp_work+0xfc>
		0000000000007094:  R_AARCH64_CALL26	richtap_rtp_start
    7098: 36000c60     	tbz	w0, #0x0, 0x7224 <richtap_rtp_work+0x28c>
    709c: f8580268     	ldur	x8, [x19, #-0x80]
    70a0: f85c0261     	ldur	x1, [x19, #-0x40]
    70a4: aa1403e0     	mov	x0, x20
    70a8: 2a1503e2     	mov	w2, w21
    70ac: f9406908     	ldr	x8, [x8, #0xd0]
    70b0: b85fc110     	ldur	w16, [x8, #-0x4]
    70b4: 72965371     	movk	w17, #0xb29b
    70b8: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    70bc: 6b11021f     	cmp	w16, w17
    70c0: 54000040     	b.eq	0x70c8 <richtap_rtp_work+0x130>
    70c4: d4304500     	brk	#0x8228
    70c8: d63f0100     	blr	x8
    70cc: d118de68     	sub	x8, x19, #0x637
    70d0: 39400108     	ldrb	w8, [x8]
    70d4: 7100051f     	cmp	w8, #0x1
    70d8: 54000781     	b.ne	0x71c8 <richtap_rtp_work+0x230>
    70dc: d118c675     	sub	x21, x19, #0x631
    70e0: b9007668     	str	w8, [x19, #0x74]
    70e4: f8580268     	ldur	x8, [x19, #-0x80]
    70e8: aa1403e0     	mov	x0, x20
    70ec: f940b908     	ldr	x8, [x8, #0x170]
    70f0: b85fc110     	ldur	w16, [x8, #-0x4]
    70f4: 72870a91     	movk	w17, #0x3854
    70f8: 72af0971     	movk	w17, #0x784b, lsl #16
    70fc: 6b11021f     	cmp	w16, w17
    7100: 54000040     	b.eq	0x7108 <richtap_rtp_work+0x170>
    7104: d4304500     	brk	#0x8228
    7108: d63f0100     	blr	x8
    710c: 72001c1f     	tst	w0, #0xff
    7110: 54000301     	b.ne	0x7170 <richtap_rtp_work+0x1d8>
    7114: 394002a8     	ldrb	w8, [x21]
    7118: 7100091f     	cmp	w8, #0x2
    711c: 540002a1     	b.ne	0x7170 <richtap_rtp_work+0x1d8>
    7120: f85d8268     	ldur	x8, [x19, #-0x28]
    7124: 39400108     	ldrb	w8, [x8]
    7128: 7101551f     	cmp	w8, #0x55
    712c: 54000221     	b.ne	0x7170 <richtap_rtp_work+0x1d8>
    7130: b94002c8     	ldr	w8, [x22]
    7134: aa1403e0     	mov	x0, x20
    7138: 53027d01     	lsr	w1, w8, #2
    713c: 94000000     	bl	0x713c <richtap_rtp_work+0x1a4>
		000000000000713c:  R_AARCH64_CALL26	richtap_update_fifo_data
    7140: f8580268     	ldur	x8, [x19, #-0x80]
    7144: aa1403e0     	mov	x0, x20
    7148: f940b108     	ldr	x8, [x8, #0x160]
    714c: b85fc110     	ldur	w16, [x8, #-0x4]
    7150: 72870a91     	movk	w17, #0x3854
    7154: 72af0971     	movk	w17, #0x784b, lsl #16
    7158: 6b11021f     	cmp	w16, w17
    715c: 54000040     	b.eq	0x7164 <richtap_rtp_work+0x1cc>
    7160: d4304500     	brk	#0x8228
    7164: d63f0100     	blr	x8
    7168: 72000c1f     	tst	w0, #0xf
    716c: 54fffbc1     	b.ne	0x70e4 <richtap_rtp_work+0x14c>
    7170: f8580268     	ldur	x8, [x19, #-0x80]
    7174: aa1403e0     	mov	x0, x20
    7178: f9407908     	ldr	x8, [x8, #0xf0]
    717c: b85fc110     	ldur	w16, [x8, #-0x4]
    7180: 72810611     	movk	w17, #0x830
    7184: 72b08f51     	movk	w17, #0x847a, lsl #16
    7188: 6b11021f     	cmp	w16, w17
    718c: 54000040     	b.eq	0x7194 <richtap_rtp_work+0x1fc>
    7190: d4304500     	brk	#0x8228
    7194: d63f0100     	blr	x8
    7198: f8580268     	ldur	x8, [x19, #-0x80]
    719c: aa1403e0     	mov	x0, x20
    71a0: 52800021     	mov	w1, #0x1                // =1
    71a4: f9408908     	ldr	x8, [x8, #0x110]
    71a8: b85fc110     	ldur	w16, [x8, #-0x4]
    71ac: 729bedd1     	movk	w17, #0xdf6e
    71b0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    71b4: 6b11021f     	cmp	w16, w17
    71b8: 54000040     	b.eq	0x71c0 <richtap_rtp_work+0x228>
    71bc: d4304500     	brk	#0x8228
    71c0: d63f0100     	blr	x8
    71c4: 14000018     	b	0x7224 <richtap_rtp_work+0x28c>
    71c8: f8580268     	ldur	x8, [x19, #-0x80]
    71cc: aa1403e0     	mov	x0, x20
    71d0: 52800021     	mov	w1, #0x1                // =1
    71d4: 52800035     	mov	w21, #0x1               // =1
    71d8: f9408908     	ldr	x8, [x8, #0x110]
    71dc: b85fc110     	ldur	w16, [x8, #-0x4]
    71e0: 729bedd1     	movk	w17, #0xdf6e
    71e4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    71e8: 6b11021f     	cmp	w16, w17
    71ec: 54000040     	b.eq	0x71f4 <richtap_rtp_work+0x25c>
    71f0: d4304500     	brk	#0x8228
    71f4: d63f0100     	blr	x8
    71f8: f8580268     	ldur	x8, [x19, #-0x80]
    71fc: aa1403e0     	mov	x0, x20
    7200: f9407908     	ldr	x8, [x8, #0xf0]
    7204: b85fc110     	ldur	w16, [x8, #-0x4]
    7208: 72810611     	movk	w17, #0x830
    720c: 72b08f51     	movk	w17, #0x847a, lsl #16
    7210: 6b11021f     	cmp	w16, w17
    7214: 54000040     	b.eq	0x721c <richtap_rtp_work+0x284>
    7218: d4304500     	brk	#0x8228
    721c: d63f0100     	blr	x8
    7220: b9007675     	str	w21, [x19, #0x74]
    7224: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7228: a94257f6     	ldp	x22, x21, [sp, #0x20]
    722c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    7230: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    7234: d50323bf     	autiasp
    7238: d65f03c0     	ret
