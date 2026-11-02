
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ae70 <osc_cali_store>:
    ae70: d503233f     	paciasp
    ae74: d10183ff     	sub	sp, sp, #0x60
    ae78: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ae7c: a90267fa     	stp	x26, x25, [sp, #0x20]
    ae80: a9035ff8     	stp	x24, x23, [sp, #0x30]
    ae84: a90457f6     	stp	x22, x21, [sp, #0x40]
    ae88: a9054ff4     	stp	x20, x19, [sp, #0x50]
    ae8c: 910043fd     	add	x29, sp, #0x10
    ae90: d5384109     	mrs	x9, SP_EL0
    ae94: aa0203e8     	mov	x8, x2
    ae98: 910013e2     	add	x2, sp, #0x4
    ae9c: f9438929     	ldr	x9, [x9, #0x710]
    aea0: 2a1f03e1     	mov	w1, wzr
    aea4: aa0303f3     	mov	x19, x3
    aea8: f90007e9     	str	x9, [sp, #0x8]
    aeac: f9404c1a     	ldr	x26, [x0, #0x98]
    aeb0: aa0803e0     	mov	x0, x8
    aeb4: b90007ff     	str	wzr, [sp, #0x4]
    aeb8: 94000000     	bl	0xaeb8 <osc_cali_store+0x48>
		000000000000aeb8:  R_AARCH64_CALL26	kstrtouint
    aebc: 37f805a0     	tbnz	w0, #0x1f, 0xaf70 <osc_cali_store+0x100>
    aec0: 91092340     	add	x0, x26, #0x248
    aec4: d102a355     	sub	x21, x26, #0xa8
    aec8: 94000000     	bl	0xaec8 <osc_cali_store+0x58>
		000000000000aec8:  R_AARCH64_CALL26	mutex_lock
    aecc: b94007e8     	ldr	w8, [sp, #0x4]
    aed0: 7100091f     	cmp	w8, #0x2
    aed4: 54000520     	b.eq	0xaf78 <osc_cali_store+0x108>
    aed8: 7100051f     	cmp	w8, #0x1
    aedc: 54000681     	b.ne	0xafac <osc_cali_store+0x13c>
    aee0: f9429348     	ldr	x8, [x26, #0x520]
    aee4: aa1503e0     	mov	x0, x21
    aee8: 2a1f03e1     	mov	w1, wzr
    aeec: f9408d08     	ldr	x8, [x8, #0x118]
    aef0: b85fc110     	ldur	w16, [x8, #-0x4]
    aef4: 728dd2b1     	movk	w17, #0x6e95
    aef8: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    aefc: 6b11021f     	cmp	w16, w17
    af00: 54000040     	b.eq	0xaf08 <osc_cali_store+0x98>
    af04: d4304500     	brk	#0x8228
    af08: d63f0100     	blr	x8
    af0c: aa1503e0     	mov	x0, x21
    af10: 940000d4     	bl	0xb260 <osc_cali_store+0x3f0>
		000000000000af10:  R_AARCH64_CALL26	rtp_osc_cali
    af14: f9429348     	ldr	x8, [x26, #0x520]
    af18: b85f8354     	ldur	w20, [x26, #-0x8]
    af1c: aa1503e0     	mov	x0, x21
    af20: f940c508     	ldr	x8, [x8, #0x188]
    af24: b85fc110     	ldur	w16, [x8, #-0x4]
    af28: 7290be71     	movk	w17, #0x85f3
    af2c: 72a13471     	movk	w17, #0x9a3, lsl #16
    af30: 6b11021f     	cmp	w16, w17
    af34: 54000040     	b.eq	0xaf3c <osc_cali_store+0xcc>
    af38: d4304500     	brk	#0x8228
    af3c: d63f0100     	blr	x8
    af40: 6b14001f     	cmp	w0, w20
    af44: 54000541     	b.ne	0xafec <osc_cali_store+0x17c>
    af48: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000af48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a2
    af4c: 91000000     	add	x0, x0, #0x0
		000000000000af4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a2
    af50: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000af50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    af54: 91000021     	add	x1, x1, #0x0
		000000000000af54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    af58: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000af58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253e
    af5c: 91000063     	add	x3, x3, #0x0
		000000000000af5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253e
    af60: 52806ca2     	mov	w2, #0x365              // =869
    af64: 2a1403e4     	mov	w4, w20
    af68: 94000000     	bl	0xaf68 <osc_cali_store+0xf8>
		000000000000af68:  R_AARCH64_CALL26	_printk
    af6c: 14000010     	b	0xafac <osc_cali_store+0x13c>
    af70: 93407c13     	sxtw	x19, w0
    af74: 14000010     	b	0xafb4 <osc_cali_store+0x144>
    af78: f9429348     	ldr	x8, [x26, #0x520]
    af7c: aa1503e0     	mov	x0, x21
    af80: 52800041     	mov	w1, #0x2                // =2
    af84: f9408d08     	ldr	x8, [x8, #0x118]
    af88: b85fc110     	ldur	w16, [x8, #-0x4]
    af8c: 728dd2b1     	movk	w17, #0x6e95
    af90: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    af94: 6b11021f     	cmp	w16, w17
    af98: 54000040     	b.eq	0xafa0 <osc_cali_store+0x130>
    af9c: d4304500     	brk	#0x8228
    afa0: d63f0100     	blr	x8
    afa4: aa1503e0     	mov	x0, x21
    afa8: 940000ae     	bl	0xb260 <osc_cali_store+0x3f0>
		000000000000afa8:  R_AARCH64_CALL26	rtp_osc_cali
    afac: 91092340     	add	x0, x26, #0x248
    afb0: 94000000     	bl	0xafb0 <osc_cali_store+0x140>
		000000000000afb0:  R_AARCH64_CALL26	mutex_unlock
    afb4: d5384108     	mrs	x8, SP_EL0
    afb8: f9438908     	ldr	x8, [x8, #0x710]
    afbc: f94007e9     	ldr	x9, [sp, #0x8]
    afc0: eb09011f     	cmp	x8, x9
    afc4: 540014c1     	b.ne	0xb25c <osc_cali_store+0x3ec>
    afc8: aa1303e0     	mov	x0, x19
    afcc: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    afd0: a94457f6     	ldp	x22, x21, [sp, #0x40]
    afd4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    afd8: a94267fa     	ldp	x26, x25, [sp, #0x20]
    afdc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    afe0: 910183ff     	add	sp, sp, #0x60
    afe4: d50323bf     	autiasp
    afe8: d65f03c0     	ret
    afec: 54000222     	b.hs	0xb030 <osc_cali_store+0x1c0>
    aff0: 5290a3e8     	mov	w8, #0x851f             // =34079
    aff4: 72aa3d68     	movk	w8, #0x51eb, lsl #16
    aff8: 9ba87c08     	umull	x8, w0, w8
    affc: d364fd09     	lsr	x9, x8, #36
    b000: 4b000288     	sub	w8, w20, w0
    b004: 6b09011f     	cmp	w8, w9
    b008: 54000369     	b.ls	0xb074 <osc_cali_store+0x204>
    b00c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b00c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f54
    b010: 91000000     	add	x0, x0, #0x0
		000000000000b010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f54
    b014: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    b018: 91000021     	add	x1, x1, #0x0
		000000000000b018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    b01c: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b01c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253e
    b020: 91000063     	add	x3, x3, #0x0
		000000000000b020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253e
    b024: 52806d42     	mov	w2, #0x36a              // =874
    b028: 94000000     	bl	0xb028 <osc_cali_store+0x1b8>
		000000000000b028:  R_AARCH64_CALL26	_printk
    b02c: 17ffffe0     	b	0xafac <osc_cali_store+0x13c>
    b030: 6b140008     	subs	w8, w0, w20
    b034: 54000449     	b.ls	0xb0bc <osc_cali_store+0x24c>
    b038: 5290a3e9     	mov	w9, #0x851f             // =34079
    b03c: 72aa3d69     	movk	w9, #0x51eb, lsl #16
    b040: 9ba97c09     	umull	x9, w0, w9
    b044: d364fd29     	lsr	x9, x9, #36
    b048: 6b09011f     	cmp	w8, w9
    b04c: 54000409     	b.ls	0xb0cc <osc_cali_store+0x25c>
    b050: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x290e
    b054: 91000000     	add	x0, x0, #0x0
		000000000000b054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x290e
    b058: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    b05c: 91000021     	add	x1, x1, #0x0
		000000000000b05c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    b060: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253e
    b064: 91000063     	add	x3, x3, #0x0
		000000000000b064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253e
    b068: 52806f82     	mov	w2, #0x37c              // =892
    b06c: 94000000     	bl	0xb06c <osc_cali_store+0x1fc>
		000000000000b06c:  R_AARCH64_CALL26	_printk
    b070: 17ffffcf     	b	0xafac <osc_cali_store+0x13c>
    b074: 0b000809     	add	w9, w0, w0, lsl #2
    b078: 5282eb2a     	mov	w10, #0x1759            // =5977
    b07c: 72ba36ea     	movk	w10, #0xd1b7, lsl #16
    b080: 531f7929     	lsl	w9, w9, #1
    b084: 9baa7d29     	umull	x9, w9, w10
    b088: d36dfd29     	lsr	x9, x9, #45
    b08c: 6b09011f     	cmp	w8, w9
    b090: 54000462     	b.hs	0xb11c <osc_cali_store+0x2ac>
    b094: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eca
    b098: 91000108     	add	x8, x8, #0x0
		000000000000b098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eca
    b09c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    b0a0: 91000021     	add	x1, x1, #0x0
		000000000000b0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    b0a4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b0a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253e
    b0a8: 91000063     	add	x3, x3, #0x0
		000000000000b0a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253e
    b0ac: aa0003e5     	mov	x5, x0
    b0b0: aa0803e0     	mov	x0, x8
    b0b4: 52806e22     	mov	w2, #0x371              // =881
    b0b8: 14000016     	b	0xb110 <osc_cali_store+0x2a0>
    b0bc: 39592f48     	ldrb	w8, [x26, #0x64b]
    b0c0: aa0003f6     	mov	x22, x0
    b0c4: 2a1f03f7     	mov	w23, wzr
    b0c8: 14000041     	b	0xb1cc <osc_cali_store+0x35c>
    b0cc: 0b000809     	add	w9, w0, w0, lsl #2
    b0d0: 5282eb2a     	mov	w10, #0x1759            // =5977
    b0d4: 72ba36ea     	movk	w10, #0xd1b7, lsl #16
    b0d8: 531f7929     	lsl	w9, w9, #1
    b0dc: 9baa7d29     	umull	x9, w9, w10
    b0e0: d36dfd29     	lsr	x9, x9, #45
    b0e4: 6b09011f     	cmp	w8, w9
    b0e8: 540003e2     	b.hs	0xb164 <osc_cali_store+0x2f4>
    b0ec: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b0ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eca
    b0f0: 91000108     	add	x8, x8, #0x0
		000000000000b0f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eca
    b0f4: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b0f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    b0f8: 91000021     	add	x1, x1, #0x0
		000000000000b0f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    b0fc: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b0fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253e
    b100: 91000063     	add	x3, x3, #0x0
		000000000000b100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253e
    b104: aa0003e5     	mov	x5, x0
    b108: aa0803e0     	mov	x0, x8
    b10c: 52807042     	mov	w2, #0x382              // =898
    b110: 2a1403e4     	mov	w4, w20
    b114: 94000000     	bl	0xb114 <osc_cali_store+0x2a4>
		000000000000b114:  R_AARCH64_CALL26	_printk
    b118: 17ffffa5     	b	0xafac <osc_cali_store+0x13c>
    b11c: 5290d409     	mov	w9, #0x86a0             // =34464
    b120: 0b00040a     	add	w10, w0, w0, lsl #1
    b124: aa0003f6     	mov	x22, x0
    b128: 72a00029     	movk	w9, #0x1, lsl #16
    b12c: 1b097d08     	mul	w8, w8, w9
    b130: 531d7149     	lsl	w9, w10, #3
    b134: 5280014a     	mov	w10, #0xa               // =10
    b138: 1ac90908     	udiv	w8, w8, w9
    b13c: 529999a9     	mov	w9, #0xcccd             // =52429
    b140: 72b99989     	movk	w9, #0xcccc, lsl #16
    b144: 9ba97d09     	umull	x9, w8, w9
    b148: d363fd29     	lsr	x9, x9, #35
    b14c: 1b0aa12a     	msub	w10, w9, w10, w8
    b150: 39592f48     	ldrb	w8, [x26, #0x64b]
    b154: 0b080129     	add	w9, w9, w8
    b158: 7100115f     	cmp	w10, #0x4
    b15c: 1a899537     	cinc	w23, w9, hi
    b160: 1400001b     	b	0xb1cc <osc_cali_store+0x35c>
    b164: 53057c09     	lsr	w9, w0, #5
    b168: 528b58aa     	mov	w10, #0x5ac5            // =23237
    b16c: 5291112b     	mov	w11, #0x8889            // =34953
    b170: 72a14f8a     	movk	w10, #0xa7c, lsl #16
    b174: 72b1110b     	movk	w11, #0x8888, lsl #16
    b178: aa0003f6     	mov	x22, x0
    b17c: 9baa7d29     	umull	x9, w9, w10
    b180: 5293334a     	mov	w10, #0x999a            // =39322
    b184: 72a3332a     	movk	w10, #0x1999, lsl #16
    b188: d367fd29     	lsr	x9, x9, #39
    b18c: 1ac90908     	udiv	w8, w8, w9
    b190: 52955569     	mov	w9, #0xaaab             // =43691
    b194: 72b55549     	movk	w9, #0xaaaa, lsl #16
    b198: 9ba97d09     	umull	x9, w8, w9
    b19c: 9bab7d08     	umull	x8, w8, w11
    b1a0: 5280014b     	mov	w11, #0xa               // =10
    b1a4: d364fd29     	lsr	x9, x9, #36
    b1a8: 9baa7d2a     	umull	x10, w9, w10
    b1ac: d360fd4a     	lsr	x10, x10, #32
    b1b0: 1b0ba549     	msub	w9, w10, w11, w9
    b1b4: d367fd0a     	lsr	x10, x8, #39
    b1b8: 39592f48     	ldrb	w8, [x26, #0x64b]
    b1bc: 4b0a010a     	sub	w10, w8, w10
    b1c0: 7100113f     	cmp	w9, #0x4
    b1c4: 1a9f97e9     	cset	w9, hi
    b1c8: 4b090157     	sub	w23, w10, w9
    b1cc: 6b0802ff     	cmp	w23, w8
    b1d0: aa1503e0     	mov	x0, x21
    b1d4: 52800041     	mov	w1, #0x2                // =2
    b1d8: 5a883508     	cneg	w8, w8, hs
    b1dc: 0b170118     	add	w24, w8, w23
    b1e0: f9429348     	ldr	x8, [x26, #0x520]
    b1e4: b81f0358     	stur	w24, [x26, #-0x10]
    b1e8: f9408d08     	ldr	x8, [x8, #0x118]
    b1ec: b85fc110     	ldur	w16, [x8, #-0x4]
    b1f0: 728dd2b1     	movk	w17, #0x6e95
    b1f4: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    b1f8: 6b11021f     	cmp	w16, w17
    b1fc: 54000040     	b.eq	0xb204 <osc_cali_store+0x394>
    b200: d4304500     	brk	#0x8228
    b204: d63f0100     	blr	x8
    b208: 90000015     	adrp	x21, 0xb000 <osc_cali_store+0x190>
		000000000000b208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    b20c: 910002b5     	add	x21, x21, #0x0
		000000000000b20c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    b210: 90000019     	adrp	x25, 0xb000 <osc_cali_store+0x190>
		000000000000b210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253e
    b214: 91000339     	add	x25, x25, #0x0
		000000000000b214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253e
    b218: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf2
    b21c: 91000000     	add	x0, x0, #0x0
		000000000000b21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf2
    b220: aa1503e1     	mov	x1, x21
    b224: 52807502     	mov	w2, #0x3a8              // =936
    b228: aa1903e3     	mov	x3, x25
    b22c: 2a1403e4     	mov	w4, w20
    b230: 2a1603e5     	mov	w5, w22
    b234: 94000000     	bl	0xb234 <osc_cali_store+0x3c4>
		000000000000b234:  R_AARCH64_CALL26	_printk
    b238: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d98
    b23c: 91000000     	add	x0, x0, #0x0
		000000000000b23c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d98
    b240: aa1503e1     	mov	x1, x21
    b244: 52807522     	mov	w2, #0x3a9              // =937
    b248: aa1903e3     	mov	x3, x25
    b24c: 2a1703e4     	mov	w4, w23
    b250: 2a1803e5     	mov	w5, w24
    b254: 94000000     	bl	0xb254 <osc_cali_store+0x3e4>
		000000000000b254:  R_AARCH64_CALL26	_printk
    b258: 17ffff55     	b	0xafac <osc_cali_store+0x13c>
    b25c: 94000000     	bl	0xb25c <osc_cali_store+0x3ec>
		000000000000b25c:  R_AARCH64_CALL26	__stack_chk_fail
