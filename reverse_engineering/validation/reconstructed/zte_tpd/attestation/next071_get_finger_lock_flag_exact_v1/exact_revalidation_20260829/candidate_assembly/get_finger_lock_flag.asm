
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009190 <get_finger_lock_flag>:
    9190: d503233f     	paciasp
    9194: d10143ff     	sub	sp, sp, #0x50
    9198: a9027bfd     	stp	x29, x30, [sp, #0x20]
    919c: a90357f6     	stp	x22, x21, [sp, #0x30]
    91a0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    91a4: 910083fd     	add	x29, sp, #0x20
    91a8: d5384108     	mrs	x8, SP_EL0
    91ac: aa1f03e0     	mov	x0, xzr
    91b0: f9438908     	ldr	x8, [x8, #0x710]
    91b4: f81f83a8     	stur	x8, [x29, #-0x8]
    91b8: f9400068     	ldr	x8, [x3]
    91bc: 790023ff     	strh	wzr, [sp, #0x10]
    91c0: f90007ff     	str	xzr, [sp, #0x8]
    91c4: b4000188     	cbz	x8, 0x91f4 <get_finger_lock_flag+0x64>
    91c8: d5384108     	mrs	x8, SP_EL0
    91cc: f9438908     	ldr	x8, [x8, #0x710]
    91d0: f85f83a9     	ldur	x9, [x29, #-0x8]
    91d4: eb09011f     	cmp	x8, x9
    91d8: 54000421     	b.ne	0x925c <get_finger_lock_flag+0xcc>
    91dc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    91e0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    91e4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    91e8: 910143ff     	add	sp, sp, #0x50
    91ec: d50323bf     	autiasp
    91f0: d65f03c0     	ret
    91f4: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000091f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    91f8: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000091f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bed5
    91fc: 91000129     	add	x9, x9, #0x0
		00000000000091fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bed5
    9200: f9400116     	ldr	x22, [x8]
		0000000000009200:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9204: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
    9208: 91000000     	add	x0, x0, #0x0
		0000000000009208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
    920c: aa0103f3     	mov	x19, x1
    9210: aa0903e1     	mov	x1, x9
    9214: aa0203f4     	mov	x20, x2
    9218: b94476c8     	ldr	w8, [x22, #0x474]
    921c: aa0303f5     	mov	x21, x3
    9220: 2a0803e2     	mov	w2, w8
    9224: 94000000     	bl	0x9224 <get_finger_lock_flag+0x94>
		0000000000009224:  R_AARCH64_CALL26	_printk
    9228: b94476c3     	ldr	w3, [x22, #0x474]
    922c: 90000002     	adrp	x2, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000922c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
    9230: 91000042     	add	x2, x2, #0x0
		0000000000009230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
    9234: 910023e0     	add	x0, sp, #0x8
    9238: 52800141     	mov	w1, #0xa                // =10
    923c: 94000000     	bl	0x923c <get_finger_lock_flag+0xac>
		000000000000923c:  R_AARCH64_CALL26	snprintf
    9240: 93407c04     	sxtw	x4, w0
    9244: 910023e3     	add	x3, sp, #0x8
    9248: aa1403e1     	mov	x1, x20
    924c: aa1303e0     	mov	x0, x19
    9250: aa1503e2     	mov	x2, x21
    9254: 94000000     	bl	0x9254 <get_finger_lock_flag+0xc4>
		0000000000009254:  R_AARCH64_CALL26	simple_read_from_buffer
    9258: 17ffffdc     	b	0x91c8 <get_finger_lock_flag+0x38>
    925c: 94000000     	bl	0x925c <get_finger_lock_flag+0xcc>
		000000000000925c:  R_AARCH64_CALL26	__stack_chk_fail
