
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009b30 <syna_cdev_read>:
    9b30: d503233f     	paciasp
    9b34: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9b38: f9000bf5     	str	x21, [sp, #0x10]
    9b3c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9b40: 910003fd     	mov	x29, sp
    9b44: b4000282     	cbz	x2, 0x9b94 <syna_cdev_read+0x64>
    9b48: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009b48:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    9b4c: 91000000     	add	x0, x0, #0x0
		0000000000009b4c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    9b50: aa0203f3     	mov	x19, x2
    9b54: f8450408     	ldr	x8, [x0], #0x50
    9b58: aa0103f4     	mov	x20, x1
    9b5c: f9405515     	ldr	x21, [x8, #0xa8]
    9b60: 94000000     	bl	0x9b60 <syna_cdev_read+0x30>
		0000000000009b60:  R_AARCH64_CALL26	mutex_lock
    9b64: 92407e62     	and	x2, x19, #0xffffffff
    9b68: aa1503e0     	mov	x0, x21
    9b6c: aa1403e1     	mov	x1, x20
    9b70: 2a1303e3     	mov	w3, w19
    9b74: 94000000     	bl	0x9b74 <syna_cdev_read+0x44>
		0000000000009b74:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_read
    9b78: 93407c14     	sxtw	x20, w0
    9b7c: eb13029f     	cmp	x20, x19
    9b80: 54000181     	b.ne	0x9bb0 <syna_cdev_read+0x80>
    9b84: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009b84:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
    9b88: 91000000     	add	x0, x0, #0x0
		0000000000009b88:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
    9b8c: 94000000     	bl	0x9b8c <syna_cdev_read+0x5c>
		0000000000009b8c:  R_AARCH64_CALL26	mutex_unlock
    9b90: 14000002     	b	0x9b98 <syna_cdev_read+0x68>
    9b94: aa1f03f4     	mov	x20, xzr
    9b98: aa1403e0     	mov	x0, x20
    9b9c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9ba0: f9400bf5     	ldr	x21, [sp, #0x10]
    9ba4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9ba8: d50323bf     	autiasp
    9bac: d65f03c0     	ret
    9bb0: aa0003e3     	mov	x3, x0
    9bb4: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a637
    9bb8: 91000000     	add	x0, x0, #0x0
		0000000000009bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a637
    9bbc: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177bb
    9bc0: 91000021     	add	x1, x1, #0x0
		0000000000009bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177bb
    9bc4: 2a1303e2     	mov	w2, w19
    9bc8: 94000000     	bl	0x9bc8 <syna_cdev_read+0x98>
		0000000000009bc8:  R_AARCH64_CALL26	_printk
    9bcc: 17ffffee     	b	0x9b84 <syna_cdev_read+0x54>
