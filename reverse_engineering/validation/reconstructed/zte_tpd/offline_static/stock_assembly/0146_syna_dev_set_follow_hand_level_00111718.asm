
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ae90 <syna_dev_set_follow_hand_level>:
    ae90: d503233f     	paciasp
    ae94: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    ae98: f9000bf5     	str	x21, [sp, #0x10]
    ae9c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    aea0: 910003fd     	mov	x29, sp
    aea4: 2a0103f5     	mov	w21, w1
    aea8: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x967d
    aeac: 91000021     	add	x1, x1, #0x0
		000000000000aeac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x967d
    aeb0: 2a0203f3     	mov	w19, w2
    aeb4: aa0003f4     	mov	x20, x0
    aeb8: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aeb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9664
    aebc: 91000000     	add	x0, x0, #0x0
		000000000000aebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9664
    aec0: aa0103e2     	mov	x2, x1
    aec4: 94000000     	bl	0xaec4 <syna_dev_set_follow_hand_level+0x34>
		000000000000aec4:  R_AARCH64_CALL26	_printk
    aec8: b40002f4     	cbz	x20, 0xaf24 <syna_dev_set_follow_hand_level+0x94>
    aecc: 710006bf     	cmp	w21, #0x1
    aed0: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacae
    aed4: 91000000     	add	x0, x0, #0x0
		000000000000aed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacae
    aed8: 540002ad     	b.le	0xaf2c <syna_dev_set_follow_hand_level+0x9c>
    aedc: 71000abf     	cmp	w21, #0x2
    aee0: 54000440     	b.eq	0xaf68 <syna_dev_set_follow_hand_level+0xd8>
    aee4: 71000ebf     	cmp	w21, #0x3
    aee8: 540006e0     	b.eq	0xafc4 <syna_dev_set_follow_hand_level+0x134>
    aeec: 710012bf     	cmp	w21, #0x4
    aef0: 54000801     	b.ne	0xaff0 <syna_dev_set_follow_hand_level+0x160>
    aef4: b9460688     	ldr	w8, [x20, #0x604]
    aef8: b945fe89     	ldr	w9, [x20, #0x5fc]
    aefc: 52801f21     	mov	w1, #0xf9               // =249
    af00: f9400280     	ldr	x0, [x20]
    af04: 2a1303e3     	mov	w3, w19
    af08: 2a082128     	orr	w8, w9, w8, lsl #8
    af0c: 321a0102     	orr	w2, w8, #0x40
    af10: 94000000     	bl	0xaf10 <syna_dev_set_follow_hand_level+0x80>
		000000000000af10:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    af14: 37f80780     	tbnz	w0, #0x1f, 0xb004 <syna_dev_set_follow_hand_level+0x174>
    af18: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000af18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5ed
    af1c: 91000000     	add	x0, x0, #0x0
		000000000000af1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5ed
    af20: 14000034     	b	0xaff0 <syna_dev_set_follow_hand_level+0x160>
    af24: 128002a0     	mov	w0, #-0x16              // =-22
    af28: 14000037     	b	0xb004 <syna_dev_set_follow_hand_level+0x174>
    af2c: 34000375     	cbz	w21, 0xaf98 <syna_dev_set_follow_hand_level+0x108>
    af30: 710006bf     	cmp	w21, #0x1
    af34: 540005e1     	b.ne	0xaff0 <syna_dev_set_follow_hand_level+0x160>
    af38: b9460688     	ldr	w8, [x20, #0x604]
    af3c: b945fe89     	ldr	w9, [x20, #0x5fc]
    af40: 52801f21     	mov	w1, #0xf9               // =249
    af44: f9400280     	ldr	x0, [x20]
    af48: 2a1303e3     	mov	w3, w19
    af4c: 2a082128     	orr	w8, w9, w8, lsl #8
    af50: 321c0102     	orr	w2, w8, #0x10
    af54: 94000000     	bl	0xaf54 <syna_dev_set_follow_hand_level+0xc4>
		000000000000af54:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    af58: 37f80560     	tbnz	w0, #0x1f, 0xb004 <syna_dev_set_follow_hand_level+0x174>
    af5c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000af5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7504
    af60: 91000000     	add	x0, x0, #0x0
		000000000000af60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7504
    af64: 14000023     	b	0xaff0 <syna_dev_set_follow_hand_level+0x160>
    af68: b9460688     	ldr	w8, [x20, #0x604]
    af6c: b945fe89     	ldr	w9, [x20, #0x5fc]
    af70: 52801f21     	mov	w1, #0xf9               // =249
    af74: f9400280     	ldr	x0, [x20]
    af78: 2a1303e3     	mov	w3, w19
    af7c: 2a082128     	orr	w8, w9, w8, lsl #8
    af80: 321b0102     	orr	w2, w8, #0x20
    af84: 94000000     	bl	0xaf84 <syna_dev_set_follow_hand_level+0xf4>
		000000000000af84:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    af88: 37f803e0     	tbnz	w0, #0x1f, 0xb004 <syna_dev_set_follow_hand_level+0x174>
    af8c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000af8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f9a
    af90: 91000000     	add	x0, x0, #0x0
		000000000000af90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f9a
    af94: 14000017     	b	0xaff0 <syna_dev_set_follow_hand_level+0x160>
    af98: b9460688     	ldr	w8, [x20, #0x604]
    af9c: b945fe89     	ldr	w9, [x20, #0x5fc]
    afa0: 52801f21     	mov	w1, #0xf9               // =249
    afa4: f9400280     	ldr	x0, [x20]
    afa8: 2a1303e3     	mov	w3, w19
    afac: 2a082122     	orr	w2, w9, w8, lsl #8
    afb0: 94000000     	bl	0xafb0 <syna_dev_set_follow_hand_level+0x120>
		000000000000afb0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    afb4: 37f80280     	tbnz	w0, #0x1f, 0xb004 <syna_dev_set_follow_hand_level+0x174>
    afb8: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000afb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ec5
    afbc: 91000000     	add	x0, x0, #0x0
		000000000000afbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ec5
    afc0: 1400000c     	b	0xaff0 <syna_dev_set_follow_hand_level+0x160>
    afc4: b9460688     	ldr	w8, [x20, #0x604]
    afc8: b945fe89     	ldr	w9, [x20, #0x5fc]
    afcc: 52801f21     	mov	w1, #0xf9               // =249
    afd0: f9400280     	ldr	x0, [x20]
    afd4: 2a1303e3     	mov	w3, w19
    afd8: 2a082128     	orr	w8, w9, w8, lsl #8
    afdc: 321c0502     	orr	w2, w8, #0x30
    afe0: 94000000     	bl	0xafe0 <syna_dev_set_follow_hand_level+0x150>
		000000000000afe0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    afe4: 37f80100     	tbnz	w0, #0x1f, 0xb004 <syna_dev_set_follow_hand_level+0x174>
    afe8: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000afe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85be
    afec: 91000000     	add	x0, x0, #0x0
		000000000000afec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85be
    aff0: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x967d
    aff4: 91000021     	add	x1, x1, #0x0
		000000000000aff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x967d
    aff8: aa0103e2     	mov	x2, x1
    affc: 94000000     	bl	0xaffc <syna_dev_set_follow_hand_level+0x16c>
		000000000000affc:  R_AARCH64_CALL26	_printk
    b000: 2a1f03e0     	mov	w0, wzr
    b004: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b008: f9400bf5     	ldr	x21, [sp, #0x10]
    b00c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b010: d50323bf     	autiasp
    b014: d65f03c0     	ret
