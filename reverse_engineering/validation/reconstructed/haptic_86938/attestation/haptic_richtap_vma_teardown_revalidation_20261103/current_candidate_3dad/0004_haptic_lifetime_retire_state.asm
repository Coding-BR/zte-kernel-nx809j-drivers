
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006e94 <haptic_lifetime_retire_state>:
    6e94: d503233f     	paciasp
    6e98: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    6e9c: a90157f6     	stp	x22, x21, [sp, #0x10]
    6ea0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6ea4: 910003fd     	mov	x29, sp
    6ea8: aa0003f5     	mov	x21, x0
    6eac: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006eac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3d0
    6eb0: 91000000     	add	x0, x0, #0x0
		0000000000006eb0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3d0
    6eb4: 94000000     	bl	0x6eb4 <haptic_lifetime_retire_state+0x20>
		0000000000006eb4:  R_AARCH64_CALL26	mutex_lock
    6eb8: 90000016     	adrp	x22, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006eb8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    6ebc: f94002d3     	ldr	x19, [x22]
		0000000000006ebc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    6ec0: b4000093     	cbz	x19, 0x6ed0 <haptic_lifetime_retire_state+0x3c>
    6ec4: f9402a68     	ldr	x8, [x19, #0x50]
    6ec8: eb15011f     	cmp	x8, x21
    6ecc: 540004e0     	b.eq	0x6f68 <haptic_lifetime_retire_state+0xd4>
    6ed0: f9430ab4     	ldr	x20, [x21, #0x610]
    6ed4: aa1f03f3     	mov	x19, xzr
    6ed8: f9030abf     	str	xzr, [x21, #0x610]
    6edc: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006edc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3d0
    6ee0: 91000000     	add	x0, x0, #0x0
		0000000000006ee0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3d0
    6ee4: 94000000     	bl	0x6ee4 <haptic_lifetime_retire_state+0x50>
		0000000000006ee4:  R_AARCH64_CALL26	mutex_unlock
    6ee8: b40001f4     	cbz	x20, 0x6f24 <haptic_lifetime_retire_state+0x90>
    6eec: d378de88     	lsl	x8, x20, #8
    6ef0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    6ef4: 8b882128     	add	x8, x9, x8, asr #8
    6ef8: d346fd08     	lsr	x8, x8, #6
    6efc: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    6f00: 14000048     	b	0x7020 <haptic_lifetime_retire_state+0x18c>
    6f04: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    6f08: f2b80009     	movk	x9, #0xc000, lsl #16
    6f0c: 8b090108     	add	x8, x8, x9
    6f10: 52880009     	mov	w9, #0x4000             // =16384
    6f14: f829111f     	stclr	x9, [x8]
    6f18: aa1403e0     	mov	x0, x20
    6f1c: 52800041     	mov	w1, #0x2                // =2
    6f20: 94000000     	bl	0x6f20 <haptic_lifetime_retire_state+0x8c>
		0000000000006f20:  R_AARCH64_CALL26	free_pages
    6f24: b40006d3     	cbz	x19, 0x6ffc <haptic_lifetime_retire_state+0x168>
    6f28: 1400002b     	b	0x6fd4 <haptic_lifetime_retire_state+0x140>
    6f2c: 12800008     	mov	w8, #-0x1               // =-1
    6f30: b8680268     	ldaddl	w8, w8, [x19]
    6f34: 7100051f     	cmp	w8, #0x1
    6f38: 540005e1     	b.ne	0x6ff4 <haptic_lifetime_retire_state+0x160>
    6f3c: d50339bf     	dmb	ishld
    6f40: b9405a68     	ldr	w8, [x19, #0x58]
    6f44: 350000a8     	cbnz	w8, 0x6f58 <haptic_lifetime_retire_state+0xc4>
    6f48: b9405e68     	ldr	w8, [x19, #0x5c]
    6f4c: 35000068     	cbnz	w8, 0x6f58 <haptic_lifetime_retire_state+0xc4>
    6f50: f9403268     	ldr	x8, [x19, #0x60]
    6f54: b4000368     	cbz	x8, 0x6fc0 <haptic_lifetime_retire_state+0x12c>
    6f58: d4210000     	brk	#0x800
    6f5c: aa1303e0     	mov	x0, x19
    6f60: 94000000     	bl	0x6f60 <haptic_lifetime_retire_state+0xcc>
		0000000000006f60:  R_AARCH64_CALL26	kfree
    6f64: 14000026     	b	0x6ffc <haptic_lifetime_retire_state+0x168>
    6f68: 91002260     	add	x0, x19, #0x8
    6f6c: 94000000     	bl	0x6f6c <haptic_lifetime_retire_state+0xd8>
		0000000000006f6c:  R_AARCH64_CALL26	mutex_lock
    6f70: b9405a68     	ldr	w8, [x19, #0x58]
    6f74: 350002c8     	cbnz	w8, 0x6fcc <haptic_lifetime_retire_state+0x138>
    6f78: f9430ab4     	ldr	x20, [x21, #0x610]
    6f7c: f9030abf     	str	xzr, [x21, #0x610]
    6f80: b9405e68     	ldr	w8, [x19, #0x5c]
    6f84: f9002a7f     	str	xzr, [x19, #0x50]
    6f88: 34000148     	cbz	w8, 0x6fb0 <haptic_lifetime_retire_state+0x11c>
    6f8c: b4000134     	cbz	x20, 0x6fb0 <haptic_lifetime_retire_state+0x11c>
    6f90: 91002260     	add	x0, x19, #0x8
    6f94: f9003274     	str	x20, [x19, #0x60]
    6f98: 94000000     	bl	0x6f98 <haptic_lifetime_retire_state+0x104>
		0000000000006f98:  R_AARCH64_CALL26	mutex_unlock
    6f9c: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006f9c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3d0
    6fa0: 91000000     	add	x0, x0, #0x0
		0000000000006fa0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3d0
    6fa4: f90002df     	str	xzr, [x22]
		0000000000006fa4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    6fa8: 94000000     	bl	0x6fa8 <haptic_lifetime_retire_state+0x114>
		0000000000006fa8:  R_AARCH64_CALL26	mutex_unlock
    6fac: 17ffffdf     	b	0x6f28 <haptic_lifetime_retire_state+0x94>
    6fb0: 91002260     	add	x0, x19, #0x8
    6fb4: 94000000     	bl	0x6fb4 <haptic_lifetime_retire_state+0x120>
		0000000000006fb4:  R_AARCH64_CALL26	mutex_unlock
    6fb8: f90002df     	str	xzr, [x22]
		0000000000006fb8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    6fbc: 17ffffc8     	b	0x6edc <haptic_lifetime_retire_state+0x48>
    6fc0: f9402a68     	ldr	x8, [x19, #0x50]
    6fc4: b4fffcc8     	cbz	x8, 0x6f5c <haptic_lifetime_retire_state+0xc8>
    6fc8: 17ffffe4     	b	0x6f58 <haptic_lifetime_retire_state+0xc4>
    6fcc: d4210000     	brk	#0x800
    6fd0: 17ffffea     	b	0x6f78 <haptic_lifetime_retire_state+0xe4>
    6fd4: 52800029     	mov	w9, #0x1                // =1
    6fd8: f9800271     	prfm	pstl1strm, [x19]
    6fdc: 885f7e68     	ldxr	w8, [x19]
    6fe0: 4b09010a     	sub	w10, w8, w9
    6fe4: 880bfe6a     	stlxr	w11, w10, [x19]
    6fe8: 35ffffab     	cbnz	w11, 0x6fdc <haptic_lifetime_retire_state+0x148>
    6fec: 7100051f     	cmp	w8, #0x1
    6ff0: 54fffa60     	b.eq	0x6f3c <haptic_lifetime_retire_state+0xa8>
    6ff4: 7100011f     	cmp	w8, #0x0
    6ff8: 540000cd     	b.le	0x7010 <haptic_lifetime_retire_state+0x17c>
    6ffc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7000: a94157f6     	ldp	x22, x21, [sp, #0x10]
    7004: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    7008: d50323bf     	autiasp
    700c: d65f03c0     	ret
    7010: aa1303e0     	mov	x0, x19
    7014: 52800061     	mov	w1, #0x3                // =3
    7018: 94000000     	bl	0x7018 <haptic_lifetime_retire_state+0x184>
		0000000000007018:  R_AARCH64_CALL26	refcount_warn_saturate
    701c: 17fffff8     	b	0x6ffc <haptic_lifetime_retire_state+0x168>
    7020: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    7024: f2b80009     	movk	x9, #0xc000, lsl #16
    7028: 8b090108     	add	x8, x8, x9
    702c: 52880009     	mov	w9, #0x4000             // =16384
    7030: f9800111     	prfm	pstl1strm, [x8]
    7034: c85f7d0a     	ldxr	x10, [x8]
    7038: 8a29014a     	bic	x10, x10, x9
    703c: c80b7d0a     	stxr	w11, x10, [x8]
    7040: 35ffffab     	cbnz	w11, 0x7034 <haptic_lifetime_retire_state+0x1a0>
    7044: 17ffffb5     	b	0x6f18 <haptic_lifetime_retire_state+0x84>
