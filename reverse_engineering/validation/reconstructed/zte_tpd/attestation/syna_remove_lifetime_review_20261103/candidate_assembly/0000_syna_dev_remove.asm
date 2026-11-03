
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b078 <syna_dev_remove>:
    b078: d503233f     	paciasp
    b07c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b080: a9014ff4     	stp	x20, x19, [sp, #0x10]
    b084: 910003fd     	mov	x29, sp
    b088: b4000060     	cbz	x0, 0xb094 <syna_dev_remove+0x1c>
    b08c: f9405413     	ldr	x19, [x0, #0xa8]
    b090: b50000f3     	cbnz	x19, 0xb0ac <syna_dev_remove+0x34>
    b094: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a88c
    b098: 91000000     	add	x0, x0, #0x0
		000000000000b098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a88c
    b09c: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180ba
    b0a0: 91000021     	add	x1, x1, #0x0
		000000000000b0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180ba
    b0a4: 94000000     	bl	0xb0a4 <syna_dev_remove+0x2c>
		000000000000b0a4:  R_AARCH64_CALL26	_printk
    b0a8: 14000031     	b	0xb16c <syna_dev_remove+0xf4>
    b0ac: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b0ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1890d
    b0b0: 91000000     	add	x0, x0, #0x0
		000000000000b0b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1890d
    b0b4: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b0b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180ba
    b0b8: 91000021     	add	x1, x1, #0x0
		000000000000b0b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180ba
    b0bc: 94000000     	bl	0xb0bc <syna_dev_remove+0x44>
		000000000000b0bc:  R_AARCH64_CALL26	_printk
    b0c0: 94000000     	bl	0xb0c0 <syna_dev_remove+0x48>
		000000000000b0c0:  R_AARCH64_CALL26	syna_cdev_quiesce
    b0c4: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b0c4:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    b0c8: f9400108     	ldr	x8, [x8]
		000000000000b0c8:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    b0cc: b4000088     	cbz	x8, 0xb0dc <syna_dev_remove+0x64>
    b0d0: f942aa60     	ldr	x0, [x19, #0x550]
    b0d4: b4000040     	cbz	x0, 0xb0dc <syna_dev_remove+0x64>
    b0d8: 94000000     	bl	0xb0d8 <syna_dev_remove+0x60>
		000000000000b0d8:  R_AARCH64_CALL26	panel_event_notifier_unregister
    b0dc: aa1303e0     	mov	x0, x19
    b0e0: 94000000     	bl	0xb0e0 <syna_dev_remove+0x68>
		000000000000b0e0:  R_AARCH64_CALL26	syna_sysfs_remove_dir
    b0e4: aa1303e0     	mov	x0, x19
    b0e8: 94000000     	bl	0xb0e8 <syna_dev_remove+0x70>
		000000000000b0e8:  R_AARCH64_CALL26	syna_dev_helper_workqueue_stop
    b0ec: aa0003f4     	mov	x20, x0
    b0f0: 9114a260     	add	x0, x19, #0x528
    b0f4: 94000000     	bl	0xb0f4 <syna_dev_remove+0x7c>
		000000000000b0f4:  R_AARCH64_CALL26	cancel_work_sync
    b0f8: b40000b4     	cbz	x20, 0xb10c <syna_dev_remove+0x94>
    b0fc: aa1403e0     	mov	x0, x20
    b100: 94000000     	bl	0xb100 <syna_dev_remove+0x88>
		000000000000b100:  R_AARCH64_CALL26	__flush_workqueue
    b104: aa1403e0     	mov	x0, x20
    b108: 94000000     	bl	0xb108 <syna_dev_remove+0x90>
		000000000000b108:  R_AARCH64_CALL26	destroy_workqueue
    b10c: aa1303e0     	mov	x0, x19
    b110: 94000000     	bl	0xb110 <syna_dev_remove+0x98>
		000000000000b110:  R_AARCH64_CALL26	syna_cdev_remove
    b114: aa1303e0     	mov	x0, x19
    b118: 94000000     	bl	0xb118 <syna_dev_remove+0xa0>
		000000000000b118:  R_AARCH64_CALL26	syna_dev_disconnect
    b11c: f942d674     	ldr	x20, [x19, #0x5a8]
    b120: b40000b4     	cbz	x20, 0xb134 <syna_dev_remove+0xbc>
    b124: 94000000     	bl	0xb124 <syna_dev_remove+0xac>
		000000000000b124:  R_AARCH64_CALL26	syna_request_managed_device
    b128: b4000360     	cbz	x0, 0xb194 <syna_dev_remove+0x11c>
    b12c: aa1403e1     	mov	x1, x20
    b130: 94000000     	bl	0xb130 <syna_dev_remove+0xb8>
		000000000000b130:  R_AARCH64_CALL26	devm_kfree
    b134: 394ba262     	ldrb	w2, [x19, #0x2e8]
    b138: 350003c2     	cbnz	w2, 0xb1b0 <syna_dev_remove+0x138>
    b13c: f9415674     	ldr	x20, [x19, #0x2a8]
    b140: 94000000     	bl	0xb140 <syna_dev_remove+0xc8>
		000000000000b140:  R_AARCH64_CALL26	syna_request_managed_device
    b144: b40001c0     	cbz	x0, 0xb17c <syna_dev_remove+0x104>
    b148: b4000074     	cbz	x20, 0xb154 <syna_dev_remove+0xdc>
    b14c: aa1403e1     	mov	x1, x20
    b150: 94000000     	bl	0xb150 <syna_dev_remove+0xd8>
		000000000000b150:  R_AARCH64_CALL26	devm_kfree
    b154: f9423260     	ldr	x0, [x19, #0x460]
    b158: f9015a7f     	str	xzr, [x19, #0x2b0]
    b15c: 390ba27f     	strb	wzr, [x19, #0x2e8]
    b160: 94000000     	bl	0xb160 <syna_dev_remove+0xe8>
		000000000000b160:  R_AARCH64_CALL26	kfree
    b164: f9400260     	ldr	x0, [x19]
    b168: 94000000     	bl	0xb168 <syna_dev_remove+0xf0>
		000000000000b168:  R_AARCH64_CALL26	syna_tcm_remove_device
    b16c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    b170: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b174: d50323bf     	autiasp
    b178: d65f03c0     	ret
    b17c: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdf1
    b180: 91000000     	add	x0, x0, #0x0
		000000000000b180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdf1
    b184: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b80a
    b188: 91000021     	add	x1, x1, #0x0
		000000000000b188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b80a
    b18c: 94000000     	bl	0xb18c <syna_dev_remove+0x114>
		000000000000b18c:  R_AARCH64_CALL26	_printk
    b190: 17fffff1     	b	0xb154 <syna_dev_remove+0xdc>
    b194: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdf1
    b198: 91000000     	add	x0, x0, #0x0
		000000000000b198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdf1
    b19c: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b19c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b80a
    b1a0: 91000021     	add	x1, x1, #0x0
		000000000000b1a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b80a
    b1a4: 94000000     	bl	0xb1a4 <syna_dev_remove+0x12c>
		000000000000b1a4:  R_AARCH64_CALL26	_printk
    b1a8: 394ba262     	ldrb	w2, [x19, #0x2e8]
    b1ac: 34fffc82     	cbz	w2, 0xb13c <syna_dev_remove+0xc4>
    b1b0: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b1b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18876
    b1b4: 91000000     	add	x0, x0, #0x0
		000000000000b1b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18876
    b1b8: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b1b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a05b
    b1bc: 91000021     	add	x1, x1, #0x0
		000000000000b1bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a05b
    b1c0: 94000000     	bl	0xb1c0 <syna_dev_remove+0x148>
		000000000000b1c0:  R_AARCH64_CALL26	_printk
    b1c4: 17ffffde     	b	0xb13c <syna_dev_remove+0xc4>
