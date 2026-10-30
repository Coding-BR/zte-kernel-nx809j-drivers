
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c38 <tpd_probe_work_deinit>:
    1c38: d503233f     	paciasp
    1c3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1c40: f9000bf3     	str	x19, [sp, #0x10]
    1c44: 910003fd     	mov	x29, sp
    1c48: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001c48:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1c4c: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    1c50: 91000000     	add	x0, x0, #0x0
		0000000000001c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    1c54: f9400113     	ldr	x19, [x8]
		0000000000001c54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1c58: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba1
    1c5c: 91000021     	add	x1, x1, #0x0
		0000000000001c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba1
    1c60: 94000000     	bl	0x1c60 <tpd_probe_work_deinit+0x28>
		0000000000001c60:  R_AARCH64_CALL26	_printk
    1c64: 91234260     	add	x0, x19, #0x8d0
    1c68: 94000000     	bl	0x1c68 <tpd_probe_work_deinit+0x30>
		0000000000001c68:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1c6c: f9400bf3     	ldr	x19, [sp, #0x10]
    1c70: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c74: d50323bf     	autiasp
    1c78: d65f03c0     	ret
