
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ab74 <syna_dev_do_reflash>:
    ab74: d503233f     	paciasp
    ab78: d100c3ff     	sub	sp, sp, #0x30
    ab7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ab80: a9024ff4     	stp	x20, x19, [sp, #0x20]
    ab84: 910043fd     	add	x29, sp, #0x10
    ab88: d5384108     	mrs	x8, SP_EL0
    ab8c: f9438908     	ldr	x8, [x8, #0x710]
    ab90: f90007e8     	str	x8, [sp, #0x8]
    ab94: f90003ff     	str	xzr, [sp]
    ab98: b5000180     	cbnz	x0, 0xabc8 <syna_dev_do_reflash+0x54>
    ab9c: 128002a0     	mov	w0, #-0x16              // =-22
    aba0: d5384108     	mrs	x8, SP_EL0
    aba4: f9438908     	ldr	x8, [x8, #0x710]
    aba8: f94007e9     	ldr	x9, [sp, #0x8]
    abac: eb09011f     	cmp	x8, x9
    abb0: 54000621     	b.ne	0xac74 <syna_dev_do_reflash+0x100>
    abb4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    abb8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    abbc: 9100c3ff     	add	sp, sp, #0x30
    abc0: d50323bf     	autiasp
    abc4: d65f03c0     	ret
    abc8: a9402013     	ldp	x19, x8, [x0]
    abcc: 2a0103f4     	mov	w20, w1
    abd0: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000abd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b5e
    abd4: 91000021     	add	x1, x1, #0x0
		000000000000abd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b5e
    abd8: 910003e0     	mov	x0, sp
    abdc: f9403902     	ldr	x2, [x8, #0x70]
    abe0: 94000000     	bl	0xabe0 <syna_dev_do_reflash+0x6c>
		000000000000abe0:  R_AARCH64_CALL26	request_firmware
    abe4: 36f80180     	tbz	w0, #0x1f, 0xac14 <syna_dev_do_reflash+0xa0>
    abe8: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000abe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61ac
    abec: 91000108     	add	x8, x8, #0x0
		000000000000abec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61ac
    abf0: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000abf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d9
    abf4: 91000021     	add	x1, x1, #0x0
		000000000000abf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d9
    abf8: 90000002     	adrp	x2, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000abf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b5e
    abfc: 91000042     	add	x2, x2, #0x0
		000000000000abfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b5e
    ac00: 2a0003f3     	mov	w19, w0
    ac04: aa0803e0     	mov	x0, x8
    ac08: 94000000     	bl	0xac08 <syna_dev_do_reflash+0x94>
		000000000000ac08:  R_AARCH64_CALL26	_printk
    ac0c: 2a1303e0     	mov	w0, w19
    ac10: 17ffffe4     	b	0xaba0 <syna_dev_do_reflash+0x2c>
    ac14: f94003e8     	ldr	x8, [sp]
    ac18: 12000284     	and	w4, w20, #0x1
    ac1c: aa1303e0     	mov	x0, x19
    ac20: 2a1f03e3     	mov	w3, wzr
    ac24: f9400501     	ldr	x1, [x8, #0x8]
    ac28: b9400102     	ldr	w2, [x8]
    ac2c: 94000000     	bl	0xac2c <syna_dev_do_reflash+0xb8>
		000000000000ac2c:  R_AARCH64_CALL26	syna_tcm_do_fw_update
    ac30: 2a0003f4     	mov	w20, w0
    ac34: 36f800c0     	tbz	w0, #0x1f, 0xac4c <syna_dev_do_reflash+0xd8>
    ac38: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ac38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf5
    ac3c: 91000000     	add	x0, x0, #0x0
		000000000000ac3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf5
    ac40: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ac40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d9
    ac44: 91000021     	add	x1, x1, #0x0
		000000000000ac44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d9
    ac48: 94000000     	bl	0xac48 <syna_dev_do_reflash+0xd4>
		000000000000ac48:  R_AARCH64_CALL26	_printk
    ac4c: 39402662     	ldrb	w2, [x19, #0x9]
    ac50: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ac50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31a6
    ac54: 91000000     	add	x0, x0, #0x0
		000000000000ac54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31a6
    ac58: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ac58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d9
    ac5c: 91000021     	add	x1, x1, #0x0
		000000000000ac5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d9
    ac60: 94000000     	bl	0xac60 <syna_dev_do_reflash+0xec>
		000000000000ac60:  R_AARCH64_CALL26	_printk
    ac64: f94003e0     	ldr	x0, [sp]
    ac68: 94000000     	bl	0xac68 <syna_dev_do_reflash+0xf4>
		000000000000ac68:  R_AARCH64_CALL26	release_firmware
    ac6c: 2a1403e0     	mov	w0, w20
    ac70: 17ffffcc     	b	0xaba0 <syna_dev_do_reflash+0x2c>
    ac74: 94000000     	bl	0xac74 <syna_dev_do_reflash+0x100>
		000000000000ac74:  R_AARCH64_CALL26	__stack_chk_fail
