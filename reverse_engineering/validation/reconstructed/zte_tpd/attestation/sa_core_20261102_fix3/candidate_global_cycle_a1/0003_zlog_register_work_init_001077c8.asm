
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e514 <zlog_register_work_init>:
    e514: d503233f     	paciasp
    e518: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e51c: f9000bf3     	str	x19, [sp, #0x10]
    e520: 910003fd     	mov	x29, sp
    e524: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e524:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e528: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    e52c: 91000000     	add	x0, x0, #0x0
		000000000000e52c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    e530: f9400113     	ldr	x19, [x8]
		000000000000e530:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e534: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18492
    e538: 91000021     	add	x1, x1, #0x0
		000000000000e538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18492
    e53c: 94000000     	bl	0xe53c <zlog_register_work_init+0x28>
		000000000000e53c:  R_AARCH64_CALL26	_printk
    e540: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    e544: 91296269     	add	x9, x19, #0xa58
    e548: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e548:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    e54c: 91000021     	add	x1, x1, #0x0
		000000000000e54c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    e550: f9052a68     	str	x8, [x19, #0xa50]
    e554: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e554:  R_AARCH64_ADR_PREL_PG_HI21	zlog_register_work
    e558: 91000108     	add	x8, x8, #0x0
		000000000000e558:  R_AARCH64_ADD_ABS_LO12_NC	zlog_register_work
    e55c: 9129c260     	add	x0, x19, #0xa70
    e560: 52a00402     	mov	w2, #0x200000           // =2097152
    e564: aa1f03e3     	mov	x3, xzr
    e568: aa1f03e4     	mov	x4, xzr
    e56c: f9052e69     	str	x9, [x19, #0xa58]
    e570: f9053269     	str	x9, [x19, #0xa60]
    e574: f9053668     	str	x8, [x19, #0xa68]
    e578: 94000000     	bl	0xe578 <zlog_register_work_init+0x64>
		000000000000e578:  R_AARCH64_CALL26	init_timer_key
    e57c: f9400bf3     	ldr	x19, [sp, #0x10]
    e580: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e584: d50323bf     	autiasp
    e588: d65f03c0     	ret
