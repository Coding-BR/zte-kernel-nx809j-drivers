
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023b74 <tpd_touch_release>:
   23b74: d503233f     	paciasp
   23b78: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   23b7c: a9016ffc     	stp	x28, x27, [sp, #0x10]
   23b80: a90267fa     	stp	x26, x25, [sp, #0x20]
   23b84: a9035ff8     	stp	x24, x23, [sp, #0x30]
   23b88: a90457f6     	stp	x22, x21, [sp, #0x40]
   23b8c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   23b90: 910003fd     	mov	x29, sp
   23b94: 12003c34     	and	w20, w1, #0xffff
   23b98: 71002e9f     	cmp	w20, #0xb
   23b9c: 54002b02     	b.hs	0x240fc <tpd_touch_release+0x588>
   23ba0: b40006a0     	cbz	x0, 0x23c74 <tpd_touch_release+0x100>
   23ba4: 12003c28     	and	w8, w1, #0xffff
   23ba8: 2a0103f5     	mov	w21, w1
   23bac: 7100291f     	cmp	w8, #0xa
   23bb0: 54002a80     	b.eq	0x24100 <tpd_touch_release+0x58c>
   23bb4: 92403eba     	and	x26, x21, #0xffff
   23bb8: 9000001b     	adrp	x27, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023bb8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   23bbc: 90000017     	adrp	x23, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023bbc:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   23bc0: 8b353348     	add	x8, x26, w21, uxth #4
   23bc4: f940037c     	ldr	x28, [x27]
		0000000000023bc4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   23bc8: 90000018     	adrp	x24, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023bc8:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   23bcc: d37df119     	lsl	x25, x8, #3
   23bd0: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023bd0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   23bd4: 91000108     	add	x8, x8, #0x0
		0000000000023bd4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   23bd8: 8b190113     	add	x19, x8, x25
   23bdc: 39414e68     	ldrb	w8, [x19, #0x53]
   23be0: 7100051f     	cmp	w8, #0x1
   23be4: 54000560     	b.eq	0x23c90 <tpd_touch_release+0x11c>
   23be8: 39409788     	ldrb	w8, [x28, #0x25]
   23bec: 7100051f     	cmp	w8, #0x1
   23bf0: 54000181     	b.ne	0x23c20 <tpd_touch_release+0xac>
   23bf4: 39415a68     	ldrb	w8, [x19, #0x56]
   23bf8: 37000148     	tbnz	w8, #0x0, 0x23c20 <tpd_touch_release+0xac>
   23bfc: f9403a68     	ldr	x8, [x19, #0x70]
   23c00: b4000108     	cbz	x8, 0x23c20 <tpd_touch_release+0xac>
   23c04: 90000009     	adrp	x9, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023c04:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23c08: f9400129     	ldr	x9, [x9]
		0000000000023c08:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23c0c: cb080120     	sub	x0, x9, x8
   23c10: 94000000     	bl	0x23c10 <tpd_touch_release+0x9c>
		0000000000023c10:  R_AARCH64_CALL26	jiffies_to_msecs
   23c14: 79407b88     	ldrh	w8, [x28, #0x3c]
   23c18: 6b08001f     	cmp	w0, w8
   23c1c: 54001023     	b.lo	0x23e20 <tpd_touch_release+0x2ac>
   23c20: b9400308     	ldr	w8, [x24]
		0000000000023c20:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   23c24: b94002e9     	ldr	w9, [x23]
		0000000000023c24:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   23c28: f9003a7f     	str	xzr, [x19, #0x70]
   23c2c: 39014e7f     	strb	wzr, [x19, #0x53]
   23c30: 2a080128     	orr	w8, w9, w8
   23c34: 7900a27f     	strh	wzr, [x19, #0x50]
   23c38: b805527f     	stur	wzr, [x19, #0x55]
   23c3c: 7805927f     	sturh	wzr, [x19, #0x59]
   23c40: 340000a8     	cbz	w8, 0x23c54 <tpd_touch_release+0xe0>
   23c44: 29432668     	ldp	w8, w9, [x19, #0x18]
   23c48: f940326a     	ldr	x10, [x19, #0x60]
   23c4c: 2907a668     	stp	w8, w9, [x19, #0x3c]
   23c50: f900266a     	str	x10, [x19, #0x48]
   23c54: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   23c58: a94457f6     	ldp	x22, x21, [sp, #0x40]
   23c5c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   23c60: a94267fa     	ldp	x26, x25, [sp, #0x20]
   23c64: a9416ffc     	ldp	x28, x27, [sp, #0x10]
   23c68: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   23c6c: d50323bf     	autiasp
   23c70: d65f03c0     	ret
   23c74: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab1c
   23c78: 91000000     	add	x0, x0, #0x0
		0000000000023c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab1c
   23c7c: 90000001     	adrp	x1, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c112
   23c80: 91000021     	add	x1, x1, #0x0
		0000000000023c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c112
   23c84: 2a1403e2     	mov	w2, w20
   23c88: 94000000     	bl	0x23c88 <tpd_touch_release+0x114>
		0000000000023c88:  R_AARCH64_CALL26	_printk
   23c8c: 17fffff2     	b	0x23c54 <tpd_touch_release+0xe0>
   23c90: aa0003f6     	mov	x22, x0
   23c94: 91324380     	add	x0, x28, #0xc90
   23c98: 94000000     	bl	0x23c98 <tpd_touch_release+0x124>
		0000000000023c98:  R_AARCH64_CALL26	mutex_lock
   23c9c: aa1603e0     	mov	x0, x22
   23ca0: 52800061     	mov	w1, #0x3                // =3
   23ca4: 528005e2     	mov	w2, #0x2f               // =47
   23ca8: 2a1403e3     	mov	w3, w20
   23cac: 94000000     	bl	0x23cac <tpd_touch_release+0x138>
		0000000000023cac:  R_AARCH64_CALL26	input_event
   23cb0: aa1603e0     	mov	x0, x22
   23cb4: 2a1f03e1     	mov	w1, wzr
   23cb8: 2a1f03e2     	mov	w2, wzr
   23cbc: 94000000     	bl	0x23cbc <tpd_touch_release+0x148>
		0000000000023cbc:  R_AARCH64_CALL26	input_mt_report_slot_state
   23cc0: 90000016     	adrp	x22, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023cc0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   23cc4: f94002c8     	ldr	x8, [x22]
		0000000000023cc4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23cc8: f9403269     	ldr	x9, [x19, #0x60]
   23ccc: cb090100     	sub	x0, x8, x9
   23cd0: 94000000     	bl	0x23cd0 <tpd_touch_release+0x15c>
		0000000000023cd0:  R_AARCH64_CALL26	jiffies_to_msecs
   23cd4: 29448e62     	ldp	w2, w3, [x19, #0x24]
   23cd8: 2a0003e4     	mov	w4, w0
   23cdc: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7da
   23ce0: 91000000     	add	x0, x0, #0x0
		0000000000023ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7da
   23ce4: 2a1403e1     	mov	w1, w20
   23ce8: f9003e64     	str	x4, [x19, #0x78]
   23cec: 94000000     	bl	0x23cec <tpd_touch_release+0x178>
		0000000000023cec:  R_AARCH64_CALL26	_printk
   23cf0: b94002e8     	ldr	w8, [x23]
		0000000000023cf0:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   23cf4: 340002c8     	cbz	w8, 0x23d4c <tpd_touch_release+0x1d8>
   23cf8: f94002c8     	ldr	x8, [x22]
		0000000000023cf8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23cfc: f9403269     	ldr	x9, [x19, #0x60]
   23d00: cb090100     	sub	x0, x8, x9
   23d04: 94000000     	bl	0x23d04 <tpd_touch_release+0x190>
		0000000000023d04:  R_AARCH64_CALL26	jiffies_to_msecs
   23d08: 7102541f     	cmp	w0, #0x95
   23d0c: 54000208     	b.hi	0x23d4c <tpd_touch_release+0x1d8>
   23d10: b9401a68     	ldr	w8, [x19, #0x18]
   23d14: b9402669     	ldr	w9, [x19, #0x24]
   23d18: 6b090108     	subs	w8, w8, w9
   23d1c: 5a885508     	cneg	w8, w8, mi
   23d20: 7100c51f     	cmp	w8, #0x31
   23d24: 5400014c     	b.gt	0x23d4c <tpd_touch_release+0x1d8>
   23d28: b9401e68     	ldr	w8, [x19, #0x1c]
   23d2c: b9402a69     	ldr	w9, [x19, #0x28]
   23d30: 6b090108     	subs	w8, w8, w9
   23d34: 5a885508     	cneg	w8, w8, mi
   23d38: 7100c51f     	cmp	w8, #0x31
   23d3c: 5400008c     	b.gt	0x23d4c <tpd_touch_release+0x1d8>
   23d40: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15854
   23d44: 91000000     	add	x0, x0, #0x0
		0000000000023d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15854
   23d48: 94000000     	bl	0x23d48 <tpd_touch_release+0x1d4>
		0000000000023d48:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   23d4c: b9400308     	ldr	w8, [x24]
		0000000000023d4c:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   23d50: b94002e9     	ldr	w9, [x23]
		0000000000023d50:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   23d54: 2a080128     	orr	w8, w9, w8
   23d58: 340004c8     	cbz	w8, 0x23df0 <tpd_touch_release+0x27c>
   23d5c: f94002c8     	ldr	x8, [x22]
		0000000000023d5c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23d60: f9402669     	ldr	x9, [x19, #0x48]
   23d64: cb090100     	sub	x0, x8, x9
   23d68: 94000000     	bl	0x23d68 <tpd_touch_release+0x1f4>
		0000000000023d68:  R_AARCH64_CALL26	jiffies_to_msecs
   23d6c: 7104ac1f     	cmp	w0, #0x12b
   23d70: 54000408     	b.hi	0x23df0 <tpd_touch_release+0x27c>
   23d74: f94002c8     	ldr	x8, [x22]
		0000000000023d74:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   23d78: f9403269     	ldr	x9, [x19, #0x60]
   23d7c: cb090100     	sub	x0, x8, x9
   23d80: 94000000     	bl	0x23d80 <tpd_touch_release+0x20c>
		0000000000023d80:  R_AARCH64_CALL26	jiffies_to_msecs
   23d84: 7102541f     	cmp	w0, #0x95
   23d88: 54000348     	b.hi	0x23df0 <tpd_touch_release+0x27c>
   23d8c: b9401a68     	ldr	w8, [x19, #0x18]
   23d90: b9402669     	ldr	w9, [x19, #0x24]
   23d94: 6b090109     	subs	w9, w8, w9
   23d98: 5a895529     	cneg	w9, w9, mi
   23d9c: 7100c53f     	cmp	w9, #0x31
   23da0: 5400028c     	b.gt	0x23df0 <tpd_touch_release+0x27c>
   23da4: b9401e69     	ldr	w9, [x19, #0x1c]
   23da8: b9402a6a     	ldr	w10, [x19, #0x28]
   23dac: 6b0a012a     	subs	w10, w9, w10
   23db0: 5a8a554a     	cneg	w10, w10, mi
   23db4: 7100c55f     	cmp	w10, #0x31
   23db8: 540001cc     	b.gt	0x23df0 <tpd_touch_release+0x27c>
   23dbc: b9403e6a     	ldr	w10, [x19, #0x3c]
   23dc0: 6b0a0108     	subs	w8, w8, w10
   23dc4: 5a885508     	cneg	w8, w8, mi
   23dc8: 710f9d1f     	cmp	w8, #0x3e7
   23dcc: 5400012c     	b.gt	0x23df0 <tpd_touch_release+0x27c>
   23dd0: b9404268     	ldr	w8, [x19, #0x40]
   23dd4: 6b080128     	subs	w8, w9, w8
   23dd8: 5a885508     	cneg	w8, w8, mi
   23ddc: 710f9d1f     	cmp	w8, #0x3e7
   23de0: 5400008c     	b.gt	0x23df0 <tpd_touch_release+0x27c>
   23de4: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15de8
   23de8: 91000000     	add	x0, x0, #0x0
		0000000000023de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15de8
   23dec: 94000000     	bl	0x23dec <tpd_touch_release+0x278>
		0000000000023dec:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   23df0: 91324380     	add	x0, x28, #0xc90
   23df4: 94000000     	bl	0x23df4 <tpd_touch_release+0x280>
		0000000000023df4:  R_AARCH64_CALL26	mutex_unlock
   23df8: f9403e68     	ldr	x8, [x19, #0x78]
   23dfc: 39525789     	ldrb	w9, [x28, #0x495]
   23e00: eb09011f     	cmp	x8, x9
   23e04: 54000062     	b.hs	0x23e10 <tpd_touch_release+0x29c>
   23e08: 39416a68     	ldrb	w8, [x19, #0x5a]
   23e0c: 360006c8     	tbz	w8, #0x0, 0x23ee4 <tpd_touch_release+0x370>
   23e10: b9448f88     	ldr	w8, [x28, #0x48c]
   23e14: 51000508     	sub	w8, w8, #0x1
   23e18: b9048f88     	str	w8, [x28, #0x48c]
   23e1c: 17ffff73     	b	0x23be8 <tpd_touch_release+0x74>
   23e20: f9400376     	ldr	x22, [x27]
		0000000000023e20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   23e24: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1886c
   23e28: 91000000     	add	x0, x0, #0x0
		0000000000023e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1886c
   23e2c: 90000001     	adrp	x1, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b42
   23e30: 91000021     	add	x1, x1, #0x0
		0000000000023e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b42
   23e34: 2a1403e2     	mov	w2, w20
   23e38: 94000000     	bl	0x23e38 <tpd_touch_release+0x2c4>
		0000000000023e38:  R_AARCH64_CALL26	_printk
   23e3c: f9425ec8     	ldr	x8, [x22, #0x4b8]
   23e40: b5000088     	cbnz	x8, 0x23e50 <tpd_touch_release+0x2dc>
   23e44: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d5e8
   23e48: 91000000     	add	x0, x0, #0x0
		0000000000023e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d5e8
   23e4c: 14000022     	b	0x23ed4 <tpd_touch_release+0x360>
   23e50: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e50:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
   23e54: 39400108     	ldrb	w8, [x8]
		0000000000023e54:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
   23e58: 370003a8     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23e5c: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e5c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
   23e60: 39400108     	ldrb	w8, [x8]
		0000000000023e60:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
   23e64: 37000348     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23e68: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e68:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
   23e6c: 39400108     	ldrb	w8, [x8]
		0000000000023e6c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
   23e70: 370002e8     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23e74: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e74:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
   23e78: 39400108     	ldrb	w8, [x8]
		0000000000023e78:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
   23e7c: 37000288     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23e80: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e80:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
   23e84: 39400108     	ldrb	w8, [x8]
		0000000000023e84:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
   23e88: 37000228     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23e8c: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e8c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
   23e90: 39400108     	ldrb	w8, [x8]
		0000000000023e90:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
   23e94: 370001c8     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23e98: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023e98:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
   23e9c: 39400108     	ldrb	w8, [x8]
		0000000000023e9c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
   23ea0: 37000168     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23ea4: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023ea4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
   23ea8: 39400108     	ldrb	w8, [x8]
		0000000000023ea8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
   23eac: 37000108     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23eb0: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023eb0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
   23eb4: 39400108     	ldrb	w8, [x8]
		0000000000023eb4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
   23eb8: 370000a8     	tbnz	w8, #0x0, 0x23ecc <tpd_touch_release+0x358>
   23ebc: 90000008     	adrp	x8, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023ebc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
   23ec0: 39400108     	ldrb	w8, [x8]
		0000000000023ec0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
   23ec4: 7100051f     	cmp	w8, #0x1
   23ec8: 54000601     	b.ne	0x23f88 <tpd_touch_release+0x414>
   23ecc: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c13c
   23ed0: 91000000     	add	x0, x0, #0x0
		0000000000023ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c13c
   23ed4: 90000001     	adrp	x1, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b42
   23ed8: 91000021     	add	x1, x1, #0x0
		0000000000023ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b42
   23edc: 94000000     	bl	0x23edc <tpd_touch_release+0x368>
		0000000000023edc:  R_AARCH64_CALL26	_printk
   23ee0: 17ffff50     	b	0x23c20 <tpd_touch_release+0xac>
   23ee4: 39522388     	ldrb	w8, [x28, #0x488]
   23ee8: 37000168     	tbnz	w8, #0x0, 0x23f14 <tpd_touch_release+0x3a0>
   23eec: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db7c
   23ef0: 91000000     	add	x0, x0, #0x0
		0000000000023ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db7c
   23ef4: 94000000     	bl	0x23ef4 <tpd_touch_release+0x380>
		0000000000023ef4:  R_AARCH64_CALL26	_printk
   23ef8: f9425b81     	ldr	x1, [x28, #0x4b0]
   23efc: 52800028     	mov	w8, #0x1                // =1
   23f00: 9124e382     	add	x2, x28, #0x938
   23f04: 52800400     	mov	w0, #0x20               // =32
   23f08: 52803e83     	mov	w3, #0x1f4              // =500
   23f0c: 39122388     	strb	w8, [x28, #0x488]
   23f10: 94000000     	bl	0x23f10 <tpd_touch_release+0x39c>
		0000000000023f10:  R_AARCH64_CALL26	queue_delayed_work_on
   23f14: b9448f88     	ldr	w8, [x28, #0x48c]
   23f18: aa1303e0     	mov	x0, x19
   23f1c: 7100091f     	cmp	w8, #0x2
   23f20: 52809228     	mov	w8, #0x491              // =1169
   23f24: 9a88d508     	cinc	x8, x8, gt
   23f28: 38686b96     	ldrb	w22, [x28, x8]
   23f2c: 940000a1     	bl	0x241b0 <ghost_check_area>
		0000000000023f2c:  R_AARCH64_CALL26	ghost_check_area
   23f30: 36000140     	tbz	w0, #0x0, 0x23f58 <tpd_touch_release+0x3e4>
   23f34: f9403e68     	ldr	x8, [x19, #0x78]
   23f38: eb16011f     	cmp	x8, x22
   23f3c: 54000122     	b.hs	0x23f60 <tpd_touch_release+0x3ec>
   23f40: 7940ba68     	ldrh	w8, [x19, #0x5c]
   23f44: 7940be69     	ldrh	w9, [x19, #0x5e]
   23f48: 1100050a     	add	w10, w8, #0x1
   23f4c: 11000528     	add	w8, w9, #0x1
   23f50: 7900ba6a     	strh	w10, [x19, #0x5c]
   23f54: 14000005     	b	0x23f68 <tpd_touch_release+0x3f4>
   23f58: 7940be68     	ldrh	w8, [x19, #0x5e]
   23f5c: 14000004     	b	0x23f6c <tpd_touch_release+0x3f8>
   23f60: 7940be68     	ldrh	w8, [x19, #0x5e]
   23f64: 11000508     	add	w8, w8, #0x1
   23f68: 7900be68     	strh	w8, [x19, #0x5e]
   23f6c: 7940ba62     	ldrh	w2, [x19, #0x5c]
   23f70: 90000000     	adrp	x0, 0x23000 <tpd_sysfs_fwimage_show+0x44>
		0000000000023f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b15a
   23f74: 91000000     	add	x0, x0, #0x0
		0000000000023f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b15a
   23f78: 12003d03     	and	w3, w8, #0xffff
   23f7c: 2a1403e1     	mov	w1, w20
   23f80: 94000000     	bl	0x23f80 <tpd_touch_release+0x40c>
		0000000000023f80:  R_AARCH64_CALL26	_printk
   23f84: 17ffffa3     	b	0x23e10 <tpd_touch_release+0x29c>
   23f88: 8b1a1348     	add	x8, x26, x26, lsl #4
   23f8c: 913242c0     	add	x0, x22, #0xc90
   23f90: aa1603fb     	mov	x27, x22
   23f94: d37df117     	lsl	x23, x8, #3
   23f98: 94000000     	bl	0x23f98 <tpd_touch_release+0x424>
		0000000000023f98:  R_AARCH64_CALL26	mutex_lock
   23f9c: b27e02e8     	orr	x8, x23, #0x4
   23fa0: f115411f     	cmp	x8, #0x550
   23fa4: 54000ae8     	b.hi	0x24100 <tpd_touch_release+0x58c>
   23fa8: b27e0328     	orr	x8, x25, #0x4
   23fac: f115411f     	cmp	x8, #0x550
   23fb0: 54000a88     	b.hi	0x24100 <tpd_touch_release+0x58c>
   23fb4: f9404276     	ldr	x22, [x19, #0x80]
   23fb8: 79400279     	ldrh	w25, [x19]
   23fbc: 52800061     	mov	w1, #0x3                // =3
   23fc0: 79400a7a     	ldrh	w26, [x19, #0x4]
   23fc4: 39402277     	ldrb	w23, [x19, #0x8]
   23fc8: 528005e2     	mov	w2, #0x2f               // =47
   23fcc: 39402678     	ldrb	w24, [x19, #0x9]
   23fd0: aa1603e0     	mov	x0, x22
   23fd4: 2a1403e3     	mov	w3, w20
   23fd8: 94000000     	bl	0x23fd8 <tpd_touch_release+0x464>
		0000000000023fd8:  R_AARCH64_CALL26	input_event
   23fdc: aa1603e0     	mov	x0, x22
   23fe0: 2a1f03e1     	mov	w1, wzr
   23fe4: 52800022     	mov	w2, #0x1                // =1
   23fe8: 94000000     	bl	0x23fe8 <tpd_touch_release+0x474>
		0000000000023fe8:  R_AARCH64_CALL26	input_mt_report_slot_state
   23fec: aa1603e0     	mov	x0, x22
   23ff0: 52800021     	mov	w1, #0x1                // =1
   23ff4: 52802942     	mov	w2, #0x14a              // =330
   23ff8: 52800023     	mov	w3, #0x1                // =1
   23ffc: 94000000     	bl	0x23ffc <tpd_touch_release+0x488>
		0000000000023ffc:  R_AARCH64_CALL26	input_event
   24000: aa1603e0     	mov	x0, x22
   24004: 52800061     	mov	w1, #0x3                // =3
   24008: 528006a2     	mov	w2, #0x35               // =53
   2400c: 2a1903e3     	mov	w3, w25
   24010: 94000000     	bl	0x24010 <tpd_touch_release+0x49c>
		0000000000024010:  R_AARCH64_CALL26	input_event
   24014: aa1603e0     	mov	x0, x22
   24018: 52800061     	mov	w1, #0x3                // =3
   2401c: 528006c2     	mov	w2, #0x36               // =54
   24020: 2a1a03e3     	mov	w3, w26
   24024: 94000000     	bl	0x24024 <tpd_touch_release+0x4b0>
		0000000000024024:  R_AARCH64_CALL26	input_event
   24028: 340000d8     	cbz	w24, 0x24040 <tpd_touch_release+0x4cc>
   2402c: aa1603e0     	mov	x0, x22
   24030: 52800061     	mov	w1, #0x3                // =3
   24034: 52800742     	mov	w2, #0x3a               // =58
   24038: 2a1803e3     	mov	w3, w24
   2403c: 94000000     	bl	0x2403c <tpd_touch_release+0x4c8>
		000000000002403c:  R_AARCH64_CALL26	input_event
   24040: 340000d7     	cbz	w23, 0x24058 <tpd_touch_release+0x4e4>
   24044: aa1603e0     	mov	x0, x22
   24048: 52800061     	mov	w1, #0x3                // =3
   2404c: 52800602     	mov	w2, #0x30               // =48
   24050: 2a1703e3     	mov	w3, w23
   24054: 94000000     	bl	0x24054 <tpd_touch_release+0x4e0>
		0000000000024054:  R_AARCH64_CALL26	input_event
   24058: f9404260     	ldr	x0, [x19, #0x80]
   2405c: 2a1f03e1     	mov	w1, wzr
   24060: 2a1f03e2     	mov	w2, wzr
   24064: 2a1f03e3     	mov	w3, wzr
   24068: 94000000     	bl	0x24068 <tpd_touch_release+0x4f4>
		0000000000024068:  R_AARCH64_CALL26	input_event
   2406c: 29401263     	ldp	w3, w4, [x19]
   24070: 52800028     	mov	w8, #0x1                // =1
   24074: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		0000000000024074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ecc
   24078: 91000000     	add	x0, x0, #0x0
		0000000000024078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ecc
   2407c: 90000001     	adrp	x1, 0x24000 <tpd_touch_release+0x48c>
		000000000002407c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b42
   24080: 91000021     	add	x1, x1, #0x0
		0000000000024080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b42
   24084: 2a1403e2     	mov	w2, w20
   24088: 39015268     	strb	w8, [x19, #0x54]
   2408c: 94000000     	bl	0x2408c <tpd_touch_release+0x518>
		000000000002408c:  R_AARCH64_CALL26	_printk
   24090: 91324360     	add	x0, x27, #0xc90
   24094: 94000000     	bl	0x24094 <tpd_touch_release+0x520>
		0000000000024094:  R_AARCH64_CALL26	mutex_unlock
   24098: 12003ea8     	and	w8, w21, #0xffff
   2409c: 7100111f     	cmp	w8, #0x4
   240a0: 5400018c     	b.gt	0x240d0 <tpd_touch_release+0x55c>
   240a4: 7100051f     	cmp	w8, #0x1
   240a8: 540002ed     	b.le	0x24104 <tpd_touch_release+0x590>
   240ac: 7100091f     	cmp	w8, #0x2
   240b0: 540005c0     	b.eq	0x24168 <tpd_touch_release+0x5f4>
   240b4: 71000d1f     	cmp	w8, #0x3
   240b8: 540004c0     	b.eq	0x24150 <tpd_touch_release+0x5dc>
   240bc: 7100111f     	cmp	w8, #0x4
   240c0: 540006a1     	b.ne	0x24194 <tpd_touch_release+0x620>
   240c4: f9425f61     	ldr	x1, [x27, #0x4b8]
   240c8: 91198362     	add	x2, x27, #0x660
   240cc: 1400002c     	b	0x2417c <tpd_touch_release+0x608>
   240d0: 7100191f     	cmp	w8, #0x6
   240d4: 5400024d     	b.le	0x2411c <tpd_touch_release+0x5a8>
   240d8: 71001d1f     	cmp	w8, #0x7
   240dc: 540004c0     	b.eq	0x24174 <tpd_touch_release+0x600>
   240e0: 7100211f     	cmp	w8, #0x8
   240e4: 540003c0     	b.eq	0x2415c <tpd_touch_release+0x5e8>
   240e8: 7100251f     	cmp	w8, #0x9
   240ec: 54000541     	b.ne	0x24194 <tpd_touch_release+0x620>
   240f0: f9425f61     	ldr	x1, [x27, #0x4b8]
   240f4: 9121a362     	add	x2, x27, #0x868
   240f8: 14000021     	b	0x2417c <tpd_touch_release+0x608>
   240fc: d42aa240     	brk	#0x5512
   24100: d4200020     	brk	#0x1
   24104: 340001a8     	cbz	w8, 0x24138 <tpd_touch_release+0x5c4>
   24108: 7100051f     	cmp	w8, #0x1
   2410c: 54000441     	b.ne	0x24194 <tpd_touch_release+0x620>
   24110: f9425f61     	ldr	x1, [x27, #0x4b8]
   24114: 9114a362     	add	x2, x27, #0x528
   24118: 14000019     	b	0x2417c <tpd_touch_release+0x608>
   2411c: 7100151f     	cmp	w8, #0x5
   24120: 54000120     	b.eq	0x24144 <tpd_touch_release+0x5d0>
   24124: 7100191f     	cmp	w8, #0x6
   24128: 54000361     	b.ne	0x24194 <tpd_touch_release+0x620>
   2412c: f9425f61     	ldr	x1, [x27, #0x4b8]
   24130: 911cc362     	add	x2, x27, #0x730
   24134: 14000012     	b	0x2417c <tpd_touch_release+0x608>
   24138: f9425f61     	ldr	x1, [x27, #0x4b8]
   2413c: 91130362     	add	x2, x27, #0x4c0
   24140: 1400000f     	b	0x2417c <tpd_touch_release+0x608>
   24144: f9425f61     	ldr	x1, [x27, #0x4b8]
   24148: 911b2362     	add	x2, x27, #0x6c8
   2414c: 1400000c     	b	0x2417c <tpd_touch_release+0x608>
   24150: f9425f61     	ldr	x1, [x27, #0x4b8]
   24154: 9117e362     	add	x2, x27, #0x5f8
   24158: 14000009     	b	0x2417c <tpd_touch_release+0x608>
   2415c: f9425f61     	ldr	x1, [x27, #0x4b8]
   24160: 91200362     	add	x2, x27, #0x800
   24164: 14000006     	b	0x2417c <tpd_touch_release+0x608>
   24168: f9425f61     	ldr	x1, [x27, #0x4b8]
   2416c: 91164362     	add	x2, x27, #0x590
   24170: 14000003     	b	0x2417c <tpd_touch_release+0x608>
   24174: f9425f61     	ldr	x1, [x27, #0x4b8]
   24178: 911e6362     	add	x2, x27, #0x798
   2417c: 52800400     	mov	w0, #0x20               // =32
   24180: 528001a3     	mov	w3, #0xd                // =13
   24184: 94000000     	bl	0x24184 <tpd_touch_release+0x610>
		0000000000024184:  R_AARCH64_CALL26	queue_delayed_work_on
   24188: 90000017     	adrp	x23, 0x24000 <tpd_touch_release+0x48c>
		0000000000024188:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   2418c: 90000018     	adrp	x24, 0x24000 <tpd_touch_release+0x48c>
		000000000002418c:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   24190: 17fffea4     	b	0x23c20 <tpd_touch_release+0xac>
   24194: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		0000000000024194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x144b4
   24198: 91000000     	add	x0, x0, #0x0
		0000000000024198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x144b4
   2419c: 90000001     	adrp	x1, 0x24000 <tpd_touch_release+0x48c>
		000000000002419c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b42
   241a0: 91000021     	add	x1, x1, #0x0
		00000000000241a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b42
   241a4: 2a1403e2     	mov	w2, w20
   241a8: 94000000     	bl	0x241a8 <tpd_touch_release+0x634>
		00000000000241a8:  R_AARCH64_CALL26	_printk
   241ac: 17fffff7     	b	0x24188 <tpd_touch_release+0x614>
