
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024cd4 <syna_tpd_register_fw_class>:
   24cd4: d503233f     	paciasp
   24cd8: d100c3ff     	sub	sp, sp, #0x30
   24cdc: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24ce0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   24ce4: 910043fd     	add	x29, sp, #0x10
   24ce8: d5384108     	mrs	x8, SP_EL0
   24cec: aa0003f3     	mov	x19, x0
   24cf0: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e62
   24cf4: 91000000     	add	x0, x0, #0x0
		0000000000024cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e62
   24cf8: f9438908     	ldr	x8, [x8, #0x710]
   24cfc: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4351
   24d00: 91000021     	add	x1, x1, #0x0
		0000000000024d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4351
   24d04: f90007e8     	str	x8, [sp, #0x8]
   24d08: 94000000     	bl	0x24d08 <syna_tpd_register_fw_class+0x34>
		0000000000024d08:  R_AARCH64_CALL26	_printk
   24d0c: 52800141     	mov	w1, #0xa                // =10
   24d10: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
   24d14: 91000000     	add	x0, x0, #0x0
		0000000000024d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
   24d18: 90000003     	adrp	x3, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc429
   24d1c: 91000063     	add	x3, x3, #0x0
		0000000000024d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc429
   24d20: 72a000c1     	movk	w1, #0x6, lsl #16
   24d24: 52800022     	mov	w2, #0x1                // =1
   24d28: 94000000     	bl	0x24d28 <syna_tpd_register_fw_class+0x54>
		0000000000024d28:  R_AARCH64_CALL26	alloc_workqueue
   24d2c: f9034660     	str	x0, [x19, #0x688]
   24d30: b50000e0     	cbnz	x0, 0x24d4c <syna_tpd_register_fw_class+0x78>
   24d34: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc43d
   24d38: 91000000     	add	x0, x0, #0x0
		0000000000024d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc43d
   24d3c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4351
   24d40: 91000021     	add	x1, x1, #0x0
		0000000000024d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4351
   24d44: 94000000     	bl	0x24d44 <syna_tpd_register_fw_class+0x70>
		0000000000024d44:  R_AARCH64_CALL26	_printk
   24d48: 1400003c     	b	0x24e38 <syna_tpd_register_fw_class+0x164>
   24d4c: 90000014     	adrp	x20, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024d4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x968
   24d50: f90003ff     	str	xzr, [sp]
   24d54: f9400280     	ldr	x0, [x20]
		0000000000024d54:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x968
   24d58: b5000100     	cbnz	x0, 0x24d78 <syna_tpd_register_fw_class+0xa4>
   24d5c: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb781
   24d60: 91000000     	add	x0, x0, #0x0
		0000000000024d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb781
   24d64: 94000000     	bl	0x24d64 <syna_tpd_register_fw_class+0x90>
		0000000000024d64:  R_AARCH64_CALL26	power_supply_get_by_name
   24d68: f9000280     	str	x0, [x20]
		0000000000024d68:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x968
   24d6c: b5000060     	cbnz	x0, 0x24d78 <syna_tpd_register_fw_class+0xa4>
   24d70: 2a1f03e8     	mov	w8, wzr
   24d74: 1400000d     	b	0x24da8 <syna_tpd_register_fw_class+0xd4>
   24d78: f9400008     	ldr	x8, [x0]
   24d7c: 910003e2     	mov	x2, sp
   24d80: 2a1f03e1     	mov	w1, wzr
   24d84: f9401508     	ldr	x8, [x8, #0x28]
   24d88: b85fc110     	ldur	w16, [x8, #-0x4]
   24d8c: 72819a71     	movk	w17, #0xcd3
   24d90: 72bd1331     	movk	w17, #0xe899, lsl #16
   24d94: 6b11021f     	cmp	w16, w17
   24d98: 54000040     	b.eq	0x24da0 <syna_tpd_register_fw_class+0xcc>
   24d9c: d4304500     	brk	#0x8228
   24da0: d63f0100     	blr	x8
   24da4: b94003e8     	ldr	w8, [sp]
   24da8: 7100111f     	cmp	w8, #0x4
   24dac: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x944d
   24db0: 91000000     	add	x0, x0, #0x0
		0000000000024db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x944d
   24db4: 7a411904     	ccmp	w8, #0x1, #0x4, ne
   24db8: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x843c
   24dbc: 91000021     	add	x1, x1, #0x0
		0000000000024dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x843c
   24dc0: 1a9f17f4     	cset	w20, eq
   24dc4: 2a1403e2     	mov	w2, w20
   24dc8: 94000000     	bl	0x24dc8 <syna_tpd_register_fw_class+0xf4>
		0000000000024dc8:  R_AARCH64_CALL26	_printk
   24dcc: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024dcc:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   24dd0: b26b7be9     	mov	x9, #0xfffffffe00000    // =4503599625273344
   24dd4: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024dd4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   24dd8: 91000021     	add	x1, x1, #0x0
		0000000000024dd8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   24ddc: 39000114     	strb	w20, [x8]
		0000000000024ddc:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   24de0: 9118a268     	add	x8, x19, #0x628
   24de4: f9031269     	str	x9, [x19, #0x620]
   24de8: 91190260     	add	x0, x19, #0x640
   24dec: 52a00402     	mov	w2, #0x200000           // =2097152
   24df0: f9031668     	str	x8, [x19, #0x628]
   24df4: aa1f03e3     	mov	x3, xzr
   24df8: aa1f03e4     	mov	x4, xzr
   24dfc: f9031a68     	str	x8, [x19, #0x630]
   24e00: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e00:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25048
   24e04: 91000108     	add	x8, x8, #0x0
		0000000000024e04:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25048
   24e08: f9031e68     	str	x8, [x19, #0x638]
   24e0c: 94000000     	bl	0x24e0c <syna_tpd_register_fw_class+0x138>
		0000000000024e0c:  R_AARCH64_CALL26	init_timer_key
   24e10: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ff2
   24e14: 91000000     	add	x0, x0, #0x0
		0000000000024e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ff2
   24e18: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d50
   24e1c: 91000021     	add	x1, x1, #0x0
		0000000000024e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d50
   24e20: 94000000     	bl	0x24e20 <syna_tpd_register_fw_class+0x14c>
		0000000000024e20:  R_AARCH64_CALL26	_printk
   24e24: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e24:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2620c
   24e28: 91000108     	add	x8, x8, #0x0
		0000000000024e28:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2620c
   24e2c: 911a4260     	add	x0, x19, #0x690
   24e30: f9034a68     	str	x8, [x19, #0x690]
   24e34: 94000000     	bl	0x24e34 <syna_tpd_register_fw_class+0x160>
		0000000000024e34:  R_AARCH64_CALL26	power_supply_reg_notifier
   24e38: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24e3c: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e3c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25224
   24e40: 91000129     	add	x9, x9, #0x0
		0000000000024e40:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25224
   24e44: f9400108     	ldr	x8, [x8]
		0000000000024e44:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24e48: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cd5
   24e4c: 91000000     	add	x0, x0, #0x0
		0000000000024e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cd5
   24e50: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4351
   24e54: 91000021     	add	x1, x1, #0x0
		0000000000024e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4351
   24e58: f9071109     	str	x9, [x8, #0xe20]
   24e5c: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e5c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x252a8
   24e60: 91000129     	add	x9, x9, #0x0
		0000000000024e60:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x252a8
   24e64: f9071509     	str	x9, [x8, #0xe28]
   24e68: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e68:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x252c4
   24e6c: 91000129     	add	x9, x9, #0x0
		0000000000024e6c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x252c4
   24e70: f9071909     	str	x9, [x8, #0xe30]
   24e74: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e74:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25314
   24e78: 91000129     	add	x9, x9, #0x0
		0000000000024e78:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25314
   24e7c: f9076d09     	str	x9, [x8, #0xed8]
   24e80: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e80:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2537c
   24e84: 91000129     	add	x9, x9, #0x0
		0000000000024e84:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2537c
   24e88: f9077109     	str	x9, [x8, #0xee0]
   24e8c: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e8c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25444
   24e90: 91000129     	add	x9, x9, #0x0
		0000000000024e90:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25444
   24e94: f9076509     	str	x9, [x8, #0xec8]
   24e98: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024e98:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x254a8
   24e9c: 91000129     	add	x9, x9, #0x0
		0000000000024e9c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x254a8
   24ea0: f9076909     	str	x9, [x8, #0xed0]
   24ea4: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ea4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2555c
   24ea8: 91000129     	add	x9, x9, #0x0
		0000000000024ea8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2555c
   24eac: f9075d09     	str	x9, [x8, #0xeb8]
   24eb0: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024eb0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x255c0
   24eb4: 91000129     	add	x9, x9, #0x0
		0000000000024eb4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x255c0
   24eb8: f9076109     	str	x9, [x8, #0xec0]
   24ebc: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ebc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25674
   24ec0: 91000129     	add	x9, x9, #0x0
		0000000000024ec0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25674
   24ec4: f9077d09     	str	x9, [x8, #0xef8]
   24ec8: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ec8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x256d8
   24ecc: 91000129     	add	x9, x9, #0x0
		0000000000024ecc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x256d8
   24ed0: f9077909     	str	x9, [x8, #0xef0]
   24ed4: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ed4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x256f4
   24ed8: 91000129     	add	x9, x9, #0x0
		0000000000024ed8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x256f4
   24edc: f907d109     	str	x9, [x8, #0xfa0]
   24ee0: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ee0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x257c8
   24ee4: 91000129     	add	x9, x9, #0x0
		0000000000024ee4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x257c8
   24ee8: f907cd09     	str	x9, [x8, #0xf98]
   24eec: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024eec:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25828
   24ef0: 91000129     	add	x9, x9, #0x0
		0000000000024ef0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25828
   24ef4: f9078d09     	str	x9, [x8, #0xf18]
   24ef8: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ef8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25844
   24efc: 91000129     	add	x9, x9, #0x0
		0000000000024efc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25844
   24f00: f9078909     	str	x9, [x8, #0xf10]
   24f04: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f04:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25904
   24f08: 91000129     	add	x9, x9, #0x0
		0000000000024f08:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25904
   24f0c: f907b109     	str	x9, [x8, #0xf60]
   24f10: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f10:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25920
   24f14: 91000129     	add	x9, x9, #0x0
		0000000000024f14:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25920
   24f18: f907b509     	str	x9, [x8, #0xf68]
   24f1c: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f1c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x259e4
   24f20: 91000129     	add	x9, x9, #0x0
		0000000000024f20:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x259e4
   24f24: f9079509     	str	x9, [x8, #0xf28]
   24f28: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f28:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25a00
   24f2c: 91000129     	add	x9, x9, #0x0
		0000000000024f2c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25a00
   24f30: f9079109     	str	x9, [x8, #0xf20]
   24f34: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f34:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25ac0
   24f38: 91000129     	add	x9, x9, #0x0
		0000000000024f38:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25ac0
   24f3c: f9079d09     	str	x9, [x8, #0xf38]
   24f40: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f40:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25adc
   24f44: 91000129     	add	x9, x9, #0x0
		0000000000024f44:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25adc
   24f48: f9079909     	str	x9, [x8, #0xf30]
   24f4c: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f4c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25b9c
   24f50: 91000129     	add	x9, x9, #0x0
		0000000000024f50:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25b9c
   24f54: f9074509     	str	x9, [x8, #0xe88]
   24f58: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f58:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25bb8
   24f5c: 91000129     	add	x9, x9, #0x0
		0000000000024f5c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25bb8
   24f60: f9074109     	str	x9, [x8, #0xe80]
   24f64: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f64:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25c84
   24f68: 91000129     	add	x9, x9, #0x0
		0000000000024f68:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25c84
   24f6c: f9074909     	str	x9, [x8, #0xe90]
   24f70: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f70:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25e44
   24f74: 91000129     	add	x9, x9, #0x0
		0000000000024f74:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25e44
   24f78: f9078109     	str	x9, [x8, #0xf00]
   24f7c: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f7c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25e60
   24f80: 91000129     	add	x9, x9, #0x0
		0000000000024f80:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25e60
   24f84: f9078509     	str	x9, [x8, #0xf08]
   24f88: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f88:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25f3c
   24f8c: 91000129     	add	x9, x9, #0x0
		0000000000024f8c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25f3c
   24f90: f907a909     	str	x9, [x8, #0xf50]
   24f94: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024f94:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25f74
   24f98: 91000129     	add	x9, x9, #0x0
		0000000000024f98:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25f74
   24f9c: f9080109     	str	x9, [x8, #0x1000]
   24fa0: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fa0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25f90
   24fa4: 91000129     	add	x9, x9, #0x0
		0000000000024fa4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25f90
   24fa8: f907fd09     	str	x9, [x8, #0xff8]
   24fac: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fac:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2605c
   24fb0: 91000129     	add	x9, x9, #0x0
		0000000000024fb0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2605c
   24fb4: f907d509     	str	x9, [x8, #0xfa8]
   24fb8: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fb8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x26078
   24fbc: 91000129     	add	x9, x9, #0x0
		0000000000024fbc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x26078
   24fc0: f907d909     	str	x9, [x8, #0xfb0]
   24fc4: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fc4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x260b8
   24fc8: 91000129     	add	x9, x9, #0x0
		0000000000024fc8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x260b8
   24fcc: f907f909     	str	x9, [x8, #0xff0]
   24fd0: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fd0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x2611c
   24fd4: 91000129     	add	x9, x9, #0x0
		0000000000024fd4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x2611c
   24fd8: f907e909     	str	x9, [x8, #0xfd0]
   24fdc: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fdc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x26178
   24fe0: 91000129     	add	x9, x9, #0x0
		0000000000024fe0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x26178
   24fe4: f907e509     	str	x9, [x8, #0xfc8]
   24fe8: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024fe8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x26194
   24fec: 91000129     	add	x9, x9, #0x0
		0000000000024fec:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x26194
   24ff0: f907f109     	str	x9, [x8, #0xfe0]
   24ff4: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024ff4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x261f0
   24ff8: 91000129     	add	x9, x9, #0x0
		0000000000024ff8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x261f0
   24ffc: f906dd13     	str	x19, [x8, #0xdb8]
   25000: f907ed09     	str	x9, [x8, #0xfd8]
   25004: b943ba69     	ldr	w9, [x19, #0x3b8]
   25008: 79088509     	strh	w9, [x8, #0x442]
   2500c: b943be69     	ldr	w9, [x19, #0x3bc]
   25010: 79088909     	strh	w9, [x8, #0x444]
   25014: 94000000     	bl	0x25014 <syna_tpd_register_fw_class+0x340>
		0000000000025014:  R_AARCH64_CALL26	_printk
   25018: d5384108     	mrs	x8, SP_EL0
   2501c: f9438908     	ldr	x8, [x8, #0x710]
   25020: f94007e9     	ldr	x9, [sp, #0x8]
   25024: eb09011f     	cmp	x8, x9
   25028: 540000c1     	b.ne	0x25040 <syna_tpd_register_fw_class+0x36c>
   2502c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25030: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25034: 9100c3ff     	add	sp, sp, #0x30
   25038: d50323bf     	autiasp
   2503c: d65f03c0     	ret
   25040: 94000000     	bl	0x25040 <syna_tpd_register_fw_class+0x36c>
		0000000000025040:  R_AARCH64_CALL26	__stack_chk_fail
