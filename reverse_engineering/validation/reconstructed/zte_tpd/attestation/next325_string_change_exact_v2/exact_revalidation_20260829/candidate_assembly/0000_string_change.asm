
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001abfc <string_change>:
   1abfc: d503233f     	paciasp
   1ac00: d102c3ff     	sub	sp, sp, #0xb0
   1ac04: a9057bfd     	stp	x29, x30, [sp, #0x50]
   1ac08: a9066ffc     	stp	x28, x27, [sp, #0x60]
   1ac0c: a90767fa     	stp	x26, x25, [sp, #0x70]
   1ac10: a9085ff8     	stp	x24, x23, [sp, #0x80]
   1ac14: a90957f6     	stp	x22, x21, [sp, #0x90]
   1ac18: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
   1ac1c: 910143fd     	add	x29, sp, #0x50
   1ac20: d5384108     	mrs	x8, SP_EL0
   1ac24: aa0203f3     	mov	x19, x2
   1ac28: f9438908     	ldr	x8, [x8, #0x710]
   1ac2c: f81f83a8     	stur	x8, [x29, #-0x8]
   1ac30: b4000921     	cbz	x1, 0x1ad54 <string_change+0x158>
   1ac34: 39400028     	ldrb	w8, [x1]
   1ac38: aa0103f5     	mov	x21, x1
   1ac3c: 340008c8     	cbz	w8, 0x1ad54 <string_change+0x158>
   1ac40: f90013e0     	str	x0, [sp, #0x20]
   1ac44: aa1503e0     	mov	x0, x21
   1ac48: 94000000     	bl	0x1ac48 <string_change+0x4c>
		000000000001ac48:  R_AARCH64_CALL26	strlen
   1ac4c: aa0003f6     	mov	x22, x0
   1ac50: d503201f     	nop
   1ac54: 910006c0     	add	x0, x22, #0x1
   1ac58: 52819801     	mov	w1, #0xcc0              // =3264
   1ac5c: 94000000     	bl	0x1ac5c <string_change+0x60>
		000000000001ac5c:  R_AARCH64_CALL26	__kmalloc_noprof
   1ac60: aa0003f4     	mov	x20, x0
   1ac64: b4002954     	cbz	x20, 0x1b18c <string_change+0x590>
   1ac68: 910006c2     	add	x2, x22, #0x1
   1ac6c: aa1403e0     	mov	x0, x20
   1ac70: aa1503e1     	mov	x1, x21
   1ac74: 94000000     	bl	0x1ac74 <string_change+0x78>
		000000000001ac74:  R_AARCH64_CALL26	memcpy
   1ac78: aa1503e0     	mov	x0, x21
   1ac7c: 94000000     	bl	0x1ac7c <string_change+0x80>
		000000000001ac7c:  R_AARCH64_CALL26	strlen
   1ac80: 8b000416     	add	x22, x0, x0, lsl #1
   1ac84: d503201f     	nop
   1ac88: aa1603e0     	mov	x0, x22
   1ac8c: 52819801     	mov	w1, #0xcc0              // =3264
   1ac90: 94000000     	bl	0x1ac90 <string_change+0x94>
		000000000001ac90:  R_AARCH64_CALL26	__kmalloc_noprof
   1ac94: aa0003f5     	mov	x21, x0
   1ac98: aa1403e0     	mov	x0, x20
   1ac9c: b4002955     	cbz	x21, 0x1b1c4 <string_change+0x5c8>
   1aca0: 52800741     	mov	w1, #0x3a               // =58
   1aca4: 94000000     	bl	0x1aca4 <string_change+0xa8>
		000000000001aca4:  R_AARCH64_CALL26	strchr
   1aca8: f100001f     	cmp	x0, #0x0
   1acac: aa1403e8     	mov	x8, x20
   1acb0: 9a8007f7     	csinc	x23, xzr, x0, eq
   1acb4: a93ed3b7     	stp	x23, x20, [x29, #-0x18]
   1acb8: b4000080     	cbz	x0, 0x1acc8 <string_change+0xcc>
   1acbc: 3900001f     	strb	wzr, [x0]
   1acc0: f85f03a8     	ldur	x8, [x29, #-0x10]
   1acc4: b4000728     	cbz	x8, 0x1ada8 <string_change+0x1ac>
   1acc8: 39400108     	ldrb	w8, [x8]
   1accc: 34000588     	cbz	w8, 0x1ad7c <string_change+0x180>
   1acd0: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001acd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1acd4: 91000021     	add	x1, x1, #0x0
		000000000001acd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   1acd8: d10043a0     	sub	x0, x29, #0x10
   1acdc: 94000000     	bl	0x1acdc <string_change+0xe0>
		000000000001acdc:  R_AARCH64_CALL26	strsep
   1ace0: b40004e0     	cbz	x0, 0x1ad7c <string_change+0x180>
   1ace4: 2a1f03f8     	mov	w24, wzr
   1ace8: 2a1f03fc     	mov	w28, wzr
   1acec: 2a1f03f9     	mov	w25, wzr
   1acf0: 5280003a     	mov	w26, #0x1               // =1
   1acf4: 90000017     	adrp	x23, 0x1a000 <change_tp_state+0x18>
		000000000001acf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1acf8: 910002f7     	add	x23, x23, #0x0
		000000000001acf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   1acfc: 14000005     	b	0x1ad10 <string_change+0x114>
   1ad00: d10043a0     	sub	x0, x29, #0x10
   1ad04: aa1703e1     	mov	x1, x23
   1ad08: 94000000     	bl	0x1ad08 <string_change+0x10c>
		000000000001ad08:  R_AARCH64_CALL26	strsep
   1ad0c: b4000420     	cbz	x0, 0x1ad90 <string_change+0x194>
   1ad10: 9400013f     	bl	0x1b20c <trim>
   1ad14: 39400008     	ldrb	w8, [x0]
   1ad18: 34ffff48     	cbz	w8, 0x1ad00 <string_change+0x104>
   1ad1c: aa1f03e1     	mov	x1, xzr
   1ad20: 52800202     	mov	w2, #0x10               // =16
   1ad24: 94000000     	bl	0x1ad24 <string_change+0x128>
		000000000001ad24:  R_AARCH64_CALL26	simple_strtoul
   1ad28: 37f81ff9     	tbnz	w25, #0x1f, 0x1b124 <string_change+0x528>
   1ad2c: 93407f28     	sxtw	x8, w25
   1ad30: eb0802df     	cmp	x22, x8
   1ad34: 54001f89     	b.ls	0x1b124 <string_change+0x528>
   1ad38: 7100035f     	cmp	w26, #0x0
   1ad3c: 11000739     	add	w25, w25, #0x1
   1ad40: 2a1f03fa     	mov	w26, wzr
   1ad44: 1a80039c     	csel	w28, w28, w0, eq
   1ad48: 1a9f0718     	csinc	w24, w24, wzr, eq
   1ad4c: 38286aa0     	strb	w0, [x21, x8]
   1ad50: 17ffffec     	b	0x1ad00 <string_change+0x104>
   1ad54: d503201f     	nop
   1ad58: 90000008     	adrp	x8, 0x1a000 <change_tp_state+0x18>
		000000000001ad58:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   1ad5c: 52819801     	mov	w1, #0xcc0              // =3264
   1ad60: 52800022     	mov	w2, #0x1                // =1
   1ad64: f9400100     	ldr	x0, [x8]
		000000000001ad64:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   1ad68: 94000000     	bl	0x1ad68 <string_change+0x16c>
		000000000001ad68:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1ad6c: aa0003f5     	mov	x21, x0
   1ad70: b40022d5     	cbz	x21, 0x1b1c8 <string_change+0x5cc>
   1ad74: 390002bf     	strb	wzr, [x21]
   1ad78: 14000114     	b	0x1b1c8 <string_change+0x5cc>
   1ad7c: 2a1f03f9     	mov	w25, wzr
   1ad80: 2a1f03fc     	mov	w28, wzr
   1ad84: b81dc3bf     	stur	wzr, [x29, #-0x24]
   1ad88: b50001b7     	cbnz	x23, 0x1adbc <string_change+0x1c0>
   1ad8c: 140000e1     	b	0x1b110 <string_change+0x514>
   1ad90: f85e83b7     	ldur	x23, [x29, #-0x18]
   1ad94: 7100031f     	cmp	w24, #0x0
   1ad98: 1a9f07e8     	cset	w8, ne
   1ad9c: b81dc3a8     	stur	w8, [x29, #-0x24]
   1ada0: b50000f7     	cbnz	x23, 0x1adbc <string_change+0x1c0>
   1ada4: 140000db     	b	0x1b110 <string_change+0x514>
   1ada8: 2a1f03f9     	mov	w25, wzr
   1adac: 2a1f03fc     	mov	w28, wzr
   1adb0: b81dc3bf     	stur	wzr, [x29, #-0x24]
   1adb4: 91000417     	add	x23, x0, #0x1
   1adb8: b4001ad7     	cbz	x23, 0x1b110 <string_change+0x514>
   1adbc: 394002e8     	ldrb	w8, [x23]
   1adc0: 34001a88     	cbz	w8, 0x1b110 <string_change+0x514>
   1adc4: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001adc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306e
   1adc8: 91000021     	add	x1, x1, #0x0
		000000000001adc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306e
   1adcc: d10063a0     	sub	x0, x29, #0x18
   1add0: 94000000     	bl	0x1add0 <string_change+0x1d4>
		000000000001add0:  R_AARCH64_CALL26	strsep
   1add4: b40019e0     	cbz	x0, 0x1b110 <string_change+0x514>
   1add8: 90000018     	adrp	x24, 0x1a000 <change_tp_state+0x18>
		000000000001add8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f00
   1addc: 91000318     	add	x24, x24, #0x0
		000000000001addc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f00
   1ade0: 5280003a     	mov	w26, #0x1               // =1
   1ade4: 2a1903f7     	mov	w23, w25
   1ade8: 14000007     	b	0x1ae04 <string_change+0x208>
   1adec: 2a1f03fa     	mov	w26, wzr
   1adf0: d10063a0     	sub	x0, x29, #0x18
   1adf4: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001adf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306e
   1adf8: 91000021     	add	x1, x1, #0x0
		000000000001adf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306e
   1adfc: 94000000     	bl	0x1adfc <string_change+0x200>
		000000000001adfc:  R_AARCH64_CALL26	strsep
   1ae00: b40018a0     	cbz	x0, 0x1b114 <string_change+0x518>
   1ae04: 94000102     	bl	0x1b20c <trim>
   1ae08: 39400008     	ldrb	w8, [x0]
   1ae0c: 34ffff28     	cbz	w8, 0x1adf0 <string_change+0x1f4>
   1ae10: b85dc3a8     	ldur	w8, [x29, #-0x24]
   1ae14: 7100035f     	cmp	w26, #0x0
   1ae18: aa0003fb     	mov	x27, x0
   1ae1c: 1a8813e8     	csel	w8, wzr, w8, ne
   1ae20: 7100051f     	cmp	w8, #0x1
   1ae24: 540000e1     	b.ne	0x1ae40 <string_change+0x244>
   1ae28: 37f817f7     	tbnz	w23, #0x1f, 0x1b124 <string_change+0x528>
   1ae2c: 93407ee8     	sxtw	x8, w23
   1ae30: eb0802df     	cmp	x22, x8
   1ae34: 54001789     	b.ls	0x1b124 <string_change+0x528>
   1ae38: 110006f7     	add	w23, w23, #0x1
   1ae3c: 38286abc     	strb	w28, [x21, x8]
   1ae40: aa1b03e0     	mov	x0, x27
   1ae44: 52800741     	mov	w1, #0x3a               // =58
   1ae48: 94000000     	bl	0x1ae48 <string_change+0x24c>
		000000000001ae48:  R_AARCH64_CALL26	strchr
   1ae4c: b40002a0     	cbz	x0, 0x1aea0 <string_change+0x2a4>
   1ae50: 3800141f     	strb	wzr, [x0], #0x1
   1ae54: aa0003f9     	mov	x25, x0
   1ae58: aa1b03e0     	mov	x0, x27
   1ae5c: 940000ec     	bl	0x1b20c <trim>
   1ae60: aa0003fa     	mov	x26, x0
   1ae64: aa1903e0     	mov	x0, x25
   1ae68: 940000e9     	bl	0x1b20c <trim>
   1ae6c: aa0003fb     	mov	x27, x0
   1ae70: b400019a     	cbz	x26, 0x1aea0 <string_change+0x2a4>
   1ae74: aa1a03e0     	mov	x0, x26
   1ae78: aa1f03e1     	mov	x1, xzr
   1ae7c: 52800202     	mov	w2, #0x10               // =16
   1ae80: 94000000     	bl	0x1ae80 <string_change+0x284>
		000000000001ae80:  R_AARCH64_CALL26	simple_strtoul
   1ae84: 37f81517     	tbnz	w23, #0x1f, 0x1b124 <string_change+0x528>
   1ae88: 2a1703e8     	mov	w8, w23
   1ae8c: 93407d08     	sxtw	x8, w8
   1ae90: eb0802df     	cmp	x22, x8
   1ae94: 54001489     	b.ls	0x1b124 <string_change+0x528>
   1ae98: 110006f7     	add	w23, w23, #0x1
   1ae9c: 38286aa0     	strb	w0, [x21, x8]
   1aea0: d10083a0     	sub	x0, x29, #0x20
   1aea4: aa1803e1     	mov	x1, x24
   1aea8: f81e03bb     	stur	x27, [x29, #-0x20]
   1aeac: 94000000     	bl	0x1aeac <string_change+0x2b0>
		000000000001aeac:  R_AARCH64_CALL26	strsep
   1aeb0: b4fff9e0     	cbz	x0, 0x1adec <string_change+0x1f0>
   1aeb4: 940000d6     	bl	0x1b20c <trim>
   1aeb8: aa0003fb     	mov	x27, x0
   1aebc: d10083a0     	sub	x0, x29, #0x20
   1aec0: aa1803e1     	mov	x1, x24
   1aec4: 94000000     	bl	0x1aec4 <string_change+0x2c8>
		000000000001aec4:  R_AARCH64_CALL26	strsep
   1aec8: b4fff920     	cbz	x0, 0x1adec <string_change+0x1f0>
   1aecc: 940000d0     	bl	0x1b20c <trim>
   1aed0: aa0003f9     	mov	x25, x0
   1aed4: d10083a0     	sub	x0, x29, #0x20
   1aed8: aa1803e1     	mov	x1, x24
   1aedc: 94000000     	bl	0x1aedc <string_change+0x2e0>
		000000000001aedc:  R_AARCH64_CALL26	strsep
   1aee0: b4fff860     	cbz	x0, 0x1adec <string_change+0x1f0>
   1aee4: 940000ca     	bl	0x1b20c <trim>
   1aee8: aa0003fa     	mov	x26, x0
   1aeec: d10083a0     	sub	x0, x29, #0x20
   1aef0: aa1803e1     	mov	x1, x24
   1aef4: 94000000     	bl	0x1aef4 <string_change+0x2f8>
		000000000001aef4:  R_AARCH64_CALL26	strsep
   1aef8: b4fff7a0     	cbz	x0, 0x1adec <string_change+0x1f0>
   1aefc: 940000c4     	bl	0x1b20c <trim>
   1af00: f9000fe0     	str	x0, [sp, #0x18]
   1af04: aa1b03e0     	mov	x0, x27
   1af08: aa1f03e1     	mov	x1, xzr
   1af0c: 52800142     	mov	w2, #0xa                // =10
   1af10: 94000000     	bl	0x1af10 <string_change+0x314>
		000000000001af10:  R_AARCH64_CALL26	simple_strtoul
   1af14: f9000be0     	str	x0, [sp, #0x10]
   1af18: aa1903e0     	mov	x0, x25
   1af1c: aa1f03e1     	mov	x1, xzr
   1af20: 52800142     	mov	w2, #0xa                // =10
   1af24: 94000000     	bl	0x1af24 <string_change+0x328>
		000000000001af24:  R_AARCH64_CALL26	simple_strtoul
   1af28: f90007e0     	str	x0, [sp, #0x8]
   1af2c: aa1a03e0     	mov	x0, x26
   1af30: aa1f03e1     	mov	x1, xzr
   1af34: 52800142     	mov	w2, #0xa                // =10
   1af38: 94000000     	bl	0x1af38 <string_change+0x33c>
		000000000001af38:  R_AARCH64_CALL26	simple_strtoul
   1af3c: aa0003f9     	mov	x25, x0
   1af40: f9400fe0     	ldr	x0, [sp, #0x18]
   1af44: aa1f03e1     	mov	x1, xzr
   1af48: 52800142     	mov	w2, #0xa                // =10
   1af4c: 94000000     	bl	0x1af4c <string_change+0x350>
		000000000001af4c:  R_AARCH64_CALL26	simple_strtoul
   1af50: f94013fb     	ldr	x27, [sp, #0x20]
   1af54: aa0003fa     	mov	x26, x0
   1af58: 90000000     	adrp	x0, 0x1a000 <change_tp_state+0x18>
		000000000001af58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a86
   1af5c: 91000000     	add	x0, x0, #0x0
		000000000001af5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a86
   1af60: 90000001     	adrp	x1, 0x1a000 <change_tp_state+0x18>
		000000000001af60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x580
   1af64: 91000021     	add	x1, x1, #0x0
		000000000001af64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x580
   1af68: b9460b62     	ldr	w2, [x27, #0x608]
   1af6c: 94000000     	bl	0x1af6c <string_change+0x370>
		000000000001af6c:  R_AARCH64_CALL26	_printk
   1af70: b9460b68     	ldr	w8, [x27, #0x608]
   1af74: 71000d1f     	cmp	w8, #0x3
   1af78: 540002e0     	b.eq	0x1afd4 <string_change+0x3d8>
   1af7c: 7100051f     	cmp	w8, #0x1
   1af80: 54000541     	b.ne	0x1b028 <string_change+0x42c>
   1af84: 52809808     	mov	w8, #0x4c0              // =1216
   1af88: f94007ea     	ldr	x10, [sp, #0x8]
   1af8c: 5280014c     	mov	w12, #0xa               // =10
   1af90: 4b1a0109     	sub	w9, w8, w26
   1af94: 1280000b     	mov	w11, #-0x1              // =-1
   1af98: 5280002e     	mov	w14, #0x1               // =1
   1af9c: 0b09092f     	add	w15, w9, w9, lsl #2
   1afa0: f9400be9     	ldr	x9, [sp, #0x10]
   1afa4: 4b0a010a     	sub	w10, w8, w10
   1afa8: 1b0c2f28     	madd	w8, w25, w12, w11
   1afac: 0b09092d     	add	w13, w9, w9, lsl #2
   1afb0: 1b0c2d4a     	madd	w10, w10, w12, w11
   1afb4: 5280002c     	mov	w12, #0x1               // =1
   1afb8: 531f79f0     	lsl	w16, w15, #1
   1afbc: 531f79b1     	lsl	w17, w13, #1
   1afc0: 53083d09     	ubfx	w9, w8, #8, #8
   1afc4: 331f79ac     	bfi	w12, w13, #1, #31
   1afc8: 53083d4b     	ubfx	w11, w10, #8, #8
   1afcc: 53083e2d     	ubfx	w13, w17, #8, #8
   1afd0: 14000013     	b	0x1b01c <string_change+0x420>
   1afd4: a940a3e9     	ldp	x9, x8, [sp, #0x8]
   1afd8: 5281500a     	mov	w10, #0xa80             // =2688
   1afdc: 5280014c     	mov	w12, #0xa               // =10
   1afe0: 1280000b     	mov	w11, #-0x1              // =-1
   1afe4: 5280002e     	mov	w14, #0x1               // =1
   1afe8: 4b080148     	sub	w8, w10, w8
   1afec: 0b09092f     	add	w15, w9, w9, lsl #2
   1aff0: 0b080909     	add	w9, w8, w8, lsl #2
   1aff4: 4b190148     	sub	w8, w10, w25
   1aff8: 1b0c2f4a     	madd	w10, w26, w12, w11
   1affc: 1b0c2d0c     	madd	w12, w8, w12, w11
   1b000: 52800028     	mov	w8, #0x1                // =1
   1b004: 531f79f0     	lsl	w16, w15, #1
   1b008: 531f792d     	lsl	w13, w9, #1
   1b00c: 331f7928     	bfi	w8, w9, #1, #31
   1b010: 53083d4b     	ubfx	w11, w10, #8, #8
   1b014: 53083da9     	ubfx	w9, w13, #8, #8
   1b018: 53083d8d     	ubfx	w13, w12, #8, #8
   1b01c: 331f79ee     	bfi	w14, w15, #1, #31
   1b020: 53083e0f     	ubfx	w15, w16, #8, #8
   1b024: 14000009     	b	0x1b048 <string_change+0x44c>
   1b028: 2a1f03e8     	mov	w8, wzr
   1b02c: 2a1f03e9     	mov	w9, wzr
   1b030: 2a1f03ea     	mov	w10, wzr
   1b034: 2a1f03eb     	mov	w11, wzr
   1b038: 2a1f03ec     	mov	w12, wzr
   1b03c: 2a1f03ed     	mov	w13, wzr
   1b040: 2a1f03ee     	mov	w14, wzr
   1b044: 2a1f03ef     	mov	w15, wzr
   1b048: 37f806f7     	tbnz	w23, #0x1f, 0x1b124 <string_change+0x528>
   1b04c: 2a1703f0     	mov	w16, w23
   1b050: 93407e10     	sxtw	x16, w16
   1b054: eb1002df     	cmp	x22, x16
   1b058: 54000669     	b.ls	0x1b124 <string_change+0x528>
   1b05c: 310006f1     	adds	w17, w23, #0x1
   1b060: 38306aae     	strb	w14, [x21, x16]
   1b064: 54000604     	b.mi	0x1b124 <string_change+0x528>
   1b068: 93407e2e     	sxtw	x14, w17
   1b06c: eb0e02df     	cmp	x22, x14
   1b070: 540005a9     	b.ls	0x1b124 <string_change+0x528>
   1b074: 31000af0     	adds	w16, w23, #0x2
   1b078: 382e6aaf     	strb	w15, [x21, x14]
   1b07c: 54000544     	b.mi	0x1b124 <string_change+0x528>
   1b080: 93407e0e     	sxtw	x14, w16
   1b084: eb0e02df     	cmp	x22, x14
   1b088: 540004e9     	b.ls	0x1b124 <string_change+0x528>
   1b08c: 31000eef     	adds	w15, w23, #0x3
   1b090: 382e6aac     	strb	w12, [x21, x14]
   1b094: 54000484     	b.mi	0x1b124 <string_change+0x528>
   1b098: 93407dec     	sxtw	x12, w15
   1b09c: eb0c02df     	cmp	x22, x12
   1b0a0: 54000429     	b.ls	0x1b124 <string_change+0x528>
   1b0a4: 310012ee     	adds	w14, w23, #0x4
   1b0a8: 382c6aad     	strb	w13, [x21, x12]
   1b0ac: 540003c4     	b.mi	0x1b124 <string_change+0x528>
   1b0b0: 93407dcc     	sxtw	x12, w14
   1b0b4: eb0c02df     	cmp	x22, x12
   1b0b8: 54000369     	b.ls	0x1b124 <string_change+0x528>
   1b0bc: 310016ed     	adds	w13, w23, #0x5
   1b0c0: 382c6aaa     	strb	w10, [x21, x12]
   1b0c4: 54000304     	b.mi	0x1b124 <string_change+0x528>
   1b0c8: 93407daa     	sxtw	x10, w13
   1b0cc: eb0a02df     	cmp	x22, x10
   1b0d0: 540002a9     	b.ls	0x1b124 <string_change+0x528>
   1b0d4: 31001aec     	adds	w12, w23, #0x6
   1b0d8: 382a6aab     	strb	w11, [x21, x10]
   1b0dc: 54000244     	b.mi	0x1b124 <string_change+0x528>
   1b0e0: 93407d8a     	sxtw	x10, w12
   1b0e4: eb0a02df     	cmp	x22, x10
   1b0e8: 540001e9     	b.ls	0x1b124 <string_change+0x528>
   1b0ec: 31001eeb     	adds	w11, w23, #0x7
   1b0f0: 382a6aa8     	strb	w8, [x21, x10]
   1b0f4: 54000184     	b.mi	0x1b124 <string_change+0x528>
   1b0f8: 93407d68     	sxtw	x8, w11
   1b0fc: eb0802df     	cmp	x22, x8
   1b100: 54000129     	b.ls	0x1b124 <string_change+0x528>
   1b104: 110022f7     	add	w23, w23, #0x8
   1b108: 38286aa9     	strb	w9, [x21, x8]
   1b10c: 17ffff38     	b	0x1adec <string_change+0x1f0>
   1b110: 2a1903f7     	mov	w23, w25
   1b114: aa1403e0     	mov	x0, x20
   1b118: 94000000     	bl	0x1b118 <string_change+0x51c>
		000000000001b118:  R_AARCH64_CALL26	kfree
   1b11c: b9000277     	str	w23, [x19]
   1b120: 1400002b     	b	0x1b1cc <string_change+0x5d0>
   1b124: d4200020     	brk	#0x1
   1b128: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b128:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   1b12c: d5384114     	mrs	x20, SP_EL0
   1b130: f9402a96     	ldr	x22, [x20, #0x50]
   1b134: f9400100     	ldr	x0, [x8]
		000000000001b134:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   1b138: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b138:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x988
   1b13c: 91000108     	add	x8, x8, #0x0
		000000000001b13c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x988
   1b140: 52819801     	mov	w1, #0xcc0              // =3264
   1b144: 52800022     	mov	w2, #0x1                // =1
   1b148: f9002a88     	str	x8, [x20, #0x50]
   1b14c: 94000000     	bl	0x1b14c <string_change+0x550>
		000000000001b14c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1b150: aa0003f5     	mov	x21, x0
   1b154: f9002a96     	str	x22, [x20, #0x50]
   1b158: b5ffe0f5     	cbnz	x21, 0x1ad74 <string_change+0x178>
   1b15c: 1400001b     	b	0x1b1c8 <string_change+0x5cc>
   1b160: d5384117     	mrs	x23, SP_EL0
   1b164: f9402af8     	ldr	x24, [x23, #0x50]
   1b168: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b168:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x9d8
   1b16c: 91000108     	add	x8, x8, #0x0
		000000000001b16c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x9d8
   1b170: 910006c0     	add	x0, x22, #0x1
   1b174: 52819801     	mov	w1, #0xcc0              // =3264
   1b178: f9002ae8     	str	x8, [x23, #0x50]
   1b17c: 94000000     	bl	0x1b17c <string_change+0x580>
		000000000001b17c:  R_AARCH64_CALL26	__kmalloc_noprof
   1b180: aa0003f4     	mov	x20, x0
   1b184: f9002af8     	str	x24, [x23, #0x50]
   1b188: b5ffd714     	cbnz	x20, 0x1ac68 <string_change+0x6c>
   1b18c: aa1f03f5     	mov	x21, xzr
   1b190: 1400000e     	b	0x1b1c8 <string_change+0x5cc>
   1b194: d5384117     	mrs	x23, SP_EL0
   1b198: f9402af8     	ldr	x24, [x23, #0x50]
   1b19c: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b19c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x9b0
   1b1a0: 91000108     	add	x8, x8, #0x0
		000000000001b1a0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x9b0
   1b1a4: aa1603e0     	mov	x0, x22
   1b1a8: 52819801     	mov	w1, #0xcc0              // =3264
   1b1ac: f9002ae8     	str	x8, [x23, #0x50]
   1b1b0: 94000000     	bl	0x1b1b0 <string_change+0x5b4>
		000000000001b1b0:  R_AARCH64_CALL26	__kmalloc_noprof
   1b1b4: aa0003f5     	mov	x21, x0
   1b1b8: f9002af8     	str	x24, [x23, #0x50]
   1b1bc: aa1403e0     	mov	x0, x20
   1b1c0: b5ffd715     	cbnz	x21, 0x1aca0 <string_change+0xa4>
   1b1c4: 94000000     	bl	0x1b1c4 <string_change+0x5c8>
		000000000001b1c4:  R_AARCH64_CALL26	kfree
   1b1c8: b900027f     	str	wzr, [x19]
   1b1cc: d5384108     	mrs	x8, SP_EL0
   1b1d0: f9438908     	ldr	x8, [x8, #0x710]
   1b1d4: f85f83a9     	ldur	x9, [x29, #-0x8]
   1b1d8: eb09011f     	cmp	x8, x9
   1b1dc: 54000161     	b.ne	0x1b208 <string_change+0x60c>
   1b1e0: aa1503e0     	mov	x0, x21
   1b1e4: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
   1b1e8: a94957f6     	ldp	x22, x21, [sp, #0x90]
   1b1ec: a9485ff8     	ldp	x24, x23, [sp, #0x80]
   1b1f0: a94767fa     	ldp	x26, x25, [sp, #0x70]
   1b1f4: a9466ffc     	ldp	x28, x27, [sp, #0x60]
   1b1f8: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   1b1fc: 9102c3ff     	add	sp, sp, #0xb0
   1b200: d50323bf     	autiasp
   1b204: d65f03c0     	ret
   1b208: 94000000     	bl	0x1b208 <string_change+0x60c>
		000000000001b208:  R_AARCH64_CALL26	__stack_chk_fail
