
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bd34 <syna_dev_remove>:
    bd34: d503233f     	paciasp
    bd38: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bd3c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bd40: 910003fd     	mov	x29, sp
    bd44: f9405413     	ldr	x19, [x0, #0xa8]
    bd48: b50000d3     	cbnz	x19, 0xbd60 <syna_dev_remove+0x2c>
    bd4c: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bd4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7aed
    bd50: 91000000     	add	x0, x0, #0x0
		000000000000bd50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7aed
    bd54: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bd54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2019
    bd58: 91000021     	add	x1, x1, #0x0
		000000000000bd58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2019
    bd5c: 94000000     	bl	0xbd5c <syna_dev_remove+0x28>
		000000000000bd5c:  R_AARCH64_CALL26	_printk
    bd60: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bd60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
    bd64: 91000000     	add	x0, x0, #0x0
		000000000000bd64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
    bd68: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bd68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2019
    bd6c: 91000021     	add	x1, x1, #0x0
		000000000000bd6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2019
    bd70: 94000000     	bl	0xbd70 <syna_dev_remove+0x3c>
		000000000000bd70:  R_AARCH64_CALL26	_printk
    bd74: 9114a260     	add	x0, x19, #0x528
    bd78: 94000000     	bl	0xbd78 <syna_dev_remove+0x44>
		000000000000bd78:  R_AARCH64_CALL26	cancel_work_sync
    bd7c: f942a660     	ldr	x0, [x19, #0x548]
    bd80: 94000000     	bl	0xbd80 <syna_dev_remove+0x4c>
		000000000000bd80:  R_AARCH64_CALL26	__flush_workqueue
    bd84: f942a660     	ldr	x0, [x19, #0x548]
    bd88: 94000000     	bl	0xbd88 <syna_dev_remove+0x54>
		000000000000bd88:  R_AARCH64_CALL26	destroy_workqueue
    bd8c: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bd8c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7a0
    bd90: f9400108     	ldr	x8, [x8]
		000000000000bd90:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7a0
    bd94: b4000088     	cbz	x8, 0xbda4 <syna_dev_remove+0x70>
    bd98: f942aa60     	ldr	x0, [x19, #0x550]
    bd9c: b4000040     	cbz	x0, 0xbda4 <syna_dev_remove+0x70>
    bda0: 94000000     	bl	0xbda0 <syna_dev_remove+0x6c>
		000000000000bda0:  R_AARCH64_CALL26	panel_event_notifier_unregister
    bda4: aa1303e0     	mov	x0, x19
    bda8: 94000000     	bl	0xbda8 <syna_dev_remove+0x74>
		000000000000bda8:  R_AARCH64_CALL26	syna_sysfs_remove_dir
    bdac: aa1303e0     	mov	x0, x19
    bdb0: 94000000     	bl	0xbdb0 <syna_dev_remove+0x7c>
		000000000000bdb0:  R_AARCH64_CALL26	syna_cdev_remove
    bdb4: aa1303e0     	mov	x0, x19
    bdb8: 94000131     	bl	0xc27c <syna_dev_disconnect>
    bdbc: f942d674     	ldr	x20, [x19, #0x5a8]
    bdc0: b40000b4     	cbz	x20, 0xbdd4 <syna_dev_remove+0xa0>
    bdc4: 94000000     	bl	0xbdc4 <syna_dev_remove+0x90>
		000000000000bdc4:  R_AARCH64_CALL26	syna_request_managed_device
    bdc8: b4000360     	cbz	x0, 0xbe34 <syna_dev_remove+0x100>
    bdcc: aa1403e1     	mov	x1, x20
    bdd0: 94000000     	bl	0xbdd0 <syna_dev_remove+0x9c>
		000000000000bdd0:  R_AARCH64_CALL26	devm_kfree
    bdd4: 394ba262     	ldrb	w2, [x19, #0x2e8]
    bdd8: 350003c2     	cbnz	w2, 0xbe50 <syna_dev_remove+0x11c>
    bddc: f9415674     	ldr	x20, [x19, #0x2a8]
    bde0: 94000000     	bl	0xbde0 <syna_dev_remove+0xac>
		000000000000bde0:  R_AARCH64_CALL26	syna_request_managed_device
    bde4: b40001c0     	cbz	x0, 0xbe1c <syna_dev_remove+0xe8>
    bde8: b4000074     	cbz	x20, 0xbdf4 <syna_dev_remove+0xc0>
    bdec: aa1403e1     	mov	x1, x20
    bdf0: 94000000     	bl	0xbdf0 <syna_dev_remove+0xbc>
		000000000000bdf0:  R_AARCH64_CALL26	devm_kfree
    bdf4: f9423260     	ldr	x0, [x19, #0x460]
    bdf8: f9015a7f     	str	xzr, [x19, #0x2b0]
    bdfc: 390ba27f     	strb	wzr, [x19, #0x2e8]
    be00: 94000000     	bl	0xbe00 <syna_dev_remove+0xcc>
		000000000000be00:  R_AARCH64_CALL26	kfree
    be04: f9400260     	ldr	x0, [x19]
    be08: 94000000     	bl	0xbe08 <syna_dev_remove+0xd4>
		000000000000be08:  R_AARCH64_CALL26	syna_tcm_remove_device
    be0c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    be10: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    be14: d50323bf     	autiasp
    be18: d65f03c0     	ret
    be1c: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000be1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    be20: 91000000     	add	x0, x0, #0x0
		000000000000be20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    be24: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000be24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
    be28: 91000021     	add	x1, x1, #0x0
		000000000000be28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
    be2c: 94000000     	bl	0xbe2c <syna_dev_remove+0xf8>
		000000000000be2c:  R_AARCH64_CALL26	_printk
    be30: 17fffff1     	b	0xbdf4 <syna_dev_remove+0xc0>
    be34: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000be34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    be38: 91000000     	add	x0, x0, #0x0
		000000000000be38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    be3c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000be3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
    be40: 91000021     	add	x1, x1, #0x0
		000000000000be40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
    be44: 94000000     	bl	0xbe44 <syna_dev_remove+0x110>
		000000000000be44:  R_AARCH64_CALL26	_printk
    be48: 394ba262     	ldrb	w2, [x19, #0x2e8]
    be4c: 34fffc82     	cbz	w2, 0xbddc <syna_dev_remove+0xa8>
    be50: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000be50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
    be54: 91000000     	add	x0, x0, #0x0
		000000000000be54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
    be58: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000be58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
    be5c: 91000021     	add	x1, x1, #0x0
		000000000000be5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
    be60: 94000000     	bl	0xbe60 <syna_dev_remove+0x12c>
		000000000000be60:  R_AARCH64_CALL26	_printk
    be64: 17ffffde     	b	0xbddc <syna_dev_remove+0xa8>
