
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013b04 <zlog_register_work_deinit>:
   13b04: d503233f     	paciasp
   13b08: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13b0c: f9000bf3     	str	x19, [sp, #0x10]
   13b10: 910003fd     	mov	x29, sp
   13b14: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b14:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   13b18: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1798b
   13b1c: 91000000     	add	x0, x0, #0x0
		0000000000013b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1798b
   13b20: f9400113     	ldr	x19, [x8]
		0000000000013b20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   13b24: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c169
   13b28: 91000021     	add	x1, x1, #0x0
		0000000000013b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c169
   13b2c: 94000000     	bl	0x13b2c <zlog_register_work_deinit+0x28>
		0000000000013b2c:  R_AARCH64_CALL26	_printk
   13b30: 91294260     	add	x0, x19, #0xa50
   13b34: 94000000     	bl	0x13b34 <zlog_register_work_deinit+0x30>
		0000000000013b34:  R_AARCH64_CALL26	cancel_delayed_work_sync
   13b38: f945f660     	ldr	x0, [x19, #0xbe8]
   13b3c: 94000000     	bl	0x13b3c <zlog_register_work_deinit+0x38>
		0000000000013b3c:  R_AARCH64_CALL26	vfree
   13b40: f905f67f     	str	xzr, [x19, #0xbe8]
   13b44: f9400bf3     	ldr	x19, [sp, #0x10]
   13b48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13b4c: d50323bf     	autiasp
   13b50: d65f03c0     	ret
