
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009dec <syna_dev_set_follow_hand_level>:
    9dec: d503233f     	paciasp
    9df0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9df4: f9000bf5     	str	x21, [sp, #0x10]
    9df8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9dfc: 910003fd     	mov	x29, sp
    9e00: 2a0103f5     	mov	w21, w1
    9e04: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57bb
    9e08: 91000021     	add	x1, x1, #0x0
		0000000000009e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57bb
    9e0c: 2a0203f3     	mov	w19, w2
    9e10: aa0003f4     	mov	x20, x0
    9e14: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009e14:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A85B
    9e18: 91000000     	add	x0, x0, #0x0
		0000000000009e18:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A85B
    9e1c: aa0103e2     	mov	x2, x1
    9e20: 94000000     	bl	0x9e20 <syna_dev_set_follow_hand_level+0x34>
		0000000000009e20:  R_AARCH64_CALL26	_printk
    9e24: b4000254     	cbz	x20, 0x9e6c <syna_dev_set_follow_hand_level+0x80>
    9e28: 710006bf     	cmp	w21, #0x1
    9e2c: 5400024c     	b.gt	0x9e74 <syna_dev_set_follow_hand_level+0x88>
    9e30: 34000475     	cbz	w21, 0x9ebc <syna_dev_set_follow_hand_level+0xd0>
    9e34: 710006bf     	cmp	w21, #0x1
    9e38: 54000881     	b.ne	0x9f48 <syna_dev_set_follow_hand_level+0x15c>
    9e3c: b945fe88     	ldr	w8, [x20, #0x5fc]
    9e40: b9460689     	ldr	w9, [x20, #0x604]
    9e44: 52801f21     	mov	w1, #0xf9               // =249
    9e48: f9400280     	ldr	x0, [x20]
    9e4c: 2a1303e3     	mov	w3, w19
    9e50: 2a092108     	orr	w8, w8, w9, lsl #8
    9e54: 321c0102     	orr	w2, w8, #0x10
    9e58: 94000000     	bl	0x9e58 <syna_dev_set_follow_hand_level+0x6c>
		0000000000009e58:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9e5c: 37f80840     	tbnz	w0, #0x1f, 0x9f64 <syna_dev_set_follow_hand_level+0x178>
    9e60: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009e60:  R_AARCH64_ADR_PREL_PG_HI21	unk_387C8
    9e64: 91000000     	add	x0, x0, #0x0
		0000000000009e64:  R_AARCH64_ADD_ABS_LO12_NC	unk_387C8
    9e68: 1400003a     	b	0x9f50 <syna_dev_set_follow_hand_level+0x164>
    9e6c: 128002a0     	mov	w0, #-0x16              // =-22
    9e70: 1400003d     	b	0x9f64 <syna_dev_set_follow_hand_level+0x178>
    9e74: 710012bf     	cmp	w21, #0x4
    9e78: 54000380     	b.eq	0x9ee8 <syna_dev_set_follow_hand_level+0xfc>
    9e7c: 71000ebf     	cmp	w21, #0x3
    9e80: 540004c0     	b.eq	0x9f18 <syna_dev_set_follow_hand_level+0x12c>
    9e84: 71000abf     	cmp	w21, #0x2
    9e88: 54000601     	b.ne	0x9f48 <syna_dev_set_follow_hand_level+0x15c>
    9e8c: b945fe88     	ldr	w8, [x20, #0x5fc]
    9e90: b9460689     	ldr	w9, [x20, #0x604]
    9e94: 52801f21     	mov	w1, #0xf9               // =249
    9e98: f9400280     	ldr	x0, [x20]
    9e9c: 2a1303e3     	mov	w3, w19
    9ea0: 2a092108     	orr	w8, w8, w9, lsl #8
    9ea4: 321b0102     	orr	w2, w8, #0x20
    9ea8: 94000000     	bl	0x9ea8 <syna_dev_set_follow_hand_level+0xbc>
		0000000000009ea8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9eac: 37f805c0     	tbnz	w0, #0x1f, 0x9f64 <syna_dev_set_follow_hand_level+0x178>
    9eb0: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009eb0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A1C3
    9eb4: 91000000     	add	x0, x0, #0x0
		0000000000009eb4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A1C3
    9eb8: 14000026     	b	0x9f50 <syna_dev_set_follow_hand_level+0x164>
    9ebc: b945fe88     	ldr	w8, [x20, #0x5fc]
    9ec0: b9460689     	ldr	w9, [x20, #0x604]
    9ec4: 52801f21     	mov	w1, #0xf9               // =249
    9ec8: f9400280     	ldr	x0, [x20]
    9ecc: 2a1303e3     	mov	w3, w19
    9ed0: 2a092102     	orr	w2, w8, w9, lsl #8
    9ed4: 94000000     	bl	0x9ed4 <syna_dev_set_follow_hand_level+0xe8>
		0000000000009ed4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9ed8: 37f80460     	tbnz	w0, #0x1f, 0x9f64 <syna_dev_set_follow_hand_level+0x178>
    9edc: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009edc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B08C
    9ee0: 91000000     	add	x0, x0, #0x0
		0000000000009ee0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B08C
    9ee4: 1400001b     	b	0x9f50 <syna_dev_set_follow_hand_level+0x164>
    9ee8: b945fe88     	ldr	w8, [x20, #0x5fc]
    9eec: b9460689     	ldr	w9, [x20, #0x604]
    9ef0: 52801f21     	mov	w1, #0xf9               // =249
    9ef4: f9400280     	ldr	x0, [x20]
    9ef8: 2a1303e3     	mov	w3, w19
    9efc: 2a092108     	orr	w8, w8, w9, lsl #8
    9f00: 321a0102     	orr	w2, w8, #0x40
    9f04: 94000000     	bl	0x9f04 <syna_dev_set_follow_hand_level+0x118>
		0000000000009f04:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9f08: 37f802e0     	tbnz	w0, #0x1f, 0x9f64 <syna_dev_set_follow_hand_level+0x178>
    9f0c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009f0c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B75C
    9f10: 91000000     	add	x0, x0, #0x0
		0000000000009f10:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B75C
    9f14: 1400000f     	b	0x9f50 <syna_dev_set_follow_hand_level+0x164>
    9f18: b945fe88     	ldr	w8, [x20, #0x5fc]
    9f1c: b9460689     	ldr	w9, [x20, #0x604]
    9f20: 52801f21     	mov	w1, #0xf9               // =249
    9f24: f9400280     	ldr	x0, [x20]
    9f28: 2a1303e3     	mov	w3, w19
    9f2c: 2a092108     	orr	w8, w8, w9, lsl #8
    9f30: 321c0502     	orr	w2, w8, #0x30
    9f34: 94000000     	bl	0x9f34 <syna_dev_set_follow_hand_level+0x148>
		0000000000009f34:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9f38: 37f80160     	tbnz	w0, #0x1f, 0x9f64 <syna_dev_set_follow_hand_level+0x178>
    9f3c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009f3c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3981B
    9f40: 91000000     	add	x0, x0, #0x0
		0000000000009f40:  R_AARCH64_ADD_ABS_LO12_NC	unk_3981B
    9f44: 14000003     	b	0x9f50 <syna_dev_set_follow_hand_level+0x164>
    9f48: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009f48:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BDBF
    9f4c: 91000000     	add	x0, x0, #0x0
		0000000000009f4c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BDBF
    9f50: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57bb
    9f54: 91000021     	add	x1, x1, #0x0
		0000000000009f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57bb
    9f58: aa0103e2     	mov	x2, x1
    9f5c: 94000000     	bl	0x9f5c <syna_dev_set_follow_hand_level+0x170>
		0000000000009f5c:  R_AARCH64_CALL26	_printk
    9f60: 2a1f03e0     	mov	w0, wzr
    9f64: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9f68: f9400bf5     	ldr	x21, [sp, #0x10]
    9f6c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9f70: d50323bf     	autiasp
    9f74: d65f03c0     	ret
