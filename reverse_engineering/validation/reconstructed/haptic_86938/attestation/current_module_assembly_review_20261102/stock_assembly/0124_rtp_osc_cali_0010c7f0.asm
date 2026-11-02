
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000099d0 <rtp_osc_cali>:
    99d0: d503233f     	paciasp
    99d4: d10143ff     	sub	sp, sp, #0x50
    99d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    99dc: f90013f7     	str	x23, [sp, #0x20]
    99e0: a90357f6     	stp	x22, x21, [sp, #0x30]
    99e4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    99e8: 910043fd     	add	x29, sp, #0x10
    99ec: d5384108     	mrs	x8, SP_EL0
    99f0: aa0003f3     	mov	x19, x0
    99f4: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		00000000000099f4:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    99f8: 91000021     	add	x1, x1, #0x0
		00000000000099f8:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    99fc: f9438908     	ldr	x8, [x8, #0x710]
    9a00: f90007e8     	str	x8, [sp, #0x8]
    9a04: 52800028     	mov	w8, #0x1                // =1
    9a08: f9419002     	ldr	x2, [x0, #0x320]
    9a0c: b900741f     	str	wzr, [x0, #0x74]
    9a10: b9009408     	str	w8, [x0, #0x94]
    9a14: 910003e0     	mov	x0, sp
    9a18: f90003ff     	str	xzr, [sp]
    9a1c: 94000000     	bl	0x9a1c <rtp_osc_cali+0x4c>
		0000000000009a1c:  R_AARCH64_CALL26	request_firmware
    9a20: 36f80160     	tbz	w0, #0x1f, 0x9a4c <rtp_osc_cali+0x7c>
    9a24: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebe
    9a28: 91000000     	add	x0, x0, #0x0
		0000000000009a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebe
    9a2c: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9a30: 91000021     	add	x1, x1, #0x0
		0000000000009a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9a34: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    9a38: 91000063     	add	x3, x3, #0x0
		0000000000009a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    9a3c: 90000004     	adrp	x4, 0x9000 <cont_show+0x34>
		0000000000009a3c:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    9a40: 91000084     	add	x4, x4, #0x0
		0000000000009a40:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    9a44: 52805f22     	mov	w2, #0x2f9              // =761
    9a48: 140000f1     	b	0x9e0c <rtp_osc_cali+0x43c>
    9a4c: f942e668     	ldr	x8, [x19, #0x5c8]
    9a50: aa1303e0     	mov	x0, x19
    9a54: f9401d08     	ldr	x8, [x8, #0x38]
    9a58: b85fc110     	ldur	w16, [x8, #-0x4]
    9a5c: 72810611     	movk	w17, #0x830
    9a60: 72b08f51     	movk	w17, #0x847a, lsl #16
    9a64: 6b11021f     	cmp	w16, w17
    9a68: 54000040     	b.eq	0x9a70 <rtp_osc_cali+0xa0>
    9a6c: d4304500     	brk	#0x8228
    9a70: d63f0100     	blr	x8
    9a74: 910dc260     	add	x0, x19, #0x370
    9a78: 3900167f     	strb	wzr, [x19, #0x5]
    9a7c: 94000000     	bl	0x9a7c <rtp_osc_cali+0xac>
		0000000000009a7c:  R_AARCH64_CALL26	mutex_lock
    9a80: 90000015     	adrp	x21, 0x9000 <cont_show+0x34>
		0000000000009a80:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    9a84: f94002a0     	ldr	x0, [x21]
		0000000000009a84:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9a88: 94000000     	bl	0x9a88 <rtp_osc_cali+0xb8>
		0000000000009a88:  R_AARCH64_CALL26	vfree
    9a8c: d503201f     	nop
    9a90: f94003e8     	ldr	x8, [sp]
    9a94: f9400108     	ldr	x8, [x8]
    9a98: 91001114     	add	x20, x8, #0x4
    9a9c: aa1403e0     	mov	x0, x20
    9aa0: 94000000     	bl	0x9aa0 <rtp_osc_cali+0xd0>
		0000000000009aa0:  R_AARCH64_CALL26	vmalloc_noprof
    9aa4: f94003e8     	ldr	x8, [sp]
    9aa8: f90002a0     	str	x0, [x21]
		0000000000009aa8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9aac: b50001c0     	cbnz	x0, 0x9ae4 <rtp_osc_cali+0x114>
    9ab0: aa0803e0     	mov	x0, x8
    9ab4: 94000000     	bl	0x9ab4 <rtp_osc_cali+0xe4>
		0000000000009ab4:  R_AARCH64_CALL26	release_firmware
    9ab8: 910dc260     	add	x0, x19, #0x370
    9abc: 94000000     	bl	0x9abc <rtp_osc_cali+0xec>
		0000000000009abc:  R_AARCH64_CALL26	mutex_unlock
    9ac0: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f2
    9ac4: 91000000     	add	x0, x0, #0x0
		0000000000009ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f2
    9ac8: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9acc: 91000021     	add	x1, x1, #0x0
		0000000000009acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9ad0: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    9ad4: 91000063     	add	x3, x3, #0x0
		0000000000009ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    9ad8: 528060a2     	mov	w2, #0x305              // =773
    9adc: 94000000     	bl	0x9adc <rtp_osc_cali+0x10c>
		0000000000009adc:  R_AARCH64_CALL26	_printk
    9ae0: 140000cc     	b	0x9e10 <rtp_osc_cali+0x440>
    9ae4: f100129f     	cmp	x20, #0x4
    9ae8: 54001ac3     	b.lo	0x9e40 <rtp_osc_cali+0x470>
    9aec: b9400105     	ldr	w5, [x8]
    9af0: 90000014     	adrp	x20, 0x9000 <cont_show+0x34>
		0000000000009af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9af4: 91000294     	add	x20, x20, #0x0
		0000000000009af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9af8: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    9afc: 91000063     	add	x3, x3, #0x0
		0000000000009afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    9b00: 90000004     	adrp	x4, 0x9000 <cont_show+0x34>
		0000000000009b00:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    9b04: 91000084     	add	x4, x4, #0x0
		0000000000009b04:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    9b08: b9000005     	str	w5, [x0]
    9b0c: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2547
    9b10: 91000000     	add	x0, x0, #0x0
		0000000000009b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2547
    9b14: f9400108     	ldr	x8, [x8]
    9b18: aa1403e1     	mov	x1, x20
    9b1c: 52806142     	mov	w2, #0x30a              // =778
    9b20: b9007a68     	str	w8, [x19, #0x78]
    9b24: 94000000     	bl	0x9b24 <rtp_osc_cali+0x154>
		0000000000009b24:  R_AARCH64_CALL26	_printk
    9b28: f94003e8     	ldr	x8, [sp]
    9b2c: f94002a9     	ldr	x9, [x21]
		0000000000009b2c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9b30: a9400502     	ldp	x2, x1, [x8]
    9b34: 91001120     	add	x0, x9, #0x4
    9b38: 94000000     	bl	0x9b38 <rtp_osc_cali+0x168>
		0000000000009b38:  R_AARCH64_CALL26	memcpy
    9b3c: f94003e0     	ldr	x0, [sp]
    9b40: 94000000     	bl	0x9b40 <rtp_osc_cali+0x170>
		0000000000009b40:  R_AARCH64_CALL26	release_firmware
    9b44: 910dc260     	add	x0, x19, #0x370
    9b48: 94000000     	bl	0x9b48 <rtp_osc_cali+0x178>
		0000000000009b48:  R_AARCH64_CALL26	mutex_unlock
    9b4c: f942e668     	ldr	x8, [x19, #0x5c8]
    9b50: b9403661     	ldr	w1, [x19, #0x34]
    9b54: aa1303e0     	mov	x0, x19
    9b58: f9404508     	ldr	x8, [x8, #0x88]
    9b5c: b85fc110     	ldur	w16, [x8, #-0x4]
    9b60: 729bedd1     	movk	w17, #0xdf6e
    9b64: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9b68: 6b11021f     	cmp	w16, w17
    9b6c: 54000040     	b.eq	0x9b74 <rtp_osc_cali+0x1a4>
    9b70: d4304500     	brk	#0x8228
    9b74: d63f0100     	blr	x8
    9b78: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe12
    9b7c: 91000000     	add	x0, x0, #0x0
		0000000000009b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe12
    9b80: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff
    9b84: 91000063     	add	x3, x3, #0x0
		0000000000009b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff
    9b88: aa1403e1     	mov	x1, x20
    9b8c: 52805322     	mov	w2, #0x299              // =665
    9b90: 94000000     	bl	0x9b90 <rtp_osc_cali+0x1c0>
		0000000000009b90:  R_AARCH64_CALL26	_printk
    9b94: f942e668     	ldr	x8, [x19, #0x5c8]
    9b98: aa1303e0     	mov	x0, x19
    9b9c: 52800041     	mov	w1, #0x2                // =2
    9ba0: f9404d08     	ldr	x8, [x8, #0x98]
    9ba4: b85fc110     	ldur	w16, [x8, #-0x4]
    9ba8: 729bedd1     	movk	w17, #0xdf6e
    9bac: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9bb0: 6b11021f     	cmp	w16, w17
    9bb4: 54000040     	b.eq	0x9bbc <rtp_osc_cali+0x1ec>
    9bb8: d4304500     	brk	#0x8228
    9bbc: d63f0100     	blr	x8
    9bc0: f942e668     	ldr	x8, [x19, #0x5c8]
    9bc4: aa1303e0     	mov	x0, x19
    9bc8: 2a1f03e1     	mov	w1, wzr
    9bcc: f9409508     	ldr	x8, [x8, #0x128]
    9bd0: b85fc110     	ldur	w16, [x8, #-0x4]
    9bd4: 729bedd1     	movk	w17, #0xdf6e
    9bd8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9bdc: 6b11021f     	cmp	w16, w17
    9be0: 54000040     	b.eq	0x9be8 <rtp_osc_cali+0x218>
    9be4: d4304500     	brk	#0x8228
    9be8: d63f0100     	blr	x8
    9bec: b9405260     	ldr	w0, [x19, #0x50]
    9bf0: 94000000     	bl	0x9bf0 <rtp_osc_cali+0x220>
		0000000000009bf0:  R_AARCH64_CALL26	gpio_to_desc
    9bf4: 94000000     	bl	0x9bf4 <rtp_osc_cali+0x224>
		0000000000009bf4:  R_AARCH64_CALL26	gpiod_to_irq
    9bf8: 94000000     	bl	0x9bf8 <rtp_osc_cali+0x228>
		0000000000009bf8:  R_AARCH64_CALL26	disable_irq
    9bfc: f942e668     	ldr	x8, [x19, #0x5c8]
    9c00: aa1303e0     	mov	x0, x19
    9c04: 52800021     	mov	w1, #0x1                // =1
    9c08: f9403108     	ldr	x8, [x8, #0x60]
    9c0c: b85fc110     	ldur	w16, [x8, #-0x4]
    9c10: 729bedd1     	movk	w17, #0xdf6e
    9c14: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9c18: 6b11021f     	cmp	w16, w17
    9c1c: 54000040     	b.eq	0x9c24 <rtp_osc_cali+0x254>
    9c20: d4304500     	brk	#0x8228
    9c24: d63f0100     	blr	x8
    9c28: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009c28:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    9c2c: 91000000     	add	x0, x0, #0x0
		0000000000009c2c:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    9c30: 2a1f03e1     	mov	w1, wzr
    9c34: 94000000     	bl	0x9c34 <rtp_osc_cali+0x264>
		0000000000009c34:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    9c38: d29ef9f6     	mov	x22, #0xf7cf            // =63439
    9c3c: 529a3c37     	mov	w23, #0xd1e1            // =53729
    9c40: f2bc6a76     	movk	x22, #0xe353, lsl #16
    9c44: 72a009b7     	movk	w23, #0x4d, lsl #16
    9c48: f2d374b6     	movk	x22, #0x9ba5, lsl #32
    9c4c: f2e41896     	movk	x22, #0x20c4, lsl #48
    9c50: f942e668     	ldr	x8, [x19, #0x5c8]
    9c54: aa1303e0     	mov	x0, x19
    9c58: f940b908     	ldr	x8, [x8, #0x170]
    9c5c: b85fc110     	ldur	w16, [x8, #-0x4]
    9c60: 72870a91     	movk	w17, #0x3854
    9c64: 72af0971     	movk	w17, #0x784b, lsl #16
    9c68: 6b11021f     	cmp	w16, w17
    9c6c: 54000040     	b.eq	0x9c74 <rtp_osc_cali+0x2a4>
    9c70: d4304500     	brk	#0x8228
    9c74: d63f0100     	blr	x8
    9c78: 72001c1f     	tst	w0, #0xff
    9c7c: 540004e1     	b.ne	0x9d18 <rtp_osc_cali+0x348>
    9c80: 910dc260     	add	x0, x19, #0x370
    9c84: 94000000     	bl	0x9c84 <rtp_osc_cali+0x2b4>
		0000000000009c84:  R_AARCH64_CALL26	mutex_lock
    9c88: f94002a8     	ldr	x8, [x21]
		0000000000009c88:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9c8c: b9445a6a     	ldr	w10, [x19, #0x458]
    9c90: b9407669     	ldr	w9, [x19, #0x74]
    9c94: b940010b     	ldr	w11, [x8]
    9c98: 53027d4a     	lsr	w10, w10, #2
    9c9c: 6b09016c     	subs	w12, w11, w9
    9ca0: 6b0a019f     	cmp	w12, w10
    9ca4: 1a8a3194     	csel	w20, w12, w10, lo
    9ca8: 6b09017f     	cmp	w11, w9
    9cac: 54000320     	b.eq	0x9d10 <rtp_osc_cali+0x340>
    9cb0: b940966a     	ldr	w10, [x19, #0x94]
    9cb4: 7100055f     	cmp	w10, #0x1
    9cb8: 540000c1     	b.ne	0x9cd0 <rtp_osc_cali+0x300>
    9cbc: 94000000     	bl	0x9cbc <rtp_osc_cali+0x2ec>
		0000000000009cbc:  R_AARCH64_CALL26	ktime_get
    9cc0: f94002a8     	ldr	x8, [x21]
		0000000000009cc0:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    9cc4: b9407669     	ldr	w9, [x19, #0x74]
    9cc8: f9013a60     	str	x0, [x19, #0x270]
    9ccc: b900967f     	str	wzr, [x19, #0x94]
    9cd0: f942e66a     	ldr	x10, [x19, #0x5c8]
    9cd4: 8b294108     	add	x8, x8, w9, uxtw
    9cd8: aa1303e0     	mov	x0, x19
    9cdc: 2a1403e2     	mov	w2, w20
    9ce0: f940694a     	ldr	x10, [x10, #0xd0]
    9ce4: 91001101     	add	x1, x8, #0x4
    9ce8: b85fc150     	ldur	w16, [x10, #-0x4]
    9cec: 72965371     	movk	w17, #0xb29b
    9cf0: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    9cf4: 6b11021f     	cmp	w16, w17
    9cf8: 54000040     	b.eq	0x9d00 <rtp_osc_cali+0x330>
    9cfc: d4304540     	brk	#0x822a
    9d00: d63f0140     	blr	x10
    9d04: b9407668     	ldr	w8, [x19, #0x74]
    9d08: 0b140108     	add	w8, w8, w20
    9d0c: b9007668     	str	w8, [x19, #0x74]
    9d10: 910dc260     	add	x0, x19, #0x370
    9d14: 94000000     	bl	0x9d14 <rtp_osc_cali+0x344>
		0000000000009d14:  R_AARCH64_CALL26	mutex_unlock
    9d18: f942e668     	ldr	x8, [x19, #0x5c8]
    9d1c: aa1303e0     	mov	x0, x19
    9d20: f940b508     	ldr	x8, [x8, #0x168]
    9d24: b85fc110     	ldur	w16, [x8, #-0x4]
    9d28: 72870a91     	movk	w17, #0x3854
    9d2c: 72af0971     	movk	w17, #0x784b, lsl #16
    9d30: 6b11021f     	cmp	w16, w17
    9d34: 54000040     	b.eq	0x9d3c <rtp_osc_cali+0x36c>
    9d38: d4304500     	brk	#0x8228
    9d3c: d63f0100     	blr	x8
    9d40: 12001c14     	and	w20, w0, #0xff
    9d44: 94000000     	bl	0x9d44 <rtp_osc_cali+0x374>
		0000000000009d44:  R_AARCH64_CALL26	ktime_get
    9d48: f9013660     	str	x0, [x19, #0x268]
    9d4c: 35000254     	cbnz	w20, 0x9d94 <rtp_osc_cali+0x3c4>
    9d50: f9413a68     	ldr	x8, [x19, #0x270]
    9d54: cb080008     	sub	x8, x0, x8
    9d58: 9b567d08     	smulh	x8, x8, x22
    9d5c: 9347fd09     	asr	x9, x8, #7
    9d60: 8b48fd28     	add	x8, x9, x8, lsr #63
    9d64: eb17011f     	cmp	x8, x23
    9d68: f9005268     	str	x8, [x19, #0xa0]
    9d6c: 54fff723     	b.lo	0x9c50 <rtp_osc_cali+0x280>
    9d70: b9407664     	ldr	w4, [x19, #0x74]
    9d74: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x171b
    9d78: 91000000     	add	x0, x0, #0x0
		0000000000009d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x171b
    9d7c: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9d80: 91000021     	add	x1, x1, #0x0
		0000000000009d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9d84: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    9d88: 91000063     	add	x3, x3, #0x0
		0000000000009d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    9d8c: 52806802     	mov	w2, #0x340              // =832
    9d90: 14000009     	b	0x9db4 <rtp_osc_cali+0x3e4>
    9d94: b9407664     	ldr	w4, [x19, #0x74]
    9d98: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1360
    9d9c: 91000000     	add	x0, x0, #0x0
		0000000000009d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1360
    9da0: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9da4: 91000021     	add	x1, x1, #0x0
		0000000000009da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9da8: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    9dac: 91000063     	add	x3, x3, #0x0
		0000000000009dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    9db0: 52806702     	mov	w2, #0x338              // =824
    9db4: 94000000     	bl	0x9db4 <rtp_osc_cali+0x3e4>
		0000000000009db4:  R_AARCH64_CALL26	_printk
    9db8: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009db8:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    9dbc: 91000000     	add	x0, x0, #0x0
		0000000000009dbc:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    9dc0: 94000000     	bl	0x9dc0 <rtp_osc_cali+0x3f0>
		0000000000009dc0:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    9dc4: b9405260     	ldr	w0, [x19, #0x50]
    9dc8: 94000000     	bl	0x9dc8 <rtp_osc_cali+0x3f8>
		0000000000009dc8:  R_AARCH64_CALL26	gpio_to_desc
    9dcc: 94000000     	bl	0x9dcc <rtp_osc_cali+0x3fc>
		0000000000009dcc:  R_AARCH64_CALL26	gpiod_to_irq
    9dd0: 94000000     	bl	0x9dd0 <rtp_osc_cali+0x400>
		0000000000009dd0:  R_AARCH64_CALL26	enable_irq
    9dd4: f9413668     	ldr	x8, [x19, #0x268]
    9dd8: f9413a69     	ldr	x9, [x19, #0x270]
    9ddc: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1755
    9de0: 91000000     	add	x0, x0, #0x0
		0000000000009de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1755
    9de4: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9de8: 91000021     	add	x1, x1, #0x0
		0000000000009de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9dec: cb090108     	sub	x8, x8, x9
    9df0: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b62
    9df4: 91000063     	add	x3, x3, #0x0
		0000000000009df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b62
    9df8: 9b567d08     	smulh	x8, x8, x22
    9dfc: 52806942     	mov	w2, #0x34a              // =842
    9e00: 9347fd09     	asr	x9, x8, #7
    9e04: 8b48fd24     	add	x4, x9, x8, lsr #63
    9e08: f9005264     	str	x4, [x19, #0xa0]
    9e0c: 94000000     	bl	0x9e0c <rtp_osc_cali+0x43c>
		0000000000009e0c:  R_AARCH64_CALL26	_printk
    9e10: d5384108     	mrs	x8, SP_EL0
    9e14: f9438908     	ldr	x8, [x8, #0x710]
    9e18: f94007e9     	ldr	x9, [sp, #0x8]
    9e1c: eb09011f     	cmp	x8, x9
    9e20: 54000121     	b.ne	0x9e44 <rtp_osc_cali+0x474>
    9e24: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    9e28: f94013f7     	ldr	x23, [sp, #0x20]
    9e2c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    9e30: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9e34: 910143ff     	add	sp, sp, #0x50
    9e38: d50323bf     	autiasp
    9e3c: d65f03c0     	ret
    9e40: d4200020     	brk	#0x1
    9e44: 94000000     	bl	0x9e44 <rtp_osc_cali+0x474>
		0000000000009e44:  R_AARCH64_CALL26	__stack_chk_fail
    9e48: f94003e8     	ldr	x8, [sp]
    9e4c: 90000009     	adrp	x9, 0x9000 <cont_show+0x34>
		0000000000009e4c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    9e50: 91000129     	add	x9, x9, #0x0
		0000000000009e50:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    9e54: d5384116     	mrs	x22, SP_EL0
    9e58: f9402ad7     	ldr	x23, [x22, #0x50]
    9e5c: f9002ac9     	str	x9, [x22, #0x50]
    9e60: f9400108     	ldr	x8, [x8]
    9e64: 91001114     	add	x20, x8, #0x4
    9e68: aa1403e0     	mov	x0, x20
    9e6c: 94000000     	bl	0x9e6c <rtp_osc_cali+0x49c>
		0000000000009e6c:  R_AARCH64_CALL26	vmalloc_noprof
    9e70: f9002ad7     	str	x23, [x22, #0x50]
    9e74: 17ffff0c     	b	0x9aa4 <rtp_osc_cali+0xd4>
