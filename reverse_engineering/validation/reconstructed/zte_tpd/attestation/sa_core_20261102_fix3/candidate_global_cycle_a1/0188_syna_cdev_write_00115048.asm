
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009d68 <syna_cdev_write>:
    9d68: d503233f     	paciasp
    9d6c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9d70: f9000bf5     	str	x21, [sp, #0x10]
    9d74: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9d78: 910003fd     	mov	x29, sp
    9d7c: b4000282     	cbz	x2, 0x9dcc <syna_cdev_write+0x64>
    9d80: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009d80:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    9d84: 91000000     	add	x0, x0, #0x0
		0000000000009d84:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    9d88: aa0203f3     	mov	x19, x2
    9d8c: f8450408     	ldr	x8, [x0], #0x50
    9d90: aa0103f4     	mov	x20, x1
    9d94: f9405515     	ldr	x21, [x8, #0xa8]
    9d98: 94000000     	bl	0x9d98 <syna_cdev_write+0x30>
		0000000000009d98:  R_AARCH64_CALL26	mutex_lock
    9d9c: 92407e62     	and	x2, x19, #0xffffffff
    9da0: aa1503e0     	mov	x0, x21
    9da4: aa1403e1     	mov	x1, x20
    9da8: 2a1303e3     	mov	w3, w19
    9dac: 94000000     	bl	0x9dac <syna_cdev_write+0x44>
		0000000000009dac:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_write
    9db0: 93407c14     	sxtw	x20, w0
    9db4: eb13029f     	cmp	x20, x19
    9db8: 54000181     	b.ne	0x9de8 <syna_cdev_write+0x80>
    9dbc: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009dbc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
    9dc0: 91000000     	add	x0, x0, #0x0
		0000000000009dc0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
    9dc4: 94000000     	bl	0x9dc4 <syna_cdev_write+0x5c>
		0000000000009dc4:  R_AARCH64_CALL26	mutex_unlock
    9dc8: 14000002     	b	0x9dd0 <syna_cdev_write+0x68>
    9dcc: aa1f03f4     	mov	x20, xzr
    9dd0: aa1403e0     	mov	x0, x20
    9dd4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9dd8: f9400bf5     	ldr	x21, [sp, #0x10]
    9ddc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9de0: d50323bf     	autiasp
    9de4: d65f03c0     	ret
    9de8: aa0003e3     	mov	x3, x0
    9dec: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a674
    9df0: 91000000     	add	x0, x0, #0x0
		0000000000009df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a674
    9df4: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6ce
    9df8: 91000021     	add	x1, x1, #0x0
		0000000000009df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6ce
    9dfc: 2a1303e2     	mov	w2, w19
    9e00: 94000000     	bl	0x9e00 <syna_cdev_write+0x98>
		0000000000009e00:  R_AARCH64_CALL26	_printk
    9e04: 17ffffee     	b	0x9dbc <syna_cdev_write+0x54>
