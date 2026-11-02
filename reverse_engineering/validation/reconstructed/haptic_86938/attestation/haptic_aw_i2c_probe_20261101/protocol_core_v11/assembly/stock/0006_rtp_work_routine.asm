
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006e28 <rtp_work_routine>:
    6e28: d503233f     	paciasp
    6e2c: d101c3ff     	sub	sp, sp, #0x70
    6e30: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6e34: a9026ffc     	stp	x28, x27, [sp, #0x20]
    6e38: a90367fa     	stp	x26, x25, [sp, #0x30]
    6e3c: a9045ff8     	stp	x24, x23, [sp, #0x40]
    6e40: a90557f6     	stp	x22, x21, [sp, #0x50]
    6e44: a9064ff4     	stp	x20, x19, [sp, #0x60]
    6e48: 910043fd     	add	x29, sp, #0x10
    6e4c: d5384108     	mrs	x8, SP_EL0
    6e50: d100c013     	sub	x19, x0, #0x30
    6e54: aa0003f4     	mov	x20, x0
    6e58: f9438908     	ldr	x8, [x8, #0x710]
    6e5c: aa1303e0     	mov	x0, x19
    6e60: f90007e8     	str	x8, [sp, #0x8]
    6e64: f90003ff     	str	xzr, [sp]
    6e68: 94000000     	bl	0x6e68 <rtp_work_routine+0x40>
		0000000000006e68:  R_AARCH64_CALL26	mutex_lock
    6e6c: d10c4299     	sub	x25, x20, #0x310
    6e70: d10e0e97     	sub	x23, x20, #0x383
    6e74: 52800029     	mov	w9, #0x1                // =1
    6e78: b9400328     	ldr	w8, [x25]
    6e7c: 390002e9     	strb	w9, [x23]
    6e80: 7100191f     	cmp	w8, #0x6
    6e84: 54002de2     	b.hs	0x7440 <rtp_work_routine+0x618>
    6e88: 90000016     	adrp	x22, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006e88:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    6e8c: 910002d6     	add	x22, x22, #0x0
		0000000000006e8c:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    6e90: f8580282     	ldur	x2, [x20, #-0x80]
    6e94: 8b081ac1     	add	x1, x22, x8, lsl #6
    6e98: 910003e0     	mov	x0, sp
    6e9c: 94000000     	bl	0x6e9c <rtp_work_routine+0x74>
		0000000000006e9c:  R_AARCH64_CALL26	request_firmware
    6ea0: 36f801e0     	tbz	w0, #0x1f, 0x6edc <rtp_work_routine+0xb4>
    6ea4: b9400328     	ldr	w8, [x25]
    6ea8: 7100151f     	cmp	w8, #0x5
    6eac: 54002ca8     	b.hi	0x7440 <rtp_work_routine+0x618>
    6eb0: 8b081ac4     	add	x4, x22, x8, lsl #6
    6eb4: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebe
    6eb8: 91000000     	add	x0, x0, #0x0
		0000000000006eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebe
    6ebc: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6ec0: 91000021     	add	x1, x1, #0x0
		0000000000006ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6ec4: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e8
    6ec8: 91000063     	add	x3, x3, #0x0
		0000000000006ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e8
    6ecc: 52808da2     	mov	w2, #0x46d              // =1133
    6ed0: 94000000     	bl	0x6ed0 <rtp_work_routine+0xa8>
		0000000000006ed0:  R_AARCH64_CALL26	_printk
    6ed4: aa1303e0     	mov	x0, x19
    6ed8: 1400014a     	b	0x7400 <rtp_work_routine+0x5d8>
    6edc: d10e6e9a     	sub	x26, x20, #0x39b
    6ee0: 90000018     	adrp	x24, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006ee0:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp
    6ee4: 3900035f     	strb	wzr, [x26]
    6ee8: f9400300     	ldr	x0, [x24]
		0000000000006ee8:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    6eec: 94000000     	bl	0x6eec <rtp_work_routine+0xc4>
		0000000000006eec:  R_AARCH64_CALL26	vfree
    6ef0: d503201f     	nop
    6ef4: f94003e8     	ldr	x8, [sp]
    6ef8: f9400108     	ldr	x8, [x8]
    6efc: 91001115     	add	x21, x8, #0x4
    6f00: aa1503e0     	mov	x0, x21
    6f04: 94000000     	bl	0x6f04 <rtp_work_routine+0xdc>
		0000000000006f04:  R_AARCH64_CALL26	vmalloc_noprof
    6f08: f94003e8     	ldr	x8, [sp]
    6f0c: f9000300     	str	x0, [x24]
		0000000000006f0c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    6f10: b50001a0     	cbnz	x0, 0x6f44 <rtp_work_routine+0x11c>
    6f14: aa0803e0     	mov	x0, x8
    6f18: 94000000     	bl	0x6f18 <rtp_work_routine+0xf0>
		0000000000006f18:  R_AARCH64_CALL26	release_firmware
    6f1c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f2
    6f20: 91000000     	add	x0, x0, #0x0
		0000000000006f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f2
    6f24: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6f28: 91000021     	add	x1, x1, #0x0
		0000000000006f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6f2c: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e8
    6f30: 91000063     	add	x3, x3, #0x0
		0000000000006f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e8
    6f34: 52808ee2     	mov	w2, #0x477              // =1143
    6f38: 94000000     	bl	0x6f38 <rtp_work_routine+0x110>
		0000000000006f38:  R_AARCH64_CALL26	_printk
    6f3c: aa1303e0     	mov	x0, x19
    6f40: 14000130     	b	0x7400 <rtp_work_routine+0x5d8>
    6f44: f10012bf     	cmp	x21, #0x4
    6f48: 540027e3     	b.lo	0x7444 <rtp_work_routine+0x61c>
    6f4c: b9400329     	ldr	w9, [x25]
    6f50: b9400105     	ldr	w5, [x8]
    6f54: 7100153f     	cmp	w9, #0x5
    6f58: b9000005     	str	w5, [x0]
    6f5c: 54002728     	b.hi	0x7440 <rtp_work_routine+0x618>
    6f60: 8b091ac4     	add	x4, x22, x9, lsl #6
    6f64: 90000016     	adrp	x22, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6f68: 910002d6     	add	x22, x22, #0x0
		0000000000006f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6f6c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2547
    6f70: 91000000     	add	x0, x0, #0x0
		0000000000006f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2547
    6f74: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e8
    6f78: 91000063     	add	x3, x3, #0x0
		0000000000006f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e8
    6f7c: aa1603e1     	mov	x1, x22
    6f80: 52808fc2     	mov	w2, #0x47e              // =1150
    6f84: d10e8295     	sub	x21, x20, #0x3a0
    6f88: 94000000     	bl	0x6f88 <rtp_work_routine+0x160>
		0000000000006f88:  R_AARCH64_CALL26	_printk
    6f8c: f94003e8     	ldr	x8, [sp]
    6f90: f9400309     	ldr	x9, [x24]
		0000000000006f90:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    6f94: a9400502     	ldp	x2, x1, [x8]
    6f98: 91001120     	add	x0, x9, #0x4
    6f9c: 94000000     	bl	0x6f9c <rtp_work_routine+0x174>
		0000000000006f9c:  R_AARCH64_CALL26	memcpy
    6fa0: aa1303e0     	mov	x0, x19
    6fa4: 94000000     	bl	0x6fa4 <rtp_work_routine+0x17c>
		0000000000006fa4:  R_AARCH64_CALL26	mutex_unlock
    6fa8: f94003e0     	ldr	x0, [sp]
    6fac: 94000000     	bl	0x6fac <rtp_work_routine+0x184>
		0000000000006fac:  R_AARCH64_CALL26	release_firmware
    6fb0: d102c280     	sub	x0, x20, #0xb0
    6fb4: aa0003f9     	mov	x25, x0
    6fb8: 94000000     	bl	0x6fb8 <rtp_work_routine+0x190>
		0000000000006fb8:  R_AARCH64_CALL26	mutex_lock
    6fbc: 52800028     	mov	w8, #0x1                // =1
    6fc0: f9411689     	ldr	x9, [x20, #0x228]
    6fc4: aa1503e0     	mov	x0, x21
    6fc8: 39000348     	strb	w8, [x26]
    6fcc: 52800041     	mov	w1, #0x2                // =2
    6fd0: f9408d28     	ldr	x8, [x9, #0x118]
    6fd4: b85fc110     	ldur	w16, [x8, #-0x4]
    6fd8: 728dd2b1     	movk	w17, #0x6e95
    6fdc: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    6fe0: 6b11021f     	cmp	w16, w17
    6fe4: 54000040     	b.eq	0x6fec <rtp_work_routine+0x1c4>
    6fe8: d4304500     	brk	#0x8228
    6fec: d63f0100     	blr	x8
    6ff0: f9411688     	ldr	x8, [x20, #0x228]
    6ff4: aa1503e0     	mov	x0, x21
    6ff8: 2a1f03e1     	mov	w1, wzr
    6ffc: f9408908     	ldr	x8, [x8, #0x110]
    7000: b85fc110     	ldur	w16, [x8, #-0x4]
    7004: 729bedd1     	movk	w17, #0xdf6e
    7008: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    700c: 6b11021f     	cmp	w16, w17
    7010: 54000040     	b.eq	0x7018 <rtp_work_routine+0x1f0>
    7014: d4304500     	brk	#0x8228
    7018: d63f0100     	blr	x8
    701c: f9411688     	ldr	x8, [x20, #0x228]
    7020: aa1503e0     	mov	x0, x21
    7024: f9407908     	ldr	x8, [x8, #0xf0]
    7028: b85fc110     	ldur	w16, [x8, #-0x4]
    702c: 72810611     	movk	w17, #0x830
    7030: 72b08f51     	movk	w17, #0x847a, lsl #16
    7034: 6b11021f     	cmp	w16, w17
    7038: 54000040     	b.eq	0x7040 <rtp_work_routine+0x218>
    703c: d4304500     	brk	#0x8228
    7040: d63f0100     	blr	x8
    7044: f9411688     	ldr	x8, [x20, #0x228]
    7048: aa1503e0     	mov	x0, x21
    704c: f9401d08     	ldr	x8, [x8, #0x38]
    7050: b85fc110     	ldur	w16, [x8, #-0x4]
    7054: 72810611     	movk	w17, #0x830
    7058: 72b08f51     	movk	w17, #0x847a, lsl #16
    705c: 6b11021f     	cmp	w16, w17
    7060: 54000040     	b.eq	0x7068 <rtp_work_routine+0x240>
    7064: d4304500     	brk	#0x8228
    7068: d63f0100     	blr	x8
    706c: f9411688     	ldr	x8, [x20, #0x228]
    7070: d10db289     	sub	x9, x20, #0x36c
    7074: aa1503e0     	mov	x0, x21
    7078: b9400121     	ldr	w1, [x9]
    707c: f9404508     	ldr	x8, [x8, #0x88]
    7080: b85fc110     	ldur	w16, [x8, #-0x4]
    7084: 729bedd1     	movk	w17, #0xdf6e
    7088: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    708c: 6b11021f     	cmp	w16, w17
    7090: 54000040     	b.eq	0x7098 <rtp_work_routine+0x270>
    7094: d4304500     	brk	#0x8228
    7098: d63f0100     	blr	x8
    709c: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		000000000000709c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe12
    70a0: 91000000     	add	x0, x0, #0x0
		00000000000070a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe12
    70a4: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		00000000000070a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ff
    70a8: 91000063     	add	x3, x3, #0x0
		00000000000070a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ff
    70ac: aa1603e1     	mov	x1, x22
    70b0: 52805322     	mov	w2, #0x299              // =665
    70b4: 94000000     	bl	0x70b4 <rtp_work_routine+0x28c>
		00000000000070b4:  R_AARCH64_CALL26	_printk
    70b8: 3943e281     	ldrb	w1, [x20, #0xf8]
    70bc: f9411688     	ldr	x8, [x20, #0x228]
    70c0: 39430689     	ldrb	w9, [x20, #0xc1]
    70c4: 5100042a     	sub	w10, w1, #0x1
    70c8: f9405108     	ldr	x8, [x8, #0xa0]
    70cc: 6b2a013f     	cmp	w9, w10, uxtb
    70d0: 54000068     	b.hi	0x70dc <rtp_work_routine+0x2b4>
    70d4: d10dc289     	sub	x9, x20, #0x370
    70d8: b9400121     	ldr	w1, [x9]
    70dc: aa1503e0     	mov	x0, x21
    70e0: b85fc110     	ldur	w16, [x8, #-0x4]
    70e4: 729bedd1     	movk	w17, #0xdf6e
    70e8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    70ec: 6b11021f     	cmp	w16, w17
    70f0: 54000040     	b.eq	0x70f8 <rtp_work_routine+0x2d0>
    70f4: d4304500     	brk	#0x8228
    70f8: d63f0100     	blr	x8
    70fc: f9411688     	ldr	x8, [x20, #0x228]
    7100: aa1503e0     	mov	x0, x21
    7104: 52800041     	mov	w1, #0x2                // =2
    7108: f9404d08     	ldr	x8, [x8, #0x98]
    710c: b85fc110     	ldur	w16, [x8, #-0x4]
    7110: 729bedd1     	movk	w17, #0xdf6e
    7114: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7118: 6b11021f     	cmp	w16, w17
    711c: 54000040     	b.eq	0x7124 <rtp_work_routine+0x2fc>
    7120: d4304500     	brk	#0x8228
    7124: d63f0100     	blr	x8
    7128: f9411688     	ldr	x8, [x20, #0x228]
    712c: aa1503e0     	mov	x0, x21
    7130: 52800021     	mov	w1, #0x1                // =1
    7134: f9403108     	ldr	x8, [x8, #0x60]
    7138: b85fc110     	ldur	w16, [x8, #-0x4]
    713c: 729bedd1     	movk	w17, #0xdf6e
    7140: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7144: 6b11021f     	cmp	w16, w17
    7148: 54000040     	b.eq	0x7150 <rtp_work_routine+0x328>
    714c: d4304500     	brk	#0x8228
    7150: d63f0100     	blr	x8
    7154: 5280fa00     	mov	w0, #0x7d0              // =2000
    7158: 52813881     	mov	w1, #0x9c4              // =2500
    715c: 52800042     	mov	w2, #0x2                // =2
    7160: 94000000     	bl	0x7160 <rtp_work_routine+0x338>
		0000000000007160:  R_AARCH64_CALL26	usleep_range_state
    7164: 128018f6     	mov	w22, #-0xc8             // =-200
    7168: f9411688     	ldr	x8, [x20, #0x228]
    716c: aa1503e0     	mov	x0, x21
    7170: f940b108     	ldr	x8, [x8, #0x160]
    7174: b85fc110     	ldur	w16, [x8, #-0x4]
    7178: 72870a91     	movk	w17, #0x3854
    717c: 72af0971     	movk	w17, #0x784b, lsl #16
    7180: 6b11021f     	cmp	w16, w17
    7184: 54000040     	b.eq	0x718c <rtp_work_routine+0x364>
    7188: d4304500     	brk	#0x8228
    718c: d63f0100     	blr	x8
    7190: 12000c08     	and	w8, w0, #0xf
    7194: 7100211f     	cmp	w8, #0x8
    7198: 54000340     	b.eq	0x7200 <rtp_work_routine+0x3d8>
    719c: 5280fa00     	mov	w0, #0x7d0              // =2000
    71a0: 52813881     	mov	w1, #0x9c4              // =2500
    71a4: 52800042     	mov	w2, #0x2                // =2
    71a8: 94000000     	bl	0x71a8 <rtp_work_routine+0x380>
		00000000000071a8:  R_AARCH64_CALL26	usleep_range_state
    71ac: 310006d6     	adds	w22, w22, #0x1
    71b0: 54fffdc3     	b.lo	0x7168 <rtp_work_routine+0x340>
    71b4: f9411688     	ldr	x8, [x20, #0x228]
    71b8: aa1503e0     	mov	x0, x21
    71bc: f9401d08     	ldr	x8, [x8, #0x38]
    71c0: b85fc110     	ldur	w16, [x8, #-0x4]
    71c4: 72810611     	movk	w17, #0x830
    71c8: 72b08f51     	movk	w17, #0x847a, lsl #16
    71cc: 6b11021f     	cmp	w16, w17
    71d0: 54000040     	b.eq	0x71d8 <rtp_work_routine+0x3b0>
    71d4: d4304500     	brk	#0x8228
    71d8: d63f0100     	blr	x8
    71dc: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		00000000000071dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13cf
    71e0: 91000000     	add	x0, x0, #0x0
		00000000000071e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13cf
    71e4: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		00000000000071e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    71e8: 91000021     	add	x1, x1, #0x0
		00000000000071e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    71ec: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		00000000000071ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e8
    71f0: 91000063     	add	x3, x3, #0x0
		00000000000071f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e8
    71f4: 52809502     	mov	w2, #0x4a8              // =1192
    71f8: 94000000     	bl	0x71f8 <rtp_work_routine+0x3d0>
		00000000000071f8:  R_AARCH64_CALL26	_printk
    71fc: 14000080     	b	0x73fc <rtp_work_routine+0x5d4>
    7200: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf73
    7204: 91000000     	add	x0, x0, #0x0
		0000000000007204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf73
    7208: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    720c: 91000021     	add	x1, x1, #0x0
		000000000000720c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7210: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e8
    7214: 91000063     	add	x3, x3, #0x0
		0000000000007214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e8
    7218: 52809382     	mov	w2, #0x49c              // =1180
    721c: 94000000     	bl	0x721c <rtp_work_routine+0x3f4>
		000000000000721c:  R_AARCH64_CALL26	_printk
    7220: 5280fa00     	mov	w0, #0x7d0              // =2000
    7224: 52813881     	mov	w1, #0x9c4              // =2500
    7228: 52800042     	mov	w2, #0x2                // =2
    722c: 94000000     	bl	0x722c <rtp_work_routine+0x404>
		000000000000722c:  R_AARCH64_CALL26	usleep_range_state
    7230: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007230:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    7234: 91000000     	add	x0, x0, #0x0
		0000000000007234:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    7238: 2a1f03e1     	mov	w1, wzr
    723c: 94000000     	bl	0x723c <rtp_work_routine+0x414>
		000000000000723c:  R_AARCH64_CALL26	cpu_latency_qos_add_request
    7240: d10cb29b     	sub	x27, x20, #0x32c
    7244: aa1303e0     	mov	x0, x19
    7248: b900037f     	str	wzr, [x27]
    724c: 94000000     	bl	0x724c <rtp_work_routine+0x424>
		000000000000724c:  R_AARCH64_CALL26	mutex_lock
    7250: d10e269a     	sub	x26, x20, #0x389
    7254: f9411688     	ldr	x8, [x20, #0x228]
    7258: aa1503e0     	mov	x0, x21
    725c: f940b908     	ldr	x8, [x8, #0x170]
    7260: b85fc110     	ldur	w16, [x8, #-0x4]
    7264: 72870a91     	movk	w17, #0x3854
    7268: 72af0971     	movk	w17, #0x784b, lsl #16
    726c: 6b11021f     	cmp	w16, w17
    7270: 54000040     	b.eq	0x7278 <rtp_work_routine+0x450>
    7274: d4304500     	brk	#0x8228
    7278: d63f0100     	blr	x8
    727c: 72001c1f     	tst	w0, #0xff
    7280: 54000981     	b.ne	0x73b0 <rtp_work_routine+0x588>
    7284: 39400348     	ldrb	w8, [x26]
    7288: 7100091f     	cmp	w8, #0x2
    728c: 54000ae1     	b.ne	0x73e8 <rtp_work_routine+0x5c0>
    7290: f9400308     	ldr	x8, [x24]
		0000000000007290:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    7294: b40006a8     	cbz	x8, 0x7368 <rtp_work_routine+0x540>
    7298: b940ba89     	ldr	w9, [x20, #0xb8]
    729c: b940036a     	ldr	w10, [x27]
    72a0: aa1503e0     	mov	x0, x21
    72a4: b940010b     	ldr	w11, [x8]
    72a8: f941168d     	ldr	x13, [x20, #0x228]
    72ac: 53027d2c     	lsr	w12, w9, #2
    72b0: 6b09015f     	cmp	w10, w9
    72b4: 8b0a0108     	add	x8, x8, x10
    72b8: 4b0a016b     	sub	w11, w11, w10
    72bc: 91001101     	add	x1, x8, #0x4
    72c0: 1a8c3129     	csel	w9, w9, w12, lo
    72c4: f94069ac     	ldr	x12, [x13, #0xd0]
    72c8: 6b09017f     	cmp	w11, w9
    72cc: 1a893176     	csel	w22, w11, w9, lo
    72d0: 2a1603e2     	mov	w2, w22
    72d4: b85fc190     	ldur	w16, [x12, #-0x4]
    72d8: 72965371     	movk	w17, #0xb29b
    72dc: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    72e0: 6b11021f     	cmp	w16, w17
    72e4: 54000040     	b.eq	0x72ec <rtp_work_routine+0x4c4>
    72e8: d4304580     	brk	#0x822c
    72ec: d63f0180     	blr	x12
    72f0: b9400368     	ldr	w8, [x27]
    72f4: f9411689     	ldr	x9, [x20, #0x228]
    72f8: aa1503e0     	mov	x0, x21
    72fc: 0b160108     	add	w8, w8, w22
    7300: b9000368     	str	w8, [x27]
    7304: f940b128     	ldr	x8, [x9, #0x160]
    7308: b85fc110     	ldur	w16, [x8, #-0x4]
    730c: 72870a91     	movk	w17, #0x3854
    7310: 72af0971     	movk	w17, #0x784b, lsl #16
    7314: 6b11021f     	cmp	w16, w17
    7318: 54000040     	b.eq	0x7320 <rtp_work_routine+0x4f8>
    731c: d4304500     	brk	#0x8228
    7320: d63f0100     	blr	x8
    7324: f9400309     	ldr	x9, [x24]
		0000000000007324:  R_AARCH64_LDST64_ABS_LO12_NC	aw_rtp
    7328: b9400368     	ldr	w8, [x27]
    732c: b9400129     	ldr	w9, [x9]
    7330: 6b09011f     	cmp	w8, w9
    7334: 54000060     	b.eq	0x7340 <rtp_work_routine+0x518>
    7338: 12000c0a     	and	w10, w0, #0xf
    733c: 35fff8ca     	cbnz	w10, 0x7254 <rtp_work_routine+0x42c>
    7340: 6b09011f     	cmp	w8, w9
    7344: 54000241     	b.ne	0x738c <rtp_work_routine+0x564>
    7348: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c61
    734c: 91000000     	add	x0, x0, #0x0
		000000000000734c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c61
    7350: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7354: 91000021     	add	x1, x1, #0x0
		0000000000007354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7358: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f9
    735c: 91000063     	add	x3, x3, #0x0
		000000000000735c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f9
    7360: 528089a2     	mov	w2, #0x44d              // =1101
    7364: 14000011     	b	0x73a8 <rtp_work_routine+0x580>
    7368: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf7
    736c: 91000000     	add	x0, x0, #0x0
		000000000000736c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf7
    7370: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7374: 91000021     	add	x1, x1, #0x0
		0000000000007374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7378: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f9
    737c: 91000063     	add	x3, x3, #0x0
		000000000000737c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f9
    7380: 52808462     	mov	w2, #0x423              // =1059
    7384: 94000000     	bl	0x7384 <rtp_work_routine+0x55c>
		0000000000007384:  R_AARCH64_CALL26	_printk
    7388: 1400000a     	b	0x73b0 <rtp_work_routine+0x588>
    738c: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		000000000000738c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ff1
    7390: 91000000     	add	x0, x0, #0x0
		0000000000007390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ff1
    7394: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7398: 91000021     	add	x1, x1, #0x0
		0000000000007398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    739c: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		000000000000739c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f9
    73a0: 91000063     	add	x3, x3, #0x0
		00000000000073a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f9
    73a4: 52808962     	mov	w2, #0x44b              // =1099
    73a8: 94000000     	bl	0x73a8 <rtp_work_routine+0x580>
		00000000000073a8:  R_AARCH64_CALL26	_printk
    73ac: b900037f     	str	wzr, [x27]
    73b0: 39400348     	ldrb	w8, [x26]
    73b4: 7100091f     	cmp	w8, #0x2
    73b8: 54000181     	b.ne	0x73e8 <rtp_work_routine+0x5c0>
    73bc: f9411688     	ldr	x8, [x20, #0x228]
    73c0: aa1503e0     	mov	x0, x21
    73c4: 52800021     	mov	w1, #0x1                // =1
    73c8: f9408908     	ldr	x8, [x8, #0x110]
    73cc: b85fc110     	ldur	w16, [x8, #-0x4]
    73d0: 729bedd1     	movk	w17, #0xdf6e
    73d4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    73d8: 6b11021f     	cmp	w16, w17
    73dc: 54000040     	b.eq	0x73e4 <rtp_work_routine+0x5bc>
    73e0: d4304500     	brk	#0x8228
    73e4: d63f0100     	blr	x8
    73e8: aa1303e0     	mov	x0, x19
    73ec: 94000000     	bl	0x73ec <rtp_work_routine+0x5c4>
		00000000000073ec:  R_AARCH64_CALL26	mutex_unlock
    73f0: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		00000000000073f0:  R_AARCH64_ADR_PREL_PG_HI21	aw_pm_qos_req_vb
    73f4: 91000000     	add	x0, x0, #0x0
		00000000000073f4:  R_AARCH64_ADD_ABS_LO12_NC	aw_pm_qos_req_vb
    73f8: 94000000     	bl	0x73f8 <rtp_work_routine+0x5d0>
		00000000000073f8:  R_AARCH64_CALL26	cpu_latency_qos_remove_request
    73fc: aa1903e0     	mov	x0, x25
    7400: 390002ff     	strb	wzr, [x23]
    7404: 94000000     	bl	0x7404 <rtp_work_routine+0x5dc>
		0000000000007404:  R_AARCH64_CALL26	mutex_unlock
    7408: d5384108     	mrs	x8, SP_EL0
    740c: f9438908     	ldr	x8, [x8, #0x710]
    7410: f94007e9     	ldr	x9, [sp, #0x8]
    7414: eb09011f     	cmp	x8, x9
    7418: 54000181     	b.ne	0x7448 <rtp_work_routine+0x620>
    741c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    7420: a94557f6     	ldp	x22, x21, [sp, #0x50]
    7424: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    7428: a94367fa     	ldp	x26, x25, [sp, #0x30]
    742c: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    7430: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7434: 9101c3ff     	add	sp, sp, #0x70
    7438: d50323bf     	autiasp
    743c: d65f03c0     	ret
    7440: d42aa240     	brk	#0x5512
    7444: d4200020     	brk	#0x1
    7448: 94000000     	bl	0x7448 <rtp_work_routine+0x620>
		0000000000007448:  R_AARCH64_CALL26	__stack_chk_fail
    744c: f94003e8     	ldr	x8, [sp]
    7450: 90000009     	adrp	x9, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007450:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x140
    7454: 91000129     	add	x9, x9, #0x0
		0000000000007454:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x140
    7458: d538411b     	mrs	x27, SP_EL0
    745c: f9402b7c     	ldr	x28, [x27, #0x50]
    7460: f9002b69     	str	x9, [x27, #0x50]
    7464: f9400108     	ldr	x8, [x8]
    7468: 91001115     	add	x21, x8, #0x4
    746c: aa1503e0     	mov	x0, x21
    7470: 94000000     	bl	0x7470 <rtp_work_routine+0x648>
		0000000000007470:  R_AARCH64_CALL26	vmalloc_noprof
    7474: f9002b7c     	str	x28, [x27, #0x50]
    7478: 17fffea4     	b	0x6f08 <rtp_work_routine+0xe0>
