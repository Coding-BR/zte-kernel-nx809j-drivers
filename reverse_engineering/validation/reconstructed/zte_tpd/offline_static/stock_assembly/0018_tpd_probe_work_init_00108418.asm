
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b90 <tpd_probe_work_init>:
    1b90: d503233f     	paciasp
    1b94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1b98: f9000bf3     	str	x19, [sp, #0x10]
    1b9c: 910003fd     	mov	x29, sp
    1ba0: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ba0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1ba4: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    1ba8: 91000000     	add	x0, x0, #0x0
		0000000000001ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    1bac: f9400113     	ldr	x19, [x8]
		0000000000001bac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1bb0: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe09
    1bb4: 91000021     	add	x1, x1, #0x0
		0000000000001bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe09
    1bb8: 94000000     	bl	0x1bb8 <tpd_probe_work_init+0x28>
		0000000000001bb8:  R_AARCH64_CALL26	_printk
    1bbc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1bc0: 91236269     	add	x9, x19, #0x8d8
    1bc4: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1bc8: 91000021     	add	x1, x1, #0x0
		0000000000001bc8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1bcc: f9046a68     	str	x8, [x19, #0x8d0]
    1bd0: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001bd0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c0c
    1bd4: 91000108     	add	x8, x8, #0x0
		0000000000001bd4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c0c
    1bd8: 9123c260     	add	x0, x19, #0x8f0
    1bdc: 52a00402     	mov	w2, #0x200000           // =2097152
    1be0: aa1f03e3     	mov	x3, xzr
    1be4: aa1f03e4     	mov	x4, xzr
    1be8: f9046e69     	str	x9, [x19, #0x8d8]
    1bec: f9047269     	str	x9, [x19, #0x8e0]
    1bf0: f9047668     	str	x8, [x19, #0x8e8]
    1bf4: 94000000     	bl	0x1bf4 <tpd_probe_work_init+0x64>
		0000000000001bf4:  R_AARCH64_CALL26	init_timer_key
    1bf8: f9400bf3     	ldr	x19, [sp, #0x10]
    1bfc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1c00: d50323bf     	autiasp
    1c04: d65f03c0     	ret
