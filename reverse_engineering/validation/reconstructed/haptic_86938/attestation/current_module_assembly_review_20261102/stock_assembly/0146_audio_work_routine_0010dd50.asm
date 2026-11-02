
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000af30 <audio_work_routine>:
    af30: d503233f     	paciasp
    af34: d10183ff     	sub	sp, sp, #0x60
    af38: a9017bfd     	stp	x29, x30, [sp, #0x10]
    af3c: f90013f9     	str	x25, [sp, #0x20]
    af40: a9035ff8     	stp	x24, x23, [sp, #0x30]
    af44: a90457f6     	stp	x22, x21, [sp, #0x40]
    af48: a9054ff4     	stp	x20, x19, [sp, #0x50]
    af4c: 910043fd     	add	x29, sp, #0x10
    af50: d101c014     	sub	x20, x0, #0x70
    af54: aa0003f3     	mov	x19, x0
    af58: d2802016     	mov	x22, #0x100             // =256
    af5c: aa1403e0     	mov	x0, x20
    af60: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    af64: 94000000     	bl	0xaf64 <audio_work_routine+0x34>
		000000000000af64:  R_AARCH64_CALL26	mutex_lock
    af68: f9401e77     	ldr	x23, [x19, #0x38]
    af6c: 9100c275     	add	x21, x19, #0x30
    af70: a904fe7f     	stp	xzr, xzr, [x19, #0x48]
    af74: f900227f     	str	xzr, [x19, #0x40]
    af78: eb1502ff     	cmp	x23, x21
    af7c: 540005a0     	b.eq	0xb030 <audio_work_routine+0x100>
    af80: f94002a8     	ldr	x8, [x21]
    af84: eb15011f     	cmp	x8, x21
    af88: 54000060     	b.eq	0xaf94 <audio_work_routine+0x64>
    af8c: 385f8108     	ldurb	w8, [x8, #-0x8]
    af90: 14000002     	b	0xaf98 <audio_work_routine+0x68>
    af94: 2a1f03e8     	mov	w8, wzr
    af98: 385f82e9     	ldurb	w9, [x23, #-0x8]
    af9c: 6b090108     	subs	w8, w8, w9
    afa0: 1a8833e9     	csel	w9, wzr, w8, lo
    afa4: 11008108     	add	w8, w8, #0x20
    afa8: 1a893118     	csel	w24, w8, w9, lo
    afac: 71000f1f     	cmp	w24, #0x3
    afb0: 54000503     	b.lo	0xb050 <audio_work_routine+0x120>
    afb4: 2a1f03f9     	mov	w25, wzr
    afb8: 1400000a     	b	0xafe0 <audio_work_routine+0xb0>
    afbc: aa0903e0     	mov	x0, x9
    afc0: 94000000     	bl	0xafc0 <audio_work_routine+0x90>
		000000000000afc0:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    afc4: 91008ac8     	add	x8, x22, #0x22
    afc8: d1002120     	sub	x0, x9, #0x8
    afcc: a9002136     	stp	x22, x8, [x9]
    afd0: 94000000     	bl	0xafd0 <audio_work_routine+0xa0>
		000000000000afd0:  R_AARCH64_CALL26	kfree
    afd4: 11000739     	add	w25, w25, #0x1
    afd8: 6b18033f     	cmp	w25, w24
    afdc: 540003a0     	b.eq	0xb050 <audio_work_routine+0x120>
    afe0: eb1502ff     	cmp	x23, x21
    afe4: 54000360     	b.eq	0xb050 <audio_work_routine+0x120>
    afe8: aa1703e9     	mov	x9, x23
    afec: 385fa2e8     	ldurb	w8, [x23, #-0x6]
    aff0: f94006f7     	ldr	x23, [x23, #0x8]
    aff4: 35ffff28     	cbnz	w8, 0xafd8 <audio_work_routine+0xa8>
    aff8: 385f9128     	ldurb	w8, [x9, #-0x7]
    affc: 12000d08     	and	w8, w8, #0xf
    b000: 7100051f     	cmp	w8, #0x1
    b004: 54fffea1     	b.ne	0xafd8 <audio_work_routine+0xa8>
    b008: f94002e8     	ldr	x8, [x23]
    b00c: eb09011f     	cmp	x8, x9
    b010: 54fffd61     	b.ne	0xafbc <audio_work_routine+0x8c>
    b014: f9400128     	ldr	x8, [x9]
    b018: f940050a     	ldr	x10, [x8, #0x8]
    b01c: eb09015f     	cmp	x10, x9
    b020: 54fffce1     	b.ne	0xafbc <audio_work_routine+0x8c>
    b024: f9000517     	str	x23, [x8, #0x8]
    b028: f90002e8     	str	x8, [x23]
    b02c: 17ffffe6     	b	0xafc4 <audio_work_routine+0x94>
    b030: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21a
    b034: 91000000     	add	x0, x0, #0x0
		000000000000b034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21a
    b038: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b03c: 91000021     	add	x1, x1, #0x0
		000000000000b03c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b040: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1778
    b044: 91000063     	add	x3, x3, #0x0
		000000000000b044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1778
    b048: 5280f442     	mov	w2, #0x7a2              // =1954
    b04c: 94000000     	bl	0xb04c <audio_work_routine+0x11c>
		000000000000b04c:  R_AARCH64_CALL26	_printk
    b050: f9401e69     	ldr	x9, [x19, #0x38]
    b054: eb15013f     	cmp	x9, x21
    b058: d1158275     	sub	x21, x19, #0x560
    b05c: 54000360     	b.eq	0xb0c8 <audio_work_routine+0x198>
    b060: aa0903e0     	mov	x0, x9
    b064: 385f8c08     	ldrb	w8, [x0, #-0x8]!
    b068: 39010268     	strb	w8, [x19, #0x40]
    b06c: 385f9128     	ldurb	w8, [x9, #-0x7]
    b070: 39010668     	strb	w8, [x19, #0x41]
    b074: 385fa128     	ldurb	w8, [x9, #-0x6]
    b078: 39010a68     	strb	w8, [x19, #0x42]
    b07c: 385fd128     	ldurb	w8, [x9, #-0x3]
    b080: 39011668     	strb	w8, [x19, #0x45]
    b084: 385fb128     	ldurb	w8, [x9, #-0x5]
    b088: 39010e68     	strb	w8, [x19, #0x43]
    b08c: 385fc128     	ldurb	w8, [x9, #-0x4]
    b090: 39011268     	strb	w8, [x19, #0x44]
    b094: f9400528     	ldr	x8, [x9, #0x8]
    b098: f940010a     	ldr	x10, [x8]
    b09c: eb09015f     	cmp	x10, x9
    b0a0: 540015c1     	b.ne	0xb358 <audio_work_routine+0x428>
    b0a4: f940012a     	ldr	x10, [x9]
    b0a8: f940054b     	ldr	x11, [x10, #0x8]
    b0ac: eb09017f     	cmp	x11, x9
    b0b0: 54001541     	b.ne	0xb358 <audio_work_routine+0x428>
    b0b4: f9000548     	str	x8, [x10, #0x8]
    b0b8: f900010a     	str	x10, [x8]
    b0bc: 91008ac8     	add	x8, x22, #0x22
    b0c0: a9002136     	stp	x22, x8, [x9]
    b0c4: 94000000     	bl	0xb0c4 <audio_work_routine+0x194>
		000000000000b0c4:  R_AARCH64_CALL26	kfree
    b0c8: 39410a66     	ldrb	w6, [x19, #0x42]
    b0cc: 35001266     	cbnz	w6, 0xb318 <audio_work_routine+0x3e8>
    b0d0: f9403668     	ldr	x8, [x19, #0x68]
    b0d4: aa1503e0     	mov	x0, x21
    b0d8: f9401508     	ldr	x8, [x8, #0x28]
    b0dc: b85fc110     	ldur	w16, [x8, #-0x4]
    b0e0: 729e3e11     	movk	w17, #0xf1f0
    b0e4: 72aa2591     	movk	w17, #0x512c, lsl #16
    b0e8: 6b11021f     	cmp	w16, w17
    b0ec: 54000040     	b.eq	0xb0f4 <audio_work_routine+0x1c4>
    b0f0: d4304500     	brk	#0x8228
    b0f4: d63f0100     	blr	x8
    b0f8: 2a0003f6     	mov	w22, w0
    b0fc: aa1403e0     	mov	x0, x20
    b100: 94000000     	bl	0xb100 <audio_work_routine+0x1d0>
		000000000000b100:  R_AARCH64_CALL26	mutex_unlock
    b104: 35000fb6     	cbnz	w22, 0xb2f8 <audio_work_routine+0x3c8>
    b108: 39410668     	ldrb	w8, [x19, #0x41]
    b10c: 7100051f     	cmp	w8, #0x1
    b110: 54000f41     	b.ne	0xb2f8 <audio_work_routine+0x3c8>
    b114: 39410a68     	ldrb	w8, [x19, #0x42]
    b118: 7100091f     	cmp	w8, #0x2
    b11c: 54000b20     	b.eq	0xb280 <audio_work_routine+0x350>
    b120: 7100211f     	cmp	w8, #0x8
    b124: 54000ca0     	b.eq	0xb2b8 <audio_work_routine+0x388>
    b128: 7100051f     	cmp	w8, #0x1
    b12c: 54000e61     	b.ne	0xb2f8 <audio_work_routine+0x3c8>
    b130: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x236d
    b134: 91000000     	add	x0, x0, #0x0
		000000000000b134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x236d
    b138: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b13c: 91000021     	add	x1, x1, #0x0
		000000000000b13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b140: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1778
    b144: 91000063     	add	x3, x3, #0x0
		000000000000b144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1778
    b148: 528106c2     	mov	w2, #0x836              // =2102
    b14c: 94000000     	bl	0xb14c <audio_work_routine+0x21c>
		000000000000b14c:  R_AARCH64_CALL26	_printk
    b150: d109c274     	sub	x20, x19, #0x270
    b154: aa1403e0     	mov	x0, x20
    b158: 94000000     	bl	0xb158 <audio_work_routine+0x228>
		000000000000b158:  R_AARCH64_CALL26	mutex_lock
    b15c: f9403668     	ldr	x8, [x19, #0x68]
    b160: aa1503e0     	mov	x0, x21
    b164: f9401d08     	ldr	x8, [x8, #0x38]
    b168: b85fc110     	ldur	w16, [x8, #-0x4]
    b16c: 72810611     	movk	w17, #0x830
    b170: 72b08f51     	movk	w17, #0x847a, lsl #16
    b174: 6b11021f     	cmp	w16, w17
    b178: 54000040     	b.eq	0xb180 <audio_work_routine+0x250>
    b17c: d4304500     	brk	#0x8228
    b180: d63f0100     	blr	x8
    b184: f9403668     	ldr	x8, [x19, #0x68]
    b188: aa1503e0     	mov	x0, x21
    b18c: 52800021     	mov	w1, #0x1                // =1
    b190: f9404d08     	ldr	x8, [x8, #0x98]
    b194: b85fc110     	ldur	w16, [x8, #-0x4]
    b198: 729bedd1     	movk	w17, #0xdf6e
    b19c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b1a0: 6b11021f     	cmp	w16, w17
    b1a4: 54000040     	b.eq	0xb1ac <audio_work_routine+0x27c>
    b1a8: d4304500     	brk	#0x8228
    b1ac: d63f0100     	blr	x8
    b1b0: f9403668     	ldr	x8, [x19, #0x68]
    b1b4: 39411662     	ldrb	w2, [x19, #0x45]
    b1b8: aa1503e0     	mov	x0, x21
    b1bc: 2a1f03e1     	mov	w1, wzr
    b1c0: f9406108     	ldr	x8, [x8, #0xc0]
    b1c4: b85fc110     	ldur	w16, [x8, #-0x4]
    b1c8: 728fccb1     	movk	w17, #0x7e65
    b1cc: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b1d0: 6b11021f     	cmp	w16, w17
    b1d4: 54000040     	b.eq	0xb1dc <audio_work_routine+0x2ac>
    b1d8: d4304500     	brk	#0x8228
    b1dc: d63f0100     	blr	x8
    b1e0: f9403668     	ldr	x8, [x19, #0x68]
    b1e4: aa1503e0     	mov	x0, x21
    b1e8: 52800021     	mov	w1, #0x1                // =1
    b1ec: 2a1f03e2     	mov	w2, wzr
    b1f0: f9406108     	ldr	x8, [x8, #0xc0]
    b1f4: b85fc110     	ldur	w16, [x8, #-0x4]
    b1f8: 728fccb1     	movk	w17, #0x7e65
    b1fc: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b200: 6b11021f     	cmp	w16, w17
    b204: 54000040     	b.eq	0xb20c <audio_work_routine+0x2dc>
    b208: d4304500     	brk	#0x8228
    b20c: d63f0100     	blr	x8
    b210: f9403668     	ldr	x8, [x19, #0x68]
    b214: 39410e62     	ldrb	w2, [x19, #0x43]
    b218: aa1503e0     	mov	x0, x21
    b21c: 2a1f03e1     	mov	w1, wzr
    b220: f9406508     	ldr	x8, [x8, #0xc8]
    b224: b85fc110     	ldur	w16, [x8, #-0x4]
    b228: 728fccb1     	movk	w17, #0x7e65
    b22c: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b230: 6b11021f     	cmp	w16, w17
    b234: 54000040     	b.eq	0xb23c <audio_work_routine+0x30c>
    b238: d4304500     	brk	#0x8228
    b23c: d63f0100     	blr	x8
    b240: f9403668     	ldr	x8, [x19, #0x68]
    b244: 39411261     	ldrb	w1, [x19, #0x44]
    b248: aa1503e0     	mov	x0, x21
    b24c: f9404508     	ldr	x8, [x8, #0x88]
    b250: b85fc110     	ldur	w16, [x8, #-0x4]
    b254: 729bedd1     	movk	w17, #0xdf6e
    b258: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b25c: 6b11021f     	cmp	w16, w17
    b260: 54000040     	b.eq	0xb268 <audio_work_routine+0x338>
    b264: d4304500     	brk	#0x8228
    b268: d63f0100     	blr	x8
    b26c: f9403668     	ldr	x8, [x19, #0x68]
    b270: aa1503e0     	mov	x0, x21
    b274: 52800021     	mov	w1, #0x1                // =1
    b278: f9403108     	ldr	x8, [x8, #0x60]
    b27c: 14000016     	b	0xb2d4 <audio_work_routine+0x3a4>
    b280: d109c274     	sub	x20, x19, #0x270
    b284: aa1403e0     	mov	x0, x20
    b288: 94000000     	bl	0xb288 <audio_work_routine+0x358>
		000000000000b288:  R_AARCH64_CALL26	mutex_lock
    b28c: f9403668     	ldr	x8, [x19, #0x68]
    b290: aa1503e0     	mov	x0, x21
    b294: f9401d08     	ldr	x8, [x8, #0x38]
    b298: b85fc110     	ldur	w16, [x8, #-0x4]
    b29c: 72810611     	movk	w17, #0x830
    b2a0: 72b08f51     	movk	w17, #0x847a, lsl #16
    b2a4: 6b11021f     	cmp	w16, w17
    b2a8: 54000040     	b.eq	0xb2b0 <audio_work_routine+0x380>
    b2ac: d4304500     	brk	#0x8228
    b2b0: d63f0100     	blr	x8
    b2b4: 1400000f     	b	0xb2f0 <audio_work_routine+0x3c0>
    b2b8: d109c274     	sub	x20, x19, #0x270
    b2bc: aa1403e0     	mov	x0, x20
    b2c0: 94000000     	bl	0xb2c0 <audio_work_routine+0x390>
		000000000000b2c0:  R_AARCH64_CALL26	mutex_lock
    b2c4: f9403668     	ldr	x8, [x19, #0x68]
    b2c8: 39411261     	ldrb	w1, [x19, #0x44]
    b2cc: aa1503e0     	mov	x0, x21
    b2d0: f9404508     	ldr	x8, [x8, #0x88]
    b2d4: b85fc110     	ldur	w16, [x8, #-0x4]
    b2d8: 729bedd1     	movk	w17, #0xdf6e
    b2dc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b2e0: 6b11021f     	cmp	w16, w17
    b2e4: 54000040     	b.eq	0xb2ec <audio_work_routine+0x3bc>
    b2e8: d4304500     	brk	#0x8228
    b2ec: d63f0100     	blr	x8
    b2f0: aa1403e0     	mov	x0, x20
    b2f4: 94000000     	bl	0xb2f4 <audio_work_routine+0x3c4>
		000000000000b2f4:  R_AARCH64_CALL26	mutex_unlock
    b2f8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    b2fc: f94013f9     	ldr	x25, [sp, #0x20]
    b300: a94457f6     	ldp	x22, x21, [sp, #0x40]
    b304: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    b308: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b30c: 910183ff     	add	sp, sp, #0x60
    b310: d50323bf     	autiasp
    b314: d65f03c0     	ret
    b318: 39410264     	ldrb	w4, [x19, #0x40]
    b31c: 39410665     	ldrb	w5, [x19, #0x41]
    b320: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1165
    b324: 91000000     	add	x0, x0, #0x0
		000000000000b324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1165
    b328: 39411667     	ldrb	w7, [x19, #0x45]
    b32c: 39410e68     	ldrb	w8, [x19, #0x43]
    b330: 39411269     	ldrb	w9, [x19, #0x44]
    b334: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b338: 91000021     	add	x1, x1, #0x0
		000000000000b338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b33c: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b33c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1778
    b340: 91000063     	add	x3, x3, #0x0
		000000000000b340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1778
    b344: 5280fba2     	mov	w2, #0x7dd              // =2013
    b348: b9000be9     	str	w9, [sp, #0x8]
    b34c: b90003e8     	str	w8, [sp]
    b350: 94000000     	bl	0xb350 <audio_work_routine+0x420>
		000000000000b350:  R_AARCH64_CALL26	_printk
    b354: 17ffff5f     	b	0xb0d0 <audio_work_routine+0x1a0>
    b358: aa0003ea     	mov	x10, x0
    b35c: aa0903e0     	mov	x0, x9
    b360: 94000000     	bl	0xb360 <audio_work_routine+0x430>
		000000000000b360:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    b364: aa0a03e0     	mov	x0, x10
    b368: 17ffff55     	b	0xb0bc <audio_work_routine+0x18c>
