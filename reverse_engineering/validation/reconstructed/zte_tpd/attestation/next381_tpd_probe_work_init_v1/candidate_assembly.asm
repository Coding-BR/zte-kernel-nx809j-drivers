
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000201d8 <tpd_probe_work_init>:
   201d8: d503233f     	paciasp
   201dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   201e0: f9000bf3     	str	x19, [sp, #0x10]
   201e4: 910003fd     	mov	x29, sp
   201e8: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		00000000000201e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   201ec: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000201ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
   201f0: 91000000     	add	x0, x0, #0x0
		00000000000201f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
   201f4: f9400113     	ldr	x19, [x8]
		00000000000201f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   201f8: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		00000000000201f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7172
   201fc: 91000021     	add	x1, x1, #0x0
		00000000000201fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7172
   20200: 94000000     	bl	0x20200 <tpd_probe_work_init+0x28>
		0000000000020200:  R_AARCH64_CALL26	_printk
   20204: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   20208: 91236269     	add	x9, x19, #0x8d8
   2020c: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		000000000002020c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   20210: 91000021     	add	x1, x1, #0x0
		0000000000020210:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   20214: f9046a68     	str	x8, [x19, #0x8d0]
   20218: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020218:  R_AARCH64_ADR_PREL_PG_HI21	ztp_probe_work
   2021c: 91000108     	add	x8, x8, #0x0
		000000000002021c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_probe_work
   20220: 9123c260     	add	x0, x19, #0x8f0
   20224: 52a00402     	mov	w2, #0x200000           // =2097152
   20228: aa1f03e3     	mov	x3, xzr
   2022c: aa1f03e4     	mov	x4, xzr
   20230: f9046e69     	str	x9, [x19, #0x8d8]
   20234: f9047269     	str	x9, [x19, #0x8e0]
   20238: f9047668     	str	x8, [x19, #0x8e8]
   2023c: 94000000     	bl	0x2023c <tpd_probe_work_init+0x64>
		000000000002023c:  R_AARCH64_CALL26	init_timer_key
   20240: f9400bf3     	ldr	x19, [sp, #0x10]
   20244: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   20248: d50323bf     	autiasp
   2024c: d65f03c0     	ret
