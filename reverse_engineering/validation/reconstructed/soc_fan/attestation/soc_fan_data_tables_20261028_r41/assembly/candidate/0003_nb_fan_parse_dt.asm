
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d98 <nb_fan_parse_dt>:
     d98: d503233f     	paciasp
     d9c: d101c3ff     	sub	sp, sp, #0x70
     da0: a9027bfd     	stp	x29, x30, [sp, #0x20]
     da4: a90367fa     	stp	x26, x25, [sp, #0x30]
     da8: a9045ff8     	stp	x24, x23, [sp, #0x40]
     dac: a90557f6     	stp	x22, x21, [sp, #0x50]
     db0: a9064ff4     	stp	x20, x19, [sp, #0x60]
     db4: 910083fd     	add	x29, sp, #0x20
     db8: d5384108     	mrs	x8, SP_EL0
     dbc: aa0003f3     	mov	x19, x0
     dc0: aa1f03e1     	mov	x1, xzr
     dc4: f9438908     	ldr	x8, [x8, #0x710]
     dc8: f81f83a8     	stur	x8, [x29, #-0x8]
     dcc: f9400008     	ldr	x8, [x0]
     dd0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     dd4: f90003ff     	str	xzr, [sp]
     dd8: f9417514     	ldr	x20, [x8, #0x2e8]
     ddc: aa1403e0     	mov	x0, x20
     de0: 94000000     	bl	0xde0 <nb_fan_parse_dt+0x48>
		0000000000000de0:  R_AARCH64_CALL26	of_get_next_available_child
     de4: b4000ca0     	cbz	x0, 0xf78 <nb_fan_parse_dt+0x1e0>
     de8: aa0003e1     	mov	x1, x0
     dec: 12800015     	mov	w21, #-0x1              // =-1
     df0: aa1403e0     	mov	x0, x20
     df4: 94000000     	bl	0xdf4 <nb_fan_parse_dt+0x5c>
		0000000000000df4:  R_AARCH64_CALL26	of_get_next_available_child
     df8: aa0003e1     	mov	x1, x0
     dfc: 110006b5     	add	w21, w21, #0x1
     e00: b5ffff80     	cbnz	x0, 0xdf0 <nb_fan_parse_dt+0x58>
     e04: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
     e08: 6b0802bf     	cmp	w21, w8
     e0c: 54000b62     	b.hs	0xf78 <nb_fan_parse_dt+0x1e0>
     e10: 35000c95     	cbnz	w21, 0xfa0 <nb_fan_parse_dt+0x208>
     e14: f9400260     	ldr	x0, [x19]
     e18: 52801501     	mov	w1, #0xa8               // =168
     e1c: 5281b802     	mov	w2, #0xdc0              // =3520
     e20: 94000000     	bl	0xe20 <nb_fan_parse_dt+0x88>
		0000000000000e20:  R_AARCH64_CALL26	devm_kmalloc
     e24: f9000660     	str	x0, [x19, #0x8]
     e28: b4000d40     	cbz	x0, 0xfd0 <nb_fan_parse_dt+0x238>
     e2c: aa1403e0     	mov	x0, x20
     e30: aa1f03e1     	mov	x1, xzr
     e34: 94000000     	bl	0xe34 <nb_fan_parse_dt+0x9c>
		0000000000000e34:  R_AARCH64_CALL26	of_get_next_available_child
     e38: b4000940     	cbz	x0, 0xf60 <nb_fan_parse_dt+0x1c8>
     e3c: aa0003f5     	mov	x21, x0
     e40: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92f
     e44: 910002d6     	add	x22, x22, #0x0
		0000000000000e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92f
     e48: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c
     e4c: 910002f7     	add	x23, x23, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c
     e50: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     e54: 91000318     	add	x24, x24, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     e58: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     e5c: 91000339     	add	x25, x25, #0x0
		0000000000000e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     e60: 14000006     	b	0xe78 <nb_fan_parse_dt+0xe0>
     e64: aa1403e0     	mov	x0, x20
     e68: aa1503e1     	mov	x1, x21
     e6c: 94000000     	bl	0xe6c <nb_fan_parse_dt+0xd4>
		0000000000000e6c:  R_AARCH64_CALL26	of_get_next_available_child
     e70: aa0003f5     	mov	x21, x0
     e74: b4000760     	cbz	x0, 0xf60 <nb_fan_parse_dt+0x1c8>
     e78: aa1503e0     	mov	x0, x21
     e7c: aa1603e1     	mov	x1, x22
     e80: aa1f03e2     	mov	x2, xzr
     e84: 94000000     	bl	0xe84 <nb_fan_parse_dt+0xec>
		0000000000000e84:  R_AARCH64_CALL26	of_get_property
     e88: b5000060     	cbnz	x0, 0xe94 <nb_fan_parse_dt+0xfc>
     e8c: f94002a0     	ldr	x0, [x21]
     e90: b4001000     	cbz	x0, 0x1090 <nb_fan_parse_dt+0x2f8>
     e94: 39400008     	ldrb	w8, [x0]
     e98: 71019908     	subs	w8, w8, #0x66
     e9c: 54000081     	b.ne	0xeac <nb_fan_parse_dt+0x114>
     ea0: 39400408     	ldrb	w8, [x0, #0x1]
     ea4: 71018508     	subs	w8, w8, #0x61
     ea8: 54000540     	b.eq	0xf50 <nb_fan_parse_dt+0x1b8>
     eac: 35fffdc8     	cbnz	w8, 0xe64 <nb_fan_parse_dt+0xcc>
     eb0: f9400668     	ldr	x8, [x19, #0x8]
     eb4: b4fffd88     	cbz	x8, 0xe64 <nb_fan_parse_dt+0xcc>
     eb8: aa0003fa     	mov	x26, x0
     ebc: f9400260     	ldr	x0, [x19]
     ec0: 910062a1     	add	x1, x21, #0x18
     ec4: aa1f03e2     	mov	x2, xzr
     ec8: 94000000     	bl	0xec8 <nb_fan_parse_dt+0x130>
		0000000000000ec8:  R_AARCH64_CALL26	devm_fwnode_pwm_get
     ecc: b13ffc1f     	cmn	x0, #0xfff
     ed0: 540004c2     	b.hs	0xf68 <nb_fan_parse_dt+0x1d0>
     ed4: f9400668     	ldr	x8, [x19, #0x8]
     ed8: 910003e2     	mov	x2, sp
     edc: f900111a     	str	x26, [x8, #0x20]
     ee0: f9400668     	ldr	x8, [x19, #0x8]
     ee4: f9003500     	str	x0, [x8, #0x68]
     ee8: f9400668     	ldr	x8, [x19, #0x8]
     eec: f9403501     	ldr	x1, [x8, #0x68]
     ef0: a941a820     	ldp	x0, x10, [x1, #0x18]
     ef4: f9402028     	ldr	x8, [x1, #0x40]
     ef8: b9402829     	ldr	w9, [x1, #0x28]
     efc: a900a3ff     	stp	xzr, x8, [sp, #0x8]
     f00: f941c808     	ldr	x8, [x0, #0x390]
     f04: b90013e9     	str	w9, [sp, #0x10]
     f08: f90003ea     	str	x10, [sp]
     f0c: f9400d08     	ldr	x8, [x8, #0x18]
     f10: 79002bff     	strh	wzr, [sp, #0x14]
     f14: b85fc110     	ldur	w16, [x8, #-0x4]
     f18: 7292fa11     	movk	w17, #0x97d0
     f1c: 72bbba11     	movk	w17, #0xddd0, lsl #16
     f20: 6b11021f     	cmp	w16, w17
     f24: 54000040     	b.eq	0xf2c <nb_fan_parse_dt+0x194>
     f28: d4304500     	brk	#0x8228
     f2c: d63f0100     	blr	x8
     f30: 35000640     	cbnz	w0, 0xff8 <nb_fan_parse_dt+0x260>
     f34: aa1703e0     	mov	x0, x23
     f38: aa1803e1     	mov	x1, x24
     f3c: aa1903e2     	mov	x2, x25
     f40: 52805c83     	mov	w3, #0x2e4              // =740
     f44: aa1a03e4     	mov	x4, x26
     f48: 94000000     	bl	0xf48 <nb_fan_parse_dt+0x1b0>
		0000000000000f48:  R_AARCH64_CALL26	_printk
     f4c: 17ffffc6     	b	0xe64 <nb_fan_parse_dt+0xcc>
     f50: 39400808     	ldrb	w8, [x0, #0x2]
     f54: 5101b908     	sub	w8, w8, #0x6e
     f58: 35fff868     	cbnz	w8, 0xe64 <nb_fan_parse_dt+0xcc>
     f5c: 17ffffd5     	b	0xeb0 <nb_fan_parse_dt+0x118>
     f60: 2a1f03f3     	mov	w19, wzr
     f64: 1400003d     	b	0x1058 <nb_fan_parse_dt+0x2c0>
     f68: 3108141f     	cmn	w0, #0x205
     f6c: 540005e1     	b.ne	0x1028 <nb_fan_parse_dt+0x290>
     f70: 12804093     	mov	w19, #-0x205            // =-517
     f74: 14000039     	b	0x1058 <nb_fan_parse_dt+0x2c0>
     f78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x735
     f7c: 91000000     	add	x0, x0, #0x0
		0000000000000f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x735
     f80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     f84: 91000021     	add	x1, x1, #0x0
		0000000000000f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     f88: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     f8c: 91000042     	add	x2, x2, #0x0
		0000000000000f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     f90: 52805443     	mov	w3, #0x2a2              // =674
     f94: 94000000     	bl	0xf94 <nb_fan_parse_dt+0x1fc>
		0000000000000f94:  R_AARCH64_CALL26	_printk
     f98: 12800253     	mov	w19, #-0x13             // =-19
     f9c: 1400002f     	b	0x1058 <nb_fan_parse_dt+0x2c0>
     fa0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50f
     fa4: 91000000     	add	x0, x0, #0x0
		0000000000000fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50f
     fa8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     fac: 91000021     	add	x1, x1, #0x0
		0000000000000fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     fb0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     fb4: 91000042     	add	x2, x2, #0x0
		0000000000000fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     fb8: 110006a4     	add	w4, w21, #0x1
     fbc: 528054e3     	mov	w3, #0x2a7              // =679
     fc0: 52800025     	mov	w5, #0x1                // =1
     fc4: 94000000     	bl	0xfc4 <nb_fan_parse_dt+0x22c>
		0000000000000fc4:  R_AARCH64_CALL26	_printk
     fc8: 128002b3     	mov	w19, #-0x16             // =-22
     fcc: 14000023     	b	0x1058 <nb_fan_parse_dt+0x2c0>
     fd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ee
     fd4: 91000000     	add	x0, x0, #0x0
		0000000000000fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ee
     fd8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     fdc: 91000021     	add	x1, x1, #0x0
		0000000000000fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     fe0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     fe4: 91000042     	add	x2, x2, #0x0
		0000000000000fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     fe8: 528057a3     	mov	w3, #0x2bd              // =701
     fec: 94000000     	bl	0xfec <nb_fan_parse_dt+0x254>
		0000000000000fec:  R_AARCH64_CALL26	_printk
     ff0: 12800173     	mov	w19, #-0xc              // =-12
     ff4: 14000019     	b	0x1058 <nb_fan_parse_dt+0x2c0>
     ff8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f7
     ffc: 91000108     	add	x8, x8, #0x0
		0000000000000ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f7
    1000: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1004: 91000021     	add	x1, x1, #0x0
		0000000000001004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1008: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
    100c: 91000042     	add	x2, x2, #0x0
		000000000000100c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
    1010: aa0003f3     	mov	x19, x0
    1014: aa0803e0     	mov	x0, x8
    1018: 52805c23     	mov	w3, #0x2e1              // =737
    101c: aa1a03e4     	mov	x4, x26
    1020: 94000000     	bl	0x1020 <nb_fan_parse_dt+0x288>
		0000000000001020:  R_AARCH64_CALL26	_printk
    1024: 1400000d     	b	0x1058 <nb_fan_parse_dt+0x2c0>
    1028: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x767
    102c: 91000108     	add	x8, x8, #0x0
		000000000000102c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x767
    1030: aa0003f3     	mov	x19, x0
    1034: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1038: 91000021     	add	x1, x1, #0x0
		0000000000001038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    103c: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000103c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
    1040: 91000042     	add	x2, x2, #0x0
		0000000000001040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
    1044: aa0803e0     	mov	x0, x8
    1048: 52805aa3     	mov	w3, #0x2d5              // =725
    104c: aa1a03e4     	mov	x4, x26
    1050: 2a1303e5     	mov	w5, w19
    1054: 94000000     	bl	0x1054 <nb_fan_parse_dt+0x2bc>
		0000000000001054:  R_AARCH64_CALL26	_printk
    1058: d5384108     	mrs	x8, SP_EL0
    105c: f9438908     	ldr	x8, [x8, #0x710]
    1060: f85f83a9     	ldur	x9, [x29, #-0x8]
    1064: eb09011f     	cmp	x8, x9
    1068: 54000241     	b.ne	0x10b0 <nb_fan_parse_dt+0x318>
    106c: 2a1303e0     	mov	w0, w19
    1070: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    1074: a94557f6     	ldp	x22, x21, [sp, #0x50]
    1078: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    107c: a94367fa     	ldp	x26, x25, [sp, #0x30]
    1080: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1084: 9101c3ff     	add	sp, sp, #0x70
    1088: d50323bf     	autiasp
    108c: d65f03c0     	ret
    1090: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x681
    1094: 91000000     	add	x0, x0, #0x0
		0000000000001094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x681
    1098: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    109c: 91000021     	add	x1, x1, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    10a0: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000010a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
    10a4: 91000042     	add	x2, x2, #0x0
		00000000000010a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
    10a8: 52805883     	mov	w3, #0x2c4              // =708
    10ac: 17ffffba     	b	0xf94 <nb_fan_parse_dt+0x1fc>
    10b0: 94000000     	bl	0x10b0 <nb_fan_parse_dt+0x318>
		00000000000010b0:  R_AARCH64_CALL26	__stack_chk_fail
