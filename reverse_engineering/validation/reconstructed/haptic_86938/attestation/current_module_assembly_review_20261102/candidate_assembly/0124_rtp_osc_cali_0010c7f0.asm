
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ba20 <rtp_osc_cali>:
    ba20: d503233f     	paciasp
    ba24: d10143ff     	sub	sp, sp, #0x50
    ba28: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ba2c: f90013f7     	str	x23, [sp, #0x20]
    ba30: a90357f6     	stp	x22, x21, [sp, #0x30]
    ba34: a9044ff4     	stp	x20, x19, [sp, #0x40]
    ba38: 910043fd     	add	x29, sp, #0x10
    ba3c: d5384108     	mrs	x8, SP_EL0
    ba40: aa0003f3     	mov	x19, x0
    ba44: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000ba44:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    ba48: 91000021     	add	x1, x1, #0x0
		000000000000ba48:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    ba4c: f9438908     	ldr	x8, [x8, #0x710]
    ba50: f90007e8     	str	x8, [sp, #0x8]
    ba54: 52800028     	mov	w8, #0x1                // =1
    ba58: f9419002     	ldr	x2, [x0, #0x320]
    ba5c: b900741f     	str	wzr, [x0, #0x74]
    ba60: b9009408     	str	w8, [x0, #0x94]
    ba64: 910003e0     	mov	x0, sp
    ba68: f90003ff     	str	xzr, [sp]
    ba6c: 94000000     	bl	0xba6c <rtp_osc_cali+0x4c>
		000000000000ba6c:  R_AARCH64_CALL26	request_firmware
    ba70: 36f80160     	tbz	w0, #0x1f, 0xba9c <rtp_osc_cali+0x7c>
    ba74: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000ba74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a86
    ba78: 91000000     	add	x0, x0, #0x0
		000000000000ba78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a86
    ba7c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000ba7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ba80: 91000021     	add	x1, x1, #0x0
		000000000000ba80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ba84: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000ba84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    ba88: 91000063     	add	x3, x3, #0x0
		000000000000ba88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    ba8c: 90000004     	adrp	x4, 0xb000 <osc_cali_store+0x1c0>
		000000000000ba8c:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    ba90: 91000084     	add	x4, x4, #0x0
		000000000000ba90:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    ba94: 52805f22     	mov	w2, #0x2f9              // =761
    ba98: 140000f1     	b	0xbe5c <rtp_osc_cali+0x43c>
    ba9c: f942e668     	ldr	x8, [x19, #0x5c8]
    baa0: aa1303e0     	mov	x0, x19
    baa4: f9401d08     	ldr	x8, [x8, #0x38]
    baa8: b85fc110     	ldur	w16, [x8, #-0x4]
    baac: 72810611     	movk	w17, #0x830
    bab0: 72b08f51     	movk	w17, #0x847a, lsl #16
    bab4: 6b11021f     	cmp	w16, w17
    bab8: 54000040     	b.eq	0xbac0 <rtp_osc_cali+0xa0>
    babc: d4304500     	brk	#0x8228
    bac0: d63f0100     	blr	x8
    bac4: 910dc260     	add	x0, x19, #0x370
    bac8: 3900167f     	strb	wzr, [x19, #0x5]
    bacc: 94000000     	bl	0xbacc <rtp_osc_cali+0xac>
		000000000000bacc:  R_AARCH64_CALL26	mutex_lock
    bad0: 90000015     	adrp	x21, 0xb000 <osc_cali_store+0x1c0>
		000000000000bad0:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    bad4: f94002a0     	ldr	x0, [x21]
		000000000000bad4:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bad8: 94000000     	bl	0xbad8 <rtp_osc_cali+0xb8>
		000000000000bad8:  R_AARCH64_CALL26	vfree
    badc: d503201f     	nop
    bae0: f94003e8     	ldr	x8, [sp]
    bae4: f9400108     	ldr	x8, [x8]
    bae8: 91001114     	add	x20, x8, #0x4
    baec: aa1403e0     	mov	x0, x20
    baf0: 94000000     	bl	0xbaf0 <rtp_osc_cali+0xd0>
		000000000000baf0:  R_AARCH64_CALL26	vmalloc_noprof
    baf4: f94003e8     	ldr	x8, [sp]
    baf8: f90002a0     	str	x0, [x21]
		000000000000baf8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bafc: b50001c0     	cbnz	x0, 0xbb34 <rtp_osc_cali+0x114>
    bb00: aa0803e0     	mov	x0, x8
    bb04: 94000000     	bl	0xbb04 <rtp_osc_cali+0xe4>
		000000000000bb04:  R_AARCH64_CALL26	release_firmware
    bb08: 910dc260     	add	x0, x19, #0x370
    bb0c: 94000000     	bl	0xbb0c <rtp_osc_cali+0xec>
		000000000000bb0c:  R_AARCH64_CALL26	mutex_unlock
    bb10: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32dc
    bb14: 91000000     	add	x0, x0, #0x0
		000000000000bb14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32dc
    bb18: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bb1c: 91000021     	add	x1, x1, #0x0
		000000000000bb1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bb20: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bb24: 91000063     	add	x3, x3, #0x0
		000000000000bb24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    bb28: 528060a2     	mov	w2, #0x305              // =773
    bb2c: 94000000     	bl	0xbb2c <rtp_osc_cali+0x10c>
		000000000000bb2c:  R_AARCH64_CALL26	_printk
    bb30: 140000cc     	b	0xbe60 <rtp_osc_cali+0x440>
    bb34: f100129f     	cmp	x20, #0x4
    bb38: 54001ac3     	b.lo	0xbe90 <rtp_osc_cali+0x470>
    bb3c: b9400105     	ldr	w5, [x8]
    bb40: 90000014     	adrp	x20, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bb44: 91000294     	add	x20, x20, #0x0
		000000000000bb44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bb48: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bb4c: 91000063     	add	x3, x3, #0x0
		000000000000bb4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    bb50: 90000004     	adrp	x4, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb50:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    bb54: 91000084     	add	x4, x4, #0x0
		000000000000bb54:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    bb58: b9000005     	str	w5, [x0]
    bb5c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000bb5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4172
    bb60: 91000000     	add	x0, x0, #0x0
		000000000000bb60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4172
    bb64: f9400108     	ldr	x8, [x8]
    bb68: aa1403e1     	mov	x1, x20
    bb6c: 52806142     	mov	w2, #0x30a              // =778
    bb70: b9007a68     	str	w8, [x19, #0x78]
    bb74: 94000000     	bl	0xbb74 <rtp_osc_cali+0x154>
		000000000000bb74:  R_AARCH64_CALL26	_printk
    bb78: f94003e8     	ldr	x8, [sp]
    bb7c: f94002a9     	ldr	x9, [x21]
		000000000000bb7c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bb80: a9400502     	ldp	x2, x1, [x8]
    bb84: 91001120     	add	x0, x9, #0x4
    bb88: 94000000     	bl	0xbb88 <rtp_osc_cali+0x168>
		000000000000bb88:  R_AARCH64_CALL26	memcpy
    bb8c: f94003e0     	ldr	x0, [sp]
    bb90: 94000000     	bl	0xbb90 <rtp_osc_cali+0x170>
		000000000000bb90:  R_AARCH64_CALL26	release_firmware
    bb94: 910dc260     	add	x0, x19, #0x370
    bb98: 94000000     	bl	0xbb98 <rtp_osc_cali+0x178>
		000000000000bb98:  R_AARCH64_CALL26	mutex_unlock
    bb9c: f942e668     	ldr	x8, [x19, #0x5c8]
    bba0: b9403661     	ldr	w1, [x19, #0x34]
    bba4: aa1303e0     	mov	x0, x19
    bba8: f9404508     	ldr	x8, [x8, #0x88]
    bbac: b85fc110     	ldur	w16, [x8, #-0x4]
    bbb0: 729bedd1     	movk	w17, #0xdf6e
    bbb4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bbb8: 6b11021f     	cmp	w16, w17
    bbbc: 54000040     	b.eq	0xbbc4 <rtp_osc_cali+0x1a4>
    bbc0: d4304500     	brk	#0x8228
    bbc4: d63f0100     	blr	x8
    bbc8: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000bbc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d4
    bbcc: 91000000     	add	x0, x0, #0x0
		000000000000bbcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d4
    bbd0: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000bbd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f4
    bbd4: 91000063     	add	x3, x3, #0x0
		000000000000bbd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f4
    bbd8: aa1403e1     	mov	x1, x20
    bbdc: 52805322     	mov	w2, #0x299              // =665
    bbe0: 94000000     	bl	0xbbe0 <rtp_osc_cali+0x1c0>
		000000000000bbe0:  R_AARCH64_CALL26	_printk
    bbe4: f942e668     	ldr	x8, [x19, #0x5c8]
    bbe8: aa1303e0     	mov	x0, x19
    bbec: 52800041     	mov	w1, #0x2                // =2
    bbf0: f9404d08     	ldr	x8, [x8, #0x98]
    bbf4: b85fc110     	ldur	w16, [x8, #-0x4]
    bbf8: 729bedd1     	movk	w17, #0xdf6e
    bbfc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bc00: 6b11021f     	cmp	w16, w17
    bc04: 54000040     	b.eq	0xbc0c <rtp_osc_cali+0x1ec>
    bc08: d4304500     	brk	#0x8228
    bc0c: d63f0100     	blr	x8
    bc10: f942e668     	ldr	x8, [x19, #0x5c8]
    bc14: aa1303e0     	mov	x0, x19
    bc18: 2a1f03e1     	mov	w1, wzr
    bc1c: f9409508     	ldr	x8, [x8, #0x128]
    bc20: b85fc110     	ldur	w16, [x8, #-0x4]
    bc24: 729bedd1     	movk	w17, #0xdf6e
    bc28: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bc2c: 6b11021f     	cmp	w16, w17
    bc30: 54000040     	b.eq	0xbc38 <rtp_osc_cali+0x218>
    bc34: d4304500     	brk	#0x8228
    bc38: d63f0100     	blr	x8
    bc3c: b9405260     	ldr	w0, [x19, #0x50]
    bc40: 94000000     	bl	0xbc40 <rtp_osc_cali+0x220>
		000000000000bc40:  R_AARCH64_CALL26	gpio_to_desc
    bc44: 94000000     	bl	0xbc44 <rtp_osc_cali+0x224>
		000000000000bc44:  R_AARCH64_CALL26	gpiod_to_irq
    bc48: 94000000     	bl	0xbc48 <rtp_osc_cali+0x228>
		000000000000bc48:  R_AARCH64_CALL26	disable_irq
    bc4c: f942e668     	ldr	x8, [x19, #0x5c8]
    bc50: aa1303e0     	mov	x0, x19
    bc54: 52800021     	mov	w1, #0x1                // =1
    bc58: f9403108     	ldr	x8, [x8, #0x60]
    bc5c: b85fc110     	ldur	w16, [x8, #-0x4]
    bc60: 729bedd1     	movk	w17, #0xdf6e
    bc64: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bc68: 6b11021f     	cmp	w16, w17
    bc6c: 54000040     	b.eq	0xbc74 <rtp_osc_cali+0x254>
    bc70: d4304500     	brk	#0x8228
    bc74: d63f0100     	blr	x8
    bc78: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000bc78:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    bc7c: 91000000     	add	x0, x0, #0x0
		000000000000bc7c:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    bc80: 2a1f03e1     	mov	w1, wzr
    bc84: 94000000     	bl	0xbc84 <rtp_osc_cali+0x264>
		000000000000bc84:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    bc88: d29ef9f6     	mov	x22, #0xf7cf            // =63439
    bc8c: 529a3c37     	mov	w23, #0xd1e1            // =53729
    bc90: f2bc6a76     	movk	x22, #0xe353, lsl #16
    bc94: 72a009b7     	movk	w23, #0x4d, lsl #16
    bc98: f2d374b6     	movk	x22, #0x9ba5, lsl #32
    bc9c: f2e41896     	movk	x22, #0x20c4, lsl #48
    bca0: f942e668     	ldr	x8, [x19, #0x5c8]
    bca4: aa1303e0     	mov	x0, x19
    bca8: f940b908     	ldr	x8, [x8, #0x170]
    bcac: b85fc110     	ldur	w16, [x8, #-0x4]
    bcb0: 72870a91     	movk	w17, #0x3854
    bcb4: 72af0971     	movk	w17, #0x784b, lsl #16
    bcb8: 6b11021f     	cmp	w16, w17
    bcbc: 54000040     	b.eq	0xbcc4 <rtp_osc_cali+0x2a4>
    bcc0: d4304500     	brk	#0x8228
    bcc4: d63f0100     	blr	x8
    bcc8: 72001c1f     	tst	w0, #0xff
    bccc: 540004e1     	b.ne	0xbd68 <rtp_osc_cali+0x348>
    bcd0: 910dc260     	add	x0, x19, #0x370
    bcd4: 94000000     	bl	0xbcd4 <rtp_osc_cali+0x2b4>
		000000000000bcd4:  R_AARCH64_CALL26	mutex_lock
    bcd8: f94002a8     	ldr	x8, [x21]
		000000000000bcd8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bcdc: b9445a6a     	ldr	w10, [x19, #0x458]
    bce0: b9407669     	ldr	w9, [x19, #0x74]
    bce4: b940010b     	ldr	w11, [x8]
    bce8: 53027d4a     	lsr	w10, w10, #2
    bcec: 6b09016c     	subs	w12, w11, w9
    bcf0: 6b0a019f     	cmp	w12, w10
    bcf4: 1a8a3194     	csel	w20, w12, w10, lo
    bcf8: 6b09017f     	cmp	w11, w9
    bcfc: 54000320     	b.eq	0xbd60 <rtp_osc_cali+0x340>
    bd00: b940966a     	ldr	w10, [x19, #0x94]
    bd04: 7100055f     	cmp	w10, #0x1
    bd08: 540000c1     	b.ne	0xbd20 <rtp_osc_cali+0x300>
    bd0c: 94000000     	bl	0xbd0c <rtp_osc_cali+0x2ec>
		000000000000bd0c:  R_AARCH64_CALL26	ktime_get
    bd10: f94002a8     	ldr	x8, [x21]
		000000000000bd10:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bd14: b9407669     	ldr	w9, [x19, #0x74]
    bd18: f9013a60     	str	x0, [x19, #0x270]
    bd1c: b900967f     	str	wzr, [x19, #0x94]
    bd20: f942e66a     	ldr	x10, [x19, #0x5c8]
    bd24: 8b294108     	add	x8, x8, w9, uxtw
    bd28: aa1303e0     	mov	x0, x19
    bd2c: 2a1403e2     	mov	w2, w20
    bd30: f940694a     	ldr	x10, [x10, #0xd0]
    bd34: 91001101     	add	x1, x8, #0x4
    bd38: b85fc150     	ldur	w16, [x10, #-0x4]
    bd3c: 72965371     	movk	w17, #0xb29b
    bd40: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    bd44: 6b11021f     	cmp	w16, w17
    bd48: 54000040     	b.eq	0xbd50 <rtp_osc_cali+0x330>
    bd4c: d4304540     	brk	#0x822a
    bd50: d63f0140     	blr	x10
    bd54: b9407668     	ldr	w8, [x19, #0x74]
    bd58: 0b140108     	add	w8, w8, w20
    bd5c: b9007668     	str	w8, [x19, #0x74]
    bd60: 910dc260     	add	x0, x19, #0x370
    bd64: 94000000     	bl	0xbd64 <rtp_osc_cali+0x344>
		000000000000bd64:  R_AARCH64_CALL26	mutex_unlock
    bd68: f942e668     	ldr	x8, [x19, #0x5c8]
    bd6c: aa1303e0     	mov	x0, x19
    bd70: f940b508     	ldr	x8, [x8, #0x168]
    bd74: b85fc110     	ldur	w16, [x8, #-0x4]
    bd78: 72870a91     	movk	w17, #0x3854
    bd7c: 72af0971     	movk	w17, #0x784b, lsl #16
    bd80: 6b11021f     	cmp	w16, w17
    bd84: 54000040     	b.eq	0xbd8c <rtp_osc_cali+0x36c>
    bd88: d4304500     	brk	#0x8228
    bd8c: d63f0100     	blr	x8
    bd90: 12001c14     	and	w20, w0, #0xff
    bd94: 94000000     	bl	0xbd94 <rtp_osc_cali+0x374>
		000000000000bd94:  R_AARCH64_CALL26	ktime_get
    bd98: f9013660     	str	x0, [x19, #0x268]
    bd9c: 35000254     	cbnz	w20, 0xbde4 <rtp_osc_cali+0x3c4>
    bda0: f9413a68     	ldr	x8, [x19, #0x270]
    bda4: cb080008     	sub	x8, x0, x8
    bda8: 9b567d08     	smulh	x8, x8, x22
    bdac: 9347fd09     	asr	x9, x8, #7
    bdb0: 8b48fd28     	add	x8, x9, x8, lsr #63
    bdb4: eb17011f     	cmp	x8, x23
    bdb8: f9005268     	str	x8, [x19, #0xa0]
    bdbc: 54fff723     	b.lo	0xbca0 <rtp_osc_cali+0x280>
    bdc0: b9407664     	ldr	w4, [x19, #0x74]
    bdc4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000bdc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3306
    bdc8: 91000000     	add	x0, x0, #0x0
		000000000000bdc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3306
    bdcc: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000bdcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bdd0: 91000021     	add	x1, x1, #0x0
		000000000000bdd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bdd4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000bdd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bdd8: 91000063     	add	x3, x3, #0x0
		000000000000bdd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    bddc: 52806802     	mov	w2, #0x340              // =832
    bde0: 14000009     	b	0xbe04 <rtp_osc_cali+0x3e4>
    bde4: b9407664     	ldr	w4, [x19, #0x74]
    bde8: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000bde8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f40
    bdec: 91000000     	add	x0, x0, #0x0
		000000000000bdec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f40
    bdf0: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000bdf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bdf4: 91000021     	add	x1, x1, #0x0
		000000000000bdf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bdf8: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000bdf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bdfc: 91000063     	add	x3, x3, #0x0
		000000000000bdfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    be00: 52806702     	mov	w2, #0x338              // =824
    be04: 94000000     	bl	0xbe04 <rtp_osc_cali+0x3e4>
		000000000000be04:  R_AARCH64_CALL26	_printk
    be08: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000be08:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    be0c: 91000000     	add	x0, x0, #0x0
		000000000000be0c:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    be10: 94000000     	bl	0xbe10 <rtp_osc_cali+0x3f0>
		000000000000be10:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    be14: b9405260     	ldr	w0, [x19, #0x50]
    be18: 94000000     	bl	0xbe18 <rtp_osc_cali+0x3f8>
		000000000000be18:  R_AARCH64_CALL26	gpio_to_desc
    be1c: 94000000     	bl	0xbe1c <rtp_osc_cali+0x3fc>
		000000000000be1c:  R_AARCH64_CALL26	gpiod_to_irq
    be20: 94000000     	bl	0xbe20 <rtp_osc_cali+0x400>
		000000000000be20:  R_AARCH64_CALL26	enable_irq
    be24: f9413668     	ldr	x8, [x19, #0x268]
    be28: f9413a69     	ldr	x9, [x19, #0x270]
    be2c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000be2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3340
    be30: 91000000     	add	x0, x0, #0x0
		000000000000be30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3340
    be34: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000be34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    be38: 91000021     	add	x1, x1, #0x0
		000000000000be38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    be3c: cb090108     	sub	x8, x8, x9
    be40: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000be40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    be44: 91000063     	add	x3, x3, #0x0
		000000000000be44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    be48: 9b567d08     	smulh	x8, x8, x22
    be4c: 52806942     	mov	w2, #0x34a              // =842
    be50: 9347fd09     	asr	x9, x8, #7
    be54: 8b48fd24     	add	x4, x9, x8, lsr #63
    be58: f9005264     	str	x4, [x19, #0xa0]
    be5c: 94000000     	bl	0xbe5c <rtp_osc_cali+0x43c>
		000000000000be5c:  R_AARCH64_CALL26	_printk
    be60: d5384108     	mrs	x8, SP_EL0
    be64: f9438908     	ldr	x8, [x8, #0x710]
    be68: f94007e9     	ldr	x9, [sp, #0x8]
    be6c: eb09011f     	cmp	x8, x9
    be70: 54000121     	b.ne	0xbe94 <rtp_osc_cali+0x474>
    be74: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    be78: f94013f7     	ldr	x23, [sp, #0x20]
    be7c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    be80: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    be84: 910143ff     	add	sp, sp, #0x50
    be88: d50323bf     	autiasp
    be8c: d65f03c0     	ret
    be90: d4200020     	brk	#0x1
    be94: 94000000     	bl	0xbe94 <rtp_osc_cali+0x474>
		000000000000be94:  R_AARCH64_CALL26	__stack_chk_fail
    be98: f94003e8     	ldr	x8, [sp]
    be9c: 90000009     	adrp	x9, 0xb000 <osc_cali_store+0x1c0>
		000000000000be9c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x460
    bea0: 91000129     	add	x9, x9, #0x0
		000000000000bea0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x460
    bea4: d5384116     	mrs	x22, SP_EL0
    bea8: f9402ad7     	ldr	x23, [x22, #0x50]
    beac: f9002ac9     	str	x9, [x22, #0x50]
    beb0: f9400108     	ldr	x8, [x8]
    beb4: 91001114     	add	x20, x8, #0x4
    beb8: aa1403e0     	mov	x0, x20
    bebc: 94000000     	bl	0xbebc <rtp_osc_cali+0x49c>
		000000000000bebc:  R_AARCH64_CALL26	vmalloc_noprof
    bec0: f9002ad7     	str	x23, [x22, #0x50]
    bec4: 17ffff0c     	b	0xbaf4 <rtp_osc_cali+0xd4>
