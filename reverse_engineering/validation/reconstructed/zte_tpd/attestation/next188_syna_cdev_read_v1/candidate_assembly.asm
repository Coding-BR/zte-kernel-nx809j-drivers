
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000075a8 <syna_cdev_read>:
    75a8: d503233f     	paciasp
    75ac: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    75b0: f9000bf5     	str	x21, [sp, #0x10]
    75b4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    75b8: 910003fd     	mov	x29, sp
    75bc: b4000282     	cbz	x2, 0x760c <syna_cdev_read+0x64>
    75c0: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000075c0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    75c4: 91000000     	add	x0, x0, #0x0
		00000000000075c4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    75c8: aa0203f3     	mov	x19, x2
    75cc: f8450408     	ldr	x8, [x0], #0x50
    75d0: aa0103f4     	mov	x20, x1
    75d4: f9405515     	ldr	x21, [x8, #0xa8]
    75d8: 94000000     	bl	0x75d8 <syna_cdev_read+0x30>
		00000000000075d8:  R_AARCH64_CALL26	mutex_lock
    75dc: 92407e62     	and	x2, x19, #0xffffffff
    75e0: aa1503e0     	mov	x0, x21
    75e4: aa1403e1     	mov	x1, x20
    75e8: 2a1303e3     	mov	w3, w19
    75ec: 94000000     	bl	0x75ec <syna_cdev_read+0x44>
		00000000000075ec:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_read
    75f0: 93407c14     	sxtw	x20, w0
    75f4: eb13029f     	cmp	x20, x19
    75f8: 54000181     	b.ne	0x7628 <syna_cdev_read+0x80>
    75fc: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000075fc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
    7600: 91000000     	add	x0, x0, #0x0
		0000000000007600:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
    7604: 94000000     	bl	0x7604 <syna_cdev_read+0x5c>
		0000000000007604:  R_AARCH64_CALL26	mutex_unlock
    7608: 14000002     	b	0x7610 <syna_cdev_read+0x68>
    760c: aa1f03f4     	mov	x20, xzr
    7610: aa1403e0     	mov	x0, x20
    7614: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7618: f9400bf5     	ldr	x21, [sp, #0x10]
    761c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    7620: d50323bf     	autiasp
    7624: d65f03c0     	ret
    7628: aa0003e3     	mov	x3, x0
    762c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		000000000000762c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4148
    7630: 91000000     	add	x0, x0, #0x0
		0000000000007630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4148
    7634: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x1ac>
		0000000000007634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x736
    7638: 91000021     	add	x1, x1, #0x0
		0000000000007638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x736
    763c: 2a1303e2     	mov	w2, w19
    7640: 94000000     	bl	0x7640 <syna_cdev_read+0x98>
		0000000000007640:  R_AARCH64_CALL26	_printk
    7644: 17ffffee     	b	0x75fc <syna_cdev_read+0x54>
