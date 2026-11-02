
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000098a8 <irq_handle>:
    98a8: d503233f     	paciasp
    98ac: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    98b0: f9000bf5     	str	x21, [sp, #0x10]
    98b4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    98b8: 910003fd     	mov	x29, sp
    98bc: aa0103f3     	mov	x19, x1
    98c0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000098c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x270a
    98c4: 91000000     	add	x0, x0, #0x0
		00000000000098c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x270a
    98c8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000098c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    98cc: 91000021     	add	x1, x1, #0x0
		00000000000098cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    98d0: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000098d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    98d4: 91000063     	add	x3, x3, #0x0
		00000000000098d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    98d8: 5280cca2     	mov	w2, #0x665              // =1637
    98dc: 94000000     	bl	0x98dc <irq_handle+0x34>
		00000000000098dc:  R_AARCH64_CALL26	_printk
    98e0: b946be74     	ldr	w20, [x19, #0x6bc]
    98e4: f942e668     	ldr	x8, [x19, #0x5c8]
    98e8: aa1303e0     	mov	x0, x19
    98ec: f9400d08     	ldr	x8, [x8, #0x18]
    98f0: b85fc110     	ldur	w16, [x8, #-0x4]
    98f4: 729e3e11     	movk	w17, #0xf1f0
    98f8: 72aa2591     	movk	w17, #0x512c, lsl #16
    98fc: 6b11021f     	cmp	w16, w17
    9900: 54000040     	b.eq	0x9908 <irq_handle+0x60>
    9904: d4304500     	brk	#0x8228
    9908: d63f0100     	blr	x8
    990c: 7100069f     	cmp	w20, #0x1
    9910: 54000361     	b.ne	0x997c <irq_handle+0xd4>
    9914: 34000d40     	cbz	w0, 0x9abc <irq_handle+0x214>
    9918: f9431268     	ldr	x8, [x19, #0x620]
    991c: 39400108     	ldrb	w8, [x8]
    9920: 7103fd1f     	cmp	w8, #0xff
    9924: 54001a41     	b.ne	0x9c6c <irq_handle+0x3c4>
    9928: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x327a
    992c: 91000000     	add	x0, x0, #0x0
		000000000000992c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x327a
    9930: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9934: 91000021     	add	x1, x1, #0x0
		0000000000009934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9938: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    993c: 91000063     	add	x3, x3, #0x0
		000000000000993c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9940: 5280cea2     	mov	w2, #0x675              // =1653
    9944: 94000000     	bl	0x9944 <irq_handle+0x9c>
		0000000000009944:  R_AARCH64_CALL26	_printk
    9948: f942e668     	ldr	x8, [x19, #0x5c8]
    994c: aa1303e0     	mov	x0, x19
    9950: 2a1f03e1     	mov	w1, wzr
    9954: f9408908     	ldr	x8, [x8, #0x110]
    9958: b85fc110     	ldur	w16, [x8, #-0x4]
    995c: 729bedd1     	movk	w17, #0xdf6e
    9960: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9964: 6b11021f     	cmp	w16, w17
    9968: 54000040     	b.eq	0x9970 <irq_handle+0xc8>
    996c: d4304500     	brk	#0x8228
    9970: d63f0100     	blr	x8
    9974: b906be7f     	str	wzr, [x19, #0x6bc]
    9978: 140000bd     	b	0x9c6c <irq_handle+0x3c4>
    997c: 350015c0     	cbnz	w0, 0x9c34 <irq_handle+0x38c>
    9980: 39401668     	ldrb	w8, [x19, #0x5]
    9984: 7100051f     	cmp	w8, #0x1
    9988: 54000de1     	b.ne	0x9b44 <irq_handle+0x29c>
    998c: f942e668     	ldr	x8, [x19, #0x5c8]
    9990: aa1303e0     	mov	x0, x19
    9994: f940b908     	ldr	x8, [x8, #0x170]
    9998: b85fc110     	ldur	w16, [x8, #-0x4]
    999c: 72870a91     	movk	w17, #0x3854
    99a0: 72af0971     	movk	w17, #0x784b, lsl #16
    99a4: 6b11021f     	cmp	w16, w17
    99a8: 54000040     	b.eq	0x99b0 <irq_handle+0x108>
    99ac: d4304500     	brk	#0x8228
    99b0: d63f0100     	blr	x8
    99b4: 72001c1f     	tst	w0, #0xff
    99b8: 540013e1     	b.ne	0x9c34 <irq_handle+0x38c>
    99bc: 90000015     	adrp	x21, 0x9000 <aw_i2c_probe+0x5d4>
		00000000000099bc:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    99c0: 39405e68     	ldrb	w8, [x19, #0x17]
    99c4: 7100091f     	cmp	w8, #0x2
    99c8: 54001361     	b.ne	0x9c34 <irq_handle+0x38c>
    99cc: 910dc260     	add	x0, x19, #0x370
    99d0: 94000000     	bl	0x99d0 <irq_handle+0x128>
		00000000000099d0:  R_AARCH64_CALL26	mutex_lock
    99d4: b9407668     	ldr	w8, [x19, #0x74]
    99d8: 34000c88     	cbz	w8, 0x9b68 <irq_handle+0x2c0>
    99dc: f94002a9     	ldr	x9, [x21]
		00000000000099dc:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    99e0: b4000d49     	cbz	x9, 0x9b88 <irq_handle+0x2e0>
    99e4: b9445a6a     	ldr	w10, [x19, #0x458]
    99e8: b940012b     	ldr	w11, [x9]
    99ec: aa1303e0     	mov	x0, x19
    99f0: f942e66c     	ldr	x12, [x19, #0x5c8]
    99f4: 53027d4a     	lsr	w10, w10, #2
    99f8: 4b08016b     	sub	w11, w11, w8
    99fc: 8b080128     	add	x8, x9, x8
    9a00: f940698c     	ldr	x12, [x12, #0xd0]
    9a04: 91001101     	add	x1, x8, #0x4
    9a08: 6b0a017f     	cmp	w11, w10
    9a0c: 1a8a3174     	csel	w20, w11, w10, lo
    9a10: 2a1403e2     	mov	w2, w20
    9a14: b85fc190     	ldur	w16, [x12, #-0x4]
    9a18: 72965371     	movk	w17, #0xb29b
    9a1c: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    9a20: 6b11021f     	cmp	w16, w17
    9a24: 54000040     	b.eq	0x9a2c <irq_handle+0x184>
    9a28: d4304580     	brk	#0x822c
    9a2c: d63f0180     	blr	x12
    9a30: b9407668     	ldr	w8, [x19, #0x74]
    9a34: f942e669     	ldr	x9, [x19, #0x5c8]
    9a38: aa1303e0     	mov	x0, x19
    9a3c: 0b140108     	add	w8, w8, w20
    9a40: b9007668     	str	w8, [x19, #0x74]
    9a44: f940b128     	ldr	x8, [x9, #0x160]
    9a48: b85fc110     	ldur	w16, [x8, #-0x4]
    9a4c: 72870a91     	movk	w17, #0x3854
    9a50: 72af0971     	movk	w17, #0x784b, lsl #16
    9a54: 6b11021f     	cmp	w16, w17
    9a58: 54000040     	b.eq	0x9a60 <irq_handle+0x1b8>
    9a5c: d4304500     	brk	#0x8228
    9a60: d63f0100     	blr	x8
    9a64: f94002a9     	ldr	x9, [x21]
		0000000000009a64:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9a68: b9407668     	ldr	w8, [x19, #0x74]
    9a6c: b9400129     	ldr	w9, [x9]
    9a70: 6b09011f     	cmp	w8, w9
    9a74: 540009c0     	b.eq	0x9bac <irq_handle+0x304>
    9a78: 12000c0a     	and	w10, w0, #0xf
    9a7c: 3400098a     	cbz	w10, 0x9bac <irq_handle+0x304>
    9a80: 910dc260     	add	x0, x19, #0x370
    9a84: 94000000     	bl	0x9a84 <irq_handle+0x1dc>
		0000000000009a84:  R_AARCH64_CALL26	mutex_unlock
    9a88: f942e668     	ldr	x8, [x19, #0x5c8]
    9a8c: aa1303e0     	mov	x0, x19
    9a90: f940b908     	ldr	x8, [x8, #0x170]
    9a94: b85fc110     	ldur	w16, [x8, #-0x4]
    9a98: 72870a91     	movk	w17, #0x3854
    9a9c: 72af0971     	movk	w17, #0x784b, lsl #16
    9aa0: 6b11021f     	cmp	w16, w17
    9aa4: 54000040     	b.eq	0x9aac <irq_handle+0x204>
    9aa8: d4304500     	brk	#0x8228
    9aac: d63f0100     	blr	x8
    9ab0: 72001c1f     	tst	w0, #0xff
    9ab4: 54fff860     	b.eq	0x99c0 <irq_handle+0x118>
    9ab8: 1400005f     	b	0x9c34 <irq_handle+0x38c>
    9abc: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9ac0: 91000063     	add	x3, x3, #0x0
		0000000000009ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9ac4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4586
    9ac8: 91000000     	add	x0, x0, #0x0
		0000000000009ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4586
    9acc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9ad0: 91000021     	add	x1, x1, #0x0
		0000000000009ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9ad4: 5280cd42     	mov	w2, #0x66a              // =1642
    9ad8: aa0303e4     	mov	x4, x3
    9adc: 94000000     	bl	0x9adc <irq_handle+0x234>
		0000000000009adc:  R_AARCH64_CALL26	_printk
    9ae0: b9445a68     	ldr	w8, [x19, #0x458]
    9ae4: 53017d01     	lsr	w1, w8, #1
    9ae8: aa1303e0     	mov	x0, x19
    9aec: 94000066     	bl	0x9c84 <irq_handle+0x3dc>
		0000000000009aec:  R_AARCH64_CALL26	richtap_update_fifo_data
    9af0: f942e668     	ldr	x8, [x19, #0x5c8]
    9af4: aa1303e0     	mov	x0, x19
    9af8: f940c108     	ldr	x8, [x8, #0x180]
    9afc: b85fc110     	ldur	w16, [x8, #-0x4]
    9b00: 72870a91     	movk	w17, #0x3854
    9b04: 72af0971     	movk	w17, #0x784b, lsl #16
    9b08: 6b11021f     	cmp	w16, w17
    9b0c: 54000040     	b.eq	0x9b14 <irq_handle+0x26c>
    9b10: d4304500     	brk	#0x8228
    9b14: d63f0100     	blr	x8
    9b18: 72001c1f     	tst	w0, #0xff
    9b1c: 54ffefe1     	b.ne	0x9918 <irq_handle+0x70>
    9b20: b946be68     	ldr	w8, [x19, #0x6bc]
    9b24: 34ffefa8     	cbz	w8, 0x9918 <irq_handle+0x70>
    9b28: f9431268     	ldr	x8, [x19, #0x620]
    9b2c: 39400108     	ldrb	w8, [x8]
    9b30: 7101551f     	cmp	w8, #0x55
    9b34: 54ffef21     	b.ne	0x9918 <irq_handle+0x70>
    9b38: b9445a68     	ldr	w8, [x19, #0x458]
    9b3c: 53027d01     	lsr	w1, w8, #2
    9b40: 17ffffea     	b	0x9ae8 <irq_handle+0x240>
    9b44: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4362
    9b48: 91000000     	add	x0, x0, #0x0
		0000000000009b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4362
    9b4c: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9b50: 91000021     	add	x1, x1, #0x0
		0000000000009b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9b54: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9b58: 91000063     	add	x3, x3, #0x0
		0000000000009b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9b5c: 5280d6a2     	mov	w2, #0x6b5              // =1717
    9b60: 94000000     	bl	0x9b60 <irq_handle+0x2b8>
		0000000000009b60:  R_AARCH64_CALL26	_printk
    9b64: 14000034     	b	0x9c34 <irq_handle+0x38c>
    9b68: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a8
    9b6c: 91000000     	add	x0, x0, #0x0
		0000000000009b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a8
    9b70: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9b74: 91000021     	add	x1, x1, #0x0
		0000000000009b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9b78: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9b7c: 91000063     	add	x3, x3, #0x0
		0000000000009b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9b80: 5280d082     	mov	w2, #0x684              // =1668
    9b84: 14000008     	b	0x9ba4 <irq_handle+0x2fc>
    9b88: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38fe
    9b8c: 91000000     	add	x0, x0, #0x0
		0000000000009b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38fe
    9b90: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9b94: 91000021     	add	x1, x1, #0x0
		0000000000009b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9b98: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9b9c: 91000063     	add	x3, x3, #0x0
		0000000000009b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9ba0: 5280d1a2     	mov	w2, #0x68d              // =1677
    9ba4: 94000000     	bl	0x9ba4 <irq_handle+0x2fc>
		0000000000009ba4:  R_AARCH64_CALL26	_printk
    9ba8: 14000021     	b	0x9c2c <irq_handle+0x384>
    9bac: 6b09011f     	cmp	w8, w9
    9bb0: 54000121     	b.ne	0x9bd4 <irq_handle+0x32c>
    9bb4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48aa
    9bb8: 91000000     	add	x0, x0, #0x0
		0000000000009bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48aa
    9bbc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9bc0: 91000021     	add	x1, x1, #0x0
		0000000000009bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9bc4: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9bc8: 91000063     	add	x3, x3, #0x0
		0000000000009bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9bcc: 5280d502     	mov	w2, #0x6a8              // =1704
    9bd0: 14000008     	b	0x9bf0 <irq_handle+0x348>
    9bd4: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c06
    9bd8: 91000000     	add	x0, x0, #0x0
		0000000000009bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c06
    9bdc: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9be0: 91000021     	add	x1, x1, #0x0
		0000000000009be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9be4: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a4
    9be8: 91000063     	add	x3, x3, #0x0
		0000000000009be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a4
    9bec: 5280d4a2     	mov	w2, #0x6a5              // =1701
    9bf0: 94000000     	bl	0x9bf0 <irq_handle+0x348>
		0000000000009bf0:  R_AARCH64_CALL26	_printk
    9bf4: f942e668     	ldr	x8, [x19, #0x5c8]
    9bf8: 3900767f     	strb	wzr, [x19, #0x1d]
    9bfc: aa1303e0     	mov	x0, x19
    9c00: 2a1f03e1     	mov	w1, wzr
    9c04: f9408908     	ldr	x8, [x8, #0x110]
    9c08: b85fc110     	ldur	w16, [x8, #-0x4]
    9c0c: 729bedd1     	movk	w17, #0xdf6e
    9c10: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9c14: 6b11021f     	cmp	w16, w17
    9c18: 54000040     	b.eq	0x9c20 <irq_handle+0x378>
    9c1c: d4304500     	brk	#0x8228
    9c20: d63f0100     	blr	x8
    9c24: b900767f     	str	wzr, [x19, #0x74]
    9c28: 3900167f     	strb	wzr, [x19, #0x5]
    9c2c: 910dc260     	add	x0, x19, #0x370
    9c30: 94000000     	bl	0x9c30 <irq_handle+0x388>
		0000000000009c30:  R_AARCH64_CALL26	mutex_unlock
    9c34: 39405e68     	ldrb	w8, [x19, #0x17]
    9c38: 7100091f     	cmp	w8, #0x2
    9c3c: 54000180     	b.eq	0x9c6c <irq_handle+0x3c4>
    9c40: f942e668     	ldr	x8, [x19, #0x5c8]
    9c44: aa1303e0     	mov	x0, x19
    9c48: 2a1f03e1     	mov	w1, wzr
    9c4c: f9408908     	ldr	x8, [x8, #0x110]
    9c50: b85fc110     	ldur	w16, [x8, #-0x4]
    9c54: 729bedd1     	movk	w17, #0xdf6e
    9c58: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9c5c: 6b11021f     	cmp	w16, w17
    9c60: 54000040     	b.eq	0x9c68 <irq_handle+0x3c0>
    9c64: d4304500     	brk	#0x8228
    9c68: d63f0100     	blr	x8
    9c6c: 52800020     	mov	w0, #0x1                // =1
    9c70: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9c74: f9400bf5     	ldr	x21, [sp, #0x10]
    9c78: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9c7c: d50323bf     	autiasp
    9c80: d65f03c0     	ret
