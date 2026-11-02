
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009cb8 <vibrator_work_routine>:
    9cb8: d503233f     	paciasp
    9cbc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    9cc0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    9cc4: a90257f6     	stp	x22, x21, [sp, #0x20]
    9cc8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9ccc: 910003fd     	mov	x29, sp
    9cd0: d104e013     	sub	x19, x0, #0x138
    9cd4: aa0003f4     	mov	x20, x0
    9cd8: d110a015     	sub	x21, x0, #0x428
    9cdc: aa1303e0     	mov	x0, x19
    9ce0: 94000000     	bl	0x9ce0 <vibrator_work_routine+0x28>
		0000000000009ce0:  R_AARCH64_CALL26	mutex_lock
    9ce4: f940d288     	ldr	x8, [x20, #0x1a0]
    9ce8: aa1503e0     	mov	x0, x21
    9cec: 52800021     	mov	w1, #0x1                // =1
    9cf0: f9408d08     	ldr	x8, [x8, #0x118]
    9cf4: b85fc110     	ldur	w16, [x8, #-0x4]
    9cf8: 728dd2b1     	movk	w17, #0x6e95
    9cfc: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    9d00: 6b11021f     	cmp	w16, w17
    9d04: 54000040     	b.eq	0x9d0c <vibrator_work_routine+0x54>
    9d08: d4304500     	brk	#0x8228
    9d0c: d63f0100     	blr	x8
    9d10: f940d288     	ldr	x8, [x20, #0x1a0]
    9d14: aa1503e0     	mov	x0, x21
    9d18: f9401d08     	ldr	x8, [x8, #0x38]
    9d1c: b85fc110     	ldur	w16, [x8, #-0x4]
    9d20: 72810611     	movk	w17, #0x830
    9d24: 72b08f51     	movk	w17, #0x847a, lsl #16
    9d28: 6b11021f     	cmp	w16, w17
    9d2c: 54000040     	b.eq	0x9d34 <vibrator_work_routine+0x7c>
    9d30: d4304500     	brk	#0x8228
    9d34: d63f0100     	blr	x8
    9d38: d10fa288     	sub	x8, x20, #0x3e8
    9d3c: b9400108     	ldr	w8, [x8]
    9d40: 35000128     	cbnz	w8, 0x9d64 <vibrator_work_routine+0xac>
    9d44: aa1303e0     	mov	x0, x19
    9d48: 94000000     	bl	0x9d48 <vibrator_work_routine+0x90>
		0000000000009d48:  R_AARCH64_CALL26	mutex_unlock
    9d4c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9d50: a94257f6     	ldp	x22, x21, [sp, #0x20]
    9d54: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    9d58: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    9d5c: d50323bf     	autiasp
    9d60: d65f03c0     	ret
    9d64: d10f5298     	sub	x24, x20, #0x3d4
    9d68: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x350e
    9d6c: 91000000     	add	x0, x0, #0x0
		0000000000009d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x350e
    9d70: b9400304     	ldr	w4, [x24]
    9d74: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    9d78: 91000021     	add	x1, x1, #0x0
		0000000000009d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    9d7c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2348
    9d80: 91000063     	add	x3, x3, #0x0
		0000000000009d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2348
    9d84: 52807842     	mov	w2, #0x3c2              // =962
    9d88: 94000000     	bl	0x9d88 <vibrator_work_routine+0xd0>
		0000000000009d88:  R_AARCH64_CALL26	_printk
    9d8c: b9400304     	ldr	w4, [x24]
    9d90: 7100009f     	cmp	w4, #0x0
    9d94: 5400014c     	b.gt	0x9dbc <vibrator_work_routine+0x104>
    9d98: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2562
    9d9c: 91000000     	add	x0, x0, #0x0
		0000000000009d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2562
    9da0: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    9da4: 91000021     	add	x1, x1, #0x0
		0000000000009da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    9da8: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2348
    9dac: 91000063     	add	x3, x3, #0x0
		0000000000009dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2348
    9db0: 52807882     	mov	w2, #0x3c4              // =964
    9db4: 94000000     	bl	0x9db4 <vibrator_work_routine+0xfc>
		0000000000009db4:  R_AARCH64_CALL26	_printk
    9db8: 14000053     	b	0x9f04 <vibrator_work_routine+0x24c>
    9dbc: 3940f289     	ldrb	w9, [x20, #0x3c]
    9dc0: d1103688     	sub	x8, x20, #0x40d
    9dc4: 5280002a     	mov	w10, #0x1               // =1
    9dc8: 3900010a     	strb	w10, [x8]
    9dcc: 6b09009f     	cmp	w4, w9
    9dd0: 54000082     	b.hs	0x9de0 <vibrator_work_routine+0x128>
    9dd4: 2a1f03f6     	mov	w22, wzr
    9dd8: 52800077     	mov	w23, #0x3               // =3
    9ddc: 14000011     	b	0x9e20 <vibrator_work_routine+0x168>
    9de0: 3940f689     	ldrb	w9, [x20, #0x3d]
    9de4: 6b09009f     	cmp	w4, w9
    9de8: 54000082     	b.hs	0x9df8 <vibrator_work_routine+0x140>
    9dec: 2a1f03f6     	mov	w22, wzr
    9df0: 52800057     	mov	w23, #0x2               // =2
    9df4: 1400000b     	b	0x9e20 <vibrator_work_routine+0x168>
    9df8: 3940fa89     	ldrb	w9, [x20, #0x3e]
    9dfc: 6b09009f     	cmp	w4, w9
    9e00: 54000082     	b.hs	0x9e10 <vibrator_work_routine+0x158>
    9e04: 2a1f03f6     	mov	w22, wzr
    9e08: 52800037     	mov	w23, #0x1               // =1
    9e0c: 14000005     	b	0x9e20 <vibrator_work_routine+0x168>
    9e10: 528000a9     	mov	w9, #0x5                // =5
    9e14: 52800097     	mov	w23, #0x4               // =4
    9e18: 528001f6     	mov	w22, #0xf               // =15
    9e1c: 39000109     	strb	w9, [x8]
    9e20: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2668
    9e24: 91000000     	add	x0, x0, #0x0
		0000000000009e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2668
    9e28: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    9e2c: 91000021     	add	x1, x1, #0x0
		0000000000009e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    9e30: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5a4>
		0000000000009e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2348
    9e34: 91000063     	add	x3, x3, #0x0
		0000000000009e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2348
    9e38: 52807ac2     	mov	w2, #0x3d6              // =982
    9e3c: 2a1703e5     	mov	w5, w23
    9e40: 94000000     	bl	0x9e40 <vibrator_work_routine+0x188>
		0000000000009e40:  R_AARCH64_CALL26	_printk
    9e44: f940d288     	ldr	x8, [x20, #0x1a0]
    9e48: aa1503e0     	mov	x0, x21
    9e4c: 2a1f03e1     	mov	w1, wzr
    9e50: 2a1703e2     	mov	w2, w23
    9e54: f9406108     	ldr	x8, [x8, #0xc0]
    9e58: b85fc110     	ldur	w16, [x8, #-0x4]
    9e5c: 728fccb1     	movk	w17, #0x7e65
    9e60: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9e64: 6b11021f     	cmp	w16, w17
    9e68: 54000040     	b.eq	0x9e70 <vibrator_work_routine+0x1b8>
    9e6c: d4304500     	brk	#0x8228
    9e70: d63f0100     	blr	x8
    9e74: f940d288     	ldr	x8, [x20, #0x1a0]
    9e78: aa1503e0     	mov	x0, x21
    9e7c: 2a1f03e1     	mov	w1, wzr
    9e80: 2a1603e2     	mov	w2, w22
    9e84: f9406508     	ldr	x8, [x8, #0xc8]
    9e88: b85fc110     	ldur	w16, [x8, #-0x4]
    9e8c: 728fccb1     	movk	w17, #0x7e65
    9e90: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9e94: 6b11021f     	cmp	w16, w17
    9e98: 54000040     	b.eq	0x9ea0 <vibrator_work_routine+0x1e8>
    9e9c: d4304500     	brk	#0x8228
    9ea0: d63f0100     	blr	x8
    9ea4: f940d288     	ldr	x8, [x20, #0x1a0]
    9ea8: aa1503e0     	mov	x0, x21
    9eac: 52800021     	mov	w1, #0x1                // =1
    9eb0: 2a1f03e2     	mov	w2, wzr
    9eb4: f9406108     	ldr	x8, [x8, #0xc0]
    9eb8: b85fc110     	ldur	w16, [x8, #-0x4]
    9ebc: 728fccb1     	movk	w17, #0x7e65
    9ec0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9ec4: 6b11021f     	cmp	w16, w17
    9ec8: 54000040     	b.eq	0x9ed0 <vibrator_work_routine+0x218>
    9ecc: d4304500     	brk	#0x8228
    9ed0: d63f0100     	blr	x8
    9ed4: f940d288     	ldr	x8, [x20, #0x1a0]
    9ed8: aa1503e0     	mov	x0, x21
    9edc: 52800021     	mov	w1, #0x1                // =1
    9ee0: 2a1f03e2     	mov	w2, wzr
    9ee4: f9406508     	ldr	x8, [x8, #0xc8]
    9ee8: b85fc110     	ldur	w16, [x8, #-0x4]
    9eec: 728fccb1     	movk	w17, #0x7e65
    9ef0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9ef4: 6b11021f     	cmp	w16, w17
    9ef8: 54000040     	b.eq	0x9f00 <vibrator_work_routine+0x248>
    9efc: d4304500     	brk	#0x8228
    9f00: d63f0100     	blr	x8
    9f04: d1103688     	sub	x8, x20, #0x40d
    9f08: 39400108     	ldrb	w8, [x8]
    9f0c: 7100111f     	cmp	w8, #0x4
    9f10: 540005a0     	b.eq	0x9fc4 <vibrator_work_routine+0x30c>
    9f14: 7100151f     	cmp	w8, #0x5
    9f18: 54000941     	b.ne	0xa040 <vibrator_work_routine+0x388>
    9f1c: d1103288     	sub	x8, x20, #0x40c
    9f20: 39400109     	ldrb	w9, [x8]
    9f24: f940d288     	ldr	x8, [x20, #0x1a0]
    9f28: 7100053f     	cmp	w9, #0x1
    9f2c: 54001181     	b.ne	0xa15c <vibrator_work_routine+0x4a4>
    9f30: f9402108     	ldr	x8, [x8, #0x40]
    9f34: aa1503e0     	mov	x0, x21
    9f38: b85fc110     	ldur	w16, [x8, #-0x4]
    9f3c: 72810611     	movk	w17, #0x830
    9f40: 72b08f51     	movk	w17, #0x847a, lsl #16
    9f44: 6b11021f     	cmp	w16, w17
    9f48: 54000040     	b.eq	0x9f50 <vibrator_work_routine+0x298>
    9f4c: d4304500     	brk	#0x8228
    9f50: d63f0100     	blr	x8
    9f54: d10f0288     	sub	x8, x20, #0x3c0
    9f58: 52823289     	mov	w9, #0x1194             // =4500
    9f5c: b9400108     	ldr	w8, [x8]
    9f60: 6b09011f     	cmp	w8, w9
    9f64: 54001229     	b.ls	0xa1a8 <vibrator_work_routine+0x4f0>
    9f68: f940d288     	ldr	x8, [x20, #0x1a0]
    9f6c: aa1503e0     	mov	x0, x21
    9f70: 528000a1     	mov	w1, #0x5                // =5
    9f74: f9404d08     	ldr	x8, [x8, #0x98]
    9f78: b85fc110     	ldur	w16, [x8, #-0x4]
    9f7c: 729bedd1     	movk	w17, #0xdf6e
    9f80: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9f84: 6b11021f     	cmp	w16, w17
    9f88: 54000040     	b.eq	0x9f90 <vibrator_work_routine+0x2d8>
    9f8c: d4304500     	brk	#0x8228
    9f90: d63f0100     	blr	x8
    9f94: f940d288     	ldr	x8, [x20, #0x1a0]
    9f98: aa1503e0     	mov	x0, x21
    9f9c: 52800021     	mov	w1, #0x1                // =1
    9fa0: f9403108     	ldr	x8, [x8, #0x60]
    9fa4: b85fc110     	ldur	w16, [x8, #-0x4]
    9fa8: 729bedd1     	movk	w17, #0xdf6e
    9fac: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9fb0: 6b11021f     	cmp	w16, w17
    9fb4: 54000040     	b.eq	0x9fbc <vibrator_work_routine+0x304>
    9fb8: d4304500     	brk	#0x8228
    9fbc: d63f0100     	blr	x8
    9fc0: 1400000b     	b	0x9fec <vibrator_work_routine+0x334>
    9fc4: f940d288     	ldr	x8, [x20, #0x1a0]
    9fc8: aa1503e0     	mov	x0, x21
    9fcc: f9402508     	ldr	x8, [x8, #0x48]
    9fd0: b85fc110     	ldur	w16, [x8, #-0x4]
    9fd4: 72810611     	movk	w17, #0x830
    9fd8: 72b08f51     	movk	w17, #0x847a, lsl #16
    9fdc: 6b11021f     	cmp	w16, w17
    9fe0: 54000040     	b.eq	0x9fe8 <vibrator_work_routine+0x330>
    9fe4: d4304500     	brk	#0x8228
    9fe8: d63f0100     	blr	x8
    9fec: b9400308     	ldr	w8, [x24]
    9ff0: 5289ba69     	mov	w9, #0x4dd3             // =19923
    9ff4: d103e280     	sub	x0, x20, #0xf8
    9ff8: 72a20c49     	movk	w9, #0x1062, lsl #16
    9ffc: aa1f03e2     	mov	x2, xzr
    a000: 52800023     	mov	w3, #0x1                // =1
    a004: 9b297d09     	smull	x9, w8, w9
    a008: d37ffd2a     	lsr	x10, x9, #63
    a00c: 9366fd29     	asr	x9, x9, #38
    a010: 0b0a0129     	add	w9, w9, w10
    a014: 52807d0a     	mov	w10, #0x3e8             // =1000
    a018: 1b0aa128     	msub	w8, w9, w10, w8
    a01c: 5288480a     	mov	w10, #0x4240            // =16960
    a020: 72a001ea     	movk	w10, #0xf, lsl #16
    a024: 1b0a7d08     	mul	w8, w8, w10
    a028: 5299400a     	mov	w10, #0xca00            // =51712
    a02c: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    a030: 93407d08     	sxtw	x8, w8
    a034: 9b2a2121     	smaddl	x1, w9, w10, x8
    a038: 94000000     	bl	0xa038 <vibrator_work_routine+0x380>
		000000000000a038:  R_AARCH64_CALL26	hrtimer_start_range_ns
    a03c: 17ffff42     	b	0x9d44 <vibrator_work_routine+0x8c>
    a040: 7100051f     	cmp	w8, #0x1
    a044: 540007a1     	b.ne	0xa138 <vibrator_work_routine+0x480>
    a048: f940d288     	ldr	x8, [x20, #0x1a0]
    a04c: d10fd289     	sub	x9, x20, #0x3f4
    a050: aa1503e0     	mov	x0, x21
    a054: b9400121     	ldr	w1, [x9]
    a058: f9404508     	ldr	x8, [x8, #0x88]
    a05c: b85fc110     	ldur	w16, [x8, #-0x4]
    a060: 729bedd1     	movk	w17, #0xdf6e
    a064: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a068: 6b11021f     	cmp	w16, w17
    a06c: 54000040     	b.eq	0xa074 <vibrator_work_routine+0x3bc>
    a070: d4304500     	brk	#0x8228
    a074: d63f0100     	blr	x8
    a078: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2960
    a07c: 91000000     	add	x0, x0, #0x0
		000000000000a07c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2960
    a080: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a084: 91000021     	add	x1, x1, #0x0
		000000000000a084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a088: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3480
    a08c: 91000063     	add	x3, x3, #0x0
		000000000000a08c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3480
    a090: 52805322     	mov	w2, #0x299              // =665
    a094: 94000000     	bl	0xa094 <vibrator_work_routine+0x3dc>
		000000000000a094:  R_AARCH64_CALL26	_printk
    a098: 3941be81     	ldrb	w1, [x20, #0x6f]
    a09c: f940d288     	ldr	x8, [x20, #0x1a0]
    a0a0: 3940e689     	ldrb	w9, [x20, #0x39]
    a0a4: 5100042a     	sub	w10, w1, #0x1
    a0a8: f9405108     	ldr	x8, [x8, #0xa0]
    a0ac: 6b2a013f     	cmp	w9, w10, uxtb
    a0b0: 54000068     	b.hi	0xa0bc <vibrator_work_routine+0x404>
    a0b4: d10fe289     	sub	x9, x20, #0x3f8
    a0b8: b9400121     	ldr	w1, [x9]
    a0bc: aa1503e0     	mov	x0, x21
    a0c0: b85fc110     	ldur	w16, [x8, #-0x4]
    a0c4: 729bedd1     	movk	w17, #0xdf6e
    a0c8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a0cc: 6b11021f     	cmp	w16, w17
    a0d0: 54000040     	b.eq	0xa0d8 <vibrator_work_routine+0x420>
    a0d4: d4304500     	brk	#0x8228
    a0d8: d63f0100     	blr	x8
    a0dc: f940d288     	ldr	x8, [x20, #0x1a0]
    a0e0: aa1503e0     	mov	x0, x21
    a0e4: 52800021     	mov	w1, #0x1                // =1
    a0e8: f9404d08     	ldr	x8, [x8, #0x98]
    a0ec: b85fc110     	ldur	w16, [x8, #-0x4]
    a0f0: 729bedd1     	movk	w17, #0xdf6e
    a0f4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a0f8: 6b11021f     	cmp	w16, w17
    a0fc: 54000040     	b.eq	0xa104 <vibrator_work_routine+0x44c>
    a100: d4304500     	brk	#0x8228
    a104: d63f0100     	blr	x8
    a108: f940d288     	ldr	x8, [x20, #0x1a0]
    a10c: aa1503e0     	mov	x0, x21
    a110: 52800021     	mov	w1, #0x1                // =1
    a114: f9403108     	ldr	x8, [x8, #0x60]
    a118: b85fc110     	ldur	w16, [x8, #-0x4]
    a11c: 729bedd1     	movk	w17, #0xdf6e
    a120: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a124: 6b11021f     	cmp	w16, w17
    a128: 54000040     	b.eq	0xa130 <vibrator_work_routine+0x478>
    a12c: d4304500     	brk	#0x8228
    a130: d63f0100     	blr	x8
    a134: 17ffff04     	b	0x9d44 <vibrator_work_routine+0x8c>
    a138: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x412c
    a13c: 91000000     	add	x0, x0, #0x0
		000000000000a13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x412c
    a140: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a144: 91000021     	add	x1, x1, #0x0
		000000000000a144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a148: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22a2
    a14c: 91000063     	add	x3, x3, #0x0
		000000000000a14c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22a2
    a150: 52808162     	mov	w2, #0x40b              // =1035
    a154: 94000000     	bl	0xa154 <vibrator_work_routine+0x49c>
		000000000000a154:  R_AARCH64_CALL26	_printk
    a158: 17fffefb     	b	0x9d44 <vibrator_work_routine+0x8c>
    a15c: d10fd289     	sub	x9, x20, #0x3f4
    a160: f9404508     	ldr	x8, [x8, #0x88]
    a164: aa1503e0     	mov	x0, x21
    a168: b9400121     	ldr	w1, [x9]
    a16c: b85fc110     	ldur	w16, [x8, #-0x4]
    a170: 729bedd1     	movk	w17, #0xdf6e
    a174: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a178: 6b11021f     	cmp	w16, w17
    a17c: 54000040     	b.eq	0xa184 <vibrator_work_routine+0x4cc>
    a180: d4304500     	brk	#0x8228
    a184: d63f0100     	blr	x8
    a188: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2960
    a18c: 91000000     	add	x0, x0, #0x0
		000000000000a18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2960
    a190: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a194: 91000021     	add	x1, x1, #0x0
		000000000000a194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a198: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3480
    a19c: 91000063     	add	x3, x3, #0x0
		000000000000a19c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3480
    a1a0: 528052a2     	mov	w2, #0x295              // =661
    a1a4: 14000019     	b	0xa208 <vibrator_work_routine+0x550>
    a1a8: d10fd28a     	sub	x10, x20, #0x3f4
    a1ac: aa1503e0     	mov	x0, x21
    a1b0: b940014a     	ldr	w10, [x10]
    a1b4: 1b097d49     	mul	w9, w10, w9
    a1b8: 5280180a     	mov	w10, #0xc0              // =192
    a1bc: 1ac80928     	udiv	w8, w9, w8
    a1c0: f940d289     	ldr	x9, [x20, #0x1a0]
    a1c4: f9404529     	ldr	x9, [x9, #0x88]
    a1c8: 7103011f     	cmp	w8, #0xc0
    a1cc: 1a8ab101     	csel	w1, w8, w10, lt
    a1d0: b85fc130     	ldur	w16, [x9, #-0x4]
    a1d4: 729bedd1     	movk	w17, #0xdf6e
    a1d8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a1dc: 6b11021f     	cmp	w16, w17
    a1e0: 54000040     	b.eq	0xa1e8 <vibrator_work_routine+0x530>
    a1e4: d4304520     	brk	#0x8229
    a1e8: d63f0120     	blr	x9
    a1ec: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a1ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f0c
    a1f0: 91000000     	add	x0, x0, #0x0
		000000000000a1f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f0c
    a1f4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a1f8: 91000021     	add	x1, x1, #0x0
		000000000000a1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a1fc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a1fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3480
    a200: 91000063     	add	x3, x3, #0x0
		000000000000a200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3480
    a204: 52805242     	mov	w2, #0x292              // =658
    a208: 94000000     	bl	0xa208 <vibrator_work_routine+0x550>
		000000000000a208:  R_AARCH64_CALL26	_printk
    a20c: 17ffff57     	b	0x9f68 <vibrator_work_routine+0x2b0>
