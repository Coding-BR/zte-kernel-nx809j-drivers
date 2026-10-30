
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d58 <aw9620x_flash_update>:
     d58: d503233f     	paciasp
     d5c: d10183ff     	sub	sp, sp, #0x60
     d60: a9017bfd     	stp	x29, x30, [sp, #0x10]
     d64: f90013f9     	str	x25, [sp, #0x20]
     d68: a9035ff8     	stp	x24, x23, [sp, #0x30]
     d6c: a90457f6     	stp	x22, x21, [sp, #0x40]
     d70: a9054ff4     	stp	x20, x19, [sp, #0x50]
     d74: 910043fd     	add	x29, sp, #0x10
     d78: d5384108     	mrs	x8, SP_EL0
     d7c: aa0103f4     	mov	x20, x1
     d80: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
     d84: 910002b5     	add	x21, x21, #0x0
		0000000000000d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
     d88: f9438908     	ldr	x8, [x8, #0x710]
     d8c: aa0003f3     	mov	x19, x0
     d90: 529e0238     	mov	w24, #0xf011            // =61457
     d94: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a4
     d98: 91000042     	add	x2, x2, #0x0
		0000000000000d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a4
     d9c: f90007e8     	str	x8, [sp, #0x8]
     da0: aa1503e3     	mov	x3, x21
     da4: 5280b5e4     	mov	w4, #0x5af              // =1455
     da8: f9401801     	ldr	x1, [x0, #0x30]
     dac: b9401285     	ldr	w5, [x20, #0x10]
     db0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
     db4: 91000000     	add	x0, x0, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
     db8: 72a78018     	movk	w24, #0x3c00, lsl #16
     dbc: 94000000     	bl	0xdbc <aw9620x_flash_update+0x64>
		0000000000000dbc:  R_AARCH64_CALL26	_dev_printk
     dc0: f9401a61     	ldr	x1, [x19, #0x30]
     dc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
     dc8: 91000000     	add	x0, x0, #0x0
		0000000000000dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
     dcc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5b
     dd0: 91000042     	add	x2, x2, #0x0
		0000000000000dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5b
     dd4: aa1503e3     	mov	x3, x21
     dd8: 5280b644     	mov	w4, #0x5b2              // =1458
     ddc: 94000000     	bl	0xddc <aw9620x_flash_update+0x84>
		0000000000000ddc:  R_AARCH64_CALL26	_dev_printk
     de0: 5281fdc8     	mov	w8, #0xfee              // =4078
     de4: aa1303e0     	mov	x0, x19
     de8: 529fe401     	mov	w1, #0xff20             // =65312
     dec: 2a080302     	orr	w2, w24, w8
     df0: 94000288     	bl	0x1810 <aw9620x_i2c_write>
     df4: 350028a0     	cbnz	w0, 0x1308 <aw9620x_flash_update+0x5b0>
     df8: aa1303e0     	mov	x0, x19
     dfc: 52888881     	mov	w1, #0x4444             // =17476
     e00: 52a00022     	mov	w2, #0x10000            // =65536
     e04: 94000283     	bl	0x1810 <aw9620x_i2c_write>
     e08: 35002920     	cbnz	w0, 0x132c <aw9620x_flash_update+0x5d4>
     e0c: aa1303e0     	mov	x0, x19
     e10: 52890401     	mov	w1, #0x4820             // =18464
     e14: 528000c2     	mov	w2, #0x6                // =6
     e18: 9400027e     	bl	0x1810 <aw9620x_i2c_write>
     e1c: 350029a0     	cbnz	w0, 0x1350 <aw9620x_flash_update+0x5f8>
     e20: 39400288     	ldrb	w8, [x20]
     e24: 7100051f     	cmp	w8, #0x1
     e28: 540000e1     	b.ne	0xe44 <aw9620x_flash_update+0xec>
     e2c: 528f2aa2     	mov	w2, #0x7955             // =31061
     e30: aa1303e0     	mov	x0, x19
     e34: 5288f281     	mov	w1, #0x4794             // =18324
     e38: 72ab4c62     	movk	w2, #0x5a63, lsl #16
     e3c: 94000275     	bl	0x1810 <aw9620x_i2c_write>
     e40: 35002ac0     	cbnz	w0, 0x1398 <aw9620x_flash_update+0x640>
     e44: f9401a61     	ldr	x1, [x19, #0x30]
     e48: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
     e4c: 910002d6     	add	x22, x22, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
     e50: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1676
     e54: 91000042     	add	x2, x2, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1676
     e58: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
     e5c: 91000063     	add	x3, x3, #0x0
		0000000000000e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
     e60: aa1603e0     	mov	x0, x22
     e64: 5280b944     	mov	w4, #0x5ca              // =1482
     e68: 94000000     	bl	0xe68 <aw9620x_flash_update+0x110>
		0000000000000e68:  R_AARCH64_CALL26	_dev_printk
     e6c: f9400e88     	ldr	x8, [x20, #0x18]
     e70: f9401a61     	ldr	x1, [x19, #0x30]
     e74: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
     e78: 910002f7     	add	x23, x23, #0x0
		0000000000000e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
     e7c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x290d
     e80: 91000042     	add	x2, x2, #0x0
		0000000000000e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x290d
     e84: b9400108     	ldr	w8, [x8]
     e88: aa1603e0     	mov	x0, x22
     e8c: aa1703e3     	mov	x3, x23
     e90: 5280ab84     	mov	w4, #0x55c              // =1372
     e94: 53077d09     	lsr	w9, w8, #7
     e98: 7200191f     	tst	w8, #0x7f
     e9c: 1a9f07e5     	cset	w5, ne
     ea0: 1a890535     	cinc	w21, w9, ne
     ea4: 2a1503e6     	mov	w6, w21
     ea8: 94000000     	bl	0xea8 <aw9620x_flash_update+0x150>
		0000000000000ea8:  R_AARCH64_CALL26	_dev_printk
     eac: f9401a61     	ldr	x1, [x19, #0x30]
     eb0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aff
     eb4: 91000042     	add	x2, x2, #0x0
		0000000000000eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aff
     eb8: aa1603e0     	mov	x0, x22
     ebc: aa1703e3     	mov	x3, x23
     ec0: 5280abe4     	mov	w4, #0x55f              // =1375
     ec4: 94000000     	bl	0xec4 <aw9620x_flash_update+0x16c>
		0000000000000ec4:  R_AARCH64_CALL26	_dev_printk
     ec8: 11060302     	add	w2, w24, #0x180
     ecc: aa1303e0     	mov	x0, x19
     ed0: 529fe401     	mov	w1, #0xff20             // =65312
     ed4: 9400024f     	bl	0x1810 <aw9620x_i2c_write>
     ed8: 350024e0     	cbnz	w0, 0x1374 <aw9620x_flash_update+0x61c>
     edc: aa1303e0     	mov	x0, x19
     ee0: 52890401     	mov	w1, #0x4820             // =18464
     ee4: 528000c2     	mov	w2, #0x6                // =6
     ee8: 9400024a     	bl	0x1810 <aw9620x_i2c_write>
     eec: 35002680     	cbnz	w0, 0x13bc <aw9620x_flash_update+0x664>
     ef0: 39400288     	ldrb	w8, [x20]
     ef4: 350000e8     	cbnz	w8, 0xf10 <aw9620x_flash_update+0x1b8>
     ef8: 528f2aa2     	mov	w2, #0x7955             // =31061
     efc: aa1303e0     	mov	x0, x19
     f00: 5288f281     	mov	w1, #0x4794             // =18324
     f04: 72ab4c62     	movk	w2, #0x5a63, lsl #16
     f08: 94000242     	bl	0x1810 <aw9620x_i2c_write>
     f0c: 35002d40     	cbnz	w0, 0x14b4 <aw9620x_flash_update+0x75c>
     f10: 35002975     	cbnz	w21, 0x143c <aw9620x_flash_update+0x6e4>
     f14: aa1303e0     	mov	x0, x19
     f18: 5288e581     	mov	w1, #0x472c             // =18220
     f1c: 528002c2     	mov	w2, #0x16               // =22
     f20: 9400023c     	bl	0x1810 <aw9620x_i2c_write>
     f24: 35002da0     	cbnz	w0, 0x14d8 <aw9620x_flash_update+0x780>
     f28: aa1303e0     	mov	x0, x19
     f2c: 52890401     	mov	w1, #0x4820             // =18464
     f30: 52800082     	mov	w2, #0x4                // =4
     f34: 94000237     	bl	0x1810 <aw9620x_i2c_write>
     f38: 35002e20     	cbnz	w0, 0x14fc <aw9620x_flash_update+0x7a4>
     f3c: 529e0222     	mov	w2, #0xf011             // =61457
     f40: aa1303e0     	mov	x0, x19
     f44: 529fe401     	mov	w1, #0xff20             // =65312
     f48: 72a78002     	movk	w2, #0x3c00, lsl #16
     f4c: 94000231     	bl	0x1810 <aw9620x_i2c_write>
     f50: f9401a61     	ldr	x1, [x19, #0x30]
     f54: 35003400     	cbnz	w0, 0x15d4 <aw9620x_flash_update+0x87c>
     f58: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
     f5c: 910002b5     	add	x21, x21, #0x0
		0000000000000f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
     f60: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2abb
     f64: 91000042     	add	x2, x2, #0x0
		0000000000000f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2abb
     f68: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
     f6c: 91000063     	add	x3, x3, #0x0
		0000000000000f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
     f70: aa1503e0     	mov	x0, x21
     f74: 5280ba44     	mov	w4, #0x5d2              // =1490
     f78: 94000000     	bl	0xf78 <aw9620x_flash_update+0x220>
		0000000000000f78:  R_AARCH64_CALL26	_dev_printk
     f7c: 29426697     	ldp	w23, w25, [x20, #0x10]
     f80: f9401a61     	ldr	x1, [x19, #0x30]
     f84: f9400696     	ldr	x22, [x20, #0x8]
     f88: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
     f8c: 91000042     	add	x2, x2, #0x0
		0000000000000f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
     f90: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e1
     f94: 91000063     	add	x3, x3, #0x0
		0000000000000f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e1
     f98: aa1503e0     	mov	x0, x21
     f9c: 5280a624     	mov	w4, #0x531              // =1329
     fa0: 94000000     	bl	0xfa0 <aw9620x_flash_update+0x248>
		0000000000000fa0:  R_AARCH64_CALL26	_dev_printk
     fa4: 39400295     	ldrb	w21, [x20]
     fa8: 11060302     	add	w2, w24, #0x180
     fac: aa1303e0     	mov	x0, x19
     fb0: 529fe401     	mov	w1, #0xff20             // =65312
     fb4: 94000217     	bl	0x1810 <aw9620x_i2c_write>
     fb8: 350031e0     	cbnz	w0, 0x15f4 <aw9620x_flash_update+0x89c>
     fbc: aa1303e0     	mov	x0, x19
     fc0: 52890401     	mov	w1, #0x4820             // =18464
     fc4: 528000c2     	mov	w2, #0x6                // =6
     fc8: 94000212     	bl	0x1810 <aw9620x_i2c_write>
     fcc: 35003180     	cbnz	w0, 0x15fc <aw9620x_flash_update+0x8a4>
     fd0: 350000f5     	cbnz	w21, 0xfec <aw9620x_flash_update+0x294>
     fd4: 528f2aa2     	mov	w2, #0x7955             // =31061
     fd8: aa1303e0     	mov	x0, x19
     fdc: 5288f281     	mov	w1, #0x4794             // =18324
     fe0: 72ab4c62     	movk	w2, #0x5a63, lsl #16
     fe4: 9400020b     	bl	0x1810 <aw9620x_i2c_write>
     fe8: 35003520     	cbnz	w0, 0x168c <aw9620x_flash_update+0x934>
     fec: 34000297     	cbz	w23, 0x103c <aw9620x_flash_update+0x2e4>
     ff0: 2a1f03f5     	mov	w21, wzr
     ff4: 11000ea8     	add	w8, w21, #0x3
     ff8: 11000aa9     	add	w9, w21, #0x2
     ffc: 110006aa     	add	w10, w21, #0x1
    1000: 38684ac8     	ldrb	w8, [x22, w8, uxtw]
    1004: 38694ac9     	ldrb	w9, [x22, w9, uxtw]
    1008: 0b150321     	add	w1, w25, w21
    100c: aa1303e0     	mov	x0, x19
    1010: 53081d08     	lsl	w8, w8, #24
    1014: 2a094108     	orr	w8, w8, w9, lsl #16
    1018: 386a4ac9     	ldrb	w9, [x22, w10, uxtw]
    101c: 2a092108     	orr	w8, w8, w9, lsl #8
    1020: 38754ac9     	ldrb	w9, [x22, w21, uxtw]
    1024: 2a090102     	orr	w2, w8, w9
    1028: 94000e46     	bl	0x4940 <aw9620x_reg_write_to_flash_once>
    102c: 35003340     	cbnz	w0, 0x1694 <aw9620x_flash_update+0x93c>
    1030: 110012b5     	add	w21, w21, #0x4
    1034: 6b1702bf     	cmp	w21, w23
    1038: 54fffde3     	b.lo	0xff4 <aw9620x_flash_update+0x29c>
    103c: aa1303e0     	mov	x0, x19
    1040: 52890401     	mov	w1, #0x4820             // =18464
    1044: 52800082     	mov	w2, #0x4                // =4
    1048: 940001f2     	bl	0x1810 <aw9620x_i2c_write>
    104c: 350030e0     	cbnz	w0, 0x1668 <aw9620x_flash_update+0x910>
    1050: 529e0222     	mov	w2, #0xf011             // =61457
    1054: aa1303e0     	mov	x0, x19
    1058: 529fe401     	mov	w1, #0xff20             // =65312
    105c: 72a78002     	movk	w2, #0x3c00, lsl #16
    1060: 940001ec     	bl	0x1810 <aw9620x_i2c_write>
    1064: f9401a61     	ldr	x1, [x19, #0x30]
    1068: 35003280     	cbnz	w0, 0x16b8 <aw9620x_flash_update+0x960>
    106c: 90000016     	adrp	x22, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    1070: 910002d6     	add	x22, x22, #0x0
		0000000000001070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    1074: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28d8
    1078: 91000042     	add	x2, x2, #0x0
		0000000000001078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28d8
    107c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000107c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    1080: 91000063     	add	x3, x3, #0x0
		0000000000001080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    1084: aa1603e0     	mov	x0, x22
    1088: 5280bb44     	mov	w4, #0x5da              // =1498
    108c: 94000000     	bl	0x108c <aw9620x_flash_update+0x334>
		000000000000108c:  R_AARCH64_CALL26	_dev_printk
    1090: f9401a61     	ldr	x1, [x19, #0x30]
    1094: f9400697     	ldr	x23, [x20, #0x8]
    1098: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    109c: 91000042     	add	x2, x2, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    10a0: b9401295     	ldr	w21, [x20, #0x10]
    10a4: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000010a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    10a8: 91000063     	add	x3, x3, #0x0
		00000000000010a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    10ac: aa1603e0     	mov	x0, x22
    10b0: 52809f44     	mov	w4, #0x4fa              // =1274
    10b4: b90007ff     	str	wzr, [sp, #0x4]
    10b8: 94000000     	bl	0x10b8 <aw9620x_flash_update+0x360>
		00000000000010b8:  R_AARCH64_CALL26	_dev_printk
    10bc: 11060302     	add	w2, w24, #0x180
    10c0: aa1303e0     	mov	x0, x19
    10c4: 529fe401     	mov	w1, #0xff20             // =65312
    10c8: 940001d2     	bl	0x1810 <aw9620x_i2c_write>
    10cc: 35003060     	cbnz	w0, 0x16d8 <aw9620x_flash_update+0x980>
    10d0: aa1303e0     	mov	x0, x19
    10d4: 52890401     	mov	w1, #0x4820             // =18464
    10d8: 52800082     	mov	w2, #0x4                // =4
    10dc: 940001cd     	bl	0x1810 <aw9620x_i2c_write>
    10e0: f9401a61     	ldr	x1, [x19, #0x30]
    10e4: 350030c0     	cbnz	w0, 0x16fc <aw9620x_flash_update+0x9a4>
    10e8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000010e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    10ec: 91000000     	add	x0, x0, #0x0
		00000000000010ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    10f0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000010f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd58
    10f4: 91000042     	add	x2, x2, #0x0
		00000000000010f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd58
    10f8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000010f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    10fc: 91000063     	add	x3, x3, #0x0
		00000000000010fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    1100: 5280a124     	mov	w4, #0x509              // =1289
    1104: 2a1503e5     	mov	w5, w21
    1108: 94000000     	bl	0x1108 <aw9620x_flash_update+0x3b0>
		0000000000001108:  R_AARCH64_CALL26	_dev_printk
    110c: 34000335     	cbz	w21, 0x1170 <aw9620x_flash_update+0x418>
    1110: 2a1f03f6     	mov	w22, wzr
    1114: b9401688     	ldr	w8, [x20, #0x14]
    1118: 910013e1     	add	x1, sp, #0x4
    111c: aa1303e0     	mov	x0, x19
    1120: 0b0802c2     	add	w2, w22, w8
    1124: 94000e55     	bl	0x4a78 <aw9620x_reg_read_val>
    1128: 350030a0     	cbnz	w0, 0x173c <aw9620x_flash_update+0x9e4>
    112c: 11000ec8     	add	w8, w22, #0x3
    1130: 11000ac9     	add	w9, w22, #0x2
    1134: 110006ca     	add	w10, w22, #0x1
    1138: 38684ae8     	ldrb	w8, [x23, w8, uxtw]
    113c: 38694ae9     	ldrb	w9, [x23, w9, uxtw]
    1140: 53081d08     	lsl	w8, w8, #24
    1144: 2a094108     	orr	w8, w8, w9, lsl #16
    1148: 386a4ae9     	ldrb	w9, [x23, w10, uxtw]
    114c: b94007ea     	ldr	w10, [sp, #0x4]
    1150: 2a092108     	orr	w8, w8, w9, lsl #8
    1154: 38764ae9     	ldrb	w9, [x23, w22, uxtw]
    1158: 2a090108     	orr	w8, w8, w9
    115c: 6b0a011f     	cmp	w8, w10
    1160: 54003001     	b.ne	0x1760 <aw9620x_flash_update+0xa08>
    1164: 110012d6     	add	w22, w22, #0x4
    1168: 6b1502df     	cmp	w22, w21
    116c: 54fffd43     	b.lo	0x1114 <aw9620x_flash_update+0x3bc>
    1170: 529e0222     	mov	w2, #0xf011             // =61457
    1174: aa1303e0     	mov	x0, x19
    1178: 529fe401     	mov	w1, #0xff20             // =65312
    117c: 72a78002     	movk	w2, #0x3c00, lsl #16
    1180: 940001a4     	bl	0x1810 <aw9620x_i2c_write>
    1184: f9401a61     	ldr	x1, [x19, #0x30]
    1188: 35002ca0     	cbnz	w0, 0x171c <aw9620x_flash_update+0x9c4>
    118c: 90000015     	adrp	x21, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    1190: 910002b5     	add	x21, x21, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    1194: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e
    1198: 91000042     	add	x2, x2, #0x0
		0000000000001198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e
    119c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000119c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    11a0: 91000063     	add	x3, x3, #0x0
		00000000000011a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    11a4: aa1503e0     	mov	x0, x21
    11a8: 5280a444     	mov	w4, #0x522              // =1314
    11ac: 94000000     	bl	0x11ac <aw9620x_flash_update+0x454>
		00000000000011ac:  R_AARCH64_CALL26	_dev_printk
    11b0: f9401a61     	ldr	x1, [x19, #0x30]
    11b4: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000011b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85f
    11b8: 91000042     	add	x2, x2, #0x0
		00000000000011b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85f
    11bc: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000011bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    11c0: 91000063     	add	x3, x3, #0x0
		00000000000011c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    11c4: aa1503e0     	mov	x0, x21
    11c8: 5280bca4     	mov	w4, #0x5e5              // =1509
    11cc: 94000000     	bl	0x11cc <aw9620x_flash_update+0x474>
		00000000000011cc:  R_AARCH64_CALL26	_dev_printk
    11d0: f9400e88     	ldr	x8, [x20, #0x18]
    11d4: 52840442     	mov	w2, #0x2022             // =8226
    11d8: aa1303e0     	mov	x0, x19
    11dc: 72a40442     	movk	w2, #0x2022, lsl #16
    11e0: aa1403e3     	mov	x3, x20
    11e4: b9400901     	ldr	w1, [x8, #0x8]
    11e8: 9400026a     	bl	0x1b90 <aw9620x_reg_write_val_to_flash>
    11ec: f9401a61     	ldr	x1, [x19, #0x30]
    11f0: 35002dc0     	cbnz	w0, 0x17a8 <aw9620x_flash_update+0xa50>
    11f4: 90000016     	adrp	x22, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000011f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    11f8: 910002d6     	add	x22, x22, #0x0
		00000000000011f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    11fc: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000011fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d6
    1200: 91000042     	add	x2, x2, #0x0
		0000000000001200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d6
    1204: aa1503e0     	mov	x0, x21
    1208: aa1603e3     	mov	x3, x22
    120c: 5280bd84     	mov	w4, #0x5ec              // =1516
    1210: 94000000     	bl	0x1210 <aw9620x_flash_update+0x4b8>
		0000000000001210:  R_AARCH64_CALL26	_dev_printk
    1214: f9400e88     	ldr	x8, [x20, #0x18]
    1218: f9400680     	ldr	x0, [x20, #0x8]
    121c: b9401281     	ldr	w1, [x20, #0x10]
    1220: b9400102     	ldr	w2, [x8]
    1224: 940002ca     	bl	0x1d4c <aw9620x_get_bin_checksum>
    1228: f9401a61     	ldr	x1, [x19, #0x30]
    122c: 2a0003f7     	mov	w23, w0
    1230: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c38
    1234: 91000042     	add	x2, x2, #0x0
		0000000000001234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c38
    1238: aa1503e0     	mov	x0, x21
    123c: aa1603e3     	mov	x3, x22
    1240: 5280be24     	mov	w4, #0x5f1              // =1521
    1244: 2a1703e5     	mov	w5, w23
    1248: 94000000     	bl	0x1248 <aw9620x_flash_update+0x4f0>
		0000000000001248:  R_AARCH64_CALL26	_dev_printk
    124c: f9400e88     	ldr	x8, [x20, #0x18]
    1250: aa1303e0     	mov	x0, x19
    1254: 2a1703e2     	mov	w2, w23
    1258: aa1403e3     	mov	x3, x20
    125c: b9400d01     	ldr	w1, [x8, #0xc]
    1260: 9400024c     	bl	0x1b90 <aw9620x_reg_write_val_to_flash>
    1264: f9401a61     	ldr	x1, [x19, #0x30]
    1268: 35002b20     	cbnz	w0, 0x17cc <aw9620x_flash_update+0xa74>
    126c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000126c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5db
    1270: 91000042     	add	x2, x2, #0x0
		0000000000001270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5db
    1274: aa1503e0     	mov	x0, x21
    1278: aa1603e3     	mov	x3, x22
    127c: 5280bf04     	mov	w4, #0x5f8              // =1528
    1280: 94000000     	bl	0x1280 <aw9620x_flash_update+0x528>
		0000000000001280:  R_AARCH64_CALL26	_dev_printk
    1284: f9401a61     	ldr	x1, [x19, #0x30]
    1288: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9f
    128c: 91000042     	add	x2, x2, #0x0
		000000000000128c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9f
    1290: aa1503e0     	mov	x0, x21
    1294: aa1603e3     	mov	x3, x22
    1298: 5280bf64     	mov	w4, #0x5fb              // =1531
    129c: 94000000     	bl	0x129c <aw9620x_flash_update+0x544>
		000000000000129c:  R_AARCH64_CALL26	_dev_printk
    12a0: 39400288     	ldrb	w8, [x20]
    12a4: 7100051f     	cmp	w8, #0x1
    12a8: 540000e1     	b.ne	0x12c4 <aw9620x_flash_update+0x56c>
    12ac: aa1303e0     	mov	x0, x19
    12b0: 5288f281     	mov	w1, #0x4794             // =18324
    12b4: 2a1f03e2     	mov	w2, wzr
    12b8: 94000156     	bl	0x1810 <aw9620x_i2c_write>
    12bc: 35002980     	cbnz	w0, 0x17ec <aw9620x_flash_update+0xa94>
    12c0: 39400288     	ldrb	w8, [x20]
    12c4: f9401a61     	ldr	x1, [x19, #0x30]
    12c8: 90000009     	adrp	x9, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000012c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28f3
    12cc: 91000129     	add	x9, x9, #0x0
		00000000000012cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28f3
    12d0: 7100011f     	cmp	w8, #0x0
    12d4: 90000008     	adrp	x8, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000012d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2f
    12d8: 91000108     	add	x8, x8, #0x0
		00000000000012d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2f
    12dc: 9a890105     	csel	x5, x8, x9, eq
    12e0: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000012e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    12e4: 91000000     	add	x0, x0, #0x0
		00000000000012e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    12e8: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000012e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cb
    12ec: 91000042     	add	x2, x2, #0x0
		00000000000012ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cb
    12f0: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    12f4: 91000063     	add	x3, x3, #0x0
		00000000000012f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    12f8: 5280c164     	mov	w4, #0x60b              // =1547
    12fc: 94000000     	bl	0x12fc <aw9620x_flash_update+0x5a4>
		00000000000012fc:  R_AARCH64_CALL26	_dev_printk
    1300: 2a1f03e0     	mov	w0, wzr
    1304: 14000041     	b	0x1408 <aw9620x_flash_update+0x6b0>
    1308: f9401a61     	ldr	x1, [x19, #0x30]
    130c: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1310: 91000000     	add	x0, x0, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1314: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    1318: 91000042     	add	x2, x2, #0x0
		0000000000001318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    131c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    1320: 91000063     	add	x3, x3, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    1324: 5280b6a4     	mov	w4, #0x5b5              // =1461
    1328: 14000036     	b	0x1400 <aw9620x_flash_update+0x6a8>
    132c: f9401a61     	ldr	x1, [x19, #0x30]
    1330: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1334: 91000000     	add	x0, x0, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1338: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x823
    133c: 91000042     	add	x2, x2, #0x0
		000000000000133c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x823
    1340: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    1344: 91000063     	add	x3, x3, #0x0
		0000000000001344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    1348: 5280b744     	mov	w4, #0x5ba              // =1466
    134c: 1400002d     	b	0x1400 <aw9620x_flash_update+0x6a8>
    1350: f9401a61     	ldr	x1, [x19, #0x30]
    1354: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1358: 91000000     	add	x0, x0, #0x0
		0000000000001358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    135c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea3
    1360: 91000042     	add	x2, x2, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea3
    1364: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    1368: 91000063     	add	x3, x3, #0x0
		0000000000001368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    136c: 5280b7e4     	mov	w4, #0x5bf              // =1471
    1370: 14000024     	b	0x1400 <aw9620x_flash_update+0x6a8>
    1374: f9401a61     	ldr	x1, [x19, #0x30]
    1378: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    137c: 91000000     	add	x0, x0, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1380: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    1384: 91000042     	add	x2, x2, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    1388: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    138c: 91000063     	add	x3, x3, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    1390: 5280ac44     	mov	w4, #0x562              // =1378
    1394: 14000012     	b	0x13dc <aw9620x_flash_update+0x684>
    1398: f9401a61     	ldr	x1, [x19, #0x30]
    139c: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000139c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    13a0: 91000000     	add	x0, x0, #0x0
		00000000000013a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    13a4: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x845
    13a8: 91000042     	add	x2, x2, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x845
    13ac: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    13b0: 91000063     	add	x3, x3, #0x0
		00000000000013b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    13b4: 5280b8a4     	mov	w4, #0x5c5              // =1477
    13b8: 14000012     	b	0x1400 <aw9620x_flash_update+0x6a8>
    13bc: f9401a61     	ldr	x1, [x19, #0x30]
    13c0: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    13c4: 91000000     	add	x0, x0, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    13c8: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    13cc: 91000042     	add	x2, x2, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    13d0: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    13d4: 91000063     	add	x3, x3, #0x0
		00000000000013d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    13d8: 5280ad04     	mov	w4, #0x568              // =1384
    13dc: 94000000     	bl	0x13dc <aw9620x_flash_update+0x684>
		00000000000013dc:  R_AARCH64_CALL26	_dev_printk
    13e0: f9401a61     	ldr	x1, [x19, #0x30]
    13e4: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    13e8: 91000000     	add	x0, x0, #0x0
		00000000000013e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    13ec: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a82
    13f0: 91000042     	add	x2, x2, #0x0
		00000000000013f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a82
    13f4: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000013f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    13f8: 91000063     	add	x3, x3, #0x0
		00000000000013f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    13fc: 5280b9a4     	mov	w4, #0x5cd              // =1485
    1400: 94000000     	bl	0x1400 <aw9620x_flash_update+0x6a8>
		0000000000001400:  R_AARCH64_CALL26	_dev_printk
    1404: 12800000     	mov	w0, #-0x1               // =-1
    1408: d5384108     	mrs	x8, SP_EL0
    140c: f9438908     	ldr	x8, [x8, #0x710]
    1410: f94007e9     	ldr	x9, [sp, #0x8]
    1414: eb09011f     	cmp	x8, x9
    1418: 54001d81     	b.ne	0x17c8 <aw9620x_flash_update+0xa70>
    141c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1420: f94013f9     	ldr	x25, [sp, #0x20]
    1424: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1428: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    142c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1430: 910183ff     	add	sp, sp, #0x60
    1434: d50323bf     	autiasp
    1438: d65f03c0     	ret
    143c: 2a1f03f6     	mov	w22, wzr
    1440: f9400e88     	ldr	x8, [x20, #0x18]
    1444: aa1303e0     	mov	x0, x19
    1448: 5288e081     	mov	w1, #0x4704             // =18180
    144c: b9400508     	ldr	w8, [x8, #0x4]
    1450: 0b0802c2     	add	w2, w22, w8
    1454: 940000ef     	bl	0x1810 <aw9620x_i2c_write>
    1458: 35000640     	cbnz	w0, 0x1520 <aw9620x_flash_update+0x7c8>
    145c: aa1303e0     	mov	x0, x19
    1460: 5288e201     	mov	w1, #0x4710             // =18192
    1464: 528000a2     	mov	w2, #0x5                // =5
    1468: 940000ea     	bl	0x1810 <aw9620x_i2c_write>
    146c: 350006c0     	cbnz	w0, 0x1544 <aw9620x_flash_update+0x7ec>
    1470: aa1303e0     	mov	x0, x19
    1474: 5288e581     	mov	w1, #0x472c             // =18220
    1478: 52801e02     	mov	w2, #0xf0               // =240
    147c: 940000e5     	bl	0x1810 <aw9620x_i2c_write>
    1480: 35000740     	cbnz	w0, 0x1568 <aw9620x_flash_update+0x810>
    1484: aa1303e0     	mov	x0, x19
    1488: 5288e281     	mov	w1, #0x4714             // =18196
    148c: 52800022     	mov	w2, #0x1                // =1
    1490: 940000e0     	bl	0x1810 <aw9620x_i2c_write>
    1494: 350007c0     	cbnz	w0, 0x158c <aw9620x_flash_update+0x834>
    1498: aa1303e0     	mov	x0, x19
    149c: 94000cef     	bl	0x4858 <aw9620x_check_isp_go_reg>
    14a0: 35000880     	cbnz	w0, 0x15b0 <aw9620x_flash_update+0x858>
    14a4: 710006b5     	subs	w21, w21, #0x1
    14a8: 110202d6     	add	w22, w22, #0x80
    14ac: 54fffca1     	b.ne	0x1440 <aw9620x_flash_update+0x6e8>
    14b0: 17fffe99     	b	0xf14 <aw9620x_flash_update+0x1bc>
    14b4: f9401a61     	ldr	x1, [x19, #0x30]
    14b8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000014b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    14bc: 91000000     	add	x0, x0, #0x0
		00000000000014bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    14c0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000014c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x845
    14c4: 91000042     	add	x2, x2, #0x0
		00000000000014c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x845
    14c8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000014c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    14cc: 91000063     	add	x3, x3, #0x0
		00000000000014cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    14d0: 5280ade4     	mov	w4, #0x56f              // =1391
    14d4: 17ffffc2     	b	0x13dc <aw9620x_flash_update+0x684>
    14d8: f9401a61     	ldr	x1, [x19, #0x30]
    14dc: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000014dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    14e0: 91000000     	add	x0, x0, #0x0
		00000000000014e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    14e4: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000014e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x204f
    14e8: 91000042     	add	x2, x2, #0x0
		00000000000014e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x204f
    14ec: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000014ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    14f0: 91000063     	add	x3, x3, #0x0
		00000000000014f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    14f4: 5280b2e4     	mov	w4, #0x597              // =1431
    14f8: 17ffffb9     	b	0x13dc <aw9620x_flash_update+0x684>
    14fc: f9401a61     	ldr	x1, [x19, #0x30]
    1500: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1504: 91000000     	add	x0, x0, #0x0
		0000000000001504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1508: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b26
    150c: 91000042     	add	x2, x2, #0x0
		000000000000150c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b26
    1510: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    1514: 91000063     	add	x3, x3, #0x0
		0000000000001514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    1518: 5280b3a4     	mov	w4, #0x59d              // =1437
    151c: 17ffffb0     	b	0x13dc <aw9620x_flash_update+0x684>
    1520: f9401a61     	ldr	x1, [x19, #0x30]
    1524: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1528: 91000000     	add	x0, x0, #0x0
		0000000000001528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    152c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000152c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x845
    1530: 91000042     	add	x2, x2, #0x0
		0000000000001530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x845
    1534: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    1538: 91000063     	add	x3, x3, #0x0
		0000000000001538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    153c: 5280af24     	mov	w4, #0x579              // =1401
    1540: 17ffffa7     	b	0x13dc <aw9620x_flash_update+0x684>
    1544: f9401a61     	ldr	x1, [x19, #0x30]
    1548: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    154c: 91000000     	add	x0, x0, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1550: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x879
    1554: 91000042     	add	x2, x2, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x879
    1558: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    155c: 91000063     	add	x3, x3, #0x0
		000000000000155c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    1560: 5280afe4     	mov	w4, #0x57f              // =1407
    1564: 17ffff9e     	b	0x13dc <aw9620x_flash_update+0x684>
    1568: f9401a61     	ldr	x1, [x19, #0x30]
    156c: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000156c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1570: 91000000     	add	x0, x0, #0x0
		0000000000001570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1574: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x204f
    1578: 91000042     	add	x2, x2, #0x0
		0000000000001578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x204f
    157c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000157c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    1580: 91000063     	add	x3, x3, #0x0
		0000000000001580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    1584: 5280b0a4     	mov	w4, #0x585              // =1413
    1588: 17ffff95     	b	0x13dc <aw9620x_flash_update+0x684>
    158c: f9401a61     	ldr	x1, [x19, #0x30]
    1590: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1594: 91000000     	add	x0, x0, #0x0
		0000000000001594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1598: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14ec
    159c: 91000042     	add	x2, x2, #0x0
		000000000000159c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14ec
    15a0: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    15a4: 91000063     	add	x3, x3, #0x0
		00000000000015a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    15a8: 5280b164     	mov	w4, #0x58b              // =1419
    15ac: 17ffff8c     	b	0x13dc <aw9620x_flash_update+0x684>
    15b0: f9401a61     	ldr	x1, [x19, #0x30]
    15b4: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    15b8: 91000000     	add	x0, x0, #0x0
		00000000000015b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    15bc: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16db
    15c0: 91000042     	add	x2, x2, #0x0
		00000000000015c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16db
    15c4: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    15c8: 91000063     	add	x3, x3, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    15cc: 5280b224     	mov	w4, #0x591              // =1425
    15d0: 17ffff83     	b	0x13dc <aw9620x_flash_update+0x684>
    15d4: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    15d8: 91000000     	add	x0, x0, #0x0
		00000000000015d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    15dc: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    15e0: 91000042     	add	x2, x2, #0x0
		00000000000015e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    15e4: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000015e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a30
    15e8: 91000063     	add	x3, x3, #0x0
		00000000000015e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a30
    15ec: 5280b464     	mov	w4, #0x5a3              // =1443
    15f0: 17ffff7b     	b	0x13dc <aw9620x_flash_update+0x684>
    15f4: 528088c4     	mov	w4, #0x446              // =1094
    15f8: 14000002     	b	0x1600 <aw9620x_flash_update+0x8a8>
    15fc: 528089a4     	mov	w4, #0x44d              // =1101
    1600: f9401a61     	ldr	x1, [x19, #0x30]
    1604: 90000014     	adrp	x20, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1608: 91000294     	add	x20, x20, #0x0
		0000000000001608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    160c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    1610: 91000042     	add	x2, x2, #0x0
		0000000000001610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    1614: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3800
    1618: 91000063     	add	x3, x3, #0x0
		0000000000001618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3800
    161c: aa1403e0     	mov	x0, x20
    1620: 94000000     	bl	0x1620 <aw9620x_flash_update+0x8c8>
		0000000000001620:  R_AARCH64_CALL26	_dev_printk
    1624: f9401a61     	ldr	x1, [x19, #0x30]
    1628: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2069
    162c: 91000042     	add	x2, x2, #0x0
		000000000000162c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2069
    1630: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e1
    1634: 91000063     	add	x3, x3, #0x0
		0000000000001634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e1
    1638: aa1403e0     	mov	x0, x20
    163c: 5280a6a4     	mov	w4, #0x535              // =1333
    1640: 94000000     	bl	0x1640 <aw9620x_flash_update+0x8e8>
		0000000000001640:  R_AARCH64_CALL26	_dev_printk
    1644: f9401a61     	ldr	x1, [x19, #0x30]
    1648: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    164c: 91000000     	add	x0, x0, #0x0
		000000000000164c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1650: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a82
    1654: 91000042     	add	x2, x2, #0x0
		0000000000001654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a82
    1658: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    165c: 91000063     	add	x3, x3, #0x0
		000000000000165c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    1660: 5280baa4     	mov	w4, #0x5d5              // =1493
    1664: 17ffff67     	b	0x1400 <aw9620x_flash_update+0x6a8>
    1668: f9401a61     	ldr	x1, [x19, #0x30]
    166c: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1670: 91000000     	add	x0, x0, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1674: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b26
    1678: 91000042     	add	x2, x2, #0x0
		0000000000001678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b26
    167c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000167c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e1
    1680: 91000063     	add	x3, x3, #0x0
		0000000000001680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e1
    1684: 5280a8e4     	mov	w4, #0x547              // =1351
    1688: 17ffffee     	b	0x1640 <aw9620x_flash_update+0x8e8>
    168c: 52808aa4     	mov	w4, #0x455              // =1109
    1690: 17ffffdc     	b	0x1600 <aw9620x_flash_update+0x8a8>
    1694: f9401a61     	ldr	x1, [x19, #0x30]
    1698: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    169c: 91000000     	add	x0, x0, #0x0
		000000000000169c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    16a0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd
    16a4: 91000042     	add	x2, x2, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd
    16a8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e1
    16ac: 91000063     	add	x3, x3, #0x0
		00000000000016ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e1
    16b0: 5280a7e4     	mov	w4, #0x53f              // =1343
    16b4: 17ffffe3     	b	0x1640 <aw9620x_flash_update+0x8e8>
    16b8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    16bc: 91000000     	add	x0, x0, #0x0
		00000000000016bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    16c0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    16c4: 91000042     	add	x2, x2, #0x0
		00000000000016c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    16c8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e1
    16cc: 91000063     	add	x3, x3, #0x0
		00000000000016cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e1
    16d0: 5280a9a4     	mov	w4, #0x54d              // =1357
    16d4: 17ffffdb     	b	0x1640 <aw9620x_flash_update+0x8e8>
    16d8: f9401a61     	ldr	x1, [x19, #0x30]
    16dc: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    16e0: 91000000     	add	x0, x0, #0x0
		00000000000016e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    16e4: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    16e8: 91000042     	add	x2, x2, #0x0
		00000000000016e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    16ec: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    16f0: 91000063     	add	x3, x3, #0x0
		00000000000016f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    16f4: 52809fe4     	mov	w4, #0x4ff              // =1279
    16f8: 14000022     	b	0x1780 <aw9620x_flash_update+0xa28>
    16fc: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000016fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1700: 91000000     	add	x0, x0, #0x0
		0000000000001700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1704: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ad
    1708: 91000042     	add	x2, x2, #0x0
		0000000000001708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ad
    170c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000170c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    1710: 91000063     	add	x3, x3, #0x0
		0000000000001710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    1714: 5280a0a4     	mov	w4, #0x505              // =1285
    1718: 1400001a     	b	0x1780 <aw9620x_flash_update+0xa28>
    171c: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000171c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1720: 91000000     	add	x0, x0, #0x0
		0000000000001720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1724: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    1728: 91000042     	add	x2, x2, #0x0
		0000000000001728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    172c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000172c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    1730: 91000063     	add	x3, x3, #0x0
		0000000000001730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    1734: 5280a3c4     	mov	w4, #0x51e              // =1310
    1738: 14000012     	b	0x1780 <aw9620x_flash_update+0xa28>
    173c: f9401a61     	ldr	x1, [x19, #0x30]
    1740: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1744: 91000000     	add	x0, x0, #0x0
		0000000000001744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1748: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22de
    174c: 91000042     	add	x2, x2, #0x0
		000000000000174c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22de
    1750: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    1754: 91000063     	add	x3, x3, #0x0
		0000000000001754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    1758: 5280a1c4     	mov	w4, #0x50e              // =1294
    175c: 14000009     	b	0x1780 <aw9620x_flash_update+0xa28>
    1760: f9401a61     	ldr	x1, [x19, #0x30]
    1764: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1768: 91000000     	add	x0, x0, #0x0
		0000000000001768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    176c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		000000000000176c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a45
    1770: 91000042     	add	x2, x2, #0x0
		0000000000001770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a45
    1774: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x319
    1778: 91000063     	add	x3, x3, #0x0
		0000000000001778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x319
    177c: 5280a2e4     	mov	w4, #0x517              // =1303
    1780: 94000000     	bl	0x1780 <aw9620x_flash_update+0xa28>
		0000000000001780:  R_AARCH64_CALL26	_dev_printk
    1784: f9401a61     	ldr	x1, [x19, #0x30]
    1788: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    178c: 91000000     	add	x0, x0, #0x0
		000000000000178c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1790: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22de
    1794: 91000042     	add	x2, x2, #0x0
		0000000000001794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22de
    1798: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    179c: 91000063     	add	x3, x3, #0x0
		000000000000179c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    17a0: 5280bc04     	mov	w4, #0x5e0              // =1504
    17a4: 17ffff17     	b	0x1400 <aw9620x_flash_update+0x6a8>
    17a8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    17ac: 91000000     	add	x0, x0, #0x0
		00000000000017ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    17b0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b7
    17b4: 91000042     	add	x2, x2, #0x0
		00000000000017b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b7
    17b8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    17bc: 91000063     	add	x3, x3, #0x0
		00000000000017bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    17c0: 5280bd24     	mov	w4, #0x5e9              // =1513
    17c4: 17ffff0f     	b	0x1400 <aw9620x_flash_update+0x6a8>
    17c8: 94000000     	bl	0x17c8 <aw9620x_flash_update+0xa70>
		00000000000017c8:  R_AARCH64_CALL26	__stack_chk_fail
    17cc: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    17d0: 91000000     	add	x0, x0, #0x0
		00000000000017d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    17d4: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26d7
    17d8: 91000042     	add	x2, x2, #0x0
		00000000000017d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26d7
    17dc: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    17e0: 91000063     	add	x3, x3, #0x0
		00000000000017e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    17e4: 5280bea4     	mov	w4, #0x5f5              // =1525
    17e8: 17ffff06     	b	0x1400 <aw9620x_flash_update+0x6a8>
    17ec: f9401a61     	ldr	x1, [x19, #0x30]
    17f0: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    17f4: 91000000     	add	x0, x0, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    17f8: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000017f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f4
    17fc: 91000042     	add	x2, x2, #0x0
		00000000000017fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f4
    1800: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c9
    1804: 91000063     	add	x3, x3, #0x0
		0000000000001804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c9
    1808: 5280bfe4     	mov	w4, #0x5ff              // =1535
    180c: 17fffefd     	b	0x1400 <aw9620x_flash_update+0x6a8>
