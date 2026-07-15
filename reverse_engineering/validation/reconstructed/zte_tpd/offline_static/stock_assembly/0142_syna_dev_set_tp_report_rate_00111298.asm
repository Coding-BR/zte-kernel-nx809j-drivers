
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aa10 <syna_dev_set_tp_report_rate>:
    aa10: d503233f     	paciasp
    aa14: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    aa18: f9000bf5     	str	x21, [sp, #0x10]
    aa1c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    aa20: 910003fd     	mov	x29, sp
    aa24: 2a0103f5     	mov	w21, w1
    aa28: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aa28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696b
    aa2c: 91000021     	add	x1, x1, #0x0
		000000000000aa2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696b
    aa30: 2a0203f3     	mov	w19, w2
    aa34: aa0003f4     	mov	x20, x0
    aa38: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aa38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9664
    aa3c: 91000000     	add	x0, x0, #0x0
		000000000000aa3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9664
    aa40: aa0103e2     	mov	x2, x1
    aa44: 94000000     	bl	0xaa44 <syna_dev_set_tp_report_rate+0x34>
		000000000000aa44:  R_AARCH64_CALL26	_printk
    aa48: b4000254     	cbz	x20, 0xaa90 <syna_dev_set_tp_report_rate+0x80>
    aa4c: 710006bf     	cmp	w21, #0x1
    aa50: 5400024d     	b.le	0xaa98 <syna_dev_set_tp_report_rate+0x88>
    aa54: 71000abf     	cmp	w21, #0x2
    aa58: 54000380     	b.eq	0xaac8 <syna_dev_set_tp_report_rate+0xb8>
    aa5c: 71000ebf     	cmp	w21, #0x3
    aa60: 54000580     	b.eq	0xab10 <syna_dev_set_tp_report_rate+0x100>
    aa64: 710012bf     	cmp	w21, #0x4
    aa68: 54000761     	b.ne	0xab54 <syna_dev_set_tp_report_rate+0x144>
    aa6c: f9400280     	ldr	x0, [x20]
    aa70: 52801cc1     	mov	w1, #0xe6               // =230
    aa74: 52800022     	mov	w2, #0x1                // =1
    aa78: 2a1303e3     	mov	w3, w19
    aa7c: 94000000     	bl	0xaa7c <syna_dev_set_tp_report_rate+0x6c>
		000000000000aa7c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    aa80: 37f80600     	tbnz	w0, #0x1f, 0xab40 <syna_dev_set_tp_report_rate+0x130>
    aa84: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aa84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dca
    aa88: 91000000     	add	x0, x0, #0x0
		000000000000aa88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dca
    aa8c: 14000029     	b	0xab30 <syna_dev_set_tp_report_rate+0x120>
    aa90: 128002a0     	mov	w0, #-0x16              // =-22
    aa94: 1400002b     	b	0xab40 <syna_dev_set_tp_report_rate+0x130>
    aa98: 340002b5     	cbz	w21, 0xaaec <syna_dev_set_tp_report_rate+0xdc>
    aa9c: 710006bf     	cmp	w21, #0x1
    aaa0: 540005a1     	b.ne	0xab54 <syna_dev_set_tp_report_rate+0x144>
    aaa4: f9400280     	ldr	x0, [x20]
    aaa8: 52801cc1     	mov	w1, #0xe6               // =230
    aaac: 528000a2     	mov	w2, #0x5                // =5
    aab0: 2a1303e3     	mov	w3, w19
    aab4: 94000000     	bl	0xaab4 <syna_dev_set_tp_report_rate+0xa4>
		000000000000aab4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    aab8: 37f80440     	tbnz	w0, #0x1f, 0xab40 <syna_dev_set_tp_report_rate+0x130>
    aabc: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aabc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x859f
    aac0: 91000000     	add	x0, x0, #0x0
		000000000000aac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x859f
    aac4: 1400001b     	b	0xab30 <syna_dev_set_tp_report_rate+0x120>
    aac8: f9400280     	ldr	x0, [x20]
    aacc: 52801cc1     	mov	w1, #0xe6               // =230
    aad0: 52800082     	mov	w2, #0x4                // =4
    aad4: 2a1303e3     	mov	w3, w19
    aad8: 94000000     	bl	0xaad8 <syna_dev_set_tp_report_rate+0xc8>
		000000000000aad8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    aadc: 37f80320     	tbnz	w0, #0x1f, 0xab40 <syna_dev_set_tp_report_rate+0x130>
    aae0: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b3f
    aae4: 91000000     	add	x0, x0, #0x0
		000000000000aae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b3f
    aae8: 14000012     	b	0xab30 <syna_dev_set_tp_report_rate+0x120>
    aaec: f9400280     	ldr	x0, [x20]
    aaf0: 52801cc1     	mov	w1, #0xe6               // =230
    aaf4: 2a1f03e2     	mov	w2, wzr
    aaf8: 2a1303e3     	mov	w3, w19
    aafc: 94000000     	bl	0xaafc <syna_dev_set_tp_report_rate+0xec>
		000000000000aafc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ab00: 37f80200     	tbnz	w0, #0x1f, 0xab40 <syna_dev_set_tp_report_rate+0x130>
    ab04: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ab04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f81
    ab08: 91000000     	add	x0, x0, #0x0
		000000000000ab08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f81
    ab0c: 14000009     	b	0xab30 <syna_dev_set_tp_report_rate+0x120>
    ab10: f9400280     	ldr	x0, [x20]
    ab14: 52801cc1     	mov	w1, #0xe6               // =230
    ab18: 52800062     	mov	w2, #0x3                // =3
    ab1c: 2a1303e3     	mov	w3, w19
    ab20: 94000000     	bl	0xab20 <syna_dev_set_tp_report_rate+0x110>
		000000000000ab20:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ab24: 37f800e0     	tbnz	w0, #0x1f, 0xab40 <syna_dev_set_tp_report_rate+0x130>
    ab28: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ab28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b2
    ab2c: 91000000     	add	x0, x0, #0x0
		000000000000ab2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b2
    ab30: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ab30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696b
    ab34: 91000021     	add	x1, x1, #0x0
		000000000000ab34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696b
    ab38: 94000000     	bl	0xab38 <syna_dev_set_tp_report_rate+0x128>
		000000000000ab38:  R_AARCH64_CALL26	_printk
    ab3c: 2a1f03e0     	mov	w0, wzr
    ab40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ab44: f9400bf5     	ldr	x21, [sp, #0x10]
    ab48: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    ab4c: d50323bf     	autiasp
    ab50: d65f03c0     	ret
    ab54: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ab54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696b
    ab58: 91000021     	add	x1, x1, #0x0
		000000000000ab58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696b
    ab5c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ab5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacae
    ab60: 91000000     	add	x0, x0, #0x0
		000000000000ab60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacae
    ab64: aa0103e2     	mov	x2, x1
    ab68: 94000000     	bl	0xab68 <syna_dev_set_tp_report_rate+0x158>
		000000000000ab68:  R_AARCH64_CALL26	_printk
    ab6c: 17fffff4     	b	0xab3c <syna_dev_set_tp_report_rate+0x12c>
