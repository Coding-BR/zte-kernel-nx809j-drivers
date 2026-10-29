
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003df0 <awrw_store>:
    3df0: d503233f     	paciasp
    3df4: d10243ff     	sub	sp, sp, #0x90
    3df8: a9057bfd     	stp	x29, x30, [sp, #0x50]
    3dfc: a9065ff8     	stp	x24, x23, [sp, #0x60]
    3e00: a90757f6     	stp	x22, x21, [sp, #0x70]
    3e04: a9084ff4     	stp	x20, x19, [sp, #0x80]
    3e08: 910143fd     	add	x29, sp, #0x50
    3e0c: d5384108     	mrs	x8, SP_EL0
    3e10: aa0203f4     	mov	x20, x2
    3e14: aa0303f3     	mov	x19, x3
    3e18: f9438908     	ldr	x8, [x8, #0x710]
    3e1c: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c
    3e20: 91000021     	add	x1, x1, #0x0
		0000000000003e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c
    3e24: 910053e2     	add	x2, sp, #0x14
    3e28: 910043e3     	add	x3, sp, #0x10
    3e2c: 910033e4     	add	x4, sp, #0xc
    3e30: f81f83a8     	stur	x8, [x29, #-0x8]
    3e34: f9404c16     	ldr	x22, [x0, #0x98]
    3e38: aa1403e0     	mov	x0, x20
    3e3c: 390063ff     	strb	wzr, [sp, #0x18]
    3e40: 390093ff     	strb	wzr, [sp, #0x24]
    3e44: b90023ff     	str	wzr, [sp, #0x20]
    3e48: f9000bff     	str	xzr, [sp, #0x10]
    3e4c: b9000fff     	str	wzr, [sp, #0xc]
    3e50: 94000000     	bl	0x3e50 <awrw_store+0x60>
		0000000000003e50:  R_AARCH64_CALL26	sscanf
    3e54: 71000c1f     	cmp	w0, #0x3
    3e58: 54000fa1     	b.ne	0x404c <awrw_store+0x25c>
    3e5c: b94013e8     	ldr	w8, [sp, #0x10]
    3e60: 34001088     	cbz	w8, 0x4070 <awrw_store+0x280>
    3e64: b94017e9     	ldr	w9, [sp, #0x14]
    3e68: f9429ac0     	ldr	x0, [x22, #0x530]
    3e6c: b9052ec8     	str	w8, [x22, #0x52c]
    3e70: b9052ac9     	str	w9, [x22, #0x528]
    3e74: b4000040     	cbz	x0, 0x3e7c <awrw_store+0x8c>
    3e78: 94000000     	bl	0x3e78 <awrw_store+0x88>
		0000000000003e78:  R_AARCH64_CALL26	kfree
    3e7c: d102a2d5     	sub	x21, x22, #0xa8
    3e80: d503201f     	nop
    3e84: b94013e0     	ldr	w0, [sp, #0x10]
    3e88: 52819801     	mov	w1, #0xcc0              // =3264
    3e8c: 94000000     	bl	0x3e8c <awrw_store+0x9c>
		0000000000003e8c:  R_AARCH64_CALL26	__kmalloc_noprof
    3e90: b94017e8     	ldr	w8, [sp, #0x14]
    3e94: f9029ac0     	str	x0, [x22, #0x530]
    3e98: 7100051f     	cmp	w8, #0x1
    3e9c: 54000460     	b.eq	0x3f28 <awrw_store+0x138>
    3ea0: 35000bc8     	cbnz	w8, 0x4018 <awrw_store+0x228>
    3ea4: b94013f7     	ldr	w23, [sp, #0x10]
    3ea8: aa1403e0     	mov	x0, x20
    3eac: 0b170af8     	add	w24, w23, w23, lsl #2
    3eb0: 94000000     	bl	0x3eb0 <awrw_store+0xc0>
		0000000000003eb0:  R_AARCH64_CALL26	strlen
    3eb4: d1003c08     	sub	x8, x0, #0xf
    3eb8: eb18011f     	cmp	x8, x24
    3ebc: 54000ea1     	b.ne	0x4090 <awrw_store+0x2a0>
    3ec0: 34000277     	cbz	w23, 0x3f0c <awrw_store+0x11c>
    3ec4: 2a1f03f7     	mov	w23, wzr
    3ec8: 528001f8     	mov	w24, #0xf               // =15
    3ecc: b878ca88     	ldr	w8, [x20, w24, sxtw]
    3ed0: 910083e0     	add	x0, sp, #0x20
    3ed4: 910063e2     	add	x2, sp, #0x18
    3ed8: 2a1f03e1     	mov	w1, wzr
    3edc: 390093ff     	strb	wzr, [sp, #0x24]
    3ee0: b90023e8     	str	w8, [sp, #0x20]
    3ee4: 94000000     	bl	0x3ee4 <awrw_store+0xf4>
		0000000000003ee4:  R_AARCH64_CALL26	kstrtou8
    3ee8: 37f81060     	tbnz	w0, #0x1f, 0x40f4 <awrw_store+0x304>
    3eec: f9429ac8     	ldr	x8, [x22, #0x530]
    3ef0: 394063e9     	ldrb	w9, [sp, #0x18]
    3ef4: 11001718     	add	w24, w24, #0x5
    3ef8: 3837c909     	strb	w9, [x8, w23, sxtw]
    3efc: 110006f7     	add	w23, w23, #0x1
    3f00: b94013e8     	ldr	w8, [sp, #0x10]
    3f04: 6b0802ff     	cmp	w23, w8
    3f08: 54fffe23     	b.lo	0x3ecc <awrw_store+0xdc>
    3f0c: 910922c0     	add	x0, x22, #0x248
    3f10: 94000000     	bl	0x3f10 <awrw_store+0x120>
		0000000000003f10:  R_AARCH64_CALL26	mutex_lock
    3f14: 29418fe1     	ldp	w1, w3, [sp, #0xc]
    3f18: f9429ac2     	ldr	x2, [x22, #0x530]
    3f1c: aa1503e0     	mov	x0, x21
    3f20: 94000000     	bl	0x3f20 <awrw_store+0x130>
		0000000000003f20:  R_AARCH64_CALL26	i2c_w_bytes
    3f24: 1400003b     	b	0x4010 <awrw_store+0x220>
    3f28: 910922c0     	add	x0, x22, #0x248
    3f2c: 94000000     	bl	0x3f2c <awrw_store+0x13c>
		0000000000003f2c:  R_AARCH64_CALL26	mutex_lock
    3f30: f94292c8     	ldr	x8, [x22, #0x520]
    3f34: aa1503e0     	mov	x0, x21
    3f38: f9401d08     	ldr	x8, [x8, #0x38]
    3f3c: b85fc110     	ldur	w16, [x8, #-0x4]
    3f40: 72810611     	movk	w17, #0x830
    3f44: 72b08f51     	movk	w17, #0x847a, lsl #16
    3f48: 6b11021f     	cmp	w16, w17
    3f4c: 54000040     	b.eq	0x3f54 <awrw_store+0x164>
    3f50: d4304500     	brk	#0x8228
    3f54: d63f0100     	blr	x8
    3f58: f94292c8     	ldr	x8, [x22, #0x520]
    3f5c: aa1503e0     	mov	x0, x21
    3f60: 2a1f03e1     	mov	w1, wzr
    3f64: f9408908     	ldr	x8, [x8, #0x110]
    3f68: b85fc110     	ldur	w16, [x8, #-0x4]
    3f6c: 729bedd1     	movk	w17, #0xdf6e
    3f70: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    3f74: 6b11021f     	cmp	w16, w17
    3f78: 54000040     	b.eq	0x3f80 <awrw_store+0x190>
    3f7c: d4304500     	brk	#0x8228
    3f80: d63f0100     	blr	x8
    3f84: f94292c8     	ldr	x8, [x22, #0x520]
    3f88: aa1503e0     	mov	x0, x21
    3f8c: f9407908     	ldr	x8, [x8, #0xf0]
    3f90: b85fc110     	ldur	w16, [x8, #-0x4]
    3f94: 72810611     	movk	w17, #0x830
    3f98: 72b08f51     	movk	w17, #0x847a, lsl #16
    3f9c: 6b11021f     	cmp	w16, w17
    3fa0: 54000040     	b.eq	0x3fa8 <awrw_store+0x1b8>
    3fa4: d4304500     	brk	#0x8228
    3fa8: d63f0100     	blr	x8
    3fac: b9400fe8     	ldr	w8, [sp, #0xc]
    3fb0: f94142c9     	ldr	x9, [x22, #0x280]
    3fb4: 52a0002a     	mov	w10, #0x10000           // =65536
    3fb8: 9100a3e1     	add	x1, sp, #0x28
    3fbc: 52800042     	mov	w2, #0x2                // =2
    3fc0: 390073e8     	strb	w8, [sp, #0x1c]
    3fc4: f9429ac8     	ldr	x8, [x22, #0x530]
    3fc8: 7940052b     	ldrh	w11, [x9, #0x2]
    3fcc: b802a3ea     	stur	w10, [sp, #0x2a]
    3fd0: 910073ea     	add	x10, sp, #0x1c
    3fd4: f90023e8     	str	x8, [sp, #0x40]
    3fd8: 790053eb     	strh	w11, [sp, #0x28]
    3fdc: f9400d20     	ldr	x0, [x9, #0x18]
    3fe0: 790073eb     	strh	w11, [sp, #0x38]
    3fe4: b94013eb     	ldr	w11, [sp, #0x10]
    3fe8: f9001bea     	str	x10, [sp, #0x30]
    3fec: 5280002a     	mov	w10, #0x1               // =1
    3ff0: 79005fff     	strh	wzr, [sp, #0x2e]
    3ff4: 790077ea     	strh	w10, [sp, #0x3a]
    3ff8: 79007beb     	strh	w11, [sp, #0x3c]
    3ffc: 79007fff     	strh	wzr, [sp, #0x3e]
    4000: 94000000     	bl	0x4000 <awrw_store+0x210>
		0000000000004000:  R_AARCH64_CALL26	i2c_transfer
    4004: 37f80560     	tbnz	w0, #0x1f, 0x40b0 <awrw_store+0x2c0>
    4008: 7100081f     	cmp	w0, #0x2
    400c: 54000621     	b.ne	0x40d0 <awrw_store+0x2e0>
    4010: 910922c0     	add	x0, x22, #0x248
    4014: 94000000     	bl	0x4014 <awrw_store+0x224>
		0000000000004014:  R_AARCH64_CALL26	mutex_unlock
    4018: d5384108     	mrs	x8, SP_EL0
    401c: f9438908     	ldr	x8, [x8, #0x710]
    4020: f85f83a9     	ldur	x9, [x29, #-0x8]
    4024: eb09011f     	cmp	x8, x9
    4028: 540007a1     	b.ne	0x411c <awrw_store+0x32c>
    402c: aa1303e0     	mov	x0, x19
    4030: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    4034: a94757f6     	ldp	x22, x21, [sp, #0x70]
    4038: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    403c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    4040: 910243ff     	add	sp, sp, #0x90
    4044: d50323bf     	autiasp
    4048: d65f03c0     	ret
    404c: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		000000000000404c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
    4050: 91000000     	add	x0, x0, #0x0
		0000000000004050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
    4054: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4058: 91000021     	add	x1, x1, #0x0
		0000000000004058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    405c: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		000000000000405c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b1
    4060: 91000063     	add	x3, x3, #0x0
		0000000000004060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b1
    4064: 52819282     	mov	w2, #0xc94              // =3220
    4068: 94000000     	bl	0x4068 <awrw_store+0x278>
		0000000000004068:  R_AARCH64_CALL26	_printk
    406c: 17ffffeb     	b	0x4018 <awrw_store+0x228>
    4070: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
    4074: 91000000     	add	x0, x0, #0x0
		0000000000004074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
    4078: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    407c: 91000021     	add	x1, x1, #0x0
		000000000000407c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4080: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b1
    4084: 91000063     	add	x3, x3, #0x0
		0000000000004084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b1
    4088: 52818de2     	mov	w2, #0xc6f              // =3183
    408c: 14000021     	b	0x4110 <awrw_store+0x320>
    4090: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
    4094: 91000000     	add	x0, x0, #0x0
		0000000000004094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
    4098: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    409c: 91000021     	add	x1, x1, #0x0
		000000000000409c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    40a0: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000040a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b1
    40a4: 91000063     	add	x3, x3, #0x0
		00000000000040a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b1
    40a8: 52818f22     	mov	w2, #0xc79              // =3193
    40ac: 14000019     	b	0x4110 <awrw_store+0x320>
    40b0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		00000000000040b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
    40b4: 91000000     	add	x0, x0, #0x0
		00000000000040b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
    40b8: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		00000000000040b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    40bc: 91000021     	add	x1, x1, #0x0
		00000000000040bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    40c0: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000040c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x379
    40c4: 91000063     	add	x3, x3, #0x0
		00000000000040c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x379
    40c8: 52800ca2     	mov	w2, #0x65               // =101
    40cc: 14000008     	b	0x40ec <awrw_store+0x2fc>
    40d0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		00000000000040d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56c
    40d4: 91000000     	add	x0, x0, #0x0
		00000000000040d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56c
    40d8: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		00000000000040d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    40dc: 91000021     	add	x1, x1, #0x0
		00000000000040dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    40e0: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000040e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x379
    40e4: 91000063     	add	x3, x3, #0x0
		00000000000040e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x379
    40e8: 52800d02     	mov	w2, #0x68               // =104
    40ec: 94000000     	bl	0x40ec <awrw_store+0x2fc>
		00000000000040ec:  R_AARCH64_CALL26	_printk
    40f0: 17ffffc8     	b	0x4010 <awrw_store+0x220>
    40f4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		00000000000040f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
    40f8: 91000000     	add	x0, x0, #0x0
		00000000000040f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
    40fc: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		00000000000040fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4100: 91000021     	add	x1, x1, #0x0
		0000000000004100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4104: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b1
    4108: 91000063     	add	x3, x3, #0x0
		0000000000004108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b1
    410c: 52819022     	mov	w2, #0xc81              // =3201
    4110: 94000000     	bl	0x4110 <awrw_store+0x320>
		0000000000004110:  R_AARCH64_CALL26	_printk
    4114: 92800433     	mov	x19, #-0x22             // =-34
    4118: 17ffffc0     	b	0x4018 <awrw_store+0x228>
    411c: 94000000     	bl	0x411c <awrw_store+0x32c>
		000000000000411c:  R_AARCH64_CALL26	__stack_chk_fail
    4120: b94013e0     	ldr	w0, [sp, #0x10]
    4124: d5384117     	mrs	x23, SP_EL0
    4128: f9402af8     	ldr	x24, [x23, #0x50]
    412c: 90000008     	adrp	x8, 0x4000 <awrw_store+0x210>
		000000000000412c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    4130: 91000108     	add	x8, x8, #0x0
		0000000000004130:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    4134: 52819801     	mov	w1, #0xcc0              // =3264
    4138: f9002ae8     	str	x8, [x23, #0x50]
    413c: 94000000     	bl	0x413c <awrw_store+0x34c>
		000000000000413c:  R_AARCH64_CALL26	__kmalloc_noprof
    4140: f9002af8     	str	x24, [x23, #0x50]
    4144: 17ffff53     	b	0x3e90 <awrw_store+0xa0>
