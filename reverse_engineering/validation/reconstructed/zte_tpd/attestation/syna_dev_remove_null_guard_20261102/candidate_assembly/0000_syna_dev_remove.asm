
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b070 <syna_dev_remove>:
    b070: d503233f     	paciasp
    b074: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b078: a9014ff4     	stp	x20, x19, [sp, #0x10]
    b07c: 910003fd     	mov	x29, sp
    b080: b4000060     	cbz	x0, 0xb08c <syna_dev_remove+0x1c>
    b084: f9405413     	ldr	x19, [x0, #0xa8]
    b088: b50000f3     	cbnz	x19, 0xb0a4 <syna_dev_remove+0x34>
    b08c: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b08c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a99a
    b090: 91000000     	add	x0, x0, #0x0
		000000000000b090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a99a
    b094: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18101
    b098: 91000021     	add	x1, x1, #0x0
		000000000000b098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18101
    b09c: 94000000     	bl	0xb09c <syna_dev_remove+0x2c>
		000000000000b09c:  R_AARCH64_CALL26	_printk
    b0a0: 14000031     	b	0xb164 <syna_dev_remove+0xf4>
    b0a4: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b0a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18971
    b0a8: 91000000     	add	x0, x0, #0x0
		000000000000b0a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18971
    b0ac: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b0ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18101
    b0b0: 91000021     	add	x1, x1, #0x0
		000000000000b0b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18101
    b0b4: 94000000     	bl	0xb0b4 <syna_dev_remove+0x44>
		000000000000b0b4:  R_AARCH64_CALL26	_printk
    b0b8: 94000000     	bl	0xb0b8 <syna_dev_remove+0x48>
		000000000000b0b8:  R_AARCH64_CALL26	syna_cdev_quiesce
    b0bc: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b0bc:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
    b0c0: f9400108     	ldr	x8, [x8]
		000000000000b0c0:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
    b0c4: b4000088     	cbz	x8, 0xb0d4 <syna_dev_remove+0x64>
    b0c8: f942aa60     	ldr	x0, [x19, #0x550]
    b0cc: b4000040     	cbz	x0, 0xb0d4 <syna_dev_remove+0x64>
    b0d0: 94000000     	bl	0xb0d0 <syna_dev_remove+0x60>
		000000000000b0d0:  R_AARCH64_CALL26	panel_event_notifier_unregister
    b0d4: aa1303e0     	mov	x0, x19
    b0d8: 94000000     	bl	0xb0d8 <syna_dev_remove+0x68>
		000000000000b0d8:  R_AARCH64_CALL26	syna_sysfs_remove_dir
    b0dc: aa1303e0     	mov	x0, x19
    b0e0: 94000000     	bl	0xb0e0 <syna_dev_remove+0x70>
		000000000000b0e0:  R_AARCH64_CALL26	syna_dev_helper_workqueue_stop
    b0e4: aa0003f4     	mov	x20, x0
    b0e8: 9114a260     	add	x0, x19, #0x528
    b0ec: 94000000     	bl	0xb0ec <syna_dev_remove+0x7c>
		000000000000b0ec:  R_AARCH64_CALL26	cancel_work_sync
    b0f0: b40000b4     	cbz	x20, 0xb104 <syna_dev_remove+0x94>
    b0f4: aa1403e0     	mov	x0, x20
    b0f8: 94000000     	bl	0xb0f8 <syna_dev_remove+0x88>
		000000000000b0f8:  R_AARCH64_CALL26	__flush_workqueue
    b0fc: aa1403e0     	mov	x0, x20
    b100: 94000000     	bl	0xb100 <syna_dev_remove+0x90>
		000000000000b100:  R_AARCH64_CALL26	destroy_workqueue
    b104: aa1303e0     	mov	x0, x19
    b108: 94000000     	bl	0xb108 <syna_dev_remove+0x98>
		000000000000b108:  R_AARCH64_CALL26	syna_cdev_remove
    b10c: aa1303e0     	mov	x0, x19
    b110: 94000000     	bl	0xb110 <syna_dev_remove+0xa0>
		000000000000b110:  R_AARCH64_CALL26	syna_dev_disconnect
    b114: f942d674     	ldr	x20, [x19, #0x5a8]
    b118: b40000b4     	cbz	x20, 0xb12c <syna_dev_remove+0xbc>
    b11c: 94000000     	bl	0xb11c <syna_dev_remove+0xac>
		000000000000b11c:  R_AARCH64_CALL26	syna_request_managed_device
    b120: b4000360     	cbz	x0, 0xb18c <syna_dev_remove+0x11c>
    b124: aa1403e1     	mov	x1, x20
    b128: 94000000     	bl	0xb128 <syna_dev_remove+0xb8>
		000000000000b128:  R_AARCH64_CALL26	devm_kfree
    b12c: 394ba262     	ldrb	w2, [x19, #0x2e8]
    b130: 350003c2     	cbnz	w2, 0xb1a8 <syna_dev_remove+0x138>
    b134: f9415674     	ldr	x20, [x19, #0x2a8]
    b138: 94000000     	bl	0xb138 <syna_dev_remove+0xc8>
		000000000000b138:  R_AARCH64_CALL26	syna_request_managed_device
    b13c: b40001c0     	cbz	x0, 0xb174 <syna_dev_remove+0x104>
    b140: b4000074     	cbz	x20, 0xb14c <syna_dev_remove+0xdc>
    b144: aa1403e1     	mov	x1, x20
    b148: 94000000     	bl	0xb148 <syna_dev_remove+0xd8>
		000000000000b148:  R_AARCH64_CALL26	devm_kfree
    b14c: f9423260     	ldr	x0, [x19, #0x460]
    b150: f9015a7f     	str	xzr, [x19, #0x2b0]
    b154: 390ba27f     	strb	wzr, [x19, #0x2e8]
    b158: 94000000     	bl	0xb158 <syna_dev_remove+0xe8>
		000000000000b158:  R_AARCH64_CALL26	kfree
    b15c: f9400260     	ldr	x0, [x19]
    b160: 94000000     	bl	0xb160 <syna_dev_remove+0xf0>
		000000000000b160:  R_AARCH64_CALL26	syna_tcm_remove_device
    b164: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    b168: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b16c: d50323bf     	autiasp
    b170: d65f03c0     	ret
    b174: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf45
    b178: 91000000     	add	x0, x0, #0x0
		000000000000b178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf45
    b17c: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b95e
    b180: 91000021     	add	x1, x1, #0x0
		000000000000b180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b95e
    b184: 94000000     	bl	0xb184 <syna_dev_remove+0x114>
		000000000000b184:  R_AARCH64_CALL26	_printk
    b188: 17fffff1     	b	0xb14c <syna_dev_remove+0xdc>
    b18c: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b18c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf45
    b190: 91000000     	add	x0, x0, #0x0
		000000000000b190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf45
    b194: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b95e
    b198: 91000021     	add	x1, x1, #0x0
		000000000000b198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b95e
    b19c: 94000000     	bl	0xb19c <syna_dev_remove+0x12c>
		000000000000b19c:  R_AARCH64_CALL26	_printk
    b1a0: 394ba262     	ldrb	w2, [x19, #0x2e8]
    b1a4: 34fffc82     	cbz	w2, 0xb134 <syna_dev_remove+0xc4>
    b1a8: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b1a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188da
    b1ac: 91000000     	add	x0, x0, #0x0
		000000000000b1ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188da
    b1b0: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x8c>
		000000000000b1b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a129
    b1b4: 91000021     	add	x1, x1, #0x0
		000000000000b1b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a129
    b1b8: 94000000     	bl	0xb1b8 <syna_dev_remove+0x148>
		000000000000b1b8:  R_AARCH64_CALL26	_printk
    b1bc: 17ffffde     	b	0xb134 <syna_dev_remove+0xc4>
