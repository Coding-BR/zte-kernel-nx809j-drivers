
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029d38 <syna_tcm_buf_copy>:
   29d38: d503233f     	paciasp
   29d3c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   29d40: f9000bf7     	str	x23, [sp, #0x10]
   29d44: a90257f6     	stp	x22, x21, [sp, #0x20]
   29d48: a9034ff4     	stp	x20, x19, [sp, #0x30]
   29d4c: 910003fd     	mov	x29, sp
   29d50: 39410002     	ldrb	w2, [x0, #0x40]
   29d54: aa0003f3     	mov	x19, x0
   29d58: aa0103f4     	mov	x20, x1
   29d5c: 350009e2     	cbnz	w2, 0x29e98 <syna_tcm_buf_copy+0x160>
   29d60: 91004260     	add	x0, x19, #0x10
   29d64: 94000000     	bl	0x29d64 <syna_tcm_buf_copy+0x2c>
		0000000000029d64:  R_AARCH64_CALL26	mutex_lock
   29d68: 39410268     	ldrb	w8, [x19, #0x40]
   29d6c: 11000508     	add	w8, w8, #0x1
   29d70: 39010268     	strb	w8, [x19, #0x40]
   29d74: 39410282     	ldrb	w2, [x20, #0x40]
   29d78: 350009c2     	cbnz	w2, 0x29eb0 <syna_tcm_buf_copy+0x178>
   29d7c: 91004280     	add	x0, x20, #0x10
   29d80: 94000000     	bl	0x29d80 <syna_tcm_buf_copy+0x48>
		0000000000029d80:  R_AARCH64_CALL26	mutex_lock
   29d84: 39410288     	ldrb	w8, [x20, #0x40]
   29d88: b9400e95     	ldr	w21, [x20, #0xc]
   29d8c: 11000508     	add	w8, w8, #0x1
   29d90: 39010288     	strb	w8, [x20, #0x40]
   29d94: b9400a63     	ldr	w3, [x19, #0x8]
   29d98: 6b15007f     	cmp	w3, w21
   29d9c: 540003c2     	b.hs	0x29e14 <syna_tcm_buf_copy+0xdc>
   29da0: 110006b6     	add	w22, w21, #0x1
   29da4: f9400260     	ldr	x0, [x19]
   29da8: 6b16007f     	cmp	w3, w22
   29dac: 54000262     	b.hs	0x29df8 <syna_tcm_buf_copy+0xc0>
   29db0: b40000c0     	cbz	x0, 0x29dc8 <syna_tcm_buf_copy+0x90>
   29db4: aa0003f7     	mov	x23, x0
   29db8: 94000000     	bl	0x29db8 <syna_tcm_buf_copy+0x80>
		0000000000029db8:  R_AARCH64_CALL26	syna_request_managed_device
   29dbc: b4000c60     	cbz	x0, 0x29f48 <syna_tcm_buf_copy+0x210>
   29dc0: aa1703e1     	mov	x1, x23
   29dc4: 94000000     	bl	0x29dc4 <syna_tcm_buf_copy+0x8c>
		0000000000029dc4:  R_AARCH64_CALL26	devm_kfree
   29dc8: 94000000     	bl	0x29dc8 <syna_tcm_buf_copy+0x90>
		0000000000029dc8:  R_AARCH64_CALL26	syna_request_managed_device
   29dcc: b4000cc0     	cbz	x0, 0x29f64 <syna_tcm_buf_copy+0x22c>
   29dd0: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   29dd4: 6b0802bf     	cmp	w21, w8
   29dd8: 54000b22     	b.hs	0x29f3c <syna_tcm_buf_copy+0x204>
   29ddc: aa1603e1     	mov	x1, x22
   29de0: 5281b802     	mov	w2, #0xdc0              // =3520
   29de4: 94000000     	bl	0x29de4 <syna_tcm_buf_copy+0xac>
		0000000000029de4:  R_AARCH64_CALL26	devm_kmalloc
   29de8: f9000260     	str	x0, [x19]
   29dec: b4000c80     	cbz	x0, 0x29f7c <syna_tcm_buf_copy+0x244>
   29df0: b9000a76     	str	w22, [x19, #0x8]
   29df4: 14000002     	b	0x29dfc <syna_tcm_buf_copy+0xc4>
   29df8: aa0303f6     	mov	x22, x3
   29dfc: 2a1f03e1     	mov	w1, wzr
   29e00: aa1603e2     	mov	x2, x22
   29e04: 94000000     	bl	0x29e04 <syna_tcm_buf_copy+0xcc>
		0000000000029e04:  R_AARCH64_CALL26	memset
   29e08: b9000e7f     	str	wzr, [x19, #0xc]
   29e0c: b9400a63     	ldr	w3, [x19, #0x8]
   29e10: b9400e95     	ldr	w21, [x20, #0xc]
   29e14: f9400260     	ldr	x0, [x19]
   29e18: b4000860     	cbz	x0, 0x29f24 <syna_tcm_buf_copy+0x1ec>
   29e1c: f9400281     	ldr	x1, [x20]
   29e20: b4000821     	cbz	x1, 0x29f24 <syna_tcm_buf_copy+0x1ec>
   29e24: b9400a82     	ldr	w2, [x20, #0x8]
   29e28: 6b0302bf     	cmp	w21, w3
   29e2c: 540006e8     	b.hi	0x29f08 <syna_tcm_buf_copy+0x1d0>
   29e30: 6b0202bf     	cmp	w21, w2
   29e34: 540006a8     	b.hi	0x29f08 <syna_tcm_buf_copy+0x1d0>
   29e38: 2a1503e2     	mov	w2, w21
   29e3c: 94000000     	bl	0x29e3c <syna_tcm_buf_copy+0x104>
		0000000000029e3c:  R_AARCH64_CALL26	memcpy
   29e40: b9400e88     	ldr	w8, [x20, #0xc]
   29e44: b9000e68     	str	w8, [x19, #0xc]
   29e48: 39410282     	ldrb	w2, [x20, #0x40]
   29e4c: 7100045f     	cmp	w2, #0x1
   29e50: 540004c1     	b.ne	0x29ee8 <syna_tcm_buf_copy+0x1b0>
   29e54: 2a1f03e8     	mov	w8, wzr
   29e58: 91004280     	add	x0, x20, #0x10
   29e5c: 39010288     	strb	w8, [x20, #0x40]
   29e60: 94000000     	bl	0x29e60 <syna_tcm_buf_copy+0x128>
		0000000000029e60:  R_AARCH64_CALL26	mutex_unlock
   29e64: 39410262     	ldrb	w2, [x19, #0x40]
   29e68: 7100045f     	cmp	w2, #0x1
   29e6c: 540002e1     	b.ne	0x29ec8 <syna_tcm_buf_copy+0x190>
   29e70: 2a1f03e8     	mov	w8, wzr
   29e74: 91004260     	add	x0, x19, #0x10
   29e78: 39010268     	strb	w8, [x19, #0x40]
   29e7c: 94000000     	bl	0x29e7c <syna_tcm_buf_copy+0x144>
		0000000000029e7c:  R_AARCH64_CALL26	mutex_unlock
   29e80: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29e84: f9400bf7     	ldr	x23, [sp, #0x10]
   29e88: a94257f6     	ldp	x22, x21, [sp, #0x20]
   29e8c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   29e90: d50323bf     	autiasp
   29e94: d65f03c0     	ret
   29e98: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af5b
   29e9c: 91000000     	add	x0, x0, #0x0
		0000000000029e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af5b
   29ea0: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af8b
   29ea4: 91000021     	add	x1, x1, #0x0
		0000000000029ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af8b
   29ea8: 94000000     	bl	0x29ea8 <syna_tcm_buf_copy+0x170>
		0000000000029ea8:  R_AARCH64_CALL26	_printk
   29eac: 17ffffad     	b	0x29d60 <syna_tcm_buf_copy+0x28>
   29eb0: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af5b
   29eb4: 91000000     	add	x0, x0, #0x0
		0000000000029eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af5b
   29eb8: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af8b
   29ebc: 91000021     	add	x1, x1, #0x0
		0000000000029ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af8b
   29ec0: 94000000     	bl	0x29ec0 <syna_tcm_buf_copy+0x188>
		0000000000029ec0:  R_AARCH64_CALL26	_printk
   29ec4: 17ffffae     	b	0x29d7c <syna_tcm_buf_copy+0x44>
   29ec8: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af5b
   29ecc: 91000000     	add	x0, x0, #0x0
		0000000000029ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af5b
   29ed0: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d56b
   29ed4: 91000021     	add	x1, x1, #0x0
		0000000000029ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d56b
   29ed8: 94000000     	bl	0x29ed8 <syna_tcm_buf_copy+0x1a0>
		0000000000029ed8:  R_AARCH64_CALL26	_printk
   29edc: 39410268     	ldrb	w8, [x19, #0x40]
   29ee0: 51000508     	sub	w8, w8, #0x1
   29ee4: 17ffffe4     	b	0x29e74 <syna_tcm_buf_copy+0x13c>
   29ee8: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af5b
   29eec: 91000000     	add	x0, x0, #0x0
		0000000000029eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af5b
   29ef0: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d56b
   29ef4: 91000021     	add	x1, x1, #0x0
		0000000000029ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d56b
   29ef8: 94000000     	bl	0x29ef8 <syna_tcm_buf_copy+0x1c0>
		0000000000029ef8:  R_AARCH64_CALL26	_printk
   29efc: 39410288     	ldrb	w8, [x20, #0x40]
   29f00: 51000508     	sub	w8, w8, #0x1
   29f04: 17ffffd5     	b	0x29e58 <syna_tcm_buf_copy+0x120>
   29f08: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b97f
   29f0c: 91000000     	add	x0, x0, #0x0
		0000000000029f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b97f
   29f10: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18041
   29f14: 91000021     	add	x1, x1, #0x0
		0000000000029f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18041
   29f18: 2a1503e4     	mov	w4, w21
   29f1c: 94000000     	bl	0x29f1c <syna_tcm_buf_copy+0x1e4>
		0000000000029f1c:  R_AARCH64_CALL26	_printk
   29f20: b9400e95     	ldr	w21, [x20, #0xc]
   29f24: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956f
   29f28: 91000000     	add	x0, x0, #0x0
		0000000000029f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956f
   29f2c: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dca
   29f30: 91000021     	add	x1, x1, #0x0
		0000000000029f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dca
   29f34: 2a1503e2     	mov	w2, w21
   29f38: 1400001e     	b	0x29fb0 <syna_tcm_buf_copy+0x278>
   29f3c: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af9d
   29f40: 91000000     	add	x0, x0, #0x0
		0000000000029f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af9d
   29f44: 1400000a     	b	0x29f6c <syna_tcm_buf_copy+0x234>
   29f48: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf9a
   29f4c: 91000000     	add	x0, x0, #0x0
		0000000000029f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf9a
   29f50: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c923
   29f54: 91000021     	add	x1, x1, #0x0
		0000000000029f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c923
   29f58: 94000000     	bl	0x29f58 <syna_tcm_buf_copy+0x220>
		0000000000029f58:  R_AARCH64_CALL26	_printk
   29f5c: 94000000     	bl	0x29f5c <syna_tcm_buf_copy+0x224>
		0000000000029f5c:  R_AARCH64_CALL26	syna_request_managed_device
   29f60: b5fff380     	cbnz	x0, 0x29dd0 <syna_tcm_buf_copy+0x98>
   29f64: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf9a
   29f68: 91000000     	add	x0, x0, #0x0
		0000000000029f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf9a
   29f6c: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c5e
   29f70: 91000021     	add	x1, x1, #0x0
		0000000000029f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c5e
   29f74: 94000000     	bl	0x29f74 <syna_tcm_buf_copy+0x23c>
		0000000000029f74:  R_AARCH64_CALL26	_printk
   29f78: f900027f     	str	xzr, [x19]
   29f7c: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a64d
   29f80: 91000000     	add	x0, x0, #0x0
		0000000000029f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a64d
   29f84: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2cc
   29f88: 91000021     	add	x1, x1, #0x0
		0000000000029f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2cc
   29f8c: 2a1603e2     	mov	w2, w22
   29f90: 94000000     	bl	0x29f90 <syna_tcm_buf_copy+0x258>
		0000000000029f90:  R_AARCH64_CALL26	_printk
   29f94: f900067f     	str	xzr, [x19, #0x8]
   29f98: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac31
   29f9c: 91000000     	add	x0, x0, #0x0
		0000000000029f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac31
   29fa0: b9400e88     	ldr	w8, [x20, #0xc]
   29fa4: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dca
   29fa8: 91000021     	add	x1, x1, #0x0
		0000000000029fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dca
   29fac: 11000502     	add	w2, w8, #0x1
   29fb0: 94000000     	bl	0x29fb0 <syna_tcm_buf_copy+0x278>
		0000000000029fb0:  R_AARCH64_CALL26	_printk
   29fb4: 17ffffa5     	b	0x29e48 <syna_tcm_buf_copy+0x110>
