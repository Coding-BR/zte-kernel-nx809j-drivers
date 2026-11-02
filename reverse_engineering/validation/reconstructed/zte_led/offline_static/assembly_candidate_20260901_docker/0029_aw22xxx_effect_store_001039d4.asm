
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b44 <aw22xxx_effect_store>:
    1b44: d503233f     	paciasp
    1b48: d10143ff     	sub	sp, sp, #0x50
    1b4c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1b50: f90013f7     	str	x23, [sp, #0x20]
    1b54: a90357f6     	stp	x22, x21, [sp, #0x30]
    1b58: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1b5c: 910043fd     	add	x29, sp, #0x10
    1b60: d5384109     	mrs	x9, SP_EL0
    1b64: aa0203e8     	mov	x8, x2
    1b68: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    1b6c: 91000021     	add	x1, x1, #0x0
		0000000000001b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    1b70: f9438929     	ldr	x9, [x9, #0x710]
    1b74: 910013e2     	add	x2, sp, #0x4
    1b78: aa0303f3     	mov	x19, x3
    1b7c: f90007e9     	str	x9, [sp, #0x8]
    1b80: f9404c15     	ldr	x21, [x0, #0x98]
    1b84: aa0803e0     	mov	x0, x8
    1b88: b90007ff     	str	wzr, [sp, #0x4]
    1b8c: 390003ff     	strb	wzr, [sp]
    1b90: 94000000     	bl	0x1b90 <aw22xxx_effect_store+0x4c>
		0000000000001b90:  R_AARCH64_CALL26	sscanf
    1b94: 7100041f     	cmp	w0, #0x1
    1b98: 54000f41     	b.ne	0x1d80 <aw22xxx_effect_store+0x23c>
    1b9c: b94007e2     	ldr	w2, [sp, #0x4]
    1ba0: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1543
    1ba4: 91000000     	add	x0, x0, #0x0
		0000000000001ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1543
    1ba8: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1bac: 91000021     	add	x1, x1, #0x0
		0000000000001bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1bb0: d10042b4     	sub	x20, x21, #0x10
    1bb4: 94000000     	bl	0x1bb4 <aw22xxx_effect_store+0x70>
		0000000000001bb4:  R_AARCH64_CALL26	_printk
    1bb8: 910a82a0     	add	x0, x21, #0x2a0
    1bbc: 94000000     	bl	0x1bbc <aw22xxx_effect_store+0x78>
		0000000000001bbc:  R_AARCH64_CALL26	mutex_lock
    1bc0: b94007e8     	ldr	w8, [sp, #0x4]
    1bc4: 90000017     	adrp	x23, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
    1bc8: 90000016     	adrp	x22, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001bc8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3c
    1bcc: 51002109     	sub	w9, w8, #0x8
    1bd0: 7100093f     	cmp	w9, #0x2
    1bd4: 540005c8     	b.hi	0x1c8c <aw22xxx_effect_store+0x148>
    1bd8: 394002e9     	ldrb	w9, [x23]
		0000000000001bd8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x38
    1bdc: 34000589     	cbz	w9, 0x1c8c <aw22xxx_effect_store+0x148>
    1be0: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d8
    1be4: 91000000     	add	x0, x0, #0x0
		0000000000001be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d8
    1be8: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1bec: 91000021     	add	x1, x1, #0x0
		0000000000001bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1bf0: 94000000     	bl	0x1bf0 <aw22xxx_effect_store+0xac>
		0000000000001bf0:  R_AARCH64_CALL26	_printk
    1bf4: 52800088     	mov	w8, #0x4                // =4
    1bf8: 52800080     	mov	w0, #0x4                // =4
    1bfc: b902f2a8     	str	w8, [x21, #0x2f0]
    1c00: 94000074     	bl	0x1dd0 <aw22xxx_get_fwname>
    1c04: aa1403e0     	mov	x0, x20
    1c08: 940000d1     	bl	0x1f4c <aw22xxx_cfg_update_wait_from_dyn_name>
    1c0c: b942f2a0     	ldr	w0, [x21, #0x2f0]
    1c10: 94000110     	bl	0x2050 <aw22xxx_set_cfg_run_state>
    1c14: 394002c8     	ldrb	w8, [x22]
		0000000000001c14:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    1c18: 350002c8     	cbnz	w8, 0x1c70 <aw22xxx_effect_store+0x12c>
    1c1c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113a
    1c20: 91000000     	add	x0, x0, #0x0
		0000000000001c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113a
    1c24: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1c28: 91000021     	add	x1, x1, #0x0
		0000000000001c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1c2c: 94000000     	bl	0x1c2c <aw22xxx_effect_store+0xe8>
		0000000000001c2c:  R_AARCH64_CALL26	_printk
    1c30: 910003e2     	mov	x2, sp
    1c34: aa1403e0     	mov	x0, x20
    1c38: 52800041     	mov	w1, #0x2                // =2
    1c3c: 97fffdf9     	bl	0x1420 <aw22xxx_i2c_read>
    1c40: 394003e8     	ldrb	w8, [sp]
    1c44: aa1403e0     	mov	x0, x20
    1c48: 52800041     	mov	w1, #0x2                // =2
    1c4c: 121f7902     	and	w2, w8, #0xfffffffe
    1c50: 390003e2     	strb	w2, [sp]
    1c54: 97fff903     	bl	0x60 <aw22xxx_i2c_write>
    1c58: 5280fa00     	mov	w0, #0x7d0              // =2000
    1c5c: 52817701     	mov	w1, #0xbb8              // =3000
    1c60: 52800042     	mov	w2, #0x2                // =2
    1c64: 94000000     	bl	0x1c64 <aw22xxx_effect_store+0x120>
		0000000000001c64:  R_AARCH64_CALL26	usleep_range_state
    1c68: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c68:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3d
    1c6c: 3900011f     	strb	wzr, [x8]
		0000000000001c6c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    1c70: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d9
    1c74: 91000000     	add	x0, x0, #0x0
		0000000000001c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d9
    1c78: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1c7c: 91000021     	add	x1, x1, #0x0
		0000000000001c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1c80: 390002ff     	strb	wzr, [x23]
		0000000000001c80:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x38
    1c84: 94000000     	bl	0x1c84 <aw22xxx_effect_store+0x140>
		0000000000001c84:  R_AARCH64_CALL26	_printk
    1c88: b94007e8     	ldr	w8, [sp, #0x4]
    1c8c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e0
    1c90: 91000000     	add	x0, x0, #0x0
		0000000000001c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e0
    1c94: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1c98: 91000021     	add	x1, x1, #0x0
		0000000000001c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1c9c: b902f2a8     	str	w8, [x21, #0x2f0]
    1ca0: 94000000     	bl	0x1ca0 <aw22xxx_effect_store+0x15c>
		0000000000001ca0:  R_AARCH64_CALL26	_printk
    1ca4: b94007e8     	ldr	w8, [sp, #0x4]
    1ca8: 71000d1f     	cmp	w8, #0x3
    1cac: 54000188     	b.hi	0x1cdc <aw22xxx_effect_store+0x198>
    1cb0: 7100051f     	cmp	w8, #0x1
    1cb4: 54000140     	b.eq	0x1cdc <aw22xxx_effect_store+0x198>
    1cb8: 394002e8     	ldrb	w8, [x23]
		0000000000001cb8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x38
    1cbc: 37000108     	tbnz	w8, #0x0, 0x1cdc <aw22xxx_effect_store+0x198>
    1cc0: 52800028     	mov	w8, #0x1                // =1
    1cc4: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ff
    1cc8: 91000000     	add	x0, x0, #0x0
		0000000000001cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ff
    1ccc: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1cd0: 91000021     	add	x1, x1, #0x0
		0000000000001cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1cd4: 390002e8     	strb	w8, [x23]
		0000000000001cd4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x38
    1cd8: 94000000     	bl	0x1cd8 <aw22xxx_effect_store+0x194>
		0000000000001cd8:  R_AARCH64_CALL26	_printk
    1cdc: b942f2a0     	ldr	w0, [x21, #0x2f0]
    1ce0: 9400003c     	bl	0x1dd0 <aw22xxx_get_fwname>
    1ce4: aa1403e0     	mov	x0, x20
    1ce8: 94000099     	bl	0x1f4c <aw22xxx_cfg_update_wait_from_dyn_name>
    1cec: b942f2a0     	ldr	w0, [x21, #0x2f0]
    1cf0: 35000080     	cbnz	w0, 0x1d00 <aw22xxx_effect_store+0x1bc>
    1cf4: 52800c80     	mov	w0, #0x64               // =100
    1cf8: 94000000     	bl	0x1cf8 <aw22xxx_effect_store+0x1b4>
		0000000000001cf8:  R_AARCH64_CALL26	msleep
    1cfc: b942f2a0     	ldr	w0, [x21, #0x2f0]
    1d00: 940000d4     	bl	0x2050 <aw22xxx_set_cfg_run_state>
    1d04: 394002c8     	ldrb	w8, [x22]
		0000000000001d04:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    1d08: 350002c8     	cbnz	w8, 0x1d60 <aw22xxx_effect_store+0x21c>
    1d0c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x136a
    1d10: 91000000     	add	x0, x0, #0x0
		0000000000001d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x136a
    1d14: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1d18: 91000021     	add	x1, x1, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1d1c: 94000000     	bl	0x1d1c <aw22xxx_effect_store+0x1d8>
		0000000000001d1c:  R_AARCH64_CALL26	_printk
    1d20: 910003e2     	mov	x2, sp
    1d24: aa1403e0     	mov	x0, x20
    1d28: 52800041     	mov	w1, #0x2                // =2
    1d2c: 97fffdbd     	bl	0x1420 <aw22xxx_i2c_read>
    1d30: 394003e8     	ldrb	w8, [sp]
    1d34: aa1403e0     	mov	x0, x20
    1d38: 52800041     	mov	w1, #0x2                // =2
    1d3c: 121f7902     	and	w2, w8, #0xfffffffe
    1d40: 390003e2     	strb	w2, [sp]
    1d44: 97fff8c7     	bl	0x60 <aw22xxx_i2c_write>
    1d48: 5280fa00     	mov	w0, #0x7d0              // =2000
    1d4c: 52817701     	mov	w1, #0xbb8              // =3000
    1d50: 52800042     	mov	w2, #0x2                // =2
    1d54: 94000000     	bl	0x1d54 <aw22xxx_effect_store+0x210>
		0000000000001d54:  R_AARCH64_CALL26	usleep_range_state
    1d58: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d58:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3d
    1d5c: 3900011f     	strb	wzr, [x8]
		0000000000001d5c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    1d60: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
    1d64: 91000000     	add	x0, x0, #0x0
		0000000000001d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
    1d68: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1d6c: 91000021     	add	x1, x1, #0x0
		0000000000001d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1d70: 94000000     	bl	0x1d70 <aw22xxx_effect_store+0x22c>
		0000000000001d70:  R_AARCH64_CALL26	_printk
    1d74: 910a82a0     	add	x0, x21, #0x2a0
    1d78: 94000000     	bl	0x1d78 <aw22xxx_effect_store+0x234>
		0000000000001d78:  R_AARCH64_CALL26	mutex_unlock
    1d7c: 14000007     	b	0x1d98 <aw22xxx_effect_store+0x254>
    1d80: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bc
    1d84: 91000000     	add	x0, x0, #0x0
		0000000000001d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bc
    1d88: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfbb
    1d8c: 91000021     	add	x1, x1, #0x0
		0000000000001d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfbb
    1d90: 94000000     	bl	0x1d90 <aw22xxx_effect_store+0x24c>
		0000000000001d90:  R_AARCH64_CALL26	_printk
    1d94: 928002b3     	mov	x19, #-0x16             // =-22
    1d98: d5384108     	mrs	x8, SP_EL0
    1d9c: f9438908     	ldr	x8, [x8, #0x710]
    1da0: f94007e9     	ldr	x9, [sp, #0x8]
    1da4: eb09011f     	cmp	x8, x9
    1da8: 54000121     	b.ne	0x1dcc <aw22xxx_effect_store+0x288>
    1dac: aa1303e0     	mov	x0, x19
    1db0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1db4: f94013f7     	ldr	x23, [sp, #0x20]
    1db8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1dbc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1dc0: 910143ff     	add	sp, sp, #0x50
    1dc4: d50323bf     	autiasp
    1dc8: d65f03c0     	ret
    1dcc: 94000000     	bl	0x1dcc <aw22xxx_effect_store+0x288>
		0000000000001dcc:  R_AARCH64_CALL26	__stack_chk_fail
