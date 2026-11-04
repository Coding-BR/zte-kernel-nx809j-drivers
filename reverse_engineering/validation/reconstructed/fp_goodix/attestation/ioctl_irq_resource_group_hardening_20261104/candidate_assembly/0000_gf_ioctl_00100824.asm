
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019b4 <gf_ioctl>:
    19b4: d503233f     	paciasp
    19b8: d10143ff     	sub	sp, sp, #0x50
    19bc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    19c0: f9001bf5     	str	x21, [sp, #0x30]
    19c4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    19c8: 910083fd     	add	x29, sp, #0x20
    19cc: d5384108     	mrs	x8, SP_EL0
    19d0: 528ce009     	mov	w9, #0x6700             // =26368
    19d4: 12181c2a     	and	w10, w1, #0xff00
    19d8: f9438908     	ldr	x8, [x8, #0x710]
    19dc: 6b09015f     	cmp	w10, w9
    19e0: f81f83a8     	stur	x8, [x29, #-0x8]
    19e4: 52800328     	mov	w8, #0x19               // =25
    19e8: b90007ff     	str	wzr, [sp, #0x4]
    19ec: 390003e8     	strb	w8, [sp]
    19f0: 54001881     	b.ne	0x1d00 <gf_ioctl+0x34c>
    19f4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    19f8: 37f800a1     	tbnz	w1, #0x1f, 0x1a0c <gf_ioctl+0x58>
    19fc: 531e7c28     	lsr	w8, w1, #30
    1a00: 34000248     	cbz	w8, 0x1a48 <gf_ioctl+0x94>
    1a04: d5384109     	mrs	x9, SP_EL0
    1a08: 14000002     	b	0x1a10 <gf_ioctl+0x5c>
    1a0c: d5384109     	mrs	x9, SP_EL0
    1a10: 3941192a     	ldrb	w10, [x9, #0x46]
    1a14: 53107428     	ubfx	w8, w1, #16, #14
    1a18: 3728008a     	tbnz	w10, #0x5, 0x1a28 <gf_ioctl+0x74>
    1a1c: f940012a     	ldr	x10, [x9]
    1a20: aa0203e9     	mov	x9, x2
    1a24: 36d0006a     	tbz	w10, #0x1a, 0x1a30 <gf_ioctl+0x7c>
    1a28: d378dc49     	lsl	x9, x2, #8
    1a2c: 8a892049     	and	x9, x2, x9, asr #8
    1a30: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    1a34: cb080148     	sub	x8, x10, x8
    1a38: eb09011f     	cmp	x8, x9
    1a3c: 54000062     	b.hs	0x1a48 <gf_ioctl+0x94>
    1a40: 928001a0     	mov	x0, #-0xe               // =-14
    1a44: 140000b0     	b	0x1d04 <gf_ioctl+0x350>
    1a48: 90000013     	adrp	x19, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001a48:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x70
    1a4c: 39400268     	ldrb	w8, [x19]
		0000000000001a4c:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1a50: 34000fc8     	cbz	w8, 0x1c48 <gf_ioctl+0x294>
    1a54: 528ce0c8     	mov	w8, #0x6706             // =26374
    1a58: aa1f03e0     	mov	x0, xzr
    1a5c: 6b08003f     	cmp	w1, w8
    1a60: 540001cd     	b.le	0x1a98 <gf_ioctl+0xe4>
    1a64: 528ce088     	mov	w8, #0x6704             // =26372
    1a68: 72a80088     	movk	w8, #0x4004, lsl #16
    1a6c: 6b08003f     	cmp	w1, w8
    1a70: 540005ad     	b.le	0x1b24 <gf_ioctl+0x170>
    1a74: 528ce1a8     	mov	w8, #0x670d             // =26381
    1a78: 72a80088     	movk	w8, #0x4004, lsl #16
    1a7c: 6b08003f     	cmp	w1, w8
    1a80: 540009ec     	b.gt	0x1bbc <gf_ioctl+0x208>
    1a84: 528ce0a8     	mov	w8, #0x6705             // =26373
    1a88: 72a80088     	movk	w8, #0x4004, lsl #16
    1a8c: 6b08003f     	cmp	w1, w8
    1a90: 540013a0     	b.eq	0x1d04 <gf_ioctl+0x350>
    1a94: 140000a7     	b	0x1d30 <gf_ioctl+0x37c>
    1a98: 528ce048     	mov	w8, #0x6702             // =26370
    1a9c: 6b08003f     	cmp	w1, w8
    1aa0: 5400026d     	b.le	0x1aec <gf_ioctl+0x138>
    1aa4: 528ce0c8     	mov	w8, #0x6706             // =26374
    1aa8: 6b08003f     	cmp	w1, w8
    1aac: 540012c0     	b.eq	0x1d04 <gf_ioctl+0x350>
    1ab0: 528ce068     	mov	w8, #0x6703             // =26371
    1ab4: 6b08003f     	cmp	w1, w8
    1ab8: 54001a80     	b.eq	0x1e08 <gf_ioctl+0x454>
    1abc: 528ce088     	mov	w8, #0x6704             // =26372
    1ac0: 6b08003f     	cmp	w1, w8
    1ac4: 54001361     	b.ne	0x1d30 <gf_ioctl+0x37c>
    1ac8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001ac8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0bba
    1acc: 91000000     	add	x0, x0, #0x0
		0000000000001acc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0bba
    1ad0: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001ad0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1ad4: 91000021     	add	x1, x1, #0x0
		0000000000001ad4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1ad8: 94000000     	bl	0x1ad8 <gf_ioctl+0x124>
		0000000000001ad8:  R_AARCH64_CALL26	_printk
    1adc: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001adc:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1ae0: 91000000     	add	x0, x0, #0x0
		0000000000001ae0:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1ae4: 940001e1     	bl	0x2268 <gf_parse_dts+0x314>
		0000000000001ae4:  R_AARCH64_CALL26	gf_disable_irq
    1ae8: 140000aa     	b	0x1d90 <gf_ioctl+0x3dc>
    1aec: 528ce008     	mov	w8, #0x6700             // =26368
    1af0: 6b08003f     	cmp	w1, w8
    1af4: 5400044c     	b.gt	0x1b7c <gf_ioctl+0x1c8>
    1af8: 528ce008     	mov	w8, #0x6700             // =26368
    1afc: 72b00028     	movk	w8, #0x8001, lsl #16
    1b00: 6b08003f     	cmp	w1, w8
    1b04: 54000d80     	b.eq	0x1cb4 <gf_ioctl+0x300>
    1b08: 528ce168     	mov	w8, #0x670b             // =26379
    1b0c: 72b00028     	movk	w8, #0x8001, lsl #16
    1b10: 6b08003f     	cmp	w1, w8
    1b14: 540010e1     	b.ne	0x1d30 <gf_ioctl+0x37c>
    1b18: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001b18:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_04b3
    1b1c: 91000000     	add	x0, x0, #0x0
		0000000000001b1c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_04b3
    1b20: 14000099     	b	0x1d84 <gf_ioctl+0x3d0>
    1b24: 528ce128     	mov	w8, #0x6709             // =26377
    1b28: 6b08003f     	cmp	w1, w8
    1b2c: 54000a6c     	b.gt	0x1c78 <gf_ioctl+0x2c4>
    1b30: 528ce0e8     	mov	w8, #0x6707             // =26375
    1b34: 6b08003f     	cmp	w1, w8
    1b38: 54001040     	b.eq	0x1d40 <gf_ioctl+0x38c>
    1b3c: 528ce108     	mov	w8, #0x6708             // =26376
    1b40: 6b08003f     	cmp	w1, w8
    1b44: 54000f61     	b.ne	0x1d30 <gf_ioctl+0x37c>
    1b48: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001b48:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0167
    1b4c: 91000000     	add	x0, x0, #0x0
		0000000000001b4c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0167
    1b50: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001b50:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1b54: 91000021     	add	x1, x1, #0x0
		0000000000001b54:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1b58: 94000000     	bl	0x1b58 <gf_ioctl+0x1a4>
		0000000000001b58:  R_AARCH64_CALL26	_printk
    1b5c: 39400268     	ldrb	w8, [x19]
		0000000000001b5c:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1b60: 34001e88     	cbz	w8, 0x1f30 <gf_ioctl+0x57c>
    1b64: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001b64:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1b68: 91000000     	add	x0, x0, #0x0
		0000000000001b68:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1b6c: 94000000     	bl	0x1b6c <gf_ioctl+0x1b8>
		0000000000001b6c:  R_AARCH64_CALL26	gf_power_off
    1b70: aa1f03e0     	mov	x0, xzr
    1b74: 3900027f     	strb	wzr, [x19]
		0000000000001b74:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1b78: 14000063     	b	0x1d04 <gf_ioctl+0x350>
    1b7c: 528ce028     	mov	w8, #0x6701             // =26369
    1b80: 6b08003f     	cmp	w1, w8
    1b84: 54000b20     	b.eq	0x1ce8 <gf_ioctl+0x334>
    1b88: 528ce048     	mov	w8, #0x6702             // =26370
    1b8c: 6b08003f     	cmp	w1, w8
    1b90: 54000d01     	b.ne	0x1d30 <gf_ioctl+0x37c>
    1b94: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001b94:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0149
    1b98: 91000000     	add	x0, x0, #0x0
		0000000000001b98:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0149
    1b9c: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001b9c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1ba0: 91000021     	add	x1, x1, #0x0
		0000000000001ba0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1ba4: 94000000     	bl	0x1ba4 <gf_ioctl+0x1f0>
		0000000000001ba4:  R_AARCH64_CALL26	_printk
    1ba8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001ba8:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1bac: 91000000     	add	x0, x0, #0x0
		0000000000001bac:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1bb0: 528000a1     	mov	w1, #0x5                // =5
    1bb4: 94000000     	bl	0x1bb4 <gf_ioctl+0x200>
		0000000000001bb4:  R_AARCH64_CALL26	gf_hw_reset
    1bb8: 14000076     	b	0x1d90 <gf_ioctl+0x3dc>
    1bbc: 528ce1c8     	mov	w8, #0x670e             // =26382
    1bc0: 72a80088     	movk	w8, #0x4004, lsl #16
    1bc4: 6b08003f     	cmp	w1, w8
    1bc8: 54001040     	b.eq	0x1dd0 <gf_ioctl+0x41c>
    1bcc: 528ce128     	mov	w8, #0x6709             // =26377
    1bd0: 72a80108     	movk	w8, #0x4008, lsl #16
    1bd4: 6b08003f     	cmp	w1, w8
    1bd8: 54000e00     	b.eq	0x1d98 <gf_ioctl+0x3e4>
    1bdc: 528ce1a8     	mov	w8, #0x670d             // =26381
    1be0: 72a80108     	movk	w8, #0x4008, lsl #16
    1be4: 6b08003f     	cmp	w1, w8
    1be8: 54000a41     	b.ne	0x1d30 <gf_ioctl+0x37c>
    1bec: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001bec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fcc
    1bf0: 91000000     	add	x0, x0, #0x0
		0000000000001bf0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fcc
    1bf4: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001bf4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1bf8: 91000021     	add	x1, x1, #0x0
		0000000000001bf8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1bfc: aa0203f3     	mov	x19, x2
    1c00: 94000000     	bl	0x1c00 <gf_ioctl+0x24c>
		0000000000001c00:  R_AARCH64_CALL26	_printk
    1c04: 910043e0     	add	x0, sp, #0x10
    1c08: aa1303e1     	mov	x1, x19
    1c0c: 52800102     	mov	w2, #0x8                // =8
    1c10: 9400025a     	bl	0x2578 <_inline_copy_from_user+0x23c>
		0000000000001c10:  R_AARCH64_CALL26	_inline_copy_from_user
    1c14: b5fff160     	cbnz	x0, 0x1a40 <gf_ioctl+0x8c>
    1c18: 394043e1     	ldrb	w1, [sp, #0x10]
    1c1c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001c1c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_018d
    1c20: 91000000     	add	x0, x0, #0x0
		0000000000001c20:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_018d
    1c24: 94000000     	bl	0x1c24 <gf_ioctl+0x270>
		0000000000001c24:  R_AARCH64_CALL26	_printk
    1c28: 394047e1     	ldrb	w1, [sp, #0x11]
    1c2c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001c2c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e07
    1c30: 91000000     	add	x0, x0, #0x0
		0000000000001c30:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e07
    1c34: 94000000     	bl	0x1c34 <gf_ioctl+0x280>
		0000000000001c34:  R_AARCH64_CALL26	_printk
    1c38: 39404be1     	ldrb	w1, [sp, #0x12]
    1c3c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001c3c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09e4
    1c40: 91000000     	add	x0, x0, #0x0
		0000000000001c40:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09e4
    1c44: 1400003d     	b	0x1d38 <gf_ioctl+0x384>
    1c48: 128ce0c8     	mov	w8, #-0x6707            // =-26375
    1c4c: 0b080028     	add	w8, w1, w8
    1c50: 7100051f     	cmp	w8, #0x1
    1c54: 54000508     	b.hi	0x1cf4 <gf_ioctl+0x340>
    1c58: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001c58:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0131
    1c5c: 91000000     	add	x0, x0, #0x0
		0000000000001c5c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0131
    1c60: 2a0103f4     	mov	w20, w1
    1c64: aa0203f5     	mov	x21, x2
    1c68: 94000000     	bl	0x1c68 <gf_ioctl+0x2b4>
		0000000000001c68:  R_AARCH64_CALL26	_printk
    1c6c: aa1503e2     	mov	x2, x21
    1c70: 2a1403e1     	mov	w1, w20
    1c74: 17ffff78     	b	0x1a54 <gf_ioctl+0xa0>
    1c78: 528ce148     	mov	w8, #0x670a             // =26378
    1c7c: 6b08003f     	cmp	w1, w8
    1c80: 540007e0     	b.eq	0x1d7c <gf_ioctl+0x3c8>
    1c84: 528ce188     	mov	w8, #0x670c             // =26380
    1c88: 6b08003f     	cmp	w1, w8
    1c8c: 54000521     	b.ne	0x1d30 <gf_ioctl+0x37c>
    1c90: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001c90:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_00c2
    1c94: 91000000     	add	x0, x0, #0x0
		0000000000001c94:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_00c2
    1c98: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001c98:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1c9c: 91000021     	add	x1, x1, #0x0
		0000000000001c9c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1ca0: 94000000     	bl	0x1ca0 <gf_ioctl+0x2ec>
		0000000000001ca0:  R_AARCH64_CALL26	_printk
    1ca4: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001ca4:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1ca8: 91000000     	add	x0, x0, #0x0
		0000000000001ca8:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1cac: 94000000     	bl	0x1cac <gf_ioctl+0x2f8>
		0000000000001cac:  R_AARCH64_CALL26	gf_cleanup
    1cb0: 14000038     	b	0x1d90 <gf_ioctl+0x3dc>
    1cb4: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001cb4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_00a5
    1cb8: 91000000     	add	x0, x0, #0x0
		0000000000001cb8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_00a5
    1cbc: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001cbc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1cc0: 91000021     	add	x1, x1, #0x0
		0000000000001cc0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1cc4: aa0203f3     	mov	x19, x2
    1cc8: 94000000     	bl	0x1cc8 <gf_ioctl+0x314>
		0000000000001cc8:  R_AARCH64_CALL26	_printk
    1ccc: 910003e1     	mov	x1, sp
    1cd0: aa1303e0     	mov	x0, x19
    1cd4: 940001fe     	bl	0x24cc <_inline_copy_from_user+0x190>
		0000000000001cd4:  R_AARCH64_CALL26	_inline_copy_to_user
    1cd8: 928001a8     	mov	x8, #-0xe               // =-14
    1cdc: f100001f     	cmp	x0, #0x0
    1ce0: 9a8803e0     	csel	x0, xzr, x8, eq
    1ce4: 14000008     	b	0x1d04 <gf_ioctl+0x350>
    1ce8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001ce8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09c7
    1cec: 91000000     	add	x0, x0, #0x0
		0000000000001cec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09c7
    1cf0: 14000025     	b	0x1d84 <gf_ioctl+0x3d0>
    1cf4: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001cf4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0078
    1cf8: 91000000     	add	x0, x0, #0x0
		0000000000001cf8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0078
    1cfc: 94000000     	bl	0x1cfc <gf_ioctl+0x348>
		0000000000001cfc:  R_AARCH64_CALL26	_printk
    1d00: 92800240     	mov	x0, #-0x13              // =-19
    1d04: d5384108     	mrs	x8, SP_EL0
    1d08: f9438908     	ldr	x8, [x8, #0x710]
    1d0c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1d10: eb09011f     	cmp	x8, x9
    1d14: 540011c1     	b.ne	0x1f4c <gf_ioctl+0x598>
    1d18: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1d1c: f9401bf5     	ldr	x21, [sp, #0x30]
    1d20: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1d24: 910143ff     	add	sp, sp, #0x50
    1d28: d50323bf     	autiasp
    1d2c: d65f03c0     	ret
    1d30: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001d30:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e21
    1d34: 91000000     	add	x0, x0, #0x0
		0000000000001d34:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e21
    1d38: 94000000     	bl	0x1d38 <gf_ioctl+0x384>
		0000000000001d38:  R_AARCH64_CALL26	_printk
    1d3c: 14000015     	b	0x1d90 <gf_ioctl+0x3dc>
    1d40: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001d40:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_037c
    1d44: 91000000     	add	x0, x0, #0x0
		0000000000001d44:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_037c
    1d48: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001d48:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1d4c: 91000021     	add	x1, x1, #0x0
		0000000000001d4c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1d50: 94000000     	bl	0x1d50 <gf_ioctl+0x39c>
		0000000000001d50:  R_AARCH64_CALL26	_printk
    1d54: 39400268     	ldrb	w8, [x19]
		0000000000001d54:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1d58: 7100051f     	cmp	w8, #0x1
    1d5c: 54000e20     	b.eq	0x1f20 <gf_ioctl+0x56c>
    1d60: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001d60:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1d64: 91000000     	add	x0, x0, #0x0
		0000000000001d64:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1d68: 94000000     	bl	0x1d68 <gf_ioctl+0x3b4>
		0000000000001d68:  R_AARCH64_CALL26	gf_power_on
    1d6c: 52800028     	mov	w8, #0x1                // =1
    1d70: aa1f03e0     	mov	x0, xzr
    1d74: 39000268     	strb	w8, [x19]
		0000000000001d74:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1d78: 17ffffe3     	b	0x1d04 <gf_ioctl+0x350>
    1d7c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001d7c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_048a
    1d80: 91000000     	add	x0, x0, #0x0
		0000000000001d80:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_048a
    1d84: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001d84:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1d88: 91000021     	add	x1, x1, #0x0
		0000000000001d88:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1d8c: 94000000     	bl	0x1d8c <gf_ioctl+0x3d8>
		0000000000001d8c:  R_AARCH64_CALL26	_printk
    1d90: aa1f03e0     	mov	x0, xzr
    1d94: 17ffffdc     	b	0x1d04 <gf_ioctl+0x350>
    1d98: 910023e0     	add	x0, sp, #0x8
    1d9c: aa0203e1     	mov	x1, x2
    1da0: 52800102     	mov	w2, #0x8                // =8
    1da4: 940001f5     	bl	0x2578 <_inline_copy_from_user+0x23c>
		0000000000001da4:  R_AARCH64_CALL26	_inline_copy_from_user
    1da8: b50003e0     	cbnz	x0, 0x1e24 <gf_ioctl+0x470>
    1dac: b9400be3     	ldr	w3, [sp, #0x8]
    1db0: 7100047f     	cmp	w3, #0x1
    1db4: 54000460     	b.eq	0x1e40 <gf_ioctl+0x48c>
    1db8: 7100147f     	cmp	w3, #0x5
    1dbc: 540003e0     	b.eq	0x1e38 <gf_ioctl+0x484>
    1dc0: 7100087f     	cmp	w3, #0x2
    1dc4: 54000421     	b.ne	0x1e48 <gf_ioctl+0x494>
    1dc8: 52800e93     	mov	w19, #0x74              // =116
    1dcc: 14000020     	b	0x1e4c <gf_ioctl+0x498>
    1dd0: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0468
    1dd4: 91000000     	add	x0, x0, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0468
    1dd8: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001dd8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1ddc: 91000021     	add	x1, x1, #0x0
		0000000000001ddc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1de0: aa0203f3     	mov	x19, x2
    1de4: 94000000     	bl	0x1de4 <gf_ioctl+0x430>
		0000000000001de4:  R_AARCH64_CALL26	_printk
    1de8: 910013e0     	add	x0, sp, #0x4
    1dec: aa1303e1     	mov	x1, x19
    1df0: 52800082     	mov	w2, #0x4                // =4
    1df4: 940001e1     	bl	0x2578 <_inline_copy_from_user+0x23c>
		0000000000001df4:  R_AARCH64_CALL26	_inline_copy_from_user
    1df8: b5000a40     	cbnz	x0, 0x1f40 <gf_ioctl+0x58c>
    1dfc: b94007e0     	ldr	w0, [sp, #0x4]
    1e00: 9400013f     	bl	0x22fc <_inline_copy_to_user+0x6c>
		0000000000001e00:  R_AARCH64_CALL26	nav_event_input
    1e04: 17ffffe3     	b	0x1d90 <gf_ioctl+0x3dc>
    1e08: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0c97
    1e0c: 91000000     	add	x0, x0, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0c97
    1e10: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001e10:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1e14: 91000021     	add	x1, x1, #0x0
		0000000000001e14:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1e18: 94000000     	bl	0x1e18 <gf_ioctl+0x464>
		0000000000001e18:  R_AARCH64_CALL26	_printk
    1e1c: 94000123     	bl	0x22a8 <_inline_copy_to_user+0x18>
		0000000000001e1c:  R_AARCH64_CALL26	gf_enable_irq
    1e20: 17ffffdc     	b	0x1d90 <gf_ioctl+0x3dc>
    1e24: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001e24:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_10a9
    1e28: 91000000     	add	x0, x0, #0x0
		0000000000001e28:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_10a9
    1e2c: 94000000     	bl	0x1e2c <gf_ioctl+0x478>
		0000000000001e2c:  R_AARCH64_CALL26	_printk
    1e30: 928001a0     	mov	x0, #-0xe               // =-14
    1e34: 17ffffb4     	b	0x1d04 <gf_ioctl+0x350>
    1e38: 52801a93     	mov	w19, #0xd4              // =212
    1e3c: 14000004     	b	0x1e4c <gf_ioctl+0x498>
    1e40: 52800cd3     	mov	w19, #0x66              // =102
    1e44: 14000002     	b	0x1e4c <gf_ioctl+0x498>
    1e48: 2a0303f3     	mov	w19, w3
    1e4c: b9400fe4     	ldr	w4, [sp, #0xc]
    1e50: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001e50:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_023e
    1e54: 91000000     	add	x0, x0, #0x0
		0000000000001e54:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_023e
    1e58: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001e58:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_070a
    1e5c: 91000021     	add	x1, x1, #0x0
		0000000000001e5c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_070a
    1e60: 2a1303e2     	mov	w2, w19
    1e64: 94000000     	bl	0x1e64 <gf_ioctl+0x4b0>
		0000000000001e64:  R_AARCH64_CALL26	_printk
    1e68: b9400be8     	ldr	w8, [sp, #0x8]
    1e6c: 7100151f     	cmp	w8, #0x5
    1e70: 54000060     	b.eq	0x1e7c <gf_ioctl+0x4c8>
    1e74: 7100091f     	cmp	w8, #0x2
    1e78: 54000341     	b.ne	0x1ee0 <gf_ioctl+0x52c>
    1e7c: b9400fe8     	ldr	w8, [sp, #0xc]
    1e80: 7100051f     	cmp	w8, #0x1
    1e84: 54fff861     	b.ne	0x1d90 <gf_ioctl+0x3dc>
    1e88: 90000014     	adrp	x20, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001e88:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
    1e8c: 52800021     	mov	w1, #0x1                // =1
    1e90: 2a1303e2     	mov	w2, w19
    1e94: f9400280     	ldr	x0, [x20]
		0000000000001e94:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1e98: 52800023     	mov	w3, #0x1                // =1
    1e9c: 94000000     	bl	0x1e9c <gf_ioctl+0x4e8>
		0000000000001e9c:  R_AARCH64_CALL26	input_event
    1ea0: f9400280     	ldr	x0, [x20]
		0000000000001ea0:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1ea4: 2a1f03e1     	mov	w1, wzr
    1ea8: 2a1f03e2     	mov	w2, wzr
    1eac: 2a1f03e3     	mov	w3, wzr
    1eb0: 94000000     	bl	0x1eb0 <gf_ioctl+0x4fc>
		0000000000001eb0:  R_AARCH64_CALL26	input_event
    1eb4: f9400280     	ldr	x0, [x20]
		0000000000001eb4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1eb8: 52800021     	mov	w1, #0x1                // =1
    1ebc: 2a1303e2     	mov	w2, w19
    1ec0: 2a1f03e3     	mov	w3, wzr
    1ec4: 94000000     	bl	0x1ec4 <gf_ioctl+0x510>
		0000000000001ec4:  R_AARCH64_CALL26	input_event
    1ec8: f9400280     	ldr	x0, [x20]
		0000000000001ec8:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1ecc: 2a1f03e1     	mov	w1, wzr
    1ed0: 2a1f03e2     	mov	w2, wzr
    1ed4: 2a1f03e3     	mov	w3, wzr
    1ed8: 94000000     	bl	0x1ed8 <gf_ioctl+0x524>
		0000000000001ed8:  R_AARCH64_CALL26	input_event
    1edc: b9400be8     	ldr	w8, [sp, #0x8]
    1ee0: 7100051f     	cmp	w8, #0x1
    1ee4: 54fff561     	b.ne	0x1d90 <gf_ioctl+0x3dc>
    1ee8: b9400fe8     	ldr	w8, [sp, #0xc]
    1eec: 90000014     	adrp	x20, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
    1ef0: 52800021     	mov	w1, #0x1                // =1
    1ef4: f9400280     	ldr	x0, [x20]
		0000000000001ef4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1ef8: 2a1303e2     	mov	w2, w19
    1efc: 7100011f     	cmp	w8, #0x0
    1f00: 1a9f07e3     	cset	w3, ne
    1f04: 94000000     	bl	0x1f04 <gf_ioctl+0x550>
		0000000000001f04:  R_AARCH64_CALL26	input_event
    1f08: f9400280     	ldr	x0, [x20]
		0000000000001f08:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1f0c: 2a1f03e1     	mov	w1, wzr
    1f10: 2a1f03e2     	mov	w2, wzr
    1f14: 2a1f03e3     	mov	w3, wzr
    1f18: 94000000     	bl	0x1f18 <gf_ioctl+0x564>
		0000000000001f18:  R_AARCH64_CALL26	input_event
    1f1c: 17ffff9d     	b	0x1d90 <gf_ioctl+0x3dc>
    1f20: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001f20:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06dd
    1f24: 91000000     	add	x0, x0, #0x0
		0000000000001f24:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06dd
    1f28: 94000000     	bl	0x1f28 <gf_ioctl+0x574>
		0000000000001f28:  R_AARCH64_CALL26	_printk
    1f2c: 17ffff90     	b	0x1d6c <gf_ioctl+0x3b8>
    1f30: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001f30:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0000
    1f34: 91000000     	add	x0, x0, #0x0
		0000000000001f34:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0000
    1f38: 94000000     	bl	0x1f38 <gf_ioctl+0x584>
		0000000000001f38:  R_AARCH64_CALL26	_printk
    1f3c: 17ffff0d     	b	0x1b70 <gf_ioctl+0x1bc>
    1f40: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001f40:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0dcc
    1f44: 91000000     	add	x0, x0, #0x0
		0000000000001f44:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0dcc
    1f48: 17ffffb9     	b	0x1e2c <gf_ioctl+0x478>
    1f4c: 94000000     	bl	0x1f4c <gf_ioctl+0x598>
		0000000000001f4c:  R_AARCH64_CALL26	__stack_chk_fail
