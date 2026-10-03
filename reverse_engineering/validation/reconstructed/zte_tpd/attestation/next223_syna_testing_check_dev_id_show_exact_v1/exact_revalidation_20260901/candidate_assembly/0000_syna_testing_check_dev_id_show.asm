
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ee58 <syna_testing_check_dev_id_show>:
   1ee58: d503233f     	paciasp
   1ee5c: d10403ff     	sub	sp, sp, #0x100
   1ee60: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   1ee64: f90063f9     	str	x25, [sp, #0xc0]
   1ee68: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
   1ee6c: a90e57f6     	stp	x22, x21, [sp, #0xe0]
   1ee70: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
   1ee74: 9102c3fd     	add	x29, sp, #0xb0
   1ee78: d5384108     	mrs	x8, SP_EL0
   1ee7c: aa0203f3     	mov	x19, x2
   1ee80: f9438908     	ldr	x8, [x8, #0x710]
   1ee84: f81f83a8     	stur	x8, [x29, #-0x8]
   1ee88: f9400c08     	ldr	x8, [x0, #0x18]
   1ee8c: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   1ee90: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   1ee94: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   1ee98: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   1ee9c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1eea0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1eea4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1eea8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1eeac: f9400d08     	ldr	x8, [x8, #0x18]
   1eeb0: f9000bff     	str	xzr, [sp, #0x10]
   1eeb4: f9404d17     	ldr	x23, [x8, #0x98]
   1eeb8: 39560ae8     	ldrb	w8, [x23, #0x582]
   1eebc: 36000ca8     	tbz	w8, #0x0, 0x1f050 <syna_testing_check_dev_id_show+0x1f8>
   1eec0: 94000000     	bl	0x1eec0 <syna_testing_check_dev_id_show+0x68>
		000000000001eec0:  R_AARCH64_CALL26	syna_tcm_get_testing_0001
   1eec4: b4000d20     	cbz	x0, 0x1f068 <syna_testing_check_dev_id_show+0x210>
   1eec8: 910063f8     	add	x24, sp, #0x18
   1eecc: 90000015     	adrp	x21, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   1eed0: 910002b5     	add	x21, x21, #0x0
		000000000001eed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   1eed4: 90000016     	adrp	x22, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eed4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5154
   1eed8: 910002d6     	add	x22, x22, #0x0
		000000000001eed8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x5154
   1eedc: aa0003f4     	mov	x20, x0
   1eee0: 91004300     	add	x0, x24, #0x10
   1eee4: aa1503e1     	mov	x1, x21
   1eee8: aa1603e2     	mov	x2, x22
   1eeec: 390163ff     	strb	wzr, [sp, #0x58]
   1eef0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1eef4: 94000000     	bl	0x1eef4 <syna_testing_check_dev_id_show+0x9c>
		000000000001eef4:  R_AARCH64_CALL26	__mutex_init
   1eef8: 91016300     	add	x0, x24, #0x58
   1eefc: aa1503e1     	mov	x1, x21
   1ef00: aa1603e2     	mov	x2, x22
   1ef04: f9006e98     	str	x24, [x20, #0xd8]
   1ef08: 91012319     	add	x25, x24, #0x48
   1ef0c: 390283ff     	strb	wzr, [sp, #0xa0]
   1ef10: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1ef14: 94000000     	bl	0x1ef14 <syna_testing_check_dev_id_show+0xbc>
		000000000001ef14:  R_AARCH64_CALL26	__mutex_init
   1ef18: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ef18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0cd
   1ef1c: 91000108     	add	x8, x8, #0x0
		000000000001ef1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0cd
   1ef20: f9007299     	str	x25, [x20, #0xe0]
   1ef24: f90007e8     	str	x8, [sp, #0x8]
   1ef28: 52800088     	mov	w8, #0x4                // =4
   1ef2c: aa1403e1     	mov	x1, x20
   1ef30: b90013e8     	str	w8, [sp, #0x10]
   1ef34: 910023e8     	add	x8, sp, #0x8
   1ef38: 2a1f03e2     	mov	w2, wzr
   1ef3c: a903a29f     	stp	xzr, x8, [x20, #0x38]
   1ef40: f9400e88     	ldr	x8, [x20, #0x18]
   1ef44: f94002e0     	ldr	x0, [x23]
   1ef48: b85fc110     	ldur	w16, [x8, #-0x4]
   1ef4c: 72895251     	movk	w17, #0x4a92
   1ef50: 72b03811     	movk	w17, #0x81c0, lsl #16
   1ef54: 6b11021f     	cmp	w16, w17
   1ef58: 54000040     	b.eq	0x1ef60 <syna_testing_check_dev_id_show+0x108>
   1ef5c: d4304500     	brk	#0x8228
   1ef60: d63f0100     	blr	x8
   1ef64: 37f80aa0     	tbnz	w0, #0x1f, 0x1f0b8 <syna_testing_check_dev_id_show+0x260>
   1ef68: 39404288     	ldrb	w8, [x20, #0x10]
   1ef6c: 90000009     	adrp	x9, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ef6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   1ef70: 91000129     	add	x9, x9, #0x0
		000000000001ef70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   1ef74: 7100011f     	cmp	w8, #0x0
   1ef78: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ef78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af66
   1ef7c: 91000108     	add	x8, x8, #0x0
		000000000001ef7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af66
   1ef80: 9a891105     	csel	x5, x8, x9, ne
   1ef84: f9400683     	ldr	x3, [x20, #0x8]
   1ef88: b9400284     	ldr	w4, [x20]
   1ef8c: 90000002     	adrp	x2, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ef8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17eac
   1ef90: 91000042     	add	x2, x2, #0x0
		000000000001ef90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17eac
   1ef94: aa1303e0     	mov	x0, x19
   1ef98: 52820001     	mov	w1, #0x1000             // =4096
   1ef9c: 94000000     	bl	0x1ef9c <syna_testing_check_dev_id_show+0x144>
		000000000001ef9c:  R_AARCH64_CALL26	scnprintf
   1efa0: b94027e8     	ldr	w8, [sp, #0x24]
   1efa4: 2a0003f4     	mov	w20, w0
   1efa8: 34000168     	cbz	w8, 0x1efd4 <syna_testing_check_dev_id_show+0x17c>
   1efac: f9400fe8     	ldr	x8, [sp, #0x18]
   1efb0: 2a1403e9     	mov	w9, w20
   1efb4: 5282000a     	mov	w10, #0x1000            // =4096
   1efb8: cb090141     	sub	x1, x10, x9
   1efbc: 90000002     	adrp	x2, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001efbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2e4
   1efc0: 91000042     	add	x2, x2, #0x0
		000000000001efc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2e4
   1efc4: b9400103     	ldr	w3, [x8]
   1efc8: 8b090260     	add	x0, x19, x9
   1efcc: 94000000     	bl	0x1efcc <syna_testing_check_dev_id_show+0x174>
		000000000001efcc:  R_AARCH64_CALL26	scnprintf
   1efd0: 0b140014     	add	w20, w0, w20
   1efd4: b9406fe8     	ldr	w8, [sp, #0x6c]
   1efd8: 34000148     	cbz	w8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
   1efdc: 2a1403e8     	mov	w8, w20
   1efe0: 52820009     	mov	w9, #0x1000             // =4096
   1efe4: f94033e3     	ldr	x3, [sp, #0x60]
   1efe8: cb080121     	sub	x1, x9, x8
   1efec: 90000002     	adrp	x2, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001efec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aae0
   1eff0: 91000042     	add	x2, x2, #0x0
		000000000001eff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aae0
   1eff4: 8b080260     	add	x0, x19, x8
   1eff8: 94000000     	bl	0x1eff8 <syna_testing_check_dev_id_show+0x1a0>
		000000000001eff8:  R_AARCH64_CALL26	scnprintf
   1effc: 0b140014     	add	w20, w0, w20
   1f000: 394163e2     	ldrb	w2, [sp, #0x58]
   1f004: 350006c2     	cbnz	w2, 0x1f0dc <syna_testing_check_dev_id_show+0x284>
   1f008: f9400ff3     	ldr	x19, [sp, #0x18]
   1f00c: 94000000     	bl	0x1f00c <syna_testing_check_dev_id_show+0x1b4>
		000000000001f00c:  R_AARCH64_CALL26	syna_request_managed_device
   1f010: b4000720     	cbz	x0, 0x1f0f4 <syna_testing_check_dev_id_show+0x29c>
   1f014: b4000073     	cbz	x19, 0x1f020 <syna_testing_check_dev_id_show+0x1c8>
   1f018: aa1303e1     	mov	x1, x19
   1f01c: 94000000     	bl	0x1f01c <syna_testing_check_dev_id_show+0x1c4>
		000000000001f01c:  R_AARCH64_CALL26	devm_kfree
   1f020: 394283e2     	ldrb	w2, [sp, #0xa0]
   1f024: f90013ff     	str	xzr, [sp, #0x20]
   1f028: 390163ff     	strb	wzr, [sp, #0x58]
   1f02c: 35000702     	cbnz	w2, 0x1f10c <syna_testing_check_dev_id_show+0x2b4>
   1f030: f94033f3     	ldr	x19, [sp, #0x60]
   1f034: 94000000     	bl	0x1f034 <syna_testing_check_dev_id_show+0x1dc>
		000000000001f034:  R_AARCH64_CALL26	syna_request_managed_device
   1f038: b4000760     	cbz	x0, 0x1f124 <syna_testing_check_dev_id_show+0x2cc>
   1f03c: b4000073     	cbz	x19, 0x1f048 <syna_testing_check_dev_id_show+0x1f0>
   1f040: aa1303e1     	mov	x1, x19
   1f044: 94000000     	bl	0x1f044 <syna_testing_check_dev_id_show+0x1ec>
		000000000001f044:  R_AARCH64_CALL26	devm_kfree
   1f048: 2a1403e0     	mov	w0, w20
   1f04c: 1400000e     	b	0x1f084 <syna_testing_check_dev_id_show+0x22c>
   1f050: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c892
   1f054: 91000042     	add	x2, x2, #0x0
		000000000001f054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c892
   1f058: aa1303e0     	mov	x0, x19
   1f05c: 52820001     	mov	w1, #0x1000             // =4096
   1f060: 94000000     	bl	0x1f060 <syna_testing_check_dev_id_show+0x208>
		000000000001f060:  R_AARCH64_CALL26	scnprintf
   1f064: 14000007     	b	0x1f080 <syna_testing_check_dev_id_show+0x228>
   1f068: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcf7
   1f06c: 91000042     	add	x2, x2, #0x0
		000000000001f06c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcf7
   1f070: aa1303e0     	mov	x0, x19
   1f074: 52820001     	mov	w1, #0x1000             // =4096
   1f078: 52800023     	mov	w3, #0x1                // =1
   1f07c: 94000000     	bl	0x1f07c <syna_testing_check_dev_id_show+0x224>
		000000000001f07c:  R_AARCH64_CALL26	scnprintf
   1f080: 93407c00     	sxtw	x0, w0
   1f084: d5384108     	mrs	x8, SP_EL0
   1f088: f9438908     	ldr	x8, [x8, #0x710]
   1f08c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f090: eb09011f     	cmp	x8, x9
   1f094: 54000541     	b.ne	0x1f13c <syna_testing_check_dev_id_show+0x2e4>
   1f098: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
   1f09c: f94063f9     	ldr	x25, [sp, #0xc0]
   1f0a0: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
   1f0a4: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
   1f0a8: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   1f0ac: 910403ff     	add	sp, sp, #0x100
   1f0b0: d50323bf     	autiasp
   1f0b4: d65f03c0     	ret
   1f0b8: f9400682     	ldr	x2, [x20, #0x8]
   1f0bc: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c704
   1f0c0: 91000000     	add	x0, x0, #0x0
		000000000001f0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c704
   1f0c4: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aac1
   1f0c8: 91000021     	add	x1, x1, #0x0
		000000000001f0c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aac1
   1f0cc: 94000000     	bl	0x1f0cc <syna_testing_check_dev_id_show+0x274>
		000000000001f0cc:  R_AARCH64_CALL26	_printk
   1f0d0: 90000005     	adrp	x5, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   1f0d4: 910000a5     	add	x5, x5, #0x0
		000000000001f0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   1f0d8: 17ffffab     	b	0x1ef84 <syna_testing_check_dev_id_show+0x12c>
   1f0dc: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   1f0e0: 91000000     	add	x0, x0, #0x0
		000000000001f0e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   1f0e4: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   1f0e8: 91000021     	add	x1, x1, #0x0
		000000000001f0e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   1f0ec: 94000000     	bl	0x1f0ec <syna_testing_check_dev_id_show+0x294>
		000000000001f0ec:  R_AARCH64_CALL26	_printk
   1f0f0: 17ffffc6     	b	0x1f008 <syna_testing_check_dev_id_show+0x1b0>
   1f0f4: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1f0f8: 91000000     	add	x0, x0, #0x0
		000000000001f0f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1f0fc: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f0fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1f100: 91000021     	add	x1, x1, #0x0
		000000000001f100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1f104: 94000000     	bl	0x1f104 <syna_testing_check_dev_id_show+0x2ac>
		000000000001f104:  R_AARCH64_CALL26	_printk
   1f108: 17ffffc6     	b	0x1f020 <syna_testing_check_dev_id_show+0x1c8>
   1f10c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f10c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   1f110: 91000000     	add	x0, x0, #0x0
		000000000001f110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   1f114: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   1f118: 91000021     	add	x1, x1, #0x0
		000000000001f118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   1f11c: 94000000     	bl	0x1f11c <syna_testing_check_dev_id_show+0x2c4>
		000000000001f11c:  R_AARCH64_CALL26	_printk
   1f120: 17ffffc4     	b	0x1f030 <syna_testing_check_dev_id_show+0x1d8>
   1f124: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1f128: 91000000     	add	x0, x0, #0x0
		000000000001f128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1f12c: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1f130: 91000021     	add	x1, x1, #0x0
		000000000001f130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1f134: 94000000     	bl	0x1f134 <syna_testing_check_dev_id_show+0x2dc>
		000000000001f134:  R_AARCH64_CALL26	_printk
   1f138: 17ffffc4     	b	0x1f048 <syna_testing_check_dev_id_show+0x1f0>
   1f13c: 94000000     	bl	0x1f13c <syna_testing_check_dev_id_show+0x2e4>
		000000000001f13c:  R_AARCH64_CALL26	__stack_chk_fail
