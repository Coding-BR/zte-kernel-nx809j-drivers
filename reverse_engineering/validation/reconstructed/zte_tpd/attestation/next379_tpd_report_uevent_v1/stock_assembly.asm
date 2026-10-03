
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a24 <tpd_report_uevent>:
    1a24: d503233f     	paciasp
    1a28: d10103ff     	sub	sp, sp, #0x40
    1a2c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1a30: f9001bf3     	str	x19, [sp, #0x30]
    1a34: 910083fd     	add	x29, sp, #0x20
    1a38: d5384108     	mrs	x8, SP_EL0
    1a3c: 90000009     	adrp	x9, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1a40: f9438908     	ldr	x8, [x8, #0x710]
    1a44: f81f83a8     	stur	x8, [x29, #-0x8]
    1a48: 12001c08     	and	w8, w0, #0xff
    1a4c: f9400133     	ldr	x19, [x9]
		0000000000001a4c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1a50: 7100091f     	cmp	w8, #0x2
    1a54: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1a58: 54000280     	b.eq	0x1aa8 <tpd_report_uevent+0x84>
    1a5c: 7100051f     	cmp	w8, #0x1
    1a60: 54000140     	b.eq	0x1a88 <tpd_report_uevent+0x64>
    1a64: 350003e8     	cbnz	w8, 0x1ae0 <tpd_report_uevent+0xbc>
    1a68: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ece
    1a6c: 91000000     	add	x0, x0, #0x0
		0000000000001a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ece
    1a70: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5060
    1a74: 91000021     	add	x1, x1, #0x0
		0000000000001a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5060
    1a78: 94000000     	bl	0x1a78 <tpd_report_uevent+0x54>
		0000000000001a78:  R_AARCH64_CALL26	_printk
    1a7c: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dec
    1a80: 91000108     	add	x8, x8, #0x0
		0000000000001a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dec
    1a84: 14000010     	b	0x1ac4 <tpd_report_uevent+0xa0>
    1a88: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x796d
    1a8c: 91000000     	add	x0, x0, #0x0
		0000000000001a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x796d
    1a90: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5060
    1a94: 91000021     	add	x1, x1, #0x0
		0000000000001a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5060
    1a98: 94000000     	bl	0x1a98 <tpd_report_uevent+0x74>
		0000000000001a98:  R_AARCH64_CALL26	_printk
    1a9c: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43ee
    1aa0: 91000108     	add	x8, x8, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43ee
    1aa4: 14000008     	b	0x1ac4 <tpd_report_uevent+0xa0>
    1aa8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d3c
    1aac: 91000000     	add	x0, x0, #0x0
		0000000000001aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d3c
    1ab0: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5060
    1ab4: 91000021     	add	x1, x1, #0x0
		0000000000001ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5060
    1ab8: 94000000     	bl	0x1ab8 <tpd_report_uevent+0x94>
		0000000000001ab8:  R_AARCH64_CALL26	_printk
    1abc: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eeb
    1ac0: 91000108     	add	x8, x8, #0x0
		0000000000001ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eeb
    1ac4: f90007e8     	str	x8, [sp, #0x8]
    1ac8: f946ea68     	ldr	x8, [x19, #0xdd0]
    1acc: 910023e2     	add	x2, sp, #0x8
    1ad0: 52800041     	mov	w1, #0x2                // =2
    1ad4: 91004100     	add	x0, x8, #0x10
    1ad8: 94000000     	bl	0x1ad8 <tpd_report_uevent+0xb4>
		0000000000001ad8:  R_AARCH64_CALL26	kobject_uevent_env
    1adc: 14000008     	b	0x1afc <tpd_report_uevent+0xd8>
    1ae0: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8476
    1ae4: 91000108     	add	x8, x8, #0x0
		0000000000001ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8476
    1ae8: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5060
    1aec: 91000021     	add	x1, x1, #0x0
		0000000000001aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5060
    1af0: 12001c02     	and	w2, w0, #0xff
    1af4: aa0803e0     	mov	x0, x8
    1af8: 94000000     	bl	0x1af8 <tpd_report_uevent+0xd4>
		0000000000001af8:  R_AARCH64_CALL26	_printk
    1afc: d5384108     	mrs	x8, SP_EL0
    1b00: f9438908     	ldr	x8, [x8, #0x710]
    1b04: f85f83a9     	ldur	x9, [x29, #-0x8]
    1b08: eb09011f     	cmp	x8, x9
    1b0c: 540000c1     	b.ne	0x1b24 <tpd_report_uevent+0x100>
    1b10: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1b14: f9401bf3     	ldr	x19, [sp, #0x30]
    1b18: 910103ff     	add	sp, sp, #0x40
    1b1c: d50323bf     	autiasp
    1b20: d65f03c0     	ret
    1b24: 94000000     	bl	0x1b24 <tpd_report_uevent+0x100>
		0000000000001b24:  R_AARCH64_CALL26	__stack_chk_fail
