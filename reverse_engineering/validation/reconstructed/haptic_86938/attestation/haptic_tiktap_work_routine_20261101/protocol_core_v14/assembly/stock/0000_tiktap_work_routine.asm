
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005e48 <tiktap_work_routine>:
    5e48: d503233f     	paciasp
    5e4c: d10243ff     	sub	sp, sp, #0x90
    5e50: a9037bfd     	stp	x29, x30, [sp, #0x30]
    5e54: a9046ffc     	stp	x28, x27, [sp, #0x40]
    5e58: a90567fa     	stp	x26, x25, [sp, #0x50]
    5e5c: a9065ff8     	stp	x24, x23, [sp, #0x60]
    5e60: a90757f6     	stp	x22, x21, [sp, #0x70]
    5e64: a9084ff4     	stp	x20, x19, [sp, #0x80]
    5e68: 9100c3fd     	add	x29, sp, #0x30
    5e6c: d5384108     	mrs	x8, SP_EL0
    5e70: d10ce014     	sub	x20, x0, #0x338
    5e74: aa0003f3     	mov	x19, x0
    5e78: f9438908     	ldr	x8, [x8, #0x710]
    5e7c: d118a015     	sub	x21, x0, #0x628
    5e80: f81f83a8     	stur	x8, [x29, #-0x8]
    5e84: f85e801b     	ldur	x27, [x0, #-0x18]
    5e88: aa1403e0     	mov	x0, x20
    5e8c: 94000000     	bl	0x5e8c <tiktap_work_routine+0x44>
		0000000000005e8c:  R_AARCH64_CALL26	mutex_lock
    5e90: f85a0268     	ldur	x8, [x19, #-0x60]
    5e94: 381f027f     	sturb	wzr, [x19, #-0x10]
    5e98: aa1503e0     	mov	x0, x21
    5e9c: 52800041     	mov	w1, #0x2                // =2
    5ea0: f9404d08     	ldr	x8, [x8, #0x98]
    5ea4: b85fc110     	ldur	w16, [x8, #-0x4]
    5ea8: 729bedd1     	movk	w17, #0xdf6e
    5eac: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5eb0: 6b11021f     	cmp	w16, w17
    5eb4: 54000040     	b.eq	0x5ebc <tiktap_work_routine+0x74>
    5eb8: d4304500     	brk	#0x8228
    5ebc: d63f0100     	blr	x8
    5ec0: f85a0268     	ldur	x8, [x19, #-0x60]
    5ec4: aa1503e0     	mov	x0, x21
    5ec8: 52800041     	mov	w1, #0x2                // =2
    5ecc: f9408d08     	ldr	x8, [x8, #0x118]
    5ed0: b85fc110     	ldur	w16, [x8, #-0x4]
    5ed4: 728dd2b1     	movk	w17, #0x6e95
    5ed8: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    5edc: 6b11021f     	cmp	w16, w17
    5ee0: 54000040     	b.eq	0x5ee8 <tiktap_work_routine+0xa0>
    5ee4: d4304500     	brk	#0x8228
    5ee8: d63f0100     	blr	x8
    5eec: 52800c76     	mov	w22, #0x63              // =99
    5ef0: 39400368     	ldrb	w8, [x27]
    5ef4: 7101551f     	cmp	w8, #0x55
    5ef8: 54000140     	b.eq	0x5f20 <tiktap_work_routine+0xd8>
    5efc: 385f0268     	ldurb	w8, [x19, #-0x10]
    5f00: 37000488     	tbnz	w8, #0x0, 0x5f90 <tiktap_work_routine+0x148>
    5f04: 52912b00     	mov	w0, #0x8958             // =35160
    5f08: 72a00820     	movk	w0, #0x41, lsl #16
    5f0c: 94000000     	bl	0x5f0c <tiktap_work_routine+0xc4>
		0000000000005f0c:  R_AARCH64_CALL26	__const_udelay
    5f10: 510006d6     	sub	w22, w22, #0x1
    5f14: 310006df     	cmn	w22, #0x1
    5f18: 54fffec1     	b.ne	0x5ef0 <tiktap_work_routine+0xa8>
    5f1c: 14000012     	b	0x5f64 <tiktap_work_routine+0x11c>
    5f20: f85a0268     	ldur	x8, [x19, #-0x60]
    5f24: aa1503e0     	mov	x0, x21
    5f28: 52800021     	mov	w1, #0x1                // =1
    5f2c: 52800037     	mov	w23, #0x1               // =1
    5f30: f9403108     	ldr	x8, [x8, #0x60]
    5f34: b85fc110     	ldur	w16, [x8, #-0x4]
    5f38: 729bedd1     	movk	w17, #0xdf6e
    5f3c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5f40: 6b11021f     	cmp	w16, w17
    5f44: 54000040     	b.eq	0x5f4c <tiktap_work_routine+0x104>
    5f48: d4304500     	brk	#0x8228
    5f4c: d63f0100     	blr	x8
    5f50: 52912b00     	mov	w0, #0x8958             // =35160
    5f54: 72a00820     	movk	w0, #0x41, lsl #16
    5f58: 94000000     	bl	0x5f58 <tiktap_work_routine+0x110>
		0000000000005f58:  R_AARCH64_CALL26	__const_udelay
    5f5c: 710002df     	cmp	w22, #0x0
    5f60: 5400038c     	b.gt	0x5fd0 <tiktap_work_routine+0x188>
    5f64: 39400364     	ldrb	w4, [x27]
    5f68: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2396
    5f6c: 91000000     	add	x0, x0, #0x0
		0000000000005f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2396
    5f70: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5f74: 91000021     	add	x1, x1, #0x0
		0000000000005f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    5f78: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eaf
    5f7c: 91000063     	add	x3, x3, #0x0
		0000000000005f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eaf
    5f80: 5281cfc2     	mov	w2, #0xe7e              // =3710
    5f84: 94000000     	bl	0x5f84 <tiktap_work_routine+0x13c>
		0000000000005f84:  R_AARCH64_CALL26	_printk
    5f88: 52800028     	mov	w8, #0x1                // =1
    5f8c: 381f0268     	sturb	w8, [x19, #-0x10]
    5f90: aa1403e0     	mov	x0, x20
    5f94: 94000000     	bl	0x5f94 <tiktap_work_routine+0x14c>
		0000000000005f94:  R_AARCH64_CALL26	mutex_unlock
    5f98: d5384108     	mrs	x8, SP_EL0
    5f9c: f9438908     	ldr	x8, [x8, #0x710]
    5fa0: f85f83a9     	ldur	x9, [x29, #-0x8]
    5fa4: eb09011f     	cmp	x8, x9
    5fa8: 54001601     	b.ne	0x6268 <tiktap_work_routine+0x420>
    5fac: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    5fb0: a94757f6     	ldp	x22, x21, [sp, #0x70]
    5fb4: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    5fb8: a94567fa     	ldp	x26, x25, [sp, #0x50]
    5fbc: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    5fc0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    5fc4: 910243ff     	add	sp, sp, #0x90
    5fc8: d50323bf     	autiasp
    5fcc: d65f03c0     	ret
    5fd0: aa1403e0     	mov	x0, x20
    5fd4: 381f1277     	sturb	w23, [x19, #-0xf]
    5fd8: 94000000     	bl	0x5fd8 <tiktap_work_routine+0x190>
		0000000000005fd8:  R_AARCH64_CALL26	mutex_unlock
    5fdc: d10ae274     	sub	x20, x19, #0x2b8
    5fe0: aa1403e0     	mov	x0, x20
    5fe4: 94000000     	bl	0x5fe4 <tiktap_work_routine+0x19c>
		0000000000005fe4:  R_AARCH64_CALL26	mutex_lock
    5fe8: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005fe8:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    5fec: 91000000     	add	x0, x0, #0x0
		0000000000005fec:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    5ff0: 94000000     	bl	0x5ff0 <tiktap_work_routine+0x1a8>
		0000000000005ff0:  R_AARCH64_CALL26	cpu_latency_qos_request_active
    5ff4: 370000a0     	tbnz	w0, #0x0, 0x6008 <tiktap_work_routine+0x1c0>
    5ff8: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005ff8:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    5ffc: 91000000     	add	x0, x0, #0x0
		0000000000005ffc:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    6000: 2a1f03e1     	mov	w1, wzr
    6004: 94000000     	bl	0x6004 <tiktap_work_routine+0x1bc>
		0000000000006004:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    6008: 910063e0     	add	x0, sp, #0x18
    600c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    6010: 94000000     	bl	0x6010 <tiktap_work_routine+0x1c8>
		0000000000006010:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    6014: 910063e0     	add	x0, sp, #0x18
    6018: 94000000     	bl	0x6018 <tiktap_work_routine+0x1d0>
		0000000000006018:  R_AARCH64_CALL26	timespec64_to_jiffies
    601c: 94000000     	bl	0x601c <tiktap_work_routine+0x1d4>
		000000000000601c:  R_AARCH64_CALL26	jiffies_to_msecs
    6020: 2a0003f7     	mov	w23, w0
    6024: 910063e0     	add	x0, sp, #0x18
    6028: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    602c: 94000000     	bl	0x602c <tiktap_work_routine+0x1e4>
		000000000000602c:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    6030: 910063e0     	add	x0, sp, #0x18
    6034: 94000000     	bl	0x6034 <tiktap_work_routine+0x1ec>
		0000000000006034:  R_AARCH64_CALL26	timespec64_to_jiffies
    6038: 94000000     	bl	0x6038 <tiktap_work_routine+0x1f0>
		0000000000006038:  R_AARCH64_CALL26	jiffies_to_msecs
    603c: 110c82e8     	add	w8, w23, #0x320
    6040: 6b08001f     	cmp	w0, w8
    6044: 54000149     	b.ls	0x606c <tiktap_work_routine+0x224>
    6048: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48e
    604c: 91000000     	add	x0, x0, #0x0
		000000000000604c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48e
    6050: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6054: 91000021     	add	x1, x1, #0x0
		0000000000006054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6058: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eaf
    605c: 91000063     	add	x3, x3, #0x0
		000000000000605c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eaf
    6060: 5281d2c2     	mov	w2, #0xe96              // =3734
    6064: 94000000     	bl	0x6064 <tiktap_work_routine+0x21c>
		0000000000006064:  R_AARCH64_CALL26	_printk
    6068: 14000078     	b	0x6248 <tiktap_work_routine+0x400>
    606c: 2a1f03f6     	mov	w22, wzr
    6070: 90000018     	adrp	x24, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6074: 91000318     	add	x24, x24, #0x0
		0000000000006074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6078: 90000019     	adrp	x25, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eaf
    607c: 91000339     	add	x25, x25, #0x0
		000000000000607c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eaf
    6080: 9000001a     	adrp	x26, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c87
    6084: 9100035a     	add	x26, x26, #0x0
		0000000000006084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c87
    6088: 1400000e     	b	0x60c0 <tiktap_work_routine+0x278>
    608c: 370005dc     	tbnz	w28, #0x0, 0x6144 <tiktap_work_routine+0x2fc>
    6090: 52912b00     	mov	w0, #0x8958             // =35160
    6094: 72a00820     	movk	w0, #0x41, lsl #16
    6098: 94000000     	bl	0x6098 <tiktap_work_routine+0x250>
		0000000000006098:  R_AARCH64_CALL26	__const_udelay
    609c: 910063e0     	add	x0, sp, #0x18
    60a0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    60a4: 94000000     	bl	0x60a4 <tiktap_work_routine+0x25c>
		00000000000060a4:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    60a8: 910063e0     	add	x0, sp, #0x18
    60ac: 94000000     	bl	0x60ac <tiktap_work_routine+0x264>
		00000000000060ac:  R_AARCH64_CALL26	timespec64_to_jiffies
    60b0: 94000000     	bl	0x60b0 <tiktap_work_routine+0x268>
		00000000000060b0:  R_AARCH64_CALL26	jiffies_to_msecs
    60b4: 110c82e8     	add	w8, w23, #0x320
    60b8: 6b08001f     	cmp	w0, w8
    60bc: 54fffc68     	b.hi	0x6048 <tiktap_work_routine+0x200>
    60c0: f85a0268     	ldur	x8, [x19, #-0x60]
    60c4: aa1503e0     	mov	x0, x21
    60c8: f940bd08     	ldr	x8, [x8, #0x178]
    60cc: b85fc110     	ldur	w16, [x8, #-0x4]
    60d0: 72870a91     	movk	w17, #0x3854
    60d4: 72af0971     	movk	w17, #0x784b, lsl #16
    60d8: 6b11021f     	cmp	w16, w17
    60dc: 54000040     	b.eq	0x60e4 <tiktap_work_routine+0x29c>
    60e0: d4304500     	brk	#0x8228
    60e4: d63f0100     	blr	x8
    60e8: f85a0268     	ldur	x8, [x19, #-0x60]
    60ec: 2a0003fc     	mov	w28, w0
    60f0: aa1503e0     	mov	x0, x21
    60f4: f940b108     	ldr	x8, [x8, #0x160]
    60f8: b85fc110     	ldur	w16, [x8, #-0x4]
    60fc: 72870a91     	movk	w17, #0x3854
    6100: 72af0971     	movk	w17, #0x784b, lsl #16
    6104: 6b11021f     	cmp	w16, w17
    6108: 54000040     	b.eq	0x6110 <tiktap_work_routine+0x2c8>
    610c: d4304500     	brk	#0x8228
    6110: d63f0100     	blr	x8
    6114: 72000c1f     	tst	w0, #0xf
    6118: 54000840     	b.eq	0x6220 <tiktap_work_routine+0x3d8>
    611c: 385f0268     	ldurb	w8, [x19, #-0x10]
    6120: 39400364     	ldrb	w4, [x27]
    6124: 370006e8     	tbnz	w8, #0x0, 0x6200 <tiktap_work_routine+0x3b8>
    6128: 7101549f     	cmp	w4, #0x55
    612c: 54fffb00     	b.eq	0x608c <tiktap_work_routine+0x244>
    6130: 7103fc9f     	cmp	w4, #0xff
    6134: 54000660     	b.eq	0x6200 <tiktap_work_routine+0x3b8>
    6138: 7102a89f     	cmp	w4, #0xaa
    613c: 54fffaa1     	b.ne	0x6090 <tiktap_work_routine+0x248>
    6140: 14000030     	b	0x6200 <tiktap_work_routine+0x3b8>
    6144: 39400765     	ldrb	w5, [x27, #0x1]
    6148: 79c00766     	ldrsh	w6, [x27, #0x2]
    614c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000614c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x128e
    6150: 91000000     	add	x0, x0, #0x0
		0000000000006150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x128e
    6154: aa1803e1     	mov	x1, x24
    6158: 5281d4e2     	mov	w2, #0xea7              // =3751
    615c: aa1903e3     	mov	x3, x25
    6160: 2a1603e4     	mov	w4, w22
    6164: 94000000     	bl	0x6164 <tiktap_work_routine+0x31c>
		0000000000006164:  R_AARCH64_CALL26	_printk
    6168: aa1b03f7     	mov	x23, x27
    616c: 79c00764     	ldrsh	w4, [x27, #0x2]
    6170: 39400365     	ldrb	w5, [x27]
    6174: 38418ee6     	ldrb	w6, [x23, #0x18]!
    6178: 39406767     	ldrb	w7, [x27, #0x19]
    617c: 39408b68     	ldrb	w8, [x27, #0x22]
    6180: 39409369     	ldrb	w9, [x27, #0x24]
    6184: aa1a03e0     	mov	x0, x26
    6188: aa1803e1     	mov	x1, x24
    618c: 5281d562     	mov	w2, #0xeab              // =3755
    6190: aa1903e3     	mov	x3, x25
    6194: b9000be9     	str	w9, [sp, #0x8]
    6198: b90003e8     	str	w8, [sp]
    619c: 94000000     	bl	0x619c <tiktap_work_routine+0x354>
		000000000000619c:  R_AARCH64_CALL26	_printk
    61a0: f85a0268     	ldur	x8, [x19, #-0x60]
    61a4: 79c00762     	ldrsh	w2, [x27, #0x2]
    61a8: aa1503e0     	mov	x0, x21
    61ac: aa1703e1     	mov	x1, x23
    61b0: f9406908     	ldr	x8, [x8, #0xd0]
    61b4: b85fc110     	ldur	w16, [x8, #-0x4]
    61b8: 72965371     	movk	w17, #0xb29b
    61bc: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    61c0: 6b11021f     	cmp	w16, w17
    61c4: 54000040     	b.eq	0x61cc <tiktap_work_routine+0x384>
    61c8: d4304500     	brk	#0x8228
    61cc: d63f0100     	blr	x8
    61d0: 52801548     	mov	w8, #0xaa               // =170
    61d4: 910063e0     	add	x0, sp, #0x18
    61d8: 39000368     	strb	w8, [x27]
    61dc: f940077b     	ldr	x27, [x27, #0x8]
    61e0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    61e4: 94000000     	bl	0x61e4 <tiktap_work_routine+0x39c>
		00000000000061e4:  R_AARCH64_CALL26	ktime_get_coarse_real_ts64
    61e8: 910063e0     	add	x0, sp, #0x18
    61ec: 94000000     	bl	0x61ec <tiktap_work_routine+0x3a4>
		00000000000061ec:  R_AARCH64_CALL26	timespec64_to_jiffies
    61f0: 94000000     	bl	0x61f0 <tiktap_work_routine+0x3a8>
		00000000000061f0:  R_AARCH64_CALL26	jiffies_to_msecs
    61f4: 2a0003f7     	mov	w23, w0
    61f8: 110006d6     	add	w22, w22, #0x1
    61fc: 17ffffa8     	b	0x609c <tiktap_work_routine+0x254>
    6200: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2091
    6204: 91000000     	add	x0, x0, #0x0
		0000000000006204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2091
    6208: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    620c: 91000021     	add	x1, x1, #0x0
		000000000000620c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6210: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eaf
    6214: 91000063     	add	x3, x3, #0x0
		0000000000006214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eaf
    6218: 5281d462     	mov	w2, #0xea3              // =3747
    621c: 1400000a     	b	0x6244 <tiktap_work_routine+0x3fc>
    6220: 90000008     	adrp	x8, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2050
    6224: 91000108     	add	x8, x8, #0x0
		0000000000006224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2050
    6228: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    622c: 91000021     	add	x1, x1, #0x0
		000000000000622c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6230: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eaf
    6234: 91000063     	add	x3, x3, #0x0
		0000000000006234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eaf
    6238: 12001c04     	and	w4, w0, #0xff
    623c: aa0803e0     	mov	x0, x8
    6240: 5281d3a2     	mov	w2, #0xe9d              // =3741
    6244: 94000000     	bl	0x6244 <tiktap_work_routine+0x3fc>
		0000000000006244:  R_AARCH64_CALL26	_printk
    6248: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006248:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    624c: 91000000     	add	x0, x0, #0x0
		000000000000624c:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    6250: 94000000     	bl	0x6250 <tiktap_work_routine+0x408>
		0000000000006250:  R_AARCH64_CALL26	cpu_latency_qos_request_active
    6254: 3607e9a0     	tbz	w0, #0x0, 0x5f88 <tiktap_work_routine+0x140>
    6258: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006258:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    625c: 91000000     	add	x0, x0, #0x0
		000000000000625c:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    6260: 94000000     	bl	0x6260 <tiktap_work_routine+0x418>
		0000000000006260:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    6264: 17ffff49     	b	0x5f88 <tiktap_work_routine+0x140>
    6268: 94000000     	bl	0x6268 <tiktap_work_routine+0x420>
		0000000000006268:  R_AARCH64_CALL26	__stack_chk_fail
