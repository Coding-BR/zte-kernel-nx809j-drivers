
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fec <zlog_register_work_deinit>:
     fec: d503233f     	paciasp
     ff0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ff4: f9000bf3     	str	x19, [sp, #0x10]
     ff8: 910003fd     	mov	x29, sp
     ffc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ffc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1000: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    1004: 91000000     	add	x0, x0, #0x0
		0000000000001004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    1008: f9400113     	ldr	x19, [x8]
		0000000000001008:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    100c: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000100c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5a
    1010: 91000021     	add	x1, x1, #0x0
		0000000000001010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5a
    1014: 94000000     	bl	0x1014 <zlog_register_work_deinit+0x28>
		0000000000001014:  R_AARCH64_CALL26	_printk
    1018: 91294260     	add	x0, x19, #0xa50
    101c: 94000000     	bl	0x101c <zlog_register_work_deinit+0x30>
		000000000000101c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1020: f945f660     	ldr	x0, [x19, #0xbe8]
    1024: 94000000     	bl	0x1024 <zlog_register_work_deinit+0x38>
		0000000000001024:  R_AARCH64_CALL26	vfree
    1028: f905f67f     	str	xzr, [x19, #0xbe8]
    102c: f9400bf3     	ldr	x19, [sp, #0x10]
    1030: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1034: d50323bf     	autiasp
    1038: d65f03c0     	ret
