
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001bc04 <syna_tcm_wait_for_report>:
   1bc04: d503233f     	paciasp
   1bc08: d10183ff     	sub	sp, sp, #0x60
   1bc0c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1bc10: f90013f9     	str	x25, [sp, #0x20]
   1bc14: a9035ff8     	stp	x24, x23, [sp, #0x30]
   1bc18: a90457f6     	stp	x22, x21, [sp, #0x40]
   1bc1c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1bc20: 910043fd     	add	x29, sp, #0x10
   1bc24: d5384108     	mrs	x8, SP_EL0
   1bc28: f9438908     	ldr	x8, [x8, #0x710]
   1bc2c: f90007e8     	str	x8, [sp, #0x8]
   1bc30: 390013ff     	strb	wzr, [sp, #0x4]
   1bc34: b4000480     	cbz	x0, 0x1bcc4 <syna_tcm_wait_for_report+0xc0>
   1bc38: aa0203f3     	mov	x19, x2
   1bc3c: b40004a2     	cbz	x2, 0x1bcd0 <syna_tcm_wait_for_report+0xcc>
   1bc40: 39402402     	ldrb	w2, [x0, #0x9]
   1bc44: aa0003f5     	mov	x21, x0
   1bc48: 7100045f     	cmp	w2, #0x1
   1bc4c: 540004e1     	b.ne	0x1bce8 <syna_tcm_wait_for_report+0xe4>
   1bc50: f94026b7     	ldr	x23, [x21, #0x48]
   1bc54: 2a0403f4     	mov	w20, w4
   1bc58: 2a0303f6     	mov	w22, w3
   1bc5c: 394052e8     	ldrb	w8, [x23, #0x14]
   1bc60: 7100051f     	cmp	w8, #0x1
   1bc64: 54000601     	b.ne	0x1bd24 <syna_tcm_wait_for_report+0x120>
   1bc68: b40004f7     	cbz	x23, 0x1bd04 <syna_tcm_wait_for_report+0x100>
   1bc6c: f9401ee8     	ldr	x8, [x23, #0x38]
   1bc70: b40005a8     	cbz	x8, 0x1bd24 <syna_tcm_wait_for_report+0x120>
   1bc74: 910142a0     	add	x0, x21, #0x50
   1bc78: 2a0103f8     	mov	w24, w1
   1bc7c: 94000000     	bl	0x1bc7c <syna_tcm_wait_for_report+0x78>
		000000000001bc7c:  R_AARCH64_CALL26	mutex_lock
   1bc80: f9401ee8     	ldr	x8, [x23, #0x38]
   1bc84: aa1703e0     	mov	x0, x23
   1bc88: 2a1f03e1     	mov	w1, wzr
   1bc8c: b85fc110     	ldur	w16, [x8, #-0x4]
   1bc90: 728c3631     	movk	w17, #0x61b1
   1bc94: 72a685d1     	movk	w17, #0x342e, lsl #16
   1bc98: 6b11021f     	cmp	w16, w17
   1bc9c: 54000040     	b.eq	0x1bca4 <syna_tcm_wait_for_report+0xa0>
   1bca0: d4304500     	brk	#0x8228
   1bca4: d63f0100     	blr	x8
   1bca8: 2a0003f7     	mov	w23, w0
   1bcac: 910142a0     	add	x0, x21, #0x50
   1bcb0: 94000000     	bl	0x1bcb0 <syna_tcm_wait_for_report+0xac>
		000000000001bcb0:  R_AARCH64_CALL26	mutex_unlock
   1bcb4: 710006ff     	cmp	w23, #0x1
   1bcb8: 2a1803e1     	mov	w1, w24
   1bcbc: 1a9fa7f9     	cset	w25, lt
   1bcc0: 1400001a     	b	0x1bd28 <syna_tcm_wait_for_report+0x124>
   1bcc4: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bcc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1bcc8: 91000000     	add	x0, x0, #0x0
		000000000001bcc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1bccc: 14000003     	b	0x1bcd8 <syna_tcm_wait_for_report+0xd4>
   1bcd0: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bcd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9297
   1bcd4: 91000000     	add	x0, x0, #0x0
		000000000001bcd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9297
   1bcd8: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bcd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e7e
   1bcdc: 91000021     	add	x1, x1, #0x0
		000000000001bcdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e7e
   1bce0: 94000000     	bl	0x1bce0 <syna_tcm_wait_for_report+0xdc>
		000000000001bce0:  R_AARCH64_CALL26	_printk
   1bce4: 14000006     	b	0x1bcfc <syna_tcm_wait_for_report+0xf8>
   1bce8: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1bcec: 91000000     	add	x0, x0, #0x0
		000000000001bcec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1bcf0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bcf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e7e
   1bcf4: 91000021     	add	x1, x1, #0x0
		000000000001bcf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e7e
   1bcf8: 94000000     	bl	0x1bcf8 <syna_tcm_wait_for_report+0xf4>
		000000000001bcf8:  R_AARCH64_CALL26	_printk
   1bcfc: 12801e00     	mov	w0, #-0xf1              // =-241
   1bd00: 1400003f     	b	0x1bdfc <syna_tcm_wait_for_report+0x1f8>
   1bd04: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bd04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   1bd08: 91000108     	add	x8, x8, #0x0
		000000000001bd08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   1bd0c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001bd0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   1bd10: 91000000     	add	x0, x0, #0x0
		000000000001bd10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   1bd14: 2a0103f7     	mov	w23, w1
   1bd18: aa0803e1     	mov	x1, x8
   1bd1c: 94000000     	bl	0x1bd1c <syna_tcm_wait_for_report+0x118>
		000000000001bd1c:  R_AARCH64_CALL26	_printk
   1bd20: 2a1703e1     	mov	w1, w23
   1bd24: 52800039     	mov	w25, #0x1               // =1
   1bd28: 12001c37     	and	w23, w1, #0xff
   1bd2c: 2a1603f8     	mov	w24, w22
   1bd30: 710006df     	cmp	w22, #0x1
   1bd34: 540000aa     	b.ge	0x1bd48 <syna_tcm_wait_for_report+0x144>
   1bd38: 14000006     	b	0x1bd50 <syna_tcm_wait_for_report+0x14c>
   1bd3c: 0b160318     	add	w24, w24, w22
   1bd40: 710006df     	cmp	w22, #0x1
   1bd44: 5400006b     	b.lt	0x1bd50 <syna_tcm_wait_for_report+0x14c>
   1bd48: 2a1603e0     	mov	w0, w22
   1bd4c: 94000000     	bl	0x1bd4c <syna_tcm_wait_for_report+0x148>
		000000000001bd4c:  R_AARCH64_CALL26	msleep
   1bd50: 910013e1     	add	x1, sp, #0x4
   1bd54: aa1503e0     	mov	x0, x21
   1bd58: aa1303e2     	mov	x2, x19
   1bd5c: 94000000     	bl	0x1bd5c <syna_tcm_wait_for_report+0x158>
		000000000001bd5c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   1bd60: 37f800c0     	tbnz	w0, #0x1f, 0x1bd78 <syna_tcm_wait_for_report+0x174>
   1bd64: 394013e8     	ldrb	w8, [sp, #0x4]
   1bd68: 6b17011f     	cmp	w8, w23
   1bd6c: 54000061     	b.ne	0x1bd78 <syna_tcm_wait_for_report+0x174>
   1bd70: b9400e68     	ldr	w8, [x19, #0xc]
   1bd74: 35000068     	cbnz	w8, 0x1bd80 <syna_tcm_wait_for_report+0x17c>
   1bd78: 6b14031f     	cmp	w24, w20
   1bd7c: 54fffe03     	b.lo	0x1bd3c <syna_tcm_wait_for_report+0x138>
   1bd80: f94026b6     	ldr	x22, [x21, #0x48]
   1bd84: 394052c8     	ldrb	w8, [x22, #0x14]
   1bd88: 2a280328     	orn	w8, w25, w8
   1bd8c: 37000288     	tbnz	w8, #0x0, 0x1bddc <syna_tcm_wait_for_report+0x1d8>
   1bd90: b4000516     	cbz	x22, 0x1be30 <syna_tcm_wait_for_report+0x22c>
   1bd94: f9401ec8     	ldr	x8, [x22, #0x38]
   1bd98: b4000228     	cbz	x8, 0x1bddc <syna_tcm_wait_for_report+0x1d8>
   1bd9c: 2a0003f9     	mov	w25, w0
   1bda0: 910142a0     	add	x0, x21, #0x50
   1bda4: 94000000     	bl	0x1bda4 <syna_tcm_wait_for_report+0x1a0>
		000000000001bda4:  R_AARCH64_CALL26	mutex_lock
   1bda8: f9401ec8     	ldr	x8, [x22, #0x38]
   1bdac: aa1603e0     	mov	x0, x22
   1bdb0: 52800021     	mov	w1, #0x1                // =1
   1bdb4: b85fc110     	ldur	w16, [x8, #-0x4]
   1bdb8: 728c3631     	movk	w17, #0x61b1
   1bdbc: 72a685d1     	movk	w17, #0x342e, lsl #16
   1bdc0: 6b11021f     	cmp	w16, w17
   1bdc4: 54000040     	b.eq	0x1bdcc <syna_tcm_wait_for_report+0x1c8>
   1bdc8: d4304500     	brk	#0x8228
   1bdcc: d63f0100     	blr	x8
   1bdd0: 910142a0     	add	x0, x21, #0x50
   1bdd4: 94000000     	bl	0x1bdd4 <syna_tcm_wait_for_report+0x1d0>
		000000000001bdd4:  R_AARCH64_CALL26	mutex_unlock
   1bdd8: 2a1903e0     	mov	w0, w25
   1bddc: 6b14031f     	cmp	w24, w20
   1bde0: 540000e3     	b.lo	0x1bdfc <syna_tcm_wait_for_report+0x1f8>
   1bde4: 394013e8     	ldrb	w8, [sp, #0x4]
   1bde8: 6b17011f     	cmp	w8, w23
   1bdec: 54000061     	b.ne	0x1bdf8 <syna_tcm_wait_for_report+0x1f4>
   1bdf0: b9400e68     	ldr	w8, [x19, #0xc]
   1bdf4: 35000048     	cbnz	w8, 0x1bdfc <syna_tcm_wait_for_report+0x1f8>
   1bdf8: 12801e60     	mov	w0, #-0xf4              // =-244
   1bdfc: d5384108     	mrs	x8, SP_EL0
   1be00: f9438908     	ldr	x8, [x8, #0x710]
   1be04: f94007e9     	ldr	x9, [sp, #0x8]
   1be08: eb09011f     	cmp	x8, x9
   1be0c: 54000281     	b.ne	0x1be5c <syna_tcm_wait_for_report+0x258>
   1be10: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   1be14: f94013f9     	ldr	x25, [sp, #0x20]
   1be18: a94457f6     	ldp	x22, x21, [sp, #0x40]
   1be1c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   1be20: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1be24: 910183ff     	add	sp, sp, #0x60
   1be28: d50323bf     	autiasp
   1be2c: d65f03c0     	ret
   1be30: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001be30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   1be34: 91000108     	add	x8, x8, #0x0
		000000000001be34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   1be38: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001be38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   1be3c: 91000021     	add	x1, x1, #0x0
		000000000001be3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   1be40: 2a0003f5     	mov	w21, w0
   1be44: aa0803e0     	mov	x0, x8
   1be48: 94000000     	bl	0x1be48 <syna_tcm_wait_for_report+0x244>
		000000000001be48:  R_AARCH64_CALL26	_printk
   1be4c: 2a1503e0     	mov	w0, w21
   1be50: 6b14031f     	cmp	w24, w20
   1be54: 54fffc82     	b.hs	0x1bde4 <syna_tcm_wait_for_report+0x1e0>
   1be58: 17ffffe9     	b	0x1bdfc <syna_tcm_wait_for_report+0x1f8>
   1be5c: 94000000     	bl	0x1be5c <syna_tcm_wait_for_report+0x258>
		000000000001be5c:  R_AARCH64_CALL26	__stack_chk_fail
