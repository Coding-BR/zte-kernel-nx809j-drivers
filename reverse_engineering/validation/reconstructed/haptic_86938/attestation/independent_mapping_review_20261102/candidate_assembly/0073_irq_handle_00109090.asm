
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000098d8 <irq_handle>:
    98d8: d503233f     	paciasp
    98dc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    98e0: f9000bf5     	str	x21, [sp, #0x10]
    98e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    98e8: 910003fd     	mov	x29, sp
    98ec: aa0103f3     	mov	x19, x1
    98f0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000098f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    98f4: 91000000     	add	x0, x0, #0x0
		00000000000098f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    98f8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000098f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    98fc: 91000021     	add	x1, x1, #0x0
		00000000000098fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9900: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9904: 91000063     	add	x3, x3, #0x0
		0000000000009904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9908: 5280cca2     	mov	w2, #0x665              // =1637
    990c: 94000000     	bl	0x990c <irq_handle+0x34>
		000000000000990c:  R_AARCH64_CALL26	_printk
    9910: b946be74     	ldr	w20, [x19, #0x6bc]
    9914: f942e668     	ldr	x8, [x19, #0x5c8]
    9918: aa1303e0     	mov	x0, x19
    991c: f9400d08     	ldr	x8, [x8, #0x18]
    9920: b85fc110     	ldur	w16, [x8, #-0x4]
    9924: 729e3e11     	movk	w17, #0xf1f0
    9928: 72aa2591     	movk	w17, #0x512c, lsl #16
    992c: 6b11021f     	cmp	w16, w17
    9930: 54000040     	b.eq	0x9938 <irq_handle+0x60>
    9934: d4304500     	brk	#0x8228
    9938: d63f0100     	blr	x8
    993c: 7100069f     	cmp	w20, #0x1
    9940: 54000361     	b.ne	0x99ac <irq_handle+0xd4>
    9944: 34000d40     	cbz	w0, 0x9aec <irq_handle+0x214>
    9948: f9431268     	ldr	x8, [x19, #0x620]
    994c: 39400108     	ldrb	w8, [x8]
    9950: 7103fd1f     	cmp	w8, #0xff
    9954: 54001a41     	b.ne	0x9c9c <irq_handle+0x3c4>
    9958: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x327a
    995c: 91000000     	add	x0, x0, #0x0
		000000000000995c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x327a
    9960: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9964: 91000021     	add	x1, x1, #0x0
		0000000000009964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9968: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    996c: 91000063     	add	x3, x3, #0x0
		000000000000996c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9970: 5280cea2     	mov	w2, #0x675              // =1653
    9974: 94000000     	bl	0x9974 <irq_handle+0x9c>
		0000000000009974:  R_AARCH64_CALL26	_printk
    9978: f942e668     	ldr	x8, [x19, #0x5c8]
    997c: aa1303e0     	mov	x0, x19
    9980: 2a1f03e1     	mov	w1, wzr
    9984: f9408908     	ldr	x8, [x8, #0x110]
    9988: b85fc110     	ldur	w16, [x8, #-0x4]
    998c: 729bedd1     	movk	w17, #0xdf6e
    9990: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9994: 6b11021f     	cmp	w16, w17
    9998: 54000040     	b.eq	0x99a0 <irq_handle+0xc8>
    999c: d4304500     	brk	#0x8228
    99a0: d63f0100     	blr	x8
    99a4: b906be7f     	str	wzr, [x19, #0x6bc]
    99a8: 140000bd     	b	0x9c9c <irq_handle+0x3c4>
    99ac: 350015c0     	cbnz	w0, 0x9c64 <irq_handle+0x38c>
    99b0: 39401668     	ldrb	w8, [x19, #0x5]
    99b4: 7100051f     	cmp	w8, #0x1
    99b8: 54000de1     	b.ne	0x9b74 <irq_handle+0x29c>
    99bc: f942e668     	ldr	x8, [x19, #0x5c8]
    99c0: aa1303e0     	mov	x0, x19
    99c4: f940b908     	ldr	x8, [x8, #0x170]
    99c8: b85fc110     	ldur	w16, [x8, #-0x4]
    99cc: 72870a91     	movk	w17, #0x3854
    99d0: 72af0971     	movk	w17, #0x784b, lsl #16
    99d4: 6b11021f     	cmp	w16, w17
    99d8: 54000040     	b.eq	0x99e0 <irq_handle+0x108>
    99dc: d4304500     	brk	#0x8228
    99e0: d63f0100     	blr	x8
    99e4: 72001c1f     	tst	w0, #0xff
    99e8: 540013e1     	b.ne	0x9c64 <irq_handle+0x38c>
    99ec: 90000015     	adrp	x21, 0x9000 <aw_i2c_probe+0x5a4>
		00000000000099ec:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    99f0: 39405e68     	ldrb	w8, [x19, #0x17]
    99f4: 7100091f     	cmp	w8, #0x2
    99f8: 54001361     	b.ne	0x9c64 <irq_handle+0x38c>
    99fc: 910dc260     	add	x0, x19, #0x370
    9a00: 94000000     	bl	0x9a00 <irq_handle+0x128>
		0000000000009a00:  R_AARCH64_CALL26	mutex_lock
    9a04: b9407668     	ldr	w8, [x19, #0x74]
    9a08: 34000c88     	cbz	w8, 0x9b98 <irq_handle+0x2c0>
    9a0c: f94002a9     	ldr	x9, [x21]
		0000000000009a0c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9a10: b4000d49     	cbz	x9, 0x9bb8 <irq_handle+0x2e0>
    9a14: b9445a6a     	ldr	w10, [x19, #0x458]
    9a18: b940012b     	ldr	w11, [x9]
    9a1c: aa1303e0     	mov	x0, x19
    9a20: f942e66c     	ldr	x12, [x19, #0x5c8]
    9a24: 53027d4a     	lsr	w10, w10, #2
    9a28: 4b08016b     	sub	w11, w11, w8
    9a2c: 8b080128     	add	x8, x9, x8
    9a30: f940698c     	ldr	x12, [x12, #0xd0]
    9a34: 91001101     	add	x1, x8, #0x4
    9a38: 6b0a017f     	cmp	w11, w10
    9a3c: 1a8a3174     	csel	w20, w11, w10, lo
    9a40: 2a1403e2     	mov	w2, w20
    9a44: b85fc190     	ldur	w16, [x12, #-0x4]
    9a48: 72965371     	movk	w17, #0xb29b
    9a4c: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    9a50: 6b11021f     	cmp	w16, w17
    9a54: 54000040     	b.eq	0x9a5c <irq_handle+0x184>
    9a58: d4304580     	brk	#0x822c
    9a5c: d63f0180     	blr	x12
    9a60: b9407668     	ldr	w8, [x19, #0x74]
    9a64: f942e669     	ldr	x9, [x19, #0x5c8]
    9a68: aa1303e0     	mov	x0, x19
    9a6c: 0b140108     	add	w8, w8, w20
    9a70: b9007668     	str	w8, [x19, #0x74]
    9a74: f940b128     	ldr	x8, [x9, #0x160]
    9a78: b85fc110     	ldur	w16, [x8, #-0x4]
    9a7c: 72870a91     	movk	w17, #0x3854
    9a80: 72af0971     	movk	w17, #0x784b, lsl #16
    9a84: 6b11021f     	cmp	w16, w17
    9a88: 54000040     	b.eq	0x9a90 <irq_handle+0x1b8>
    9a8c: d4304500     	brk	#0x8228
    9a90: d63f0100     	blr	x8
    9a94: f94002a9     	ldr	x9, [x21]
		0000000000009a94:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9a98: b9407668     	ldr	w8, [x19, #0x74]
    9a9c: b9400129     	ldr	w9, [x9]
    9aa0: 6b09011f     	cmp	w8, w9
    9aa4: 540009c0     	b.eq	0x9bdc <irq_handle+0x304>
    9aa8: 12000c0a     	and	w10, w0, #0xf
    9aac: 3400098a     	cbz	w10, 0x9bdc <irq_handle+0x304>
    9ab0: 910dc260     	add	x0, x19, #0x370
    9ab4: 94000000     	bl	0x9ab4 <irq_handle+0x1dc>
		0000000000009ab4:  R_AARCH64_CALL26	mutex_unlock
    9ab8: f942e668     	ldr	x8, [x19, #0x5c8]
    9abc: aa1303e0     	mov	x0, x19
    9ac0: f940b908     	ldr	x8, [x8, #0x170]
    9ac4: b85fc110     	ldur	w16, [x8, #-0x4]
    9ac8: 72870a91     	movk	w17, #0x3854
    9acc: 72af0971     	movk	w17, #0x784b, lsl #16
    9ad0: 6b11021f     	cmp	w16, w17
    9ad4: 54000040     	b.eq	0x9adc <irq_handle+0x204>
    9ad8: d4304500     	brk	#0x8228
    9adc: d63f0100     	blr	x8
    9ae0: 72001c1f     	tst	w0, #0xff
    9ae4: 54fff860     	b.eq	0x99f0 <irq_handle+0x118>
    9ae8: 1400005f     	b	0x9c64 <irq_handle+0x38c>
    9aec: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9af0: 91000063     	add	x3, x3, #0x0
		0000000000009af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9af4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4586
    9af8: 91000000     	add	x0, x0, #0x0
		0000000000009af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4586
    9afc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9b00: 91000021     	add	x1, x1, #0x0
		0000000000009b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9b04: 5280cd42     	mov	w2, #0x66a              // =1642
    9b08: aa0303e4     	mov	x4, x3
    9b0c: 94000000     	bl	0x9b0c <irq_handle+0x234>
		0000000000009b0c:  R_AARCH64_CALL26	_printk
    9b10: b9445a68     	ldr	w8, [x19, #0x458]
    9b14: 53017d01     	lsr	w1, w8, #1
    9b18: aa1303e0     	mov	x0, x19
    9b1c: 94000066     	bl	0x9cb4 <irq_handle+0x3dc>
		0000000000009b1c:  R_AARCH64_CALL26	richtap_update_fifo_data
    9b20: f942e668     	ldr	x8, [x19, #0x5c8]
    9b24: aa1303e0     	mov	x0, x19
    9b28: f940c108     	ldr	x8, [x8, #0x180]
    9b2c: b85fc110     	ldur	w16, [x8, #-0x4]
    9b30: 72870a91     	movk	w17, #0x3854
    9b34: 72af0971     	movk	w17, #0x784b, lsl #16
    9b38: 6b11021f     	cmp	w16, w17
    9b3c: 54000040     	b.eq	0x9b44 <irq_handle+0x26c>
    9b40: d4304500     	brk	#0x8228
    9b44: d63f0100     	blr	x8
    9b48: 72001c1f     	tst	w0, #0xff
    9b4c: 54ffefe1     	b.ne	0x9948 <irq_handle+0x70>
    9b50: b946be68     	ldr	w8, [x19, #0x6bc]
    9b54: 34ffefa8     	cbz	w8, 0x9948 <irq_handle+0x70>
    9b58: f9431268     	ldr	x8, [x19, #0x620]
    9b5c: 39400108     	ldrb	w8, [x8]
    9b60: 7101551f     	cmp	w8, #0x55
    9b64: 54ffef21     	b.ne	0x9948 <irq_handle+0x70>
    9b68: b9445a68     	ldr	w8, [x19, #0x458]
    9b6c: 53027d01     	lsr	w1, w8, #2
    9b70: 17ffffea     	b	0x9b18 <irq_handle+0x240>
    9b74: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4362
    9b78: 91000000     	add	x0, x0, #0x0
		0000000000009b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4362
    9b7c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9b80: 91000021     	add	x1, x1, #0x0
		0000000000009b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9b84: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9b88: 91000063     	add	x3, x3, #0x0
		0000000000009b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9b8c: 5280d6a2     	mov	w2, #0x6b5              // =1717
    9b90: 94000000     	bl	0x9b90 <irq_handle+0x2b8>
		0000000000009b90:  R_AARCH64_CALL26	_printk
    9b94: 14000034     	b	0x9c64 <irq_handle+0x38c>
    9b98: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a8
    9b9c: 91000000     	add	x0, x0, #0x0
		0000000000009b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a8
    9ba0: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9ba4: 91000021     	add	x1, x1, #0x0
		0000000000009ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9ba8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9bac: 91000063     	add	x3, x3, #0x0
		0000000000009bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9bb0: 5280d082     	mov	w2, #0x684              // =1668
    9bb4: 14000008     	b	0x9bd4 <irq_handle+0x2fc>
    9bb8: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38fe
    9bbc: 91000000     	add	x0, x0, #0x0
		0000000000009bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38fe
    9bc0: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9bc4: 91000021     	add	x1, x1, #0x0
		0000000000009bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9bc8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9bcc: 91000063     	add	x3, x3, #0x0
		0000000000009bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9bd0: 5280d1a2     	mov	w2, #0x68d              // =1677
    9bd4: 94000000     	bl	0x9bd4 <irq_handle+0x2fc>
		0000000000009bd4:  R_AARCH64_CALL26	_printk
    9bd8: 14000021     	b	0x9c5c <irq_handle+0x384>
    9bdc: 6b09011f     	cmp	w8, w9
    9be0: 54000121     	b.ne	0x9c04 <irq_handle+0x32c>
    9be4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48aa
    9be8: 91000000     	add	x0, x0, #0x0
		0000000000009be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48aa
    9bec: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9bf0: 91000021     	add	x1, x1, #0x0
		0000000000009bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9bf4: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9bf8: 91000063     	add	x3, x3, #0x0
		0000000000009bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9bfc: 5280d502     	mov	w2, #0x6a8              // =1704
    9c00: 14000008     	b	0x9c20 <irq_handle+0x348>
    9c04: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c06
    9c08: 91000000     	add	x0, x0, #0x0
		0000000000009c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c06
    9c0c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9c10: 91000021     	add	x1, x1, #0x0
		0000000000009c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9c14: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9c18: 91000063     	add	x3, x3, #0x0
		0000000000009c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9c1c: 5280d4a2     	mov	w2, #0x6a5              // =1701
    9c20: 94000000     	bl	0x9c20 <irq_handle+0x348>
		0000000000009c20:  R_AARCH64_CALL26	_printk
    9c24: f942e668     	ldr	x8, [x19, #0x5c8]
    9c28: 3900767f     	strb	wzr, [x19, #0x1d]
    9c2c: aa1303e0     	mov	x0, x19
    9c30: 2a1f03e1     	mov	w1, wzr
    9c34: f9408908     	ldr	x8, [x8, #0x110]
    9c38: b85fc110     	ldur	w16, [x8, #-0x4]
    9c3c: 729bedd1     	movk	w17, #0xdf6e
    9c40: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9c44: 6b11021f     	cmp	w16, w17
    9c48: 54000040     	b.eq	0x9c50 <irq_handle+0x378>
    9c4c: d4304500     	brk	#0x8228
    9c50: d63f0100     	blr	x8
    9c54: b900767f     	str	wzr, [x19, #0x74]
    9c58: 3900167f     	strb	wzr, [x19, #0x5]
    9c5c: 910dc260     	add	x0, x19, #0x370
    9c60: 94000000     	bl	0x9c60 <irq_handle+0x388>
		0000000000009c60:  R_AARCH64_CALL26	mutex_unlock
    9c64: 39405e68     	ldrb	w8, [x19, #0x17]
    9c68: 7100091f     	cmp	w8, #0x2
    9c6c: 54000180     	b.eq	0x9c9c <irq_handle+0x3c4>
    9c70: f942e668     	ldr	x8, [x19, #0x5c8]
    9c74: aa1303e0     	mov	x0, x19
    9c78: 2a1f03e1     	mov	w1, wzr
    9c7c: f9408908     	ldr	x8, [x8, #0x110]
    9c80: b85fc110     	ldur	w16, [x8, #-0x4]
    9c84: 729bedd1     	movk	w17, #0xdf6e
    9c88: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9c8c: 6b11021f     	cmp	w16, w17
    9c90: 54000040     	b.eq	0x9c98 <irq_handle+0x3c0>
    9c94: d4304500     	brk	#0x8228
    9c98: d63f0100     	blr	x8
    9c9c: 52800020     	mov	w0, #0x1                // =1
    9ca0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9ca4: f9400bf5     	ldr	x21, [sp, #0x10]
    9ca8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9cac: d50323bf     	autiasp
    9cb0: d65f03c0     	ret
