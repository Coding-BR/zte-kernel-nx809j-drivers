
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006cb4 <richtap_rtp_start>:
    6cb4: d503233f     	paciasp
    6cb8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    6cbc: f9000bf5     	str	x21, [sp, #0x10]
    6cc0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6cc4: 910003fd     	mov	x29, sp
    6cc8: aa0003f3     	mov	x19, x0
    6ccc: 910bc000     	add	x0, x0, #0x2f0
    6cd0: 94000000     	bl	0x6cd0 <richtap_rtp_start+0x1c>
		0000000000006cd0:  R_AARCH64_CALL26	mutex_lock
    6cd4: f942e668     	ldr	x8, [x19, #0x5c8]
    6cd8: aa1303e0     	mov	x0, x19
    6cdc: 52800041     	mov	w1, #0x2                // =2
    6ce0: f9404d08     	ldr	x8, [x8, #0x98]
    6ce4: b85fc110     	ldur	w16, [x8, #-0x4]
    6ce8: 729bedd1     	movk	w17, #0xdf6e
    6cec: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6cf0: 6b11021f     	cmp	w16, w17
    6cf4: 54000040     	b.eq	0x6cfc <richtap_rtp_start+0x48>
    6cf8: d4304500     	brk	#0x8228
    6cfc: d63f0100     	blr	x8
    6d00: f942e668     	ldr	x8, [x19, #0x5c8]
    6d04: aa1303e0     	mov	x0, x19
    6d08: 52800021     	mov	w1, #0x1                // =1
    6d0c: f9403108     	ldr	x8, [x8, #0x60]
    6d10: b85fc110     	ldur	w16, [x8, #-0x4]
    6d14: 729bedd1     	movk	w17, #0xdf6e
    6d18: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6d1c: 6b11021f     	cmp	w16, w17
    6d20: 54000040     	b.eq	0x6d28 <richtap_rtp_start+0x74>
    6d24: d4304500     	brk	#0x8228
    6d28: d63f0100     	blr	x8
    6d2c: 5280fa00     	mov	w0, #0x7d0              // =2000
    6d30: 5280fa01     	mov	w1, #0x7d0              // =2000
    6d34: 52800042     	mov	w2, #0x2                // =2
    6d38: 94000000     	bl	0x6d38 <richtap_rtp_start+0x84>
		0000000000006d38:  R_AARCH64_CALL26	usleep_range_state
    6d3c: 128018f5     	mov	w21, #-0xc8             // =-200
    6d40: f942e668     	ldr	x8, [x19, #0x5c8]
    6d44: aa1303e0     	mov	x0, x19
    6d48: f940b108     	ldr	x8, [x8, #0x160]
    6d4c: b85fc110     	ldur	w16, [x8, #-0x4]
    6d50: 72870a91     	movk	w17, #0x3854
    6d54: 72af0971     	movk	w17, #0x784b, lsl #16
    6d58: 6b11021f     	cmp	w16, w17
    6d5c: 54000040     	b.eq	0x6d64 <richtap_rtp_start+0xb0>
    6d60: d4304500     	brk	#0x8228
    6d64: d63f0100     	blr	x8
    6d68: 12000c14     	and	w20, w0, #0xf
    6d6c: 7100229f     	cmp	w20, #0x8
    6d70: 54000340     	b.eq	0x6dd8 <richtap_rtp_start+0x124>
    6d74: 5280fa00     	mov	w0, #0x7d0              // =2000
    6d78: 52813881     	mov	w1, #0x9c4              // =2500
    6d7c: 52800042     	mov	w2, #0x2                // =2
    6d80: 94000000     	bl	0x6d80 <richtap_rtp_start+0xcc>
		0000000000006d80:  R_AARCH64_CALL26	usleep_range_state
    6d84: 310006b5     	adds	w21, w21, #0x1
    6d88: 54fffdc3     	b.lo	0x6d40 <richtap_rtp_start+0x8c>
    6d8c: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006d8c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_13ff
    6d90: 91000000     	add	x0, x0, #0x0
		0000000000006d90:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_13ff
    6d94: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006d94:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6d98: 91000021     	add	x1, x1, #0x0
		0000000000006d98:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6d9c: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006d9c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0f9b
    6da0: 91000063     	add	x3, x3, #0x0
		0000000000006da0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0f9b
    6da4: 5280a122     	mov	w2, #0x509              // =1289
    6da8: 94000000     	bl	0x6da8 <richtap_rtp_start+0xf4>
		0000000000006da8:  R_AARCH64_CALL26	_printk
    6dac: f942e668     	ldr	x8, [x19, #0x5c8]
    6db0: aa1303e0     	mov	x0, x19
    6db4: f9401d08     	ldr	x8, [x8, #0x38]
    6db8: b85fc110     	ldur	w16, [x8, #-0x4]
    6dbc: 72810611     	movk	w17, #0x830
    6dc0: 72b08f51     	movk	w17, #0x847a, lsl #16
    6dc4: 6b11021f     	cmp	w16, w17
    6dc8: 54000040     	b.eq	0x6dd0 <richtap_rtp_start+0x11c>
    6dcc: d4304500     	brk	#0x8228
    6dd0: d63f0100     	blr	x8
    6dd4: 1400000d     	b	0x6e08 <richtap_rtp_start+0x154>
    6dd8: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006dd8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_27a1
    6ddc: 91000000     	add	x0, x0, #0x0
		0000000000006ddc:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_27a1
    6de0: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006de0:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0000
    6de4: 91000021     	add	x1, x1, #0x0
		0000000000006de4:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0000
    6de8: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006de8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_richtap_str_0f9b
    6dec: 91000063     	add	x3, x3, #0x0
		0000000000006dec:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_richtap_str_0f9b
    6df0: 52809fa2     	mov	w2, #0x4fd              // =1277
    6df4: 94000000     	bl	0x6df4 <richtap_rtp_start+0x140>
		0000000000006df4:  R_AARCH64_CALL26	_printk
    6df8: 5280fa00     	mov	w0, #0x7d0              // =2000
    6dfc: 52813881     	mov	w1, #0x9c4              // =2500
    6e00: 52800042     	mov	w2, #0x2                // =2
    6e04: 94000000     	bl	0x6e04 <richtap_rtp_start+0x150>
		0000000000006e04:  R_AARCH64_CALL26	usleep_range_state
    6e08: 7100229f     	cmp	w20, #0x8
    6e0c: 910bc260     	add	x0, x19, #0x2f0
    6e10: 1a9f17f4     	cset	w20, eq
    6e14: 94000000     	bl	0x6e14 <richtap_rtp_start+0x160>
		0000000000006e14:  R_AARCH64_CALL26	mutex_unlock
    6e18: 2a1403e0     	mov	w0, w20
    6e1c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6e20: f9400bf5     	ldr	x21, [sp, #0x10]
    6e24: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    6e28: d50323bf     	autiasp
    6e2c: d65f03c0     	ret
