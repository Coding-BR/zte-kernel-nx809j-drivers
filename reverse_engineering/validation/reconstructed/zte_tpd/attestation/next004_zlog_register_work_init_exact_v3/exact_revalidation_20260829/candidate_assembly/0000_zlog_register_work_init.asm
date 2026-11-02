
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e4b8 <zlog_register_work_init>:
    e4b8: d503233f     	paciasp
    e4bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e4c0: f9000bf3     	str	x19, [sp, #0x10]
    e4c4: 910003fd     	mov	x29, sp
    e4c8: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e4c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e4cc: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e4cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    e4d0: 91000000     	add	x0, x0, #0x0
		000000000000e4d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    e4d4: f9400113     	ldr	x19, [x8]
		000000000000e4d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e4d8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e4d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18492
    e4dc: 91000021     	add	x1, x1, #0x0
		000000000000e4dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18492
    e4e0: 94000000     	bl	0xe4e0 <zlog_register_work_init+0x28>
		000000000000e4e0:  R_AARCH64_CALL26	_printk
    e4e4: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    e4e8: 91296269     	add	x9, x19, #0xa58
    e4ec: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e4ec:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    e4f0: 91000021     	add	x1, x1, #0x0
		000000000000e4f0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    e4f4: f9052a68     	str	x8, [x19, #0xa50]
    e4f8: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e4f8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_register_work
    e4fc: 91000108     	add	x8, x8, #0x0
		000000000000e4fc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_register_work
    e500: 9129c260     	add	x0, x19, #0xa70
    e504: 52a00402     	mov	w2, #0x200000           // =2097152
    e508: aa1f03e3     	mov	x3, xzr
    e50c: aa1f03e4     	mov	x4, xzr
    e510: f9052e69     	str	x9, [x19, #0xa58]
    e514: f9053269     	str	x9, [x19, #0xa60]
    e518: f9053668     	str	x8, [x19, #0xa68]
    e51c: 94000000     	bl	0xe51c <zlog_register_work_init+0x64>
		000000000000e51c:  R_AARCH64_CALL26	init_timer_key
    e520: f9400bf3     	ldr	x19, [sp, #0x10]
    e524: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e528: d50323bf     	autiasp
    e52c: d65f03c0     	ret
