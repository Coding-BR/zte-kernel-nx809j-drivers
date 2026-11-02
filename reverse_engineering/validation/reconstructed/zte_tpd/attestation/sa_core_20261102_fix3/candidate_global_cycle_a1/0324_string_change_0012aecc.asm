
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ac58 <string_change>:
   1ac58: d503233f     	paciasp
   1ac5c: d102c3ff     	sub	sp, sp, #0xb0
   1ac60: a9057bfd     	stp	x29, x30, [sp, #0x50]
   1ac64: a9066ffc     	stp	x28, x27, [sp, #0x60]
   1ac68: a90767fa     	stp	x26, x25, [sp, #0x70]
   1ac6c: a9085ff8     	stp	x24, x23, [sp, #0x80]
   1ac70: a90957f6     	stp	x22, x21, [sp, #0x90]
   1ac74: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
   1ac78: 910143fd     	add	x29, sp, #0x50
   1ac7c: d5384108     	mrs	x8, SP_EL0
   1ac80: aa0203f3     	mov	x19, x2
   1ac84: f9438908     	ldr	x8, [x8, #0x710]
   1ac88: f81f83a8     	stur	x8, [x29, #-0x8]
   1ac8c: b4000921     	cbz	x1, 0x1adb0 <string_change+0x158>
   1ac90: 39400028     	ldrb	w8, [x1]
   1ac94: aa0103f5     	mov	x21, x1
   1ac98: 340008c8     	cbz	w8, 0x1adb0 <string_change+0x158>
   1ac9c: f90013e0     	str	x0, [sp, #0x20]
   1aca0: aa1503e0     	mov	x0, x21
   1aca4: 94000000     	bl	0x1aca4 <string_change+0x4c>
		000000000001aca4:  R_AARCH64_CALL26	strlen
   1aca8: aa0003f6     	mov	x22, x0
   1acac: d503201f     	nop
   1acb0: 910006c0     	add	x0, x22, #0x1
   1acb4: 52819801     	mov	w1, #0xcc0              // =3264
   1acb8: 94000000     	bl	0x1acb8 <string_change+0x60>
		000000000001acb8:  R_AARCH64_CALL26	__kmalloc_noprof
   1acbc: aa0003f4     	mov	x20, x0
   1acc0: b4002954     	cbz	x20, 0x1b1e8 <string_change+0x590>
   1acc4: 910006c2     	add	x2, x22, #0x1
   1acc8: aa1403e0     	mov	x0, x20
   1accc: aa1503e1     	mov	x1, x21
   1acd0: 94000000     	bl	0x1acd0 <string_change+0x78>
		000000000001acd0:  R_AARCH64_CALL26	memcpy
   1acd4: aa1503e0     	mov	x0, x21
   1acd8: 94000000     	bl	0x1acd8 <string_change+0x80>
		000000000001acd8:  R_AARCH64_CALL26	strlen
   1acdc: 8b000416     	add	x22, x0, x0, lsl #1
   1ace0: d503201f     	nop
   1ace4: aa1603e0     	mov	x0, x22
   1ace8: 52819801     	mov	w1, #0xcc0              // =3264
   1acec: 94000000     	bl	0x1acec <string_change+0x94>
		000000000001acec:  R_AARCH64_CALL26	__kmalloc_noprof
   1acf0: aa0003f5     	mov	x21, x0
   1acf4: aa1403e0     	mov	x0, x20
   1acf8: b4002955     	cbz	x21, 0x1b220 <string_change+0x5c8>
   1acfc: 52800741     	mov	w1, #0x3a               // =58
   1ad00: 94000000     	bl	0x1ad00 <string_change+0xa8>
		000000000001ad00:  R_AARCH64_CALL26	strchr
   1ad04: f100001f     	cmp	x0, #0x0
   1ad08: aa1403e8     	mov	x8, x20
   1ad0c: 9a8007f7     	csinc	x23, xzr, x0, eq
   1ad10: a93ed3b7     	stp	x23, x20, [x29, #-0x18]
   1ad14: b4000080     	cbz	x0, 0x1ad24 <string_change+0xcc>
   1ad18: 3900001f     	strb	wzr, [x0]
   1ad1c: f85f03a8     	ldur	x8, [x29, #-0x10]
   1ad20: b4000728     	cbz	x8, 0x1ae04 <string_change+0x1ac>
   1ad24: 39400108     	ldrb	w8, [x8]
   1ad28: 34000588     	cbz	w8, 0x1add8 <string_change+0x180>
   1ad2c: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001ad2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1ad30: 91000021     	add	x1, x1, #0x0
		000000000001ad30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   1ad34: d10043a0     	sub	x0, x29, #0x10
   1ad38: 94000000     	bl	0x1ad38 <string_change+0xe0>
		000000000001ad38:  R_AARCH64_CALL26	strsep
   1ad3c: b40004e0     	cbz	x0, 0x1add8 <string_change+0x180>
   1ad40: 2a1f03f8     	mov	w24, wzr
   1ad44: 2a1f03fc     	mov	w28, wzr
   1ad48: 2a1f03f9     	mov	w25, wzr
   1ad4c: 5280003a     	mov	w26, #0x1               // =1
   1ad50: 90000017     	adrp	x23, 0x1a000 <edge_long_press_up+0x230>
		000000000001ad50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1ad54: 910002f7     	add	x23, x23, #0x0
		000000000001ad54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   1ad58: 14000005     	b	0x1ad6c <string_change+0x114>
   1ad5c: d10043a0     	sub	x0, x29, #0x10
   1ad60: aa1703e1     	mov	x1, x23
   1ad64: 94000000     	bl	0x1ad64 <string_change+0x10c>
		000000000001ad64:  R_AARCH64_CALL26	strsep
   1ad68: b4000420     	cbz	x0, 0x1adec <string_change+0x194>
   1ad6c: 9400013f     	bl	0x1b268 <trim>
   1ad70: 39400008     	ldrb	w8, [x0]
   1ad74: 34ffff48     	cbz	w8, 0x1ad5c <string_change+0x104>
   1ad78: aa1f03e1     	mov	x1, xzr
   1ad7c: 52800202     	mov	w2, #0x10               // =16
   1ad80: 94000000     	bl	0x1ad80 <string_change+0x128>
		000000000001ad80:  R_AARCH64_CALL26	simple_strtoul
   1ad84: 37f81ff9     	tbnz	w25, #0x1f, 0x1b180 <string_change+0x528>
   1ad88: 93407f28     	sxtw	x8, w25
   1ad8c: eb0802df     	cmp	x22, x8
   1ad90: 54001f89     	b.ls	0x1b180 <string_change+0x528>
   1ad94: 7100035f     	cmp	w26, #0x0
   1ad98: 11000739     	add	w25, w25, #0x1
   1ad9c: 2a1f03fa     	mov	w26, wzr
   1ada0: 1a80039c     	csel	w28, w28, w0, eq
   1ada4: 1a9f0718     	csinc	w24, w24, wzr, eq
   1ada8: 38286aa0     	strb	w0, [x21, x8]
   1adac: 17ffffec     	b	0x1ad5c <string_change+0x104>
   1adb0: d503201f     	nop
   1adb4: 90000008     	adrp	x8, 0x1a000 <edge_long_press_up+0x230>
		000000000001adb4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   1adb8: 52819801     	mov	w1, #0xcc0              // =3264
   1adbc: 52800022     	mov	w2, #0x1                // =1
   1adc0: f9400100     	ldr	x0, [x8]
		000000000001adc0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   1adc4: 94000000     	bl	0x1adc4 <string_change+0x16c>
		000000000001adc4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1adc8: aa0003f5     	mov	x21, x0
   1adcc: b40022d5     	cbz	x21, 0x1b224 <string_change+0x5cc>
   1add0: 390002bf     	strb	wzr, [x21]
   1add4: 14000114     	b	0x1b224 <string_change+0x5cc>
   1add8: 2a1f03f9     	mov	w25, wzr
   1addc: 2a1f03fc     	mov	w28, wzr
   1ade0: b81dc3bf     	stur	wzr, [x29, #-0x24]
   1ade4: b50001b7     	cbnz	x23, 0x1ae18 <string_change+0x1c0>
   1ade8: 140000e1     	b	0x1b16c <string_change+0x514>
   1adec: f85e83b7     	ldur	x23, [x29, #-0x18]
   1adf0: 7100031f     	cmp	w24, #0x0
   1adf4: 1a9f07e8     	cset	w8, ne
   1adf8: b81dc3a8     	stur	w8, [x29, #-0x24]
   1adfc: b50000f7     	cbnz	x23, 0x1ae18 <string_change+0x1c0>
   1ae00: 140000db     	b	0x1b16c <string_change+0x514>
   1ae04: 2a1f03f9     	mov	w25, wzr
   1ae08: 2a1f03fc     	mov	w28, wzr
   1ae0c: b81dc3bf     	stur	wzr, [x29, #-0x24]
   1ae10: 91000417     	add	x23, x0, #0x1
   1ae14: b4001ad7     	cbz	x23, 0x1b16c <string_change+0x514>
   1ae18: 394002e8     	ldrb	w8, [x23]
   1ae1c: 34001a88     	cbz	w8, 0x1b16c <string_change+0x514>
   1ae20: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001ae20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306e
   1ae24: 91000021     	add	x1, x1, #0x0
		000000000001ae24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306e
   1ae28: d10063a0     	sub	x0, x29, #0x18
   1ae2c: 94000000     	bl	0x1ae2c <string_change+0x1d4>
		000000000001ae2c:  R_AARCH64_CALL26	strsep
   1ae30: b40019e0     	cbz	x0, 0x1b16c <string_change+0x514>
   1ae34: 90000018     	adrp	x24, 0x1a000 <edge_long_press_up+0x230>
		000000000001ae34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1ae38: 91000318     	add	x24, x24, #0x0
		000000000001ae38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   1ae3c: 5280003a     	mov	w26, #0x1               // =1
   1ae40: 2a1903f7     	mov	w23, w25
   1ae44: 14000007     	b	0x1ae60 <string_change+0x208>
   1ae48: 2a1f03fa     	mov	w26, wzr
   1ae4c: d10063a0     	sub	x0, x29, #0x18
   1ae50: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001ae50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306e
   1ae54: 91000021     	add	x1, x1, #0x0
		000000000001ae54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306e
   1ae58: 94000000     	bl	0x1ae58 <string_change+0x200>
		000000000001ae58:  R_AARCH64_CALL26	strsep
   1ae5c: b40018a0     	cbz	x0, 0x1b170 <string_change+0x518>
   1ae60: 94000102     	bl	0x1b268 <trim>
   1ae64: 39400008     	ldrb	w8, [x0]
   1ae68: 34ffff28     	cbz	w8, 0x1ae4c <string_change+0x1f4>
   1ae6c: b85dc3a8     	ldur	w8, [x29, #-0x24]
   1ae70: 7100035f     	cmp	w26, #0x0
   1ae74: aa0003fb     	mov	x27, x0
   1ae78: 1a8813e8     	csel	w8, wzr, w8, ne
   1ae7c: 7100051f     	cmp	w8, #0x1
   1ae80: 540000e1     	b.ne	0x1ae9c <string_change+0x244>
   1ae84: 37f817f7     	tbnz	w23, #0x1f, 0x1b180 <string_change+0x528>
   1ae88: 93407ee8     	sxtw	x8, w23
   1ae8c: eb0802df     	cmp	x22, x8
   1ae90: 54001789     	b.ls	0x1b180 <string_change+0x528>
   1ae94: 110006f7     	add	w23, w23, #0x1
   1ae98: 38286abc     	strb	w28, [x21, x8]
   1ae9c: aa1b03e0     	mov	x0, x27
   1aea0: 52800741     	mov	w1, #0x3a               // =58
   1aea4: 94000000     	bl	0x1aea4 <string_change+0x24c>
		000000000001aea4:  R_AARCH64_CALL26	strchr
   1aea8: b40002a0     	cbz	x0, 0x1aefc <string_change+0x2a4>
   1aeac: 3800141f     	strb	wzr, [x0], #0x1
   1aeb0: aa0003f9     	mov	x25, x0
   1aeb4: aa1b03e0     	mov	x0, x27
   1aeb8: 940000ec     	bl	0x1b268 <trim>
   1aebc: aa0003fa     	mov	x26, x0
   1aec0: aa1903e0     	mov	x0, x25
   1aec4: 940000e9     	bl	0x1b268 <trim>
   1aec8: aa0003fb     	mov	x27, x0
   1aecc: b400019a     	cbz	x26, 0x1aefc <string_change+0x2a4>
   1aed0: aa1a03e0     	mov	x0, x26
   1aed4: aa1f03e1     	mov	x1, xzr
   1aed8: 52800202     	mov	w2, #0x10               // =16
   1aedc: 94000000     	bl	0x1aedc <string_change+0x284>
		000000000001aedc:  R_AARCH64_CALL26	simple_strtoul
   1aee0: 37f81517     	tbnz	w23, #0x1f, 0x1b180 <string_change+0x528>
   1aee4: 2a1703e8     	mov	w8, w23
   1aee8: 93407d08     	sxtw	x8, w8
   1aeec: eb0802df     	cmp	x22, x8
   1aef0: 54001489     	b.ls	0x1b180 <string_change+0x528>
   1aef4: 110006f7     	add	w23, w23, #0x1
   1aef8: 38286aa0     	strb	w0, [x21, x8]
   1aefc: d10083a0     	sub	x0, x29, #0x20
   1af00: aa1803e1     	mov	x1, x24
   1af04: f81e03bb     	stur	x27, [x29, #-0x20]
   1af08: 94000000     	bl	0x1af08 <string_change+0x2b0>
		000000000001af08:  R_AARCH64_CALL26	strsep
   1af0c: b4fff9e0     	cbz	x0, 0x1ae48 <string_change+0x1f0>
   1af10: 940000d6     	bl	0x1b268 <trim>
   1af14: aa0003fb     	mov	x27, x0
   1af18: d10083a0     	sub	x0, x29, #0x20
   1af1c: aa1803e1     	mov	x1, x24
   1af20: 94000000     	bl	0x1af20 <string_change+0x2c8>
		000000000001af20:  R_AARCH64_CALL26	strsep
   1af24: b4fff920     	cbz	x0, 0x1ae48 <string_change+0x1f0>
   1af28: 940000d0     	bl	0x1b268 <trim>
   1af2c: aa0003f9     	mov	x25, x0
   1af30: d10083a0     	sub	x0, x29, #0x20
   1af34: aa1803e1     	mov	x1, x24
   1af38: 94000000     	bl	0x1af38 <string_change+0x2e0>
		000000000001af38:  R_AARCH64_CALL26	strsep
   1af3c: b4fff860     	cbz	x0, 0x1ae48 <string_change+0x1f0>
   1af40: 940000ca     	bl	0x1b268 <trim>
   1af44: aa0003fa     	mov	x26, x0
   1af48: d10083a0     	sub	x0, x29, #0x20
   1af4c: aa1803e1     	mov	x1, x24
   1af50: 94000000     	bl	0x1af50 <string_change+0x2f8>
		000000000001af50:  R_AARCH64_CALL26	strsep
   1af54: b4fff7a0     	cbz	x0, 0x1ae48 <string_change+0x1f0>
   1af58: 940000c4     	bl	0x1b268 <trim>
   1af5c: f9000fe0     	str	x0, [sp, #0x18]
   1af60: aa1b03e0     	mov	x0, x27
   1af64: aa1f03e1     	mov	x1, xzr
   1af68: 52800142     	mov	w2, #0xa                // =10
   1af6c: 94000000     	bl	0x1af6c <string_change+0x314>
		000000000001af6c:  R_AARCH64_CALL26	simple_strtoul
   1af70: f9000be0     	str	x0, [sp, #0x10]
   1af74: aa1903e0     	mov	x0, x25
   1af78: aa1f03e1     	mov	x1, xzr
   1af7c: 52800142     	mov	w2, #0xa                // =10
   1af80: 94000000     	bl	0x1af80 <string_change+0x328>
		000000000001af80:  R_AARCH64_CALL26	simple_strtoul
   1af84: f90007e0     	str	x0, [sp, #0x8]
   1af88: aa1a03e0     	mov	x0, x26
   1af8c: aa1f03e1     	mov	x1, xzr
   1af90: 52800142     	mov	w2, #0xa                // =10
   1af94: 94000000     	bl	0x1af94 <string_change+0x33c>
		000000000001af94:  R_AARCH64_CALL26	simple_strtoul
   1af98: aa0003f9     	mov	x25, x0
   1af9c: f9400fe0     	ldr	x0, [sp, #0x18]
   1afa0: aa1f03e1     	mov	x1, xzr
   1afa4: 52800142     	mov	w2, #0xa                // =10
   1afa8: 94000000     	bl	0x1afa8 <string_change+0x350>
		000000000001afa8:  R_AARCH64_CALL26	simple_strtoul
   1afac: f94013fb     	ldr	x27, [sp, #0x20]
   1afb0: aa0003fa     	mov	x26, x0
   1afb4: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001afb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a86
   1afb8: 91000000     	add	x0, x0, #0x0
		000000000001afb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a86
   1afbc: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001afbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x580
   1afc0: 91000021     	add	x1, x1, #0x0
		000000000001afc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x580
   1afc4: b9460b62     	ldr	w2, [x27, #0x608]
   1afc8: 94000000     	bl	0x1afc8 <string_change+0x370>
		000000000001afc8:  R_AARCH64_CALL26	_printk
   1afcc: b9460b68     	ldr	w8, [x27, #0x608]
   1afd0: 71000d1f     	cmp	w8, #0x3
   1afd4: 540002e0     	b.eq	0x1b030 <string_change+0x3d8>
   1afd8: 7100051f     	cmp	w8, #0x1
   1afdc: 54000541     	b.ne	0x1b084 <string_change+0x42c>
   1afe0: 52809808     	mov	w8, #0x4c0              // =1216
   1afe4: f94007ea     	ldr	x10, [sp, #0x8]
   1afe8: 5280014c     	mov	w12, #0xa               // =10
   1afec: 4b1a0109     	sub	w9, w8, w26
   1aff0: 1280000b     	mov	w11, #-0x1              // =-1
   1aff4: 5280002e     	mov	w14, #0x1               // =1
   1aff8: 0b09092f     	add	w15, w9, w9, lsl #2
   1affc: f9400be9     	ldr	x9, [sp, #0x10]
   1b000: 4b0a010a     	sub	w10, w8, w10
   1b004: 1b0c2f28     	madd	w8, w25, w12, w11
   1b008: 0b09092d     	add	w13, w9, w9, lsl #2
   1b00c: 1b0c2d4a     	madd	w10, w10, w12, w11
   1b010: 5280002c     	mov	w12, #0x1               // =1
   1b014: 531f79f0     	lsl	w16, w15, #1
   1b018: 531f79b1     	lsl	w17, w13, #1
   1b01c: 53083d09     	ubfx	w9, w8, #8, #8
   1b020: 331f79ac     	bfi	w12, w13, #1, #31
   1b024: 53083d4b     	ubfx	w11, w10, #8, #8
   1b028: 53083e2d     	ubfx	w13, w17, #8, #8
   1b02c: 14000013     	b	0x1b078 <string_change+0x420>
   1b030: a940a3e9     	ldp	x9, x8, [sp, #0x8]
   1b034: 5281500a     	mov	w10, #0xa80             // =2688
   1b038: 5280014c     	mov	w12, #0xa               // =10
   1b03c: 1280000b     	mov	w11, #-0x1              // =-1
   1b040: 5280002e     	mov	w14, #0x1               // =1
   1b044: 4b080148     	sub	w8, w10, w8
   1b048: 0b09092f     	add	w15, w9, w9, lsl #2
   1b04c: 0b080909     	add	w9, w8, w8, lsl #2
   1b050: 4b190148     	sub	w8, w10, w25
   1b054: 1b0c2f4a     	madd	w10, w26, w12, w11
   1b058: 1b0c2d0c     	madd	w12, w8, w12, w11
   1b05c: 52800028     	mov	w8, #0x1                // =1
   1b060: 531f79f0     	lsl	w16, w15, #1
   1b064: 531f792d     	lsl	w13, w9, #1
   1b068: 331f7928     	bfi	w8, w9, #1, #31
   1b06c: 53083d4b     	ubfx	w11, w10, #8, #8
   1b070: 53083da9     	ubfx	w9, w13, #8, #8
   1b074: 53083d8d     	ubfx	w13, w12, #8, #8
   1b078: 331f79ee     	bfi	w14, w15, #1, #31
   1b07c: 53083e0f     	ubfx	w15, w16, #8, #8
   1b080: 14000009     	b	0x1b0a4 <string_change+0x44c>
   1b084: 2a1f03e8     	mov	w8, wzr
   1b088: 2a1f03e9     	mov	w9, wzr
   1b08c: 2a1f03ea     	mov	w10, wzr
   1b090: 2a1f03eb     	mov	w11, wzr
   1b094: 2a1f03ec     	mov	w12, wzr
   1b098: 2a1f03ed     	mov	w13, wzr
   1b09c: 2a1f03ee     	mov	w14, wzr
   1b0a0: 2a1f03ef     	mov	w15, wzr
   1b0a4: 37f806f7     	tbnz	w23, #0x1f, 0x1b180 <string_change+0x528>
   1b0a8: 2a1703f0     	mov	w16, w23
   1b0ac: 93407e10     	sxtw	x16, w16
   1b0b0: eb1002df     	cmp	x22, x16
   1b0b4: 54000669     	b.ls	0x1b180 <string_change+0x528>
   1b0b8: 310006f1     	adds	w17, w23, #0x1
   1b0bc: 38306aae     	strb	w14, [x21, x16]
   1b0c0: 54000604     	b.mi	0x1b180 <string_change+0x528>
   1b0c4: 93407e2e     	sxtw	x14, w17
   1b0c8: eb0e02df     	cmp	x22, x14
   1b0cc: 540005a9     	b.ls	0x1b180 <string_change+0x528>
   1b0d0: 31000af0     	adds	w16, w23, #0x2
   1b0d4: 382e6aaf     	strb	w15, [x21, x14]
   1b0d8: 54000544     	b.mi	0x1b180 <string_change+0x528>
   1b0dc: 93407e0e     	sxtw	x14, w16
   1b0e0: eb0e02df     	cmp	x22, x14
   1b0e4: 540004e9     	b.ls	0x1b180 <string_change+0x528>
   1b0e8: 31000eef     	adds	w15, w23, #0x3
   1b0ec: 382e6aac     	strb	w12, [x21, x14]
   1b0f0: 54000484     	b.mi	0x1b180 <string_change+0x528>
   1b0f4: 93407dec     	sxtw	x12, w15
   1b0f8: eb0c02df     	cmp	x22, x12
   1b0fc: 54000429     	b.ls	0x1b180 <string_change+0x528>
   1b100: 310012ee     	adds	w14, w23, #0x4
   1b104: 382c6aad     	strb	w13, [x21, x12]
   1b108: 540003c4     	b.mi	0x1b180 <string_change+0x528>
   1b10c: 93407dcc     	sxtw	x12, w14
   1b110: eb0c02df     	cmp	x22, x12
   1b114: 54000369     	b.ls	0x1b180 <string_change+0x528>
   1b118: 310016ed     	adds	w13, w23, #0x5
   1b11c: 382c6aaa     	strb	w10, [x21, x12]
   1b120: 54000304     	b.mi	0x1b180 <string_change+0x528>
   1b124: 93407daa     	sxtw	x10, w13
   1b128: eb0a02df     	cmp	x22, x10
   1b12c: 540002a9     	b.ls	0x1b180 <string_change+0x528>
   1b130: 31001aec     	adds	w12, w23, #0x6
   1b134: 382a6aab     	strb	w11, [x21, x10]
   1b138: 54000244     	b.mi	0x1b180 <string_change+0x528>
   1b13c: 93407d8a     	sxtw	x10, w12
   1b140: eb0a02df     	cmp	x22, x10
   1b144: 540001e9     	b.ls	0x1b180 <string_change+0x528>
   1b148: 31001eeb     	adds	w11, w23, #0x7
   1b14c: 382a6aa8     	strb	w8, [x21, x10]
   1b150: 54000184     	b.mi	0x1b180 <string_change+0x528>
   1b154: 93407d68     	sxtw	x8, w11
   1b158: eb0802df     	cmp	x22, x8
   1b15c: 54000129     	b.ls	0x1b180 <string_change+0x528>
   1b160: 110022f7     	add	w23, w23, #0x8
   1b164: 38286aa9     	strb	w9, [x21, x8]
   1b168: 17ffff38     	b	0x1ae48 <string_change+0x1f0>
   1b16c: 2a1903f7     	mov	w23, w25
   1b170: aa1403e0     	mov	x0, x20
   1b174: 94000000     	bl	0x1b174 <string_change+0x51c>
		000000000001b174:  R_AARCH64_CALL26	kfree
   1b178: b9000277     	str	w23, [x19]
   1b17c: 1400002b     	b	0x1b228 <string_change+0x5d0>
   1b180: d4200020     	brk	#0x1
   1b184: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b184:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   1b188: d5384114     	mrs	x20, SP_EL0
   1b18c: f9402a96     	ldr	x22, [x20, #0x50]
   1b190: f9400100     	ldr	x0, [x8]
		000000000001b190:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   1b194: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b194:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x988
   1b198: 91000108     	add	x8, x8, #0x0
		000000000001b198:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x988
   1b19c: 52819801     	mov	w1, #0xcc0              // =3264
   1b1a0: 52800022     	mov	w2, #0x1                // =1
   1b1a4: f9002a88     	str	x8, [x20, #0x50]
   1b1a8: 94000000     	bl	0x1b1a8 <string_change+0x550>
		000000000001b1a8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1b1ac: aa0003f5     	mov	x21, x0
   1b1b0: f9002a96     	str	x22, [x20, #0x50]
   1b1b4: b5ffe0f5     	cbnz	x21, 0x1add0 <string_change+0x178>
   1b1b8: 1400001b     	b	0x1b224 <string_change+0x5cc>
   1b1bc: d5384117     	mrs	x23, SP_EL0
   1b1c0: f9402af8     	ldr	x24, [x23, #0x50]
   1b1c4: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b1c4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x9d8
   1b1c8: 91000108     	add	x8, x8, #0x0
		000000000001b1c8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x9d8
   1b1cc: 910006c0     	add	x0, x22, #0x1
   1b1d0: 52819801     	mov	w1, #0xcc0              // =3264
   1b1d4: f9002ae8     	str	x8, [x23, #0x50]
   1b1d8: 94000000     	bl	0x1b1d8 <string_change+0x580>
		000000000001b1d8:  R_AARCH64_CALL26	__kmalloc_noprof
   1b1dc: aa0003f4     	mov	x20, x0
   1b1e0: f9002af8     	str	x24, [x23, #0x50]
   1b1e4: b5ffd714     	cbnz	x20, 0x1acc4 <string_change+0x6c>
   1b1e8: aa1f03f5     	mov	x21, xzr
   1b1ec: 1400000e     	b	0x1b224 <string_change+0x5cc>
   1b1f0: d5384117     	mrs	x23, SP_EL0
   1b1f4: f9402af8     	ldr	x24, [x23, #0x50]
   1b1f8: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b1f8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x9b0
   1b1fc: 91000108     	add	x8, x8, #0x0
		000000000001b1fc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x9b0
   1b200: aa1603e0     	mov	x0, x22
   1b204: 52819801     	mov	w1, #0xcc0              // =3264
   1b208: f9002ae8     	str	x8, [x23, #0x50]
   1b20c: 94000000     	bl	0x1b20c <string_change+0x5b4>
		000000000001b20c:  R_AARCH64_CALL26	__kmalloc_noprof
   1b210: aa0003f5     	mov	x21, x0
   1b214: f9002af8     	str	x24, [x23, #0x50]
   1b218: aa1403e0     	mov	x0, x20
   1b21c: b5ffd715     	cbnz	x21, 0x1acfc <string_change+0xa4>
   1b220: 94000000     	bl	0x1b220 <string_change+0x5c8>
		000000000001b220:  R_AARCH64_CALL26	kfree
   1b224: b900027f     	str	wzr, [x19]
   1b228: d5384108     	mrs	x8, SP_EL0
   1b22c: f9438908     	ldr	x8, [x8, #0x710]
   1b230: f85f83a9     	ldur	x9, [x29, #-0x8]
   1b234: eb09011f     	cmp	x8, x9
   1b238: 54000161     	b.ne	0x1b264 <string_change+0x60c>
   1b23c: aa1503e0     	mov	x0, x21
   1b240: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
   1b244: a94957f6     	ldp	x22, x21, [sp, #0x90]
   1b248: a9485ff8     	ldp	x24, x23, [sp, #0x80]
   1b24c: a94767fa     	ldp	x26, x25, [sp, #0x70]
   1b250: a9466ffc     	ldp	x28, x27, [sp, #0x60]
   1b254: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   1b258: 9102c3ff     	add	sp, sp, #0xb0
   1b25c: d50323bf     	autiasp
   1b260: d65f03c0     	ret
   1b264: 94000000     	bl	0x1b264 <string_change+0x60c>
		000000000001b264:  R_AARCH64_CALL26	__stack_chk_fail
