
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f9c <syna_dev_free_input_events>:
    9f9c: d503233f     	paciasp
    9fa0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9fa4: f9000bf5     	str	x21, [sp, #0x10]
    9fa8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9fac: 910003fd     	mov	x29, sp
    9fb0: f941d814     	ldr	x20, [x0, #0x3b0]
    9fb4: b4000674     	cbz	x20, 0xa080 <syna_dev_free_input_events+0xe4>
    9fb8: aa0003f3     	mov	x19, x0
    9fbc: 9109e000     	add	x0, x0, #0x278
    9fc0: 94000000     	bl	0x9fc0 <syna_dev_free_input_events+0x24>
		0000000000009fc0:  R_AARCH64_CALL26	mutex_lock
    9fc4: 2a1f03f5     	mov	w21, wzr
    9fc8: aa1403e0     	mov	x0, x20
    9fcc: 52800061     	mov	w1, #0x3                // =3
    9fd0: 528005e2     	mov	w2, #0x2f               // =47
    9fd4: 2a1503e3     	mov	w3, w21
    9fd8: 94000000     	bl	0x9fd8 <syna_dev_free_input_events+0x3c>
		0000000000009fd8:  R_AARCH64_CALL26	input_event
    9fdc: aa1403e0     	mov	x0, x20
    9fe0: 2a1f03e1     	mov	w1, wzr
    9fe4: 2a1f03e2     	mov	w2, wzr
    9fe8: 94000000     	bl	0x9fe8 <syna_dev_free_input_events+0x4c>
		0000000000009fe8:  R_AARCH64_CALL26	input_mt_report_slot_state
    9fec: aa1403e0     	mov	x0, x20
    9ff0: 2a1503e1     	mov	w1, w21
    9ff4: 94000000     	bl	0x9ff4 <syna_dev_free_input_events+0x58>
		0000000000009ff4:  R_AARCH64_CALL26	tpd_touch_release
    9ff8: 2a1f03e0     	mov	w0, wzr
    9ffc: 12800001     	mov	w1, #-0x1               // =-1
    a000: 12800002     	mov	w2, #-0x1               // =-1
    a004: 2a1503e3     	mov	w3, w21
    a008: 94000000     	bl	0xa008 <syna_dev_free_input_events+0x6c>
		000000000000a008:  R_AARCH64_CALL26	one_key_report
    a00c: 110006b5     	add	w21, w21, #0x1
    a010: 71002abf     	cmp	w21, #0xa
    a014: 54fffda1     	b.ne	0x9fc8 <syna_dev_free_input_events+0x2c>
    a018: aa1403e0     	mov	x0, x20
    a01c: 52800021     	mov	w1, #0x1                // =1
    a020: 52802942     	mov	w2, #0x14a              // =330
    a024: 2a1f03e3     	mov	w3, wzr
    a028: 52800035     	mov	w21, #0x1               // =1
    a02c: 94000000     	bl	0xa02c <syna_dev_free_input_events+0x90>
		000000000000a02c:  R_AARCH64_CALL26	input_event
    a030: aa1403e0     	mov	x0, x20
    a034: 52800021     	mov	w1, #0x1                // =1
    a038: 528028a2     	mov	w2, #0x145              // =325
    a03c: 2a1f03e3     	mov	w3, wzr
    a040: 94000000     	bl	0xa040 <syna_dev_free_input_events+0xa4>
		000000000000a040:  R_AARCH64_CALL26	input_event
    a044: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a044:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    a048: 91000108     	add	x8, x8, #0x0
		000000000000a048:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    a04c: 39400109     	ldrb	w9, [x8]
    a050: 39400508     	ldrb	w8, [x8, #0x1]
    a054: 2a090108     	orr	w8, w8, w9
    a058: 350001e8     	cbnz	w8, 0xa094 <syna_dev_free_input_events+0xf8>
    a05c: 2a1f03e0     	mov	w0, wzr
    a060: 94000000     	bl	0xa060 <syna_dev_free_input_events+0xc4>
		000000000000a060:  R_AARCH64_CALL26	report_ufp_uevent
    a064: aa1403e0     	mov	x0, x20
    a068: 2a1f03e1     	mov	w1, wzr
    a06c: 2a1f03e2     	mov	w2, wzr
    a070: 2a1f03e3     	mov	w3, wzr
    a074: 94000000     	bl	0xa074 <syna_dev_free_input_events+0xd8>
		000000000000a074:  R_AARCH64_CALL26	input_event
    a078: 9109e260     	add	x0, x19, #0x278
    a07c: 94000000     	bl	0xa07c <syna_dev_free_input_events+0xe0>
		000000000000a07c:  R_AARCH64_CALL26	mutex_unlock
    a080: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a084: f9400bf5     	ldr	x21, [sp, #0x10]
    a088: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a08c: d50323bf     	autiasp
    a090: d65f03c0     	ret
    a094: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a094:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
    a098: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b38c
    a09c: 91000000     	add	x0, x0, #0x0
		000000000000a09c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b38c
    a0a0: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a0a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf24
    a0a4: 91000021     	add	x1, x1, #0x0
		000000000000a0a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf24
    a0a8: 39000115     	strb	w21, [x8]
		000000000000a0a8:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    a0ac: 94000000     	bl	0xa0ac <syna_dev_free_input_events+0x110>
		000000000000a0ac:  R_AARCH64_CALL26	_printk
    a0b0: 17ffffeb     	b	0xa05c <syna_dev_free_input_events+0xc0>
