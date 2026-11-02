
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024dc0 <tpd_touch_release>:
   24dc0: d503233f     	paciasp
   24dc4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   24dc8: a9016ffc     	stp	x28, x27, [sp, #0x10]
   24dcc: a90267fa     	stp	x26, x25, [sp, #0x20]
   24dd0: a9035ff8     	stp	x24, x23, [sp, #0x30]
   24dd4: a90457f6     	stp	x22, x21, [sp, #0x40]
   24dd8: a9054ff4     	stp	x20, x19, [sp, #0x50]
   24ddc: 910003fd     	mov	x29, sp
   24de0: 12003c34     	and	w20, w1, #0xffff
   24de4: 71002e9f     	cmp	w20, #0xb
   24de8: 54002b02     	b.hs	0x25348 <tpd_touch_release+0x588>
   24dec: b40006a0     	cbz	x0, 0x24ec0 <tpd_touch_release+0x100>
   24df0: 12003c28     	and	w8, w1, #0xffff
   24df4: 2a0103f5     	mov	w21, w1
   24df8: 7100291f     	cmp	w8, #0xa
   24dfc: 54002a80     	b.eq	0x2534c <tpd_touch_release+0x58c>
   24e00: 92403eba     	and	x26, x21, #0xffff
   24e04: 9000001b     	adrp	x27, 0x24000 <tp_test_read+0x104>
		0000000000024e04:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24e08: 90000017     	adrp	x23, 0x24000 <tp_test_read+0x104>
		0000000000024e08:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   24e0c: 8b353348     	add	x8, x26, w21, uxth #4
   24e10: f940037c     	ldr	x28, [x27]
		0000000000024e10:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24e14: 90000018     	adrp	x24, 0x24000 <tp_test_read+0x104>
		0000000000024e14:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   24e18: d37df119     	lsl	x25, x8, #3
   24e1c: 90000008     	adrp	x8, 0x24000 <tp_test_read+0x104>
		0000000000024e1c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   24e20: 91000108     	add	x8, x8, #0x0
		0000000000024e20:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   24e24: 8b190113     	add	x19, x8, x25
   24e28: 39414e68     	ldrb	w8, [x19, #0x53]
   24e2c: 7100051f     	cmp	w8, #0x1
   24e30: 54000560     	b.eq	0x24edc <tpd_touch_release+0x11c>
   24e34: 39409788     	ldrb	w8, [x28, #0x25]
   24e38: 7100051f     	cmp	w8, #0x1
   24e3c: 54000181     	b.ne	0x24e6c <tpd_touch_release+0xac>
   24e40: 39415a68     	ldrb	w8, [x19, #0x56]
   24e44: 37000148     	tbnz	w8, #0x0, 0x24e6c <tpd_touch_release+0xac>
   24e48: f9403a68     	ldr	x8, [x19, #0x70]
   24e4c: b4000108     	cbz	x8, 0x24e6c <tpd_touch_release+0xac>
   24e50: 90000009     	adrp	x9, 0x24000 <tp_test_read+0x104>
		0000000000024e50:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   24e54: f9400129     	ldr	x9, [x9]
		0000000000024e54:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24e58: cb080120     	sub	x0, x9, x8
   24e5c: 94000000     	bl	0x24e5c <tpd_touch_release+0x9c>
		0000000000024e5c:  R_AARCH64_CALL26	jiffies_to_msecs
   24e60: 79407b88     	ldrh	w8, [x28, #0x3c]
   24e64: 6b08001f     	cmp	w0, w8
   24e68: 54001023     	b.lo	0x2506c <tpd_touch_release+0x2ac>
   24e6c: b9400308     	ldr	w8, [x24]
		0000000000024e6c:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   24e70: b94002e9     	ldr	w9, [x23]
		0000000000024e70:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   24e74: f9003a7f     	str	xzr, [x19, #0x70]
   24e78: 39014e7f     	strb	wzr, [x19, #0x53]
   24e7c: 2a080128     	orr	w8, w9, w8
   24e80: 7900a27f     	strh	wzr, [x19, #0x50]
   24e84: b805527f     	stur	wzr, [x19, #0x55]
   24e88: 7805927f     	sturh	wzr, [x19, #0x59]
   24e8c: 340000a8     	cbz	w8, 0x24ea0 <tpd_touch_release+0xe0>
   24e90: 29432668     	ldp	w8, w9, [x19, #0x18]
   24e94: f940326a     	ldr	x10, [x19, #0x60]
   24e98: 2907a668     	stp	w8, w9, [x19, #0x3c]
   24e9c: f900266a     	str	x10, [x19, #0x48]
   24ea0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   24ea4: a94457f6     	ldp	x22, x21, [sp, #0x40]
   24ea8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   24eac: a94267fa     	ldp	x26, x25, [sp, #0x20]
   24eb0: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   24eb4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   24eb8: d50323bf     	autiasp
   24ebc: d65f03c0     	ret
   24ec0: 90000000     	adrp	x0, 0x24000 <tp_test_read+0x104>
		0000000000024ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad9c
   24ec4: 91000000     	add	x0, x0, #0x0
		0000000000024ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad9c
   24ec8: 90000001     	adrp	x1, 0x24000 <tp_test_read+0x104>
		0000000000024ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c392
   24ecc: 91000021     	add	x1, x1, #0x0
		0000000000024ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c392
   24ed0: 2a1403e2     	mov	w2, w20
   24ed4: 94000000     	bl	0x24ed4 <tpd_touch_release+0x114>
		0000000000024ed4:  R_AARCH64_CALL26	_printk
   24ed8: 17fffff2     	b	0x24ea0 <tpd_touch_release+0xe0>
   24edc: aa0003f6     	mov	x22, x0
   24ee0: 91324380     	add	x0, x28, #0xc90
   24ee4: 94000000     	bl	0x24ee4 <tpd_touch_release+0x124>
		0000000000024ee4:  R_AARCH64_CALL26	mutex_lock
   24ee8: aa1603e0     	mov	x0, x22
   24eec: 52800061     	mov	w1, #0x3                // =3
   24ef0: 528005e2     	mov	w2, #0x2f               // =47
   24ef4: 2a1403e3     	mov	w3, w20
   24ef8: 94000000     	bl	0x24ef8 <tpd_touch_release+0x138>
		0000000000024ef8:  R_AARCH64_CALL26	input_event
   24efc: aa1603e0     	mov	x0, x22
   24f00: 2a1f03e1     	mov	w1, wzr
   24f04: 2a1f03e2     	mov	w2, wzr
   24f08: 94000000     	bl	0x24f08 <tpd_touch_release+0x148>
		0000000000024f08:  R_AARCH64_CALL26	input_mt_report_slot_state
   24f0c: 90000016     	adrp	x22, 0x24000 <tp_test_read+0x104>
		0000000000024f0c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   24f10: f94002c8     	ldr	x8, [x22]
		0000000000024f10:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24f14: f9403269     	ldr	x9, [x19, #0x60]
   24f18: cb090100     	sub	x0, x8, x9
   24f1c: 94000000     	bl	0x24f1c <tpd_touch_release+0x15c>
		0000000000024f1c:  R_AARCH64_CALL26	jiffies_to_msecs
   24f20: 29448e62     	ldp	w2, w3, [x19, #0x24]
   24f24: 2a0003e4     	mov	w4, w0
   24f28: 90000000     	adrp	x0, 0x24000 <tp_test_read+0x104>
		0000000000024f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca5a
   24f2c: 91000000     	add	x0, x0, #0x0
		0000000000024f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca5a
   24f30: 2a1403e1     	mov	w1, w20
   24f34: f9003e64     	str	x4, [x19, #0x78]
   24f38: 94000000     	bl	0x24f38 <tpd_touch_release+0x178>
		0000000000024f38:  R_AARCH64_CALL26	_printk
   24f3c: b94002e8     	ldr	w8, [x23]
		0000000000024f3c:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   24f40: 340002c8     	cbz	w8, 0x24f98 <tpd_touch_release+0x1d8>
   24f44: f94002c8     	ldr	x8, [x22]
		0000000000024f44:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24f48: f9403269     	ldr	x9, [x19, #0x60]
   24f4c: cb090100     	sub	x0, x8, x9
   24f50: 94000000     	bl	0x24f50 <tpd_touch_release+0x190>
		0000000000024f50:  R_AARCH64_CALL26	jiffies_to_msecs
   24f54: 7102541f     	cmp	w0, #0x95
   24f58: 54000208     	b.hi	0x24f98 <tpd_touch_release+0x1d8>
   24f5c: b9401a68     	ldr	w8, [x19, #0x18]
   24f60: b9402669     	ldr	w9, [x19, #0x24]
   24f64: 6b090108     	subs	w8, w8, w9
   24f68: 5a885508     	cneg	w8, w8, mi
   24f6c: 7100c51f     	cmp	w8, #0x31
   24f70: 5400014c     	b.gt	0x24f98 <tpd_touch_release+0x1d8>
   24f74: b9401e68     	ldr	w8, [x19, #0x1c]
   24f78: b9402a69     	ldr	w9, [x19, #0x28]
   24f7c: 6b090108     	subs	w8, w8, w9
   24f80: 5a885508     	cneg	w8, w8, mi
   24f84: 7100c51f     	cmp	w8, #0x31
   24f88: 5400008c     	b.gt	0x24f98 <tpd_touch_release+0x1d8>
   24f8c: 90000000     	adrp	x0, 0x24000 <tp_test_read+0x104>
		0000000000024f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ad4
   24f90: 91000000     	add	x0, x0, #0x0
		0000000000024f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ad4
   24f94: 94000000     	bl	0x24f94 <tpd_touch_release+0x1d4>
		0000000000024f94:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   24f98: b9400308     	ldr	w8, [x24]
		0000000000024f98:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   24f9c: b94002e9     	ldr	w9, [x23]
		0000000000024f9c:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   24fa0: 2a080128     	orr	w8, w9, w8
   24fa4: 340004c8     	cbz	w8, 0x2503c <tpd_touch_release+0x27c>
   24fa8: f94002c8     	ldr	x8, [x22]
		0000000000024fa8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24fac: f9402669     	ldr	x9, [x19, #0x48]
   24fb0: cb090100     	sub	x0, x8, x9
   24fb4: 94000000     	bl	0x24fb4 <tpd_touch_release+0x1f4>
		0000000000024fb4:  R_AARCH64_CALL26	jiffies_to_msecs
   24fb8: 7104ac1f     	cmp	w0, #0x12b
   24fbc: 54000408     	b.hi	0x2503c <tpd_touch_release+0x27c>
   24fc0: f94002c8     	ldr	x8, [x22]
		0000000000024fc0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   24fc4: f9403269     	ldr	x9, [x19, #0x60]
   24fc8: cb090100     	sub	x0, x8, x9
   24fcc: 94000000     	bl	0x24fcc <tpd_touch_release+0x20c>
		0000000000024fcc:  R_AARCH64_CALL26	jiffies_to_msecs
   24fd0: 7102541f     	cmp	w0, #0x95
   24fd4: 54000348     	b.hi	0x2503c <tpd_touch_release+0x27c>
   24fd8: b9401a68     	ldr	w8, [x19, #0x18]
   24fdc: b9402669     	ldr	w9, [x19, #0x24]
   24fe0: 6b090109     	subs	w9, w8, w9
   24fe4: 5a895529     	cneg	w9, w9, mi
   24fe8: 7100c53f     	cmp	w9, #0x31
   24fec: 5400028c     	b.gt	0x2503c <tpd_touch_release+0x27c>
   24ff0: b9401e69     	ldr	w9, [x19, #0x1c]
   24ff4: b9402a6a     	ldr	w10, [x19, #0x28]
   24ff8: 6b0a012a     	subs	w10, w9, w10
   24ffc: 5a8a554a     	cneg	w10, w10, mi
   25000: 7100c55f     	cmp	w10, #0x31
   25004: 540001cc     	b.gt	0x2503c <tpd_touch_release+0x27c>
   25008: b9403e6a     	ldr	w10, [x19, #0x3c]
   2500c: 6b0a0108     	subs	w8, w8, w10
   25010: 5a885508     	cneg	w8, w8, mi
   25014: 710f9d1f     	cmp	w8, #0x3e7
   25018: 5400012c     	b.gt	0x2503c <tpd_touch_release+0x27c>
   2501c: b9404268     	ldr	w8, [x19, #0x40]
   25020: 6b080128     	subs	w8, w9, w8
   25024: 5a885508     	cneg	w8, w8, mi
   25028: 710f9d1f     	cmp	w8, #0x3e7
   2502c: 5400008c     	b.gt	0x2503c <tpd_touch_release+0x27c>
   25030: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		0000000000025030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16068
   25034: 91000000     	add	x0, x0, #0x0
		0000000000025034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16068
   25038: 94000000     	bl	0x25038 <tpd_touch_release+0x278>
		0000000000025038:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   2503c: 91324380     	add	x0, x28, #0xc90
   25040: 94000000     	bl	0x25040 <tpd_touch_release+0x280>
		0000000000025040:  R_AARCH64_CALL26	mutex_unlock
   25044: f9403e68     	ldr	x8, [x19, #0x78]
   25048: 39525789     	ldrb	w9, [x28, #0x495]
   2504c: eb09011f     	cmp	x8, x9
   25050: 54000062     	b.hs	0x2505c <tpd_touch_release+0x29c>
   25054: 39416a68     	ldrb	w8, [x19, #0x5a]
   25058: 360006c8     	tbz	w8, #0x0, 0x25130 <tpd_touch_release+0x370>
   2505c: b9448f88     	ldr	w8, [x28, #0x48c]
   25060: 51000508     	sub	w8, w8, #0x1
   25064: b9048f88     	str	w8, [x28, #0x48c]
   25068: 17ffff73     	b	0x24e34 <tpd_touch_release+0x74>
   2506c: f9400376     	ldr	x22, [x27]
		000000000002506c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25070: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		0000000000025070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18aec
   25074: 91000000     	add	x0, x0, #0x0
		0000000000025074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18aec
   25078: 90000001     	adrp	x1, 0x25000 <tpd_touch_release+0x240>
		0000000000025078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc2
   2507c: 91000021     	add	x1, x1, #0x0
		000000000002507c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc2
   25080: 2a1403e2     	mov	w2, w20
   25084: 94000000     	bl	0x25084 <tpd_touch_release+0x2c4>
		0000000000025084:  R_AARCH64_CALL26	_printk
   25088: f9425ec8     	ldr	x8, [x22, #0x4b8]
   2508c: b5000088     	cbnz	x8, 0x2509c <tpd_touch_release+0x2dc>
   25090: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		0000000000025090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d868
   25094: 91000000     	add	x0, x0, #0x0
		0000000000025094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d868
   25098: 14000022     	b	0x25120 <tpd_touch_release+0x360>
   2509c: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		000000000002509c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   250a0: 39400108     	ldrb	w8, [x8]
		00000000000250a0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   250a4: 370003a8     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250a8: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250a8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   250ac: 39400108     	ldrb	w8, [x8]
		00000000000250ac:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   250b0: 37000348     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250b4: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250b4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   250b8: 39400108     	ldrb	w8, [x8]
		00000000000250b8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   250bc: 370002e8     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250c0: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250c0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   250c4: 39400108     	ldrb	w8, [x8]
		00000000000250c4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   250c8: 37000288     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250cc: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250cc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   250d0: 39400108     	ldrb	w8, [x8]
		00000000000250d0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   250d4: 37000228     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250d8: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250d8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   250dc: 39400108     	ldrb	w8, [x8]
		00000000000250dc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   250e0: 370001c8     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250e4: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250e4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   250e8: 39400108     	ldrb	w8, [x8]
		00000000000250e8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   250ec: 37000168     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250f0: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250f0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   250f4: 39400108     	ldrb	w8, [x8]
		00000000000250f4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   250f8: 37000108     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   250fc: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		00000000000250fc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   25100: 39400108     	ldrb	w8, [x8]
		0000000000025100:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   25104: 370000a8     	tbnz	w8, #0x0, 0x25118 <tpd_touch_release+0x358>
   25108: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x240>
		0000000000025108:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   2510c: 39400108     	ldrb	w8, [x8]
		000000000002510c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   25110: 7100051f     	cmp	w8, #0x1
   25114: 54000601     	b.ne	0x251d4 <tpd_touch_release+0x414>
   25118: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		0000000000025118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3bc
   2511c: 91000000     	add	x0, x0, #0x0
		000000000002511c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3bc
   25120: 90000001     	adrp	x1, 0x25000 <tpd_touch_release+0x240>
		0000000000025120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc2
   25124: 91000021     	add	x1, x1, #0x0
		0000000000025124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc2
   25128: 94000000     	bl	0x25128 <tpd_touch_release+0x368>
		0000000000025128:  R_AARCH64_CALL26	_printk
   2512c: 17ffff50     	b	0x24e6c <tpd_touch_release+0xac>
   25130: 39522388     	ldrb	w8, [x28, #0x488]
   25134: 37000168     	tbnz	w8, #0x0, 0x25160 <tpd_touch_release+0x3a0>
   25138: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		0000000000025138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ddfc
   2513c: 91000000     	add	x0, x0, #0x0
		000000000002513c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ddfc
   25140: 94000000     	bl	0x25140 <tpd_touch_release+0x380>
		0000000000025140:  R_AARCH64_CALL26	_printk
   25144: f9425b81     	ldr	x1, [x28, #0x4b0]
   25148: 52800028     	mov	w8, #0x1                // =1
   2514c: 9124e382     	add	x2, x28, #0x938
   25150: 52800400     	mov	w0, #0x20               // =32
   25154: 52803e83     	mov	w3, #0x1f4              // =500
   25158: 39122388     	strb	w8, [x28, #0x488]
   2515c: 94000000     	bl	0x2515c <tpd_touch_release+0x39c>
		000000000002515c:  R_AARCH64_CALL26	queue_delayed_work_on
   25160: b9448f88     	ldr	w8, [x28, #0x48c]
   25164: aa1303e0     	mov	x0, x19
   25168: 7100091f     	cmp	w8, #0x2
   2516c: 52809228     	mov	w8, #0x491              // =1169
   25170: 9a88d508     	cinc	x8, x8, gt
   25174: 38686b96     	ldrb	w22, [x28, x8]
   25178: 940000a1     	bl	0x253fc <tpd_touch_release+0x63c>
		0000000000025178:  R_AARCH64_CALL26	ghost_check_area
   2517c: 36000140     	tbz	w0, #0x0, 0x251a4 <tpd_touch_release+0x3e4>
   25180: f9403e68     	ldr	x8, [x19, #0x78]
   25184: eb16011f     	cmp	x8, x22
   25188: 54000122     	b.hs	0x251ac <tpd_touch_release+0x3ec>
   2518c: 7940ba68     	ldrh	w8, [x19, #0x5c]
   25190: 7940be69     	ldrh	w9, [x19, #0x5e]
   25194: 1100050a     	add	w10, w8, #0x1
   25198: 11000528     	add	w8, w9, #0x1
   2519c: 7900ba6a     	strh	w10, [x19, #0x5c]
   251a0: 14000005     	b	0x251b4 <tpd_touch_release+0x3f4>
   251a4: 7940be68     	ldrh	w8, [x19, #0x5e]
   251a8: 14000004     	b	0x251b8 <tpd_touch_release+0x3f8>
   251ac: 7940be68     	ldrh	w8, [x19, #0x5e]
   251b0: 11000508     	add	w8, w8, #0x1
   251b4: 7900be68     	strh	w8, [x19, #0x5e]
   251b8: 7940ba62     	ldrh	w2, [x19, #0x5c]
   251bc: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		00000000000251bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3da
   251c0: 91000000     	add	x0, x0, #0x0
		00000000000251c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3da
   251c4: 12003d03     	and	w3, w8, #0xffff
   251c8: 2a1403e1     	mov	w1, w20
   251cc: 94000000     	bl	0x251cc <tpd_touch_release+0x40c>
		00000000000251cc:  R_AARCH64_CALL26	_printk
   251d0: 17ffffa3     	b	0x2505c <tpd_touch_release+0x29c>
   251d4: 8b1a1348     	add	x8, x26, x26, lsl #4
   251d8: 913242c0     	add	x0, x22, #0xc90
   251dc: aa1603fb     	mov	x27, x22
   251e0: d37df117     	lsl	x23, x8, #3
   251e4: 94000000     	bl	0x251e4 <tpd_touch_release+0x424>
		00000000000251e4:  R_AARCH64_CALL26	mutex_lock
   251e8: b27e02e8     	orr	x8, x23, #0x4
   251ec: f115411f     	cmp	x8, #0x550
   251f0: 54000ae8     	b.hi	0x2534c <tpd_touch_release+0x58c>
   251f4: b27e0328     	orr	x8, x25, #0x4
   251f8: f115411f     	cmp	x8, #0x550
   251fc: 54000a88     	b.hi	0x2534c <tpd_touch_release+0x58c>
   25200: f9404276     	ldr	x22, [x19, #0x80]
   25204: 79400279     	ldrh	w25, [x19]
   25208: 52800061     	mov	w1, #0x3                // =3
   2520c: 79400a7a     	ldrh	w26, [x19, #0x4]
   25210: 39402277     	ldrb	w23, [x19, #0x8]
   25214: 528005e2     	mov	w2, #0x2f               // =47
   25218: 39402678     	ldrb	w24, [x19, #0x9]
   2521c: aa1603e0     	mov	x0, x22
   25220: 2a1403e3     	mov	w3, w20
   25224: 94000000     	bl	0x25224 <tpd_touch_release+0x464>
		0000000000025224:  R_AARCH64_CALL26	input_event
   25228: aa1603e0     	mov	x0, x22
   2522c: 2a1f03e1     	mov	w1, wzr
   25230: 52800022     	mov	w2, #0x1                // =1
   25234: 94000000     	bl	0x25234 <tpd_touch_release+0x474>
		0000000000025234:  R_AARCH64_CALL26	input_mt_report_slot_state
   25238: aa1603e0     	mov	x0, x22
   2523c: 52800021     	mov	w1, #0x1                // =1
   25240: 52802942     	mov	w2, #0x14a              // =330
   25244: 52800023     	mov	w3, #0x1                // =1
   25248: 94000000     	bl	0x25248 <tpd_touch_release+0x488>
		0000000000025248:  R_AARCH64_CALL26	input_event
   2524c: aa1603e0     	mov	x0, x22
   25250: 52800061     	mov	w1, #0x3                // =3
   25254: 528006a2     	mov	w2, #0x35               // =53
   25258: 2a1903e3     	mov	w3, w25
   2525c: 94000000     	bl	0x2525c <tpd_touch_release+0x49c>
		000000000002525c:  R_AARCH64_CALL26	input_event
   25260: aa1603e0     	mov	x0, x22
   25264: 52800061     	mov	w1, #0x3                // =3
   25268: 528006c2     	mov	w2, #0x36               // =54
   2526c: 2a1a03e3     	mov	w3, w26
   25270: 94000000     	bl	0x25270 <tpd_touch_release+0x4b0>
		0000000000025270:  R_AARCH64_CALL26	input_event
   25274: 340000d8     	cbz	w24, 0x2528c <tpd_touch_release+0x4cc>
   25278: aa1603e0     	mov	x0, x22
   2527c: 52800061     	mov	w1, #0x3                // =3
   25280: 52800742     	mov	w2, #0x3a               // =58
   25284: 2a1803e3     	mov	w3, w24
   25288: 94000000     	bl	0x25288 <tpd_touch_release+0x4c8>
		0000000000025288:  R_AARCH64_CALL26	input_event
   2528c: 340000d7     	cbz	w23, 0x252a4 <tpd_touch_release+0x4e4>
   25290: aa1603e0     	mov	x0, x22
   25294: 52800061     	mov	w1, #0x3                // =3
   25298: 52800602     	mov	w2, #0x30               // =48
   2529c: 2a1703e3     	mov	w3, w23
   252a0: 94000000     	bl	0x252a0 <tpd_touch_release+0x4e0>
		00000000000252a0:  R_AARCH64_CALL26	input_event
   252a4: f9404260     	ldr	x0, [x19, #0x80]
   252a8: 2a1f03e1     	mov	w1, wzr
   252ac: 2a1f03e2     	mov	w2, wzr
   252b0: 2a1f03e3     	mov	w3, wzr
   252b4: 94000000     	bl	0x252b4 <tpd_touch_release+0x4f4>
		00000000000252b4:  R_AARCH64_CALL26	input_event
   252b8: 29401263     	ldp	w3, w4, [x19]
   252bc: 52800028     	mov	w8, #0x1                // =1
   252c0: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		00000000000252c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1614c
   252c4: 91000000     	add	x0, x0, #0x0
		00000000000252c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1614c
   252c8: 90000001     	adrp	x1, 0x25000 <tpd_touch_release+0x240>
		00000000000252c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc2
   252cc: 91000021     	add	x1, x1, #0x0
		00000000000252cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc2
   252d0: 2a1403e2     	mov	w2, w20
   252d4: 39015268     	strb	w8, [x19, #0x54]
   252d8: 94000000     	bl	0x252d8 <tpd_touch_release+0x518>
		00000000000252d8:  R_AARCH64_CALL26	_printk
   252dc: 91324360     	add	x0, x27, #0xc90
   252e0: 94000000     	bl	0x252e0 <tpd_touch_release+0x520>
		00000000000252e0:  R_AARCH64_CALL26	mutex_unlock
   252e4: 12003ea8     	and	w8, w21, #0xffff
   252e8: 7100111f     	cmp	w8, #0x4
   252ec: 5400018c     	b.gt	0x2531c <tpd_touch_release+0x55c>
   252f0: 7100051f     	cmp	w8, #0x1
   252f4: 540002ed     	b.le	0x25350 <tpd_touch_release+0x590>
   252f8: 7100091f     	cmp	w8, #0x2
   252fc: 540005c0     	b.eq	0x253b4 <tpd_touch_release+0x5f4>
   25300: 71000d1f     	cmp	w8, #0x3
   25304: 540004c0     	b.eq	0x2539c <tpd_touch_release+0x5dc>
   25308: 7100111f     	cmp	w8, #0x4
   2530c: 540006a1     	b.ne	0x253e0 <tpd_touch_release+0x620>
   25310: f9425f61     	ldr	x1, [x27, #0x4b8]
   25314: 91198362     	add	x2, x27, #0x660
   25318: 1400002c     	b	0x253c8 <tpd_touch_release+0x608>
   2531c: 7100191f     	cmp	w8, #0x6
   25320: 5400024d     	b.le	0x25368 <tpd_touch_release+0x5a8>
   25324: 71001d1f     	cmp	w8, #0x7
   25328: 540004c0     	b.eq	0x253c0 <tpd_touch_release+0x600>
   2532c: 7100211f     	cmp	w8, #0x8
   25330: 540003c0     	b.eq	0x253a8 <tpd_touch_release+0x5e8>
   25334: 7100251f     	cmp	w8, #0x9
   25338: 54000541     	b.ne	0x253e0 <tpd_touch_release+0x620>
   2533c: f9425f61     	ldr	x1, [x27, #0x4b8]
   25340: 9121a362     	add	x2, x27, #0x868
   25344: 14000021     	b	0x253c8 <tpd_touch_release+0x608>
   25348: d42aa240     	brk	#0x5512
   2534c: d4200020     	brk	#0x1
   25350: 340001a8     	cbz	w8, 0x25384 <tpd_touch_release+0x5c4>
   25354: 7100051f     	cmp	w8, #0x1
   25358: 54000441     	b.ne	0x253e0 <tpd_touch_release+0x620>
   2535c: f9425f61     	ldr	x1, [x27, #0x4b8]
   25360: 9114a362     	add	x2, x27, #0x528
   25364: 14000019     	b	0x253c8 <tpd_touch_release+0x608>
   25368: 7100151f     	cmp	w8, #0x5
   2536c: 54000120     	b.eq	0x25390 <tpd_touch_release+0x5d0>
   25370: 7100191f     	cmp	w8, #0x6
   25374: 54000361     	b.ne	0x253e0 <tpd_touch_release+0x620>
   25378: f9425f61     	ldr	x1, [x27, #0x4b8]
   2537c: 911cc362     	add	x2, x27, #0x730
   25380: 14000012     	b	0x253c8 <tpd_touch_release+0x608>
   25384: f9425f61     	ldr	x1, [x27, #0x4b8]
   25388: 91130362     	add	x2, x27, #0x4c0
   2538c: 1400000f     	b	0x253c8 <tpd_touch_release+0x608>
   25390: f9425f61     	ldr	x1, [x27, #0x4b8]
   25394: 911b2362     	add	x2, x27, #0x6c8
   25398: 1400000c     	b	0x253c8 <tpd_touch_release+0x608>
   2539c: f9425f61     	ldr	x1, [x27, #0x4b8]
   253a0: 9117e362     	add	x2, x27, #0x5f8
   253a4: 14000009     	b	0x253c8 <tpd_touch_release+0x608>
   253a8: f9425f61     	ldr	x1, [x27, #0x4b8]
   253ac: 91200362     	add	x2, x27, #0x800
   253b0: 14000006     	b	0x253c8 <tpd_touch_release+0x608>
   253b4: f9425f61     	ldr	x1, [x27, #0x4b8]
   253b8: 91164362     	add	x2, x27, #0x590
   253bc: 14000003     	b	0x253c8 <tpd_touch_release+0x608>
   253c0: f9425f61     	ldr	x1, [x27, #0x4b8]
   253c4: 911e6362     	add	x2, x27, #0x798
   253c8: 52800400     	mov	w0, #0x20               // =32
   253cc: 528001a3     	mov	w3, #0xd                // =13
   253d0: 94000000     	bl	0x253d0 <tpd_touch_release+0x610>
		00000000000253d0:  R_AARCH64_CALL26	queue_delayed_work_on
   253d4: 90000017     	adrp	x23, 0x25000 <tpd_touch_release+0x240>
		00000000000253d4:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   253d8: 90000018     	adrp	x24, 0x25000 <tpd_touch_release+0x240>
		00000000000253d8:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   253dc: 17fffea4     	b	0x24e6c <tpd_touch_release+0xac>
   253e0: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x240>
		00000000000253e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14734
   253e4: 91000000     	add	x0, x0, #0x0
		00000000000253e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14734
   253e8: 90000001     	adrp	x1, 0x25000 <tpd_touch_release+0x240>
		00000000000253e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc2
   253ec: 91000021     	add	x1, x1, #0x0
		00000000000253ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc2
   253f0: 2a1403e2     	mov	w2, w20
   253f4: 94000000     	bl	0x253f4 <tpd_touch_release+0x634>
		00000000000253f4:  R_AARCH64_CALL26	_printk
   253f8: 17fffff7     	b	0x253d4 <tpd_touch_release+0x614>
