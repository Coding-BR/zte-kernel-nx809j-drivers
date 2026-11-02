
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d980 <syna_tcm_read_flash_address>:
   1d980: d503233f     	paciasp
   1d984: d103c3ff     	sub	sp, sp, #0xf0
   1d988: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
   1d98c: f9005bf9     	str	x25, [sp, #0xb0]
   1d990: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
   1d994: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   1d998: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   1d99c: 910283fd     	add	x29, sp, #0xa0
   1d9a0: d5384108     	mrs	x8, SP_EL0
   1d9a4: f9438908     	ldr	x8, [x8, #0x710]
   1d9a8: f81f83a8     	stur	x8, [x29, #-0x8]
   1d9ac: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   1d9b0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   1d9b4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   1d9b8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1d9bc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1d9c0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1d9c4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1d9c8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1d9cc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1d9d0: f90003ff     	str	xzr, [sp]
   1d9d4: b4000bc0     	cbz	x0, 0x1db4c <syna_tcm_read_flash_address+0x1cc>
   1d9d8: aa0303f6     	mov	x22, x3
   1d9dc: b4000be3     	cbz	x3, 0x1db58 <syna_tcm_read_flash_address+0x1d8>
   1d9e0: 2a0403f3     	mov	w19, w4
   1d9e4: 2a0203f5     	mov	w21, w2
   1d9e8: 2a0103f7     	mov	w23, w1
   1d9ec: aa0003f4     	mov	x20, x0
   1d9f0: 34000064     	cbz	w4, 0x1d9fc <syna_tcm_read_flash_address+0x7c>
   1d9f4: b941ea83     	ldr	w3, [x20, #0x1e8]
   1d9f8: 14000002     	b	0x1da00 <syna_tcm_read_flash_address+0x80>
   1d9fc: 2a1f03e3     	mov	w3, wzr
   1da00: 39402699     	ldrb	w25, [x20, #0x9]
   1da04: 71002f3f     	cmp	w25, #0xb
   1da08: 54000061     	b.ne	0x1da14 <syna_tcm_read_flash_address+0x94>
   1da0c: 2a1f03f8     	mov	w24, wzr
   1da10: 14000007     	b	0x1da2c <syna_tcm_read_flash_address+0xac>
   1da14: 910003e1     	mov	x1, sp
   1da18: aa1403e0     	mov	x0, x20
   1da1c: 2a1303e2     	mov	w2, w19
   1da20: 9400008f     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   1da24: 2a0003f8     	mov	w24, w0
   1da28: 37f80d00     	tbnz	w0, #0x1f, 0x1dbc8 <syna_tcm_read_flash_address+0x248>
   1da2c: 910003e8     	mov	x8, sp
   1da30: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001da30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1da34: 91000021     	add	x1, x1, #0x0
		000000000001da34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   1da38: 90000002     	adrp	x2, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001da38:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   1da3c: 91000042     	add	x2, x2, #0x0
		000000000001da3c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   1da40: 91014100     	add	x0, x8, #0x50
   1da44: 390203ff     	strb	wzr, [sp, #0x80]
   1da48: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1da4c: 94000000     	bl	0x1da4c <syna_tcm_read_flash_address+0xcc>
		000000000001da4c:  R_AARCH64_CALL26	__mutex_init
   1da50: 34000475     	cbz	w21, 0x1dadc <syna_tcm_read_flash_address+0x15c>
   1da54: b9400ad8     	ldr	w24, [x22, #0x8]
   1da58: f94002c0     	ldr	x0, [x22]
   1da5c: 6b15031f     	cmp	w24, w21
   1da60: 54000242     	b.hs	0x1daa8 <syna_tcm_read_flash_address+0x128>
   1da64: b40000c0     	cbz	x0, 0x1da7c <syna_tcm_read_flash_address+0xfc>
   1da68: aa0003f8     	mov	x24, x0
   1da6c: 94000000     	bl	0x1da6c <syna_tcm_read_flash_address+0xec>
		000000000001da6c:  R_AARCH64_CALL26	syna_request_managed_device
   1da70: b4000be0     	cbz	x0, 0x1dbec <syna_tcm_read_flash_address+0x26c>
   1da74: aa1803e1     	mov	x1, x24
   1da78: 94000000     	bl	0x1da78 <syna_tcm_read_flash_address+0xf8>
		000000000001da78:  R_AARCH64_CALL26	devm_kfree
   1da7c: 94000000     	bl	0x1da7c <syna_tcm_read_flash_address+0xfc>
		000000000001da7c:  R_AARCH64_CALL26	syna_request_managed_device
   1da80: b4000c40     	cbz	x0, 0x1dc08 <syna_tcm_read_flash_address+0x288>
   1da84: 710002bf     	cmp	w21, #0x0
   1da88: 54000acd     	b.le	0x1dbe0 <syna_tcm_read_flash_address+0x260>
   1da8c: 2a1503f8     	mov	w24, w21
   1da90: 5281b802     	mov	w2, #0xdc0              // =3520
   1da94: aa1803e1     	mov	x1, x24
   1da98: 94000000     	bl	0x1da98 <syna_tcm_read_flash_address+0x118>
		000000000001da98:  R_AARCH64_CALL26	devm_kmalloc
   1da9c: f90002c0     	str	x0, [x22]
   1daa0: b4000c00     	cbz	x0, 0x1dc20 <syna_tcm_read_flash_address+0x2a0>
   1daa4: b9000ad5     	str	w21, [x22, #0x8]
   1daa8: 2a1f03e1     	mov	w1, wzr
   1daac: aa1803e2     	mov	x2, x24
   1dab0: 94000000     	bl	0x1dab0 <syna_tcm_read_flash_address+0x130>
		000000000001dab0:  R_AARCH64_CALL26	memset
   1dab4: f94002c2     	ldr	x2, [x22]
   1dab8: aa1403e0     	mov	x0, x20
   1dabc: 2a1703e1     	mov	w1, w23
   1dac0: 2a1503e3     	mov	w3, w21
   1dac4: 2a1303e4     	mov	w4, w19
   1dac8: b9000edf     	str	wzr, [x22, #0xc]
   1dacc: 9400011d     	bl	0x1df40 <syna_tcm_read_flash>
   1dad0: 37f806a0     	tbnz	w0, #0x1f, 0x1dba4 <syna_tcm_read_flash_address+0x224>
   1dad4: 2a1f03f8     	mov	w24, wzr
   1dad8: b9000ed5     	str	w21, [x22, #0xc]
   1dadc: 7100073f     	cmp	w25, #0x1
   1dae0: 540000a1     	b.ne	0x1daf4 <syna_tcm_read_flash_address+0x174>
   1dae4: aa1403e0     	mov	x0, x20
   1dae8: 52800021     	mov	w1, #0x1                // =1
   1daec: 2a1303e2     	mov	w2, w19
   1daf0: 94000000     	bl	0x1daf0 <syna_tcm_read_flash_address+0x170>
		000000000001daf0:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   1daf4: 394203e2     	ldrb	w2, [sp, #0x80]
   1daf8: 350003e2     	cbnz	w2, 0x1db74 <syna_tcm_read_flash_address+0x1f4>
   1dafc: f94023f3     	ldr	x19, [sp, #0x40]
   1db00: 94000000     	bl	0x1db00 <syna_tcm_read_flash_address+0x180>
		000000000001db00:  R_AARCH64_CALL26	syna_request_managed_device
   1db04: b4000440     	cbz	x0, 0x1db8c <syna_tcm_read_flash_address+0x20c>
   1db08: b4000073     	cbz	x19, 0x1db14 <syna_tcm_read_flash_address+0x194>
   1db0c: aa1303e1     	mov	x1, x19
   1db10: 94000000     	bl	0x1db10 <syna_tcm_read_flash_address+0x190>
		000000000001db10:  R_AARCH64_CALL26	devm_kfree
   1db14: d5384108     	mrs	x8, SP_EL0
   1db18: f9438908     	ldr	x8, [x8, #0x710]
   1db1c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1db20: eb09011f     	cmp	x8, x9
   1db24: 540009a1     	b.ne	0x1dc58 <syna_tcm_read_flash_address+0x2d8>
   1db28: 2a1803e0     	mov	w0, w24
   1db2c: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   1db30: f9405bf9     	ldr	x25, [sp, #0xb0]
   1db34: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   1db38: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
   1db3c: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
   1db40: 9103c3ff     	add	sp, sp, #0xf0
   1db44: d50323bf     	autiasp
   1db48: d65f03c0     	ret
   1db4c: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1db50: 91000000     	add	x0, x0, #0x0
		000000000001db50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1db54: 14000003     	b	0x1db60 <syna_tcm_read_flash_address+0x1e0>
   1db58: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bb1
   1db5c: 91000000     	add	x0, x0, #0x0
		000000000001db5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bb1
   1db60: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x539a
   1db64: 91000021     	add	x1, x1, #0x0
		000000000001db64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x539a
   1db68: 94000000     	bl	0x1db68 <syna_tcm_read_flash_address+0x1e8>
		000000000001db68:  R_AARCH64_CALL26	_printk
   1db6c: 12801e18     	mov	w24, #-0xf1             // =-241
   1db70: 17ffffe9     	b	0x1db14 <syna_tcm_read_flash_address+0x194>
   1db74: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1db78: 91000000     	add	x0, x0, #0x0
		000000000001db78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1db7c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1db80: 91000021     	add	x1, x1, #0x0
		000000000001db80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1db84: 94000000     	bl	0x1db84 <syna_tcm_read_flash_address+0x204>
		000000000001db84:  R_AARCH64_CALL26	_printk
   1db88: 17ffffdd     	b	0x1dafc <syna_tcm_read_flash_address+0x17c>
   1db8c: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1db90: 91000000     	add	x0, x0, #0x0
		000000000001db90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1db94: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001db94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1db98: 91000021     	add	x1, x1, #0x0
		000000000001db98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1db9c: 94000000     	bl	0x1db9c <syna_tcm_read_flash_address+0x21c>
		000000000001db9c:  R_AARCH64_CALL26	_printk
   1dba0: 17ffffdd     	b	0x1db14 <syna_tcm_read_flash_address+0x194>
   1dba4: 2a0003f8     	mov	w24, w0
   1dba8: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88c8
   1dbac: 91000000     	add	x0, x0, #0x0
		000000000001dbac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88c8
   1dbb0: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dbb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x539a
   1dbb4: 91000021     	add	x1, x1, #0x0
		000000000001dbb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x539a
   1dbb8: 2a1503e2     	mov	w2, w21
   1dbbc: 2a1703e3     	mov	w3, w23
   1dbc0: 94000000     	bl	0x1dbc0 <syna_tcm_read_flash_address+0x240>
		000000000001dbc0:  R_AARCH64_CALL26	_printk
   1dbc4: 17ffffc6     	b	0x1dadc <syna_tcm_read_flash_address+0x15c>
   1dbc8: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dbc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   1dbcc: 91000000     	add	x0, x0, #0x0
		000000000001dbcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   1dbd0: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dbd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x539a
   1dbd4: 91000021     	add	x1, x1, #0x0
		000000000001dbd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x539a
   1dbd8: 94000000     	bl	0x1dbd8 <syna_tcm_read_flash_address+0x258>
		000000000001dbd8:  R_AARCH64_CALL26	_printk
   1dbdc: 17ffffce     	b	0x1db14 <syna_tcm_read_flash_address+0x194>
   1dbe0: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dbe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1dbe4: 91000000     	add	x0, x0, #0x0
		000000000001dbe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1dbe8: 1400000a     	b	0x1dc10 <syna_tcm_read_flash_address+0x290>
   1dbec: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dbec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1dbf0: 91000000     	add	x0, x0, #0x0
		000000000001dbf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1dbf4: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dbf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1dbf8: 91000021     	add	x1, x1, #0x0
		000000000001dbf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1dbfc: 94000000     	bl	0x1dbfc <syna_tcm_read_flash_address+0x27c>
		000000000001dbfc:  R_AARCH64_CALL26	_printk
   1dc00: 94000000     	bl	0x1dc00 <syna_tcm_read_flash_address+0x280>
		000000000001dc00:  R_AARCH64_CALL26	syna_request_managed_device
   1dc04: b5fff400     	cbnz	x0, 0x1da84 <syna_tcm_read_flash_address+0x104>
   1dc08: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1dc0c: 91000000     	add	x0, x0, #0x0
		000000000001dc0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1dc10: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1dc14: 91000021     	add	x1, x1, #0x0
		000000000001dc14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1dc18: 94000000     	bl	0x1dc18 <syna_tcm_read_flash_address+0x298>
		000000000001dc18:  R_AARCH64_CALL26	_printk
   1dc1c: f90002df     	str	xzr, [x22]
   1dc20: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1dc24: 91000000     	add	x0, x0, #0x0
		000000000001dc24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1dc28: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1dc2c: 91000021     	add	x1, x1, #0x0
		000000000001dc2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1dc30: 2a1503e2     	mov	w2, w21
   1dc34: 94000000     	bl	0x1dc34 <syna_tcm_read_flash_address+0x2b4>
		000000000001dc34:  R_AARCH64_CALL26	_printk
   1dc38: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286f
   1dc3c: 91000000     	add	x0, x0, #0x0
		000000000001dc3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286f
   1dc40: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001dc40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x539a
   1dc44: 91000021     	add	x1, x1, #0x0
		000000000001dc44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x539a
   1dc48: f90006df     	str	xzr, [x22, #0x8]
   1dc4c: 94000000     	bl	0x1dc4c <syna_tcm_read_flash_address+0x2cc>
		000000000001dc4c:  R_AARCH64_CALL26	_printk
   1dc50: 12801e58     	mov	w24, #-0xf3             // =-243
   1dc54: 17ffffa2     	b	0x1dadc <syna_tcm_read_flash_address+0x15c>
   1dc58: 94000000     	bl	0x1dc58 <syna_tcm_read_flash_address+0x2d8>
		000000000001dc58:  R_AARCH64_CALL26	__stack_chk_fail
