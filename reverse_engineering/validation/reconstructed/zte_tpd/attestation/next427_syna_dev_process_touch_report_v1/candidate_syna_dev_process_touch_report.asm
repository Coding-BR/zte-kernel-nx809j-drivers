
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008d74 <syna_dev_process_touch_report>:
    8d74: d503233f     	paciasp
    8d78: d10243ff     	sub	sp, sp, #0x90
    8d7c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    8d80: a9046ffc     	stp	x28, x27, [sp, #0x40]
    8d84: a90567fa     	stp	x26, x25, [sp, #0x50]
    8d88: a9065ff8     	stp	x24, x23, [sp, #0x60]
    8d8c: a90757f6     	stp	x22, x21, [sp, #0x70]
    8d90: a9084ff4     	stp	x20, x19, [sp, #0x80]
    8d94: 9100c3fd     	add	x29, sp, #0x30
    8d98: d5384108     	mrs	x8, SP_EL0
    8d9c: f9438908     	ldr	x8, [x8, #0x710]
    8da0: f81f83a8     	stur	x8, [x29, #-0x8]
    8da4: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    8da8: d5384108     	mrs	x8, SP_EL0
    8dac: f9438908     	ldr	x8, [x8, #0x710]
    8db0: f90013e8     	str	x8, [sp, #0x20]
    8db4: b4002203     	cbz	x3, 0x91f4 <syna_dev_process_touch_report+0x480>
    8db8: 12001c08     	and	w8, w0, #0xff
    8dbc: 7100451f     	cmp	w8, #0x11
    8dc0: 54002281     	b.ne	0x9210 <syna_dev_process_touch_report+0x49c>
    8dc4: b9438468     	ldr	w8, [x3, #0x384]
    8dc8: aa0303f3     	mov	x19, x3
    8dcc: 7100051f     	cmp	w8, #0x1
    8dd0: 5400008b     	b.lt	0x8de0 <syna_dev_process_touch_report+0x6c>
    8dd4: 39561268     	ldrb	w8, [x19, #0x584]
    8dd8: 7100051f     	cmp	w8, #0x1
    8ddc: 54001ec1     	b.ne	0x91b4 <syna_dev_process_touch_report+0x440>
    8de0: b945e268     	ldr	w8, [x19, #0x5e0]
    8de4: 34000288     	cbz	w8, 0x8e34 <syna_dev_process_touch_report+0xc0>
    8de8: 52840008     	mov	w8, #0x2000             // =8192
    8dec: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
    8df0: f9423260     	ldr	x0, [x19, #0x460]
    8df4: 72a00068     	movk	w8, #0x3, lsl #16
    8df8: 2a0203f6     	mov	w22, w2
    8dfc: aa0103f4     	mov	x20, x1
    8e00: 1a883055     	csel	w21, w2, w8, lo
    8e04: aa1503e2     	mov	x2, x21
    8e08: 94000000     	bl	0x8e08 <syna_dev_process_touch_report+0x94>
		0000000000008e08:  R_AARCH64_CALL26	memcpy
    8e0c: 52800028     	mov	w8, #0x1                // =1
    8e10: 91112260     	add	x0, x19, #0x448
    8e14: 52800061     	mov	w1, #0x3                // =3
    8e18: 52800022     	mov	w2, #0x1                // =1
    8e1c: aa1f03e3     	mov	x3, xzr
    8e20: b9043a75     	str	w21, [x19, #0x438]
    8e24: b9046a68     	str	w8, [x19, #0x468]
    8e28: 94000000     	bl	0x8e28 <syna_dev_process_touch_report+0xb4>
		0000000000008e28:  R_AARCH64_CALL26	__wake_up
    8e2c: aa1403e1     	mov	x1, x20
    8e30: 2a1603e2     	mov	w2, w22
    8e34: aa1303e3     	mov	x3, x19
    8e38: f8410460     	ldr	x0, [x3], #0x10
    8e3c: 94000000     	bl	0x8e3c <syna_dev_process_touch_report+0xc8>
		0000000000008e3c:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
    8e40: 37f81f80     	tbnz	w0, #0x1f, 0x9230 <syna_dev_process_touch_report+0x4bc>
    8e44: f941da74     	ldr	x20, [x19, #0x3b0]
    8e48: b4001b74     	cbz	x20, 0x91b4 <syna_dev_process_touch_report+0x440>
    8e4c: f9400268     	ldr	x8, [x19]
    8e50: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008e50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8e54: 9109e260     	add	x0, x19, #0x278
    8e58: b9401917     	ldr	w23, [x8, #0x18]
    8e5c: f9400128     	ldr	x8, [x9]
		0000000000008e5c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8e60: f90007e8     	str	x8, [sp, #0x8]
    8e64: 94000000     	bl	0x8e64 <syna_dev_process_touch_report+0xf0>
		0000000000008e64:  R_AARCH64_CALL26	mutex_lock
    8e68: b9457e68     	ldr	w8, [x19, #0x57c]
    8e6c: 7100091f     	cmp	w8, #0x2
    8e70: 54000081     	b.ne	0x8e80 <syna_dev_process_touch_report+0x10c>
    8e74: 394bd268     	ldrb	w8, [x19, #0x2f4]
    8e78: 7100051f     	cmp	w8, #0x1
    8e7c: 54001ec0     	b.eq	0x9254 <syna_dev_process_touch_report+0x4e0>
    8e80: b9422268     	ldr	w8, [x19, #0x220]
    8e84: 7102011f     	cmp	w8, #0x80
    8e88: 540000a0     	b.eq	0x8e9c <syna_dev_process_touch_report+0x128>
    8e8c: 7102051f     	cmp	w8, #0x81
    8e90: 540000a1     	b.ne	0x8ea4 <syna_dev_process_touch_report+0x130>
    8e94: 2a1f03e0     	mov	w0, wzr
    8e98: 14000002     	b	0x8ea0 <syna_dev_process_touch_report+0x12c>
    8e9c: 52800020     	mov	w0, #0x1                // =1
    8ea0: 94000000     	bl	0x8ea0 <syna_dev_process_touch_report+0x12c>
		0000000000008ea0:  R_AARCH64_CALL26	report_ufp_uevent
    8ea4: b9457e68     	ldr	w8, [x19, #0x57c]
    8ea8: 7100091f     	cmp	w8, #0x2
    8eac: 54001800     	b.eq	0x91ac <syna_dev_process_touch_report+0x438>
    8eb0: 34001617     	cbz	w23, 0x9170 <syna_dev_process_touch_report+0x3fc>
    8eb4: 2a1f03f6     	mov	w22, wzr
    8eb8: aa1f03f5     	mov	x21, xzr
    8ebc: 91099279     	add	x25, x19, #0x264
    8ec0: 9100827a     	add	x26, x19, #0x20
    8ec4: f90003f7     	str	x23, [sp]
    8ec8: 14000011     	b	0x8f0c <syna_dev_process_touch_report+0x198>
    8ecc: aa1403e0     	mov	x0, x20
    8ed0: 52800061     	mov	w1, #0x3                // =3
    8ed4: 528005e2     	mov	w2, #0x2f               // =47
    8ed8: 2a1503e3     	mov	w3, w21
    8edc: 94000000     	bl	0x8edc <syna_dev_process_touch_report+0x168>
		0000000000008edc:  R_AARCH64_CALL26	input_event
    8ee0: aa1403e0     	mov	x0, x20
    8ee4: 2a1f03e1     	mov	w1, wzr
    8ee8: 2a1f03e2     	mov	w2, wzr
    8eec: 94000000     	bl	0x8eec <syna_dev_process_touch_report+0x178>
		0000000000008eec:  R_AARCH64_CALL26	input_mt_report_slot_state
    8ef0: 910006a8     	add	x8, x21, #0x1
    8ef4: 385f8349     	ldurb	w9, [x26, #-0x8]
    8ef8: 9100d35a     	add	x26, x26, #0x34
    8efc: eb0802ff     	cmp	x23, x8
    8f00: 38396aa9     	strb	w9, [x21, x25]
    8f04: aa0803f5     	mov	x21, x8
    8f08: 54001320     	b.eq	0x916c <syna_dev_process_touch_report+0x3f8>
    8f0c: 385f8348     	ldurb	w8, [x26, #-0x8]
    8f10: 7100191f     	cmp	w8, #0x6
    8f14: 540001a1     	b.ne	0x8f48 <syna_dev_process_touch_report+0x1d4>
    8f18: b945e668     	ldr	w8, [x19, #0x5e4]
    8f1c: 34000168     	cbz	w8, 0x8f48 <syna_dev_process_touch_report+0x1d4>
    8f20: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008f20:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    8f24: f9400108     	ldr	x8, [x8]
		0000000000008f24:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    8f28: b4000f08     	cbz	x8, 0x9108 <syna_dev_process_touch_report+0x394>
    8f2c: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008f2c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
    8f30: b9400129     	ldr	w9, [x9]
		0000000000008f30:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
    8f34: 36f80f09     	tbz	w9, #0x1f, 0x9114 <syna_dev_process_touch_report+0x3a0>
    8f38: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008f38:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    8f3c: b9400129     	ldr	w9, [x9]
		0000000000008f3c:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    8f40: 7100093f     	cmp	w9, #0x2
    8f44: 54000f6d     	b.le	0x9130 <syna_dev_process_touch_report+0x3bc>
    8f48: f1002abf     	cmp	x21, #0xa
    8f4c: 54000ce0     	b.eq	0x90e8 <syna_dev_process_touch_report+0x374>
    8f50: 38756b29     	ldrb	w9, [x25, x21]
    8f54: 385f8348     	ldurb	w8, [x26, #-0x8]
    8f58: 35000049     	cbnz	w9, 0x8f60 <syna_dev_process_touch_report+0x1ec>
    8f5c: 34fffca8     	cbz	w8, 0x8ef0 <syna_dev_process_touch_report+0x17c>
    8f60: 51000509     	sub	w9, w8, #0x1
    8f64: 7100053f     	cmp	w9, #0x1
    8f68: 540001e8     	b.hi	0x8fa4 <syna_dev_process_touch_report+0x230>
    8f6c: b9461a68     	ldr	w8, [x19, #0x618]
    8f70: b85fc35b     	ldur	w27, [x26, #-0x4]
    8f74: 2a1603f7     	mov	w23, w22
    8f78: 7100111f     	cmp	w8, #0x4
    8f7c: 54000361     	b.ne	0x8fe8 <syna_dev_process_touch_report+0x274>
    8f80: 29406348     	ldp	w8, w24, [x26]
    8f84: 529999aa     	mov	w10, #0xcccd            // =52429
    8f88: b9400b56     	ldr	w22, [x26, #0x8]
    8f8c: 72b9998a     	movk	w10, #0xcccc, lsl #16
    8f90: 9baa7f69     	umull	x9, w27, w10
    8f94: 9baa7d08     	umull	x8, w8, w10
    8f98: d363fd3b     	lsr	x27, x9, #35
    8f9c: d363fd1c     	lsr	x28, x8, #35
    8fa0: 14000026     	b	0x9038 <syna_dev_process_touch_report+0x2c4>
    8fa4: 35fffa68     	cbnz	w8, 0x8ef0 <syna_dev_process_touch_report+0x17c>
    8fa8: f94007e8     	ldr	x8, [sp, #0x8]
    8fac: 39406d08     	ldrb	w8, [x8, #0x1b]
    8fb0: 7100051f     	cmp	w8, #0x1
    8fb4: 54fff8c1     	b.ne	0x8ecc <syna_dev_process_touch_report+0x158>
    8fb8: b9461a62     	ldr	w2, [x19, #0x618]
    8fbc: 7100105f     	cmp	w2, #0x4
    8fc0: 54fff860     	b.eq	0x8ecc <syna_dev_process_touch_report+0x158>
    8fc4: aa1403e0     	mov	x0, x20
    8fc8: 2a1503e1     	mov	w1, w21
    8fcc: 94000000     	bl	0x8fcc <syna_dev_process_touch_report+0x258>
		0000000000008fcc:  R_AARCH64_CALL26	tpd_touch_release
    8fd0: 2a1f03e0     	mov	w0, wzr
    8fd4: 12800001     	mov	w1, #-0x1               // =-1
    8fd8: 12800002     	mov	w2, #-0x1               // =-1
    8fdc: 2a1503e3     	mov	w3, w21
    8fe0: 94000000     	bl	0x8fe0 <syna_dev_process_touch_report+0x26c>
		0000000000008fe0:  R_AARCH64_CALL26	one_key_report
    8fe4: 17ffffc3     	b	0x8ef0 <syna_dev_process_touch_report+0x17c>
    8fe8: f94007e8     	ldr	x8, [sp, #0x8]
    8fec: b940035c     	ldr	w28, [x26]
    8ff0: 2940db58     	ldp	w24, w22, [x26, #0x4]
    8ff4: 39406d08     	ldrb	w8, [x8, #0x1b]
    8ff8: 7100051f     	cmp	w8, #0x1
    8ffc: 540001e1     	b.ne	0x9038 <syna_dev_process_touch_report+0x2c4>
    9000: 6b16031f     	cmp	w24, w22
    9004: aa1403e0     	mov	x0, x20
    9008: 2a1b03e1     	mov	w1, w27
    900c: 1a96c304     	csel	w4, w24, w22, gt
    9010: 2a1c03e2     	mov	w2, w28
    9014: aa1503e3     	mov	x3, x21
    9018: 2a1f03e5     	mov	w5, wzr
    901c: 94000000     	bl	0x901c <syna_dev_process_touch_report+0x2a8>
		000000000000901c:  R_AARCH64_CALL26	tpd_touch_press
    9020: 52800020     	mov	w0, #0x1                // =1
    9024: 2a1b03e1     	mov	w1, w27
    9028: 2a1c03e2     	mov	w2, w28
    902c: 2a1503e3     	mov	w3, w21
    9030: 94000000     	bl	0x9030 <syna_dev_process_touch_report+0x2bc>
		0000000000009030:  R_AARCH64_CALL26	one_key_report
    9034: 1400002a     	b	0x90dc <syna_dev_process_touch_report+0x368>
    9038: aa1403e0     	mov	x0, x20
    903c: 52800061     	mov	w1, #0x3                // =3
    9040: 528005e2     	mov	w2, #0x2f               // =47
    9044: 2a1503e3     	mov	w3, w21
    9048: 94000000     	bl	0x9048 <syna_dev_process_touch_report+0x2d4>
		0000000000009048:  R_AARCH64_CALL26	input_event
    904c: aa1403e0     	mov	x0, x20
    9050: 2a1f03e1     	mov	w1, wzr
    9054: 52800022     	mov	w2, #0x1                // =1
    9058: 94000000     	bl	0x9058 <syna_dev_process_touch_report+0x2e4>
		0000000000009058:  R_AARCH64_CALL26	input_mt_report_slot_state
    905c: aa1403e0     	mov	x0, x20
    9060: 52800021     	mov	w1, #0x1                // =1
    9064: 52802942     	mov	w2, #0x14a              // =330
    9068: 52800023     	mov	w3, #0x1                // =1
    906c: 94000000     	bl	0x906c <syna_dev_process_touch_report+0x2f8>
		000000000000906c:  R_AARCH64_CALL26	input_event
    9070: aa1403e0     	mov	x0, x20
    9074: 52800021     	mov	w1, #0x1                // =1
    9078: 528028a2     	mov	w2, #0x145              // =325
    907c: 52800023     	mov	w3, #0x1                // =1
    9080: 94000000     	bl	0x9080 <syna_dev_process_touch_report+0x30c>
		0000000000009080:  R_AARCH64_CALL26	input_event
    9084: aa1403e0     	mov	x0, x20
    9088: 52800061     	mov	w1, #0x3                // =3
    908c: 528006a2     	mov	w2, #0x35               // =53
    9090: 2a1b03e3     	mov	w3, w27
    9094: 94000000     	bl	0x9094 <syna_dev_process_touch_report+0x320>
		0000000000009094:  R_AARCH64_CALL26	input_event
    9098: aa1403e0     	mov	x0, x20
    909c: 52800061     	mov	w1, #0x3                // =3
    90a0: 528006c2     	mov	w2, #0x36               // =54
    90a4: 2a1c03e3     	mov	w3, w28
    90a8: 94000000     	bl	0x90a8 <syna_dev_process_touch_report+0x334>
		00000000000090a8:  R_AARCH64_CALL26	input_event
    90ac: 6b16031f     	cmp	w24, w22
    90b0: aa1403e0     	mov	x0, x20
    90b4: 52800061     	mov	w1, #0x3                // =3
    90b8: 1a96c303     	csel	w3, w24, w22, gt
    90bc: 52800602     	mov	w2, #0x30               // =48
    90c0: 1a96b31b     	csel	w27, w24, w22, lt
    90c4: 94000000     	bl	0x90c4 <syna_dev_process_touch_report+0x350>
		00000000000090c4:  R_AARCH64_CALL26	input_event
    90c8: aa1403e0     	mov	x0, x20
    90cc: 52800061     	mov	w1, #0x3                // =3
    90d0: 52800622     	mov	w2, #0x31               // =49
    90d4: 2a1b03e3     	mov	w3, w27
    90d8: 94000000     	bl	0x90d8 <syna_dev_process_touch_report+0x364>
		00000000000090d8:  R_AARCH64_CALL26	input_event
    90dc: 110006f6     	add	w22, w23, #0x1
    90e0: f94003f7     	ldr	x23, [sp]
    90e4: 17ffff83     	b	0x8ef0 <syna_dev_process_touch_report+0x17c>
    90e8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000090e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    90ec: 91000000     	add	x0, x0, #0x0
		00000000000090ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    90f0: 528aa241     	mov	w1, #0x5512             // =21778
    90f4: 90000002     	adrp	x2, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000090f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f35
    90f8: 91000042     	add	x2, x2, #0x0
		00000000000090f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f35
    90fc: 52801243     	mov	w3, #0x92               // =146
    9100: 94000000     	bl	0x9100 <syna_dev_process_touch_report+0x38c>
		0000000000009100:  R_AARCH64_CALL26	_printk
    9104: 17ffff93     	b	0x8f50 <syna_dev_process_touch_report+0x1dc>
    9108: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009108:  R_AARCH64_ADR_PREL_PG_HI21	unk_33C0B
    910c: 91000000     	add	x0, x0, #0x0
		000000000000910c:  R_AARCH64_ADD_ABS_LO12_NC	unk_33C0B
    9110: 14000006     	b	0x9128 <syna_dev_process_touch_report+0x3b4>
    9114: 51000528     	sub	w8, w9, #0x1
    9118: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009118:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
    911c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		000000000000911c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3475B
    9120: 91000000     	add	x0, x0, #0x0
		0000000000009120:  R_AARCH64_ADD_ABS_LO12_NC	unk_3475B
    9124: b9000128     	str	w8, [x9]
		0000000000009124:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
    9128: 94000000     	bl	0x9128 <syna_dev_process_touch_report+0x3b4>
		0000000000009128:  R_AARCH64_CALL26	_printk
    912c: 17ffff87     	b	0x8f48 <syna_dev_process_touch_report+0x1d4>
    9130: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f19
    9134: 91000129     	add	x9, x9, #0x0
		0000000000009134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f19
    9138: 91004100     	add	x0, x8, #0x10
    913c: 910043e2     	add	x2, sp, #0x10
    9140: 52800041     	mov	w1, #0x2                // =2
    9144: a9017fe9     	stp	x9, xzr, [sp, #0x10]
    9148: 94000000     	bl	0x9148 <syna_dev_process_touch_report+0x3d4>
		0000000000009148:  R_AARCH64_CALL26	kobject_uevent_env
    914c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		000000000000914c:  R_AARCH64_ADR_PREL_PG_HI21	unk_32F20
    9150: 91000000     	add	x0, x0, #0x0
		0000000000009150:  R_AARCH64_ADD_ABS_LO12_NC	unk_32F20
    9154: 94000000     	bl	0x9154 <syna_dev_process_touch_report+0x3e0>
		0000000000009154:  R_AARCH64_CALL26	_printk
    9158: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009158:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    915c: b9400128     	ldr	w8, [x9]
		000000000000915c:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    9160: 11000508     	add	w8, w8, #0x1
    9164: b9000128     	str	w8, [x9]
		0000000000009164:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    9168: 17ffff78     	b	0x8f48 <syna_dev_process_touch_report+0x1d4>
    916c: 35000176     	cbnz	w22, 0x9198 <syna_dev_process_touch_report+0x424>
    9170: aa1403e0     	mov	x0, x20
    9174: 52800021     	mov	w1, #0x1                // =1
    9178: 52802942     	mov	w2, #0x14a              // =330
    917c: 2a1f03e3     	mov	w3, wzr
    9180: 94000000     	bl	0x9180 <syna_dev_process_touch_report+0x40c>
		0000000000009180:  R_AARCH64_CALL26	input_event
    9184: aa1403e0     	mov	x0, x20
    9188: 52800021     	mov	w1, #0x1                // =1
    918c: 528028a2     	mov	w2, #0x145              // =325
    9190: 2a1f03e3     	mov	w3, wzr
    9194: 94000000     	bl	0x9194 <syna_dev_process_touch_report+0x420>
		0000000000009194:  R_AARCH64_CALL26	input_event
    9198: aa1403e0     	mov	x0, x20
    919c: 2a1f03e1     	mov	w1, wzr
    91a0: 2a1f03e2     	mov	w2, wzr
    91a4: 2a1f03e3     	mov	w3, wzr
    91a8: 94000000     	bl	0x91a8 <syna_dev_process_touch_report+0x434>
		00000000000091a8:  R_AARCH64_CALL26	input_event
    91ac: 9109e260     	add	x0, x19, #0x278
    91b0: 94000000     	bl	0x91b0 <syna_dev_process_touch_report+0x43c>
		00000000000091b0:  R_AARCH64_CALL26	mutex_unlock
    91b4: 2a1f03e0     	mov	w0, wzr
    91b8: d5384108     	mrs	x8, SP_EL0
    91bc: f9438908     	ldr	x8, [x8, #0x710]
    91c0: d5384109     	mrs	x9, SP_EL0
    91c4: f85f83a9     	ldur	x9, [x29, #-0x8]
    91c8: eb09011f     	cmp	x8, x9
    91cc: 540008a1     	b.ne	0x92e0 <syna_dev_process_touch_report+0x56c>
    91d0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    91d4: a94757f6     	ldp	x22, x21, [sp, #0x70]
    91d8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    91dc: a94567fa     	ldp	x26, x25, [sp, #0x50]
    91e0: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    91e4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    91e8: 910243ff     	add	sp, sp, #0x90
    91ec: d50323bf     	autiasp
    91f0: d65f03c0     	ret
    91f4: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000091f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3411A
    91f8: 91000000     	add	x0, x0, #0x0
		00000000000091f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3411A
    91fc: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000091fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91
    9200: 91000021     	add	x1, x1, #0x0
		0000000000009200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91
    9204: 94000000     	bl	0x9204 <syna_dev_process_touch_report+0x490>
		0000000000009204:  R_AARCH64_CALL26	_printk
    9208: 128002a0     	mov	w0, #-0x16              // =-22
    920c: 17ffffeb     	b	0x91b8 <syna_dev_process_touch_report+0x444>
    9210: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009210:  R_AARCH64_ADR_PREL_PG_HI21	unk_3660C
    9214: 91000000     	add	x0, x0, #0x0
		0000000000009214:  R_AARCH64_ADD_ABS_LO12_NC	unk_3660C
    9218: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91
    921c: 91000021     	add	x1, x1, #0x0
		000000000000921c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91
    9220: 2a0803e2     	mov	w2, w8
    9224: 94000000     	bl	0x9224 <syna_dev_process_touch_report+0x4b0>
		0000000000009224:  R_AARCH64_CALL26	_printk
    9228: 128002a0     	mov	w0, #-0x16              // =-22
    922c: 17ffffe3     	b	0x91b8 <syna_dev_process_touch_report+0x444>
    9230: 90000008     	adrp	x8, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009230:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A914
    9234: 91000108     	add	x8, x8, #0x0
		0000000000009234:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A914
    9238: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91
    923c: 91000021     	add	x1, x1, #0x0
		000000000000923c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91
    9240: 2a0003f3     	mov	w19, w0
    9244: aa0803e0     	mov	x0, x8
    9248: 94000000     	bl	0x9248 <syna_dev_process_touch_report+0x4d4>
		0000000000009248:  R_AARCH64_CALL26	_printk
    924c: 2a1303e0     	mov	w0, w19
    9250: 17ffffda     	b	0x91b8 <syna_dev_process_touch_report+0x444>
    9254: b9422262     	ldr	w2, [x19, #0x220]
    9258: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009258:  R_AARCH64_ADR_PREL_PG_HI21	unk_35FD5
    925c: 91000000     	add	x0, x0, #0x0
		000000000000925c:  R_AARCH64_ADD_ABS_LO12_NC	unk_35FD5
    9260: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    9264: 91000021     	add	x1, x1, #0x0
		0000000000009264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    9268: 94000000     	bl	0x9268 <syna_dev_process_touch_report+0x4f4>
		0000000000009268:  R_AARCH64_CALL26	_printk
    926c: b9422268     	ldr	w8, [x19, #0x220]
    9270: 7100411f     	cmp	w8, #0x10
    9274: 54000180     	b.eq	0x92a4 <syna_dev_process_touch_report+0x530>
    9278: 7100051f     	cmp	w8, #0x1
    927c: 54000261     	b.ne	0x92c8 <syna_dev_process_touch_report+0x554>
    9280: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009280:  R_AARCH64_ADR_PREL_PG_HI21	unk_35FFC
    9284: 91000000     	add	x0, x0, #0x0
		0000000000009284:  R_AARCH64_ADD_ABS_LO12_NC	unk_35FFC
    9288: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    928c: 91000021     	add	x1, x1, #0x0
		000000000000928c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    9290: 94000000     	bl	0x9290 <syna_dev_process_touch_report+0x51c>
		0000000000009290:  R_AARCH64_CALL26	_printk
    9294: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2878
    9298: 91000000     	add	x0, x0, #0x0
		0000000000009298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2878
    929c: 94000000     	bl	0x929c <syna_dev_process_touch_report+0x528>
		000000000000929c:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    92a0: 17fffef8     	b	0x8e80 <syna_dev_process_touch_report+0x10c>
    92a4: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000092a4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3354D
    92a8: 91000000     	add	x0, x0, #0x0
		00000000000092a8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3354D
    92ac: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000092ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    92b0: 91000021     	add	x1, x1, #0x0
		00000000000092b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    92b4: 94000000     	bl	0x92b4 <syna_dev_process_touch_report+0x540>
		00000000000092b4:  R_AARCH64_CALL26	_printk
    92b8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000092b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2499
    92bc: 91000000     	add	x0, x0, #0x0
		00000000000092bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2499
    92c0: 94000000     	bl	0x92c0 <syna_dev_process_touch_report+0x54c>
		00000000000092c0:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    92c4: 17fffeef     	b	0x8e80 <syna_dev_process_touch_report+0x10c>
    92c8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000092c8:  R_AARCH64_ADR_PREL_PG_HI21	unk_37625
    92cc: 91000000     	add	x0, x0, #0x0
		00000000000092cc:  R_AARCH64_ADD_ABS_LO12_NC	unk_37625
    92d0: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000092d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    92d4: 91000021     	add	x1, x1, #0x0
		00000000000092d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    92d8: 94000000     	bl	0x92d8 <syna_dev_process_touch_report+0x564>
		00000000000092d8:  R_AARCH64_CALL26	_printk
    92dc: 17fffee9     	b	0x8e80 <syna_dev_process_touch_report+0x10c>
    92e0: 94000000     	bl	0x92e0 <syna_dev_process_touch_report+0x56c>
		00000000000092e0:  R_AARCH64_CALL26	__stack_chk_fail
