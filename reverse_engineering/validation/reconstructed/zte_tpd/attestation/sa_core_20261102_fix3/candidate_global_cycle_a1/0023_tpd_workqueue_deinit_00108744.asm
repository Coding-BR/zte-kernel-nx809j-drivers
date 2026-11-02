
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d218 <tpd_workqueue_deinit>:
    d218: d503233f     	paciasp
    d21c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    d220: a90157f6     	stp	x22, x21, [sp, #0x10]
    d224: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d228: 910003fd     	mov	x29, sp
    d22c: 90000014     	adrp	x20, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d22c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d230: 90000013     	adrp	x19, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d230:  R_AARCH64_ADR_PREL_PG_HI21	unk_322AA
    d234: 91000273     	add	x19, x19, #0x0
		000000000000d234:  R_AARCH64_ADD_ABS_LO12_NC	unk_322AA
    d238: f9400295     	ldr	x21, [x20]
		000000000000d238:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d23c: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d23c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19211
    d240: 91000021     	add	x1, x1, #0x0
		000000000000d240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19211
    d244: aa1303e0     	mov	x0, x19
    d248: 94000000     	bl	0xd248 <tpd_workqueue_deinit+0x30>
		000000000000d248:  R_AARCH64_CALL26	_printk
    d24c: 94000000     	bl	0xd24c <tpd_workqueue_deinit+0x34>
		000000000000d24c:  R_AARCH64_CALL26	tpd_report_work_deinit
    d250: 94000000     	bl	0xd250 <tpd_workqueue_deinit+0x38>
		000000000000d250:  R_AARCH64_CALL26	tpd_resume_work_deinit
    d254: f9400296     	ldr	x22, [x20]
		000000000000d254:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d258: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17894
    d25c: 91000021     	add	x1, x1, #0x0
		000000000000d25c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17894
    d260: aa1303e0     	mov	x0, x19
    d264: 94000000     	bl	0xd264 <tpd_workqueue_deinit+0x4c>
		000000000000d264:  R_AARCH64_CALL26	_printk
    d268: 912342c0     	add	x0, x22, #0x8d0
    d26c: 94000000     	bl	0xd26c <tpd_workqueue_deinit+0x54>
		000000000000d26c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d270: f9400294     	ldr	x20, [x20]
		000000000000d270:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d274: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1f1
    d278: 91000021     	add	x1, x1, #0x0
		000000000000d278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1f1
    d27c: aa1303e0     	mov	x0, x19
    d280: 94000000     	bl	0xd280 <tpd_workqueue_deinit+0x68>
		000000000000d280:  R_AARCH64_CALL26	_printk
    d284: 91294280     	add	x0, x20, #0xa50
    d288: 94000000     	bl	0xd288 <tpd_workqueue_deinit+0x70>
		000000000000d288:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d28c: f945f680     	ldr	x0, [x20, #0xbe8]
    d290: 94000000     	bl	0xd290 <tpd_workqueue_deinit+0x78>
		000000000000d290:  R_AARCH64_CALL26	vfree
    d294: 9124e2a0     	add	x0, x21, #0x938
    d298: f905f69f     	str	xzr, [x20, #0xbe8]
    d29c: 94000000     	bl	0xd29c <tpd_workqueue_deinit+0x84>
		000000000000d29c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    d2a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d2a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    d2a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d2ac: d50323bf     	autiasp
    d2b0: d65f03c0     	ret
