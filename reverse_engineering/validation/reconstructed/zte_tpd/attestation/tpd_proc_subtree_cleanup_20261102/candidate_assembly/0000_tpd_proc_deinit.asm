
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e474 <tpd_proc_deinit>:
    e474: d503233f     	paciasp
    e478: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    e47c: 910003fd     	mov	x29, sp
    e480: 90000008     	adrp	x8, 0xe000 <tp_self_test_read+0x154>
		000000000000e480:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
    e484: f9400100     	ldr	x0, [x8]
		000000000000e484:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    e488: b40000c0     	cbz	x0, 0xe4a0 <tpd_proc_deinit+0x2c>
    e48c: f900011f     	str	xzr, [x8]
		000000000000e48c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    e490: 94000000     	bl	0xe490 <tpd_proc_deinit+0x1c>
		000000000000e490:  R_AARCH64_CALL26	proc_remove
    e494: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    e498: d50323bf     	autiasp
    e49c: d65f03c0     	ret
    e4a0: 90000000     	adrp	x0, 0xe000 <tp_self_test_read+0x154>
		000000000000e4a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CE70
    e4a4: 91000000     	add	x0, x0, #0x0
		000000000000e4a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CE70
    e4a8: 90000001     	adrp	x1, 0xe000 <tp_self_test_read+0x154>
		000000000000e4a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8c9
    e4ac: 91000021     	add	x1, x1, #0x0
		000000000000e4ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8c9
    e4b0: 94000000     	bl	0xe4b0 <tpd_proc_deinit+0x3c>
		000000000000e4b0:  R_AARCH64_CALL26	_printk
    e4b4: 17fffff8     	b	0xe494 <tpd_proc_deinit+0x20>
