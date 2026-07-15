
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017bcc <syna_tcm_buf_copy>:
   17bcc: d503233f     	paciasp
   17bd0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   17bd4: f9000bf7     	str	x23, [sp, #0x10]
   17bd8: a90257f6     	stp	x22, x21, [sp, #0x20]
   17bdc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   17be0: 910003fd     	mov	x29, sp
   17be4: 39410002     	ldrb	w2, [x0, #0x40]
   17be8: aa0003f3     	mov	x19, x0
   17bec: aa0103f4     	mov	x20, x1
   17bf0: 350009e2     	cbnz	w2, 0x17d2c <syna_tcm_buf_copy+0x160>
   17bf4: 91004260     	add	x0, x19, #0x10
   17bf8: 94000000     	bl	0x17bf8 <syna_tcm_buf_copy+0x2c>
		0000000000017bf8:  R_AARCH64_CALL26	mutex_lock
   17bfc: 39410268     	ldrb	w8, [x19, #0x40]
   17c00: 11000508     	add	w8, w8, #0x1
   17c04: 39010268     	strb	w8, [x19, #0x40]
   17c08: 39410282     	ldrb	w2, [x20, #0x40]
   17c0c: 350009c2     	cbnz	w2, 0x17d44 <syna_tcm_buf_copy+0x178>
   17c10: 91004280     	add	x0, x20, #0x10
   17c14: 94000000     	bl	0x17c14 <syna_tcm_buf_copy+0x48>
		0000000000017c14:  R_AARCH64_CALL26	mutex_lock
   17c18: 39410288     	ldrb	w8, [x20, #0x40]
   17c1c: b9400e95     	ldr	w21, [x20, #0xc]
   17c20: 11000508     	add	w8, w8, #0x1
   17c24: 39010288     	strb	w8, [x20, #0x40]
   17c28: b9400a63     	ldr	w3, [x19, #0x8]
   17c2c: 6b15007f     	cmp	w3, w21
   17c30: 540003c2     	b.hs	0x17ca8 <syna_tcm_buf_copy+0xdc>
   17c34: 110006b6     	add	w22, w21, #0x1
   17c38: f9400260     	ldr	x0, [x19]
   17c3c: 6b16007f     	cmp	w3, w22
   17c40: 54000262     	b.hs	0x17c8c <syna_tcm_buf_copy+0xc0>
   17c44: b40000c0     	cbz	x0, 0x17c5c <syna_tcm_buf_copy+0x90>
   17c48: aa0003f7     	mov	x23, x0
   17c4c: 94000000     	bl	0x17c4c <syna_tcm_buf_copy+0x80>
		0000000000017c4c:  R_AARCH64_CALL26	syna_request_managed_device
   17c50: b4000c60     	cbz	x0, 0x17ddc <syna_tcm_buf_copy+0x210>
   17c54: aa1703e1     	mov	x1, x23
   17c58: 94000000     	bl	0x17c58 <syna_tcm_buf_copy+0x8c>
		0000000000017c58:  R_AARCH64_CALL26	devm_kfree
   17c5c: 94000000     	bl	0x17c5c <syna_tcm_buf_copy+0x90>
		0000000000017c5c:  R_AARCH64_CALL26	syna_request_managed_device
   17c60: b4000cc0     	cbz	x0, 0x17df8 <syna_tcm_buf_copy+0x22c>
   17c64: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   17c68: 6b0802bf     	cmp	w21, w8
   17c6c: 54000b22     	b.hs	0x17dd0 <syna_tcm_buf_copy+0x204>
   17c70: aa1603e1     	mov	x1, x22
   17c74: 5281b802     	mov	w2, #0xdc0              // =3520
   17c78: 94000000     	bl	0x17c78 <syna_tcm_buf_copy+0xac>
		0000000000017c78:  R_AARCH64_CALL26	devm_kmalloc
   17c7c: f9000260     	str	x0, [x19]
   17c80: b4000c80     	cbz	x0, 0x17e10 <syna_tcm_buf_copy+0x244>
   17c84: b9000a76     	str	w22, [x19, #0x8]
   17c88: 14000002     	b	0x17c90 <syna_tcm_buf_copy+0xc4>
   17c8c: aa0303f6     	mov	x22, x3
   17c90: 2a1f03e1     	mov	w1, wzr
   17c94: aa1603e2     	mov	x2, x22
   17c98: 94000000     	bl	0x17c98 <syna_tcm_buf_copy+0xcc>
		0000000000017c98:  R_AARCH64_CALL26	memset
   17c9c: b9000e7f     	str	wzr, [x19, #0xc]
   17ca0: b9400a63     	ldr	w3, [x19, #0x8]
   17ca4: b9400e95     	ldr	w21, [x20, #0xc]
   17ca8: f9400260     	ldr	x0, [x19]
   17cac: b4000860     	cbz	x0, 0x17db8 <syna_tcm_buf_copy+0x1ec>
   17cb0: f9400281     	ldr	x1, [x20]
   17cb4: b4000821     	cbz	x1, 0x17db8 <syna_tcm_buf_copy+0x1ec>
   17cb8: b9400a82     	ldr	w2, [x20, #0x8]
   17cbc: 6b0302bf     	cmp	w21, w3
   17cc0: 540006e8     	b.hi	0x17d9c <syna_tcm_buf_copy+0x1d0>
   17cc4: 6b0202bf     	cmp	w21, w2
   17cc8: 540006a8     	b.hi	0x17d9c <syna_tcm_buf_copy+0x1d0>
   17ccc: 2a1503e2     	mov	w2, w21
   17cd0: 94000000     	bl	0x17cd0 <syna_tcm_buf_copy+0x104>
		0000000000017cd0:  R_AARCH64_CALL26	memcpy
   17cd4: b9400e88     	ldr	w8, [x20, #0xc]
   17cd8: b9000e68     	str	w8, [x19, #0xc]
   17cdc: 39410282     	ldrb	w2, [x20, #0x40]
   17ce0: 7100045f     	cmp	w2, #0x1
   17ce4: 540004c1     	b.ne	0x17d7c <syna_tcm_buf_copy+0x1b0>
   17ce8: 2a1f03e8     	mov	w8, wzr
   17cec: 91004280     	add	x0, x20, #0x10
   17cf0: 39010288     	strb	w8, [x20, #0x40]
   17cf4: 94000000     	bl	0x17cf4 <syna_tcm_buf_copy+0x128>
		0000000000017cf4:  R_AARCH64_CALL26	mutex_unlock
   17cf8: 39410262     	ldrb	w2, [x19, #0x40]
   17cfc: 7100045f     	cmp	w2, #0x1
   17d00: 540002e1     	b.ne	0x17d5c <syna_tcm_buf_copy+0x190>
   17d04: 2a1f03e8     	mov	w8, wzr
   17d08: 91004260     	add	x0, x19, #0x10
   17d0c: 39010268     	strb	w8, [x19, #0x40]
   17d10: 94000000     	bl	0x17d10 <syna_tcm_buf_copy+0x144>
		0000000000017d10:  R_AARCH64_CALL26	mutex_unlock
   17d14: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   17d18: f9400bf7     	ldr	x23, [sp, #0x10]
   17d1c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   17d20: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   17d24: d50323bf     	autiasp
   17d28: d65f03c0     	ret
   17d2c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   17d30: 91000000     	add	x0, x0, #0x0
		0000000000017d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   17d34: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   17d38: 91000021     	add	x1, x1, #0x0
		0000000000017d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   17d3c: 94000000     	bl	0x17d3c <syna_tcm_buf_copy+0x170>
		0000000000017d3c:  R_AARCH64_CALL26	_printk
   17d40: 17ffffad     	b	0x17bf4 <syna_tcm_buf_copy+0x28>
   17d44: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   17d48: 91000000     	add	x0, x0, #0x0
		0000000000017d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   17d4c: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   17d50: 91000021     	add	x1, x1, #0x0
		0000000000017d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   17d54: 94000000     	bl	0x17d54 <syna_tcm_buf_copy+0x188>
		0000000000017d54:  R_AARCH64_CALL26	_printk
   17d58: 17ffffae     	b	0x17c10 <syna_tcm_buf_copy+0x44>
   17d5c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   17d60: 91000000     	add	x0, x0, #0x0
		0000000000017d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   17d64: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   17d68: 91000021     	add	x1, x1, #0x0
		0000000000017d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   17d6c: 94000000     	bl	0x17d6c <syna_tcm_buf_copy+0x1a0>
		0000000000017d6c:  R_AARCH64_CALL26	_printk
   17d70: 39410268     	ldrb	w8, [x19, #0x40]
   17d74: 51000508     	sub	w8, w8, #0x1
   17d78: 17ffffe4     	b	0x17d08 <syna_tcm_buf_copy+0x13c>
   17d7c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   17d80: 91000000     	add	x0, x0, #0x0
		0000000000017d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   17d84: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   17d88: 91000021     	add	x1, x1, #0x0
		0000000000017d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   17d8c: 94000000     	bl	0x17d8c <syna_tcm_buf_copy+0x1c0>
		0000000000017d8c:  R_AARCH64_CALL26	_printk
   17d90: 39410288     	ldrb	w8, [x20, #0x40]
   17d94: 51000508     	sub	w8, w8, #0x1
   17d98: 17ffffd5     	b	0x17cec <syna_tcm_buf_copy+0x120>
   17d9c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   17da0: 91000000     	add	x0, x0, #0x0
		0000000000017da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   17da4: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   17da8: 91000021     	add	x1, x1, #0x0
		0000000000017da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   17dac: 2a1503e4     	mov	w4, w21
   17db0: 94000000     	bl	0x17db0 <syna_tcm_buf_copy+0x1e4>
		0000000000017db0:  R_AARCH64_CALL26	_printk
   17db4: b9400e95     	ldr	w21, [x20, #0xc]
   17db8: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a49
   17dbc: 91000000     	add	x0, x0, #0x0
		0000000000017dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a49
   17dc0: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   17dc4: 91000021     	add	x1, x1, #0x0
		0000000000017dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   17dc8: 2a1503e2     	mov	w2, w21
   17dcc: 1400001e     	b	0x17e44 <syna_tcm_buf_copy+0x278>
   17dd0: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   17dd4: 91000000     	add	x0, x0, #0x0
		0000000000017dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   17dd8: 1400000a     	b	0x17e00 <syna_tcm_buf_copy+0x234>
   17ddc: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   17de0: 91000000     	add	x0, x0, #0x0
		0000000000017de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17de4: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   17de8: 91000021     	add	x1, x1, #0x0
		0000000000017de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   17dec: 94000000     	bl	0x17dec <syna_tcm_buf_copy+0x220>
		0000000000017dec:  R_AARCH64_CALL26	_printk
   17df0: 94000000     	bl	0x17df0 <syna_tcm_buf_copy+0x224>
		0000000000017df0:  R_AARCH64_CALL26	syna_request_managed_device
   17df4: b5fff380     	cbnz	x0, 0x17c64 <syna_tcm_buf_copy+0x98>
   17df8: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   17dfc: 91000000     	add	x0, x0, #0x0
		0000000000017dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17e00: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   17e04: 91000021     	add	x1, x1, #0x0
		0000000000017e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   17e08: 94000000     	bl	0x17e08 <syna_tcm_buf_copy+0x23c>
		0000000000017e08:  R_AARCH64_CALL26	_printk
   17e0c: f900027f     	str	xzr, [x19]
   17e10: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   17e14: 91000000     	add	x0, x0, #0x0
		0000000000017e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   17e18: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   17e1c: 91000021     	add	x1, x1, #0x0
		0000000000017e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   17e20: 2a1603e2     	mov	w2, w22
   17e24: 94000000     	bl	0x17e24 <syna_tcm_buf_copy+0x258>
		0000000000017e24:  R_AARCH64_CALL26	_printk
   17e28: f900067f     	str	xzr, [x19, #0x8]
   17e2c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64e5
   17e30: 91000000     	add	x0, x0, #0x0
		0000000000017e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64e5
   17e34: b9400e88     	ldr	w8, [x20, #0xc]
   17e38: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   17e3c: 91000021     	add	x1, x1, #0x0
		0000000000017e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   17e40: 11000502     	add	w2, w8, #0x1
   17e44: 94000000     	bl	0x17e44 <syna_tcm_buf_copy+0x278>
		0000000000017e44:  R_AARCH64_CALL26	_printk
   17e48: 17ffffa5     	b	0x17cdc <syna_tcm_buf_copy+0x110>
