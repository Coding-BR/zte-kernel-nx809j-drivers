
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ae40 <osc_cali_store>:
    ae40: d503233f     	paciasp
    ae44: d10183ff     	sub	sp, sp, #0x60
    ae48: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ae4c: a90267fa     	stp	x26, x25, [sp, #0x20]
    ae50: a9035ff8     	stp	x24, x23, [sp, #0x30]
    ae54: a90457f6     	stp	x22, x21, [sp, #0x40]
    ae58: a9054ff4     	stp	x20, x19, [sp, #0x50]
    ae5c: 910043fd     	add	x29, sp, #0x10
    ae60: d5384109     	mrs	x9, SP_EL0
    ae64: aa0203e8     	mov	x8, x2
    ae68: 910013e2     	add	x2, sp, #0x4
    ae6c: f9438929     	ldr	x9, [x9, #0x710]
    ae70: 2a1f03e1     	mov	w1, wzr
    ae74: aa0303f3     	mov	x19, x3
    ae78: f90007e9     	str	x9, [sp, #0x8]
    ae7c: f9404c1a     	ldr	x26, [x0, #0x98]
    ae80: aa0803e0     	mov	x0, x8
    ae84: b90007ff     	str	wzr, [sp, #0x4]
    ae88: 94000000     	bl	0xae88 <osc_cali_store+0x48>
		000000000000ae88:  R_AARCH64_CALL26	kstrtouint
    ae8c: 37f805a0     	tbnz	w0, #0x1f, 0xaf40 <osc_cali_store+0x100>
    ae90: 91092340     	add	x0, x26, #0x248
    ae94: d102a355     	sub	x21, x26, #0xa8
    ae98: 94000000     	bl	0xae98 <osc_cali_store+0x58>
		000000000000ae98:  R_AARCH64_CALL26	mutex_lock
    ae9c: b94007e8     	ldr	w8, [sp, #0x4]
    aea0: 7100091f     	cmp	w8, #0x2
    aea4: 54000520     	b.eq	0xaf48 <osc_cali_store+0x108>
    aea8: 7100051f     	cmp	w8, #0x1
    aeac: 54000681     	b.ne	0xaf7c <osc_cali_store+0x13c>
    aeb0: f9429348     	ldr	x8, [x26, #0x520]
    aeb4: aa1503e0     	mov	x0, x21
    aeb8: 2a1f03e1     	mov	w1, wzr
    aebc: f9408d08     	ldr	x8, [x8, #0x118]
    aec0: b85fc110     	ldur	w16, [x8, #-0x4]
    aec4: 728dd2b1     	movk	w17, #0x6e95
    aec8: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    aecc: 6b11021f     	cmp	w16, w17
    aed0: 54000040     	b.eq	0xaed8 <osc_cali_store+0x98>
    aed4: d4304500     	brk	#0x8228
    aed8: d63f0100     	blr	x8
    aedc: aa1503e0     	mov	x0, x21
    aee0: 940000d4     	bl	0xb230 <osc_cali_store+0x3f0>
		000000000000aee0:  R_AARCH64_CALL26	rtp_osc_cali
    aee4: f9429348     	ldr	x8, [x26, #0x520]
    aee8: b85f8354     	ldur	w20, [x26, #-0x8]
    aeec: aa1503e0     	mov	x0, x21
    aef0: f940c508     	ldr	x8, [x8, #0x188]
    aef4: b85fc110     	ldur	w16, [x8, #-0x4]
    aef8: 7290be71     	movk	w17, #0x85f3
    aefc: 72a13471     	movk	w17, #0x9a3, lsl #16
    af00: 6b11021f     	cmp	w16, w17
    af04: 54000040     	b.eq	0xaf0c <osc_cali_store+0xcc>
    af08: d4304500     	brk	#0x8228
    af0c: d63f0100     	blr	x8
    af10: 6b14001f     	cmp	w0, w20
    af14: 54000541     	b.ne	0xafbc <osc_cali_store+0x17c>
    af18: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000af18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3516
    af1c: 91000000     	add	x0, x0, #0x0
		000000000000af1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3516
    af20: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000af20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    af24: 91000021     	add	x1, x1, #0x0
		000000000000af24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    af28: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000af28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    af2c: 91000063     	add	x3, x3, #0x0
		000000000000af2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    af30: 52806ca2     	mov	w2, #0x365              // =869
    af34: 2a1403e4     	mov	w4, w20
    af38: 94000000     	bl	0xaf38 <osc_cali_store+0xf8>
		000000000000af38:  R_AARCH64_CALL26	_printk
    af3c: 14000010     	b	0xaf7c <osc_cali_store+0x13c>
    af40: 93407c13     	sxtw	x19, w0
    af44: 14000010     	b	0xaf84 <osc_cali_store+0x144>
    af48: f9429348     	ldr	x8, [x26, #0x520]
    af4c: aa1503e0     	mov	x0, x21
    af50: 52800041     	mov	w1, #0x2                // =2
    af54: f9408d08     	ldr	x8, [x8, #0x118]
    af58: b85fc110     	ldur	w16, [x8, #-0x4]
    af5c: 728dd2b1     	movk	w17, #0x6e95
    af60: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    af64: 6b11021f     	cmp	w16, w17
    af68: 54000040     	b.eq	0xaf70 <osc_cali_store+0x130>
    af6c: d4304500     	brk	#0x8228
    af70: d63f0100     	blr	x8
    af74: aa1503e0     	mov	x0, x21
    af78: 940000ae     	bl	0xb230 <osc_cali_store+0x3f0>
		000000000000af78:  R_AARCH64_CALL26	rtp_osc_cali
    af7c: 91092340     	add	x0, x26, #0x248
    af80: 94000000     	bl	0xaf80 <osc_cali_store+0x140>
		000000000000af80:  R_AARCH64_CALL26	mutex_unlock
    af84: d5384108     	mrs	x8, SP_EL0
    af88: f9438908     	ldr	x8, [x8, #0x710]
    af8c: f94007e9     	ldr	x9, [sp, #0x8]
    af90: eb09011f     	cmp	x8, x9
    af94: 540014c1     	b.ne	0xb22c <osc_cali_store+0x3ec>
    af98: aa1303e0     	mov	x0, x19
    af9c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    afa0: a94457f6     	ldp	x22, x21, [sp, #0x40]
    afa4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    afa8: a94267fa     	ldp	x26, x25, [sp, #0x20]
    afac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    afb0: 910183ff     	add	sp, sp, #0x60
    afb4: d50323bf     	autiasp
    afb8: d65f03c0     	ret
    afbc: 54000222     	b.hs	0xb000 <osc_cali_store+0x1c0>
    afc0: 5290a3e8     	mov	w8, #0x851f             // =34079
    afc4: 72aa3d68     	movk	w8, #0x51eb, lsl #16
    afc8: 9ba87c08     	umull	x8, w0, w8
    afcc: d364fd09     	lsr	x9, x8, #36
    afd0: 4b000288     	sub	w8, w20, w0
    afd4: 6b09011f     	cmp	w8, w9
    afd8: 54000369     	b.ls	0xb044 <osc_cali_store+0x204>
    afdc: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000afdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fc8
    afe0: 91000000     	add	x0, x0, #0x0
		000000000000afe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fc8
    afe4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000afe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    afe8: 91000021     	add	x1, x1, #0x0
		000000000000afe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    afec: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000afec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    aff0: 91000063     	add	x3, x3, #0x0
		000000000000aff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    aff4: 52806d42     	mov	w2, #0x36a              // =874
    aff8: 94000000     	bl	0xaff8 <osc_cali_store+0x1b8>
		000000000000aff8:  R_AARCH64_CALL26	_printk
    affc: 17ffffe0     	b	0xaf7c <osc_cali_store+0x13c>
    b000: 6b140008     	subs	w8, w0, w20
    b004: 54000449     	b.ls	0xb08c <osc_cali_store+0x24c>
    b008: 5290a3e9     	mov	w9, #0x851f             // =34079
    b00c: 72aa3d69     	movk	w9, #0x51eb, lsl #16
    b010: 9ba97c09     	umull	x9, w0, w9
    b014: d364fd29     	lsr	x9, x9, #36
    b018: 6b09011f     	cmp	w8, w9
    b01c: 54000409     	b.ls	0xb09c <osc_cali_store+0x25c>
    b020: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2982
    b024: 91000000     	add	x0, x0, #0x0
		000000000000b024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2982
    b028: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b02c: 91000021     	add	x1, x1, #0x0
		000000000000b02c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b030: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    b034: 91000063     	add	x3, x3, #0x0
		000000000000b034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    b038: 52806f82     	mov	w2, #0x37c              // =892
    b03c: 94000000     	bl	0xb03c <osc_cali_store+0x1fc>
		000000000000b03c:  R_AARCH64_CALL26	_printk
    b040: 17ffffcf     	b	0xaf7c <osc_cali_store+0x13c>
    b044: 0b000809     	add	w9, w0, w0, lsl #2
    b048: 5282eb2a     	mov	w10, #0x1759            // =5977
    b04c: 72ba36ea     	movk	w10, #0xd1b7, lsl #16
    b050: 531f7929     	lsl	w9, w9, #1
    b054: 9baa7d29     	umull	x9, w9, w10
    b058: d36dfd29     	lsr	x9, x9, #45
    b05c: 6b09011f     	cmp	w8, w9
    b060: 54000462     	b.hs	0xb0ec <osc_cali_store+0x2ac>
    b064: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f3e
    b068: 91000108     	add	x8, x8, #0x0
		000000000000b068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f3e
    b06c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b06c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b070: 91000021     	add	x1, x1, #0x0
		000000000000b070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b074: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    b078: 91000063     	add	x3, x3, #0x0
		000000000000b078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    b07c: aa0003e5     	mov	x5, x0
    b080: aa0803e0     	mov	x0, x8
    b084: 52806e22     	mov	w2, #0x371              // =881
    b088: 14000016     	b	0xb0e0 <osc_cali_store+0x2a0>
    b08c: 39592f48     	ldrb	w8, [x26, #0x64b]
    b090: aa0003f6     	mov	x22, x0
    b094: 2a1f03f7     	mov	w23, wzr
    b098: 14000041     	b	0xb19c <osc_cali_store+0x35c>
    b09c: 0b000809     	add	w9, w0, w0, lsl #2
    b0a0: 5282eb2a     	mov	w10, #0x1759            // =5977
    b0a4: 72ba36ea     	movk	w10, #0xd1b7, lsl #16
    b0a8: 531f7929     	lsl	w9, w9, #1
    b0ac: 9baa7d29     	umull	x9, w9, w10
    b0b0: d36dfd29     	lsr	x9, x9, #45
    b0b4: 6b09011f     	cmp	w8, w9
    b0b8: 540003e2     	b.hs	0xb134 <osc_cali_store+0x2f4>
    b0bc: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f3e
    b0c0: 91000108     	add	x8, x8, #0x0
		000000000000b0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f3e
    b0c4: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b0c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b0c8: 91000021     	add	x1, x1, #0x0
		000000000000b0c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b0cc: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b0cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    b0d0: 91000063     	add	x3, x3, #0x0
		000000000000b0d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    b0d4: aa0003e5     	mov	x5, x0
    b0d8: aa0803e0     	mov	x0, x8
    b0dc: 52807042     	mov	w2, #0x382              // =898
    b0e0: 2a1403e4     	mov	w4, w20
    b0e4: 94000000     	bl	0xb0e4 <osc_cali_store+0x2a4>
		000000000000b0e4:  R_AARCH64_CALL26	_printk
    b0e8: 17ffffa5     	b	0xaf7c <osc_cali_store+0x13c>
    b0ec: 5290d409     	mov	w9, #0x86a0             // =34464
    b0f0: 0b00040a     	add	w10, w0, w0, lsl #1
    b0f4: aa0003f6     	mov	x22, x0
    b0f8: 72a00029     	movk	w9, #0x1, lsl #16
    b0fc: 1b097d08     	mul	w8, w8, w9
    b100: 531d7149     	lsl	w9, w10, #3
    b104: 5280014a     	mov	w10, #0xa               // =10
    b108: 1ac90908     	udiv	w8, w8, w9
    b10c: 529999a9     	mov	w9, #0xcccd             // =52429
    b110: 72b99989     	movk	w9, #0xcccc, lsl #16
    b114: 9ba97d09     	umull	x9, w8, w9
    b118: d363fd29     	lsr	x9, x9, #35
    b11c: 1b0aa12a     	msub	w10, w9, w10, w8
    b120: 39592f48     	ldrb	w8, [x26, #0x64b]
    b124: 0b080129     	add	w9, w9, w8
    b128: 7100115f     	cmp	w10, #0x4
    b12c: 1a899537     	cinc	w23, w9, hi
    b130: 1400001b     	b	0xb19c <osc_cali_store+0x35c>
    b134: 53057c09     	lsr	w9, w0, #5
    b138: 528b58aa     	mov	w10, #0x5ac5            // =23237
    b13c: 5291112b     	mov	w11, #0x8889            // =34953
    b140: 72a14f8a     	movk	w10, #0xa7c, lsl #16
    b144: 72b1110b     	movk	w11, #0x8888, lsl #16
    b148: aa0003f6     	mov	x22, x0
    b14c: 9baa7d29     	umull	x9, w9, w10
    b150: 5293334a     	mov	w10, #0x999a            // =39322
    b154: 72a3332a     	movk	w10, #0x1999, lsl #16
    b158: d367fd29     	lsr	x9, x9, #39
    b15c: 1ac90908     	udiv	w8, w8, w9
    b160: 52955569     	mov	w9, #0xaaab             // =43691
    b164: 72b55549     	movk	w9, #0xaaaa, lsl #16
    b168: 9ba97d09     	umull	x9, w8, w9
    b16c: 9bab7d08     	umull	x8, w8, w11
    b170: 5280014b     	mov	w11, #0xa               // =10
    b174: d364fd29     	lsr	x9, x9, #36
    b178: 9baa7d2a     	umull	x10, w9, w10
    b17c: d360fd4a     	lsr	x10, x10, #32
    b180: 1b0ba549     	msub	w9, w10, w11, w9
    b184: d367fd0a     	lsr	x10, x8, #39
    b188: 39592f48     	ldrb	w8, [x26, #0x64b]
    b18c: 4b0a010a     	sub	w10, w8, w10
    b190: 7100113f     	cmp	w9, #0x4
    b194: 1a9f97e9     	cset	w9, hi
    b198: 4b090157     	sub	w23, w10, w9
    b19c: 6b0802ff     	cmp	w23, w8
    b1a0: aa1503e0     	mov	x0, x21
    b1a4: 52800041     	mov	w1, #0x2                // =2
    b1a8: 5a883508     	cneg	w8, w8, hs
    b1ac: 0b170118     	add	w24, w8, w23
    b1b0: f9429348     	ldr	x8, [x26, #0x520]
    b1b4: b81f0358     	stur	w24, [x26, #-0x10]
    b1b8: f9408d08     	ldr	x8, [x8, #0x118]
    b1bc: b85fc110     	ldur	w16, [x8, #-0x4]
    b1c0: 728dd2b1     	movk	w17, #0x6e95
    b1c4: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    b1c8: 6b11021f     	cmp	w16, w17
    b1cc: 54000040     	b.eq	0xb1d4 <osc_cali_store+0x394>
    b1d0: d4304500     	brk	#0x8228
    b1d4: d63f0100     	blr	x8
    b1d8: 90000015     	adrp	x21, 0xb000 <osc_cali_store+0x1c0>
		000000000000b1d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b1dc: 910002b5     	add	x21, x21, #0x0
		000000000000b1dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b1e0: 90000019     	adrp	x25, 0xb000 <osc_cali_store+0x1c0>
		000000000000b1e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    b1e4: 91000339     	add	x25, x25, #0x0
		000000000000b1e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    b1e8: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b1e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d66
    b1ec: 91000000     	add	x0, x0, #0x0
		000000000000b1ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d66
    b1f0: aa1503e1     	mov	x1, x21
    b1f4: 52807502     	mov	w2, #0x3a8              // =936
    b1f8: aa1903e3     	mov	x3, x25
    b1fc: 2a1403e4     	mov	w4, w20
    b200: 2a1603e5     	mov	w5, w22
    b204: 94000000     	bl	0xb204 <osc_cali_store+0x3c4>
		000000000000b204:  R_AARCH64_CALL26	_printk
    b208: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e0c
    b20c: 91000000     	add	x0, x0, #0x0
		000000000000b20c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e0c
    b210: aa1503e1     	mov	x1, x21
    b214: 52807522     	mov	w2, #0x3a9              // =937
    b218: aa1903e3     	mov	x3, x25
    b21c: 2a1703e4     	mov	w4, w23
    b220: 2a1803e5     	mov	w5, w24
    b224: 94000000     	bl	0xb224 <osc_cali_store+0x3e4>
		000000000000b224:  R_AARCH64_CALL26	_printk
    b228: 17ffff55     	b	0xaf7c <osc_cali_store+0x13c>
    b22c: 94000000     	bl	0xb22c <osc_cali_store+0x3ec>
		000000000000b22c:  R_AARCH64_CALL26	__stack_chk_fail
