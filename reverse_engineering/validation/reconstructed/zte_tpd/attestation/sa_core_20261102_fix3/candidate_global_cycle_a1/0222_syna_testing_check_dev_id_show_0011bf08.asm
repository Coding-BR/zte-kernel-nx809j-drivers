
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001eeb4 <syna_testing_check_dev_id_show>:
   1eeb4: d503233f     	paciasp
   1eeb8: d10403ff     	sub	sp, sp, #0x100
   1eebc: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   1eec0: f90063f9     	str	x25, [sp, #0xc0]
   1eec4: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
   1eec8: a90e57f6     	stp	x22, x21, [sp, #0xe0]
   1eecc: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
   1eed0: 9102c3fd     	add	x29, sp, #0xb0
   1eed4: d5384108     	mrs	x8, SP_EL0
   1eed8: aa0203f3     	mov	x19, x2
   1eedc: f9438908     	ldr	x8, [x8, #0x710]
   1eee0: f81f83a8     	stur	x8, [x29, #-0x8]
   1eee4: f9400c08     	ldr	x8, [x0, #0x18]
   1eee8: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   1eeec: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   1eef0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   1eef4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   1eef8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1eefc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1ef00: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1ef04: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1ef08: f9400d08     	ldr	x8, [x8, #0x18]
   1ef0c: f9000bff     	str	xzr, [sp, #0x10]
   1ef10: f9404d17     	ldr	x23, [x8, #0x98]
   1ef14: 39560ae8     	ldrb	w8, [x23, #0x582]
   1ef18: 36000ca8     	tbz	w8, #0x0, 0x1f0ac <syna_testing_check_dev_id_show+0x1f8>
   1ef1c: 94000000     	bl	0x1ef1c <syna_testing_check_dev_id_show+0x68>
		000000000001ef1c:  R_AARCH64_CALL26	syna_tcm_get_testing_0001
   1ef20: b4000d20     	cbz	x0, 0x1f0c4 <syna_testing_check_dev_id_show+0x210>
   1ef24: 910063f8     	add	x24, sp, #0x18
   1ef28: 90000015     	adrp	x21, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ef28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   1ef2c: 910002b5     	add	x21, x21, #0x0
		000000000001ef2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   1ef30: 90000016     	adrp	x22, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ef30:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5154
   1ef34: 910002d6     	add	x22, x22, #0x0
		000000000001ef34:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x5154
   1ef38: aa0003f4     	mov	x20, x0
   1ef3c: 91004300     	add	x0, x24, #0x10
   1ef40: aa1503e1     	mov	x1, x21
   1ef44: aa1603e2     	mov	x2, x22
   1ef48: 390163ff     	strb	wzr, [sp, #0x58]
   1ef4c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1ef50: 94000000     	bl	0x1ef50 <syna_testing_check_dev_id_show+0x9c>
		000000000001ef50:  R_AARCH64_CALL26	__mutex_init
   1ef54: 91016300     	add	x0, x24, #0x58
   1ef58: aa1503e1     	mov	x1, x21
   1ef5c: aa1603e2     	mov	x2, x22
   1ef60: f9006e98     	str	x24, [x20, #0xd8]
   1ef64: 91012319     	add	x25, x24, #0x48
   1ef68: 390283ff     	strb	wzr, [sp, #0xa0]
   1ef6c: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1ef70: 94000000     	bl	0x1ef70 <syna_testing_check_dev_id_show+0xbc>
		000000000001ef70:  R_AARCH64_CALL26	__mutex_init
   1ef74: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ef74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0cd
   1ef78: 91000108     	add	x8, x8, #0x0
		000000000001ef78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0cd
   1ef7c: f9007299     	str	x25, [x20, #0xe0]
   1ef80: f90007e8     	str	x8, [sp, #0x8]
   1ef84: 52800088     	mov	w8, #0x4                // =4
   1ef88: aa1403e1     	mov	x1, x20
   1ef8c: b90013e8     	str	w8, [sp, #0x10]
   1ef90: 910023e8     	add	x8, sp, #0x8
   1ef94: 2a1f03e2     	mov	w2, wzr
   1ef98: a903a29f     	stp	xzr, x8, [x20, #0x38]
   1ef9c: f9400e88     	ldr	x8, [x20, #0x18]
   1efa0: f94002e0     	ldr	x0, [x23]
   1efa4: b85fc110     	ldur	w16, [x8, #-0x4]
   1efa8: 72895251     	movk	w17, #0x4a92
   1efac: 72b03811     	movk	w17, #0x81c0, lsl #16
   1efb0: 6b11021f     	cmp	w16, w17
   1efb4: 54000040     	b.eq	0x1efbc <syna_testing_check_dev_id_show+0x108>
   1efb8: d4304500     	brk	#0x8228
   1efbc: d63f0100     	blr	x8
   1efc0: 37f80aa0     	tbnz	w0, #0x1f, 0x1f114 <syna_testing_check_dev_id_show+0x260>
   1efc4: 39404288     	ldrb	w8, [x20, #0x10]
   1efc8: 90000009     	adrp	x9, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001efc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   1efcc: 91000129     	add	x9, x9, #0x0
		000000000001efcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   1efd0: 7100011f     	cmp	w8, #0x0
   1efd4: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001efd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af66
   1efd8: 91000108     	add	x8, x8, #0x0
		000000000001efd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af66
   1efdc: 9a891105     	csel	x5, x8, x9, ne
   1efe0: f9400683     	ldr	x3, [x20, #0x8]
   1efe4: b9400284     	ldr	w4, [x20]
   1efe8: 90000002     	adrp	x2, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001efe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17eac
   1efec: 91000042     	add	x2, x2, #0x0
		000000000001efec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17eac
   1eff0: aa1303e0     	mov	x0, x19
   1eff4: 52820001     	mov	w1, #0x1000             // =4096
   1eff8: 94000000     	bl	0x1eff8 <syna_testing_check_dev_id_show+0x144>
		000000000001eff8:  R_AARCH64_CALL26	scnprintf
   1effc: b94027e8     	ldr	w8, [sp, #0x24]
   1f000: 2a0003f4     	mov	w20, w0
   1f004: 34000168     	cbz	w8, 0x1f030 <syna_testing_check_dev_id_show+0x17c>
   1f008: f9400fe8     	ldr	x8, [sp, #0x18]
   1f00c: 2a1403e9     	mov	w9, w20
   1f010: 5282000a     	mov	w10, #0x1000            // =4096
   1f014: cb090141     	sub	x1, x10, x9
   1f018: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2e4
   1f01c: 91000042     	add	x2, x2, #0x0
		000000000001f01c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2e4
   1f020: b9400103     	ldr	w3, [x8]
   1f024: 8b090260     	add	x0, x19, x9
   1f028: 94000000     	bl	0x1f028 <syna_testing_check_dev_id_show+0x174>
		000000000001f028:  R_AARCH64_CALL26	scnprintf
   1f02c: 0b140014     	add	w20, w0, w20
   1f030: b9406fe8     	ldr	w8, [sp, #0x6c]
   1f034: 34000148     	cbz	w8, 0x1f05c <syna_testing_check_dev_id_show+0x1a8>
   1f038: 2a1403e8     	mov	w8, w20
   1f03c: 52820009     	mov	w9, #0x1000             // =4096
   1f040: f94033e3     	ldr	x3, [sp, #0x60]
   1f044: cb080121     	sub	x1, x9, x8
   1f048: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aae0
   1f04c: 91000042     	add	x2, x2, #0x0
		000000000001f04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aae0
   1f050: 8b080260     	add	x0, x19, x8
   1f054: 94000000     	bl	0x1f054 <syna_testing_check_dev_id_show+0x1a0>
		000000000001f054:  R_AARCH64_CALL26	scnprintf
   1f058: 0b140014     	add	w20, w0, w20
   1f05c: 394163e2     	ldrb	w2, [sp, #0x58]
   1f060: 350006c2     	cbnz	w2, 0x1f138 <syna_testing_check_dev_id_show+0x284>
   1f064: f9400ff3     	ldr	x19, [sp, #0x18]
   1f068: 94000000     	bl	0x1f068 <syna_testing_check_dev_id_show+0x1b4>
		000000000001f068:  R_AARCH64_CALL26	syna_request_managed_device
   1f06c: b4000720     	cbz	x0, 0x1f150 <syna_testing_check_dev_id_show+0x29c>
   1f070: b4000073     	cbz	x19, 0x1f07c <syna_testing_check_dev_id_show+0x1c8>
   1f074: aa1303e1     	mov	x1, x19
   1f078: 94000000     	bl	0x1f078 <syna_testing_check_dev_id_show+0x1c4>
		000000000001f078:  R_AARCH64_CALL26	devm_kfree
   1f07c: 394283e2     	ldrb	w2, [sp, #0xa0]
   1f080: f90013ff     	str	xzr, [sp, #0x20]
   1f084: 390163ff     	strb	wzr, [sp, #0x58]
   1f088: 35000702     	cbnz	w2, 0x1f168 <syna_testing_check_dev_id_show+0x2b4>
   1f08c: f94033f3     	ldr	x19, [sp, #0x60]
   1f090: 94000000     	bl	0x1f090 <syna_testing_check_dev_id_show+0x1dc>
		000000000001f090:  R_AARCH64_CALL26	syna_request_managed_device
   1f094: b4000760     	cbz	x0, 0x1f180 <syna_testing_check_dev_id_show+0x2cc>
   1f098: b4000073     	cbz	x19, 0x1f0a4 <syna_testing_check_dev_id_show+0x1f0>
   1f09c: aa1303e1     	mov	x1, x19
   1f0a0: 94000000     	bl	0x1f0a0 <syna_testing_check_dev_id_show+0x1ec>
		000000000001f0a0:  R_AARCH64_CALL26	devm_kfree
   1f0a4: 2a1403e0     	mov	w0, w20
   1f0a8: 1400000e     	b	0x1f0e0 <syna_testing_check_dev_id_show+0x22c>
   1f0ac: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f0ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   1f0b0: 91000042     	add	x2, x2, #0x0
		000000000001f0b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   1f0b4: aa1303e0     	mov	x0, x19
   1f0b8: 52820001     	mov	w1, #0x1000             // =4096
   1f0bc: 94000000     	bl	0x1f0bc <syna_testing_check_dev_id_show+0x208>
		000000000001f0bc:  R_AARCH64_CALL26	scnprintf
   1f0c0: 14000007     	b	0x1f0dc <syna_testing_check_dev_id_show+0x228>
   1f0c4: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f0c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcf7
   1f0c8: 91000042     	add	x2, x2, #0x0
		000000000001f0c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcf7
   1f0cc: aa1303e0     	mov	x0, x19
   1f0d0: 52820001     	mov	w1, #0x1000             // =4096
   1f0d4: 52800023     	mov	w3, #0x1                // =1
   1f0d8: 94000000     	bl	0x1f0d8 <syna_testing_check_dev_id_show+0x224>
		000000000001f0d8:  R_AARCH64_CALL26	scnprintf
   1f0dc: 93407c00     	sxtw	x0, w0
   1f0e0: d5384108     	mrs	x8, SP_EL0
   1f0e4: f9438908     	ldr	x8, [x8, #0x710]
   1f0e8: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f0ec: eb09011f     	cmp	x8, x9
   1f0f0: 54000541     	b.ne	0x1f198 <syna_testing_check_dev_id_show+0x2e4>
   1f0f4: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
   1f0f8: f94063f9     	ldr	x25, [sp, #0xc0]
   1f0fc: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
   1f100: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
   1f104: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   1f108: 910403ff     	add	sp, sp, #0x100
   1f10c: d50323bf     	autiasp
   1f110: d65f03c0     	ret
   1f114: f9400682     	ldr	x2, [x20, #0x8]
   1f118: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c71d
   1f11c: 91000000     	add	x0, x0, #0x0
		000000000001f11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c71d
   1f120: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aac1
   1f124: 91000021     	add	x1, x1, #0x0
		000000000001f124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aac1
   1f128: 94000000     	bl	0x1f128 <syna_testing_check_dev_id_show+0x274>
		000000000001f128:  R_AARCH64_CALL26	_printk
   1f12c: 90000005     	adrp	x5, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   1f130: 910000a5     	add	x5, x5, #0x0
		000000000001f130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   1f134: 17ffffab     	b	0x1efe0 <syna_testing_check_dev_id_show+0x12c>
   1f138: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   1f13c: 91000000     	add	x0, x0, #0x0
		000000000001f13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   1f140: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   1f144: 91000021     	add	x1, x1, #0x0
		000000000001f144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   1f148: 94000000     	bl	0x1f148 <syna_testing_check_dev_id_show+0x294>
		000000000001f148:  R_AARCH64_CALL26	_printk
   1f14c: 17ffffc6     	b	0x1f064 <syna_testing_check_dev_id_show+0x1b0>
   1f150: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1f154: 91000000     	add	x0, x0, #0x0
		000000000001f154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1f158: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1f15c: 91000021     	add	x1, x1, #0x0
		000000000001f15c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1f160: 94000000     	bl	0x1f160 <syna_testing_check_dev_id_show+0x2ac>
		000000000001f160:  R_AARCH64_CALL26	_printk
   1f164: 17ffffc6     	b	0x1f07c <syna_testing_check_dev_id_show+0x1c8>
   1f168: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   1f16c: 91000000     	add	x0, x0, #0x0
		000000000001f16c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   1f170: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   1f174: 91000021     	add	x1, x1, #0x0
		000000000001f174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   1f178: 94000000     	bl	0x1f178 <syna_testing_check_dev_id_show+0x2c4>
		000000000001f178:  R_AARCH64_CALL26	_printk
   1f17c: 17ffffc4     	b	0x1f08c <syna_testing_check_dev_id_show+0x1d8>
   1f180: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1f184: 91000000     	add	x0, x0, #0x0
		000000000001f184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1f188: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1f18c: 91000021     	add	x1, x1, #0x0
		000000000001f18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1f190: 94000000     	bl	0x1f190 <syna_testing_check_dev_id_show+0x2dc>
		000000000001f190:  R_AARCH64_CALL26	_printk
   1f194: 17ffffc4     	b	0x1f0a4 <syna_testing_check_dev_id_show+0x1f0>
   1f198: 94000000     	bl	0x1f198 <syna_testing_check_dev_id_show+0x2e4>
		000000000001f198:  R_AARCH64_CALL26	__stack_chk_fail
