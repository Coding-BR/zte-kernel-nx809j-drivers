
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252f8 <tpd_report_work_deinit>:
   252f8: d503233f     	paciasp
   252fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25300: f9000bf3     	str	x19, [sp, #0x10]
   25304: 910003fd     	mov	x29, sp
   25308: 90000008     	adrp	x8, 0x25000 <tpd_report_work_init+0x164>
		0000000000025308:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2530c: 90000000     	adrp	x0, 0x25000 <tpd_report_work_init+0x164>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12576
   25310: 91000000     	add	x0, x0, #0x0
		0000000000025310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12576
   25314: f9400113     	ldr	x19, [x8]
		0000000000025314:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25318: 90000001     	adrp	x1, 0x25000 <tpd_report_work_init+0x164>
		0000000000025318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c23c
   2531c: 91000021     	add	x1, x1, #0x0
		000000000002531c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c23c
   25320: 94000000     	bl	0x25320 <tpd_report_work_deinit+0x28>
		0000000000025320:  R_AARCH64_CALL26	_printk
   25324: 91130260     	add	x0, x19, #0x4c0
   25328: 94000000     	bl	0x25328 <tpd_report_work_deinit+0x30>
		0000000000025328:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2532c: 9114a260     	add	x0, x19, #0x528
   25330: 94000000     	bl	0x25330 <tpd_report_work_deinit+0x38>
		0000000000025330:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25334: 91164260     	add	x0, x19, #0x590
   25338: 94000000     	bl	0x25338 <tpd_report_work_deinit+0x40>
		0000000000025338:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2533c: 9117e260     	add	x0, x19, #0x5f8
   25340: 94000000     	bl	0x25340 <tpd_report_work_deinit+0x48>
		0000000000025340:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25344: 91198260     	add	x0, x19, #0x660
   25348: 94000000     	bl	0x25348 <tpd_report_work_deinit+0x50>
		0000000000025348:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2534c: 911b2260     	add	x0, x19, #0x6c8
   25350: 94000000     	bl	0x25350 <tpd_report_work_deinit+0x58>
		0000000000025350:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25354: 911cc260     	add	x0, x19, #0x730
   25358: 94000000     	bl	0x25358 <tpd_report_work_deinit+0x60>
		0000000000025358:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2535c: 911e6260     	add	x0, x19, #0x798
   25360: 94000000     	bl	0x25360 <tpd_report_work_deinit+0x68>
		0000000000025360:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25364: 91200260     	add	x0, x19, #0x800
   25368: 94000000     	bl	0x25368 <tpd_report_work_deinit+0x70>
		0000000000025368:  R_AARCH64_CALL26	cancel_delayed_work_sync
   2536c: 9121a260     	add	x0, x19, #0x868
   25370: 94000000     	bl	0x25370 <tpd_report_work_deinit+0x78>
		0000000000025370:  R_AARCH64_CALL26	cancel_delayed_work_sync
   25374: f9400bf3     	ldr	x19, [sp, #0x10]
   25378: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2537c: d50323bf     	autiasp
   25380: d65f03c0     	ret
