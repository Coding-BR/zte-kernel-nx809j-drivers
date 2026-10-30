
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000acf0 <syna_dev_set_sensibility_level>:
    acf0: d503233f     	paciasp
    acf4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    acf8: f9000bf5     	str	x21, [sp, #0x10]
    acfc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    ad00: 910003fd     	mov	x29, sp
    ad04: 2a0103f5     	mov	w21, w1
    ad08: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ad08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6987
    ad0c: 91000021     	add	x1, x1, #0x0
		000000000000ad0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6987
    ad10: 2a0203f3     	mov	w19, w2
    ad14: aa0003f4     	mov	x20, x0
    ad18: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ad18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9664
    ad1c: 91000000     	add	x0, x0, #0x0
		000000000000ad1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9664
    ad20: aa0103e2     	mov	x2, x1
    ad24: 94000000     	bl	0xad24 <syna_dev_set_sensibility_level+0x34>
		000000000000ad24:  R_AARCH64_CALL26	_printk
    ad28: b4000314     	cbz	x20, 0xad88 <syna_dev_set_sensibility_level+0x98>
    ad2c: 710006bf     	cmp	w21, #0x1
    ad30: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ad30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacae
    ad34: 91000000     	add	x0, x0, #0x0
		000000000000ad34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacae
    ad38: 540002cd     	b.le	0xad90 <syna_dev_set_sensibility_level+0xa0>
    ad3c: 71000abf     	cmp	w21, #0x2
    ad40: 54000480     	b.eq	0xadd0 <syna_dev_set_sensibility_level+0xe0>
    ad44: 71000ebf     	cmp	w21, #0x3
    ad48: 54000760     	b.eq	0xae34 <syna_dev_set_sensibility_level+0x144>
    ad4c: 710012bf     	cmp	w21, #0x4
    ad50: 540008a1     	b.ne	0xae64 <syna_dev_set_sensibility_level+0x174>
    ad54: b9460288     	ldr	w8, [x20, #0x600]
    ad58: b9460689     	ldr	w9, [x20, #0x604]
    ad5c: 52801f21     	mov	w1, #0xf9               // =249
    ad60: f9400280     	ldr	x0, [x20]
    ad64: 2a1303e3     	mov	w3, w19
    ad68: 531c6d08     	lsl	w8, w8, #4
    ad6c: 2a092108     	orr	w8, w8, w9, lsl #8
    ad70: 321e0102     	orr	w2, w8, #0x4
    ad74: 94000000     	bl	0xad74 <syna_dev_set_sensibility_level+0x84>
		000000000000ad74:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ad78: 37f80800     	tbnz	w0, #0x1f, 0xae78 <syna_dev_set_sensibility_level+0x188>
    ad7c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ad7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4524
    ad80: 91000000     	add	x0, x0, #0x0
		000000000000ad80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4524
    ad84: 14000038     	b	0xae64 <syna_dev_set_sensibility_level+0x174>
    ad88: 128002a0     	mov	w0, #-0x16              // =-22
    ad8c: 1400003b     	b	0xae78 <syna_dev_set_sensibility_level+0x188>
    ad90: 340003b5     	cbz	w21, 0xae04 <syna_dev_set_sensibility_level+0x114>
    ad94: 710006bf     	cmp	w21, #0x1
    ad98: 54000661     	b.ne	0xae64 <syna_dev_set_sensibility_level+0x174>
    ad9c: b9460288     	ldr	w8, [x20, #0x600]
    ada0: b9460689     	ldr	w9, [x20, #0x604]
    ada4: 52801f21     	mov	w1, #0xf9               // =249
    ada8: f9400280     	ldr	x0, [x20]
    adac: 2a1303e3     	mov	w3, w19
    adb0: 531c6d08     	lsl	w8, w8, #4
    adb4: 2a092108     	orr	w8, w8, w9, lsl #8
    adb8: 32000102     	orr	w2, w8, #0x1
    adbc: 94000000     	bl	0xadbc <syna_dev_set_sensibility_level+0xcc>
		000000000000adbc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    adc0: 37f805c0     	tbnz	w0, #0x1f, 0xae78 <syna_dev_set_sensibility_level+0x188>
    adc4: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000adc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6de9
    adc8: 91000000     	add	x0, x0, #0x0
		000000000000adc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6de9
    adcc: 14000026     	b	0xae64 <syna_dev_set_sensibility_level+0x174>
    add0: b9460288     	ldr	w8, [x20, #0x600]
    add4: b9460689     	ldr	w9, [x20, #0x604]
    add8: 52801f21     	mov	w1, #0xf9               // =249
    addc: f9400280     	ldr	x0, [x20]
    ade0: 2a1303e3     	mov	w3, w19
    ade4: 531c6d08     	lsl	w8, w8, #4
    ade8: 2a092108     	orr	w8, w8, w9, lsl #8
    adec: 321f0102     	orr	w2, w8, #0x2
    adf0: 94000000     	bl	0xadf0 <syna_dev_set_sensibility_level+0x100>
		000000000000adf0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    adf4: 37f80420     	tbnz	w0, #0x1f, 0xae78 <syna_dev_set_sensibility_level+0x188>
    adf8: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000adf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1877
    adfc: 91000000     	add	x0, x0, #0x0
		000000000000adfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1877
    ae00: 14000019     	b	0xae64 <syna_dev_set_sensibility_level+0x174>
    ae04: b9460288     	ldr	w8, [x20, #0x600]
    ae08: b9460689     	ldr	w9, [x20, #0x604]
    ae0c: 52801f21     	mov	w1, #0xf9               // =249
    ae10: f9400280     	ldr	x0, [x20]
    ae14: 2a1303e3     	mov	w3, w19
    ae18: 531c6d08     	lsl	w8, w8, #4
    ae1c: 2a092102     	orr	w2, w8, w9, lsl #8
    ae20: 94000000     	bl	0xae20 <syna_dev_set_sensibility_level+0x130>
		000000000000ae20:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ae24: 37f802a0     	tbnz	w0, #0x1f, 0xae78 <syna_dev_set_sensibility_level+0x188>
    ae28: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ae28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d1
    ae2c: 91000000     	add	x0, x0, #0x0
		000000000000ae2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d1
    ae30: 1400000d     	b	0xae64 <syna_dev_set_sensibility_level+0x174>
    ae34: b9460288     	ldr	w8, [x20, #0x600]
    ae38: b9460689     	ldr	w9, [x20, #0x604]
    ae3c: 52801f21     	mov	w1, #0xf9               // =249
    ae40: f9400280     	ldr	x0, [x20]
    ae44: 2a1303e3     	mov	w3, w19
    ae48: 531c6d08     	lsl	w8, w8, #4
    ae4c: 2a092108     	orr	w8, w8, w9, lsl #8
    ae50: 32000502     	orr	w2, w8, #0x3
    ae54: 94000000     	bl	0xae54 <syna_dev_set_sensibility_level+0x164>
		000000000000ae54:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ae58: 37f80100     	tbnz	w0, #0x1f, 0xae78 <syna_dev_set_sensibility_level+0x188>
    ae5c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ae5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a7
    ae60: 91000000     	add	x0, x0, #0x0
		000000000000ae60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a7
    ae64: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ae64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6987
    ae68: 91000021     	add	x1, x1, #0x0
		000000000000ae68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6987
    ae6c: aa0103e2     	mov	x2, x1
    ae70: 94000000     	bl	0xae70 <syna_dev_set_sensibility_level+0x180>
		000000000000ae70:  R_AARCH64_CALL26	_printk
    ae74: 2a1f03e0     	mov	w0, wzr
    ae78: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ae7c: f9400bf5     	ldr	x21, [sp, #0x10]
    ae80: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    ae84: d50323bf     	autiasp
    ae88: d65f03c0     	ret
