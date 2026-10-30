
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013b58 <zlog_register_work_init>:
   13b58: d503233f     	paciasp
   13b5c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13b60: f9000bf3     	str	x19, [sp, #0x10]
   13b64: 910003fd     	mov	x29, sp
   13b68: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b68:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   13b6c: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1798b
   13b70: 91000000     	add	x0, x0, #0x0
		0000000000013b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1798b
   13b74: f9400113     	ldr	x19, [x8]
		0000000000013b74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   13b78: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188bd
   13b7c: 91000021     	add	x1, x1, #0x0
		0000000000013b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188bd
   13b80: 94000000     	bl	0x13b80 <zlog_register_work_init+0x28>
		0000000000013b80:  R_AARCH64_CALL26	_printk
   13b84: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   13b88: 91296269     	add	x9, x19, #0xa58
   13b8c: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b8c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   13b90: 91000021     	add	x1, x1, #0x0
		0000000000013b90:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   13b94: f9052a68     	str	x8, [x19, #0xa50]
   13b98: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b98:  R_AARCH64_ADR_PREL_PG_HI21	zlog_register_work
   13b9c: 91000108     	add	x8, x8, #0x0
		0000000000013b9c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_register_work
   13ba0: 9129c260     	add	x0, x19, #0xa70
   13ba4: 52a00402     	mov	w2, #0x200000           // =2097152
   13ba8: aa1f03e3     	mov	x3, xzr
   13bac: aa1f03e4     	mov	x4, xzr
   13bb0: f9052e69     	str	x9, [x19, #0xa58]
   13bb4: f9053269     	str	x9, [x19, #0xa60]
   13bb8: f9053668     	str	x8, [x19, #0xa68]
   13bbc: 94000000     	bl	0x13bbc <zlog_register_work_init+0x64>
		0000000000013bbc:  R_AARCH64_CALL26	init_timer_key
   13bc0: f9400bf3     	ldr	x19, [sp, #0x10]
   13bc4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13bc8: d50323bf     	autiasp
   13bcc: d65f03c0     	ret
