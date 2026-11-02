
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003500 <aw22xxx_task_irq_store>:
    3500: d503233f     	paciasp
    3504: d100c3ff     	sub	sp, sp, #0x30
    3508: a9017bfd     	stp	x29, x30, [sp, #0x10]
    350c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3510: 910043fd     	add	x29, sp, #0x10
    3514: d5384109     	mrs	x9, SP_EL0
    3518: aa0203e8     	mov	x8, x2
    351c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000351c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142e
    3520: 91000021     	add	x1, x1, #0x0
		0000000000003520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142e
    3524: f9438929     	ldr	x9, [x9, #0x710]
    3528: 910013e2     	add	x2, sp, #0x4
    352c: aa0303f3     	mov	x19, x3
    3530: f90007e9     	str	x9, [sp, #0x8]
    3534: f9404c14     	ldr	x20, [x0, #0x98]
    3538: aa0803e0     	mov	x0, x8
    353c: b90007ff     	str	wzr, [sp, #0x4]
    3540: 94000000     	bl	0x3540 <aw22xxx_task_irq_store+0x40>
		0000000000003540:  R_AARCH64_CALL26	sscanf
    3544: 7100041f     	cmp	w0, #0x1
    3548: 54000141     	b.ne	0x3570 <aw22xxx_task_irq_store+0x70>
    354c: b94007e3     	ldr	w3, [sp, #0x4]
    3550: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb18
    3554: 91000000     	add	x0, x0, #0x0
		0000000000003554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb18
    3558: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    355c: 91000021     	add	x1, x1, #0x0
		000000000000355c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    3560: 52812582     	mov	w2, #0x92c              // =2348
    3564: b902ea83     	str	w3, [x20, #0x2e8]
    3568: 94000000     	bl	0x3568 <aw22xxx_task_irq_store+0x68>
		0000000000003568:  R_AARCH64_CALL26	_printk
    356c: 14000008     	b	0x358c <aw22xxx_task_irq_store+0x8c>
    3570: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b
    3574: 91000000     	add	x0, x0, #0x0
		0000000000003574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b
    3578: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
    357c: 91000021     	add	x1, x1, #0x0
		000000000000357c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
    3580: 528124e2     	mov	w2, #0x927              // =2343
    3584: 94000000     	bl	0x3584 <aw22xxx_task_irq_store+0x84>
		0000000000003584:  R_AARCH64_CALL26	_printk
    3588: 928002b3     	mov	x19, #-0x16             // =-22
    358c: d5384108     	mrs	x8, SP_EL0
    3590: f9438908     	ldr	x8, [x8, #0x710]
    3594: f94007e9     	ldr	x9, [sp, #0x8]
    3598: eb09011f     	cmp	x8, x9
    359c: 540000e1     	b.ne	0x35b8 <aw22xxx_task_irq_store+0xb8>
    35a0: aa1303e0     	mov	x0, x19
    35a4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    35a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    35ac: 9100c3ff     	add	sp, sp, #0x30
    35b0: d50323bf     	autiasp
    35b4: d65f03c0     	ret
    35b8: 94000000     	bl	0x35b8 <aw22xxx_task_irq_store+0xb8>
		00000000000035b8:  R_AARCH64_CALL26	__stack_chk_fail
