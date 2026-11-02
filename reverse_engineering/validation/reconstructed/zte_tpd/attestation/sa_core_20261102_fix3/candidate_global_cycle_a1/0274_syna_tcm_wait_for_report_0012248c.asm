
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012dcc <syna_tcm_wait_for_report>:
   12dcc: d503233f     	paciasp
   12dd0: d10183ff     	sub	sp, sp, #0x60
   12dd4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   12dd8: f90013f9     	str	x25, [sp, #0x20]
   12ddc: a9035ff8     	stp	x24, x23, [sp, #0x30]
   12de0: a90457f6     	stp	x22, x21, [sp, #0x40]
   12de4: a9054ff4     	stp	x20, x19, [sp, #0x50]
   12de8: 910043fd     	add	x29, sp, #0x10
   12dec: d5384108     	mrs	x8, SP_EL0
   12df0: f9438908     	ldr	x8, [x8, #0x710]
   12df4: f90007e8     	str	x8, [sp, #0x8]
   12df8: 390013ff     	strb	wzr, [sp, #0x4]
   12dfc: b4000480     	cbz	x0, 0x12e8c <syna_tcm_wait_for_report+0xc0>
   12e00: aa0203f3     	mov	x19, x2
   12e04: b40004a2     	cbz	x2, 0x12e98 <syna_tcm_wait_for_report+0xcc>
   12e08: 39402402     	ldrb	w2, [x0, #0x9]
   12e0c: aa0003f5     	mov	x21, x0
   12e10: 7100045f     	cmp	w2, #0x1
   12e14: 540004e1     	b.ne	0x12eb0 <syna_tcm_wait_for_report+0xe4>
   12e18: f94026b7     	ldr	x23, [x21, #0x48]
   12e1c: 2a0403f4     	mov	w20, w4
   12e20: 2a0303f6     	mov	w22, w3
   12e24: 394052e8     	ldrb	w8, [x23, #0x14]
   12e28: 7100051f     	cmp	w8, #0x1
   12e2c: 54000601     	b.ne	0x12eec <syna_tcm_wait_for_report+0x120>
   12e30: b40004f7     	cbz	x23, 0x12ecc <syna_tcm_wait_for_report+0x100>
   12e34: f9401ee8     	ldr	x8, [x23, #0x38]
   12e38: b40005a8     	cbz	x8, 0x12eec <syna_tcm_wait_for_report+0x120>
   12e3c: 910142a0     	add	x0, x21, #0x50
   12e40: 2a0103f8     	mov	w24, w1
   12e44: 94000000     	bl	0x12e44 <syna_tcm_wait_for_report+0x78>
		0000000000012e44:  R_AARCH64_CALL26	mutex_lock
   12e48: f9401ee8     	ldr	x8, [x23, #0x38]
   12e4c: aa1703e0     	mov	x0, x23
   12e50: 2a1f03e1     	mov	w1, wzr
   12e54: b85fc110     	ldur	w16, [x8, #-0x4]
   12e58: 728c3631     	movk	w17, #0x61b1
   12e5c: 72a685d1     	movk	w17, #0x342e, lsl #16
   12e60: 6b11021f     	cmp	w16, w17
   12e64: 54000040     	b.eq	0x12e6c <syna_tcm_wait_for_report+0xa0>
   12e68: d4304500     	brk	#0x8228
   12e6c: d63f0100     	blr	x8
   12e70: 2a0003f7     	mov	w23, w0
   12e74: 910142a0     	add	x0, x21, #0x50
   12e78: 94000000     	bl	0x12e78 <syna_tcm_wait_for_report+0xac>
		0000000000012e78:  R_AARCH64_CALL26	mutex_unlock
   12e7c: 710006ff     	cmp	w23, #0x1
   12e80: 2a1803e1     	mov	w1, w24
   12e84: 1a9fa7f9     	cset	w25, lt
   12e88: 1400001a     	b	0x12ef0 <syna_tcm_wait_for_report+0x124>
   12e8c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   12e90: 91000000     	add	x0, x0, #0x0
		0000000000012e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   12e94: 14000003     	b	0x12ea0 <syna_tcm_wait_for_report+0xd4>
   12e98: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94ee
   12e9c: 91000000     	add	x0, x0, #0x0
		0000000000012e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94ee
   12ea0: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f9c
   12ea4: 91000021     	add	x1, x1, #0x0
		0000000000012ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f9c
   12ea8: 94000000     	bl	0x12ea8 <syna_tcm_wait_for_report+0xdc>
		0000000000012ea8:  R_AARCH64_CALL26	_printk
   12eac: 14000006     	b	0x12ec4 <syna_tcm_wait_for_report+0xf8>
   12eb0: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   12eb4: 91000000     	add	x0, x0, #0x0
		0000000000012eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   12eb8: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f9c
   12ebc: 91000021     	add	x1, x1, #0x0
		0000000000012ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f9c
   12ec0: 94000000     	bl	0x12ec0 <syna_tcm_wait_for_report+0xf4>
		0000000000012ec0:  R_AARCH64_CALL26	_printk
   12ec4: 12801e00     	mov	w0, #-0xf1              // =-241
   12ec8: 1400003f     	b	0x12fc4 <syna_tcm_wait_for_report+0x1f8>
   12ecc: 90000008     	adrp	x8, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1ce
   12ed0: 91000108     	add	x8, x8, #0x0
		0000000000012ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1ce
   12ed4: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   12ed8: 91000000     	add	x0, x0, #0x0
		0000000000012ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   12edc: 2a0103f7     	mov	w23, w1
   12ee0: aa0803e1     	mov	x1, x8
   12ee4: 94000000     	bl	0x12ee4 <syna_tcm_wait_for_report+0x118>
		0000000000012ee4:  R_AARCH64_CALL26	_printk
   12ee8: 2a1703e1     	mov	w1, w23
   12eec: 52800039     	mov	w25, #0x1               // =1
   12ef0: 12001c37     	and	w23, w1, #0xff
   12ef4: 2a1603f8     	mov	w24, w22
   12ef8: 710006df     	cmp	w22, #0x1
   12efc: 540000aa     	b.ge	0x12f10 <syna_tcm_wait_for_report+0x144>
   12f00: 14000006     	b	0x12f18 <syna_tcm_wait_for_report+0x14c>
   12f04: 0b160318     	add	w24, w24, w22
   12f08: 710006df     	cmp	w22, #0x1
   12f0c: 5400006b     	b.lt	0x12f18 <syna_tcm_wait_for_report+0x14c>
   12f10: 2a1603e0     	mov	w0, w22
   12f14: 94000000     	bl	0x12f14 <syna_tcm_wait_for_report+0x148>
		0000000000012f14:  R_AARCH64_CALL26	msleep
   12f18: 910013e1     	add	x1, sp, #0x4
   12f1c: aa1503e0     	mov	x0, x21
   12f20: aa1303e2     	mov	x2, x19
   12f24: 94000000     	bl	0x12f24 <syna_tcm_wait_for_report+0x158>
		0000000000012f24:  R_AARCH64_CALL26	syna_tcm_get_event_data
   12f28: 37f800c0     	tbnz	w0, #0x1f, 0x12f40 <syna_tcm_wait_for_report+0x174>
   12f2c: 394013e8     	ldrb	w8, [sp, #0x4]
   12f30: 6b17011f     	cmp	w8, w23
   12f34: 54000061     	b.ne	0x12f40 <syna_tcm_wait_for_report+0x174>
   12f38: b9400e68     	ldr	w8, [x19, #0xc]
   12f3c: 35000068     	cbnz	w8, 0x12f48 <syna_tcm_wait_for_report+0x17c>
   12f40: 6b14031f     	cmp	w24, w20
   12f44: 54fffe03     	b.lo	0x12f04 <syna_tcm_wait_for_report+0x138>
   12f48: f94026b6     	ldr	x22, [x21, #0x48]
   12f4c: 394052c8     	ldrb	w8, [x22, #0x14]
   12f50: 2a280328     	orn	w8, w25, w8
   12f54: 37000288     	tbnz	w8, #0x0, 0x12fa4 <syna_tcm_wait_for_report+0x1d8>
   12f58: b4000516     	cbz	x22, 0x12ff8 <syna_tcm_wait_for_report+0x22c>
   12f5c: f9401ec8     	ldr	x8, [x22, #0x38]
   12f60: b4000228     	cbz	x8, 0x12fa4 <syna_tcm_wait_for_report+0x1d8>
   12f64: 2a0003f9     	mov	w25, w0
   12f68: 910142a0     	add	x0, x21, #0x50
   12f6c: 94000000     	bl	0x12f6c <syna_tcm_wait_for_report+0x1a0>
		0000000000012f6c:  R_AARCH64_CALL26	mutex_lock
   12f70: f9401ec8     	ldr	x8, [x22, #0x38]
   12f74: aa1603e0     	mov	x0, x22
   12f78: 52800021     	mov	w1, #0x1                // =1
   12f7c: b85fc110     	ldur	w16, [x8, #-0x4]
   12f80: 728c3631     	movk	w17, #0x61b1
   12f84: 72a685d1     	movk	w17, #0x342e, lsl #16
   12f88: 6b11021f     	cmp	w16, w17
   12f8c: 54000040     	b.eq	0x12f94 <syna_tcm_wait_for_report+0x1c8>
   12f90: d4304500     	brk	#0x8228
   12f94: d63f0100     	blr	x8
   12f98: 910142a0     	add	x0, x21, #0x50
   12f9c: 94000000     	bl	0x12f9c <syna_tcm_wait_for_report+0x1d0>
		0000000000012f9c:  R_AARCH64_CALL26	mutex_unlock
   12fa0: 2a1903e0     	mov	w0, w25
   12fa4: 6b14031f     	cmp	w24, w20
   12fa8: 540000e3     	b.lo	0x12fc4 <syna_tcm_wait_for_report+0x1f8>
   12fac: 394013e8     	ldrb	w8, [sp, #0x4]
   12fb0: 6b17011f     	cmp	w8, w23
   12fb4: 54000061     	b.ne	0x12fc0 <syna_tcm_wait_for_report+0x1f4>
   12fb8: b9400e68     	ldr	w8, [x19, #0xc]
   12fbc: 35000048     	cbnz	w8, 0x12fc4 <syna_tcm_wait_for_report+0x1f8>
   12fc0: 12801e60     	mov	w0, #-0xf4              // =-244
   12fc4: d5384108     	mrs	x8, SP_EL0
   12fc8: f9438908     	ldr	x8, [x8, #0x710]
   12fcc: f94007e9     	ldr	x9, [sp, #0x8]
   12fd0: eb09011f     	cmp	x8, x9
   12fd4: 54000281     	b.ne	0x13024 <syna_tcm_wait_for_report+0x258>
   12fd8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   12fdc: f94013f9     	ldr	x25, [sp, #0x20]
   12fe0: a94457f6     	ldp	x22, x21, [sp, #0x40]
   12fe4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   12fe8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   12fec: 910183ff     	add	sp, sp, #0x60
   12ff0: d50323bf     	autiasp
   12ff4: d65f03c0     	ret
   12ff8: 90000008     	adrp	x8, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   12ffc: 91000108     	add	x8, x8, #0x0
		0000000000012ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   13000: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1ce
   13004: 91000021     	add	x1, x1, #0x0
		0000000000013004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1ce
   13008: 2a0003f5     	mov	w21, w0
   1300c: aa0803e0     	mov	x0, x8
   13010: 94000000     	bl	0x13010 <syna_tcm_wait_for_report+0x244>
		0000000000013010:  R_AARCH64_CALL26	_printk
   13014: 2a1503e0     	mov	w0, w21
   13018: 6b14031f     	cmp	w24, w20
   1301c: 54fffc82     	b.hs	0x12fac <syna_tcm_wait_for_report+0x1e0>
   13020: 17ffffe9     	b	0x12fc4 <syna_tcm_wait_for_report+0x1f8>
   13024: 94000000     	bl	0x13024 <syna_tcm_wait_for_report+0x258>
		0000000000013024:  R_AARCH64_CALL26	__stack_chk_fail
