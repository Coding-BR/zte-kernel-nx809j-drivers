
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008d60 <syna_dev_process_touch_report>:
    8d60: d503233f     	paciasp
    8d64: d10243ff     	sub	sp, sp, #0x90
    8d68: a9037bfd     	stp	x29, x30, [sp, #0x30]
    8d6c: a9046ffc     	stp	x28, x27, [sp, #0x40]
    8d70: a90567fa     	stp	x26, x25, [sp, #0x50]
    8d74: a9065ff8     	stp	x24, x23, [sp, #0x60]
    8d78: a90757f6     	stp	x22, x21, [sp, #0x70]
    8d7c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    8d80: 9100c3fd     	add	x29, sp, #0x30
    8d84: d5384108     	mrs	x8, SP_EL0
    8d88: f9438908     	ldr	x8, [x8, #0x710]
    8d8c: f81f83a8     	stur	x8, [x29, #-0x8]
    8d90: b40020e3     	cbz	x3, 0x91ac <syna_dev_process_touch_report+0x44c>
    8d94: 12001c08     	and	w8, w0, #0xff
    8d98: 7100451f     	cmp	w8, #0x11
    8d9c: 54002161     	b.ne	0x91c8 <syna_dev_process_touch_report+0x468>
    8da0: b9438468     	ldr	w8, [x3, #0x384]
    8da4: aa0303f3     	mov	x19, x3
    8da8: 7100051f     	cmp	w8, #0x1
    8dac: 5400008b     	b.lt	0x8dbc <syna_dev_process_touch_report+0x5c>
    8db0: 39561268     	ldrb	w8, [x19, #0x584]
    8db4: 7100051f     	cmp	w8, #0x1
    8db8: 54001dc1     	b.ne	0x9170 <syna_dev_process_touch_report+0x410>
    8dbc: b945e268     	ldr	w8, [x19, #0x5e0]
    8dc0: 34000288     	cbz	w8, 0x8e10 <syna_dev_process_touch_report+0xb0>
    8dc4: 52840008     	mov	w8, #0x2000             // =8192
    8dc8: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
    8dcc: f9423260     	ldr	x0, [x19, #0x460]
    8dd0: 72a00068     	movk	w8, #0x3, lsl #16
    8dd4: 2a0203f6     	mov	w22, w2
    8dd8: aa0103f4     	mov	x20, x1
    8ddc: 1a883055     	csel	w21, w2, w8, lo
    8de0: aa1503e2     	mov	x2, x21
    8de4: 94000000     	bl	0x8de4 <syna_dev_process_touch_report+0x84>
		0000000000008de4:  R_AARCH64_CALL26	memcpy
    8de8: 52800028     	mov	w8, #0x1                // =1
    8dec: 91112260     	add	x0, x19, #0x448
    8df0: 52800021     	mov	w1, #0x1                // =1
    8df4: 52800022     	mov	w2, #0x1                // =1
    8df8: aa1f03e3     	mov	x3, xzr
    8dfc: b9043a75     	str	w21, [x19, #0x438]
    8e00: b9046a68     	str	w8, [x19, #0x468]
    8e04: 94000000     	bl	0x8e04 <syna_dev_process_touch_report+0xa4>
		0000000000008e04:  R_AARCH64_CALL26	__wake_up
    8e08: aa1403e1     	mov	x1, x20
    8e0c: 2a1603e2     	mov	w2, w22
    8e10: aa1303e3     	mov	x3, x19
    8e14: f8410460     	ldr	x0, [x3], #0x10
    8e18: 94000000     	bl	0x8e18 <syna_dev_process_touch_report+0xb8>
		0000000000008e18:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
    8e1c: 37f81e60     	tbnz	w0, #0x1f, 0x91e8 <syna_dev_process_touch_report+0x488>
    8e20: f941da74     	ldr	x20, [x19, #0x3b0]
    8e24: b4001a74     	cbz	x20, 0x9170 <syna_dev_process_touch_report+0x410>
    8e28: f9400268     	ldr	x8, [x19]
    8e2c: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008e2c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8e30: 9109e260     	add	x0, x19, #0x278
    8e34: b9401919     	ldr	w25, [x8, #0x18]
    8e38: f9400128     	ldr	x8, [x9]
		0000000000008e38:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8e3c: f9000be8     	str	x8, [sp, #0x10]
    8e40: 94000000     	bl	0x8e40 <syna_dev_process_touch_report+0xe0>
		0000000000008e40:  R_AARCH64_CALL26	mutex_lock
    8e44: b9457e68     	ldr	w8, [x19, #0x57c]
    8e48: 7100091f     	cmp	w8, #0x2
    8e4c: 54000081     	b.ne	0x8e5c <syna_dev_process_touch_report+0xfc>
    8e50: 394bd268     	ldrb	w8, [x19, #0x2f4]
    8e54: 7100051f     	cmp	w8, #0x1
    8e58: 54001da0     	b.eq	0x920c <syna_dev_process_touch_report+0x4ac>
    8e5c: b9422268     	ldr	w8, [x19, #0x220]
    8e60: 7102011f     	cmp	w8, #0x80
    8e64: 540000a0     	b.eq	0x8e78 <syna_dev_process_touch_report+0x118>
    8e68: 7102051f     	cmp	w8, #0x81
    8e6c: 540000a1     	b.ne	0x8e80 <syna_dev_process_touch_report+0x120>
    8e70: 2a1f03e0     	mov	w0, wzr
    8e74: 14000002     	b	0x8e7c <syna_dev_process_touch_report+0x11c>
    8e78: 52800020     	mov	w0, #0x1                // =1
    8e7c: 94000000     	bl	0x8e7c <syna_dev_process_touch_report+0x11c>
		0000000000008e7c:  R_AARCH64_CALL26	report_ufp_uevent
    8e80: b9457e68     	ldr	w8, [x19, #0x57c]
    8e84: 7100091f     	cmp	w8, #0x2
    8e88: 54001700     	b.eq	0x9168 <syna_dev_process_touch_report+0x408>
    8e8c: 34001519     	cbz	w25, 0x912c <syna_dev_process_touch_report+0x3cc>
    8e90: 2a1f03fb     	mov	w27, wzr
    8e94: aa1f03f5     	mov	x21, xzr
    8e98: 91099278     	add	x24, x19, #0x264
    8e9c: 91008276     	add	x22, x19, #0x20
    8ea0: f90007f9     	str	x25, [sp, #0x8]
    8ea4: 14000011     	b	0x8ee8 <syna_dev_process_touch_report+0x188>
    8ea8: aa1403e0     	mov	x0, x20
    8eac: 52800061     	mov	w1, #0x3                // =3
    8eb0: 528005e2     	mov	w2, #0x2f               // =47
    8eb4: 2a1503e3     	mov	w3, w21
    8eb8: 94000000     	bl	0x8eb8 <syna_dev_process_touch_report+0x158>
		0000000000008eb8:  R_AARCH64_CALL26	input_event
    8ebc: aa1403e0     	mov	x0, x20
    8ec0: 2a1f03e1     	mov	w1, wzr
    8ec4: 2a1f03e2     	mov	w2, wzr
    8ec8: 94000000     	bl	0x8ec8 <syna_dev_process_touch_report+0x168>
		0000000000008ec8:  R_AARCH64_CALL26	input_mt_report_slot_state
    8ecc: 910006a8     	add	x8, x21, #0x1
    8ed0: 385f82c9     	ldurb	w9, [x22, #-0x8]
    8ed4: 9100d2d6     	add	x22, x22, #0x34
    8ed8: eb08033f     	cmp	x25, x8
    8edc: 38386aa9     	strb	w9, [x21, x24]
    8ee0: aa0803f5     	mov	x21, x8
    8ee4: 54001220     	b.eq	0x9128 <syna_dev_process_touch_report+0x3c8>
    8ee8: 385f82c8     	ldurb	w8, [x22, #-0x8]
    8eec: 7100191f     	cmp	w8, #0x6
    8ef0: 540001a1     	b.ne	0x8f24 <syna_dev_process_touch_report+0x1c4>
    8ef4: b945e668     	ldr	w8, [x19, #0x5e4]
    8ef8: 34000168     	cbz	w8, 0x8f24 <syna_dev_process_touch_report+0x1c4>
    8efc: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008efc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    8f00: f9400108     	ldr	x8, [x8]
		0000000000008f00:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    8f04: b4000e08     	cbz	x8, 0x90c4 <syna_dev_process_touch_report+0x364>
    8f08: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008f08:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
    8f0c: b9400129     	ldr	w9, [x9]
		0000000000008f0c:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
    8f10: 36f80e09     	tbz	w9, #0x1f, 0x90d0 <syna_dev_process_touch_report+0x370>
    8f14: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008f14:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    8f18: b9400129     	ldr	w9, [x9]
		0000000000008f18:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    8f1c: 7100093f     	cmp	w9, #0x2
    8f20: 54000e6d     	b.le	0x90ec <syna_dev_process_touch_report+0x38c>
    8f24: f1002abf     	cmp	x21, #0xa
    8f28: 54000041     	b.ne	0x8f30 <syna_dev_process_touch_report+0x1d0>
    8f2c: d42aa240     	brk	#0x5512
    8f30: 38756b09     	ldrb	w9, [x24, x21]
    8f34: 385f82c8     	ldurb	w8, [x22, #-0x8]
    8f38: 35000049     	cbnz	w9, 0x8f40 <syna_dev_process_touch_report+0x1e0>
    8f3c: 34fffc88     	cbz	w8, 0x8ecc <syna_dev_process_touch_report+0x16c>
    8f40: 51000509     	sub	w9, w8, #0x1
    8f44: 7100053f     	cmp	w9, #0x1
    8f48: 540001c8     	b.hi	0x8f80 <syna_dev_process_touch_report+0x220>
    8f4c: b9461a68     	ldr	w8, [x19, #0x618]
    8f50: b85fc2d9     	ldur	w25, [x22, #-0x4]
    8f54: 7100111f     	cmp	w8, #0x4
    8f58: 54000361     	b.ne	0x8fc4 <syna_dev_process_touch_report+0x264>
    8f5c: 29405ec8     	ldp	w8, w23, [x22]
    8f60: 529999aa     	mov	w10, #0xcccd            // =52429
    8f64: b9400adc     	ldr	w28, [x22, #0x8]
    8f68: 72b9998a     	movk	w10, #0xcccc, lsl #16
    8f6c: 9baa7f29     	umull	x9, w25, w10
    8f70: 9baa7d08     	umull	x8, w8, w10
    8f74: d363fd39     	lsr	x25, x9, #35
    8f78: d363fd1a     	lsr	x26, x8, #35
    8f7c: 14000026     	b	0x9014 <syna_dev_process_touch_report+0x2b4>
    8f80: 35fffa68     	cbnz	w8, 0x8ecc <syna_dev_process_touch_report+0x16c>
    8f84: f9400be8     	ldr	x8, [sp, #0x10]
    8f88: 39406d08     	ldrb	w8, [x8, #0x1b]
    8f8c: 7100051f     	cmp	w8, #0x1
    8f90: 54fff8c1     	b.ne	0x8ea8 <syna_dev_process_touch_report+0x148>
    8f94: b9461a62     	ldr	w2, [x19, #0x618]
    8f98: 7100105f     	cmp	w2, #0x4
    8f9c: 54fff860     	b.eq	0x8ea8 <syna_dev_process_touch_report+0x148>
    8fa0: aa1403e0     	mov	x0, x20
    8fa4: 2a1503e1     	mov	w1, w21
    8fa8: 94000000     	bl	0x8fa8 <syna_dev_process_touch_report+0x248>
		0000000000008fa8:  R_AARCH64_CALL26	tpd_touch_release
    8fac: 2a1f03e0     	mov	w0, wzr
    8fb0: 12800001     	mov	w1, #-0x1               // =-1
    8fb4: 12800002     	mov	w2, #-0x1               // =-1
    8fb8: 2a1503e3     	mov	w3, w21
    8fbc: 94000000     	bl	0x8fbc <syna_dev_process_touch_report+0x25c>
		0000000000008fbc:  R_AARCH64_CALL26	one_key_report
    8fc0: 17ffffc3     	b	0x8ecc <syna_dev_process_touch_report+0x16c>
    8fc4: f9400be8     	ldr	x8, [sp, #0x10]
    8fc8: b94002da     	ldr	w26, [x22]
    8fcc: 2940f2d7     	ldp	w23, w28, [x22, #0x4]
    8fd0: 39406d08     	ldrb	w8, [x8, #0x1b]
    8fd4: 7100051f     	cmp	w8, #0x1
    8fd8: 540001e1     	b.ne	0x9014 <syna_dev_process_touch_report+0x2b4>
    8fdc: 6b1c02ff     	cmp	w23, w28
    8fe0: aa1403e0     	mov	x0, x20
    8fe4: 2a1903e1     	mov	w1, w25
    8fe8: 1a9cc2e4     	csel	w4, w23, w28, gt
    8fec: 2a1a03e2     	mov	w2, w26
    8ff0: aa1503e3     	mov	x3, x21
    8ff4: 2a1f03e5     	mov	w5, wzr
    8ff8: 94000000     	bl	0x8ff8 <syna_dev_process_touch_report+0x298>
		0000000000008ff8:  R_AARCH64_CALL26	tpd_touch_press
    8ffc: 52800020     	mov	w0, #0x1                // =1
    9000: 2a1903e1     	mov	w1, w25
    9004: 2a1a03e2     	mov	w2, w26
    9008: 2a1503e3     	mov	w3, w21
    900c: 94000000     	bl	0x900c <syna_dev_process_touch_report+0x2ac>
		000000000000900c:  R_AARCH64_CALL26	one_key_report
    9010: 1400002a     	b	0x90b8 <syna_dev_process_touch_report+0x358>
    9014: aa1403e0     	mov	x0, x20
    9018: 52800061     	mov	w1, #0x3                // =3
    901c: 528005e2     	mov	w2, #0x2f               // =47
    9020: 2a1503e3     	mov	w3, w21
    9024: 94000000     	bl	0x9024 <syna_dev_process_touch_report+0x2c4>
		0000000000009024:  R_AARCH64_CALL26	input_event
    9028: aa1403e0     	mov	x0, x20
    902c: 2a1f03e1     	mov	w1, wzr
    9030: 52800022     	mov	w2, #0x1                // =1
    9034: 94000000     	bl	0x9034 <syna_dev_process_touch_report+0x2d4>
		0000000000009034:  R_AARCH64_CALL26	input_mt_report_slot_state
    9038: aa1403e0     	mov	x0, x20
    903c: 52800021     	mov	w1, #0x1                // =1
    9040: 52802942     	mov	w2, #0x14a              // =330
    9044: 52800023     	mov	w3, #0x1                // =1
    9048: 94000000     	bl	0x9048 <syna_dev_process_touch_report+0x2e8>
		0000000000009048:  R_AARCH64_CALL26	input_event
    904c: aa1403e0     	mov	x0, x20
    9050: 52800021     	mov	w1, #0x1                // =1
    9054: 528028a2     	mov	w2, #0x145              // =325
    9058: 52800023     	mov	w3, #0x1                // =1
    905c: 94000000     	bl	0x905c <syna_dev_process_touch_report+0x2fc>
		000000000000905c:  R_AARCH64_CALL26	input_event
    9060: aa1403e0     	mov	x0, x20
    9064: 52800061     	mov	w1, #0x3                // =3
    9068: 528006a2     	mov	w2, #0x35               // =53
    906c: 2a1903e3     	mov	w3, w25
    9070: 94000000     	bl	0x9070 <syna_dev_process_touch_report+0x310>
		0000000000009070:  R_AARCH64_CALL26	input_event
    9074: aa1403e0     	mov	x0, x20
    9078: 52800061     	mov	w1, #0x3                // =3
    907c: 528006c2     	mov	w2, #0x36               // =54
    9080: 2a1a03e3     	mov	w3, w26
    9084: 94000000     	bl	0x9084 <syna_dev_process_touch_report+0x324>
		0000000000009084:  R_AARCH64_CALL26	input_event
    9088: 6b1c02ff     	cmp	w23, w28
    908c: aa1403e0     	mov	x0, x20
    9090: 52800061     	mov	w1, #0x3                // =3
    9094: 1a9cc2e3     	csel	w3, w23, w28, gt
    9098: 52800602     	mov	w2, #0x30               // =48
    909c: 1a9cb2f9     	csel	w25, w23, w28, lt
    90a0: 94000000     	bl	0x90a0 <syna_dev_process_touch_report+0x340>
		00000000000090a0:  R_AARCH64_CALL26	input_event
    90a4: aa1403e0     	mov	x0, x20
    90a8: 52800061     	mov	w1, #0x3                // =3
    90ac: 52800622     	mov	w2, #0x31               // =49
    90b0: 2a1903e3     	mov	w3, w25
    90b4: 94000000     	bl	0x90b4 <syna_dev_process_touch_report+0x354>
		00000000000090b4:  R_AARCH64_CALL26	input_event
    90b8: f94007f9     	ldr	x25, [sp, #0x8]
    90bc: 1100077b     	add	w27, w27, #0x1
    90c0: 17ffff83     	b	0x8ecc <syna_dev_process_touch_report+0x16c>
    90c4: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000090c4:  R_AARCH64_ADR_PREL_PG_HI21	unk_33C0B
    90c8: 91000000     	add	x0, x0, #0x0
		00000000000090c8:  R_AARCH64_ADD_ABS_LO12_NC	unk_33C0B
    90cc: 14000006     	b	0x90e4 <syna_dev_process_touch_report+0x384>
    90d0: 51000528     	sub	w8, w9, #0x1
    90d4: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000090d4:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
    90d8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000090d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3475B
    90dc: 91000000     	add	x0, x0, #0x0
		00000000000090dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3475B
    90e0: b9000128     	str	w8, [x9]
		00000000000090e0:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
    90e4: 94000000     	bl	0x90e4 <syna_dev_process_touch_report+0x384>
		00000000000090e4:  R_AARCH64_CALL26	_printk
    90e8: 17ffff8f     	b	0x8f24 <syna_dev_process_touch_report+0x1c4>
    90ec: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000090ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed0
    90f0: 91000129     	add	x9, x9, #0x0
		00000000000090f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed0
    90f4: 91004100     	add	x0, x8, #0x10
    90f8: 910063e2     	add	x2, sp, #0x18
    90fc: 52800041     	mov	w1, #0x2                // =2
    9100: a901ffe9     	stp	x9, xzr, [sp, #0x18]
    9104: 94000000     	bl	0x9104 <syna_dev_process_touch_report+0x3a4>
		0000000000009104:  R_AARCH64_CALL26	kobject_uevent_env
    9108: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009108:  R_AARCH64_ADR_PREL_PG_HI21	unk_32F20
    910c: 91000000     	add	x0, x0, #0x0
		000000000000910c:  R_AARCH64_ADD_ABS_LO12_NC	unk_32F20
    9110: 94000000     	bl	0x9110 <syna_dev_process_touch_report+0x3b0>
		0000000000009110:  R_AARCH64_CALL26	_printk
    9114: 90000009     	adrp	x9, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009114:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    9118: b9400128     	ldr	w8, [x9]
		0000000000009118:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    911c: 11000508     	add	w8, w8, #0x1
    9120: b9000128     	str	w8, [x9]
		0000000000009120:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    9124: 17ffff80     	b	0x8f24 <syna_dev_process_touch_report+0x1c4>
    9128: 3500017b     	cbnz	w27, 0x9154 <syna_dev_process_touch_report+0x3f4>
    912c: aa1403e0     	mov	x0, x20
    9130: 52800021     	mov	w1, #0x1                // =1
    9134: 52802942     	mov	w2, #0x14a              // =330
    9138: 2a1f03e3     	mov	w3, wzr
    913c: 94000000     	bl	0x913c <syna_dev_process_touch_report+0x3dc>
		000000000000913c:  R_AARCH64_CALL26	input_event
    9140: aa1403e0     	mov	x0, x20
    9144: 52800021     	mov	w1, #0x1                // =1
    9148: 528028a2     	mov	w2, #0x145              // =325
    914c: 2a1f03e3     	mov	w3, wzr
    9150: 94000000     	bl	0x9150 <syna_dev_process_touch_report+0x3f0>
		0000000000009150:  R_AARCH64_CALL26	input_event
    9154: aa1403e0     	mov	x0, x20
    9158: 2a1f03e1     	mov	w1, wzr
    915c: 2a1f03e2     	mov	w2, wzr
    9160: 2a1f03e3     	mov	w3, wzr
    9164: 94000000     	bl	0x9164 <syna_dev_process_touch_report+0x404>
		0000000000009164:  R_AARCH64_CALL26	input_event
    9168: 9109e260     	add	x0, x19, #0x278
    916c: 94000000     	bl	0x916c <syna_dev_process_touch_report+0x40c>
		000000000000916c:  R_AARCH64_CALL26	mutex_unlock
    9170: 2a1f03e0     	mov	w0, wzr
    9174: d5384108     	mrs	x8, SP_EL0
    9178: f9438908     	ldr	x8, [x8, #0x710]
    917c: f85f83a9     	ldur	x9, [x29, #-0x8]
    9180: eb09011f     	cmp	x8, x9
    9184: 540008a1     	b.ne	0x9298 <syna_dev_process_touch_report+0x538>
    9188: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    918c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    9190: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    9194: a94567fa     	ldp	x26, x25, [sp, #0x50]
    9198: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    919c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    91a0: 910243ff     	add	sp, sp, #0x90
    91a4: d50323bf     	autiasp
    91a8: d65f03c0     	ret
    91ac: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000091ac:  R_AARCH64_ADR_PREL_PG_HI21	unk_3411A
    91b0: 91000000     	add	x0, x0, #0x0
		00000000000091b0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3411A
    91b4: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000091b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91
    91b8: 91000021     	add	x1, x1, #0x0
		00000000000091b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91
    91bc: 94000000     	bl	0x91bc <syna_dev_process_touch_report+0x45c>
		00000000000091bc:  R_AARCH64_CALL26	_printk
    91c0: 128002a0     	mov	w0, #-0x16              // =-22
    91c4: 17ffffec     	b	0x9174 <syna_dev_process_touch_report+0x414>
    91c8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000091c8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3660C
    91cc: 91000000     	add	x0, x0, #0x0
		00000000000091cc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3660C
    91d0: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000091d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91
    91d4: 91000021     	add	x1, x1, #0x0
		00000000000091d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91
    91d8: 2a0803e2     	mov	w2, w8
    91dc: 94000000     	bl	0x91dc <syna_dev_process_touch_report+0x47c>
		00000000000091dc:  R_AARCH64_CALL26	_printk
    91e0: 128002a0     	mov	w0, #-0x16              // =-22
    91e4: 17ffffe4     	b	0x9174 <syna_dev_process_touch_report+0x414>
    91e8: 90000008     	adrp	x8, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000091e8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A914
    91ec: 91000108     	add	x8, x8, #0x0
		00000000000091ec:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A914
    91f0: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000091f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91
    91f4: 91000021     	add	x1, x1, #0x0
		00000000000091f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91
    91f8: 2a0003f3     	mov	w19, w0
    91fc: aa0803e0     	mov	x0, x8
    9200: 94000000     	bl	0x9200 <syna_dev_process_touch_report+0x4a0>
		0000000000009200:  R_AARCH64_CALL26	_printk
    9204: 2a1303e0     	mov	w0, w19
    9208: 17ffffdb     	b	0x9174 <syna_dev_process_touch_report+0x414>
    920c: b9422262     	ldr	w2, [x19, #0x220]
    9210: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009210:  R_AARCH64_ADR_PREL_PG_HI21	unk_35FD5
    9214: 91000000     	add	x0, x0, #0x0
		0000000000009214:  R_AARCH64_ADD_ABS_LO12_NC	unk_35FD5
    9218: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    921c: 91000021     	add	x1, x1, #0x0
		000000000000921c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    9220: 94000000     	bl	0x9220 <syna_dev_process_touch_report+0x4c0>
		0000000000009220:  R_AARCH64_CALL26	_printk
    9224: b9422268     	ldr	w8, [x19, #0x220]
    9228: 7100411f     	cmp	w8, #0x10
    922c: 54000180     	b.eq	0x925c <syna_dev_process_touch_report+0x4fc>
    9230: 7100051f     	cmp	w8, #0x1
    9234: 54000261     	b.ne	0x9280 <syna_dev_process_touch_report+0x520>
    9238: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009238:  R_AARCH64_ADR_PREL_PG_HI21	unk_35FFC
    923c: 91000000     	add	x0, x0, #0x0
		000000000000923c:  R_AARCH64_ADD_ABS_LO12_NC	unk_35FFC
    9240: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    9244: 91000021     	add	x1, x1, #0x0
		0000000000009244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    9248: 94000000     	bl	0x9248 <syna_dev_process_touch_report+0x4e8>
		0000000000009248:  R_AARCH64_CALL26	_printk
    924c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		000000000000924c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2878
    9250: 91000000     	add	x0, x0, #0x0
		0000000000009250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2878
    9254: 94000000     	bl	0x9254 <syna_dev_process_touch_report+0x4f4>
		0000000000009254:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    9258: 17ffff01     	b	0x8e5c <syna_dev_process_touch_report+0xfc>
    925c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		000000000000925c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3354D
    9260: 91000000     	add	x0, x0, #0x0
		0000000000009260:  R_AARCH64_ADD_ABS_LO12_NC	unk_3354D
    9264: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    9268: 91000021     	add	x1, x1, #0x0
		0000000000009268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    926c: 94000000     	bl	0x926c <syna_dev_process_touch_report+0x50c>
		000000000000926c:  R_AARCH64_CALL26	_printk
    9270: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2499
    9274: 91000000     	add	x0, x0, #0x0
		0000000000009274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2499
    9278: 94000000     	bl	0x9278 <syna_dev_process_touch_report+0x518>
		0000000000009278:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    927c: 17fffef8     	b	0x8e5c <syna_dev_process_touch_report+0xfc>
    9280: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009280:  R_AARCH64_ADR_PREL_PG_HI21	unk_37625
    9284: 91000000     	add	x0, x0, #0x0
		0000000000009284:  R_AARCH64_ADD_ABS_LO12_NC	unk_37625
    9288: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24e4
    928c: 91000021     	add	x1, x1, #0x0
		000000000000928c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24e4
    9290: 94000000     	bl	0x9290 <syna_dev_process_touch_report+0x530>
		0000000000009290:  R_AARCH64_CALL26	_printk
    9294: 17fffef2     	b	0x8e5c <syna_dev_process_touch_report+0xfc>
    9298: 94000000     	bl	0x9298 <syna_dev_process_touch_report+0x538>
		0000000000009298:  R_AARCH64_CALL26	__stack_chk_fail
