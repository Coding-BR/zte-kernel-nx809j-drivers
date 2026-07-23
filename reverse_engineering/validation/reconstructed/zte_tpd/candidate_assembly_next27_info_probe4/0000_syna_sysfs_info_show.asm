
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000de84 <syna_sysfs_info_show>:
    de84: d503233f     	paciasp
    de88: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    de8c: a90167fa     	stp	x26, x25, [sp, #0x10]
    de90: a9025ff8     	stp	x24, x23, [sp, #0x20]
    de94: a90357f6     	stp	x22, x21, [sp, #0x30]
    de98: a9044ff4     	stp	x20, x19, [sp, #0x40]
    de9c: 910003fd     	mov	x29, sp
    dea0: f9400c08     	ldr	x8, [x0, #0x18]
    dea4: aa0203f4     	mov	x20, x2
    dea8: 90000002     	adrp	x2, 0xd000 <syna_spi_probe+0xff0>
		000000000000dea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45ca
    deac: 91000042     	add	x2, x2, #0x0
		000000000000deac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45ca
    deb0: 90000004     	adrp	x4, 0xd000 <syna_spi_probe+0xff0>
		000000000000deb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35c7
    deb4: 91000084     	add	x4, x4, #0x0
		000000000000deb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35c7
    deb8: f9404d15     	ldr	x21, [x8, #0x98]
    debc: aa1403e0     	mov	x0, x20
    dec0: 52820001     	mov	w1, #0x1000             // =4096
    dec4: 52800023     	mov	w3, #0x1                // =1
    dec8: f94002b6     	ldr	x22, [x21]
    decc: 94000000     	bl	0xdecc <syna_sysfs_info_show+0x48>
		000000000000decc:  R_AARCH64_CALL26	scnprintf
    ded0: 2a0003f3     	mov	w19, w0
    ded4: 37f81a40     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    ded8: 2a1303e8     	mov	w8, w19
    dedc: 52820009     	mov	w9, #0x1000             // =4096
    dee0: 90000002     	adrp	x2, 0xd000 <syna_spi_probe+0xff0>
		000000000000dee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x395b
    dee4: 91000042     	add	x2, x2, #0x0
		000000000000dee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x395b
    dee8: 8b140114     	add	x20, x8, x20
    deec: cb080121     	sub	x1, x9, x8
    def0: aa1403e0     	mov	x0, x20
    def4: 52800043     	mov	w3, #0x2                // =2
    def8: 52800184     	mov	w4, #0xc                // =12
    defc: 94000000     	bl	0xdefc <syna_sysfs_info_show+0x78>
		000000000000defc:  R_AARCH64_CALL26	scnprintf
    df00: 37f818c0     	tbnz	w0, #0x1f, 0xe218 <syna_sysfs_info_show+0x394>
    df04: b9457ea8     	ldr	w8, [x21, #0x57c]
    df08: 39560aa9     	ldrb	w9, [x21, #0x582]
    df0c: 2a0003ea     	mov	w10, w0
    df10: 8b204280     	add	x0, x20, w0, uxtw
    df14: 0b130154     	add	w20, w10, w19
    df18: 71000d1f     	cmp	w8, #0x3
    df1c: 370000a9     	tbnz	w9, #0x0, 0xdf30 <syna_sysfs_info_show+0xac>
    df20: 540000a0     	b.eq	0xdf34 <syna_sysfs_info_show+0xb0>
    df24: 90000002     	adrp	x2, 0xd000 <syna_spi_probe+0xff0>
		000000000000df24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51cf
    df28: 91000042     	add	x2, x2, #0x0
		000000000000df28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51cf
    df2c: 14000004     	b	0xdf3c <syna_sysfs_info_show+0xb8>
    df30: 54000101     	b.ne	0xdf50 <syna_sysfs_info_show+0xcc>
    df34: 90000002     	adrp	x2, 0xd000 <syna_spi_probe+0xff0>
		000000000000df34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27c9
    df38: 91000042     	add	x2, x2, #0x0
		000000000000df38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27c9
    df3c: 52820008     	mov	w8, #0x1000             // =4096
    df40: cb344101     	sub	x1, x8, w20, uxtw
    df44: 94000000     	bl	0xdf44 <syna_sysfs_info_show+0xc0>
		000000000000df44:  R_AARCH64_CALL26	scnprintf
    df48: 0b140013     	add	w19, w0, w20
    df4c: 140000b4     	b	0xe21c <syna_sysfs_info_show+0x398>
    df50: 52820008     	mov	w8, #0x1000             // =4096
    df54: b94386a4     	ldr	w4, [x21, #0x384]
    df58: 90000002     	adrp	x2, 0xd000 <syna_spi_probe+0xff0>
		000000000000df58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1495
    df5c: 91000042     	add	x2, x2, #0x0
		000000000000df5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1495
    df60: cb344101     	sub	x1, x8, w20, uxtw
    df64: 90000003     	adrp	x3, 0xd000 <syna_spi_probe+0xff0>
		000000000000df64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3142
    df68: 91000063     	add	x3, x3, #0x0
		000000000000df68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3142
    df6c: aa0003f7     	mov	x23, x0
    df70: 94000000     	bl	0xdf70 <syna_sysfs_info_show+0xec>
		000000000000df70:  R_AARCH64_CALL26	scnprintf
    df74: 2a0003f3     	mov	w19, w0
    df78: 37f81520     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    df7c: 2a1303e8     	mov	w8, w19
    df80: 0b140275     	add	w21, w19, w20
    df84: 52820009     	mov	w9, #0x1000             // =4096
    df88: 394202c3     	ldrb	w3, [x22, #0x80]
    df8c: 8b0802f4     	add	x20, x23, x8
    df90: cb150121     	sub	x1, x9, x21
    df94: 90000002     	adrp	x2, 0xd000 <syna_spi_probe+0xff0>
		000000000000df94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43af
    df98: 91000042     	add	x2, x2, #0x0
		000000000000df98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43af
    df9c: aa1403e0     	mov	x0, x20
    dfa0: 94000000     	bl	0xdfa0 <syna_sysfs_info_show+0x11c>
		000000000000dfa0:  R_AARCH64_CALL26	scnprintf
    dfa4: 2a0003f3     	mov	w19, w0
    dfa8: 37f813a0     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    dfac: 394206c3     	ldrb	w3, [x22, #0x81]
    dfb0: 8b334294     	add	x20, x20, w19, uxtw
    dfb4: 90000008     	adrp	x8, 0xd000 <syna_spi_probe+0xff0>
		000000000000dfb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c2
    dfb8: 91000108     	add	x8, x8, #0x0
		000000000000dfb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c2
    dfbc: 90000009     	adrp	x9, 0xd000 <syna_spi_probe+0xff0>
		000000000000dfbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aa4
    dfc0: 91000129     	add	x9, x9, #0x0
		000000000000dfc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aa4
    dfc4: 7100047f     	cmp	w3, #0x1
    dfc8: 0b1302b5     	add	w21, w21, w19
    dfcc: 9000000a     	adrp	x10, 0xd000 <syna_spi_probe+0xff0>
		000000000000dfcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2007
    dfd0: 9100014a     	add	x10, x10, #0x0
		000000000000dfd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2007
    dfd4: 9a880128     	csel	x8, x9, x8, eq
    dfd8: 71002c7f     	cmp	w3, #0xb
    dfdc: 52820009     	mov	w9, #0x1000             // =4096
    dfe0: 9a880142     	csel	x2, x10, x8, eq
    dfe4: aa1403e0     	mov	x0, x20
    dfe8: cb150121     	sub	x1, x9, x21
    dfec: 94000000     	bl	0xdfec <syna_sysfs_info_show+0x168>
		000000000000dfec:  R_AARCH64_CALL26	scnprintf
    dff0: 2a0003f3     	mov	w19, w0
    dff4: 37f81140     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    dff8: 8b334294     	add	x20, x20, w19, uxtw
    dffc: 0b150275     	add	w21, w19, w21
    e000: 52820008     	mov	w8, #0x1000             // =4096
    e004: cb150101     	sub	x1, x8, x21
    e008: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef7
    e00c: 91000042     	add	x2, x2, #0x0
		000000000000e00c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef7
    e010: aa1403e0     	mov	x0, x20
    e014: 94000000     	bl	0xe014 <syna_sysfs_info_show+0x190>
		000000000000e014:  R_AARCH64_CALL26	scnprintf
    e018: 2a0003f3     	mov	w19, w0
    e01c: 37f81000     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e020: b1020adf     	cmn	x22, #0x82
    e024: 540011a0     	b.eq	0xe258 <syna_sysfs_info_show+0x3d4>
    e028: ab334288     	adds	x8, x20, w19, uxtw
    e02c: 54001160     	b.eq	0xe258 <syna_sysfs_info_show+0x3d4>
    e030: 0b150269     	add	w9, w19, w21
    e034: 5282000a     	mov	w10, #0x1000            // =4096
    e038: 4b090143     	sub	w3, w10, w9
    e03c: 7100407f     	cmp	w3, #0x10
    e040: 54000fe3     	b.lo	0xe23c <syna_sysfs_info_show+0x3b8>
    e044: f84822ca     	ldur	x10, [x22, #0x82]
    e048: f848a2cb     	ldur	x11, [x22, #0x8a]
    e04c: 11004135     	add	w21, w9, #0x10
    e050: 52820009     	mov	w9, #0x1000             // =4096
    e054: 91004114     	add	x20, x8, #0x10
    e058: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x337d
    e05c: 91000042     	add	x2, x2, #0x0
		000000000000e05c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x337d
    e060: cb150121     	sub	x1, x9, x21
    e064: aa1403e0     	mov	x0, x20
    e068: a9002d0a     	stp	x10, x11, [x8]
    e06c: 94000000     	bl	0xe06c <syna_sysfs_info_show+0x1e8>
		000000000000e06c:  R_AARCH64_CALL26	scnprintf
    e070: 2a0003f3     	mov	w19, w0
    e074: 37f80d40     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e078: 8b334294     	add	x20, x20, w19, uxtw
    e07c: 0b150273     	add	w19, w19, w21
    e080: 52820008     	mov	w8, #0x1000             // =4096
    e084: b9400ec3     	ldr	w3, [x22, #0xc]
    e088: cb130101     	sub	x1, x8, x19
    e08c: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e08c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43c7
    e090: 91000042     	add	x2, x2, #0x0
		000000000000e090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43c7
    e094: aa1403e0     	mov	x0, x20
    e098: 94000000     	bl	0xe098 <syna_sysfs_info_show+0x214>
		000000000000e098:  R_AARCH64_CALL26	scnprintf
    e09c: 37f80be0     	tbnz	w0, #0x1f, 0xe218 <syna_sysfs_info_show+0x394>
    e0a0: 394206c8     	ldrb	w8, [x22, #0x81]
    e0a4: 0b130013     	add	w19, w0, w19
    e0a8: 7100051f     	cmp	w8, #0x1
    e0ac: 54000b81     	b.ne	0xe21c <syna_sysfs_info_show+0x398>
    e0b0: 52820008     	mov	w8, #0x1000             // =4096
    e0b4: 8b204294     	add	x20, x20, w0, uxtw
    e0b8: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e0b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x202f
    e0bc: 91000042     	add	x2, x2, #0x0
		000000000000e0bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x202f
    e0c0: cb334101     	sub	x1, x8, w19, uxtw
    e0c4: aa1403e0     	mov	x0, x20
    e0c8: 94000000     	bl	0xe0c8 <syna_sysfs_info_show+0x244>
		000000000000e0c8:  R_AARCH64_CALL26	scnprintf
    e0cc: 37f80a60     	tbnz	w0, #0x1f, 0xe218 <syna_sysfs_info_show+0x394>
    e0d0: 8b204294     	add	x20, x20, w0, uxtw
    e0d4: aa1f03f8     	mov	x24, xzr
    e0d8: 0b130017     	add	w23, w0, w19
    e0dc: 910092d9     	add	x25, x22, #0x24
    e0e0: 5282001a     	mov	w26, #0x1000            // =4096
    e0e4: 90000015     	adrp	x21, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e0e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27c2
    e0e8: 910002b5     	add	x21, x21, #0x0
		000000000000e0e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27c2
    e0ec: cb374341     	sub	x1, x26, w23, uxtw
    e0f0: 38786b23     	ldrb	w3, [x25, x24]
    e0f4: aa1403e0     	mov	x0, x20
    e0f8: aa1503e2     	mov	x2, x21
    e0fc: 94000000     	bl	0xe0fc <syna_sysfs_info_show+0x278>
		000000000000e0fc:  R_AARCH64_CALL26	scnprintf
    e100: 2a0003f3     	mov	w19, w0
    e104: 37f808c0     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e108: 91000718     	add	x24, x24, #0x1
    e10c: 8b334294     	add	x20, x20, w19, uxtw
    e110: 0b170277     	add	w23, w19, w23
    e114: f100431f     	cmp	x24, #0x10
    e118: 54fffea1     	b.ne	0xe0ec <syna_sysfs_info_show+0x268>
    e11c: 52820008     	mov	w8, #0x1000             // =4096
    e120: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x337d
    e124: 91000042     	add	x2, x2, #0x0
		000000000000e124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x337d
    e128: cb374101     	sub	x1, x8, w23, uxtw
    e12c: aa1403e0     	mov	x0, x20
    e130: 94000000     	bl	0xe130 <syna_sysfs_info_show+0x2ac>
		000000000000e130:  R_AARCH64_CALL26	scnprintf
    e134: 2a0003f3     	mov	w19, w0
    e138: 37f80720     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e13c: 294212c3     	ldp	w3, w4, [x22, #0x10]
    e140: 8b334280     	add	x0, x20, w19, uxtw
    e144: 0b170268     	add	w8, w19, w23
    e148: 52820009     	mov	w9, #0x1000             // =4096
    e14c: cb080121     	sub	x1, x9, x8
    e150: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35cb
    e154: 91000042     	add	x2, x2, #0x0
		000000000000e154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35cb
    e158: 94000000     	bl	0xe158 <syna_sysfs_info_show+0x2d4>
		000000000000e158:  R_AARCH64_CALL26	scnprintf
    e15c: 37f805e0     	tbnz	w0, #0x1f, 0xe218 <syna_sysfs_info_show+0x394>
    e160: 0b130008     	add	w8, w0, w19
    e164: 52820009     	mov	w9, #0x1000             // =4096
    e168: b9401ac3     	ldr	w3, [x22, #0x18]
    e16c: 0b170115     	add	w21, w8, w23
    e170: 8b080294     	add	x20, x20, x8
    e174: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2044
    e178: 91000042     	add	x2, x2, #0x0
		000000000000e178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2044
    e17c: cb150121     	sub	x1, x9, x21
    e180: aa1403e0     	mov	x0, x20
    e184: 94000000     	bl	0xe184 <syna_sysfs_info_show+0x300>
		000000000000e184:  R_AARCH64_CALL26	scnprintf
    e188: 2a0003f3     	mov	w19, w0
    e18c: 37f80480     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e190: 8b334294     	add	x20, x20, w19, uxtw
    e194: 0b150275     	add	w21, w19, w21
    e198: 52820008     	mov	w8, #0x1000             // =4096
    e19c: 29438ec4     	ldp	w4, w3, [x22, #0x1c]
    e1a0: cb150101     	sub	x1, x8, x21
    e1a4: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x592
    e1a8: 91000042     	add	x2, x2, #0x0
		000000000000e1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x592
    e1ac: aa1403e0     	mov	x0, x20
    e1b0: 94000000     	bl	0xe1b0 <syna_sysfs_info_show+0x32c>
		000000000000e1b0:  R_AARCH64_CALL26	scnprintf
    e1b4: 2a0003f3     	mov	w19, w0
    e1b8: 37f80320     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e1bc: 8b334294     	add	x20, x20, w19, uxtw
    e1c0: 0b150275     	add	w21, w19, w21
    e1c4: 52820008     	mov	w8, #0x1000             // =4096
    e1c8: b9403ec3     	ldr	w3, [x22, #0x3c]
    e1cc: cb150101     	sub	x1, x8, x21
    e1d0: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c5
    e1d4: 91000042     	add	x2, x2, #0x0
		000000000000e1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c5
    e1d8: aa1403e0     	mov	x0, x20
    e1dc: 94000000     	bl	0xe1dc <syna_sysfs_info_show+0x358>
		000000000000e1dc:  R_AARCH64_CALL26	scnprintf
    e1e0: 2a0003f3     	mov	w19, w0
    e1e4: 37f801c0     	tbnz	w0, #0x1f, 0xe21c <syna_sysfs_info_show+0x398>
    e1e8: 0b150275     	add	w21, w19, w21
    e1ec: 8b334280     	add	x0, x20, w19, uxtw
    e1f0: 52820008     	mov	w8, #0x1000             // =4096
    e1f4: b9403ac3     	ldr	w3, [x22, #0x38]
    e1f8: cb150101     	sub	x1, x8, x21
    e1fc: 90000002     	adrp	x2, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e1fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3146
    e200: 91000042     	add	x2, x2, #0x0
		000000000000e200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3146
    e204: 94000000     	bl	0xe204 <syna_sysfs_info_show+0x380>
		000000000000e204:  R_AARCH64_CALL26	scnprintf
    e208: 7100001f     	cmp	w0, #0x0
    e20c: 1a95b3e8     	csel	w8, wzr, w21, lt
    e210: 0b000113     	add	w19, w8, w0
    e214: 14000002     	b	0xe21c <syna_sysfs_info_show+0x398>
    e218: 2a0003f3     	mov	w19, w0
    e21c: 93407e60     	sxtw	x0, w19
    e220: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    e224: a94357f6     	ldp	x22, x21, [sp, #0x30]
    e228: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    e22c: a94167fa     	ldp	x26, x25, [sp, #0x10]
    e230: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    e234: d50323bf     	autiasp
    e238: d65f03c0     	ret
    e23c: 90000000     	adrp	x0, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e23c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e7
    e240: 91000000     	add	x0, x0, #0x0
		000000000000e240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e7
    e244: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa4
    e248: 91000021     	add	x1, x1, #0x0
		000000000000e248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa4
    e24c: 52800202     	mov	w2, #0x10               // =16
    e250: 52800204     	mov	w4, #0x10               // =16
    e254: 94000000     	bl	0xe254 <syna_sysfs_info_show+0x3d0>
		000000000000e254:  R_AARCH64_CALL26	_printk
    e258: 90000000     	adrp	x0, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e0
    e25c: 91000000     	add	x0, x0, #0x0
		000000000000e25c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e0
    e260: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e3
    e264: 91000021     	add	x1, x1, #0x0
		000000000000e264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e3
    e268: 94000000     	bl	0xe268 <syna_sysfs_info_show+0x3e4>
		000000000000e268:  R_AARCH64_CALL26	_printk
    e26c: 128002b3     	mov	w19, #-0x16             // =-22
    e270: 17ffffeb     	b	0xe21c <syna_sysfs_info_show+0x398>
