
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d1bc <tpd_workqueue_deinit>:
    d1bc: d503233f     	paciasp
    d1c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    d1c4: a90157f6     	stp	x22, x21, [sp, #0x10]
    d1c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d1cc: 910003fd     	mov	x29, sp
    d1d0: 90000014     	adrp	x20, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d1d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d1d4: 90000013     	adrp	x19, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d1d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_322AA
    d1d8: 91000273     	add	x19, x19, #0x0
		000000000000d1d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_322AA
    d1dc: f9400295     	ldr	x21, [x20]
		000000000000d1dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d1e0: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d1e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19211
    d1e4: 91000021     	add	x1, x1, #0x0
		000000000000d1e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19211
    d1e8: aa1303e0     	mov	x0, x19
    d1ec: 94000000     	bl	0xd1ec <tpd_workqueue_deinit+0x30>
		000000000000d1ec:  R_AARCH64_CALL26	_printk
    d1f0: 94000000     	bl	0xd1f0 <tpd_workqueue_deinit+0x34>
		000000000000d1f0:  R_AARCH64_CALL26	tpd_report_work_deinit
    d1f4: 94000000     	bl	0xd1f4 <tpd_workqueue_deinit+0x38>
		000000000000d1f4:  R_AARCH64_CALL26	tpd_resume_work_deinit
    d1f8: f9400296     	ldr	x22, [x20]
		000000000000d1f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d1fc: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d1fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17894
    d200: 91000021     	add	x1, x1, #0x0
		000000000000d200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17894
    d204: aa1303e0     	mov	x0, x19
    d208: 94000000     	bl	0xd208 <tpd_workqueue_deinit+0x4c>
		000000000000d208:  R_AARCH64_CALL26	_printk
    d20c: 912342c0     	add	x0, x22, #0x8d0
    d210: 94000000     	bl	0xd210 <tpd_workqueue_deinit+0x54>
		000000000000d210:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d214: f9400294     	ldr	x20, [x20]
		000000000000d214:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d218: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1f1
    d21c: 91000021     	add	x1, x1, #0x0
		000000000000d21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1f1
    d220: aa1303e0     	mov	x0, x19
    d224: 94000000     	bl	0xd224 <tpd_workqueue_deinit+0x68>
		000000000000d224:  R_AARCH64_CALL26	_printk
    d228: 91294280     	add	x0, x20, #0xa50
    d22c: 94000000     	bl	0xd22c <tpd_workqueue_deinit+0x70>
		000000000000d22c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d230: f945f680     	ldr	x0, [x20, #0xbe8]
    d234: 94000000     	bl	0xd234 <tpd_workqueue_deinit+0x78>
		000000000000d234:  R_AARCH64_CALL26	vfree
    d238: 9124e2a0     	add	x0, x21, #0x938
    d23c: f905f69f     	str	xzr, [x20, #0xbe8]
    d240: 94000000     	bl	0xd240 <tpd_workqueue_deinit+0x84>
		000000000000d240:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d244: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d248: a94157f6     	ldp	x22, x21, [sp, #0x10]
    d24c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d250: d50323bf     	autiasp
    d254: d65f03c0     	ret
