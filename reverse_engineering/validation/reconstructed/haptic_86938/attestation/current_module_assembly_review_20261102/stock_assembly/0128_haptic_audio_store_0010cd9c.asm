
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f7c <haptic_audio_store>:
    9f7c: d503233f     	paciasp
    9f80: d101c3ff     	sub	sp, sp, #0x70
    9f84: a9037bfd     	stp	x29, x30, [sp, #0x30]
    9f88: f90023f7     	str	x23, [sp, #0x40]
    9f8c: a90557f6     	stp	x22, x21, [sp, #0x50]
    9f90: a9064ff4     	stp	x20, x19, [sp, #0x60]
    9f94: 9100c3fd     	add	x29, sp, #0x30
    9f98: d5384108     	mrs	x8, SP_EL0
    9f9c: aa0303f3     	mov	x19, x3
    9fa0: f9438908     	ldr	x8, [x8, #0x710]
    9fa4: f81f83a8     	stur	x8, [x29, #-0x8]
    9fa8: f9404c16     	ldr	x22, [x0, #0x98]
    9fac: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    9fb0: f9000bff     	str	xzr, [sp, #0x10]
    9fb4: 3855e2c8     	ldurb	w8, [x22, #-0xa2]
    9fb8: 36000b68     	tbz	w8, #0x0, 0xa124 <haptic_audio_store+0x1a8>
    9fbc: 910043e8     	add	x8, sp, #0x10
    9fc0: aa0203e0     	mov	x0, x2
    9fc4: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fc
    9fc8: 91000021     	add	x1, x1, #0x0
		0000000000009fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fc
    9fcc: 910043e2     	add	x2, sp, #0x10
    9fd0: b27e0103     	orr	x3, x8, #0x4
    9fd4: 91002104     	add	x4, x8, #0x8
    9fd8: 91003105     	add	x5, x8, #0xc
    9fdc: 91004106     	add	x6, x8, #0x10
    9fe0: 91005107     	add	x7, x8, #0x14
    9fe4: 94000000     	bl	0x9fe4 <haptic_audio_store+0x68>
		0000000000009fe4:  R_AARCH64_CALL26	sscanf
    9fe8: 7100181f     	cmp	w0, #0x6
    9fec: 54000821     	b.ne	0xa0f0 <haptic_audio_store+0x174>
    9ff0: b9401be6     	ldr	w6, [sp, #0x18]
    9ff4: 35000aa6     	cbnz	w6, 0xa148 <haptic_audio_store+0x1cc>
    9ff8: d503201f     	nop
    9ffc: 90000008     	adrp	x8, 0x9000 <cont_show+0x34>
		0000000000009ffc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    a000: 5281b801     	mov	w1, #0xdc0              // =3520
    a004: 52800302     	mov	w2, #0x18               // =24
    a008: f9400100     	ldr	x0, [x8]
		000000000000a008:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    a00c: 94000000     	bl	0xa00c <haptic_audio_store+0x90>
		000000000000a00c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    a010: aa0003f4     	mov	x20, x0
    a014: b40015d4     	cbz	x20, 0xa2cc <haptic_audio_store+0x350>
    a018: 911122c0     	add	x0, x22, #0x448
    a01c: 94000000     	bl	0xa01c <haptic_audio_store+0xa0>
		000000000000a01c:  R_AARCH64_CALL26	mutex_lock
    a020: 294227e8     	ldp	w8, w9, [sp, #0x10]
    a024: 29442beb     	ldp	w11, w10, [sp, #0x20]
    a028: 39000288     	strb	w8, [x20]
    a02c: 39000689     	strb	w9, [x20, #0x1]
    a030: 294327e8     	ldp	w8, w9, [sp, #0x18]
    a034: 39000e8b     	strb	w11, [x20, #0x3]
    a038: 39000a88     	strb	w8, [x20, #0x2]
    a03c: 12001d48     	and	w8, w10, #0xff
    a040: 7102011f     	cmp	w8, #0x80
    a044: 12800fe8     	mov	w8, #-0x80              // =-128
    a048: 39001689     	strb	w9, [x20, #0x5]
    a04c: 1a8a8108     	csel	w8, w8, w10, hi
    a050: 39001288     	strb	w8, [x20, #0x4]
    a054: d503201f     	nop
    a058: 90000008     	adrp	x8, 0xa000 <haptic_audio_store+0x84>
		000000000000a058:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    a05c: 5281b801     	mov	w1, #0xdc0              // =3520
    a060: 52800302     	mov	w2, #0x18               // =24
    a064: f9400100     	ldr	x0, [x8]
		000000000000a064:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    a068: 94000000     	bl	0xa068 <haptic_audio_store+0xec>
		000000000000a068:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    a06c: d102a2d5     	sub	x21, x22, #0xa8
    a070: b40002c0     	cbz	x0, 0xa0c8 <haptic_audio_store+0x14c>
    a074: 39400288     	ldrb	w8, [x20]
    a078: b8401289     	ldur	w9, [x20, #0x1]
    a07c: 9113a2c1     	add	x1, x22, #0x4e8
    a080: 3940168a     	ldrb	w10, [x20, #0x5]
    a084: 39000008     	strb	w8, [x0]
    a088: 91002008     	add	x8, x0, #0x8
    a08c: b8001009     	stur	w9, [x0, #0x1]
    a090: 3900140a     	strb	w10, [x0, #0x5]
    a094: f9000408     	str	x8, [x0, #0x8]
    a098: f9000808     	str	x8, [x0, #0x10]
    a09c: f94276c2     	ldr	x2, [x22, #0x4e8]
    a0a0: f9400449     	ldr	x9, [x2, #0x8]
    a0a4: eb01013f     	cmp	x9, x1
    a0a8: 54000f01     	b.ne	0xa288 <haptic_audio_store+0x30c>
    a0ac: eb01011f     	cmp	x8, x1
    a0b0: 54000ec0     	b.eq	0xa288 <haptic_audio_store+0x30c>
    a0b4: eb08005f     	cmp	x2, x8
    a0b8: 54000e80     	b.eq	0xa288 <haptic_audio_store+0x30c>
    a0bc: f9000448     	str	x8, [x2, #0x8]
    a0c0: a9008402     	stp	x2, x1, [x0, #0x8]
    a0c4: f9000028     	str	x8, [x1]
    a0c8: 39400688     	ldrb	w8, [x20, #0x1]
    a0cc: 7103fd1f     	cmp	w8, #0xff
    a0d0: 54000580     	b.eq	0xa180 <haptic_audio_store+0x204>
    a0d4: 9111e2c0     	add	x0, x22, #0x478
    a0d8: 94000000     	bl	0xa0d8 <haptic_audio_store+0x15c>
		000000000000a0d8:  R_AARCH64_CALL26	hrtimer_active
    a0dc: 36000840     	tbz	w0, #0x0, 0xa1e4 <haptic_audio_store+0x268>
    a0e0: 911122c0     	add	x0, x22, #0x448
    a0e4: 94000000     	bl	0xa0e4 <haptic_audio_store+0x168>
		000000000000a0e4:  R_AARCH64_CALL26	mutex_unlock
    a0e8: aa1403e0     	mov	x0, x20
    a0ec: 94000000     	bl	0xa0ec <haptic_audio_store+0x170>
		000000000000a0ec:  R_AARCH64_CALL26	kfree
    a0f0: d5384108     	mrs	x8, SP_EL0
    a0f4: f9438908     	ldr	x8, [x8, #0x710]
    a0f8: f85f83a9     	ldur	x9, [x29, #-0x8]
    a0fc: eb09011f     	cmp	x8, x9
    a100: 54000ca1     	b.ne	0xa294 <haptic_audio_store+0x318>
    a104: aa1303e0     	mov	x0, x19
    a108: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    a10c: f94023f7     	ldr	x23, [sp, #0x40]
    a110: a94557f6     	ldp	x22, x21, [sp, #0x50]
    a114: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    a118: 9101c3ff     	add	sp, sp, #0x70
    a11c: d50323bf     	autiasp
    a120: d65f03c0     	ret
    a124: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab3
    a128: 91000000     	add	x0, x0, #0x0
		000000000000a128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab3
    a12c: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a130: 91000021     	add	x1, x1, #0x0
		000000000000a130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a134: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    a138: 91000063     	add	x3, x3, #0x0
		000000000000a138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    a13c: 52817522     	mov	w2, #0xba9              // =2985
    a140: 94000000     	bl	0xa140 <haptic_audio_store+0x1c4>
		000000000000a140:  R_AARCH64_CALL26	_printk
    a144: 17ffffeb     	b	0xa0f0 <haptic_audio_store+0x174>
    a148: 294217e4     	ldp	w4, w5, [sp, #0x10]
    a14c: 2943a3e7     	ldp	w7, w8, [sp, #0x1c]
    a150: b94027e9     	ldr	w9, [sp, #0x24]
    a154: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1165
    a158: 91000000     	add	x0, x0, #0x0
		000000000000a158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1165
    a15c: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a15c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a160: 91000021     	add	x1, x1, #0x0
		000000000000a160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a164: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    a168: 91000063     	add	x3, x3, #0x0
		000000000000a168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    a16c: 52817622     	mov	w2, #0xbb1              // =2993
    a170: b9000be9     	str	w9, [sp, #0x8]
    a174: b90003e8     	str	w8, [sp]
    a178: 94000000     	bl	0xa178 <haptic_audio_store+0x1fc>
		000000000000a178:  R_AARCH64_CALL26	_printk
    a17c: 17ffff9f     	b	0x9ff8 <haptic_audio_store+0x7c>
    a180: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d52
    a184: 91000000     	add	x0, x0, #0x0
		000000000000a184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d52
    a188: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a18c: 91000021     	add	x1, x1, #0x0
		000000000000a18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a190: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    a194: 91000063     	add	x3, x3, #0x0
		000000000000a194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    a198: 52817942     	mov	w2, #0xbca              // =3018
    a19c: 94000000     	bl	0xa19c <haptic_audio_store+0x220>
		000000000000a19c:  R_AARCH64_CALL26	_printk
    a1a0: 9111e2c0     	add	x0, x22, #0x478
    a1a4: 94000000     	bl	0xa1a4 <haptic_audio_store+0x228>
		000000000000a1a4:  R_AARCH64_CALL26	hrtimer_active
    a1a8: 3607f9c0     	tbz	w0, #0x0, 0xa0e0 <haptic_audio_store+0x164>
    a1ac: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a1ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ab
    a1b0: 91000000     	add	x0, x0, #0x0
		000000000000a1b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ab
    a1b4: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a1b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a1b8: 91000021     	add	x1, x1, #0x0
		000000000000a1b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a1bc: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a1bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    a1c0: 91000063     	add	x3, x3, #0x0
		000000000000a1c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    a1c4: 52817982     	mov	w2, #0xbcc              // =3020
    a1c8: 94000000     	bl	0xa1c8 <haptic_audio_store+0x24c>
		000000000000a1c8:  R_AARCH64_CALL26	_printk
    a1cc: 9111e2c0     	add	x0, x22, #0x478
    a1d0: 94000000     	bl	0xa1d0 <haptic_audio_store+0x254>
		000000000000a1d0:  R_AARCH64_CALL26	hrtimer_cancel
    a1d4: aa1503e0     	mov	x0, x21
    a1d8: 3913e2df     	strb	wzr, [x22, #0x4f8]
    a1dc: 94000053     	bl	0xa328 <audio_off>
    a1e0: 17ffffc0     	b	0xa0e0 <haptic_audio_store+0x164>
    a1e4: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a1e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1264
    a1e8: 91000000     	add	x0, x0, #0x0
		000000000000a1e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1264
    a1ec: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a1ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a1f0: 91000021     	add	x1, x1, #0x0
		000000000000a1f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a1f4: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    a1f8: 91000063     	add	x3, x3, #0x0
		000000000000a1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    a1fc: 52817aa2     	mov	w2, #0xbd5              // =3029
    a200: 94000000     	bl	0xa200 <haptic_audio_store+0x284>
		000000000000a200:  R_AARCH64_CALL26	_printk
    a204: f94292c8     	ldr	x8, [x22, #0x520]
    a208: aa1503e0     	mov	x0, x21
    a20c: 52800021     	mov	w1, #0x1                // =1
    a210: 2a1f03e2     	mov	w2, wzr
    a214: f9406108     	ldr	x8, [x8, #0xc0]
    a218: b85fc110     	ldur	w16, [x8, #-0x4]
    a21c: 728fccb1     	movk	w17, #0x7e65
    a220: 72af70f1     	movk	w17, #0x7b87, lsl #16
    a224: 6b11021f     	cmp	w16, w17
    a228: 54000040     	b.eq	0xa230 <haptic_audio_store+0x2b4>
    a22c: d4304500     	brk	#0x8228
    a230: d63f0100     	blr	x8
    a234: b94432c8     	ldr	w8, [x22, #0x430]
    a238: 529bd069     	mov	w9, #0xde83             // =56963
    a23c: 9111e2c0     	add	x0, x22, #0x478
    a240: 72a86369     	movk	w9, #0x431b, lsl #16
    a244: aa1f03e2     	mov	x2, xzr
    a248: 52800023     	mov	w3, #0x1                // =1
    a24c: 9b297d09     	smull	x9, w8, w9
    a250: d37ffd2a     	lsr	x10, x9, #63
    a254: 9372fd29     	asr	x9, x9, #50
    a258: 0b0a0129     	add	w9, w9, w10
    a25c: 5288480a     	mov	w10, #0x4240            // =16960
    a260: 72a001ea     	movk	w10, #0xf, lsl #16
    a264: 1b0aa128     	msub	w8, w9, w10, w8
    a268: 52807d0a     	mov	w10, #0x3e8             // =1000
    a26c: 1b0a7d08     	mul	w8, w8, w10
    a270: 5299400a     	mov	w10, #0xca00            // =51712
    a274: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    a278: 93407d08     	sxtw	x8, w8
    a27c: 9b2a2121     	smaddl	x1, w9, w10, x8
    a280: 94000000     	bl	0xa280 <haptic_audio_store+0x304>
		000000000000a280:  R_AARCH64_CALL26	hrtimer_start_range_ns
    a284: 17ffff97     	b	0xa0e0 <haptic_audio_store+0x164>
    a288: aa0803e0     	mov	x0, x8
    a28c: 94000000     	bl	0xa28c <haptic_audio_store+0x310>
		000000000000a28c:  R_AARCH64_CALL26	__list_add_valid_or_report
    a290: 17ffff8e     	b	0xa0c8 <haptic_audio_store+0x14c>
    a294: 94000000     	bl	0xa294 <haptic_audio_store+0x318>
		000000000000a294:  R_AARCH64_CALL26	__stack_chk_fail
    a298: 90000008     	adrp	x8, 0xa000 <haptic_audio_store+0x84>
		000000000000a298:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    a29c: d5384115     	mrs	x21, SP_EL0
    a2a0: f9402ab7     	ldr	x23, [x21, #0x50]
    a2a4: f9400100     	ldr	x0, [x8]
		000000000000a2a4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    a2a8: 90000008     	adrp	x8, 0xa000 <haptic_audio_store+0x84>
		000000000000a2a8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xc8
    a2ac: 91000108     	add	x8, x8, #0x0
		000000000000a2ac:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xc8
    a2b0: 5281b801     	mov	w1, #0xdc0              // =3520
    a2b4: 52800302     	mov	w2, #0x18               // =24
    a2b8: f9002aa8     	str	x8, [x21, #0x50]
    a2bc: 94000000     	bl	0xa2bc <haptic_audio_store+0x340>
		000000000000a2bc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    a2c0: aa0003f4     	mov	x20, x0
    a2c4: f9002ab7     	str	x23, [x21, #0x50]
    a2c8: b5ffea94     	cbnz	x20, 0xa018 <haptic_audio_store+0x9c>
    a2cc: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a2cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1966
    a2d0: 91000000     	add	x0, x0, #0x0
		000000000000a2d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1966
    a2d4: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a2d8: 91000021     	add	x1, x1, #0x0
		000000000000a2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a2dc: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a2dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1007
    a2e0: 91000063     	add	x3, x3, #0x0
		000000000000a2e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1007
    a2e4: 528176e2     	mov	w2, #0xbb7              // =2999
    a2e8: 94000000     	bl	0xa2e8 <haptic_audio_store+0x36c>
		000000000000a2e8:  R_AARCH64_CALL26	_printk
    a2ec: 17ffff81     	b	0xa0f0 <haptic_audio_store+0x174>
    a2f0: 90000008     	adrp	x8, 0xa000 <haptic_audio_store+0x84>
		000000000000a2f0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    a2f4: d5384115     	mrs	x21, SP_EL0
    a2f8: f9402ab7     	ldr	x23, [x21, #0x50]
    a2fc: f9400100     	ldr	x0, [x8]
		000000000000a2fc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    a300: 90000008     	adrp	x8, 0xa000 <haptic_audio_store+0x84>
		000000000000a300:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf0
    a304: 91000108     	add	x8, x8, #0x0
		000000000000a304:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf0
    a308: 5281b801     	mov	w1, #0xdc0              // =3520
    a30c: 52800302     	mov	w2, #0x18               // =24
    a310: f9002aa8     	str	x8, [x21, #0x50]
    a314: 94000000     	bl	0xa314 <haptic_audio_store+0x398>
		000000000000a314:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    a318: f9002ab7     	str	x23, [x21, #0x50]
    a31c: d102a2d5     	sub	x21, x22, #0xa8
    a320: b5ffeaa0     	cbnz	x0, 0xa074 <haptic_audio_store+0xf8>
    a324: 17ffff69     	b	0xa0c8 <haptic_audio_store+0x14c>
