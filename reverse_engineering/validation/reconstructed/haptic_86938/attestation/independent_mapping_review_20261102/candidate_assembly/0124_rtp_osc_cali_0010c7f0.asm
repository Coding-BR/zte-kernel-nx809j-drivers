
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ba50 <rtp_osc_cali>:
    ba50: d503233f     	paciasp
    ba54: d10143ff     	sub	sp, sp, #0x50
    ba58: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ba5c: f90013f7     	str	x23, [sp, #0x20]
    ba60: a90357f6     	stp	x22, x21, [sp, #0x30]
    ba64: a9044ff4     	stp	x20, x19, [sp, #0x40]
    ba68: 910043fd     	add	x29, sp, #0x10
    ba6c: d5384108     	mrs	x8, SP_EL0
    ba70: aa0003f3     	mov	x19, x0
    ba74: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000ba74:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    ba78: 91000021     	add	x1, x1, #0x0
		000000000000ba78:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    ba7c: f9438908     	ldr	x8, [x8, #0x710]
    ba80: f90007e8     	str	x8, [sp, #0x8]
    ba84: 52800028     	mov	w8, #0x1                // =1
    ba88: f9419002     	ldr	x2, [x0, #0x320]
    ba8c: b900741f     	str	wzr, [x0, #0x74]
    ba90: b9009408     	str	w8, [x0, #0x94]
    ba94: 910003e0     	mov	x0, sp
    ba98: f90003ff     	str	xzr, [sp]
    ba9c: 94000000     	bl	0xba9c <rtp_osc_cali+0x4c>
		000000000000ba9c:  R_AARCH64_CALL26	request_firmware
    baa0: 36f80160     	tbz	w0, #0x1f, 0xbacc <rtp_osc_cali+0x7c>
    baa4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000baa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a86
    baa8: 91000000     	add	x0, x0, #0x0
		000000000000baa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a86
    baac: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000baac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bab0: 91000021     	add	x1, x1, #0x0
		000000000000bab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bab4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000bab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bab8: 91000063     	add	x3, x3, #0x0
		000000000000bab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    babc: 90000004     	adrp	x4, 0xb000 <osc_cali_store+0x190>
		000000000000babc:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    bac0: 91000084     	add	x4, x4, #0x0
		000000000000bac0:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    bac4: 52805f22     	mov	w2, #0x2f9              // =761
    bac8: 140000f1     	b	0xbe8c <rtp_osc_cali+0x43c>
    bacc: f942e668     	ldr	x8, [x19, #0x5c8]
    bad0: aa1303e0     	mov	x0, x19
    bad4: f9401d08     	ldr	x8, [x8, #0x38]
    bad8: b85fc110     	ldur	w16, [x8, #-0x4]
    badc: 72810611     	movk	w17, #0x830
    bae0: 72b08f51     	movk	w17, #0x847a, lsl #16
    bae4: 6b11021f     	cmp	w16, w17
    bae8: 54000040     	b.eq	0xbaf0 <rtp_osc_cali+0xa0>
    baec: d4304500     	brk	#0x8228
    baf0: d63f0100     	blr	x8
    baf4: 910dc260     	add	x0, x19, #0x370
    baf8: 3900167f     	strb	wzr, [x19, #0x5]
    bafc: 94000000     	bl	0xbafc <rtp_osc_cali+0xac>
		000000000000bafc:  R_AARCH64_CALL26	mutex_lock
    bb00: 90000015     	adrp	x21, 0xb000 <osc_cali_store+0x190>
		000000000000bb00:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    bb04: f94002a0     	ldr	x0, [x21]
		000000000000bb04:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bb08: 94000000     	bl	0xbb08 <rtp_osc_cali+0xb8>
		000000000000bb08:  R_AARCH64_CALL26	vfree
    bb0c: d503201f     	nop
    bb10: f94003e8     	ldr	x8, [sp]
    bb14: f9400108     	ldr	x8, [x8]
    bb18: 91001114     	add	x20, x8, #0x4
    bb1c: aa1403e0     	mov	x0, x20
    bb20: 94000000     	bl	0xbb20 <rtp_osc_cali+0xd0>
		000000000000bb20:  R_AARCH64_CALL26	vmalloc_noprof
    bb24: f94003e8     	ldr	x8, [sp]
    bb28: f90002a0     	str	x0, [x21]
		000000000000bb28:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bb2c: b50001c0     	cbnz	x0, 0xbb64 <rtp_osc_cali+0x114>
    bb30: aa0803e0     	mov	x0, x8
    bb34: 94000000     	bl	0xbb34 <rtp_osc_cali+0xe4>
		000000000000bb34:  R_AARCH64_CALL26	release_firmware
    bb38: 910dc260     	add	x0, x19, #0x370
    bb3c: 94000000     	bl	0xbb3c <rtp_osc_cali+0xec>
		000000000000bb3c:  R_AARCH64_CALL26	mutex_unlock
    bb40: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000bb40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32dc
    bb44: 91000000     	add	x0, x0, #0x0
		000000000000bb44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32dc
    bb48: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000bb48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bb4c: 91000021     	add	x1, x1, #0x0
		000000000000bb4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bb50: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000bb50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bb54: 91000063     	add	x3, x3, #0x0
		000000000000bb54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    bb58: 528060a2     	mov	w2, #0x305              // =773
    bb5c: 94000000     	bl	0xbb5c <rtp_osc_cali+0x10c>
		000000000000bb5c:  R_AARCH64_CALL26	_printk
    bb60: 140000cc     	b	0xbe90 <rtp_osc_cali+0x440>
    bb64: f100129f     	cmp	x20, #0x4
    bb68: 54001ac3     	b.lo	0xbec0 <rtp_osc_cali+0x470>
    bb6c: b9400105     	ldr	w5, [x8]
    bb70: 90000014     	adrp	x20, 0xb000 <osc_cali_store+0x190>
		000000000000bb70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    bb74: 91000294     	add	x20, x20, #0x0
		000000000000bb74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    bb78: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000bb78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    bb7c: 91000063     	add	x3, x3, #0x0
		000000000000bb7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    bb80: 90000004     	adrp	x4, 0xb000 <osc_cali_store+0x190>
		000000000000bb80:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    bb84: 91000084     	add	x4, x4, #0x0
		000000000000bb84:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    bb88: b9000005     	str	w5, [x0]
    bb8c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000bb8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4172
    bb90: 91000000     	add	x0, x0, #0x0
		000000000000bb90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4172
    bb94: f9400108     	ldr	x8, [x8]
    bb98: aa1403e1     	mov	x1, x20
    bb9c: 52806142     	mov	w2, #0x30a              // =778
    bba0: b9007a68     	str	w8, [x19, #0x78]
    bba4: 94000000     	bl	0xbba4 <rtp_osc_cali+0x154>
		000000000000bba4:  R_AARCH64_CALL26	_printk
    bba8: f94003e8     	ldr	x8, [sp]
    bbac: f94002a9     	ldr	x9, [x21]
		000000000000bbac:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bbb0: a9400502     	ldp	x2, x1, [x8]
    bbb4: 91001120     	add	x0, x9, #0x4
    bbb8: 94000000     	bl	0xbbb8 <rtp_osc_cali+0x168>
		000000000000bbb8:  R_AARCH64_CALL26	memcpy
    bbbc: f94003e0     	ldr	x0, [sp]
    bbc0: 94000000     	bl	0xbbc0 <rtp_osc_cali+0x170>
		000000000000bbc0:  R_AARCH64_CALL26	release_firmware
    bbc4: 910dc260     	add	x0, x19, #0x370
    bbc8: 94000000     	bl	0xbbc8 <rtp_osc_cali+0x178>
		000000000000bbc8:  R_AARCH64_CALL26	mutex_unlock
    bbcc: f942e668     	ldr	x8, [x19, #0x5c8]
    bbd0: b9403661     	ldr	w1, [x19, #0x34]
    bbd4: aa1303e0     	mov	x0, x19
    bbd8: f9404508     	ldr	x8, [x8, #0x88]
    bbdc: b85fc110     	ldur	w16, [x8, #-0x4]
    bbe0: 729bedd1     	movk	w17, #0xdf6e
    bbe4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bbe8: 6b11021f     	cmp	w16, w17
    bbec: 54000040     	b.eq	0xbbf4 <rtp_osc_cali+0x1a4>
    bbf0: d4304500     	brk	#0x8228
    bbf4: d63f0100     	blr	x8
    bbf8: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000bbf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d4
    bbfc: 91000000     	add	x0, x0, #0x0
		000000000000bbfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d4
    bc00: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000bc00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f4
    bc04: 91000063     	add	x3, x3, #0x0
		000000000000bc04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f4
    bc08: aa1403e1     	mov	x1, x20
    bc0c: 52805322     	mov	w2, #0x299              // =665
    bc10: 94000000     	bl	0xbc10 <rtp_osc_cali+0x1c0>
		000000000000bc10:  R_AARCH64_CALL26	_printk
    bc14: f942e668     	ldr	x8, [x19, #0x5c8]
    bc18: aa1303e0     	mov	x0, x19
    bc1c: 52800041     	mov	w1, #0x2                // =2
    bc20: f9404d08     	ldr	x8, [x8, #0x98]
    bc24: b85fc110     	ldur	w16, [x8, #-0x4]
    bc28: 729bedd1     	movk	w17, #0xdf6e
    bc2c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bc30: 6b11021f     	cmp	w16, w17
    bc34: 54000040     	b.eq	0xbc3c <rtp_osc_cali+0x1ec>
    bc38: d4304500     	brk	#0x8228
    bc3c: d63f0100     	blr	x8
    bc40: f942e668     	ldr	x8, [x19, #0x5c8]
    bc44: aa1303e0     	mov	x0, x19
    bc48: 2a1f03e1     	mov	w1, wzr
    bc4c: f9409508     	ldr	x8, [x8, #0x128]
    bc50: b85fc110     	ldur	w16, [x8, #-0x4]
    bc54: 729bedd1     	movk	w17, #0xdf6e
    bc58: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bc5c: 6b11021f     	cmp	w16, w17
    bc60: 54000040     	b.eq	0xbc68 <rtp_osc_cali+0x218>
    bc64: d4304500     	brk	#0x8228
    bc68: d63f0100     	blr	x8
    bc6c: b9405260     	ldr	w0, [x19, #0x50]
    bc70: 94000000     	bl	0xbc70 <rtp_osc_cali+0x220>
		000000000000bc70:  R_AARCH64_CALL26	gpio_to_desc
    bc74: 94000000     	bl	0xbc74 <rtp_osc_cali+0x224>
		000000000000bc74:  R_AARCH64_CALL26	gpiod_to_irq
    bc78: 94000000     	bl	0xbc78 <rtp_osc_cali+0x228>
		000000000000bc78:  R_AARCH64_CALL26	disable_irq
    bc7c: f942e668     	ldr	x8, [x19, #0x5c8]
    bc80: aa1303e0     	mov	x0, x19
    bc84: 52800021     	mov	w1, #0x1                // =1
    bc88: f9403108     	ldr	x8, [x8, #0x60]
    bc8c: b85fc110     	ldur	w16, [x8, #-0x4]
    bc90: 729bedd1     	movk	w17, #0xdf6e
    bc94: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    bc98: 6b11021f     	cmp	w16, w17
    bc9c: 54000040     	b.eq	0xbca4 <rtp_osc_cali+0x254>
    bca0: d4304500     	brk	#0x8228
    bca4: d63f0100     	blr	x8
    bca8: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000bca8:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    bcac: 91000000     	add	x0, x0, #0x0
		000000000000bcac:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    bcb0: 2a1f03e1     	mov	w1, wzr
    bcb4: 94000000     	bl	0xbcb4 <rtp_osc_cali+0x264>
		000000000000bcb4:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    bcb8: d29ef9f6     	mov	x22, #0xf7cf            // =63439
    bcbc: 529a3c37     	mov	w23, #0xd1e1            // =53729
    bcc0: f2bc6a76     	movk	x22, #0xe353, lsl #16
    bcc4: 72a009b7     	movk	w23, #0x4d, lsl #16
    bcc8: f2d374b6     	movk	x22, #0x9ba5, lsl #32
    bccc: f2e41896     	movk	x22, #0x20c4, lsl #48
    bcd0: f942e668     	ldr	x8, [x19, #0x5c8]
    bcd4: aa1303e0     	mov	x0, x19
    bcd8: f940b908     	ldr	x8, [x8, #0x170]
    bcdc: b85fc110     	ldur	w16, [x8, #-0x4]
    bce0: 72870a91     	movk	w17, #0x3854
    bce4: 72af0971     	movk	w17, #0x784b, lsl #16
    bce8: 6b11021f     	cmp	w16, w17
    bcec: 54000040     	b.eq	0xbcf4 <rtp_osc_cali+0x2a4>
    bcf0: d4304500     	brk	#0x8228
    bcf4: d63f0100     	blr	x8
    bcf8: 72001c1f     	tst	w0, #0xff
    bcfc: 540004e1     	b.ne	0xbd98 <rtp_osc_cali+0x348>
    bd00: 910dc260     	add	x0, x19, #0x370
    bd04: 94000000     	bl	0xbd04 <rtp_osc_cali+0x2b4>
		000000000000bd04:  R_AARCH64_CALL26	mutex_lock
    bd08: f94002a8     	ldr	x8, [x21]
		000000000000bd08:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bd0c: b9445a6a     	ldr	w10, [x19, #0x458]
    bd10: b9407669     	ldr	w9, [x19, #0x74]
    bd14: b940010b     	ldr	w11, [x8]
    bd18: 53027d4a     	lsr	w10, w10, #2
    bd1c: 6b09016c     	subs	w12, w11, w9
    bd20: 6b0a019f     	cmp	w12, w10
    bd24: 1a8a3194     	csel	w20, w12, w10, lo
    bd28: 6b09017f     	cmp	w11, w9
    bd2c: 54000320     	b.eq	0xbd90 <rtp_osc_cali+0x340>
    bd30: b940966a     	ldr	w10, [x19, #0x94]
    bd34: 7100055f     	cmp	w10, #0x1
    bd38: 540000c1     	b.ne	0xbd50 <rtp_osc_cali+0x300>
    bd3c: 94000000     	bl	0xbd3c <rtp_osc_cali+0x2ec>
		000000000000bd3c:  R_AARCH64_CALL26	ktime_get
    bd40: f94002a8     	ldr	x8, [x21]
		000000000000bd40:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    bd44: b9407669     	ldr	w9, [x19, #0x74]
    bd48: f9013a60     	str	x0, [x19, #0x270]
    bd4c: b900967f     	str	wzr, [x19, #0x94]
    bd50: f942e66a     	ldr	x10, [x19, #0x5c8]
    bd54: 8b294108     	add	x8, x8, w9, uxtw
    bd58: aa1303e0     	mov	x0, x19
    bd5c: 2a1403e2     	mov	w2, w20
    bd60: f940694a     	ldr	x10, [x10, #0xd0]
    bd64: 91001101     	add	x1, x8, #0x4
    bd68: b85fc150     	ldur	w16, [x10, #-0x4]
    bd6c: 72965371     	movk	w17, #0xb29b
    bd70: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    bd74: 6b11021f     	cmp	w16, w17
    bd78: 54000040     	b.eq	0xbd80 <rtp_osc_cali+0x330>
    bd7c: d4304540     	brk	#0x822a
    bd80: d63f0140     	blr	x10
    bd84: b9407668     	ldr	w8, [x19, #0x74]
    bd88: 0b140108     	add	w8, w8, w20
    bd8c: b9007668     	str	w8, [x19, #0x74]
    bd90: 910dc260     	add	x0, x19, #0x370
    bd94: 94000000     	bl	0xbd94 <rtp_osc_cali+0x344>
		000000000000bd94:  R_AARCH64_CALL26	mutex_unlock
    bd98: f942e668     	ldr	x8, [x19, #0x5c8]
    bd9c: aa1303e0     	mov	x0, x19
    bda0: f940b508     	ldr	x8, [x8, #0x168]
    bda4: b85fc110     	ldur	w16, [x8, #-0x4]
    bda8: 72870a91     	movk	w17, #0x3854
    bdac: 72af0971     	movk	w17, #0x784b, lsl #16
    bdb0: 6b11021f     	cmp	w16, w17
    bdb4: 54000040     	b.eq	0xbdbc <rtp_osc_cali+0x36c>
    bdb8: d4304500     	brk	#0x8228
    bdbc: d63f0100     	blr	x8
    bdc0: 12001c14     	and	w20, w0, #0xff
    bdc4: 94000000     	bl	0xbdc4 <rtp_osc_cali+0x374>
		000000000000bdc4:  R_AARCH64_CALL26	ktime_get
    bdc8: f9013660     	str	x0, [x19, #0x268]
    bdcc: 35000254     	cbnz	w20, 0xbe14 <rtp_osc_cali+0x3c4>
    bdd0: f9413a68     	ldr	x8, [x19, #0x270]
    bdd4: cb080008     	sub	x8, x0, x8
    bdd8: 9b567d08     	smulh	x8, x8, x22
    bddc: 9347fd09     	asr	x9, x8, #7
    bde0: 8b48fd28     	add	x8, x9, x8, lsr #63
    bde4: eb17011f     	cmp	x8, x23
    bde8: f9005268     	str	x8, [x19, #0xa0]
    bdec: 54fff723     	b.lo	0xbcd0 <rtp_osc_cali+0x280>
    bdf0: b9407664     	ldr	w4, [x19, #0x74]
    bdf4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000bdf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3306
    bdf8: 91000000     	add	x0, x0, #0x0
		000000000000bdf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3306
    bdfc: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000bdfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    be00: 91000021     	add	x1, x1, #0x0
		000000000000be00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    be04: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000be04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    be08: 91000063     	add	x3, x3, #0x0
		000000000000be08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    be0c: 52806802     	mov	w2, #0x340              // =832
    be10: 14000009     	b	0xbe34 <rtp_osc_cali+0x3e4>
    be14: b9407664     	ldr	w4, [x19, #0x74]
    be18: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000be18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f40
    be1c: 91000000     	add	x0, x0, #0x0
		000000000000be1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f40
    be20: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000be20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    be24: 91000021     	add	x1, x1, #0x0
		000000000000be24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    be28: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000be28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    be2c: 91000063     	add	x3, x3, #0x0
		000000000000be2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    be30: 52806702     	mov	w2, #0x338              // =824
    be34: 94000000     	bl	0xbe34 <rtp_osc_cali+0x3e4>
		000000000000be34:  R_AARCH64_CALL26	_printk
    be38: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000be38:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    be3c: 91000000     	add	x0, x0, #0x0
		000000000000be3c:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    be40: 94000000     	bl	0xbe40 <rtp_osc_cali+0x3f0>
		000000000000be40:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    be44: b9405260     	ldr	w0, [x19, #0x50]
    be48: 94000000     	bl	0xbe48 <rtp_osc_cali+0x3f8>
		000000000000be48:  R_AARCH64_CALL26	gpio_to_desc
    be4c: 94000000     	bl	0xbe4c <rtp_osc_cali+0x3fc>
		000000000000be4c:  R_AARCH64_CALL26	gpiod_to_irq
    be50: 94000000     	bl	0xbe50 <rtp_osc_cali+0x400>
		000000000000be50:  R_AARCH64_CALL26	enable_irq
    be54: f9413668     	ldr	x8, [x19, #0x268]
    be58: f9413a69     	ldr	x9, [x19, #0x270]
    be5c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000be5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3340
    be60: 91000000     	add	x0, x0, #0x0
		000000000000be60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3340
    be64: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000be64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    be68: 91000021     	add	x1, x1, #0x0
		000000000000be68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    be6c: cb090108     	sub	x8, x8, x9
    be70: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000be70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3762
    be74: 91000063     	add	x3, x3, #0x0
		000000000000be74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3762
    be78: 9b567d08     	smulh	x8, x8, x22
    be7c: 52806942     	mov	w2, #0x34a              // =842
    be80: 9347fd09     	asr	x9, x8, #7
    be84: 8b48fd24     	add	x4, x9, x8, lsr #63
    be88: f9005264     	str	x4, [x19, #0xa0]
    be8c: 94000000     	bl	0xbe8c <rtp_osc_cali+0x43c>
		000000000000be8c:  R_AARCH64_CALL26	_printk
    be90: d5384108     	mrs	x8, SP_EL0
    be94: f9438908     	ldr	x8, [x8, #0x710]
    be98: f94007e9     	ldr	x9, [sp, #0x8]
    be9c: eb09011f     	cmp	x8, x9
    bea0: 54000121     	b.ne	0xbec4 <rtp_osc_cali+0x474>
    bea4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    bea8: f94013f7     	ldr	x23, [sp, #0x20]
    beac: a94357f6     	ldp	x22, x21, [sp, #0x30]
    beb0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    beb4: 910143ff     	add	sp, sp, #0x50
    beb8: d50323bf     	autiasp
    bebc: d65f03c0     	ret
    bec0: d4200020     	brk	#0x1
    bec4: 94000000     	bl	0xbec4 <rtp_osc_cali+0x474>
		000000000000bec4:  R_AARCH64_CALL26	__stack_chk_fail
    bec8: f94003e8     	ldr	x8, [sp]
    becc: 90000009     	adrp	x9, 0xb000 <osc_cali_store+0x190>
		000000000000becc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x460
    bed0: 91000129     	add	x9, x9, #0x0
		000000000000bed0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x460
    bed4: d5384116     	mrs	x22, SP_EL0
    bed8: f9402ad7     	ldr	x23, [x22, #0x50]
    bedc: f9002ac9     	str	x9, [x22, #0x50]
    bee0: f9400108     	ldr	x8, [x8]
    bee4: 91001114     	add	x20, x8, #0x4
    bee8: aa1403e0     	mov	x0, x20
    beec: 94000000     	bl	0xbeec <rtp_osc_cali+0x49c>
		000000000000beec:  R_AARCH64_CALL26	vmalloc_noprof
    bef0: f9002ad7     	str	x23, [x22, #0x50]
    bef4: 17ffff0c     	b	0xbb24 <rtp_osc_cali+0xd4>
