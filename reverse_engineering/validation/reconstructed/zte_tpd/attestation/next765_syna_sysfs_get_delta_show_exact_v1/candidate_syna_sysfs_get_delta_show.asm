
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000299cc <syna_sysfs_get_delta_show>:
   299cc: d503233f     	paciasp
   299d0: d10343ff     	sub	sp, sp, #0xd0
   299d4: a9077bfd     	stp	x29, x30, [sp, #0x70]
   299d8: a9086ffc     	stp	x28, x27, [sp, #0x80]
   299dc: a90967fa     	stp	x26, x25, [sp, #0x90]
   299e0: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   299e4: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   299e8: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   299ec: 9101c3fd     	add	x29, sp, #0x70
   299f0: d5384108     	mrs	x8, SP_EL0
   299f4: aa0203f3     	mov	x19, x2
   299f8: 52800241     	mov	w1, #0x12               // =18
   299fc: f9438908     	ldr	x8, [x8, #0x710]
   29a00: 52800022     	mov	w2, #0x1                // =1
   29a04: 52800143     	mov	w3, #0xa                // =10
   29a08: f81f83a8     	stur	x8, [x29, #-0x8]
   29a0c: f9400c08     	ldr	x8, [x0, #0x18]
   29a10: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   29a14: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29a18: f9404d16     	ldr	x22, [x8, #0x98]
   29a1c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29a20: f9001bff     	str	xzr, [sp, #0x30]
   29a24: f94002d4     	ldr	x20, [x22]
   29a28: aa1403e0     	mov	x0, x20
   29a2c: 94000000     	bl	0x29a2c <syna_sysfs_get_delta_show+0x60>
		0000000000029a2c:  R_AARCH64_CALL26	syna_tcm_enable_report
   29a30: 37f81a00     	tbnz	w0, #0x1f, 0x29d70 <syna_sysfs_get_delta_show+0x3a4>
   29a34: a9004ff6     	stp	x22, x19, [sp]
   29a38: b4001c74     	cbz	x20, 0x29dc4 <syna_sysfs_get_delta_show+0x3f8>
   29a3c: f9402695     	ldr	x21, [x20, #0x48]
   29a40: b4001ef5     	cbz	x21, 0x29e1c <syna_sysfs_get_delta_show+0x450>
   29a44: f9401ea8     	ldr	x8, [x21, #0x38]
   29a48: b40001e8     	cbz	x8, 0x29a84 <syna_sysfs_get_delta_show+0xb8>
   29a4c: 91014280     	add	x0, x20, #0x50
   29a50: 94000000     	bl	0x29a50 <syna_sysfs_get_delta_show+0x84>
		0000000000029a50:  R_AARCH64_CALL26	mutex_lock
   29a54: f9401ea8     	ldr	x8, [x21, #0x38]
   29a58: aa1503e0     	mov	x0, x21
   29a5c: 2a1f03e1     	mov	w1, wzr
   29a60: b85fc110     	ldur	w16, [x8, #-0x4]
   29a64: 728c3631     	movk	w17, #0x61b1
   29a68: 72a685d1     	movk	w17, #0x342e, lsl #16
   29a6c: 6b11021f     	cmp	w16, w17
   29a70: 54000040     	b.eq	0x29a78 <syna_sysfs_get_delta_show+0xac>
   29a74: d4304500     	brk	#0x8228
   29a78: d63f0100     	blr	x8
   29a7c: 91014280     	add	x0, x20, #0x50
   29a80: 94000000     	bl	0x29a80 <syna_sysfs_get_delta_show+0xb4>
		0000000000029a80:  R_AARCH64_CALL26	mutex_unlock
   29a84: 910083e8     	add	x8, sp, #0x20
   29a88: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cedf
   29a8c: 91000021     	add	x1, x1, #0x0
		0000000000029a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cedf
   29a90: 90000002     	adrp	x2, 0x29000 <syna_spi_write+0x1d4>
		0000000000029a90:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6424
   29a94: 91000042     	add	x2, x2, #0x0
		0000000000029a94:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6424
   29a98: 91004100     	add	x0, x8, #0x10
   29a9c: 390183ff     	strb	wzr, [sp, #0x60]
   29aa0: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   29aa4: 94000000     	bl	0x29aa4 <syna_sysfs_get_delta_show+0xd8>
		0000000000029aa4:  R_AARCH64_CALL26	__mutex_init
   29aa8: 2a1f03f3     	mov	w19, wzr
   29aac: 2a1f03fa     	mov	w26, wzr
   29ab0: 90000015     	adrp	x21, 0x29000 <syna_spi_write+0x1d4>
		0000000000029ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db5e
   29ab4: 910002b5     	add	x21, x21, #0x0
		0000000000029ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db5e
   29ab8: 9000001c     	adrp	x28, 0x29000 <syna_spi_write+0x1d4>
		0000000000029ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17884
   29abc: 9100039c     	add	x28, x28, #0x0
		0000000000029abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17884
   29ac0: 910083e2     	add	x2, sp, #0x20
   29ac4: aa1403e0     	mov	x0, x20
   29ac8: 52800241     	mov	w1, #0x12               // =18
   29acc: 52800c83     	mov	w3, #0x64               // =100
   29ad0: 52807d04     	mov	w4, #0x3e8              // =1000
   29ad4: 94000000     	bl	0x29ad4 <syna_sysfs_get_delta_show+0x108>
		0000000000029ad4:  R_AARCH64_CALL26	syna_tcm_wait_for_report
   29ad8: 37f80060     	tbnz	w0, #0x1f, 0x29ae4 <syna_sysfs_get_delta_show+0x118>
   29adc: b9402fe8     	ldr	w8, [sp, #0x2c]
   29ae0: 350000e8     	cbnz	w8, 0x29afc <syna_sysfs_get_delta_show+0x130>
   29ae4: 1100075a     	add	w26, w26, #0x1
   29ae8: 7100067f     	cmp	w19, #0x1
   29aec: 54000ee8     	b.hi	0x29cc8 <syna_sysfs_get_delta_show+0x2fc>
   29af0: 7100175f     	cmp	w26, #0x5
   29af4: 54fffe63     	b.lo	0x29ac0 <syna_sysfs_get_delta_show+0xf4>
   29af8: 14000074     	b	0x29cc8 <syna_sysfs_get_delta_show+0x2fc>
   29afc: 11000673     	add	w19, w19, #0x1
   29b00: aa1503e0     	mov	x0, x21
   29b04: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d15b
   29b08: 91000021     	add	x1, x1, #0x0
		0000000000029b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d15b
   29b0c: 2a1303e2     	mov	w2, w19
   29b10: 94000000     	bl	0x29b10 <syna_sysfs_get_delta_show+0x144>
		0000000000029b10:  R_AARCH64_CALL26	_printk
   29b14: b9401e88     	ldr	w8, [x20, #0x1c]
   29b18: 34fffe88     	cbz	w8, 0x29ae8 <syna_sysfs_get_delta_show+0x11c>
   29b1c: f94013f7     	ldr	x23, [sp, #0x20]
   29b20: b90013f3     	str	w19, [sp, #0x10]
   29b24: 2a1f03f3     	mov	w19, wzr
   29b28: b90017f3     	str	w19, [sp, #0x14]
   29b2c: b9402293     	ldr	w19, [x20, #0x20]
   29b30: 94000000     	bl	0x29b30 <syna_sysfs_get_delta_show+0x164>
		0000000000029b30:  R_AARCH64_CALL26	syna_request_managed_device
   29b34: b5000080     	cbnz	x0, 0x29b44 <syna_sysfs_get_delta_show+0x178>
   29b38: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf02
   29b3c: 91000000     	add	x0, x0, #0x0
		0000000000029b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf02
   29b40: 14000007     	b	0x29b5c <syna_sysfs_get_delta_show+0x190>
   29b44: 0b130668     	add	w8, w19, w19, lsl #1
   29b48: 531f7916     	lsl	w22, w8, #1
   29b4c: 710002df     	cmp	w22, #0x0
   29b50: 5400016c     	b.gt	0x29b7c <syna_sysfs_get_delta_show+0x1b0>
   29b54: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af2b
   29b58: 91000000     	add	x0, x0, #0x0
		0000000000029b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af2b
   29b5c: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c29
   29b60: 91000021     	add	x1, x1, #0x0
		0000000000029b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c29
   29b64: 94000000     	bl	0x29b64 <syna_sysfs_get_delta_show+0x198>
		0000000000029b64:  R_AARCH64_CALL26	_printk
   29b68: aa1f03f6     	mov	x22, xzr
   29b6c: aa1f03fb     	mov	x27, xzr
   29b70: b9402288     	ldr	w8, [x20, #0x20]
   29b74: 34000108     	cbz	w8, 0x29b94 <syna_sysfs_get_delta_show+0x1c8>
   29b78: 14000018     	b	0x29bd8 <syna_sysfs_get_delta_show+0x20c>
   29b7c: aa1603e1     	mov	x1, x22
   29b80: 5281b802     	mov	w2, #0xdc0              // =3520
   29b84: 94000000     	bl	0x29b84 <syna_sysfs_get_delta_show+0x1b8>
		0000000000029b84:  R_AARCH64_CALL26	devm_kmalloc
   29b88: aa0003fb     	mov	x27, x0
   29b8c: b9402288     	ldr	w8, [x20, #0x20]
   29b90: 35000248     	cbnz	w8, 0x29bd8 <syna_sysfs_get_delta_show+0x20c>
   29b94: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a192
   29b98: 91000000     	add	x0, x0, #0x0
		0000000000029b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a192
   29b9c: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d15b
   29ba0: 91000021     	add	x1, x1, #0x0
		0000000000029ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d15b
   29ba4: aa1b03e2     	mov	x2, x27
   29ba8: 94000000     	bl	0x29ba8 <syna_sysfs_get_delta_show+0x1dc>
		0000000000029ba8:  R_AARCH64_CALL26	_printk
   29bac: 94000000     	bl	0x29bac <syna_sysfs_get_delta_show+0x1e0>
		0000000000029bac:  R_AARCH64_CALL26	syna_request_managed_device
   29bb0: b4000760     	cbz	x0, 0x29c9c <syna_sysfs_get_delta_show+0x2d0>
   29bb4: b94017f3     	ldr	w19, [sp, #0x14]
   29bb8: b400007b     	cbz	x27, 0x29bc4 <syna_sysfs_get_delta_show+0x1f8>
   29bbc: aa1b03e1     	mov	x1, x27
   29bc0: 94000000     	bl	0x29bc0 <syna_sysfs_get_delta_show+0x1f4>
		0000000000029bc0:  R_AARCH64_CALL26	devm_kfree
   29bc4: b9401e88     	ldr	w8, [x20, #0x1c]
   29bc8: 11000673     	add	w19, w19, #0x1
   29bcc: 6b08027f     	cmp	w19, w8
   29bd0: 54fffac3     	b.lo	0x29b28 <syna_sysfs_get_delta_show+0x15c>
   29bd4: 14000039     	b	0x29cb8 <syna_sysfs_get_delta_show+0x2ec>
   29bd8: 2a1f03f3     	mov	w19, wzr
   29bdc: 14000007     	b	0x29bf8 <syna_sysfs_get_delta_show+0x22c>
   29be0: 38356b7f     	strb	wzr, [x27, x21]
   29be4: b9402295     	ldr	w21, [x20, #0x20]
   29be8: 11000673     	add	w19, w19, #0x1
   29bec: 91000af7     	add	x23, x23, #0x2
   29bf0: 6b15027f     	cmp	w19, w21
   29bf4: 54fffd02     	b.hs	0x29b94 <syna_sysfs_get_delta_show+0x1c8>
   29bf8: 79003bff     	strh	wzr, [sp, #0x1c]
   29bfc: 910063e0     	add	x0, sp, #0x18
   29c00: 528000c1     	mov	w1, #0x6                // =6
   29c04: b9001bff     	str	wzr, [sp, #0x18]
   29c08: aa1c03e2     	mov	x2, x28
   29c0c: 79c002e3     	ldrsh	w3, [x23]
   29c10: 94000000     	bl	0x29c10 <syna_sysfs_get_delta_show+0x244>
		0000000000029c10:  R_AARCH64_CALL26	snprintf
   29c14: b9402295     	ldr	w21, [x20, #0x20]
   29c18: aa1b03e0     	mov	x0, x27
   29c1c: 0b1506a8     	add	w8, w21, w21, lsl #1
   29c20: 531f7919     	lsl	w25, w8, #1
   29c24: aa1903e1     	mov	x1, x25
   29c28: 94000000     	bl	0x29c28 <syna_sysfs_get_delta_show+0x25c>
		0000000000029c28:  R_AARCH64_CALL26	strnlen
   29c2c: aa0003f8     	mov	x24, x0
   29c30: b100041f     	cmn	x0, #0x1
   29c34: 540010c0     	b.eq	0x29e4c <syna_sysfs_get_delta_show+0x480>
   29c38: 910063e0     	add	x0, sp, #0x18
   29c3c: 528000c1     	mov	w1, #0x6                // =6
   29c40: 94000000     	bl	0x29c40 <syna_sysfs_get_delta_show+0x274>
		0000000000029c40:  R_AARCH64_CALL26	strnlen
   29c44: f1001c1f     	cmp	x0, #0x7
   29c48: 540010a2     	b.hs	0x29e5c <syna_sysfs_get_delta_show+0x490>
   29c4c: f100181f     	cmp	x0, #0x6
   29c50: 540010e0     	b.eq	0x29e6c <syna_sysfs_get_delta_show+0x4a0>
   29c54: eb19031f     	cmp	x24, x25
   29c58: 54fffc82     	b.hs	0x29be8 <syna_sysfs_get_delta_show+0x21c>
   29c5c: 8b180008     	add	x8, x0, x24
   29c60: d1000729     	sub	x9, x25, #0x1
   29c64: eb19011f     	cmp	x8, x25
   29c68: 9a893115     	csel	x21, x8, x9, lo
   29c6c: b10006bf     	cmn	x21, #0x1
   29c70: 54001060     	b.eq	0x29e7c <syna_sysfs_get_delta_show+0x4b0>
   29c74: aa3803e9     	mvn	x9, x24
   29c78: eb19011f     	cmp	x8, x25
   29c7c: 910063e1     	add	x1, sp, #0x18
   29c80: 8b190129     	add	x9, x9, x25
   29c84: 9a893002     	csel	x2, x0, x9, lo
   29c88: 8b180360     	add	x0, x27, x24
   29c8c: 94000000     	bl	0x29c8c <syna_sysfs_get_delta_show+0x2c0>
		0000000000029c8c:  R_AARCH64_CALL26	memcpy
   29c90: eb1502df     	cmp	x22, x21
   29c94: 54fffa68     	b.hi	0x29be0 <syna_sysfs_get_delta_show+0x214>
   29c98: 1400007d     	b	0x29e8c <syna_sysfs_get_delta_show+0x4c0>
   29c9c: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf02
   29ca0: 91000000     	add	x0, x0, #0x0
		0000000000029ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf02
   29ca4: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8b1
   29ca8: 91000021     	add	x1, x1, #0x0
		0000000000029ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8b1
   29cac: 94000000     	bl	0x29cac <syna_sysfs_get_delta_show+0x2e0>
		0000000000029cac:  R_AARCH64_CALL26	_printk
   29cb0: b94017f3     	ldr	w19, [sp, #0x14]
   29cb4: 17ffffc4     	b	0x29bc4 <syna_sysfs_get_delta_show+0x1f8>
   29cb8: b94013f3     	ldr	w19, [sp, #0x10]
   29cbc: 90000015     	adrp	x21, 0x29000 <syna_spi_write+0x1d4>
		0000000000029cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db5e
   29cc0: 910002b5     	add	x21, x21, #0x0
		0000000000029cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db5e
   29cc4: 17ffff89     	b	0x29ae8 <syna_sysfs_get_delta_show+0x11c>
   29cc8: f94003e8     	ldr	x8, [sp]
   29ccc: 52800241     	mov	w1, #0x12               // =18
   29cd0: 2a1f03e2     	mov	w2, wzr
   29cd4: 52800143     	mov	w3, #0xa                // =10
   29cd8: f9400100     	ldr	x0, [x8]
   29cdc: 94000000     	bl	0x29cdc <syna_sysfs_get_delta_show+0x310>
		0000000000029cdc:  R_AARCH64_CALL26	syna_tcm_enable_report
   29ce0: b4000794     	cbz	x20, 0x29dd0 <syna_sysfs_get_delta_show+0x404>
   29ce4: f9402695     	ldr	x21, [x20, #0x48]
   29ce8: f94007f3     	ldr	x19, [sp, #0x8]
   29cec: b4000a55     	cbz	x21, 0x29e34 <syna_sysfs_get_delta_show+0x468>
   29cf0: f9401ea8     	ldr	x8, [x21, #0x38]
   29cf4: b40001e8     	cbz	x8, 0x29d30 <syna_sysfs_get_delta_show+0x364>
   29cf8: 91014280     	add	x0, x20, #0x50
   29cfc: 94000000     	bl	0x29cfc <syna_sysfs_get_delta_show+0x330>
		0000000000029cfc:  R_AARCH64_CALL26	mutex_lock
   29d00: f9401ea8     	ldr	x8, [x21, #0x38]
   29d04: aa1503e0     	mov	x0, x21
   29d08: 52800021     	mov	w1, #0x1                // =1
   29d0c: b85fc110     	ldur	w16, [x8, #-0x4]
   29d10: 728c3631     	movk	w17, #0x61b1
   29d14: 72a685d1     	movk	w17, #0x342e, lsl #16
   29d18: 6b11021f     	cmp	w16, w17
   29d1c: 54000040     	b.eq	0x29d24 <syna_sysfs_get_delta_show+0x358>
   29d20: d4304500     	brk	#0x8228
   29d24: d63f0100     	blr	x8
   29d28: 91014280     	add	x0, x20, #0x50
   29d2c: 94000000     	bl	0x29d2c <syna_sysfs_get_delta_show+0x360>
		0000000000029d2c:  R_AARCH64_CALL26	mutex_unlock
   29d30: 394183e2     	ldrb	w2, [sp, #0x60]
   29d34: 350005c2     	cbnz	w2, 0x29dec <syna_sysfs_get_delta_show+0x420>
   29d38: f94013f4     	ldr	x20, [sp, #0x20]
   29d3c: 94000000     	bl	0x29d3c <syna_sysfs_get_delta_show+0x370>
		0000000000029d3c:  R_AARCH64_CALL26	syna_request_managed_device
   29d40: b4000620     	cbz	x0, 0x29e04 <syna_sysfs_get_delta_show+0x438>
   29d44: b4000074     	cbz	x20, 0x29d50 <syna_sysfs_get_delta_show+0x384>
   29d48: aa1403e1     	mov	x1, x20
   29d4c: 94000000     	bl	0x29d4c <syna_sysfs_get_delta_show+0x380>
		0000000000029d4c:  R_AARCH64_CALL26	devm_kfree
   29d50: 90000002     	adrp	x2, 0x29000 <syna_spi_write+0x1d4>
		0000000000029d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3f0
   29d54: 91000042     	add	x2, x2, #0x0
		0000000000029d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3f0
   29d58: aa1303e0     	mov	x0, x19
   29d5c: 52820001     	mov	w1, #0x1000             // =4096
   29d60: f90017ff     	str	xzr, [sp, #0x28]
   29d64: 390183ff     	strb	wzr, [sp, #0x60]
   29d68: 94000000     	bl	0x29d68 <syna_sysfs_get_delta_show+0x39c>
		0000000000029d68:  R_AARCH64_CALL26	scnprintf
   29d6c: 14000007     	b	0x29d88 <syna_sysfs_get_delta_show+0x3bc>
   29d70: 90000002     	adrp	x2, 0x29000 <syna_spi_write+0x1d4>
		0000000000029d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b556
   29d74: 91000042     	add	x2, x2, #0x0
		0000000000029d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b556
   29d78: aa1303e0     	mov	x0, x19
   29d7c: 52820001     	mov	w1, #0x1000             // =4096
   29d80: 52800243     	mov	w3, #0x12               // =18
   29d84: 94000000     	bl	0x29d84 <syna_sysfs_get_delta_show+0x3b8>
		0000000000029d84:  R_AARCH64_CALL26	scnprintf
   29d88: d5384108     	mrs	x8, SP_EL0
   29d8c: f9438908     	ldr	x8, [x8, #0x710]
   29d90: f85f83a9     	ldur	x9, [x29, #-0x8]
   29d94: eb09011f     	cmp	x8, x9
   29d98: 540007c1     	b.ne	0x29e90 <syna_sysfs_get_delta_show+0x4c4>
   29d9c: 93407c00     	sxtw	x0, w0
   29da0: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   29da4: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   29da8: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   29dac: a94967fa     	ldp	x26, x25, [sp, #0x90]
   29db0: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   29db4: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   29db8: 910343ff     	add	sp, sp, #0xd0
   29dbc: d50323bf     	autiasp
   29dc0: d65f03c0     	ret
   29dc4: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18472
   29dc8: 91000000     	add	x0, x0, #0x0
		0000000000029dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18472
   29dcc: 14000016     	b	0x29e24 <syna_sysfs_get_delta_show+0x458>
   29dd0: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18472
   29dd4: 91000000     	add	x0, x0, #0x0
		0000000000029dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18472
   29dd8: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d175
   29ddc: 91000021     	add	x1, x1, #0x0
		0000000000029ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d175
   29de0: 94000000     	bl	0x29de0 <syna_sysfs_get_delta_show+0x414>
		0000000000029de0:  R_AARCH64_CALL26	_printk
   29de4: f94007f3     	ldr	x19, [sp, #0x8]
   29de8: 17ffffd2     	b	0x29d30 <syna_sysfs_get_delta_show+0x364>
   29dec: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e68
   29df0: 91000000     	add	x0, x0, #0x0
		0000000000029df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e68
   29df4: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abfc
   29df8: 91000021     	add	x1, x1, #0x0
		0000000000029df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abfc
   29dfc: 94000000     	bl	0x29dfc <syna_sysfs_get_delta_show+0x430>
		0000000000029dfc:  R_AARCH64_CALL26	_printk
   29e00: 17ffffce     	b	0x29d38 <syna_sysfs_get_delta_show+0x36c>
   29e04: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf02
   29e08: 91000000     	add	x0, x0, #0x0
		0000000000029e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf02
   29e0c: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8b1
   29e10: 91000021     	add	x1, x1, #0x0
		0000000000029e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8b1
   29e14: 94000000     	bl	0x29e14 <syna_sysfs_get_delta_show+0x448>
		0000000000029e14:  R_AARCH64_CALL26	_printk
   29e18: 17ffffce     	b	0x29d50 <syna_sysfs_get_delta_show+0x384>
   29e1c: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad4f
   29e20: 91000000     	add	x0, x0, #0x0
		0000000000029e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad4f
   29e24: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d175
   29e28: 91000021     	add	x1, x1, #0x0
		0000000000029e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d175
   29e2c: 94000000     	bl	0x29e2c <syna_sysfs_get_delta_show+0x460>
		0000000000029e2c:  R_AARCH64_CALL26	_printk
   29e30: 17ffff15     	b	0x29a84 <syna_sysfs_get_delta_show+0xb8>
   29e34: 90000000     	adrp	x0, 0x29000 <syna_spi_write+0x1d4>
		0000000000029e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad4f
   29e38: 91000000     	add	x0, x0, #0x0
		0000000000029e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad4f
   29e3c: 90000001     	adrp	x1, 0x29000 <syna_spi_write+0x1d4>
		0000000000029e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d175
   29e40: 91000021     	add	x1, x1, #0x0
		0000000000029e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d175
   29e44: 94000000     	bl	0x29e44 <syna_sysfs_get_delta_show+0x478>
		0000000000029e44:  R_AARCH64_CALL26	_printk
   29e48: 17ffffba     	b	0x29d30 <syna_sysfs_get_delta_show+0x364>
   29e4c: 91000702     	add	x2, x24, #0x1
   29e50: 52800040     	mov	w0, #0x2                // =2
   29e54: 92800001     	mov	x1, #-0x1               // =-1
   29e58: 94000000     	bl	0x29e58 <syna_sysfs_get_delta_show+0x48c>
		0000000000029e58:  R_AARCH64_CALL26	__fortify_panic
   29e5c: 91000402     	add	x2, x0, #0x1
   29e60: 52800040     	mov	w0, #0x2                // =2
   29e64: 528000c1     	mov	w1, #0x6                // =6
   29e68: 94000000     	bl	0x29e68 <syna_sysfs_get_delta_show+0x49c>
		0000000000029e68:  R_AARCH64_CALL26	__fortify_panic
   29e6c: 52800080     	mov	w0, #0x4                // =4
   29e70: 528000c1     	mov	w1, #0x6                // =6
   29e74: 528000e2     	mov	w2, #0x7                // =7
   29e78: 94000000     	bl	0x29e78 <syna_sysfs_get_delta_show+0x4ac>
		0000000000029e78:  R_AARCH64_CALL26	__fortify_panic
   29e7c: 910006a2     	add	x2, x21, #0x1
   29e80: 52800120     	mov	w0, #0x9                // =9
   29e84: 92800001     	mov	x1, #-0x1               // =-1
   29e88: 94000000     	bl	0x29e88 <syna_sysfs_get_delta_show+0x4bc>
		0000000000029e88:  R_AARCH64_CALL26	__fortify_panic
   29e8c: d4200020     	brk	#0x1
   29e90: 94000000     	bl	0x29e90 <syna_sysfs_get_delta_show+0x4c4>
		0000000000029e90:  R_AARCH64_CALL26	__stack_chk_fail
