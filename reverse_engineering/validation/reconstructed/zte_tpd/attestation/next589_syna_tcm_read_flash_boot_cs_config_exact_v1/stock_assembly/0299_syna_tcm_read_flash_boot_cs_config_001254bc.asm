
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ec34 <syna_tcm_read_flash_boot_cs_config>:
   1ec34: d503233f     	paciasp
   1ec38: d10283ff     	sub	sp, sp, #0xa0
   1ec3c: a9057bfd     	stp	x29, x30, [sp, #0x50]
   1ec40: f90033f9     	str	x25, [sp, #0x60]
   1ec44: a9075ff8     	stp	x24, x23, [sp, #0x70]
   1ec48: a90857f6     	stp	x22, x21, [sp, #0x80]
   1ec4c: a9094ff4     	stp	x20, x19, [sp, #0x90]
   1ec50: 910143fd     	add	x29, sp, #0x50
   1ec54: d5384108     	mrs	x8, SP_EL0
   1ec58: f9438908     	ldr	x8, [x8, #0x710]
   1ec5c: f81f83a8     	stur	x8, [x29, #-0x8]
   1ec60: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1ec64: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1ec68: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1ec6c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1ec70: f90003ff     	str	xzr, [sp]
   1ec74: b4001721     	cbz	x1, 0x1ef58 <syna_tcm_read_flash_boot_cs_config+0x324>
   1ec78: aa0203f3     	mov	x19, x2
   1ec7c: b4001742     	cbz	x2, 0x1ef64 <syna_tcm_read_flash_boot_cs_config+0x330>
   1ec80: 39402408     	ldrb	w8, [x0, #0x9]
   1ec84: aa0003f7     	mov	x23, x0
   1ec88: 7100051f     	cmp	w8, #0x1
   1ec8c: 540017a0     	b.eq	0x1ef80 <syna_tcm_read_flash_boot_cs_config+0x34c>
   1ec90: f9401039     	ldr	x25, [x1, #0x20]
   1ec94: aa0103f8     	mov	x24, x1
   1ec98: 39400322     	ldrb	w2, [x25]
   1ec9c: 321f0048     	orr	w8, w2, #0x2
   1eca0: 71000d1f     	cmp	w8, #0x3
   1eca4: 54001ac1     	b.ne	0x1effc <syna_tcm_read_flash_boot_cs_config+0x3c8>
   1eca8: 910003e8     	mov	x8, sp
   1ecac: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ecac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1ecb0: 91000021     	add	x1, x1, #0x0
		000000000001ecb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   1ecb4: 90000002     	adrp	x2, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ecb4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   1ecb8: 91000042     	add	x2, x2, #0x0
		000000000001ecb8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   1ecbc: 91004100     	add	x0, x8, #0x10
   1ecc0: 2a0503f6     	mov	w22, w5
   1ecc4: 2a0403f5     	mov	w21, w4
   1ecc8: 2a0303f4     	mov	w20, w3
   1eccc: a9007fff     	stp	xzr, xzr, [sp]
   1ecd0: 94000000     	bl	0x1ecd0 <syna_tcm_read_flash_boot_cs_config+0x9c>
		000000000001ecd0:  R_AARCH64_CALL26	__mutex_init
   1ecd4: 34000134     	cbz	w20, 0x1ecf8 <syna_tcm_read_flash_boot_cs_config+0xc4>
   1ecd8: 39400328     	ldrb	w8, [x25]
   1ecdc: 7100051f     	cmp	w8, #0x1
   1ece0: 54000440     	b.eq	0x1ed68 <syna_tcm_read_flash_boot_cs_config+0x134>
   1ece4: 71000d1f     	cmp	w8, #0x3
   1ece8: 54000501     	b.ne	0x1ed88 <syna_tcm_read_flash_boot_cs_config+0x154>
   1ecec: 52800228     	mov	w8, #0x11               // =17
   1ecf0: 52800209     	mov	w9, #0x10               // =16
   1ecf4: 1400001f     	b	0x1ed70 <syna_tcm_read_flash_boot_cs_config+0x13c>
   1ecf8: 910003e2     	mov	x2, sp
   1ecfc: aa1703e0     	mov	x0, x23
   1ed00: aa1803e1     	mov	x1, x24
   1ed04: 2a1603e3     	mov	w3, w22
   1ed08: 97ffff40     	bl	0x1ea08 <syna_tcm_read_flash_boot_config>
   1ed0c: 37f81960     	tbnz	w0, #0x1f, 0x1f038 <syna_tcm_read_flash_boot_cs_config+0x404>
   1ed10: b9400ff4     	ldr	w20, [sp, #0xc]
   1ed14: b9400a68     	ldr	w8, [x19, #0x8]
   1ed18: f9400260     	ldr	x0, [x19]
   1ed1c: 6b14011f     	cmp	w8, w20
   1ed20: 54000f02     	b.hs	0x1ef00 <syna_tcm_read_flash_boot_cs_config+0x2cc>
   1ed24: b40000c0     	cbz	x0, 0x1ed3c <syna_tcm_read_flash_boot_cs_config+0x108>
   1ed28: aa0003f5     	mov	x21, x0
   1ed2c: 94000000     	bl	0x1ed2c <syna_tcm_read_flash_boot_cs_config+0xf8>
		000000000001ed2c:  R_AARCH64_CALL26	syna_request_managed_device
   1ed30: b4001f80     	cbz	x0, 0x1f120 <syna_tcm_read_flash_boot_cs_config+0x4ec>
   1ed34: aa1503e1     	mov	x1, x21
   1ed38: 94000000     	bl	0x1ed38 <syna_tcm_read_flash_boot_cs_config+0x104>
		000000000001ed38:  R_AARCH64_CALL26	devm_kfree
   1ed3c: 94000000     	bl	0x1ed3c <syna_tcm_read_flash_boot_cs_config+0x108>
		000000000001ed3c:  R_AARCH64_CALL26	syna_request_managed_device
   1ed40: b4001fe0     	cbz	x0, 0x1f13c <syna_tcm_read_flash_boot_cs_config+0x508>
   1ed44: 7100029f     	cmp	w20, #0x0
   1ed48: 54001e6d     	b.le	0x1f114 <syna_tcm_read_flash_boot_cs_config+0x4e0>
   1ed4c: aa1403e1     	mov	x1, x20
   1ed50: 5281b802     	mov	w2, #0xdc0              // =3520
   1ed54: 94000000     	bl	0x1ed54 <syna_tcm_read_flash_boot_cs_config+0x120>
		000000000001ed54:  R_AARCH64_CALL26	devm_kmalloc
   1ed58: f9000260     	str	x0, [x19]
   1ed5c: b4001fc0     	cbz	x0, 0x1f154 <syna_tcm_read_flash_boot_cs_config+0x520>
   1ed60: b9000a74     	str	w20, [x19, #0x8]
   1ed64: 14000068     	b	0x1ef04 <syna_tcm_read_flash_boot_cs_config+0x2d0>
   1ed68: 528001a8     	mov	w8, #0xd                // =13
   1ed6c: 52800189     	mov	w9, #0xc                // =12
   1ed70: 38696b29     	ldrb	w9, [x25, x9]
   1ed74: 38686b28     	ldrb	w8, [x25, x8]
   1ed78: 2a082128     	orr	w8, w9, w8, lsl #8
   1ed7c: b9402f09     	ldr	w9, [x24, #0x2c]
   1ed80: 1b097d19     	mul	w25, w8, w9
   1ed84: 14000002     	b	0x1ed8c <syna_tcm_read_flash_boot_cs_config+0x158>
   1ed88: 2a1f03f9     	mov	w25, wzr
   1ed8c: b9400bf8     	ldr	w24, [sp, #0x8]
   1ed90: f94003e0     	ldr	x0, [sp]
   1ed94: 6b14031f     	cmp	w24, w20
   1ed98: 54000242     	b.hs	0x1ede0 <syna_tcm_read_flash_boot_cs_config+0x1ac>
   1ed9c: b40000c0     	cbz	x0, 0x1edb4 <syna_tcm_read_flash_boot_cs_config+0x180>
   1eda0: aa0003f8     	mov	x24, x0
   1eda4: 94000000     	bl	0x1eda4 <syna_tcm_read_flash_boot_cs_config+0x170>
		000000000001eda4:  R_AARCH64_CALL26	syna_request_managed_device
   1eda8: b4001620     	cbz	x0, 0x1f06c <syna_tcm_read_flash_boot_cs_config+0x438>
   1edac: aa1803e1     	mov	x1, x24
   1edb0: 94000000     	bl	0x1edb0 <syna_tcm_read_flash_boot_cs_config+0x17c>
		000000000001edb0:  R_AARCH64_CALL26	devm_kfree
   1edb4: 94000000     	bl	0x1edb4 <syna_tcm_read_flash_boot_cs_config+0x180>
		000000000001edb4:  R_AARCH64_CALL26	syna_request_managed_device
   1edb8: b4001680     	cbz	x0, 0x1f088 <syna_tcm_read_flash_boot_cs_config+0x454>
   1edbc: 7100029f     	cmp	w20, #0x0
   1edc0: 540014ad     	b.le	0x1f054 <syna_tcm_read_flash_boot_cs_config+0x420>
   1edc4: 2a1403f8     	mov	w24, w20
   1edc8: 5281b802     	mov	w2, #0xdc0              // =3520
   1edcc: aa1803e1     	mov	x1, x24
   1edd0: 94000000     	bl	0x1edd0 <syna_tcm_read_flash_boot_cs_config+0x19c>
		000000000001edd0:  R_AARCH64_CALL26	devm_kmalloc
   1edd4: f90003e0     	str	x0, [sp]
   1edd8: b4001640     	cbz	x0, 0x1f0a0 <syna_tcm_read_flash_boot_cs_config+0x46c>
   1eddc: b9000bf4     	str	w20, [sp, #0x8]
   1ede0: 2a1f03e1     	mov	w1, wzr
   1ede4: aa1803e2     	mov	x2, x24
   1ede8: 94000000     	bl	0x1ede8 <syna_tcm_read_flash_boot_cs_config+0x1b4>
		000000000001ede8:  R_AARCH64_CALL26	memset
   1edec: b9400a78     	ldr	w24, [x19, #0x8]
   1edf0: f9400260     	ldr	x0, [x19]
   1edf4: b9000fff     	str	wzr, [sp, #0xc]
   1edf8: 6b14031f     	cmp	w24, w20
   1edfc: 54000242     	b.hs	0x1ee44 <syna_tcm_read_flash_boot_cs_config+0x210>
   1ee00: b40000c0     	cbz	x0, 0x1ee18 <syna_tcm_read_flash_boot_cs_config+0x1e4>
   1ee04: aa0003f8     	mov	x24, x0
   1ee08: 94000000     	bl	0x1ee08 <syna_tcm_read_flash_boot_cs_config+0x1d4>
		000000000001ee08:  R_AARCH64_CALL26	syna_request_managed_device
   1ee0c: b40015e0     	cbz	x0, 0x1f0c8 <syna_tcm_read_flash_boot_cs_config+0x494>
   1ee10: aa1803e1     	mov	x1, x24
   1ee14: 94000000     	bl	0x1ee14 <syna_tcm_read_flash_boot_cs_config+0x1e0>
		000000000001ee14:  R_AARCH64_CALL26	devm_kfree
   1ee18: 94000000     	bl	0x1ee18 <syna_tcm_read_flash_boot_cs_config+0x1e4>
		000000000001ee18:  R_AARCH64_CALL26	syna_request_managed_device
   1ee1c: b4001640     	cbz	x0, 0x1f0e4 <syna_tcm_read_flash_boot_cs_config+0x4b0>
   1ee20: 7100029f     	cmp	w20, #0x0
   1ee24: 540011ed     	b.le	0x1f060 <syna_tcm_read_flash_boot_cs_config+0x42c>
   1ee28: 2a1403f8     	mov	w24, w20
   1ee2c: 5281b802     	mov	w2, #0xdc0              // =3520
   1ee30: aa1803e1     	mov	x1, x24
   1ee34: 94000000     	bl	0x1ee34 <syna_tcm_read_flash_boot_cs_config+0x200>
		000000000001ee34:  R_AARCH64_CALL26	devm_kmalloc
   1ee38: f9000260     	str	x0, [x19]
   1ee3c: b4001600     	cbz	x0, 0x1f0fc <syna_tcm_read_flash_boot_cs_config+0x4c8>
   1ee40: b9000a74     	str	w20, [x19, #0x8]
   1ee44: 2a1f03e1     	mov	w1, wzr
   1ee48: aa1803e2     	mov	x2, x24
   1ee4c: 94000000     	bl	0x1ee4c <syna_tcm_read_flash_boot_cs_config+0x218>
		000000000001ee4c:  R_AARCH64_CALL26	memset
   1ee50: f94003e2     	ldr	x2, [sp]
   1ee54: 0b150321     	add	w1, w25, w21
   1ee58: aa1703e0     	mov	x0, x23
   1ee5c: 2a1403e3     	mov	w3, w20
   1ee60: 2a1603e4     	mov	w4, w22
   1ee64: b9000e7f     	str	wzr, [x19, #0xc]
   1ee68: 97fffc36     	bl	0x1df40 <syna_tcm_read_flash>
   1ee6c: 37f80d60     	tbnz	w0, #0x1f, 0x1f018 <syna_tcm_read_flash_boot_cs_config+0x3e4>
   1ee70: f94003e1     	ldr	x1, [sp]
   1ee74: f9400260     	ldr	x0, [x19]
   1ee78: b4000b40     	cbz	x0, 0x1efe0 <syna_tcm_read_flash_boot_cs_config+0x3ac>
   1ee7c: b4000b21     	cbz	x1, 0x1efe0 <syna_tcm_read_flash_boot_cs_config+0x3ac>
   1ee80: b9400a63     	ldr	w3, [x19, #0x8]
   1ee84: b9400be2     	ldr	w2, [sp, #0x8]
   1ee88: 6b03029f     	cmp	w20, w3
   1ee8c: 540009e8     	b.hi	0x1efc8 <syna_tcm_read_flash_boot_cs_config+0x394>
   1ee90: 6b02029f     	cmp	w20, w2
   1ee94: 540009a8     	b.hi	0x1efc8 <syna_tcm_read_flash_boot_cs_config+0x394>
   1ee98: 2a1403e2     	mov	w2, w20
   1ee9c: 94000000     	bl	0x1ee9c <syna_tcm_read_flash_boot_cs_config+0x268>
		000000000001ee9c:  R_AARCH64_CALL26	memcpy
   1eea0: 2a1f03f6     	mov	w22, wzr
   1eea4: b9000e74     	str	w20, [x19, #0xc]
   1eea8: 394103e2     	ldrb	w2, [sp, #0x40]
   1eeac: 35000762     	cbnz	w2, 0x1ef98 <syna_tcm_read_flash_boot_cs_config+0x364>
   1eeb0: f94003f3     	ldr	x19, [sp]
   1eeb4: 94000000     	bl	0x1eeb4 <syna_tcm_read_flash_boot_cs_config+0x280>
		000000000001eeb4:  R_AARCH64_CALL26	syna_request_managed_device
   1eeb8: b40007c0     	cbz	x0, 0x1efb0 <syna_tcm_read_flash_boot_cs_config+0x37c>
   1eebc: b4000073     	cbz	x19, 0x1eec8 <syna_tcm_read_flash_boot_cs_config+0x294>
   1eec0: aa1303e1     	mov	x1, x19
   1eec4: 94000000     	bl	0x1eec4 <syna_tcm_read_flash_boot_cs_config+0x290>
		000000000001eec4:  R_AARCH64_CALL26	devm_kfree
   1eec8: d5384108     	mrs	x8, SP_EL0
   1eecc: f9438908     	ldr	x8, [x8, #0x710]
   1eed0: f85f83a9     	ldur	x9, [x29, #-0x8]
   1eed4: eb09011f     	cmp	x8, x9
   1eed8: 540015a1     	b.ne	0x1f18c <syna_tcm_read_flash_boot_cs_config+0x558>
   1eedc: 2a1603e0     	mov	w0, w22
   1eee0: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   1eee4: f94033f9     	ldr	x25, [sp, #0x60]
   1eee8: a94857f6     	ldp	x22, x21, [sp, #0x80]
   1eeec: a9475ff8     	ldp	x24, x23, [sp, #0x70]
   1eef0: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   1eef4: 910283ff     	add	sp, sp, #0xa0
   1eef8: d50323bf     	autiasp
   1eefc: d65f03c0     	ret
   1ef00: aa0803f4     	mov	x20, x8
   1ef04: 2a1f03e1     	mov	w1, wzr
   1ef08: aa1403e2     	mov	x2, x20
   1ef0c: 94000000     	bl	0x1ef0c <syna_tcm_read_flash_boot_cs_config+0x2d8>
		000000000001ef0c:  R_AARCH64_CALL26	memset
   1ef10: b9400fe8     	ldr	w8, [sp, #0xc]
   1ef14: f94003e1     	ldr	x1, [sp]
   1ef18: 52801009     	mov	w9, #0x80               // =128
   1ef1c: b9000e7f     	str	wzr, [x19, #0xc]
   1ef20: 51022114     	sub	w20, w8, #0x88
   1ef24: 14000003     	b	0x1ef30 <syna_tcm_read_flash_boot_cs_config+0x2fc>
   1ef28: 71002129     	subs	w9, w9, #0x8
   1ef2c: 54fffa40     	b.eq	0x1ee74 <syna_tcm_read_flash_boot_cs_config+0x240>
   1ef30: 0b09010a     	add	w10, w8, w9
   1ef34: 51021d4b     	sub	w11, w10, #0x87
   1ef38: 38ebc82b     	ldrsb	w11, [x1, w11, sxtw]
   1ef3c: 36ffff6b     	tbz	w11, #0x1f, 0x1ef28 <syna_tcm_read_flash_boot_cs_config+0x2f4>
   1ef40: 51023d4a     	sub	w10, w10, #0x8f
   1ef44: 38eac82a     	ldrsb	w10, [x1, w10, sxtw]
   1ef48: 37ffff0a     	tbnz	w10, #0x1f, 0x1ef28 <syna_tcm_read_flash_boot_cs_config+0x2f4>
   1ef4c: 0b090108     	add	w8, w8, w9
   1ef50: 51022114     	sub	w20, w8, #0x88
   1ef54: 17ffffc8     	b	0x1ee74 <syna_tcm_read_flash_boot_cs_config+0x240>
   1ef58: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ef58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2917
   1ef5c: 91000000     	add	x0, x0, #0x0
		000000000001ef5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2917
   1ef60: 14000003     	b	0x1ef6c <syna_tcm_read_flash_boot_cs_config+0x338>
   1ef64: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ef64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0c
   1ef68: 91000000     	add	x0, x0, #0x0
		000000000001ef68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0c
   1ef6c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ef6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1ef70: 91000021     	add	x1, x1, #0x0
		000000000001ef70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1ef74: 94000000     	bl	0x1ef74 <syna_tcm_read_flash_boot_cs_config+0x340>
		000000000001ef74:  R_AARCH64_CALL26	_printk
   1ef78: 12801e16     	mov	w22, #-0xf1             // =-241
   1ef7c: 17ffffd3     	b	0x1eec8 <syna_tcm_read_flash_boot_cs_config+0x294>
   1ef80: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ef80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d6a
   1ef84: 91000000     	add	x0, x0, #0x0
		000000000001ef84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d6a
   1ef88: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ef88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1ef8c: 91000021     	add	x1, x1, #0x0
		000000000001ef8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1ef90: 52800022     	mov	w2, #0x1                // =1
   1ef94: 1400001e     	b	0x1f00c <syna_tcm_read_flash_boot_cs_config+0x3d8>
   1ef98: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001ef98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1ef9c: 91000000     	add	x0, x0, #0x0
		000000000001ef9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1efa0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1efa4: 91000021     	add	x1, x1, #0x0
		000000000001efa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1efa8: 94000000     	bl	0x1efa8 <syna_tcm_read_flash_boot_cs_config+0x374>
		000000000001efa8:  R_AARCH64_CALL26	_printk
   1efac: 17ffffc1     	b	0x1eeb0 <syna_tcm_read_flash_boot_cs_config+0x27c>
   1efb0: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1efb4: 91000000     	add	x0, x0, #0x0
		000000000001efb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1efb8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1efbc: 91000021     	add	x1, x1, #0x0
		000000000001efbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1efc0: 94000000     	bl	0x1efc0 <syna_tcm_read_flash_boot_cs_config+0x38c>
		000000000001efc0:  R_AARCH64_CALL26	_printk
   1efc4: 17ffffc1     	b	0x1eec8 <syna_tcm_read_flash_boot_cs_config+0x294>
   1efc8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1efcc: 91000000     	add	x0, x0, #0x0
		000000000001efcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1efd0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1efd4: 91000021     	add	x1, x1, #0x0
		000000000001efd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1efd8: 2a1403e4     	mov	w4, w20
   1efdc: 94000000     	bl	0x1efdc <syna_tcm_read_flash_boot_cs_config+0x3a8>
		000000000001efdc:  R_AARCH64_CALL26	_printk
   1efe0: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71e8
   1efe4: 91000000     	add	x0, x0, #0x0
		000000000001efe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71e8
   1efe8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001efe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1efec: 91000021     	add	x1, x1, #0x0
		000000000001efec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1eff0: 94000000     	bl	0x1eff0 <syna_tcm_read_flash_boot_cs_config+0x3bc>
		000000000001eff0:  R_AARCH64_CALL26	_printk
   1eff4: 128002b6     	mov	w22, #-0x16             // =-22
   1eff8: 17ffffac     	b	0x1eea8 <syna_tcm_read_flash_boot_cs_config+0x274>
   1effc: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001effc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0c6
   1f000: 91000000     	add	x0, x0, #0x0
		000000000001f000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0c6
   1f004: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1f008: 91000021     	add	x1, x1, #0x0
		000000000001f008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1f00c: 94000000     	bl	0x1f00c <syna_tcm_read_flash_boot_cs_config+0x3d8>
		000000000001f00c:  R_AARCH64_CALL26	_printk
   1f010: 12801e16     	mov	w22, #-0xf1             // =-241
   1f014: 17ffffad     	b	0x1eec8 <syna_tcm_read_flash_boot_cs_config+0x294>
   1f018: 2a0003f6     	mov	w22, w0
   1f01c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f01c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x429b
   1f020: 91000000     	add	x0, x0, #0x0
		000000000001f020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x429b
   1f024: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1f028: 91000021     	add	x1, x1, #0x0
		000000000001f028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1f02c: 0b150322     	add	w2, w25, w21
   1f030: 94000000     	bl	0x1f030 <syna_tcm_read_flash_boot_cs_config+0x3fc>
		000000000001f030:  R_AARCH64_CALL26	_printk
   1f034: 17ffff9d     	b	0x1eea8 <syna_tcm_read_flash_boot_cs_config+0x274>
   1f038: 2a0003f6     	mov	w22, w0
   1f03c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f03c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e73
   1f040: 91000000     	add	x0, x0, #0x0
		000000000001f040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e73
   1f044: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1f048: 91000021     	add	x1, x1, #0x0
		000000000001f048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1f04c: 94000000     	bl	0x1f04c <syna_tcm_read_flash_boot_cs_config+0x418>
		000000000001f04c:  R_AARCH64_CALL26	_printk
   1f050: 17ffff96     	b	0x1eea8 <syna_tcm_read_flash_boot_cs_config+0x274>
   1f054: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1f058: 91000000     	add	x0, x0, #0x0
		000000000001f058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1f05c: 1400000d     	b	0x1f090 <syna_tcm_read_flash_boot_cs_config+0x45c>
   1f060: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1f064: 91000000     	add	x0, x0, #0x0
		000000000001f064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1f068: 14000021     	b	0x1f0ec <syna_tcm_read_flash_boot_cs_config+0x4b8>
   1f06c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f06c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f070: 91000000     	add	x0, x0, #0x0
		000000000001f070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f074: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1f078: 91000021     	add	x1, x1, #0x0
		000000000001f078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1f07c: 94000000     	bl	0x1f07c <syna_tcm_read_flash_boot_cs_config+0x448>
		000000000001f07c:  R_AARCH64_CALL26	_printk
   1f080: 94000000     	bl	0x1f080 <syna_tcm_read_flash_boot_cs_config+0x44c>
		000000000001f080:  R_AARCH64_CALL26	syna_request_managed_device
   1f084: b5ffe9c0     	cbnz	x0, 0x1edbc <syna_tcm_read_flash_boot_cs_config+0x188>
   1f088: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f08c: 91000000     	add	x0, x0, #0x0
		000000000001f08c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f090: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1f094: 91000021     	add	x1, x1, #0x0
		000000000001f094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1f098: 94000000     	bl	0x1f098 <syna_tcm_read_flash_boot_cs_config+0x464>
		000000000001f098:  R_AARCH64_CALL26	_printk
   1f09c: f90003ff     	str	xzr, [sp]
   1f0a0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1f0a4: 91000000     	add	x0, x0, #0x0
		000000000001f0a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1f0a8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1f0ac: 91000021     	add	x1, x1, #0x0
		000000000001f0ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1f0b0: 2a1403e2     	mov	w2, w20
   1f0b4: 94000000     	bl	0x1f0b4 <syna_tcm_read_flash_boot_cs_config+0x480>
		000000000001f0b4:  R_AARCH64_CALL26	_printk
   1f0b8: f90007ff     	str	xzr, [sp, #0x8]
   1f0bc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48bd
   1f0c0: 91000000     	add	x0, x0, #0x0
		000000000001f0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48bd
   1f0c4: 1400002d     	b	0x1f178 <syna_tcm_read_flash_boot_cs_config+0x544>
   1f0c8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f0cc: 91000000     	add	x0, x0, #0x0
		000000000001f0cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f0d0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1f0d4: 91000021     	add	x1, x1, #0x0
		000000000001f0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1f0d8: 94000000     	bl	0x1f0d8 <syna_tcm_read_flash_boot_cs_config+0x4a4>
		000000000001f0d8:  R_AARCH64_CALL26	_printk
   1f0dc: 94000000     	bl	0x1f0dc <syna_tcm_read_flash_boot_cs_config+0x4a8>
		000000000001f0dc:  R_AARCH64_CALL26	syna_request_managed_device
   1f0e0: b5ffea00     	cbnz	x0, 0x1ee20 <syna_tcm_read_flash_boot_cs_config+0x1ec>
   1f0e4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f0e8: 91000000     	add	x0, x0, #0x0
		000000000001f0e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f0ec: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1f0f0: 91000021     	add	x1, x1, #0x0
		000000000001f0f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1f0f4: 94000000     	bl	0x1f0f4 <syna_tcm_read_flash_boot_cs_config+0x4c0>
		000000000001f0f4:  R_AARCH64_CALL26	_printk
   1f0f8: f900027f     	str	xzr, [x19]
   1f0fc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f0fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1f100: 91000000     	add	x0, x0, #0x0
		000000000001f100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1f104: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1f108: 91000021     	add	x1, x1, #0x0
		000000000001f108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1f10c: 2a1403e2     	mov	w2, w20
   1f110: 14000016     	b	0x1f168 <syna_tcm_read_flash_boot_cs_config+0x534>
   1f114: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1f118: 91000000     	add	x0, x0, #0x0
		000000000001f118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1f11c: 1400000a     	b	0x1f144 <syna_tcm_read_flash_boot_cs_config+0x510>
   1f120: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f124: 91000000     	add	x0, x0, #0x0
		000000000001f124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f128: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1f12c: 91000021     	add	x1, x1, #0x0
		000000000001f12c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1f130: 94000000     	bl	0x1f130 <syna_tcm_read_flash_boot_cs_config+0x4fc>
		000000000001f130:  R_AARCH64_CALL26	_printk
   1f134: 94000000     	bl	0x1f134 <syna_tcm_read_flash_boot_cs_config+0x500>
		000000000001f134:  R_AARCH64_CALL26	syna_request_managed_device
   1f138: b5ffe060     	cbnz	x0, 0x1ed44 <syna_tcm_read_flash_boot_cs_config+0x110>
   1f13c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f13c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f140: 91000000     	add	x0, x0, #0x0
		000000000001f140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f144: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1f148: 91000021     	add	x1, x1, #0x0
		000000000001f148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1f14c: 94000000     	bl	0x1f14c <syna_tcm_read_flash_boot_cs_config+0x518>
		000000000001f14c:  R_AARCH64_CALL26	_printk
   1f150: f900027f     	str	xzr, [x19]
   1f154: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1f158: 91000000     	add	x0, x0, #0x0
		000000000001f158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1f15c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f15c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1f160: 91000021     	add	x1, x1, #0x0
		000000000001f160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1f164: 2a1403e2     	mov	w2, w20
   1f168: 94000000     	bl	0x1f168 <syna_tcm_read_flash_boot_cs_config+0x534>
		000000000001f168:  R_AARCH64_CALL26	_printk
   1f16c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286f
   1f170: 91000000     	add	x0, x0, #0x0
		000000000001f170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286f
   1f174: f900067f     	str	xzr, [x19, #0x8]
   1f178: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0f2
   1f17c: 91000021     	add	x1, x1, #0x0
		000000000001f17c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0f2
   1f180: 94000000     	bl	0x1f180 <syna_tcm_read_flash_boot_cs_config+0x54c>
		000000000001f180:  R_AARCH64_CALL26	_printk
   1f184: 12801e56     	mov	w22, #-0xf3             // =-243
   1f188: 17ffff48     	b	0x1eea8 <syna_tcm_read_flash_boot_cs_config+0x274>
   1f18c: 94000000     	bl	0x1f18c <syna_tcm_read_flash_boot_cs_config+0x558>
		000000000001f18c:  R_AARCH64_CALL26	__stack_chk_fail
