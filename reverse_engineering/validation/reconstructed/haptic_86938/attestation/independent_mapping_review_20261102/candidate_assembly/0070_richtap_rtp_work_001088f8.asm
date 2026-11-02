
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006fc8 <richtap_rtp_work>:
    6fc8: d503233f     	paciasp
    6fcc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    6fd0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    6fd4: a90257f6     	stp	x22, x21, [sp, #0x20]
    6fd8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6fdc: 910003fd     	mov	x29, sp
    6fe0: b900781f     	str	wzr, [x0, #0x78]
    6fe4: aa0003f3     	mov	x19, x0
    6fe8: 2a1f03f5     	mov	w21, wzr
    6fec: f85c8008     	ldur	x8, [x0, #-0x38]
    6ff0: 2a1f03f7     	mov	w23, wzr
    6ff4: d1192014     	sub	x20, x0, #0x648
    6ff8: d107c016     	sub	x22, x0, #0x1f0
    6ffc: 52801ff8     	mov	w24, #0xff              // =255
    7000: f81d8008     	stur	x8, [x0, #-0x28]
    7004: f85d8268     	ldur	x8, [x19, #-0x28]
    7008: 39400109     	ldrb	w9, [x8]
    700c: 7101553f     	cmp	w9, #0x55
    7010: 540000c0     	b.eq	0x7028 <richtap_rtp_work+0x60>
    7014: 7102a93f     	cmp	w9, #0xaa
    7018: 54000540     	b.eq	0x70c0 <richtap_rtp_work+0xf8>
    701c: 52800020     	mov	w0, #0x1                // =1
    7020: 94000000     	bl	0x7020 <richtap_rtp_work+0x58>
		0000000000007020:  R_AARCH64_CALL26	msleep
    7024: 14000021     	b	0x70a8 <richtap_rtp_work+0xe0>
    7028: 79c00508     	ldrsh	w8, [x8, #0x2]
    702c: b94002c9     	ldr	w9, [x22]
    7030: 0b0802aa     	add	w10, w21, w8
    7034: 6b09015f     	cmp	w10, w9
    7038: 54000189     	b.ls	0x7068 <richtap_rtp_work+0xa0>
    703c: f85c0268     	ldur	x8, [x19, #-0x40]
    7040: 4b150122     	sub	w2, w9, w21
    7044: 8b354100     	add	x0, x8, w21, uxtw
    7048: f85d8268     	ldur	x8, [x19, #-0x28]
    704c: 91006101     	add	x1, x8, #0x18
    7050: 94000000     	bl	0x7050 <richtap_rtp_work+0x88>
		0000000000007050:  R_AARCH64_CALL26	memcpy
    7054: b94002c8     	ldr	w8, [x22]
    7058: 4b150109     	sub	w9, w8, w21
    705c: 2a0803f5     	mov	w21, w8
    7060: 7900e269     	strh	w9, [x19, #0x70]
    7064: 14000011     	b	0x70a8 <richtap_rtp_work+0xe0>
    7068: f85c0269     	ldur	x9, [x19, #-0x40]
    706c: 93407d02     	sxtw	x2, w8
    7070: f85d8268     	ldur	x8, [x19, #-0x28]
    7074: 8b354120     	add	x0, x9, w21, uxtw
    7078: 91006101     	add	x1, x8, #0x18
    707c: 94000000     	bl	0x707c <richtap_rtp_work+0xb4>
		000000000000707c:  R_AARCH64_CALL26	memcpy
    7080: f85d8268     	ldur	x8, [x19, #-0x28]
    7084: 39000118     	strb	w24, [x8]
    7088: 79c00508     	ldrsh	w8, [x8, #0x2]
    708c: f85d8269     	ldur	x9, [x19, #-0x28]
    7090: 0b0802b5     	add	w21, w21, w8
    7094: 7900053f     	strh	wzr, [x9, #0x2]
    7098: f85d8269     	ldur	x9, [x19, #-0x28]
    709c: 7900e27f     	strh	wzr, [x19, #0x70]
    70a0: f9400529     	ldr	x9, [x9, #0x8]
    70a4: f81d8269     	stur	x9, [x19, #-0x28]
    70a8: b94002c8     	ldr	w8, [x22]
    70ac: 6b0802bf     	cmp	w21, w8
    70b0: 54000082     	b.hs	0x70c0 <richtap_rtp_work+0xf8>
    70b4: 71007aff     	cmp	w23, #0x1e
    70b8: 110006f7     	add	w23, w23, #0x1
    70bc: 54fffa43     	b.lo	0x7004 <richtap_rtp_work+0x3c>
    70c0: aa1403e0     	mov	x0, x20
    70c4: 94000000     	bl	0x70c4 <richtap_rtp_work+0xfc>
		00000000000070c4:  R_AARCH64_CALL26	richtap_rtp_start
    70c8: 36000c60     	tbz	w0, #0x0, 0x7254 <richtap_rtp_work+0x28c>
    70cc: f8580268     	ldur	x8, [x19, #-0x80]
    70d0: f85c0261     	ldur	x1, [x19, #-0x40]
    70d4: aa1403e0     	mov	x0, x20
    70d8: 2a1503e2     	mov	w2, w21
    70dc: f9406908     	ldr	x8, [x8, #0xd0]
    70e0: b85fc110     	ldur	w16, [x8, #-0x4]
    70e4: 72965371     	movk	w17, #0xb29b
    70e8: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    70ec: 6b11021f     	cmp	w16, w17
    70f0: 54000040     	b.eq	0x70f8 <richtap_rtp_work+0x130>
    70f4: d4304500     	brk	#0x8228
    70f8: d63f0100     	blr	x8
    70fc: d118de68     	sub	x8, x19, #0x637
    7100: 39400108     	ldrb	w8, [x8]
    7104: 7100051f     	cmp	w8, #0x1
    7108: 54000781     	b.ne	0x71f8 <richtap_rtp_work+0x230>
    710c: d118c675     	sub	x21, x19, #0x631
    7110: b9007668     	str	w8, [x19, #0x74]
    7114: f8580268     	ldur	x8, [x19, #-0x80]
    7118: aa1403e0     	mov	x0, x20
    711c: f940b908     	ldr	x8, [x8, #0x170]
    7120: b85fc110     	ldur	w16, [x8, #-0x4]
    7124: 72870a91     	movk	w17, #0x3854
    7128: 72af0971     	movk	w17, #0x784b, lsl #16
    712c: 6b11021f     	cmp	w16, w17
    7130: 54000040     	b.eq	0x7138 <richtap_rtp_work+0x170>
    7134: d4304500     	brk	#0x8228
    7138: d63f0100     	blr	x8
    713c: 72001c1f     	tst	w0, #0xff
    7140: 54000301     	b.ne	0x71a0 <richtap_rtp_work+0x1d8>
    7144: 394002a8     	ldrb	w8, [x21]
    7148: 7100091f     	cmp	w8, #0x2
    714c: 540002a1     	b.ne	0x71a0 <richtap_rtp_work+0x1d8>
    7150: f85d8268     	ldur	x8, [x19, #-0x28]
    7154: 39400108     	ldrb	w8, [x8]
    7158: 7101551f     	cmp	w8, #0x55
    715c: 54000221     	b.ne	0x71a0 <richtap_rtp_work+0x1d8>
    7160: b94002c8     	ldr	w8, [x22]
    7164: aa1403e0     	mov	x0, x20
    7168: 53027d01     	lsr	w1, w8, #2
    716c: 94000000     	bl	0x716c <richtap_rtp_work+0x1a4>
		000000000000716c:  R_AARCH64_CALL26	richtap_update_fifo_data
    7170: f8580268     	ldur	x8, [x19, #-0x80]
    7174: aa1403e0     	mov	x0, x20
    7178: f940b108     	ldr	x8, [x8, #0x160]
    717c: b85fc110     	ldur	w16, [x8, #-0x4]
    7180: 72870a91     	movk	w17, #0x3854
    7184: 72af0971     	movk	w17, #0x784b, lsl #16
    7188: 6b11021f     	cmp	w16, w17
    718c: 54000040     	b.eq	0x7194 <richtap_rtp_work+0x1cc>
    7190: d4304500     	brk	#0x8228
    7194: d63f0100     	blr	x8
    7198: 72000c1f     	tst	w0, #0xf
    719c: 54fffbc1     	b.ne	0x7114 <richtap_rtp_work+0x14c>
    71a0: f8580268     	ldur	x8, [x19, #-0x80]
    71a4: aa1403e0     	mov	x0, x20
    71a8: f9407908     	ldr	x8, [x8, #0xf0]
    71ac: b85fc110     	ldur	w16, [x8, #-0x4]
    71b0: 72810611     	movk	w17, #0x830
    71b4: 72b08f51     	movk	w17, #0x847a, lsl #16
    71b8: 6b11021f     	cmp	w16, w17
    71bc: 54000040     	b.eq	0x71c4 <richtap_rtp_work+0x1fc>
    71c0: d4304500     	brk	#0x8228
    71c4: d63f0100     	blr	x8
    71c8: f8580268     	ldur	x8, [x19, #-0x80]
    71cc: aa1403e0     	mov	x0, x20
    71d0: 52800021     	mov	w1, #0x1                // =1
    71d4: f9408908     	ldr	x8, [x8, #0x110]
    71d8: b85fc110     	ldur	w16, [x8, #-0x4]
    71dc: 729bedd1     	movk	w17, #0xdf6e
    71e0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    71e4: 6b11021f     	cmp	w16, w17
    71e8: 54000040     	b.eq	0x71f0 <richtap_rtp_work+0x228>
    71ec: d4304500     	brk	#0x8228
    71f0: d63f0100     	blr	x8
    71f4: 14000018     	b	0x7254 <richtap_rtp_work+0x28c>
    71f8: f8580268     	ldur	x8, [x19, #-0x80]
    71fc: aa1403e0     	mov	x0, x20
    7200: 52800021     	mov	w1, #0x1                // =1
    7204: 52800035     	mov	w21, #0x1               // =1
    7208: f9408908     	ldr	x8, [x8, #0x110]
    720c: b85fc110     	ldur	w16, [x8, #-0x4]
    7210: 729bedd1     	movk	w17, #0xdf6e
    7214: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7218: 6b11021f     	cmp	w16, w17
    721c: 54000040     	b.eq	0x7224 <richtap_rtp_work+0x25c>
    7220: d4304500     	brk	#0x8228
    7224: d63f0100     	blr	x8
    7228: f8580268     	ldur	x8, [x19, #-0x80]
    722c: aa1403e0     	mov	x0, x20
    7230: f9407908     	ldr	x8, [x8, #0xf0]
    7234: b85fc110     	ldur	w16, [x8, #-0x4]
    7238: 72810611     	movk	w17, #0x830
    723c: 72b08f51     	movk	w17, #0x847a, lsl #16
    7240: 6b11021f     	cmp	w16, w17
    7244: 54000040     	b.eq	0x724c <richtap_rtp_work+0x284>
    7248: d4304500     	brk	#0x8228
    724c: d63f0100     	blr	x8
    7250: b9007675     	str	w21, [x19, #0x74]
    7254: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7258: a94257f6     	ldp	x22, x21, [sp, #0x20]
    725c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    7260: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    7264: d50323bf     	autiasp
    7268: d65f03c0     	ret
