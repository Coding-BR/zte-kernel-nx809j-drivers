
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006c84 <richtap_rtp_start>:
    6c84: d503233f     	paciasp
    6c88: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    6c8c: f9000bf5     	str	x21, [sp, #0x10]
    6c90: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6c94: 910003fd     	mov	x29, sp
    6c98: aa0003f3     	mov	x19, x0
    6c9c: 910bc000     	add	x0, x0, #0x2f0
    6ca0: 94000000     	bl	0x6ca0 <richtap_rtp_start+0x1c>
		0000000000006ca0:  R_AARCH64_CALL26	mutex_lock
    6ca4: f942e668     	ldr	x8, [x19, #0x5c8]
    6ca8: aa1303e0     	mov	x0, x19
    6cac: 52800041     	mov	w1, #0x2                // =2
    6cb0: f9404d08     	ldr	x8, [x8, #0x98]
    6cb4: b85fc110     	ldur	w16, [x8, #-0x4]
    6cb8: 729bedd1     	movk	w17, #0xdf6e
    6cbc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6cc0: 6b11021f     	cmp	w16, w17
    6cc4: 54000040     	b.eq	0x6ccc <richtap_rtp_start+0x48>
    6cc8: d4304500     	brk	#0x8228
    6ccc: d63f0100     	blr	x8
    6cd0: f942e668     	ldr	x8, [x19, #0x5c8]
    6cd4: aa1303e0     	mov	x0, x19
    6cd8: 52800021     	mov	w1, #0x1                // =1
    6cdc: f9403108     	ldr	x8, [x8, #0x60]
    6ce0: b85fc110     	ldur	w16, [x8, #-0x4]
    6ce4: 729bedd1     	movk	w17, #0xdf6e
    6ce8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6cec: 6b11021f     	cmp	w16, w17
    6cf0: 54000040     	b.eq	0x6cf8 <richtap_rtp_start+0x74>
    6cf4: d4304500     	brk	#0x8228
    6cf8: d63f0100     	blr	x8
    6cfc: 5280fa00     	mov	w0, #0x7d0              // =2000
    6d00: 5280fa01     	mov	w1, #0x7d0              // =2000
    6d04: 52800042     	mov	w2, #0x2                // =2
    6d08: 94000000     	bl	0x6d08 <richtap_rtp_start+0x84>
		0000000000006d08:  R_AARCH64_CALL26	usleep_range_state
    6d0c: 128018f5     	mov	w21, #-0xc8             // =-200
    6d10: f942e668     	ldr	x8, [x19, #0x5c8]
    6d14: aa1303e0     	mov	x0, x19
    6d18: f940b108     	ldr	x8, [x8, #0x160]
    6d1c: b85fc110     	ldur	w16, [x8, #-0x4]
    6d20: 72870a91     	movk	w17, #0x3854
    6d24: 72af0971     	movk	w17, #0x784b, lsl #16
    6d28: 6b11021f     	cmp	w16, w17
    6d2c: 54000040     	b.eq	0x6d34 <richtap_rtp_start+0xb0>
    6d30: d4304500     	brk	#0x8228
    6d34: d63f0100     	blr	x8
    6d38: 12000c14     	and	w20, w0, #0xf
    6d3c: 7100229f     	cmp	w20, #0x8
    6d40: 54000340     	b.eq	0x6da8 <richtap_rtp_start+0x124>
    6d44: 5280fa00     	mov	w0, #0x7d0              // =2000
    6d48: 52813881     	mov	w1, #0x9c4              // =2500
    6d4c: 52800042     	mov	w2, #0x2                // =2
    6d50: 94000000     	bl	0x6d50 <richtap_rtp_start+0xcc>
		0000000000006d50:  R_AARCH64_CALL26	usleep_range_state
    6d54: 310006b5     	adds	w21, w21, #0x1
    6d58: 54fffdc3     	b.lo	0x6d10 <richtap_rtp_start+0x8c>
    6d5c: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006d5c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_13ff
    6d60: 91000000     	add	x0, x0, #0x0
		0000000000006d60:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_13ff
    6d64: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006d64:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6d68: 91000021     	add	x1, x1, #0x0
		0000000000006d68:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6d6c: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006d6c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0f9b
    6d70: 91000063     	add	x3, x3, #0x0
		0000000000006d70:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0f9b
    6d74: 5280a122     	mov	w2, #0x509              // =1289
    6d78: 94000000     	bl	0x6d78 <richtap_rtp_start+0xf4>
		0000000000006d78:  R_AARCH64_CALL26	_printk
    6d7c: f942e668     	ldr	x8, [x19, #0x5c8]
    6d80: aa1303e0     	mov	x0, x19
    6d84: f9401d08     	ldr	x8, [x8, #0x38]
    6d88: b85fc110     	ldur	w16, [x8, #-0x4]
    6d8c: 72810611     	movk	w17, #0x830
    6d90: 72b08f51     	movk	w17, #0x847a, lsl #16
    6d94: 6b11021f     	cmp	w16, w17
    6d98: 54000040     	b.eq	0x6da0 <richtap_rtp_start+0x11c>
    6d9c: d4304500     	brk	#0x8228
    6da0: d63f0100     	blr	x8
    6da4: 1400000d     	b	0x6dd8 <richtap_rtp_start+0x154>
    6da8: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006da8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_27a1
    6dac: 91000000     	add	x0, x0, #0x0
		0000000000006dac:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_27a1
    6db0: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006db0:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6db4: 91000021     	add	x1, x1, #0x0
		0000000000006db4:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6db8: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006db8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0f9b
    6dbc: 91000063     	add	x3, x3, #0x0
		0000000000006dbc:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0f9b
    6dc0: 52809fa2     	mov	w2, #0x4fd              // =1277
    6dc4: 94000000     	bl	0x6dc4 <richtap_rtp_start+0x140>
		0000000000006dc4:  R_AARCH64_CALL26	_printk
    6dc8: 5280fa00     	mov	w0, #0x7d0              // =2000
    6dcc: 52813881     	mov	w1, #0x9c4              // =2500
    6dd0: 52800042     	mov	w2, #0x2                // =2
    6dd4: 94000000     	bl	0x6dd4 <richtap_rtp_start+0x150>
		0000000000006dd4:  R_AARCH64_CALL26	usleep_range_state
    6dd8: 7100229f     	cmp	w20, #0x8
    6ddc: 910bc260     	add	x0, x19, #0x2f0
    6de0: 1a9f17f4     	cset	w20, eq
    6de4: 94000000     	bl	0x6de4 <richtap_rtp_start+0x160>
		0000000000006de4:  R_AARCH64_CALL26	mutex_unlock
    6de8: 2a1403e0     	mov	w0, w20
    6dec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6df0: f9400bf5     	ldr	x21, [sp, #0x10]
    6df4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    6df8: d50323bf     	autiasp
    6dfc: d65f03c0     	ret
