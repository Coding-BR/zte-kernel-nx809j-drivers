
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c80 <tpd_workqueue_init>:
    1c80: d503233f     	paciasp
    1c84: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1c88: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1c8c: a90257f6     	stp	x22, x21, [sp, #0x20]
    1c90: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1c94: 910003fd     	mov	x29, sp
    1c98: 90000016     	adrp	x22, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001c98:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1c9c: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x503d
    1ca0: 91000000     	add	x0, x0, #0x0
		0000000000001ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x503d
    1ca4: f94002d5     	ldr	x21, [x22]
		0000000000001ca4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1ca8: 94000000     	bl	0x1ca8 <tpd_workqueue_init+0x28>
		0000000000001ca8:  R_AARCH64_CALL26	_printk
    1cac: 52800141     	mov	w1, #0xa                // =10
    1cb0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
    1cb4: 91000000     	add	x0, x0, #0x0
		0000000000001cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
    1cb8: 90000003     	adrp	x3, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60b0
    1cbc: 91000063     	add	x3, x3, #0x0
		0000000000001cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60b0
    1cc0: 72a000c1     	movk	w1, #0x6, lsl #16
    1cc4: 52800022     	mov	w2, #0x1                // =1
    1cc8: 94000000     	bl	0x1cc8 <tpd_workqueue_init+0x48>
		0000000000001cc8:  R_AARCH64_CALL26	alloc_workqueue
    1ccc: f9025aa0     	str	x0, [x21, #0x4b0]
    1cd0: b5000100     	cbnz	x0, 0x1cf0 <tpd_workqueue_init+0x70>
    1cd4: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7945
    1cd8: 91000000     	add	x0, x0, #0x0
		0000000000001cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7945
    1cdc: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504d
    1ce0: 91000021     	add	x1, x1, #0x0
		0000000000001ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504d
    1ce4: 94000000     	bl	0x1ce4 <tpd_workqueue_init+0x64>
		0000000000001ce4:  R_AARCH64_CALL26	_printk
    1ce8: 12800160     	mov	w0, #-0xc               // =-12
    1cec: 1400003b     	b	0x1dd8 <tpd_workqueue_init+0x158>
    1cf0: 94000000     	bl	0x1cf0 <tpd_workqueue_init+0x70>
		0000000000001cf0:  R_AARCH64_CALL26	tpd_report_work_init
    1cf4: 350007e0     	cbnz	w0, 0x1df0 <tpd_workqueue_init+0x170>
    1cf8: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    1cfc: 91000273     	add	x19, x19, #0x0
		0000000000001cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    1d00: f94002d7     	ldr	x23, [x22]
		0000000000001d00:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1d04: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe09
    1d08: 91000021     	add	x1, x1, #0x0
		0000000000001d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe09
    1d0c: aa1303e0     	mov	x0, x19
    1d10: 94000000     	bl	0x1d10 <tpd_workqueue_init+0x90>
		0000000000001d10:  R_AARCH64_CALL26	_printk
    1d14: b26b7bf8     	mov	x24, #0xfffffffe00000   // =4503599625273344
    1d18: 912362e8     	add	x8, x23, #0x8d8
    1d1c: 90000014     	adrp	x20, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001d1c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1d20: 91000294     	add	x20, x20, #0x0
		0000000000001d20:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1d24: f9046af8     	str	x24, [x23, #0x8d0]
    1d28: 9123c2e0     	add	x0, x23, #0x8f0
    1d2c: f9046ee8     	str	x8, [x23, #0x8d8]
    1d30: aa1403e1     	mov	x1, x20
    1d34: 52a00402     	mov	w2, #0x200000           // =2097152
    1d38: f90472e8     	str	x8, [x23, #0x8e0]
    1d3c: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001d3c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c0c
    1d40: 91000108     	add	x8, x8, #0x0
		0000000000001d40:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c0c
    1d44: aa1f03e3     	mov	x3, xzr
    1d48: aa1f03e4     	mov	x4, xzr
    1d4c: f90476e8     	str	x8, [x23, #0x8e8]
    1d50: 94000000     	bl	0x1d50 <tpd_workqueue_init+0xd0>
		0000000000001d50:  R_AARCH64_CALL26	init_timer_key
    1d54: 94000000     	bl	0x1d54 <tpd_workqueue_init+0xd4>
		0000000000001d54:  R_AARCH64_CALL26	tpd_resume_work_init
    1d58: f94002d6     	ldr	x22, [x22]
		0000000000001d58:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1d5c: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2444
    1d60: 91000021     	add	x1, x1, #0x0
		0000000000001d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2444
    1d64: aa1303e0     	mov	x0, x19
    1d68: 94000000     	bl	0x1d68 <tpd_workqueue_init+0xe8>
		0000000000001d68:  R_AARCH64_CALL26	_printk
    1d6c: 912962c8     	add	x8, x22, #0xa58
    1d70: f9052ad8     	str	x24, [x22, #0xa50]
    1d74: 9129c2c0     	add	x0, x22, #0xa70
    1d78: f9052ec8     	str	x8, [x22, #0xa58]
    1d7c: aa1403e1     	mov	x1, x20
    1d80: 52a00402     	mov	w2, #0x200000           // =2097152
    1d84: f90532c8     	str	x8, [x22, #0xa60]
    1d88: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001d88:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xfbc
    1d8c: 91000108     	add	x8, x8, #0x0
		0000000000001d8c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xfbc
    1d90: aa1f03e3     	mov	x3, xzr
    1d94: aa1f03e4     	mov	x4, xzr
    1d98: f90536c8     	str	x8, [x22, #0xa68]
    1d9c: 94000000     	bl	0x1d9c <tpd_workqueue_init+0x11c>
		0000000000001d9c:  R_AARCH64_CALL26	init_timer_key
    1da0: 912502a8     	add	x8, x21, #0x940
    1da4: f9049eb8     	str	x24, [x21, #0x938]
    1da8: 912562a0     	add	x0, x21, #0x958
    1dac: f904a2a8     	str	x8, [x21, #0x940]
    1db0: aa1403e1     	mov	x1, x20
    1db4: 52a00402     	mov	w2, #0x200000           // =2097152
    1db8: f904a6a8     	str	x8, [x21, #0x948]
    1dbc: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001dbc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1e08
    1dc0: 91000108     	add	x8, x8, #0x0
		0000000000001dc0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1e08
    1dc4: aa1f03e3     	mov	x3, xzr
    1dc8: aa1f03e4     	mov	x4, xzr
    1dcc: f904aaa8     	str	x8, [x21, #0x950]
    1dd0: 94000000     	bl	0x1dd0 <tpd_workqueue_init+0x150>
		0000000000001dd0:  R_AARCH64_CALL26	init_timer_key
    1dd4: 2a1f03e0     	mov	w0, wzr
    1dd8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1ddc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1de0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1de4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1de8: d50323bf     	autiasp
    1dec: d65f03c0     	ret
    1df0: f9425aa8     	ldr	x8, [x21, #0x4b0]
    1df4: b5fff708     	cbnz	x8, 0x1cd4 <tpd_workqueue_init+0x54>
    1df8: aa1f03e0     	mov	x0, xzr
    1dfc: 94000000     	bl	0x1dfc <tpd_workqueue_init+0x17c>
		0000000000001dfc:  R_AARCH64_CALL26	destroy_workqueue
    1e00: 17ffffb5     	b	0x1cd4 <tpd_workqueue_init+0x54>
