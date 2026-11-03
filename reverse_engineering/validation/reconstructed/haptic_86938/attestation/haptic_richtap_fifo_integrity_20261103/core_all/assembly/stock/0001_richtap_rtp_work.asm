
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005ad8 <richtap_rtp_work>:
    5ad8: d503233f     	paciasp
    5adc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    5ae0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    5ae4: a90257f6     	stp	x22, x21, [sp, #0x20]
    5ae8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    5aec: 910003fd     	mov	x29, sp
    5af0: b900781f     	str	wzr, [x0, #0x78]
    5af4: aa0003f3     	mov	x19, x0
    5af8: 2a1f03f5     	mov	w21, wzr
    5afc: f85c8008     	ldur	x8, [x0, #-0x38]
    5b00: 2a1f03f7     	mov	w23, wzr
    5b04: d1192014     	sub	x20, x0, #0x648
    5b08: d107c016     	sub	x22, x0, #0x1f0
    5b0c: 52801ff8     	mov	w24, #0xff              // =255
    5b10: f81d8008     	stur	x8, [x0, #-0x28]
    5b14: f85d8268     	ldur	x8, [x19, #-0x28]
    5b18: 39400109     	ldrb	w9, [x8]
    5b1c: 7101553f     	cmp	w9, #0x55
    5b20: 540000c0     	b.eq	0x5b38 <richtap_rtp_work+0x60>
    5b24: 7102a93f     	cmp	w9, #0xaa
    5b28: 54000540     	b.eq	0x5bd0 <richtap_rtp_work+0xf8>
    5b2c: 52800020     	mov	w0, #0x1                // =1
    5b30: 94000000     	bl	0x5b30 <richtap_rtp_work+0x58>
		0000000000005b30:  R_AARCH64_CALL26	msleep
    5b34: 14000021     	b	0x5bb8 <richtap_rtp_work+0xe0>
    5b38: 79c00508     	ldrsh	w8, [x8, #0x2]
    5b3c: b94002c9     	ldr	w9, [x22]
    5b40: 0b0802aa     	add	w10, w21, w8
    5b44: 6b09015f     	cmp	w10, w9
    5b48: 54000189     	b.ls	0x5b78 <richtap_rtp_work+0xa0>
    5b4c: f85c0268     	ldur	x8, [x19, #-0x40]
    5b50: 4b150122     	sub	w2, w9, w21
    5b54: 8b354100     	add	x0, x8, w21, uxtw
    5b58: f85d8268     	ldur	x8, [x19, #-0x28]
    5b5c: 91006101     	add	x1, x8, #0x18
    5b60: 94000000     	bl	0x5b60 <richtap_rtp_work+0x88>
		0000000000005b60:  R_AARCH64_CALL26	memcpy
    5b64: b94002c8     	ldr	w8, [x22]
    5b68: 4b150109     	sub	w9, w8, w21
    5b6c: 2a0803f5     	mov	w21, w8
    5b70: 7900e269     	strh	w9, [x19, #0x70]
    5b74: 14000011     	b	0x5bb8 <richtap_rtp_work+0xe0>
    5b78: f85c0269     	ldur	x9, [x19, #-0x40]
    5b7c: 93407d02     	sxtw	x2, w8
    5b80: f85d8268     	ldur	x8, [x19, #-0x28]
    5b84: 8b354120     	add	x0, x9, w21, uxtw
    5b88: 91006101     	add	x1, x8, #0x18
    5b8c: 94000000     	bl	0x5b8c <richtap_rtp_work+0xb4>
		0000000000005b8c:  R_AARCH64_CALL26	memcpy
    5b90: f85d8268     	ldur	x8, [x19, #-0x28]
    5b94: 39000118     	strb	w24, [x8]
    5b98: 79c00508     	ldrsh	w8, [x8, #0x2]
    5b9c: f85d8269     	ldur	x9, [x19, #-0x28]
    5ba0: 0b0802b5     	add	w21, w21, w8
    5ba4: 7900053f     	strh	wzr, [x9, #0x2]
    5ba8: f85d8269     	ldur	x9, [x19, #-0x28]
    5bac: 7900e27f     	strh	wzr, [x19, #0x70]
    5bb0: f9400529     	ldr	x9, [x9, #0x8]
    5bb4: f81d8269     	stur	x9, [x19, #-0x28]
    5bb8: b94002c8     	ldr	w8, [x22]
    5bbc: 6b0802bf     	cmp	w21, w8
    5bc0: 54000082     	b.hs	0x5bd0 <richtap_rtp_work+0xf8>
    5bc4: 71007aff     	cmp	w23, #0x1e
    5bc8: 110006f7     	add	w23, w23, #0x1
    5bcc: 54fffa43     	b.lo	0x5b14 <richtap_rtp_work+0x3c>
    5bd0: aa1403e0     	mov	x0, x20
    5bd4: 940015fa     	bl	0xb3bc <richtap_rtp_start>
    5bd8: 36000c60     	tbz	w0, #0x0, 0x5d64 <richtap_rtp_work+0x28c>
    5bdc: f8580268     	ldur	x8, [x19, #-0x80]
    5be0: f85c0261     	ldur	x1, [x19, #-0x40]
    5be4: aa1403e0     	mov	x0, x20
    5be8: 2a1503e2     	mov	w2, w21
    5bec: f9406908     	ldr	x8, [x8, #0xd0]
    5bf0: b85fc110     	ldur	w16, [x8, #-0x4]
    5bf4: 72965371     	movk	w17, #0xb29b
    5bf8: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    5bfc: 6b11021f     	cmp	w16, w17
    5c00: 54000040     	b.eq	0x5c08 <richtap_rtp_work+0x130>
    5c04: d4304500     	brk	#0x8228
    5c08: d63f0100     	blr	x8
    5c0c: d118de68     	sub	x8, x19, #0x637
    5c10: 39400108     	ldrb	w8, [x8]
    5c14: 7100051f     	cmp	w8, #0x1
    5c18: 54000781     	b.ne	0x5d08 <richtap_rtp_work+0x230>
    5c1c: d118c675     	sub	x21, x19, #0x631
    5c20: b9007668     	str	w8, [x19, #0x74]
    5c24: f8580268     	ldur	x8, [x19, #-0x80]
    5c28: aa1403e0     	mov	x0, x20
    5c2c: f940b908     	ldr	x8, [x8, #0x170]
    5c30: b85fc110     	ldur	w16, [x8, #-0x4]
    5c34: 72870a91     	movk	w17, #0x3854
    5c38: 72af0971     	movk	w17, #0x784b, lsl #16
    5c3c: 6b11021f     	cmp	w16, w17
    5c40: 54000040     	b.eq	0x5c48 <richtap_rtp_work+0x170>
    5c44: d4304500     	brk	#0x8228
    5c48: d63f0100     	blr	x8
    5c4c: 72001c1f     	tst	w0, #0xff
    5c50: 54000301     	b.ne	0x5cb0 <richtap_rtp_work+0x1d8>
    5c54: 394002a8     	ldrb	w8, [x21]
    5c58: 7100091f     	cmp	w8, #0x2
    5c5c: 540002a1     	b.ne	0x5cb0 <richtap_rtp_work+0x1d8>
    5c60: f85d8268     	ldur	x8, [x19, #-0x28]
    5c64: 39400108     	ldrb	w8, [x8]
    5c68: 7101551f     	cmp	w8, #0x55
    5c6c: 54000221     	b.ne	0x5cb0 <richtap_rtp_work+0x1d8>
    5c70: b94002c8     	ldr	w8, [x22]
    5c74: aa1403e0     	mov	x0, x20
    5c78: 53027d01     	lsr	w1, w8, #2
    5c7c: 94000274     	bl	0x664c <richtap_update_fifo_data>
    5c80: f8580268     	ldur	x8, [x19, #-0x80]
    5c84: aa1403e0     	mov	x0, x20
    5c88: f940b108     	ldr	x8, [x8, #0x160]
    5c8c: b85fc110     	ldur	w16, [x8, #-0x4]
    5c90: 72870a91     	movk	w17, #0x3854
    5c94: 72af0971     	movk	w17, #0x784b, lsl #16
    5c98: 6b11021f     	cmp	w16, w17
    5c9c: 54000040     	b.eq	0x5ca4 <richtap_rtp_work+0x1cc>
    5ca0: d4304500     	brk	#0x8228
    5ca4: d63f0100     	blr	x8
    5ca8: 72000c1f     	tst	w0, #0xf
    5cac: 54fffbc1     	b.ne	0x5c24 <richtap_rtp_work+0x14c>
    5cb0: f8580268     	ldur	x8, [x19, #-0x80]
    5cb4: aa1403e0     	mov	x0, x20
    5cb8: f9407908     	ldr	x8, [x8, #0xf0]
    5cbc: b85fc110     	ldur	w16, [x8, #-0x4]
    5cc0: 72810611     	movk	w17, #0x830
    5cc4: 72b08f51     	movk	w17, #0x847a, lsl #16
    5cc8: 6b11021f     	cmp	w16, w17
    5ccc: 54000040     	b.eq	0x5cd4 <richtap_rtp_work+0x1fc>
    5cd0: d4304500     	brk	#0x8228
    5cd4: d63f0100     	blr	x8
    5cd8: f8580268     	ldur	x8, [x19, #-0x80]
    5cdc: aa1403e0     	mov	x0, x20
    5ce0: 52800021     	mov	w1, #0x1                // =1
    5ce4: f9408908     	ldr	x8, [x8, #0x110]
    5ce8: b85fc110     	ldur	w16, [x8, #-0x4]
    5cec: 729bedd1     	movk	w17, #0xdf6e
    5cf0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5cf4: 6b11021f     	cmp	w16, w17
    5cf8: 54000040     	b.eq	0x5d00 <richtap_rtp_work+0x228>
    5cfc: d4304500     	brk	#0x8228
    5d00: d63f0100     	blr	x8
    5d04: 14000018     	b	0x5d64 <richtap_rtp_work+0x28c>
    5d08: f8580268     	ldur	x8, [x19, #-0x80]
    5d0c: aa1403e0     	mov	x0, x20
    5d10: 52800021     	mov	w1, #0x1                // =1
    5d14: 52800035     	mov	w21, #0x1               // =1
    5d18: f9408908     	ldr	x8, [x8, #0x110]
    5d1c: b85fc110     	ldur	w16, [x8, #-0x4]
    5d20: 729bedd1     	movk	w17, #0xdf6e
    5d24: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5d28: 6b11021f     	cmp	w16, w17
    5d2c: 54000040     	b.eq	0x5d34 <richtap_rtp_work+0x25c>
    5d30: d4304500     	brk	#0x8228
    5d34: d63f0100     	blr	x8
    5d38: f8580268     	ldur	x8, [x19, #-0x80]
    5d3c: aa1403e0     	mov	x0, x20
    5d40: f9407908     	ldr	x8, [x8, #0xf0]
    5d44: b85fc110     	ldur	w16, [x8, #-0x4]
    5d48: 72810611     	movk	w17, #0x830
    5d4c: 72b08f51     	movk	w17, #0x847a, lsl #16
    5d50: 6b11021f     	cmp	w16, w17
    5d54: 54000040     	b.eq	0x5d5c <richtap_rtp_work+0x284>
    5d58: d4304500     	brk	#0x8228
    5d5c: d63f0100     	blr	x8
    5d60: b9007675     	str	w21, [x19, #0x74]
    5d64: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    5d68: a94257f6     	ldp	x22, x21, [sp, #0x20]
    5d6c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    5d70: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    5d74: d50323bf     	autiasp
    5d78: d65f03c0     	ret
