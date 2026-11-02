
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009c88 <vibrator_work_routine>:
    9c88: d503233f     	paciasp
    9c8c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    9c90: a9015ff8     	stp	x24, x23, [sp, #0x10]
    9c94: a90257f6     	stp	x22, x21, [sp, #0x20]
    9c98: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9c9c: 910003fd     	mov	x29, sp
    9ca0: d104e013     	sub	x19, x0, #0x138
    9ca4: aa0003f4     	mov	x20, x0
    9ca8: d110a015     	sub	x21, x0, #0x428
    9cac: aa1303e0     	mov	x0, x19
    9cb0: 94000000     	bl	0x9cb0 <vibrator_work_routine+0x28>
		0000000000009cb0:  R_AARCH64_CALL26	mutex_lock
    9cb4: f940d288     	ldr	x8, [x20, #0x1a0]
    9cb8: aa1503e0     	mov	x0, x21
    9cbc: 52800021     	mov	w1, #0x1                // =1
    9cc0: f9408d08     	ldr	x8, [x8, #0x118]
    9cc4: b85fc110     	ldur	w16, [x8, #-0x4]
    9cc8: 728dd2b1     	movk	w17, #0x6e95
    9ccc: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    9cd0: 6b11021f     	cmp	w16, w17
    9cd4: 54000040     	b.eq	0x9cdc <vibrator_work_routine+0x54>
    9cd8: d4304500     	brk	#0x8228
    9cdc: d63f0100     	blr	x8
    9ce0: f940d288     	ldr	x8, [x20, #0x1a0]
    9ce4: aa1503e0     	mov	x0, x21
    9ce8: f9401d08     	ldr	x8, [x8, #0x38]
    9cec: b85fc110     	ldur	w16, [x8, #-0x4]
    9cf0: 72810611     	movk	w17, #0x830
    9cf4: 72b08f51     	movk	w17, #0x847a, lsl #16
    9cf8: 6b11021f     	cmp	w16, w17
    9cfc: 54000040     	b.eq	0x9d04 <vibrator_work_routine+0x7c>
    9d00: d4304500     	brk	#0x8228
    9d04: d63f0100     	blr	x8
    9d08: d10fa288     	sub	x8, x20, #0x3e8
    9d0c: b9400108     	ldr	w8, [x8]
    9d10: 35000128     	cbnz	w8, 0x9d34 <vibrator_work_routine+0xac>
    9d14: aa1303e0     	mov	x0, x19
    9d18: 94000000     	bl	0x9d18 <vibrator_work_routine+0x90>
		0000000000009d18:  R_AARCH64_CALL26	mutex_unlock
    9d1c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9d20: a94257f6     	ldp	x22, x21, [sp, #0x20]
    9d24: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    9d28: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    9d2c: d50323bf     	autiasp
    9d30: d65f03c0     	ret
    9d34: d10f5298     	sub	x24, x20, #0x3d4
    9d38: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3582
    9d3c: 91000000     	add	x0, x0, #0x0
		0000000000009d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3582
    9d40: b9400304     	ldr	w4, [x24]
    9d44: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9d48: 91000021     	add	x1, x1, #0x0
		0000000000009d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9d4c: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23bc
    9d50: 91000063     	add	x3, x3, #0x0
		0000000000009d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23bc
    9d54: 52807842     	mov	w2, #0x3c2              // =962
    9d58: 94000000     	bl	0x9d58 <vibrator_work_routine+0xd0>
		0000000000009d58:  R_AARCH64_CALL26	_printk
    9d5c: b9400304     	ldr	w4, [x24]
    9d60: 7100009f     	cmp	w4, #0x0
    9d64: 5400014c     	b.gt	0x9d8c <vibrator_work_routine+0x104>
    9d68: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d6
    9d6c: 91000000     	add	x0, x0, #0x0
		0000000000009d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d6
    9d70: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9d74: 91000021     	add	x1, x1, #0x0
		0000000000009d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9d78: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23bc
    9d7c: 91000063     	add	x3, x3, #0x0
		0000000000009d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23bc
    9d80: 52807882     	mov	w2, #0x3c4              // =964
    9d84: 94000000     	bl	0x9d84 <vibrator_work_routine+0xfc>
		0000000000009d84:  R_AARCH64_CALL26	_printk
    9d88: 14000053     	b	0x9ed4 <vibrator_work_routine+0x24c>
    9d8c: 3940f289     	ldrb	w9, [x20, #0x3c]
    9d90: d1103688     	sub	x8, x20, #0x40d
    9d94: 5280002a     	mov	w10, #0x1               // =1
    9d98: 3900010a     	strb	w10, [x8]
    9d9c: 6b09009f     	cmp	w4, w9
    9da0: 54000082     	b.hs	0x9db0 <vibrator_work_routine+0x128>
    9da4: 2a1f03f6     	mov	w22, wzr
    9da8: 52800077     	mov	w23, #0x3               // =3
    9dac: 14000011     	b	0x9df0 <vibrator_work_routine+0x168>
    9db0: 3940f689     	ldrb	w9, [x20, #0x3d]
    9db4: 6b09009f     	cmp	w4, w9
    9db8: 54000082     	b.hs	0x9dc8 <vibrator_work_routine+0x140>
    9dbc: 2a1f03f6     	mov	w22, wzr
    9dc0: 52800057     	mov	w23, #0x2               // =2
    9dc4: 1400000b     	b	0x9df0 <vibrator_work_routine+0x168>
    9dc8: 3940fa89     	ldrb	w9, [x20, #0x3e]
    9dcc: 6b09009f     	cmp	w4, w9
    9dd0: 54000082     	b.hs	0x9de0 <vibrator_work_routine+0x158>
    9dd4: 2a1f03f6     	mov	w22, wzr
    9dd8: 52800037     	mov	w23, #0x1               // =1
    9ddc: 14000005     	b	0x9df0 <vibrator_work_routine+0x168>
    9de0: 528000a9     	mov	w9, #0x5                // =5
    9de4: 52800097     	mov	w23, #0x4               // =4
    9de8: 528001f6     	mov	w22, #0xf               // =15
    9dec: 39000109     	strb	w9, [x8]
    9df0: 90000000     	adrp	x0, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26dc
    9df4: 91000000     	add	x0, x0, #0x0
		0000000000009df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26dc
    9df8: 90000001     	adrp	x1, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    9dfc: 91000021     	add	x1, x1, #0x0
		0000000000009dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    9e00: 90000003     	adrp	x3, 0x9000 <aw_i2c_probe+0x5d4>
		0000000000009e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23bc
    9e04: 91000063     	add	x3, x3, #0x0
		0000000000009e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23bc
    9e08: 52807ac2     	mov	w2, #0x3d6              // =982
    9e0c: 2a1703e5     	mov	w5, w23
    9e10: 94000000     	bl	0x9e10 <vibrator_work_routine+0x188>
		0000000000009e10:  R_AARCH64_CALL26	_printk
    9e14: f940d288     	ldr	x8, [x20, #0x1a0]
    9e18: aa1503e0     	mov	x0, x21
    9e1c: 2a1f03e1     	mov	w1, wzr
    9e20: 2a1703e2     	mov	w2, w23
    9e24: f9406108     	ldr	x8, [x8, #0xc0]
    9e28: b85fc110     	ldur	w16, [x8, #-0x4]
    9e2c: 728fccb1     	movk	w17, #0x7e65
    9e30: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9e34: 6b11021f     	cmp	w16, w17
    9e38: 54000040     	b.eq	0x9e40 <vibrator_work_routine+0x1b8>
    9e3c: d4304500     	brk	#0x8228
    9e40: d63f0100     	blr	x8
    9e44: f940d288     	ldr	x8, [x20, #0x1a0]
    9e48: aa1503e0     	mov	x0, x21
    9e4c: 2a1f03e1     	mov	w1, wzr
    9e50: 2a1603e2     	mov	w2, w22
    9e54: f9406508     	ldr	x8, [x8, #0xc8]
    9e58: b85fc110     	ldur	w16, [x8, #-0x4]
    9e5c: 728fccb1     	movk	w17, #0x7e65
    9e60: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9e64: 6b11021f     	cmp	w16, w17
    9e68: 54000040     	b.eq	0x9e70 <vibrator_work_routine+0x1e8>
    9e6c: d4304500     	brk	#0x8228
    9e70: d63f0100     	blr	x8
    9e74: f940d288     	ldr	x8, [x20, #0x1a0]
    9e78: aa1503e0     	mov	x0, x21
    9e7c: 52800021     	mov	w1, #0x1                // =1
    9e80: 2a1f03e2     	mov	w2, wzr
    9e84: f9406108     	ldr	x8, [x8, #0xc0]
    9e88: b85fc110     	ldur	w16, [x8, #-0x4]
    9e8c: 728fccb1     	movk	w17, #0x7e65
    9e90: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9e94: 6b11021f     	cmp	w16, w17
    9e98: 54000040     	b.eq	0x9ea0 <vibrator_work_routine+0x218>
    9e9c: d4304500     	brk	#0x8228
    9ea0: d63f0100     	blr	x8
    9ea4: f940d288     	ldr	x8, [x20, #0x1a0]
    9ea8: aa1503e0     	mov	x0, x21
    9eac: 52800021     	mov	w1, #0x1                // =1
    9eb0: 2a1f03e2     	mov	w2, wzr
    9eb4: f9406508     	ldr	x8, [x8, #0xc8]
    9eb8: b85fc110     	ldur	w16, [x8, #-0x4]
    9ebc: 728fccb1     	movk	w17, #0x7e65
    9ec0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9ec4: 6b11021f     	cmp	w16, w17
    9ec8: 54000040     	b.eq	0x9ed0 <vibrator_work_routine+0x248>
    9ecc: d4304500     	brk	#0x8228
    9ed0: d63f0100     	blr	x8
    9ed4: d1103688     	sub	x8, x20, #0x40d
    9ed8: 39400108     	ldrb	w8, [x8]
    9edc: 7100111f     	cmp	w8, #0x4
    9ee0: 540005a0     	b.eq	0x9f94 <vibrator_work_routine+0x30c>
    9ee4: 7100151f     	cmp	w8, #0x5
    9ee8: 54000941     	b.ne	0xa010 <vibrator_work_routine+0x388>
    9eec: d1103288     	sub	x8, x20, #0x40c
    9ef0: 39400109     	ldrb	w9, [x8]
    9ef4: f940d288     	ldr	x8, [x20, #0x1a0]
    9ef8: 7100053f     	cmp	w9, #0x1
    9efc: 54001181     	b.ne	0xa12c <vibrator_work_routine+0x4a4>
    9f00: f9402108     	ldr	x8, [x8, #0x40]
    9f04: aa1503e0     	mov	x0, x21
    9f08: b85fc110     	ldur	w16, [x8, #-0x4]
    9f0c: 72810611     	movk	w17, #0x830
    9f10: 72b08f51     	movk	w17, #0x847a, lsl #16
    9f14: 6b11021f     	cmp	w16, w17
    9f18: 54000040     	b.eq	0x9f20 <vibrator_work_routine+0x298>
    9f1c: d4304500     	brk	#0x8228
    9f20: d63f0100     	blr	x8
    9f24: d10f0288     	sub	x8, x20, #0x3c0
    9f28: 52823289     	mov	w9, #0x1194             // =4500
    9f2c: b9400108     	ldr	w8, [x8]
    9f30: 6b09011f     	cmp	w8, w9
    9f34: 54001229     	b.ls	0xa178 <vibrator_work_routine+0x4f0>
    9f38: f940d288     	ldr	x8, [x20, #0x1a0]
    9f3c: aa1503e0     	mov	x0, x21
    9f40: 528000a1     	mov	w1, #0x5                // =5
    9f44: f9404d08     	ldr	x8, [x8, #0x98]
    9f48: b85fc110     	ldur	w16, [x8, #-0x4]
    9f4c: 729bedd1     	movk	w17, #0xdf6e
    9f50: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9f54: 6b11021f     	cmp	w16, w17
    9f58: 54000040     	b.eq	0x9f60 <vibrator_work_routine+0x2d8>
    9f5c: d4304500     	brk	#0x8228
    9f60: d63f0100     	blr	x8
    9f64: f940d288     	ldr	x8, [x20, #0x1a0]
    9f68: aa1503e0     	mov	x0, x21
    9f6c: 52800021     	mov	w1, #0x1                // =1
    9f70: f9403108     	ldr	x8, [x8, #0x60]
    9f74: b85fc110     	ldur	w16, [x8, #-0x4]
    9f78: 729bedd1     	movk	w17, #0xdf6e
    9f7c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9f80: 6b11021f     	cmp	w16, w17
    9f84: 54000040     	b.eq	0x9f8c <vibrator_work_routine+0x304>
    9f88: d4304500     	brk	#0x8228
    9f8c: d63f0100     	blr	x8
    9f90: 1400000b     	b	0x9fbc <vibrator_work_routine+0x334>
    9f94: f940d288     	ldr	x8, [x20, #0x1a0]
    9f98: aa1503e0     	mov	x0, x21
    9f9c: f9402508     	ldr	x8, [x8, #0x48]
    9fa0: b85fc110     	ldur	w16, [x8, #-0x4]
    9fa4: 72810611     	movk	w17, #0x830
    9fa8: 72b08f51     	movk	w17, #0x847a, lsl #16
    9fac: 6b11021f     	cmp	w16, w17
    9fb0: 54000040     	b.eq	0x9fb8 <vibrator_work_routine+0x330>
    9fb4: d4304500     	brk	#0x8228
    9fb8: d63f0100     	blr	x8
    9fbc: b9400308     	ldr	w8, [x24]
    9fc0: 5289ba69     	mov	w9, #0x4dd3             // =19923
    9fc4: d103e280     	sub	x0, x20, #0xf8
    9fc8: 72a20c49     	movk	w9, #0x1062, lsl #16
    9fcc: aa1f03e2     	mov	x2, xzr
    9fd0: 52800023     	mov	w3, #0x1                // =1
    9fd4: 9b297d09     	smull	x9, w8, w9
    9fd8: d37ffd2a     	lsr	x10, x9, #63
    9fdc: 9366fd29     	asr	x9, x9, #38
    9fe0: 0b0a0129     	add	w9, w9, w10
    9fe4: 52807d0a     	mov	w10, #0x3e8             // =1000
    9fe8: 1b0aa128     	msub	w8, w9, w10, w8
    9fec: 5288480a     	mov	w10, #0x4240            // =16960
    9ff0: 72a001ea     	movk	w10, #0xf, lsl #16
    9ff4: 1b0a7d08     	mul	w8, w8, w10
    9ff8: 5299400a     	mov	w10, #0xca00            // =51712
    9ffc: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    a000: 93407d08     	sxtw	x8, w8
    a004: 9b2a2121     	smaddl	x1, w9, w10, x8
    a008: 94000000     	bl	0xa008 <vibrator_work_routine+0x380>
		000000000000a008:  R_AARCH64_CALL26	hrtimer_start_range_ns
    a00c: 17ffff42     	b	0x9d14 <vibrator_work_routine+0x8c>
    a010: 7100051f     	cmp	w8, #0x1
    a014: 540007a1     	b.ne	0xa108 <vibrator_work_routine+0x480>
    a018: f940d288     	ldr	x8, [x20, #0x1a0]
    a01c: d10fd289     	sub	x9, x20, #0x3f4
    a020: aa1503e0     	mov	x0, x21
    a024: b9400121     	ldr	w1, [x9]
    a028: f9404508     	ldr	x8, [x8, #0x88]
    a02c: b85fc110     	ldur	w16, [x8, #-0x4]
    a030: 729bedd1     	movk	w17, #0xdf6e
    a034: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a038: 6b11021f     	cmp	w16, w17
    a03c: 54000040     	b.eq	0xa044 <vibrator_work_routine+0x3bc>
    a040: d4304500     	brk	#0x8228
    a044: d63f0100     	blr	x8
    a048: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d4
    a04c: 91000000     	add	x0, x0, #0x0
		000000000000a04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d4
    a050: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a054: 91000021     	add	x1, x1, #0x0
		000000000000a054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a058: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f4
    a05c: 91000063     	add	x3, x3, #0x0
		000000000000a05c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f4
    a060: 52805322     	mov	w2, #0x299              // =665
    a064: 94000000     	bl	0xa064 <vibrator_work_routine+0x3dc>
		000000000000a064:  R_AARCH64_CALL26	_printk
    a068: 3941be81     	ldrb	w1, [x20, #0x6f]
    a06c: f940d288     	ldr	x8, [x20, #0x1a0]
    a070: 3940e689     	ldrb	w9, [x20, #0x39]
    a074: 5100042a     	sub	w10, w1, #0x1
    a078: f9405108     	ldr	x8, [x8, #0xa0]
    a07c: 6b2a013f     	cmp	w9, w10, uxtb
    a080: 54000068     	b.hi	0xa08c <vibrator_work_routine+0x404>
    a084: d10fe289     	sub	x9, x20, #0x3f8
    a088: b9400121     	ldr	w1, [x9]
    a08c: aa1503e0     	mov	x0, x21
    a090: b85fc110     	ldur	w16, [x8, #-0x4]
    a094: 729bedd1     	movk	w17, #0xdf6e
    a098: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a09c: 6b11021f     	cmp	w16, w17
    a0a0: 54000040     	b.eq	0xa0a8 <vibrator_work_routine+0x420>
    a0a4: d4304500     	brk	#0x8228
    a0a8: d63f0100     	blr	x8
    a0ac: f940d288     	ldr	x8, [x20, #0x1a0]
    a0b0: aa1503e0     	mov	x0, x21
    a0b4: 52800021     	mov	w1, #0x1                // =1
    a0b8: f9404d08     	ldr	x8, [x8, #0x98]
    a0bc: b85fc110     	ldur	w16, [x8, #-0x4]
    a0c0: 729bedd1     	movk	w17, #0xdf6e
    a0c4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a0c8: 6b11021f     	cmp	w16, w17
    a0cc: 54000040     	b.eq	0xa0d4 <vibrator_work_routine+0x44c>
    a0d0: d4304500     	brk	#0x8228
    a0d4: d63f0100     	blr	x8
    a0d8: f940d288     	ldr	x8, [x20, #0x1a0]
    a0dc: aa1503e0     	mov	x0, x21
    a0e0: 52800021     	mov	w1, #0x1                // =1
    a0e4: f9403108     	ldr	x8, [x8, #0x60]
    a0e8: b85fc110     	ldur	w16, [x8, #-0x4]
    a0ec: 729bedd1     	movk	w17, #0xdf6e
    a0f0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a0f4: 6b11021f     	cmp	w16, w17
    a0f8: 54000040     	b.eq	0xa100 <vibrator_work_routine+0x478>
    a0fc: d4304500     	brk	#0x8228
    a100: d63f0100     	blr	x8
    a104: 17ffff04     	b	0x9d14 <vibrator_work_routine+0x8c>
    a108: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41a0
    a10c: 91000000     	add	x0, x0, #0x0
		000000000000a10c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41a0
    a110: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a114: 91000021     	add	x1, x1, #0x0
		000000000000a114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a118: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2316
    a11c: 91000063     	add	x3, x3, #0x0
		000000000000a11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2316
    a120: 52808162     	mov	w2, #0x40b              // =1035
    a124: 94000000     	bl	0xa124 <vibrator_work_routine+0x49c>
		000000000000a124:  R_AARCH64_CALL26	_printk
    a128: 17fffefb     	b	0x9d14 <vibrator_work_routine+0x8c>
    a12c: d10fd289     	sub	x9, x20, #0x3f4
    a130: f9404508     	ldr	x8, [x8, #0x88]
    a134: aa1503e0     	mov	x0, x21
    a138: b9400121     	ldr	w1, [x9]
    a13c: b85fc110     	ldur	w16, [x8, #-0x4]
    a140: 729bedd1     	movk	w17, #0xdf6e
    a144: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a148: 6b11021f     	cmp	w16, w17
    a14c: 54000040     	b.eq	0xa154 <vibrator_work_routine+0x4cc>
    a150: d4304500     	brk	#0x8228
    a154: d63f0100     	blr	x8
    a158: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d4
    a15c: 91000000     	add	x0, x0, #0x0
		000000000000a15c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d4
    a160: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a164: 91000021     	add	x1, x1, #0x0
		000000000000a164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a168: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f4
    a16c: 91000063     	add	x3, x3, #0x0
		000000000000a16c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f4
    a170: 528052a2     	mov	w2, #0x295              // =661
    a174: 14000019     	b	0xa1d8 <vibrator_work_routine+0x550>
    a178: d10fd28a     	sub	x10, x20, #0x3f4
    a17c: aa1503e0     	mov	x0, x21
    a180: b940014a     	ldr	w10, [x10]
    a184: 1b097d49     	mul	w9, w10, w9
    a188: 5280180a     	mov	w10, #0xc0              // =192
    a18c: 1ac80928     	udiv	w8, w9, w8
    a190: f940d289     	ldr	x9, [x20, #0x1a0]
    a194: f9404529     	ldr	x9, [x9, #0x88]
    a198: 7103011f     	cmp	w8, #0xc0
    a19c: 1a8ab101     	csel	w1, w8, w10, lt
    a1a0: b85fc130     	ldur	w16, [x9, #-0x4]
    a1a4: 729bedd1     	movk	w17, #0xdf6e
    a1a8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a1ac: 6b11021f     	cmp	w16, w17
    a1b0: 54000040     	b.eq	0xa1b8 <vibrator_work_routine+0x530>
    a1b4: d4304520     	brk	#0x8229
    a1b8: d63f0120     	blr	x9
    a1bc: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a1bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f80
    a1c0: 91000000     	add	x0, x0, #0x0
		000000000000a1c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f80
    a1c4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a1c8: 91000021     	add	x1, x1, #0x0
		000000000000a1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a1cc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a1cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f4
    a1d0: 91000063     	add	x3, x3, #0x0
		000000000000a1d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f4
    a1d4: 52805242     	mov	w2, #0x292              // =658
    a1d8: 94000000     	bl	0xa1d8 <vibrator_work_routine+0x550>
		000000000000a1d8:  R_AARCH64_CALL26	_printk
    a1dc: 17ffff57     	b	0x9f38 <vibrator_work_routine+0x2b0>
