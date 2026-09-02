
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002624 <aw22xxx_create_proc_entry>:
    2624: d503233f     	paciasp
    2628: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    262c: 910003fd     	mov	x29, sp
    2630: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002630:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x140f
    2634: 91000000     	add	x0, x0, #0x0
		0000000000002634:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x140f
    2638: 90000003     	adrp	x3, 0x2000 <aw22xxx_irq+0x20>
		0000000000002638:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_awid
    263c: 91000063     	add	x3, x3, #0x0
		000000000000263c:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_awid
    2640: 52802481     	mov	w1, #0x124              // =292
    2644: aa1f03e2     	mov	x2, xzr
    2648: 94000000     	bl	0x2648 <aw22xxx_create_proc_entry+0x24>
		0000000000002648:  R_AARCH64_CALL26	proc_create
    264c: b50000a0     	cbnz	x0, 0x2660 <aw22xxx_create_proc_entry+0x3c>
    2650: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002650:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc8a
    2654: 91000000     	add	x0, x0, #0x0
		0000000000002654:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc8a
    2658: 94000000     	bl	0x2658 <aw22xxx_create_proc_entry+0x34>
		0000000000002658:  R_AARCH64_CALL26	_printk
    265c: 14000007     	b	0x2678 <aw22xxx_create_proc_entry+0x54>
    2660: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002660:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1596
    2664: 91000000     	add	x0, x0, #0x0
		0000000000002664:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1596
    2668: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002668:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x19c2
    266c: 91000021     	add	x1, x1, #0x0
		000000000000266c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x19c2
    2670: 52813862     	mov	w2, #0x9c3              // =2499
    2674: 94000000     	bl	0x2674 <aw22xxx_create_proc_entry+0x50>
		0000000000002674:  R_AARCH64_CALL26	_printk
    2678: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    267c: d50323bf     	autiasp
    2680: d65f03c0     	ret
