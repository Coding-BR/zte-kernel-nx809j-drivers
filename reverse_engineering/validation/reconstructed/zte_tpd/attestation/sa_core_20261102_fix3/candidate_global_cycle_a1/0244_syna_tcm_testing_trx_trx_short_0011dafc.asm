
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008ea8 <syna_tcm_testing_trx_trx_short>:
    8ea8: d503233f     	paciasp
    8eac: d10203ff     	sub	sp, sp, #0x80
    8eb0: a9057bfd     	stp	x29, x30, [sp, #0x50]
    8eb4: f90033f5     	str	x21, [sp, #0x60]
    8eb8: a9074ff4     	stp	x20, x19, [sp, #0x70]
    8ebc: 910143fd     	add	x29, sp, #0x50
    8ec0: d5384108     	mrs	x8, SP_EL0
    8ec4: f9438908     	ldr	x8, [x8, #0x710]
    8ec8: f81f83a8     	stur	x8, [x29, #-0x8]
    8ecc: 12801408     	mov	w8, #-0xa1              // =-161
    8ed0: b4000040     	cbz	x0, 0x8ed8 <syna_tcm_testing_trx_trx_short+0x30>
    8ed4: b50001a1     	cbnz	x1, 0x8f08 <syna_tcm_testing_trx_trx_short+0x60>
    8ed8: d5384109     	mrs	x9, SP_EL0
    8edc: f9438929     	ldr	x9, [x9, #0x710]
    8ee0: f85f83aa     	ldur	x10, [x29, #-0x8]
    8ee4: eb0a013f     	cmp	x9, x10
    8ee8: 54000d21     	b.ne	0x908c <syna_tcm_testing_trx_trx_short+0x1e4>
    8eec: 2a0803e0     	mov	w0, w8
    8ef0: a9474ff4     	ldp	x20, x19, [sp, #0x70]
    8ef4: f94033f5     	ldr	x21, [sp, #0x60]
    8ef8: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    8efc: 910203ff     	add	sp, sp, #0x80
    8f00: d50323bf     	autiasp
    8f04: d65f03c0     	ret
    8f08: 910003e8     	mov	x8, sp
    8f0c: 2a0203f5     	mov	w21, w2
    8f10: aa0103f4     	mov	x20, x1
    8f14: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    8f18: 91000021     	add	x1, x1, #0x0
		0000000000008f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    8f1c: 90000002     	adrp	x2, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008f1c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x12c1
    8f20: 91000042     	add	x2, x2, #0x0
		0000000000008f20:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x12c1
    8f24: aa0003f3     	mov	x19, x0
    8f28: 91004100     	add	x0, x8, #0x10
    8f2c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    8f30: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    8f34: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    8f38: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    8f3c: f90003ff     	str	xzr, [sp]
    8f40: 94000000     	bl	0x8f40 <syna_tcm_testing_trx_trx_short+0x98>
		0000000000008f40:  R_AARCH64_CALL26	__mutex_init
    8f44: 910003e2     	mov	x2, sp
    8f48: aa1303e0     	mov	x0, x19
    8f4c: 52800021     	mov	w1, #0x1                // =1
    8f50: 2a1f03e3     	mov	w3, wzr
    8f54: 94000000     	bl	0x8f54 <syna_tcm_testing_trx_trx_short+0xac>
		0000000000008f54:  R_AARCH64_CALL26	syna_tcm_run_production_test
    8f58: 36f80180     	tbz	w0, #0x1f, 0x8f88 <syna_tcm_testing_trx_trx_short+0xe0>
    8f5c: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa374
    8f60: 91000000     	add	x0, x0, #0x0
		0000000000008f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa374
    8f64: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ae
    8f68: 91000021     	add	x1, x1, #0x0
		0000000000008f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ae
    8f6c: 52800022     	mov	w2, #0x1                // =1
    8f70: 94000000     	bl	0x8f70 <syna_tcm_testing_trx_trx_short+0xc8>
		0000000000008f70:  R_AARCH64_CALL26	_printk
    8f74: 3900429f     	strb	wzr, [x20, #0x10]
    8f78: 12801454     	mov	w20, #-0xa3             // =-163
    8f7c: 90000002     	adrp	x2, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2278
    8f80: 91000042     	add	x2, x2, #0x0
		0000000000008f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2278
    8f84: 14000027     	b	0x9020 <syna_tcm_testing_trx_trx_short+0x178>
    8f88: f9406e88     	ldr	x8, [x20, #0xd8]
    8f8c: aa1403e9     	mov	x9, x20
    8f90: b40000e8     	cbz	x8, 0x8fac <syna_tcm_testing_trx_trx_short+0x104>
    8f94: 910003e1     	mov	x1, sp
    8f98: 2a0003f3     	mov	w19, w0
    8f9c: aa0803e0     	mov	x0, x8
    8fa0: 9400003c     	bl	0x9090 <_inline_copy_from_user>
		0000000000008fa0:  R_AARCH64_CALL26	syna_tcm_buf_copy
    8fa4: aa1403e9     	mov	x9, x20
    8fa8: 2a1303e0     	mov	w0, w19
    8fac: 360000f5     	tbz	w21, #0x0, 0x8fc8 <syna_tcm_testing_trx_trx_short+0x120>
    8fb0: 52800028     	mov	w8, #0x1                // =1
    8fb4: 2a0003f4     	mov	w20, w0
    8fb8: 90000002     	adrp	x2, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x793e
    8fbc: 91000042     	add	x2, x2, #0x0
		0000000000008fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x793e
    8fc0: 39004128     	strb	w8, [x9, #0x10]
    8fc4: 14000017     	b	0x9020 <syna_tcm_testing_trx_trx_short+0x178>
    8fc8: f9401d2a     	ldr	x10, [x9, #0x38]
    8fcc: b500008a     	cbnz	x10, 0x8fdc <syna_tcm_testing_trx_trx_short+0x134>
    8fd0: 3900413f     	strb	wzr, [x9, #0x10]
    8fd4: 12801434     	mov	w20, #-0xa2             // =-162
    8fd8: 17ffffe9     	b	0x8f7c <syna_tcm_testing_trx_trx_short+0xd4>
    8fdc: f94003e8     	ldr	x8, [sp]
    8fe0: b9400fe1     	ldr	w1, [sp, #0xc]
    8fe4: 2a0003f4     	mov	w20, w0
    8fe8: f9400142     	ldr	x2, [x10]
    8fec: b9400943     	ldr	w3, [x10, #0x8]
    8ff0: aa0903f3     	mov	x19, x9
    8ff4: aa0803e0     	mov	x0, x8
    8ff8: 940000c6     	bl	0x9310 <get_tp_algo_item_id+0xac>
		0000000000008ff8:  R_AARCH64_CALL26	syna_tcm_testing_check_array_data
    8ffc: 12801428     	mov	w8, #-0xa2              // =-162
    9000: 7200000a     	ands	w10, w0, #0x1
    9004: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2278
    9008: 91000129     	add	x9, x9, #0x0
		0000000000009008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2278
    900c: 1a881294     	csel	w20, w20, w8, ne
    9010: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x793e
    9014: 91000108     	add	x8, x8, #0x0
		0000000000009014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x793e
    9018: 3900426a     	strb	w10, [x19, #0x10]
    901c: 9a891102     	csel	x2, x8, x9, ne
    9020: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6a
    9024: 91000000     	add	x0, x0, #0x0
		0000000000009024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6a
    9028: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ae
    902c: 91000021     	add	x1, x1, #0x0
		000000000000902c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ae
    9030: 94000000     	bl	0x9030 <syna_tcm_testing_trx_trx_short+0x188>
		0000000000009030:  R_AARCH64_CALL26	_printk
    9034: 394103e2     	ldrb	w2, [sp, #0x40]
    9038: 35000122     	cbnz	w2, 0x905c <syna_tcm_testing_trx_trx_short+0x1b4>
    903c: f94003f3     	ldr	x19, [sp]
    9040: 94000000     	bl	0x9040 <syna_tcm_testing_trx_trx_short+0x198>
		0000000000009040:  R_AARCH64_CALL26	syna_request_managed_device
    9044: b4000180     	cbz	x0, 0x9074 <syna_tcm_testing_trx_trx_short+0x1cc>
    9048: b4000073     	cbz	x19, 0x9054 <syna_tcm_testing_trx_trx_short+0x1ac>
    904c: aa1303e1     	mov	x1, x19
    9050: 94000000     	bl	0x9050 <syna_tcm_testing_trx_trx_short+0x1a8>
		0000000000009050:  R_AARCH64_CALL26	devm_kfree
    9054: 2a1403e8     	mov	w8, w20
    9058: 17ffffa0     	b	0x8ed8 <syna_tcm_testing_trx_trx_short+0x30>
    905c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000905c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    9060: 91000000     	add	x0, x0, #0x0
		0000000000009060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    9064: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    9068: 91000021     	add	x1, x1, #0x0
		0000000000009068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    906c: 94000000     	bl	0x906c <syna_tcm_testing_trx_trx_short+0x1c4>
		000000000000906c:  R_AARCH64_CALL26	_printk
    9070: 17fffff3     	b	0x903c <syna_tcm_testing_trx_trx_short+0x194>
    9074: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    9078: 91000000     	add	x0, x0, #0x0
		0000000000009078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    907c: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000907c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    9080: 91000021     	add	x1, x1, #0x0
		0000000000009080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    9084: 94000000     	bl	0x9084 <syna_tcm_testing_trx_trx_short+0x1dc>
		0000000000009084:  R_AARCH64_CALL26	_printk
    9088: 17fffff3     	b	0x9054 <syna_tcm_testing_trx_trx_short+0x1ac>
    908c: 94000000     	bl	0x908c <syna_tcm_testing_trx_trx_short+0x1e4>
		000000000000908c:  R_AARCH64_CALL26	__stack_chk_fail
