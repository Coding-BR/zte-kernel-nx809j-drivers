
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007960 <syna_cdev_write>:
    7960: d503233f     	paciasp
    7964: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    7968: f9000bf5     	str	x21, [sp, #0x10]
    796c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7970: 910003fd     	mov	x29, sp
    7974: b4000282     	cbz	x2, 0x79c4 <syna_cdev_write+0x64>
    7978: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		0000000000007978:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    797c: 91000000     	add	x0, x0, #0x0
		000000000000797c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    7980: aa0203f3     	mov	x19, x2
    7984: f8450408     	ldr	x8, [x0], #0x50
    7988: aa0103f4     	mov	x20, x1
    798c: f9405515     	ldr	x21, [x8, #0xa8]
    7990: 94000000     	bl	0x7990 <syna_cdev_write+0x30>
		0000000000007990:  R_AARCH64_CALL26	mutex_lock
    7994: 92407e62     	and	x2, x19, #0xffffffff
    7998: aa1503e0     	mov	x0, x21
    799c: aa1403e1     	mov	x1, x20
    79a0: 2a1303e3     	mov	w3, w19
    79a4: 94000000     	bl	0x79a4 <syna_cdev_write+0x44>
		00000000000079a4:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_write
    79a8: 93407c14     	sxtw	x20, w0
    79ac: eb13029f     	cmp	x20, x19
    79b0: 54000181     	b.ne	0x79e0 <syna_cdev_write+0x80>
    79b4: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000079b4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
    79b8: 91000000     	add	x0, x0, #0x0
		00000000000079b8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
    79bc: 94000000     	bl	0x79bc <syna_cdev_write+0x5c>
		00000000000079bc:  R_AARCH64_CALL26	mutex_unlock
    79c0: 14000002     	b	0x79c8 <syna_cdev_write+0x68>
    79c4: aa1f03f4     	mov	x20, xzr
    79c8: aa1403e0     	mov	x0, x20
    79cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    79d0: f9400bf5     	ldr	x21, [sp, #0x10]
    79d4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    79d8: d50323bf     	autiasp
    79dc: d65f03c0     	ret
    79e0: aa0003e3     	mov	x3, x0
    79e4: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000079e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4185
    79e8: 91000000     	add	x0, x0, #0x0
		00000000000079e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4185
    79ec: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000079ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6eab
    79f0: 91000021     	add	x1, x1, #0x0
		00000000000079f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6eab
    79f4: 2a1303e2     	mov	w2, w19
    79f8: 94000000     	bl	0x79f8 <syna_cdev_write+0x98>
		00000000000079f8:  R_AARCH64_CALL26	_printk
    79fc: 17ffffee     	b	0x79b4 <syna_cdev_write+0x54>
