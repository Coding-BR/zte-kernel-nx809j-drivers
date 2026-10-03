
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ebc <tpd_workqueue_deinit>:
    1ebc: d503233f     	paciasp
    1ec0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1ec4: a90157f6     	stp	x22, x21, [sp, #0x10]
    1ec8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1ecc: 910003fd     	mov	x29, sp
    1ed0: 90000014     	adrp	x20, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ed0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1ed4: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    1ed8: 91000273     	add	x19, x19, #0x0
		0000000000001ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    1edc: f9400295     	ldr	x21, [x20]
		0000000000001edc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1ee0: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43d9
    1ee4: 91000021     	add	x1, x1, #0x0
		0000000000001ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43d9
    1ee8: aa1303e0     	mov	x0, x19
    1eec: 94000000     	bl	0x1eec <tpd_workqueue_deinit+0x30>
		0000000000001eec:  R_AARCH64_CALL26	_printk
    1ef0: 94000000     	bl	0x1ef0 <tpd_workqueue_deinit+0x34>
		0000000000001ef0:  R_AARCH64_CALL26	tpd_report_work_deinit
    1ef4: 94000000     	bl	0x1ef4 <tpd_workqueue_deinit+0x38>
		0000000000001ef4:  R_AARCH64_CALL26	tpd_resume_work_deinit
    1ef8: f9400296     	ldr	x22, [x20]
		0000000000001ef8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1efc: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba1
    1f00: 91000021     	add	x1, x1, #0x0
		0000000000001f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba1
    1f04: aa1303e0     	mov	x0, x19
    1f08: 94000000     	bl	0x1f08 <tpd_workqueue_deinit+0x4c>
		0000000000001f08:  R_AARCH64_CALL26	_printk
    1f0c: 912342c0     	add	x0, x22, #0x8d0
    1f10: 94000000     	bl	0x1f10 <tpd_workqueue_deinit+0x54>
		0000000000001f10:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1f14: f9400294     	ldr	x20, [x20]
		0000000000001f14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1f18: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5a
    1f1c: 91000021     	add	x1, x1, #0x0
		0000000000001f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5a
    1f20: aa1303e0     	mov	x0, x19
    1f24: 94000000     	bl	0x1f24 <tpd_workqueue_deinit+0x68>
		0000000000001f24:  R_AARCH64_CALL26	_printk
    1f28: 91294280     	add	x0, x20, #0xa50
    1f2c: 94000000     	bl	0x1f2c <tpd_workqueue_deinit+0x70>
		0000000000001f2c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1f30: f945f680     	ldr	x0, [x20, #0xbe8]
    1f34: 94000000     	bl	0x1f34 <tpd_workqueue_deinit+0x78>
		0000000000001f34:  R_AARCH64_CALL26	vfree
    1f38: 9124e2a0     	add	x0, x21, #0x938
    1f3c: f905f69f     	str	xzr, [x20, #0xbe8]
    1f40: 94000000     	bl	0x1f40 <tpd_workqueue_deinit+0x84>
		0000000000001f40:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1f44: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1f48: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1f4c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1f50: d50323bf     	autiasp
    1f54: d65f03c0     	ret
