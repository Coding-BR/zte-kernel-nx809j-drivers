
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000197e8 <tpd_report_work_deinit>:
   197e8: d503233f     	paciasp
   197ec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   197f0: f9000bf3     	str	x19, [sp, #0x10]
   197f4: 910003fd     	mov	x29, sp
   197f8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000197f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   197fc: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		00000000000197fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5c
   19800: 91000000     	add	x0, x0, #0x0
		0000000000019800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5c
   19804: f9400113     	ldr	x19, [x8]
		0000000000019804:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   19808: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		0000000000019808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa81a
   1980c: 91000021     	add	x1, x1, #0x0
		000000000001980c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa81a
   19810: 94000000     	bl	0x19810 <tpd_report_work_deinit+0x28>
		0000000000019810:  R_AARCH64_CALL26	_printk
   19814: 91130260     	add	x0, x19, #0x4c0
   19818: 94000000     	bl	0x19818 <tpd_report_work_deinit+0x30>
		0000000000019818:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1981c: 9114a260     	add	x0, x19, #0x528
   19820: 94000000     	bl	0x19820 <tpd_report_work_deinit+0x38>
		0000000000019820:  R_AARCH64_CALL26	cancel_delayed_work_sync
   19824: 91164260     	add	x0, x19, #0x590
   19828: 94000000     	bl	0x19828 <tpd_report_work_deinit+0x40>
		0000000000019828:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1982c: 9117e260     	add	x0, x19, #0x5f8
   19830: 94000000     	bl	0x19830 <tpd_report_work_deinit+0x48>
		0000000000019830:  R_AARCH64_CALL26	cancel_delayed_work_sync
   19834: 91198260     	add	x0, x19, #0x660
   19838: 94000000     	bl	0x19838 <tpd_report_work_deinit+0x50>
		0000000000019838:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1983c: 911b2260     	add	x0, x19, #0x6c8
   19840: 94000000     	bl	0x19840 <tpd_report_work_deinit+0x58>
		0000000000019840:  R_AARCH64_CALL26	cancel_delayed_work_sync
   19844: 911cc260     	add	x0, x19, #0x730
   19848: 94000000     	bl	0x19848 <tpd_report_work_deinit+0x60>
		0000000000019848:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1984c: 911e6260     	add	x0, x19, #0x798
   19850: 94000000     	bl	0x19850 <tpd_report_work_deinit+0x68>
		0000000000019850:  R_AARCH64_CALL26	cancel_delayed_work_sync
   19854: 91200260     	add	x0, x19, #0x800
   19858: 94000000     	bl	0x19858 <tpd_report_work_deinit+0x70>
		0000000000019858:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1985c: 9121a260     	add	x0, x19, #0x868
   19860: 94000000     	bl	0x19860 <tpd_report_work_deinit+0x78>
		0000000000019860:  R_AARCH64_CALL26	cancel_delayed_work_sync
   19864: f9400bf3     	ldr	x19, [sp, #0x10]
   19868: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1986c: d50323bf     	autiasp
   19870: d65f03c0     	ret
