
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005c98 <aw9620x_reg_update_boot_work>:
    5c98: d503233f     	paciasp
    5c9c: d10243ff     	sub	sp, sp, #0x90
    5ca0: a9047bfd     	stp	x29, x30, [sp, #0x40]
    5ca4: f9002bf9     	str	x25, [sp, #0x50]
    5ca8: a9065ff8     	stp	x24, x23, [sp, #0x60]
    5cac: a90757f6     	stp	x22, x21, [sp, #0x70]
    5cb0: a9084ff4     	stp	x20, x19, [sp, #0x80]
    5cb4: 910103fd     	add	x29, sp, #0x40
    5cb8: d5384108     	mrs	x8, SP_EL0
    5cbc: 90000014     	adrp	x20, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe03
    5cc0: 91000294     	add	x20, x20, #0x0
		0000000000005cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe03
    5cc4: f9438908     	ldr	x8, [x8, #0x710]
    5cc8: aa0003f3     	mov	x19, x0
    5ccc: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    5cd0: 91000042     	add	x2, x2, #0x0
		0000000000005cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    5cd4: aa1403e3     	mov	x3, x20
    5cd8: 52818fe4     	mov	w4, #0xc7f              // =3199
    5cdc: f81f83a8     	stur	x8, [x29, #-0x8]
    5ce0: f9401801     	ldr	x1, [x0, #0x30]
    5ce4: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5ce8: 91000000     	add	x0, x0, #0x0
		0000000000005ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5cec: f90003ff     	str	xzr, [sp]
    5cf0: 94000000     	bl	0x5cf0 <aw9620x_reg_update_boot_work+0x58>
		0000000000005cf0:  R_AARCH64_CALL26	_dev_printk
    5cf4: b9400a63     	ldr	w3, [x19, #0x8]
    5cf8: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1160
    5cfc: 91000042     	add	x2, x2, #0x0
		0000000000005cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1160
    5d00: 910b7660     	add	x0, x19, #0x2dd
    5d04: 528003c1     	mov	w1, #0x1e               // =30
    5d08: 94000000     	bl	0x5d08 <aw9620x_reg_update_boot_work+0x70>
		0000000000005d08:  R_AARCH64_CALL26	snprintf
    5d0c: f9401a61     	ldr	x1, [x19, #0x30]
    5d10: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5d14: 91000000     	add	x0, x0, #0x0
		0000000000005d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5d18: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e9
    5d1c: 91000042     	add	x2, x2, #0x0
		0000000000005d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e9
    5d20: 910b7665     	add	x5, x19, #0x2dd
    5d24: aa1403e3     	mov	x3, x20
    5d28: 52819084     	mov	w4, #0xc84              // =3204
    5d2c: 94000000     	bl	0x5d2c <aw9620x_reg_update_boot_work+0x94>
		0000000000005d2c:  R_AARCH64_CALL26	_dev_printk
    5d30: f9401a62     	ldr	x2, [x19, #0x30]
    5d34: 910003e0     	mov	x0, sp
    5d38: 910b7661     	add	x1, x19, #0x2dd
    5d3c: 94000000     	bl	0x5d3c <aw9620x_reg_update_boot_work+0xa4>
		0000000000005d3c:  R_AARCH64_CALL26	request_firmware
    5d40: f9401a61     	ldr	x1, [x19, #0x30]
    5d44: 350003e0     	cbnz	w0, 0x5dc0 <aw9620x_reg_update_boot_work+0x128>
    5d48: 90000014     	adrp	x20, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5d4c: 91000294     	add	x20, x20, #0x0
		0000000000005d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5d50: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186c
    5d54: 91000042     	add	x2, x2, #0x0
		0000000000005d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186c
    5d58: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe03
    5d5c: 91000063     	add	x3, x3, #0x0
		0000000000005d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe03
    5d60: 910b7665     	add	x5, x19, #0x2dd
    5d64: aa1403e0     	mov	x0, x20
    5d68: 52819164     	mov	w4, #0xc8b              // =3211
    5d6c: 94000000     	bl	0x5d6c <aw9620x_reg_update_boot_work+0xd4>
		0000000000005d6c:  R_AARCH64_CALL26	_dev_printk
    5d70: f9401a61     	ldr	x1, [x19, #0x30]
    5d74: f94003f6     	ldr	x22, [sp]
    5d78: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    5d7c: 91000042     	add	x2, x2, #0x0
		0000000000005d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    5d80: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    5d84: 91000063     	add	x3, x3, #0x0
		0000000000005d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    5d88: aa1403e0     	mov	x0, x20
    5d8c: 528189c4     	mov	w4, #0xc4e              // =3150
    5d90: 94000000     	bl	0x5d90 <aw9620x_reg_update_boot_work+0xf8>
		0000000000005d90:  R_AARCH64_CALL26	_dev_printk
    5d94: f9401a61     	ldr	x1, [x19, #0x30]
    5d98: b5000276     	cbnz	x22, 0x5de4 <aw9620x_reg_update_boot_work+0x14c>
    5d9c: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5da0: 91000000     	add	x0, x0, #0x0
		0000000000005da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5da4: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1580
    5da8: 91000042     	add	x2, x2, #0x0
		0000000000005da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1580
    5dac: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    5db0: 91000063     	add	x3, x3, #0x0
		0000000000005db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    5db4: 52818a24     	mov	w4, #0xc51              // =3153
    5db8: 94000000     	bl	0x5db8 <aw9620x_reg_update_boot_work+0x120>
		0000000000005db8:  R_AARCH64_CALL26	_dev_printk
    5dbc: 140000d4     	b	0x610c <aw9620x_reg_update_boot_work+0x474>
    5dc0: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5dc4: 91000000     	add	x0, x0, #0x0
		0000000000005dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5dc8: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c4
    5dcc: 91000042     	add	x2, x2, #0x0
		0000000000005dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c4
    5dd0: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe03
    5dd4: 91000063     	add	x3, x3, #0x0
		0000000000005dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe03
    5dd8: 910b7665     	add	x5, x19, #0x2dd
    5ddc: 52819104     	mov	w4, #0xc88              // =3208
    5de0: 140000d4     	b	0x6130 <aw9620x_reg_update_boot_work+0x498>
    5de4: 90000014     	adrp	x20, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    5de8: 91000294     	add	x20, x20, #0x0
		0000000000005de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    5dec: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    5df0: 91000000     	add	x0, x0, #0x0
		0000000000005df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    5df4: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8df
    5df8: 91000042     	add	x2, x2, #0x0
		0000000000005df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8df
    5dfc: aa1403e3     	mov	x3, x20
    5e00: 52818a84     	mov	w4, #0xc54              // =3156
    5e04: 94000000     	bl	0x5e04 <aw9620x_reg_update_boot_work+0x16c>
		0000000000005e04:  R_AARCH64_CALL26	_dev_printk
    5e08: f9401a61     	ldr	x1, [x19, #0x30]
    5e0c: b94002c5     	ldr	w5, [x22]
    5e10: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5e14: 91000000     	add	x0, x0, #0x0
		0000000000005e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5e18: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a1
    5e1c: 91000042     	add	x2, x2, #0x0
		0000000000005e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a1
    5e20: aa1403e3     	mov	x3, x20
    5e24: 52818ac4     	mov	w4, #0xc56              // =3158
    5e28: 94000000     	bl	0x5e28 <aw9620x_reg_update_boot_work+0x190>
		0000000000005e28:  R_AARCH64_CALL26	_dev_printk
    5e2c: d503201f     	nop
    5e30: f94002c8     	ldr	x8, [x22]
    5e34: 52841d09     	mov	w9, #0x20e8             // =8424
    5e38: 5281b801     	mov	w1, #0xdc0              // =3520
    5e3c: 8b090115     	add	x21, x8, x9
    5e40: aa1503e0     	mov	x0, x21
    5e44: 94000000     	bl	0x5e44 <aw9620x_reg_update_boot_work+0x1ac>
		0000000000005e44:  R_AARCH64_CALL26	__kmalloc_noprof
    5e48: aa0003f4     	mov	x20, x0
    5e4c: b50003b4     	cbnz	x20, 0x5ec0 <aw9620x_reg_update_boot_work+0x228>
    5e50: aa1f03e0     	mov	x0, xzr
    5e54: 94000000     	bl	0x5e54 <aw9620x_reg_update_boot_work+0x1bc>
		0000000000005e54:  R_AARCH64_CALL26	kfree
    5e58: aa1603e0     	mov	x0, x22
    5e5c: 94000000     	bl	0x5e5c <aw9620x_reg_update_boot_work+0x1c4>
		0000000000005e5c:  R_AARCH64_CALL26	release_firmware
    5e60: f9401a61     	ldr	x1, [x19, #0x30]
    5e64: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5e68: 91000000     	add	x0, x0, #0x0
		0000000000005e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5e6c: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba0
    5e70: 91000042     	add	x2, x2, #0x0
		0000000000005e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba0
    5e74: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    5e78: 91000063     	add	x3, x3, #0x0
		0000000000005e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    5e7c: 52818b84     	mov	w4, #0xc5c              // =3164
    5e80: 94000000     	bl	0x5e80 <aw9620x_reg_update_boot_work+0x1e8>
		0000000000005e80:  R_AARCH64_CALL26	_dev_printk
    5e84: 140000a2     	b	0x610c <aw9620x_reg_update_boot_work+0x474>
    5e88: 90000008     	adrp	x8, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005e88:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    5e8c: 91000108     	add	x8, x8, #0x0
		0000000000005e8c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    5e90: d5384117     	mrs	x23, SP_EL0
    5e94: f9402af8     	ldr	x24, [x23, #0x50]
    5e98: f9002ae8     	str	x8, [x23, #0x50]
    5e9c: 52841d09     	mov	w9, #0x20e8             // =8424
    5ea0: f94002c8     	ldr	x8, [x22]
    5ea4: 5281b801     	mov	w1, #0xdc0              // =3520
    5ea8: 8b090115     	add	x21, x8, x9
    5eac: aa1503e0     	mov	x0, x21
    5eb0: 94000000     	bl	0x5eb0 <aw9620x_reg_update_boot_work+0x218>
		0000000000005eb0:  R_AARCH64_CALL26	__kmalloc_noprof
    5eb4: aa0003f4     	mov	x20, x0
    5eb8: f9002af8     	str	x24, [x23, #0x50]
    5ebc: b4fffcb4     	cbz	x20, 0x5e50 <aw9620x_reg_update_boot_work+0x1b8>
    5ec0: d342feb9     	lsr	x25, x21, #2
    5ec4: f120e73f     	cmp	x25, #0x839
    5ec8: 54001523     	b.lo	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5ecc: 927ef6b8     	and	x24, x21, #0xfffffffffffffffc
    5ed0: 52841c88     	mov	w8, #0x20e4             // =8420
    5ed4: eb08031f     	cmp	x24, x8
    5ed8: 540014a0     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5edc: f120e73f     	cmp	x25, #0x839
    5ee0: 54001460     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5ee4: 52841d08     	mov	w8, #0x20e8             // =8424
    5ee8: f94002c2     	ldr	x2, [x22]
    5eec: eb0802a9     	subs	x9, x21, x8
    5ef0: 9a8933e1     	csel	x1, xzr, x9, lo
    5ef4: b920e682     	str	w2, [x20, #0x20e4]
    5ef8: eb02003f     	cmp	x1, x2
    5efc: 540013a3     	b.lo	0x6170 <aw9620x_reg_update_boot_work+0x4d8>
    5f00: f94006c1     	ldr	x1, [x22, #0x8]
    5f04: 8b080297     	add	x23, x20, x8
    5f08: aa1703e0     	mov	x0, x23
    5f0c: 94000000     	bl	0x5f0c <aw9620x_reg_update_boot_work+0x274>
		0000000000005f0c:  R_AARCH64_CALL26	memcpy
    5f10: aa1603e0     	mov	x0, x22
    5f14: 94000000     	bl	0x5f14 <aw9620x_reg_update_boot_work+0x27c>
		0000000000005f14:  R_AARCH64_CALL26	release_firmware
    5f18: aa1403e0     	mov	x0, x20
    5f1c: 94000000     	bl	0x5f1c <aw9620x_reg_update_boot_work+0x284>
		0000000000005f1c:  R_AARCH64_CALL26	aw_parsing_bin_file
    5f20: f9401a61     	ldr	x1, [x19, #0x30]
    5f24: 36f80160     	tbz	w0, #0x1f, 0x5f50 <aw9620x_reg_update_boot_work+0x2b8>
    5f28: 2a0003e5     	mov	w5, w0
    5f2c: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5f30: 91000000     	add	x0, x0, #0x0
		0000000000005f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5f34: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4e
    5f38: 91000042     	add	x2, x2, #0x0
		0000000000005f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4e
    5f3c: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    5f40: 91000063     	add	x3, x3, #0x0
		0000000000005f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    5f44: 52818ce4     	mov	w4, #0xc67              // =3175
    5f48: 94000000     	bl	0x5f48 <aw9620x_reg_update_boot_work+0x2b0>
		0000000000005f48:  R_AARCH64_CALL26	_dev_printk
    5f4c: 1400006e     	b	0x6104 <aw9620x_reg_update_boot_work+0x46c>
    5f50: f101931f     	cmp	x24, #0x64
    5f54: 540010c0     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5f58: f120e73f     	cmp	x25, #0x839
    5f5c: 54001083     	b.lo	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5f60: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    5f64: 52841c89     	mov	w9, #0x20e4             // =8420
    5f68: eb09011f     	cmp	x8, x9
    5f6c: 54001000     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5f70: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    5f74: f101911f     	cmp	x8, #0x64
    5f78: 54000fa0     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5f7c: b960e686     	ldr	w6, [x20, #0x20e4]
    5f80: b9406687     	ldr	w7, [x20, #0x64]
    5f84: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5f88: 91000000     	add	x0, x0, #0x0
		0000000000005f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5f8c: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4a
    5f90: 91000042     	add	x2, x2, #0x0
		0000000000005f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4a
    5f94: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    5f98: 91000063     	add	x3, x3, #0x0
		0000000000005f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    5f9c: 9100c285     	add	x5, x20, #0x30
    5fa0: 52818da4     	mov	w4, #0xc6d              // =3181
    5fa4: 94000000     	bl	0x5fa4 <aw9620x_reg_update_boot_work+0x30c>
		0000000000005fa4:  R_AARCH64_CALL26	_dev_printk
    5fa8: f101531f     	cmp	x24, #0x54
    5fac: 54000e00     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5fb0: f10152bf     	cmp	x21, #0x54
    5fb4: 54000dc3     	b.lo	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5fb8: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    5fbc: f101511f     	cmp	x8, #0x54
    5fc0: 54000d60     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5fc4: f9401a61     	ldr	x1, [x19, #0x30]
    5fc8: b9405696     	ldr	w22, [x20, #0x54]
    5fcc: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5fd0: 91000000     	add	x0, x0, #0x0
		0000000000005fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5fd4: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    5fd8: 91000042     	add	x2, x2, #0x0
		0000000000005fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    5fdc: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57
    5fe0: 91000063     	add	x3, x3, #0x0
		0000000000005fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57
    5fe4: 52818884     	mov	w4, #0xc44              // =3140
    5fe8: 94000000     	bl	0x5fe8 <aw9620x_reg_update_boot_work+0x350>
		0000000000005fe8:  R_AARCH64_CALL26	_dev_printk
    5fec: f101431f     	cmp	x24, #0x50
    5ff0: 54000be0     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5ff4: f10142bf     	cmp	x21, #0x50
    5ff8: 54000ba3     	b.lo	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    5ffc: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    6000: f101411f     	cmp	x8, #0x50
    6004: 54000b40     	b.eq	0x616c <aw9620x_reg_update_boot_work+0x4d4>
    6008: d280ff08     	mov	x8, #0x7f8              // =2040
    600c: 5280ff09     	mov	w9, #0x7f8              // =2040
    6010: b9405285     	ldr	w5, [x20, #0x50]
    6014: f2c0ff88     	movk	x8, #0x7fc, lsl #32
    6018: f9401a61     	ldr	x1, [x19, #0x30]
    601c: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000601c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6020: 91000000     	add	x0, x0, #0x0
		0000000000006020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6024: a93ea3a9     	stp	x9, x8, [x29, #-0x18]
    6028: ab1602e8     	adds	x8, x23, x22
    602c: a900a3ff     	stp	xzr, x8, [sp, #0x8]
    6030: d10063a8     	sub	x8, x29, #0x18
    6034: 29037fe5     	stp	w5, wzr, [sp, #0x18]
    6038: f90013e8     	str	x8, [sp, #0x20]
    603c: 54000101     	b.ne	0x605c <aw9620x_reg_update_boot_work+0x3c4>
    6040: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1467
    6044: 91000042     	add	x2, x2, #0x0
		0000000000006044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1467
    6048: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c1
    604c: 91000063     	add	x3, x3, #0x0
		000000000000604c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c1
    6050: 5280c464     	mov	w4, #0x623              // =1571
    6054: 94000000     	bl	0x6054 <aw9620x_reg_update_boot_work+0x3bc>
		0000000000006054:  R_AARCH64_CALL26	_dev_printk
    6058: 14000022     	b	0x60e0 <aw9620x_reg_update_boot_work+0x448>
    605c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000605c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12fc
    6060: 91000042     	add	x2, x2, #0x0
		0000000000006060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12fc
    6064: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c1
    6068: 91000063     	add	x3, x3, #0x0
		0000000000006068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c1
    606c: 5280c4e4     	mov	w4, #0x627              // =1575
    6070: 94000000     	bl	0x6070 <aw9620x_reg_update_boot_work+0x3d8>
		0000000000006070:  R_AARCH64_CALL26	_dev_printk
    6074: 910023e1     	add	x1, sp, #0x8
    6078: aa1303e0     	mov	x0, x19
    607c: 94000000     	bl	0x607c <aw9620x_reg_update_boot_work+0x3e4>
		000000000000607c:  R_AARCH64_CALL26	aw9620x_flash_update
    6080: 35000300     	cbnz	w0, 0x60e0 <aw9620x_reg_update_boot_work+0x448>
    6084: f9401a61     	ldr	x1, [x19, #0x30]
    6088: 90000015     	adrp	x21, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    608c: 910002b5     	add	x21, x21, #0x0
		000000000000608c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6090: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3050
    6094: 91000042     	add	x2, x2, #0x0
		0000000000006094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3050
    6098: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    609c: 91000063     	add	x3, x3, #0x0
		000000000000609c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    60a0: aa1503e0     	mov	x0, x21
    60a4: 52818e64     	mov	w4, #0xc73              // =3187
    60a8: 94000000     	bl	0x60a8 <aw9620x_reg_update_boot_work+0x410>
		00000000000060a8:  R_AARCH64_CALL26	_dev_printk
    60ac: aa1403e0     	mov	x0, x20
    60b0: 94000000     	bl	0x60b0 <aw9620x_reg_update_boot_work+0x418>
		00000000000060b0:  R_AARCH64_CALL26	kfree
    60b4: f9401a61     	ldr	x1, [x19, #0x30]
    60b8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000060b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3083
    60bc: 91000042     	add	x2, x2, #0x0
		00000000000060bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3083
    60c0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000060c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe03
    60c4: 91000063     	add	x3, x3, #0x0
		00000000000060c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe03
    60c8: 910b7665     	add	x5, x19, #0x2dd
    60cc: aa1503e0     	mov	x0, x21
    60d0: 52819244     	mov	w4, #0xc92              // =3218
    60d4: 94000000     	bl	0x60d4 <aw9620x_reg_update_boot_work+0x43c>
		00000000000060d4:  R_AARCH64_CALL26	_dev_printk
    60d8: 2a1f03e0     	mov	w0, wzr
    60dc: 14000017     	b	0x6138 <aw9620x_reg_update_boot_work+0x4a0>
    60e0: f9401a61     	ldr	x1, [x19, #0x30]
    60e4: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000060e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    60e8: 91000000     	add	x0, x0, #0x0
		00000000000060e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    60ec: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000060ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d20
    60f0: 91000042     	add	x2, x2, #0x0
		00000000000060f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d20
    60f4: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000060f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c1
    60f8: 91000063     	add	x3, x3, #0x0
		00000000000060f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c1
    60fc: 52818e24     	mov	w4, #0xc71              // =3185
    6100: 94000000     	bl	0x6100 <aw9620x_reg_update_boot_work+0x468>
		0000000000006100:  R_AARCH64_CALL26	_dev_printk
    6104: aa1403e0     	mov	x0, x20
    6108: 94000000     	bl	0x6108 <aw9620x_reg_update_boot_work+0x470>
		0000000000006108:  R_AARCH64_CALL26	kfree
    610c: f9401a61     	ldr	x1, [x19, #0x30]
    6110: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6114: 91000000     	add	x0, x0, #0x0
		0000000000006114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6118: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306d
    611c: 91000042     	add	x2, x2, #0x0
		000000000000611c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306d
    6120: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe03
    6124: 91000063     	add	x3, x3, #0x0
		0000000000006124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe03
    6128: 910b7665     	add	x5, x19, #0x2dd
    612c: 528191e4     	mov	w4, #0xc8f              // =3215
    6130: 94000000     	bl	0x6130 <aw9620x_reg_update_boot_work+0x498>
		0000000000006130:  R_AARCH64_CALL26	_dev_printk
    6134: 12800000     	mov	w0, #-0x1               // =-1
    6138: d5384108     	mrs	x8, SP_EL0
    613c: f9438908     	ldr	x8, [x8, #0x710]
    6140: f85f83a9     	ldur	x9, [x29, #-0x8]
    6144: eb09011f     	cmp	x8, x9
    6148: 54000181     	b.ne	0x6178 <aw9620x_reg_update_boot_work+0x4e0>
    614c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    6150: f9402bf9     	ldr	x25, [sp, #0x50]
    6154: a94757f6     	ldp	x22, x21, [sp, #0x70]
    6158: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    615c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    6160: 910243ff     	add	sp, sp, #0x90
    6164: d50323bf     	autiasp
    6168: d65f03c0     	ret
    616c: d4200020     	brk	#0x1
    6170: 52800220     	mov	w0, #0x11               // =17
    6174: 94000000     	bl	0x6174 <aw9620x_reg_update_boot_work+0x4dc>
		0000000000006174:  R_AARCH64_CALL26	__fortify_panic
    6178: 94000000     	bl	0x6178 <aw9620x_reg_update_boot_work+0x4e0>
		0000000000006178:  R_AARCH64_CALL26	__stack_chk_fail
