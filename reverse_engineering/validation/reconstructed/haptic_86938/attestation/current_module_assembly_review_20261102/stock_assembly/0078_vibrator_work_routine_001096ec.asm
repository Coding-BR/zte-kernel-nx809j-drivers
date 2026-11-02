
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000068cc <vibrator_work_routine>:
    68cc: d503233f     	paciasp
    68d0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    68d4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    68d8: a90257f6     	stp	x22, x21, [sp, #0x20]
    68dc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    68e0: 910003fd     	mov	x29, sp
    68e4: d104e013     	sub	x19, x0, #0x138
    68e8: aa0003f4     	mov	x20, x0
    68ec: d110a015     	sub	x21, x0, #0x428
    68f0: aa1303e0     	mov	x0, x19
    68f4: 94000000     	bl	0x68f4 <vibrator_work_routine+0x28>
		00000000000068f4:  R_AARCH64_CALL26	mutex_lock
    68f8: f940d288     	ldr	x8, [x20, #0x1a0]
    68fc: aa1503e0     	mov	x0, x21
    6900: 52800021     	mov	w1, #0x1                // =1
    6904: f9408d08     	ldr	x8, [x8, #0x118]
    6908: b85fc110     	ldur	w16, [x8, #-0x4]
    690c: 728dd2b1     	movk	w17, #0x6e95
    6910: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    6914: 6b11021f     	cmp	w16, w17
    6918: 54000040     	b.eq	0x6920 <vibrator_work_routine+0x54>
    691c: d4304500     	brk	#0x8228
    6920: d63f0100     	blr	x8
    6924: f940d288     	ldr	x8, [x20, #0x1a0]
    6928: aa1503e0     	mov	x0, x21
    692c: f9401d08     	ldr	x8, [x8, #0x38]
    6930: b85fc110     	ldur	w16, [x8, #-0x4]
    6934: 72810611     	movk	w17, #0x830
    6938: 72b08f51     	movk	w17, #0x847a, lsl #16
    693c: 6b11021f     	cmp	w16, w17
    6940: 54000040     	b.eq	0x6948 <vibrator_work_routine+0x7c>
    6944: d4304500     	brk	#0x8228
    6948: d63f0100     	blr	x8
    694c: d10fa288     	sub	x8, x20, #0x3e8
    6950: b9400108     	ldr	w8, [x8]
    6954: 35000128     	cbnz	w8, 0x6978 <vibrator_work_routine+0xac>
    6958: aa1303e0     	mov	x0, x19
    695c: 94000000     	bl	0x695c <vibrator_work_routine+0x90>
		000000000000695c:  R_AARCH64_CALL26	mutex_unlock
    6960: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    6964: a94257f6     	ldp	x22, x21, [sp, #0x20]
    6968: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    696c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    6970: d50323bf     	autiasp
    6974: d65f03c0     	ret
    6978: d10f5298     	sub	x24, x20, #0x3d4
    697c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000697c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198b
    6980: 91000000     	add	x0, x0, #0x0
		0000000000006980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198b
    6984: b9400304     	ldr	w4, [x24]
    6988: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    698c: 91000021     	add	x1, x1, #0x0
		000000000000698c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6990: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x815
    6994: 91000063     	add	x3, x3, #0x0
		0000000000006994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x815
    6998: 52807842     	mov	w2, #0x3c2              // =962
    699c: 94000000     	bl	0x699c <vibrator_work_routine+0xd0>
		000000000000699c:  R_AARCH64_CALL26	_printk
    69a0: b9400304     	ldr	w4, [x24]
    69a4: 7100009f     	cmp	w4, #0x0
    69a8: 5400014c     	b.gt	0x69d0 <vibrator_work_routine+0x104>
    69ac: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000069ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa25
    69b0: 91000000     	add	x0, x0, #0x0
		00000000000069b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa25
    69b4: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000069b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    69b8: 91000021     	add	x1, x1, #0x0
		00000000000069b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    69bc: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000069bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x815
    69c0: 91000063     	add	x3, x3, #0x0
		00000000000069c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x815
    69c4: 52807882     	mov	w2, #0x3c4              // =964
    69c8: 94000000     	bl	0x69c8 <vibrator_work_routine+0xfc>
		00000000000069c8:  R_AARCH64_CALL26	_printk
    69cc: 14000053     	b	0x6b18 <vibrator_work_routine+0x24c>
    69d0: 3940f289     	ldrb	w9, [x20, #0x3c]
    69d4: d1103688     	sub	x8, x20, #0x40d
    69d8: 5280002a     	mov	w10, #0x1               // =1
    69dc: 3900010a     	strb	w10, [x8]
    69e0: 6b09009f     	cmp	w4, w9
    69e4: 54000082     	b.hs	0x69f4 <vibrator_work_routine+0x128>
    69e8: 2a1f03f6     	mov	w22, wzr
    69ec: 52800077     	mov	w23, #0x3               // =3
    69f0: 14000011     	b	0x6a34 <vibrator_work_routine+0x168>
    69f4: 3940f689     	ldrb	w9, [x20, #0x3d]
    69f8: 6b09009f     	cmp	w4, w9
    69fc: 54000082     	b.hs	0x6a0c <vibrator_work_routine+0x140>
    6a00: 2a1f03f6     	mov	w22, wzr
    6a04: 52800057     	mov	w23, #0x2               // =2
    6a08: 1400000b     	b	0x6a34 <vibrator_work_routine+0x168>
    6a0c: 3940fa89     	ldrb	w9, [x20, #0x3e]
    6a10: 6b09009f     	cmp	w4, w9
    6a14: 54000082     	b.hs	0x6a24 <vibrator_work_routine+0x158>
    6a18: 2a1f03f6     	mov	w22, wzr
    6a1c: 52800037     	mov	w23, #0x1               // =1
    6a20: 14000005     	b	0x6a34 <vibrator_work_routine+0x168>
    6a24: 528000a9     	mov	w9, #0x5                // =5
    6a28: 52800097     	mov	w23, #0x4               // =4
    6a2c: 528001f6     	mov	w22, #0xf               // =15
    6a30: 39000109     	strb	w9, [x8]
    6a34: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb26
    6a38: 91000000     	add	x0, x0, #0x0
		0000000000006a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb26
    6a3c: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6a40: 91000021     	add	x1, x1, #0x0
		0000000000006a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6a44: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x815
    6a48: 91000063     	add	x3, x3, #0x0
		0000000000006a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x815
    6a4c: 52807ac2     	mov	w2, #0x3d6              // =982
    6a50: 2a1703e5     	mov	w5, w23
    6a54: 94000000     	bl	0x6a54 <vibrator_work_routine+0x188>
		0000000000006a54:  R_AARCH64_CALL26	_printk
    6a58: f940d288     	ldr	x8, [x20, #0x1a0]
    6a5c: aa1503e0     	mov	x0, x21
    6a60: 2a1f03e1     	mov	w1, wzr
    6a64: 2a1703e2     	mov	w2, w23
    6a68: f9406108     	ldr	x8, [x8, #0xc0]
    6a6c: b85fc110     	ldur	w16, [x8, #-0x4]
    6a70: 728fccb1     	movk	w17, #0x7e65
    6a74: 72af70f1     	movk	w17, #0x7b87, lsl #16
    6a78: 6b11021f     	cmp	w16, w17
    6a7c: 54000040     	b.eq	0x6a84 <vibrator_work_routine+0x1b8>
    6a80: d4304500     	brk	#0x8228
    6a84: d63f0100     	blr	x8
    6a88: f940d288     	ldr	x8, [x20, #0x1a0]
    6a8c: aa1503e0     	mov	x0, x21
    6a90: 2a1f03e1     	mov	w1, wzr
    6a94: 2a1603e2     	mov	w2, w22
    6a98: f9406508     	ldr	x8, [x8, #0xc8]
    6a9c: b85fc110     	ldur	w16, [x8, #-0x4]
    6aa0: 728fccb1     	movk	w17, #0x7e65
    6aa4: 72af70f1     	movk	w17, #0x7b87, lsl #16
    6aa8: 6b11021f     	cmp	w16, w17
    6aac: 54000040     	b.eq	0x6ab4 <vibrator_work_routine+0x1e8>
    6ab0: d4304500     	brk	#0x8228
    6ab4: d63f0100     	blr	x8
    6ab8: f940d288     	ldr	x8, [x20, #0x1a0]
    6abc: aa1503e0     	mov	x0, x21
    6ac0: 52800021     	mov	w1, #0x1                // =1
    6ac4: 2a1f03e2     	mov	w2, wzr
    6ac8: f9406108     	ldr	x8, [x8, #0xc0]
    6acc: b85fc110     	ldur	w16, [x8, #-0x4]
    6ad0: 728fccb1     	movk	w17, #0x7e65
    6ad4: 72af70f1     	movk	w17, #0x7b87, lsl #16
    6ad8: 6b11021f     	cmp	w16, w17
    6adc: 54000040     	b.eq	0x6ae4 <vibrator_work_routine+0x218>
    6ae0: d4304500     	brk	#0x8228
    6ae4: d63f0100     	blr	x8
    6ae8: f940d288     	ldr	x8, [x20, #0x1a0]
    6aec: aa1503e0     	mov	x0, x21
    6af0: 52800021     	mov	w1, #0x1                // =1
    6af4: 2a1f03e2     	mov	w2, wzr
    6af8: f9406508     	ldr	x8, [x8, #0xc8]
    6afc: b85fc110     	ldur	w16, [x8, #-0x4]
    6b00: 728fccb1     	movk	w17, #0x7e65
    6b04: 72af70f1     	movk	w17, #0x7b87, lsl #16
    6b08: 6b11021f     	cmp	w16, w17
    6b0c: 54000040     	b.eq	0x6b14 <vibrator_work_routine+0x248>
    6b10: d4304500     	brk	#0x8228
    6b14: d63f0100     	blr	x8
    6b18: d1103688     	sub	x8, x20, #0x40d
    6b1c: 39400108     	ldrb	w8, [x8]
    6b20: 7100111f     	cmp	w8, #0x4
    6b24: 540005a0     	b.eq	0x6bd8 <vibrator_work_routine+0x30c>
    6b28: 7100151f     	cmp	w8, #0x5
    6b2c: 54000941     	b.ne	0x6c54 <vibrator_work_routine+0x388>
    6b30: d1103288     	sub	x8, x20, #0x40c
    6b34: 39400109     	ldrb	w9, [x8]
    6b38: f940d288     	ldr	x8, [x20, #0x1a0]
    6b3c: 7100053f     	cmp	w9, #0x1
    6b40: 54001181     	b.ne	0x6d70 <vibrator_work_routine+0x4a4>
    6b44: f9402108     	ldr	x8, [x8, #0x40]
    6b48: aa1503e0     	mov	x0, x21
    6b4c: b85fc110     	ldur	w16, [x8, #-0x4]
    6b50: 72810611     	movk	w17, #0x830
    6b54: 72b08f51     	movk	w17, #0x847a, lsl #16
    6b58: 6b11021f     	cmp	w16, w17
    6b5c: 54000040     	b.eq	0x6b64 <vibrator_work_routine+0x298>
    6b60: d4304500     	brk	#0x8228
    6b64: d63f0100     	blr	x8
    6b68: d10f0288     	sub	x8, x20, #0x3c0
    6b6c: 52823289     	mov	w9, #0x1194             // =4500
    6b70: b9400108     	ldr	w8, [x8]
    6b74: 6b09011f     	cmp	w8, w9
    6b78: 54001229     	b.ls	0x6dbc <vibrator_work_routine+0x4f0>
    6b7c: f940d288     	ldr	x8, [x20, #0x1a0]
    6b80: aa1503e0     	mov	x0, x21
    6b84: 528000a1     	mov	w1, #0x5                // =5
    6b88: f9404d08     	ldr	x8, [x8, #0x98]
    6b8c: b85fc110     	ldur	w16, [x8, #-0x4]
    6b90: 729bedd1     	movk	w17, #0xdf6e
    6b94: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6b98: 6b11021f     	cmp	w16, w17
    6b9c: 54000040     	b.eq	0x6ba4 <vibrator_work_routine+0x2d8>
    6ba0: d4304500     	brk	#0x8228
    6ba4: d63f0100     	blr	x8
    6ba8: f940d288     	ldr	x8, [x20, #0x1a0]
    6bac: aa1503e0     	mov	x0, x21
    6bb0: 52800021     	mov	w1, #0x1                // =1
    6bb4: f9403108     	ldr	x8, [x8, #0x60]
    6bb8: b85fc110     	ldur	w16, [x8, #-0x4]
    6bbc: 729bedd1     	movk	w17, #0xdf6e
    6bc0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6bc4: 6b11021f     	cmp	w16, w17
    6bc8: 54000040     	b.eq	0x6bd0 <vibrator_work_routine+0x304>
    6bcc: d4304500     	brk	#0x8228
    6bd0: d63f0100     	blr	x8
    6bd4: 1400000b     	b	0x6c00 <vibrator_work_routine+0x334>
    6bd8: f940d288     	ldr	x8, [x20, #0x1a0]
    6bdc: aa1503e0     	mov	x0, x21
    6be0: f9402508     	ldr	x8, [x8, #0x48]
    6be4: b85fc110     	ldur	w16, [x8, #-0x4]
    6be8: 72810611     	movk	w17, #0x830
    6bec: 72b08f51     	movk	w17, #0x847a, lsl #16
    6bf0: 6b11021f     	cmp	w16, w17
    6bf4: 54000040     	b.eq	0x6bfc <vibrator_work_routine+0x330>
    6bf8: d4304500     	brk	#0x8228
    6bfc: d63f0100     	blr	x8
    6c00: b9400308     	ldr	w8, [x24]
    6c04: 5289ba69     	mov	w9, #0x4dd3             // =19923
    6c08: d103e280     	sub	x0, x20, #0xf8
    6c0c: 72a20c49     	movk	w9, #0x1062, lsl #16
    6c10: aa1f03e2     	mov	x2, xzr
    6c14: 52800023     	mov	w3, #0x1                // =1
    6c18: 9b297d09     	smull	x9, w8, w9
    6c1c: d37ffd2a     	lsr	x10, x9, #63
    6c20: 9366fd29     	asr	x9, x9, #38
    6c24: 0b0a0129     	add	w9, w9, w10
    6c28: 52807d0a     	mov	w10, #0x3e8             // =1000
    6c2c: 1b0aa128     	msub	w8, w9, w10, w8
    6c30: 5288480a     	mov	w10, #0x4240            // =16960
    6c34: 72a001ea     	movk	w10, #0xf, lsl #16
    6c38: 1b0a7d08     	mul	w8, w8, w10
    6c3c: 5299400a     	mov	w10, #0xca00            // =51712
    6c40: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    6c44: 93407d08     	sxtw	x8, w8
    6c48: 9b2a2121     	smaddl	x1, w9, w10, x8
    6c4c: 94000000     	bl	0x6c4c <vibrator_work_routine+0x380>
		0000000000006c4c:  R_AARCH64_CALL26	hrtimer_start_range_ns
    6c50: 17ffff42     	b	0x6958 <vibrator_work_routine+0x8c>
    6c54: 7100051f     	cmp	w8, #0x1
    6c58: 540007a1     	b.ne	0x6d4c <vibrator_work_routine+0x480>
    6c5c: f940d288     	ldr	x8, [x20, #0x1a0]
    6c60: d10fd289     	sub	x9, x20, #0x3f4
    6c64: aa1503e0     	mov	x0, x21
    6c68: b9400121     	ldr	w1, [x9]
    6c6c: f9404508     	ldr	x8, [x8, #0x88]
    6c70: b85fc110     	ldur	w16, [x8, #-0x4]
    6c74: 729bedd1     	movk	w17, #0xdf6e
    6c78: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6c7c: 6b11021f     	cmp	w16, w17
    6c80: 54000040     	b.eq	0x6c88 <vibrator_work_routine+0x3bc>
    6c84: d4304500     	brk	#0x8228
    6c88: d63f0100     	blr	x8
    6c8c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe12
    6c90: 91000000     	add	x0, x0, #0x0
		0000000000006c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe12
    6c94: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6c98: 91000021     	add	x1, x1, #0x0
		0000000000006c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6c9c: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff
    6ca0: 91000063     	add	x3, x3, #0x0
		0000000000006ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff
    6ca4: 52805322     	mov	w2, #0x299              // =665
    6ca8: 94000000     	bl	0x6ca8 <vibrator_work_routine+0x3dc>
		0000000000006ca8:  R_AARCH64_CALL26	_printk
    6cac: 3941be81     	ldrb	w1, [x20, #0x6f]
    6cb0: f940d288     	ldr	x8, [x20, #0x1a0]
    6cb4: 3940e689     	ldrb	w9, [x20, #0x39]
    6cb8: 5100042a     	sub	w10, w1, #0x1
    6cbc: f9405108     	ldr	x8, [x8, #0xa0]
    6cc0: 6b2a013f     	cmp	w9, w10, uxtb
    6cc4: 54000068     	b.hi	0x6cd0 <vibrator_work_routine+0x404>
    6cc8: d10fe289     	sub	x9, x20, #0x3f8
    6ccc: b9400121     	ldr	w1, [x9]
    6cd0: aa1503e0     	mov	x0, x21
    6cd4: b85fc110     	ldur	w16, [x8, #-0x4]
    6cd8: 729bedd1     	movk	w17, #0xdf6e
    6cdc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6ce0: 6b11021f     	cmp	w16, w17
    6ce4: 54000040     	b.eq	0x6cec <vibrator_work_routine+0x420>
    6ce8: d4304500     	brk	#0x8228
    6cec: d63f0100     	blr	x8
    6cf0: f940d288     	ldr	x8, [x20, #0x1a0]
    6cf4: aa1503e0     	mov	x0, x21
    6cf8: 52800021     	mov	w1, #0x1                // =1
    6cfc: f9404d08     	ldr	x8, [x8, #0x98]
    6d00: b85fc110     	ldur	w16, [x8, #-0x4]
    6d04: 729bedd1     	movk	w17, #0xdf6e
    6d08: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6d0c: 6b11021f     	cmp	w16, w17
    6d10: 54000040     	b.eq	0x6d18 <vibrator_work_routine+0x44c>
    6d14: d4304500     	brk	#0x8228
    6d18: d63f0100     	blr	x8
    6d1c: f940d288     	ldr	x8, [x20, #0x1a0]
    6d20: aa1503e0     	mov	x0, x21
    6d24: 52800021     	mov	w1, #0x1                // =1
    6d28: f9403108     	ldr	x8, [x8, #0x60]
    6d2c: b85fc110     	ldur	w16, [x8, #-0x4]
    6d30: 729bedd1     	movk	w17, #0xdf6e
    6d34: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6d38: 6b11021f     	cmp	w16, w17
    6d3c: 54000040     	b.eq	0x6d44 <vibrator_work_routine+0x478>
    6d40: d4304500     	brk	#0x8228
    6d44: d63f0100     	blr	x8
    6d48: 17ffff04     	b	0x6958 <vibrator_work_routine+0x8c>
    6d4c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2575
    6d50: 91000000     	add	x0, x0, #0x0
		0000000000006d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2575
    6d54: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6d58: 91000021     	add	x1, x1, #0x0
		0000000000006d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6d5c: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
    6d60: 91000063     	add	x3, x3, #0x0
		0000000000006d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
    6d64: 52808162     	mov	w2, #0x40b              // =1035
    6d68: 94000000     	bl	0x6d68 <vibrator_work_routine+0x49c>
		0000000000006d68:  R_AARCH64_CALL26	_printk
    6d6c: 17fffefb     	b	0x6958 <vibrator_work_routine+0x8c>
    6d70: d10fd289     	sub	x9, x20, #0x3f4
    6d74: f9404508     	ldr	x8, [x8, #0x88]
    6d78: aa1503e0     	mov	x0, x21
    6d7c: b9400121     	ldr	w1, [x9]
    6d80: b85fc110     	ldur	w16, [x8, #-0x4]
    6d84: 729bedd1     	movk	w17, #0xdf6e
    6d88: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6d8c: 6b11021f     	cmp	w16, w17
    6d90: 54000040     	b.eq	0x6d98 <vibrator_work_routine+0x4cc>
    6d94: d4304500     	brk	#0x8228
    6d98: d63f0100     	blr	x8
    6d9c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe12
    6da0: 91000000     	add	x0, x0, #0x0
		0000000000006da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe12
    6da4: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6da8: 91000021     	add	x1, x1, #0x0
		0000000000006da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6dac: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff
    6db0: 91000063     	add	x3, x3, #0x0
		0000000000006db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff
    6db4: 528052a2     	mov	w2, #0x295              // =661
    6db8: 14000019     	b	0x6e1c <vibrator_work_routine+0x550>
    6dbc: d10fd28a     	sub	x10, x20, #0x3f4
    6dc0: aa1503e0     	mov	x0, x21
    6dc4: b940014a     	ldr	w10, [x10]
    6dc8: 1b097d49     	mul	w9, w10, w9
    6dcc: 5280180a     	mov	w10, #0xc0              // =192
    6dd0: 1ac80928     	udiv	w8, w9, w8
    6dd4: f940d289     	ldr	x9, [x20, #0x1a0]
    6dd8: f9404529     	ldr	x9, [x9, #0x88]
    6ddc: 7103011f     	cmp	w8, #0xc0
    6de0: 1a8ab101     	csel	w1, w8, w10, lt
    6de4: b85fc130     	ldur	w16, [x9, #-0x4]
    6de8: 729bedd1     	movk	w17, #0xdf6e
    6dec: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6df0: 6b11021f     	cmp	w16, w17
    6df4: 54000040     	b.eq	0x6dfc <vibrator_work_routine+0x530>
    6df8: d4304520     	brk	#0x8229
    6dfc: d63f0120     	blr	x9
    6e00: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139f
    6e04: 91000000     	add	x0, x0, #0x0
		0000000000006e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139f
    6e08: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6e0c: 91000021     	add	x1, x1, #0x0
		0000000000006e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6e10: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff
    6e14: 91000063     	add	x3, x3, #0x0
		0000000000006e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff
    6e18: 52805242     	mov	w2, #0x292              // =658
    6e1c: 94000000     	bl	0x6e1c <vibrator_work_routine+0x550>
		0000000000006e1c:  R_AARCH64_CALL26	_printk
    6e20: 17ffff57     	b	0x6b7c <vibrator_work_routine+0x2b0>
