
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c0c <ztp_probe_work>:
    1c0c: d503233f     	paciasp
    1c10: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1c14: 910003fd     	mov	x29, sp
    1c18: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2471
    1c1c: 91000000     	add	x0, x0, #0x0
		0000000000001c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2471
    1c20: 94000000     	bl	0x1c20 <ztp_probe_work+0x14>
		0000000000001c20:  R_AARCH64_CALL26	_printk
    1c24: 94000000     	bl	0x1c24 <ztp_probe_work+0x18>
		0000000000001c24:  R_AARCH64_CALL26	syna_dev_module_init
    1c28: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1c2c: d50323bf     	autiasp
    1c30: d65f03c0     	ret
