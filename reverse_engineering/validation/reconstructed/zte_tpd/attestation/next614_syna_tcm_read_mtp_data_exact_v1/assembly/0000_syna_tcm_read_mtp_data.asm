
/input/candidate_module_v4.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005e88 <syna_tcm_read_mtp_data>:
    5e88: d503233f     	paciasp
    5e8c: d10543ff     	sub	sp, sp, #0x150
    5e90: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    5e94: a9106ffc     	stp	x28, x27, [sp, #0x100]
    5e98: a91167fa     	stp	x26, x25, [sp, #0x110]
    5e9c: a9125ff8     	stp	x24, x23, [sp, #0x120]
    5ea0: a91357f6     	stp	x22, x21, [sp, #0x130]
    5ea4: a9144ff4     	stp	x20, x19, [sp, #0x140]
    5ea8: 9103c3fd     	add	x29, sp, #0xf0
    5eac: d5384108     	mrs	x8, SP_EL0
    5eb0: f9438908     	ldr	x8, [x8, #0x710]
    5eb4: f81f83a8     	stur	x8, [x29, #-0x8]
    5eb8: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    5ebc: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    5ec0: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    5ec4: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    5ec8: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    5ecc: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    5ed0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    5ed4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    5ed8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    5edc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    5ee0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    5ee4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    5ee8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    5eec: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    5ef0: b4000e60     	cbz	x0, 0x60bc <syna_tcm_read_mtp_data+0x234>
    5ef4: aa0103f6     	mov	x22, x1
    5ef8: b4000e81     	cbz	x1, 0x60c8 <syna_tcm_read_mtp_data+0x240>
    5efc: 2a0203f4     	mov	w20, w2
    5f00: 34000e42     	cbz	w2, 0x60c8 <syna_tcm_read_mtp_data+0x240>
    5f04: 2a0403f7     	mov	w23, w4
    5f08: 2a0303f8     	mov	w24, w3
    5f0c: aa0003f3     	mov	x19, x0
    5f10: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    5f14: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    5f18: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    5f1c: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    5f20: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    5f24: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    5f28: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    5f2c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    5f30: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    5f34: f9002bff     	str	xzr, [sp, #0x50]
    5f38: 34000084     	cbz	w4, 0x5f48 <syna_tcm_read_mtp_data+0xc0>
    5f3c: b9420e79     	ldr	w25, [x19, #0x20c]
    5f40: b941ea75     	ldr	w21, [x19, #0x1e8]
    5f44: 14000003     	b	0x5f50 <syna_tcm_read_mtp_data+0xc8>
    5f48: 2a1f03f5     	mov	w21, wzr
    5f4c: 2a1f03f9     	mov	w25, wzr
    5f50: 910143e8     	add	x8, sp, #0x50
    5f54: 9000001a     	adrp	x26, 0x5000 <syna_tcm_read_cs_data+0x1700>
		0000000000005f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd8
    5f58: 9100035a     	add	x26, x26, #0x0
		0000000000005f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd8
    5f5c: 9000001b     	adrp	x27, 0x5000 <syna_tcm_read_cs_data+0x1700>
		0000000000005f5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    5f60: 9100037b     	add	x27, x27, #0x0
		0000000000005f60:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    5f64: 91014100     	add	x0, x8, #0x50
    5f68: aa1a03e1     	mov	x1, x26
    5f6c: aa1b03e2     	mov	x2, x27
    5f70: a9097fff     	stp	xzr, xzr, [sp, #0x90]
    5f74: 94000000     	bl	0x5f74 <syna_tcm_read_mtp_data+0xec>
		0000000000005f74:  R_AARCH64_CALL26	__mutex_init
    5f78: 910023e8     	add	x8, sp, #0x8
    5f7c: aa1a03e1     	mov	x1, x26
    5f80: aa1b03e2     	mov	x2, x27
    5f84: 91004100     	add	x0, x8, #0x10
    5f88: 390123ff     	strb	wzr, [sp, #0x48]
    5f8c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    5f90: 94000000     	bl	0x5f90 <syna_tcm_read_mtp_data+0x108>
		0000000000005f90:  R_AARCH64_CALL26	__mutex_init
    5f94: 910143e1     	add	x1, sp, #0x50
    5f98: aa1303e0     	mov	x0, x19
    5f9c: 2a1903e2     	mov	w2, w25
    5fa0: 2a1503e3     	mov	w3, w21
    5fa4: 97fff151     	bl	0x24e8 <syna_tcm_update_flash_block+0x7b4>
		0000000000005fa4:  R_AARCH64_CALL26	syna_tcm_set_up_flash_access
    5fa8: 37f809e0     	tbnz	w0, #0x1f, 0x60e4 <syna_tcm_read_mtp_data+0x25c>
    5fac: f9403be8     	ldr	x8, [sp, #0x70]
    5fb0: 39400102     	ldrb	w2, [x8]
    5fb4: 7100085f     	cmp	w2, #0x2
    5fb8: 54000ce9     	b.ls	0x6154 <syna_tcm_read_mtp_data+0x2cc>
    5fbc: b9407fe8     	ldr	w8, [sp, #0x7c]
    5fc0: 340000a8     	cbz	w8, 0x5fd4 <syna_tcm_read_mtp_data+0x14c>
    5fc4: 0b080289     	add	w9, w20, w8
    5fc8: 51000529     	sub	w9, w9, #0x1
    5fcc: 1ac80929     	udiv	w9, w9, w8
    5fd0: 14000002     	b	0x5fd8 <syna_tcm_read_mtp_data+0x150>
    5fd4: 2a1f03e9     	mov	w9, wzr
    5fd8: 1b087d23     	mul	w3, w9, w8
    5fdc: 910143e1     	add	x1, sp, #0x50
    5fe0: 910023e2     	add	x2, sp, #0x8
    5fe4: aa1303e0     	mov	x0, x19
    5fe8: 2a1803e4     	mov	w4, w24
    5fec: 2a1703e5     	mov	w5, w23
    5ff0: 97fff68b     	bl	0x3a1c <syna_tcm_read_cs_data+0x11c>
		0000000000005ff0:  R_AARCH64_CALL26	syna_tcm_read_flash_mtp_config
    5ff4: 37f80be0     	tbnz	w0, #0x1f, 0x6170 <syna_tcm_read_mtp_data+0x2e8>
    5ff8: f94007e1     	ldr	x1, [sp, #0x8]
    5ffc: b4000d61     	cbz	x1, 0x61a8 <syna_tcm_read_mtp_data+0x320>
    6000: b94013e2     	ldr	w2, [sp, #0x10]
    6004: 6b14005f     	cmp	w2, w20
    6008: 54000c23     	b.lo	0x618c <syna_tcm_read_mtp_data+0x304>
    600c: 2a1403e2     	mov	w2, w20
    6010: aa1603e0     	mov	x0, x22
    6014: 94000000     	bl	0x6014 <syna_tcm_read_mtp_data+0x18c>
		0000000000006014:  R_AARCH64_CALL26	memcpy
    6018: 2a1f03f4     	mov	w20, wzr
    601c: 39402668     	ldrb	w8, [x19, #0x9]
    6020: 71002d1f     	cmp	w8, #0xb
    6024: 540000a1     	b.ne	0x6038 <syna_tcm_read_mtp_data+0x1b0>
    6028: aa1303e0     	mov	x0, x19
    602c: 52800021     	mov	w1, #0x1                // =1
    6030: 2a1503e2     	mov	w2, w21
    6034: 94000000     	bl	0x6034 <syna_tcm_read_mtp_data+0x1ac>
		0000000000006034:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    6038: 394123e2     	ldrb	w2, [sp, #0x48]
    603c: 350005c2     	cbnz	w2, 0x60f4 <syna_tcm_read_mtp_data+0x26c>
    6040: f94007f3     	ldr	x19, [sp, #0x8]
    6044: 94000000     	bl	0x6044 <syna_tcm_read_mtp_data+0x1bc>
		0000000000006044:  R_AARCH64_CALL26	syna_request_managed_device
    6048: b4000620     	cbz	x0, 0x610c <syna_tcm_read_mtp_data+0x284>
    604c: b4000073     	cbz	x19, 0x6058 <syna_tcm_read_mtp_data+0x1d0>
    6050: aa1303e1     	mov	x1, x19
    6054: 94000000     	bl	0x6054 <syna_tcm_read_mtp_data+0x1cc>
		0000000000006054:  R_AARCH64_CALL26	devm_kfree
    6058: 394343e2     	ldrb	w2, [sp, #0xd0]
    605c: f9000bff     	str	xzr, [sp, #0x10]
    6060: 390123ff     	strb	wzr, [sp, #0x48]
    6064: 35000602     	cbnz	w2, 0x6124 <syna_tcm_read_mtp_data+0x29c>
    6068: f9404bf3     	ldr	x19, [sp, #0x90]
    606c: 94000000     	bl	0x606c <syna_tcm_read_mtp_data+0x1e4>
		000000000000606c:  R_AARCH64_CALL26	syna_request_managed_device
    6070: b4000660     	cbz	x0, 0x613c <syna_tcm_read_mtp_data+0x2b4>
    6074: b4000073     	cbz	x19, 0x6080 <syna_tcm_read_mtp_data+0x1f8>
    6078: aa1303e1     	mov	x1, x19
    607c: 94000000     	bl	0x607c <syna_tcm_read_mtp_data+0x1f4>
		000000000000607c:  R_AARCH64_CALL26	devm_kfree
    6080: 2a1403e0     	mov	w0, w20
    6084: d5384108     	mrs	x8, SP_EL0
    6088: f9438908     	ldr	x8, [x8, #0x710]
    608c: f85f83a9     	ldur	x9, [x29, #-0x8]
    6090: eb09011f     	cmp	x8, x9
    6094: 54000981     	b.ne	0x61c4 <syna_tcm_read_mtp_data+0x33c>
    6098: a9544ff4     	ldp	x20, x19, [sp, #0x140]
    609c: a95357f6     	ldp	x22, x21, [sp, #0x130]
    60a0: a9525ff8     	ldp	x24, x23, [sp, #0x120]
    60a4: a95167fa     	ldp	x26, x25, [sp, #0x110]
    60a8: a9506ffc     	ldp	x28, x27, [sp, #0x100]
    60ac: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    60b0: 910543ff     	add	sp, sp, #0x150
    60b4: d50323bf     	autiasp
    60b8: d65f03c0     	ret
    60bc: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000060bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    60c0: 91000000     	add	x0, x0, #0x0
		00000000000060c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    60c4: 14000003     	b	0x60d0 <syna_tcm_read_mtp_data+0x248>
    60c8: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000060c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ff4
    60cc: 91000000     	add	x0, x0, #0x0
		00000000000060cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ff4
    60d0: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000060d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2996
    60d4: 91000021     	add	x1, x1, #0x0
		00000000000060d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2996
    60d8: 94000000     	bl	0x60d8 <syna_tcm_read_mtp_data+0x250>
		00000000000060d8:  R_AARCH64_CALL26	_printk
    60dc: 12801e00     	mov	w0, #-0xf1              // =-241
    60e0: 17ffffe9     	b	0x6084 <syna_tcm_read_mtp_data+0x1fc>
    60e4: 2a0003f4     	mov	w20, w0
    60e8: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000060e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    60ec: 91000000     	add	x0, x0, #0x0
		00000000000060ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    60f0: 14000023     	b	0x617c <syna_tcm_read_mtp_data+0x2f4>
    60f4: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000060f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    60f8: 91000000     	add	x0, x0, #0x0
		00000000000060f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    60fc: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000060fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    6100: 91000021     	add	x1, x1, #0x0
		0000000000006100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    6104: 94000000     	bl	0x6104 <syna_tcm_read_mtp_data+0x27c>
		0000000000006104:  R_AARCH64_CALL26	_printk
    6108: 17ffffce     	b	0x6040 <syna_tcm_read_mtp_data+0x1b8>
    610c: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000610c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    6110: 91000000     	add	x0, x0, #0x0
		0000000000006110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    6114: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    6118: 91000021     	add	x1, x1, #0x0
		0000000000006118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    611c: 94000000     	bl	0x611c <syna_tcm_read_mtp_data+0x294>
		000000000000611c:  R_AARCH64_CALL26	_printk
    6120: 17ffffce     	b	0x6058 <syna_tcm_read_mtp_data+0x1d0>
    6124: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    6128: 91000000     	add	x0, x0, #0x0
		0000000000006128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    612c: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000612c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    6130: 91000021     	add	x1, x1, #0x0
		0000000000006130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    6134: 94000000     	bl	0x6134 <syna_tcm_read_mtp_data+0x2ac>
		0000000000006134:  R_AARCH64_CALL26	_printk
    6138: 17ffffcc     	b	0x6068 <syna_tcm_read_mtp_data+0x1e0>
    613c: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000613c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    6140: 91000000     	add	x0, x0, #0x0
		0000000000006140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    6144: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    6148: 91000021     	add	x1, x1, #0x0
		0000000000006148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    614c: 94000000     	bl	0x614c <syna_tcm_read_mtp_data+0x2c4>
		000000000000614c:  R_AARCH64_CALL26	_printk
    6150: 17ffffcc     	b	0x6080 <syna_tcm_read_mtp_data+0x1f8>
    6154: 2a0003f4     	mov	w20, w0
    6158: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f56
    615c: 91000000     	add	x0, x0, #0x0
		000000000000615c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f56
    6160: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2996
    6164: 91000021     	add	x1, x1, #0x0
		0000000000006164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2996
    6168: 94000000     	bl	0x6168 <syna_tcm_read_mtp_data+0x2e0>
		0000000000006168:  R_AARCH64_CALL26	_printk
    616c: 17ffffac     	b	0x601c <syna_tcm_read_mtp_data+0x194>
    6170: 2a0003f4     	mov	w20, w0
    6174: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eec
    6178: 91000000     	add	x0, x0, #0x0
		0000000000006178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eec
    617c: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000617c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2996
    6180: 91000021     	add	x1, x1, #0x0
		0000000000006180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2996
    6184: 94000000     	bl	0x6184 <syna_tcm_read_mtp_data+0x2fc>
		0000000000006184:  R_AARCH64_CALL26	_printk
    6188: 17ffffa5     	b	0x601c <syna_tcm_read_mtp_data+0x194>
    618c: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000618c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83de
    6190: 91000000     	add	x0, x0, #0x0
		0000000000006190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83de
    6194: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    6198: 91000021     	add	x1, x1, #0x0
		0000000000006198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    619c: 2a1403e3     	mov	w3, w20
    61a0: 2a1403e4     	mov	w4, w20
    61a4: 94000000     	bl	0x61a4 <syna_tcm_read_mtp_data+0x31c>
		00000000000061a4:  R_AARCH64_CALL26	_printk
    61a8: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000061a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc670
    61ac: 91000000     	add	x0, x0, #0x0
		00000000000061ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc670
    61b0: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000061b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2996
    61b4: 91000021     	add	x1, x1, #0x0
		00000000000061b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2996
    61b8: 94000000     	bl	0x61b8 <syna_tcm_read_mtp_data+0x330>
		00000000000061b8:  R_AARCH64_CALL26	_printk
    61bc: 128002b4     	mov	w20, #-0x16             // =-22
    61c0: 17ffff97     	b	0x601c <syna_tcm_read_mtp_data+0x194>
    61c4: 94000000     	bl	0x61c4 <syna_tcm_read_mtp_data+0x33c>
		00000000000061c4:  R_AARCH64_CALL26	__stack_chk_fail
