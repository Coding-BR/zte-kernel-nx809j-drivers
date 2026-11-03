
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d768 <syna_tpd_charger_lifecycle_stop>:
    d768: b4000640     	cbz	x0, 0xd830 <syna_tpd_charger_lifecycle_stop+0xc8>
    d76c: d503233f     	paciasp
    d770: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d774: a9014ff4     	stp	x20, x19, [sp, #0x10]
    d778: 910003fd     	mov	x29, sp
    d77c: aa0003f3     	mov	x19, x0
    d780: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d780:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306f0
    d784: 91000000     	add	x0, x0, #0x0
		000000000000d784:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306f0
    d788: 94000000     	bl	0xd788 <syna_tpd_charger_lifecycle_stop+0x20>
		000000000000d788:  R_AARCH64_CALL26	mutex_lock
    d78c: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d78c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2710
    d790: f9400109     	ldr	x9, [x8]
		000000000000d790:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2710
    d794: b40000e9     	cbz	x9, 0xd7b0 <syna_tpd_charger_lifecycle_stop+0x48>
    d798: eb13013f     	cmp	x9, x19
    d79c: 540000c0     	b.eq	0xd7b4 <syna_tpd_charger_lifecycle_stop+0x4c>
    d7a0: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d7a0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306f0
    d7a4: 91000000     	add	x0, x0, #0x0
		000000000000d7a4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306f0
    d7a8: 94000000     	bl	0xd7a8 <syna_tpd_charger_lifecycle_stop+0x40>
		000000000000d7a8:  R_AARCH64_CALL26	mutex_unlock
    d7ac: 1400001e     	b	0xd824 <syna_tpd_charger_lifecycle_stop+0xbc>
    d7b0: f9000113     	str	x19, [x8]
		000000000000d7b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2710
    d7b4: 9000000a     	adrp	x10, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d7b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x271c
    d7b8: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d7b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2718
    d7bc: 52800029     	mov	w9, #0x1                // =1
    d7c0: 39400154     	ldrb	w20, [x10]
		000000000000d7c0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x271c
    d7c4: 90000000     	adrp	x0, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d7c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306f0
    d7c8: 91000000     	add	x0, x0, #0x0
		000000000000d7c8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306f0
    d7cc: 39000109     	strb	w9, [x8]
		000000000000d7cc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x2718
    d7d0: 3900015f     	strb	wzr, [x10]
		000000000000d7d0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x271c
    d7d4: 94000000     	bl	0xd7d4 <syna_tpd_charger_lifecycle_stop+0x6c>
		000000000000d7d4:  R_AARCH64_CALL26	mutex_unlock
    d7d8: f9421a68     	ldr	x8, [x19, #0x430]
    d7dc: b4000068     	cbz	x8, 0xd7e8 <syna_tpd_charger_lifecycle_stop+0x80>
    d7e0: 910f2260     	add	x0, x19, #0x3c8
    d7e4: 94000000     	bl	0xd7e4 <syna_tpd_charger_lifecycle_stop+0x7c>
		000000000000d7e4:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d7e8: 34000074     	cbz	w20, 0xd7f4 <syna_tpd_charger_lifecycle_stop+0x8c>
    d7ec: 911a4260     	add	x0, x19, #0x690
    d7f0: 94000000     	bl	0xd7f0 <syna_tpd_charger_lifecycle_stop+0x88>
		000000000000d7f0:  R_AARCH64_CALL26	power_supply_unreg_notifier
    d7f4: f9434674     	ldr	x20, [x19, #0x688]
    d7f8: b40000d4     	cbz	x20, 0xd810 <syna_tpd_charger_lifecycle_stop+0xa8>
    d7fc: 91188260     	add	x0, x19, #0x620
    d800: 94000000     	bl	0xd800 <syna_tpd_charger_lifecycle_stop+0x98>
		000000000000d800:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d804: aa1403e0     	mov	x0, x20
    d808: f903467f     	str	xzr, [x19, #0x688]
    d80c: 94000000     	bl	0xd80c <syna_tpd_charger_lifecycle_stop+0xa4>
		000000000000d80c:  R_AARCH64_CALL26	destroy_workqueue
    d810: 90000008     	adrp	x8, 0xd000 <syna_tcm_set_report_dispatcher+0x74>
		000000000000d810:  R_AARCH64_ADR_PREL_PG_HI21	syna_get_charger_status_batt_psy
    d814: f9400100     	ldr	x0, [x8]
		000000000000d814:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status_batt_psy
    d818: b4000060     	cbz	x0, 0xd824 <syna_tpd_charger_lifecycle_stop+0xbc>
    d81c: f900011f     	str	xzr, [x8]
		000000000000d81c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status_batt_psy
    d820: 94000000     	bl	0xd820 <syna_tpd_charger_lifecycle_stop+0xb8>
		000000000000d820:  R_AARCH64_CALL26	power_supply_put
    d824: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    d828: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d82c: d50323bf     	autiasp
    d830: d65f03c0     	ret
