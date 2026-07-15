
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000095d8 <tpd_report_work_deinit>:
    95d8: d503233f     	paciasp
    95dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    95e0: f9000bf3     	str	x19, [sp, #0x10]
    95e4: 910003fd     	mov	x29, sp
    95e8: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000095e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    95ec: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		00000000000095ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    95f0: 91000000     	add	x0, x0, #0x0
		00000000000095f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    95f4: f9400113     	ldr	x19, [x8]
		00000000000095f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    95f8: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		00000000000095f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa58d
    95fc: 91000021     	add	x1, x1, #0x0
		00000000000095fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa58d
    9600: 94000000     	bl	0x9600 <tpd_report_work_deinit+0x28>
		0000000000009600:  R_AARCH64_CALL26	_printk
    9604: 91130260     	add	x0, x19, #0x4c0
    9608: 94000000     	bl	0x9608 <tpd_report_work_deinit+0x30>
		0000000000009608:  R_AARCH64_CALL26	cancel_delayed_work_sync
    960c: 9114a260     	add	x0, x19, #0x528
    9610: 94000000     	bl	0x9610 <tpd_report_work_deinit+0x38>
		0000000000009610:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9614: 91164260     	add	x0, x19, #0x590
    9618: 94000000     	bl	0x9618 <tpd_report_work_deinit+0x40>
		0000000000009618:  R_AARCH64_CALL26	cancel_delayed_work_sync
    961c: 9117e260     	add	x0, x19, #0x5f8
    9620: 94000000     	bl	0x9620 <tpd_report_work_deinit+0x48>
		0000000000009620:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9624: 91198260     	add	x0, x19, #0x660
    9628: 94000000     	bl	0x9628 <tpd_report_work_deinit+0x50>
		0000000000009628:  R_AARCH64_CALL26	cancel_delayed_work_sync
    962c: 911b2260     	add	x0, x19, #0x6c8
    9630: 94000000     	bl	0x9630 <tpd_report_work_deinit+0x58>
		0000000000009630:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9634: 911cc260     	add	x0, x19, #0x730
    9638: 94000000     	bl	0x9638 <tpd_report_work_deinit+0x60>
		0000000000009638:  R_AARCH64_CALL26	cancel_delayed_work_sync
    963c: 911e6260     	add	x0, x19, #0x798
    9640: 94000000     	bl	0x9640 <tpd_report_work_deinit+0x68>
		0000000000009640:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9644: 91200260     	add	x0, x19, #0x800
    9648: 94000000     	bl	0x9648 <tpd_report_work_deinit+0x70>
		0000000000009648:  R_AARCH64_CALL26	cancel_delayed_work_sync
    964c: 9121a260     	add	x0, x19, #0x868
    9650: 94000000     	bl	0x9650 <tpd_report_work_deinit+0x78>
		0000000000009650:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9654: f9400bf3     	ldr	x19, [sp, #0x10]
    9658: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    965c: d50323bf     	autiasp
    9660: d65f03c0     	ret
