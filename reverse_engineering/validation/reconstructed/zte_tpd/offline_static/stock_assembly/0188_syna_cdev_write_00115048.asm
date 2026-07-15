
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e7c0 <syna_cdev_write>:
    e7c0: d503233f     	paciasp
    e7c4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e7c8: f9000bf5     	str	x21, [sp, #0x10]
    e7cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e7d0: 910003fd     	mov	x29, sp
    e7d4: b4000282     	cbz	x2, 0xe824 <syna_cdev_write+0x64>
    e7d8: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e7d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
    e7dc: 91000000     	add	x0, x0, #0x0
		000000000000e7dc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c0
    e7e0: aa0203f3     	mov	x19, x2
    e7e4: f8450408     	ldr	x8, [x0], #0x50
    e7e8: aa0103f4     	mov	x20, x1
    e7ec: f9405515     	ldr	x21, [x8, #0xa8]
    e7f0: 94000000     	bl	0xe7f0 <syna_cdev_write+0x30>
		000000000000e7f0:  R_AARCH64_CALL26	mutex_lock
    e7f4: aa1503e0     	mov	x0, x21
    e7f8: aa1403e1     	mov	x1, x20
    e7fc: 2a1303e2     	mov	w2, w19
    e800: 2a1303e3     	mov	w3, w19
    e804: 94000a13     	bl	0x11050 <syna_cdev_ioctl_raw_write>
    e808: 93407c14     	sxtw	x20, w0
    e80c: eb13029f     	cmp	x20, x19
    e810: 54000181     	b.ne	0xe840 <syna_cdev_write+0x80>
    e814: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e814:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x810
    e818: 91000000     	add	x0, x0, #0x0
		000000000000e818:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x810
    e81c: 94000000     	bl	0xe81c <syna_cdev_write+0x5c>
		000000000000e81c:  R_AARCH64_CALL26	mutex_unlock
    e820: 14000002     	b	0xe828 <syna_cdev_write+0x68>
    e824: aa1f03f4     	mov	x20, xzr
    e828: aa1403e0     	mov	x0, x20
    e82c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e830: f9400bf5     	ldr	x21, [sp, #0x10]
    e834: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e838: d50323bf     	autiasp
    e83c: d65f03c0     	ret
    e840: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7633
    e844: 91000000     	add	x0, x0, #0x0
		000000000000e844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7633
    e848: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc15d
    e84c: 91000021     	add	x1, x1, #0x0
		000000000000e84c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc15d
    e850: 2a1303e2     	mov	w2, w19
    e854: 2a1403e3     	mov	w3, w20
    e858: 94000000     	bl	0xe858 <syna_cdev_write+0x98>
		000000000000e858:  R_AARCH64_CALL26	_printk
    e85c: 17ffffee     	b	0xe814 <syna_cdev_write+0x54>
