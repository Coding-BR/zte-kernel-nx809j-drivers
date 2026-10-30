
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d14 <point_is_in_limit_area>:
    1d14: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1d18: 12003c2a     	and	w10, w1, #0xffff
    1d1c: f9400109     	ldr	x9, [x8]
		0000000000001d1c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1d20: b940112c     	ldr	w12, [x9, #0x10]
    1d24: 39409d2b     	ldrb	w11, [x9, #0x27]
    1d28: 121e7988     	and	w8, w12, #0xfffffffd
    1d2c: 7100051f     	cmp	w8, #0x1
    1d30: 12003c08     	and	w8, w0, #0xffff
    1d34: 540000a1     	b.ne	0x1d48 <point_is_in_limit_area+0x34>
    1d38: 6b08017f     	cmp	w11, w8
    1d3c: 540000e9     	b.ls	0x1d58 <point_is_in_limit_area+0x44>
    1d40: 52800020     	mov	w0, #0x1                // =1
    1d44: d65f03c0     	ret
    1d48: 6b08017f     	cmp	w11, w8
    1d4c: 54000149     	b.ls	0x1d74 <point_is_in_limit_area+0x60>
    1d50: 52800020     	mov	w0, #0x1                // =1
    1d54: d65f03c0     	ret
    1d58: 7948852b     	ldrh	w11, [x9, #0x442]
    1d5c: 3940a12c     	ldrb	w12, [x9, #0x28]
    1d60: 4b0c016b     	sub	w11, w11, w12
    1d64: 6b08017f     	cmp	w11, w8
    1d68: 5400014a     	b.ge	0x1d90 <point_is_in_limit_area+0x7c>
    1d6c: 52800020     	mov	w0, #0x1                // =1
    1d70: d65f03c0     	ret
    1d74: 7948852b     	ldrh	w11, [x9, #0x442]
    1d78: 3940a12d     	ldrb	w13, [x9, #0x28]
    1d7c: 4b0d016d     	sub	w13, w11, w13
    1d80: 6b0801bf     	cmp	w13, w8
    1d84: 5400010a     	b.ge	0x1da4 <point_is_in_limit_area+0x90>
    1d88: 52800020     	mov	w0, #0x1                // =1
    1d8c: d65f03c0     	ret
    1d90: 3940a528     	ldrb	w8, [x9, #0x29]
    1d94: 6b0a011f     	cmp	w8, w10
    1d98: 54000729     	b.ls	0x1e7c <point_is_in_limit_area+0x168>
    1d9c: 52800020     	mov	w0, #0x1                // =1
    1da0: d65f03c0     	ret
    1da4: 3500052c     	cbnz	w12, 0x1e48 <point_is_in_limit_area+0x134>
    1da8: 3940d12c     	ldrb	w12, [x9, #0x34]
    1dac: 0b0c058c     	add	w12, w12, w12, lsl #1
    1db0: 6b4c051f     	cmp	w8, w12, lsr #1
    1db4: 540000c3     	b.lo	0x1dcc <point_is_in_limit_area+0xb8>
    1db8: 3940d52c     	ldrb	w12, [x9, #0x35]
    1dbc: 0b0c058c     	add	w12, w12, w12, lsl #1
    1dc0: 4b4c056c     	sub	w12, w11, w12, lsr #1
    1dc4: 6b08019f     	cmp	w12, w8
    1dc8: 5400040a     	b.ge	0x1e48 <point_is_in_limit_area+0x134>
    1dcc: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001dcc:  R_AARCH64_ADR_PREL_PG_HI21	byte_30EFB
    1dd0: 3940018c     	ldrb	w12, [x12]
		0000000000001dd0:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30EFB
    1dd4: 3700060c     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1dd8: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001dd8:  R_AARCH64_ADR_PREL_PG_HI21	byte_30F83
    1ddc: 3940018c     	ldrb	w12, [x12]
		0000000000001ddc:  R_AARCH64_LDST8_ABS_LO12_NC	byte_30F83
    1de0: 370005ac     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1de4: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	byte_3100B
    1de8: 3940018c     	ldrb	w12, [x12]
		0000000000001de8:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3100B
    1dec: 3700054c     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1df0: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001df0:  R_AARCH64_ADR_PREL_PG_HI21	byte_31093
    1df4: 3940018c     	ldrb	w12, [x12]
		0000000000001df4:  R_AARCH64_LDST8_ABS_LO12_NC	byte_31093
    1df8: 370004ec     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1dfc: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001dfc:  R_AARCH64_ADR_PREL_PG_HI21	byte_3111B
    1e00: 3940018c     	ldrb	w12, [x12]
		0000000000001e00:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3111B
    1e04: 3700048c     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1e08: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	byte_311A3
    1e0c: 3940018c     	ldrb	w12, [x12]
		0000000000001e0c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_311A3
    1e10: 3700042c     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1e14: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001e14:  R_AARCH64_ADR_PREL_PG_HI21	byte_3122B
    1e18: 3940018c     	ldrb	w12, [x12]
		0000000000001e18:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3122B
    1e1c: 370003cc     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1e20: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	byte_312B3
    1e24: 3940018c     	ldrb	w12, [x12]
		0000000000001e24:  R_AARCH64_LDST8_ABS_LO12_NC	byte_312B3
    1e28: 3700036c     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1e2c: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001e2c:  R_AARCH64_ADR_PREL_PG_HI21	byte_3133B
    1e30: 3940018c     	ldrb	w12, [x12]
		0000000000001e30:  R_AARCH64_LDST8_ABS_LO12_NC	byte_3133B
    1e34: 3700030c     	tbnz	w12, #0x0, 0x1e94 <point_is_in_limit_area+0x180>
    1e38: 9000000c     	adrp	x12, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001e38:  R_AARCH64_ADR_PREL_PG_HI21	byte_313C3
    1e3c: 3940018c     	ldrb	w12, [x12]
		0000000000001e3c:  R_AARCH64_LDST8_ABS_LO12_NC	byte_313C3
    1e40: 7100059f     	cmp	w12, #0x1
    1e44: 54000280     	b.eq	0x1e94 <point_is_in_limit_area+0x180>
    1e48: 3940e12c     	ldrb	w12, [x9, #0x38]
    1e4c: 3400014c     	cbz	w12, 0x1e74 <point_is_in_limit_area+0x160>
    1e50: 79405d2c     	ldrh	w12, [x9, #0x2e]
    1e54: 6b0a019f     	cmp	w12, w10
    1e58: 540000e2     	b.hs	0x1e74 <point_is_in_limit_area+0x160>
    1e5c: 79405929     	ldrh	w9, [x9, #0x2c]
    1e60: 4b09016a     	sub	w10, w11, w9
    1e64: 6b08013f     	cmp	w9, w8
    1e68: 7a489148     	ccmp	w10, w8, #0x8, ls
    1e6c: 1a9fa7e0     	cset	w0, lt
    1e70: d65f03c0     	ret
    1e74: 2a1f03e0     	mov	w0, wzr
    1e78: d65f03c0     	ret
    1e7c: 79488928     	ldrh	w8, [x9, #0x444]
    1e80: 3940a929     	ldrb	w9, [x9, #0x2a]
    1e84: 4b090108     	sub	w8, w8, w9
    1e88: 6b21211f     	cmp	w8, w1, uxth
    1e8c: 1a9fa7e0     	cset	w0, lt
    1e90: d65f03c0     	ret
    1e94: d503233f     	paciasp
    1e98: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1e9c: 910003fd     	mov	x29, sp
    1ea0: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001ea0:  R_AARCH64_ADR_PREL_PG_HI21	unk_353E5
    1ea4: 91000000     	add	x0, x0, #0x0
		0000000000001ea4:  R_AARCH64_ADD_ABS_LO12_NC	unk_353E5
    1ea8: 12003c22     	and	w2, w1, #0xffff
    1eac: 2a0803e1     	mov	w1, w8
    1eb0: 94000000     	bl	0x1eb0 <point_is_in_limit_area+0x19c>
		0000000000001eb0:  R_AARCH64_CALL26	_printk
    1eb4: 52800020     	mov	w0, #0x1                // =1
    1eb8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1ebc: d50323bf     	autiasp
    1ec0: d65f03c0     	ret
