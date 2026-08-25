
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020f74 <syna_tcm_read_cs_data>:
   20f74: d503233f     	paciasp
   20f78: d10543ff     	sub	sp, sp, #0x150
   20f7c: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
   20f80: a9106ffc     	stp	x28, x27, [sp, #0x100]
   20f84: a91167fa     	stp	x26, x25, [sp, #0x110]
   20f88: a9125ff8     	stp	x24, x23, [sp, #0x120]
   20f8c: a91357f6     	stp	x22, x21, [sp, #0x130]
   20f90: a9144ff4     	stp	x20, x19, [sp, #0x140]
   20f94: 9103c3fd     	add	x29, sp, #0xf0
   20f98: d5384108     	mrs	x8, SP_EL0
   20f9c: f9438908     	ldr	x8, [x8, #0x710]
   20fa0: f81f83a8     	stur	x8, [x29, #-0x8]
   20fa4: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   20fa8: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   20fac: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   20fb0: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   20fb4: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   20fb8: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   20fbc: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   20fc0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   20fc4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   20fc8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   20fcc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   20fd0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   20fd4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   20fd8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   20fdc: b4000de0     	cbz	x0, 0x21198 <syna_tcm_read_cs_data+0x224>
   20fe0: aa0103f5     	mov	x21, x1
   20fe4: b4000e01     	cbz	x1, 0x211a4 <syna_tcm_read_cs_data+0x230>
   20fe8: 2a0203f4     	mov	w20, w2
   20fec: 34000dc2     	cbz	w2, 0x211a4 <syna_tcm_read_cs_data+0x230>
   20ff0: 2a0403f7     	mov	w23, w4
   20ff4: 2a0303f8     	mov	w24, w3
   20ff8: aa0003f3     	mov	x19, x0
   20ffc: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   21000: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   21004: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   21008: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   2100c: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   21010: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   21014: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   21018: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   2101c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   21020: f9002bff     	str	xzr, [sp, #0x50]
   21024: 34000084     	cbz	w4, 0x21034 <syna_tcm_read_cs_data+0xc0>
   21028: b9420e79     	ldr	w25, [x19, #0x20c]
   2102c: b941ea76     	ldr	w22, [x19, #0x1e8]
   21030: 14000003     	b	0x2103c <syna_tcm_read_cs_data+0xc8>
   21034: 2a1f03f6     	mov	w22, wzr
   21038: 2a1f03f9     	mov	w25, wzr
   2103c: 910143e8     	add	x8, sp, #0x50
   21040: 9000001a     	adrp	x26, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   21044: 9100035a     	add	x26, x26, #0x0
		0000000000021044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   21048: 9000001b     	adrp	x27, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021048:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   2104c: 9100037b     	add	x27, x27, #0x0
		000000000002104c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   21050: 91014100     	add	x0, x8, #0x50
   21054: aa1a03e1     	mov	x1, x26
   21058: aa1b03e2     	mov	x2, x27
   2105c: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   21060: 94000000     	bl	0x21060 <syna_tcm_read_cs_data+0xec>
		0000000000021060:  R_AARCH64_CALL26	__mutex_init
   21064: 910023e8     	add	x8, sp, #0x8
   21068: aa1a03e1     	mov	x1, x26
   2106c: aa1b03e2     	mov	x2, x27
   21070: 91004100     	add	x0, x8, #0x10
   21074: 390123ff     	strb	wzr, [sp, #0x48]
   21078: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   2107c: 94000000     	bl	0x2107c <syna_tcm_read_cs_data+0x108>
		000000000002107c:  R_AARCH64_CALL26	__mutex_init
   21080: 910143e1     	add	x1, sp, #0x50
   21084: aa1303e0     	mov	x0, x19
   21088: 2a1903e2     	mov	w2, w25
   2108c: 2a1603e3     	mov	w3, w22
   21090: 97fff2f3     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   21094: 37f80960     	tbnz	w0, #0x1f, 0x211c0 <syna_tcm_read_cs_data+0x24c>
   21098: b9407fe8     	ldr	w8, [sp, #0x7c]
   2109c: 340000a8     	cbz	w8, 0x210b0 <syna_tcm_read_cs_data+0x13c>
   210a0: 0b080289     	add	w9, w20, w8
   210a4: 51000529     	sub	w9, w9, #0x1
   210a8: 1ac80929     	udiv	w9, w9, w8
   210ac: 14000002     	b	0x210b4 <syna_tcm_read_cs_data+0x140>
   210b0: 2a1f03e9     	mov	w9, wzr
   210b4: 1b087d23     	mul	w3, w9, w8
   210b8: 910143e1     	add	x1, sp, #0x50
   210bc: 910023e2     	add	x2, sp, #0x8
   210c0: aa1303e0     	mov	x0, x19
   210c4: 2a1803e4     	mov	w4, w24
   210c8: 2a1703e5     	mov	w5, w23
   210cc: 97fff6da     	bl	0x1ec34 <syna_tcm_read_flash_boot_cs_config>
   210d0: 37f80b00     	tbnz	w0, #0x1f, 0x21230 <syna_tcm_read_cs_data+0x2bc>
   210d4: f94007e1     	ldr	x1, [sp, #0x8]
   210d8: b4000c81     	cbz	x1, 0x21268 <syna_tcm_read_cs_data+0x2f4>
   210dc: b94013e2     	ldr	w2, [sp, #0x10]
   210e0: 6b14005f     	cmp	w2, w20
   210e4: 54000b43     	b.lo	0x2124c <syna_tcm_read_cs_data+0x2d8>
   210e8: 2a1403e2     	mov	w2, w20
   210ec: aa1503e0     	mov	x0, x21
   210f0: 94000000     	bl	0x210f0 <syna_tcm_read_cs_data+0x17c>
		00000000000210f0:  R_AARCH64_CALL26	memcpy
   210f4: 2a1f03f4     	mov	w20, wzr
   210f8: 39402668     	ldrb	w8, [x19, #0x9]
   210fc: 71002d1f     	cmp	w8, #0xb
   21100: 540000a1     	b.ne	0x21114 <syna_tcm_read_cs_data+0x1a0>
   21104: aa1303e0     	mov	x0, x19
   21108: 52800021     	mov	w1, #0x1                // =1
   2110c: 2a1603e2     	mov	w2, w22
   21110: 94000000     	bl	0x21110 <syna_tcm_read_cs_data+0x19c>
		0000000000021110:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   21114: 394123e2     	ldrb	w2, [sp, #0x48]
   21118: 350005c2     	cbnz	w2, 0x211d0 <syna_tcm_read_cs_data+0x25c>
   2111c: f94007f3     	ldr	x19, [sp, #0x8]
   21120: 94000000     	bl	0x21120 <syna_tcm_read_cs_data+0x1ac>
		0000000000021120:  R_AARCH64_CALL26	syna_request_managed_device
   21124: b4000620     	cbz	x0, 0x211e8 <syna_tcm_read_cs_data+0x274>
   21128: b4000073     	cbz	x19, 0x21134 <syna_tcm_read_cs_data+0x1c0>
   2112c: aa1303e1     	mov	x1, x19
   21130: 94000000     	bl	0x21130 <syna_tcm_read_cs_data+0x1bc>
		0000000000021130:  R_AARCH64_CALL26	devm_kfree
   21134: 394343e2     	ldrb	w2, [sp, #0xd0]
   21138: f9000bff     	str	xzr, [sp, #0x10]
   2113c: 390123ff     	strb	wzr, [sp, #0x48]
   21140: 35000602     	cbnz	w2, 0x21200 <syna_tcm_read_cs_data+0x28c>
   21144: f9404bf3     	ldr	x19, [sp, #0x90]
   21148: 94000000     	bl	0x21148 <syna_tcm_read_cs_data+0x1d4>
		0000000000021148:  R_AARCH64_CALL26	syna_request_managed_device
   2114c: b4000660     	cbz	x0, 0x21218 <syna_tcm_read_cs_data+0x2a4>
   21150: b4000073     	cbz	x19, 0x2115c <syna_tcm_read_cs_data+0x1e8>
   21154: aa1303e1     	mov	x1, x19
   21158: 94000000     	bl	0x21158 <syna_tcm_read_cs_data+0x1e4>
		0000000000021158:  R_AARCH64_CALL26	devm_kfree
   2115c: 2a1403e0     	mov	w0, w20
   21160: d5384108     	mrs	x8, SP_EL0
   21164: f9438908     	ldr	x8, [x8, #0x710]
   21168: f85f83a9     	ldur	x9, [x29, #-0x8]
   2116c: eb09011f     	cmp	x8, x9
   21170: 540008a1     	b.ne	0x21284 <syna_tcm_read_cs_data+0x310>
   21174: a9544ff4     	ldp	x20, x19, [sp, #0x140]
   21178: a95357f6     	ldp	x22, x21, [sp, #0x130]
   2117c: a9525ff8     	ldp	x24, x23, [sp, #0x120]
   21180: a95167fa     	ldp	x26, x25, [sp, #0x110]
   21184: a9506ffc     	ldp	x28, x27, [sp, #0x100]
   21188: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
   2118c: 910543ff     	add	sp, sp, #0x150
   21190: d50323bf     	autiasp
   21194: d65f03c0     	ret
   21198: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   2119c: 91000000     	add	x0, x0, #0x0
		000000000002119c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   211a0: 14000003     	b	0x211ac <syna_tcm_read_cs_data+0x238>
   211a4: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3561
   211a8: 91000000     	add	x0, x0, #0x0
		00000000000211a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3561
   211ac: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28ea
   211b0: 91000021     	add	x1, x1, #0x0
		00000000000211b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28ea
   211b4: 94000000     	bl	0x211b4 <syna_tcm_read_cs_data+0x240>
		00000000000211b4:  R_AARCH64_CALL26	_printk
   211b8: 12801e00     	mov	w0, #-0xf1              // =-241
   211bc: 17ffffe9     	b	0x21160 <syna_tcm_read_cs_data+0x1ec>
   211c0: 2a0003f4     	mov	w20, w0
   211c4: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   211c8: 91000000     	add	x0, x0, #0x0
		00000000000211c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   211cc: 1400001c     	b	0x2123c <syna_tcm_read_cs_data+0x2c8>
   211d0: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   211d4: 91000000     	add	x0, x0, #0x0
		00000000000211d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   211d8: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   211dc: 91000021     	add	x1, x1, #0x0
		00000000000211dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   211e0: 94000000     	bl	0x211e0 <syna_tcm_read_cs_data+0x26c>
		00000000000211e0:  R_AARCH64_CALL26	_printk
   211e4: 17ffffce     	b	0x2111c <syna_tcm_read_cs_data+0x1a8>
   211e8: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   211ec: 91000000     	add	x0, x0, #0x0
		00000000000211ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   211f0: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000211f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   211f4: 91000021     	add	x1, x1, #0x0
		00000000000211f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   211f8: 94000000     	bl	0x211f8 <syna_tcm_read_cs_data+0x284>
		00000000000211f8:  R_AARCH64_CALL26	_printk
   211fc: 17ffffce     	b	0x21134 <syna_tcm_read_cs_data+0x1c0>
   21200: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   21204: 91000000     	add	x0, x0, #0x0
		0000000000021204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   21208: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   2120c: 91000021     	add	x1, x1, #0x0
		000000000002120c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   21210: 94000000     	bl	0x21210 <syna_tcm_read_cs_data+0x29c>
		0000000000021210:  R_AARCH64_CALL26	_printk
   21214: 17ffffcc     	b	0x21144 <syna_tcm_read_cs_data+0x1d0>
   21218: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   2121c: 91000000     	add	x0, x0, #0x0
		000000000002121c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   21220: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   21224: 91000021     	add	x1, x1, #0x0
		0000000000021224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   21228: 94000000     	bl	0x21228 <syna_tcm_read_cs_data+0x2b4>
		0000000000021228:  R_AARCH64_CALL26	_printk
   2122c: 17ffffcc     	b	0x2115c <syna_tcm_read_cs_data+0x1e8>
   21230: 2a0003f4     	mov	w20, w0
   21234: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x234e
   21238: 91000000     	add	x0, x0, #0x0
		0000000000021238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x234e
   2123c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002123c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28ea
   21240: 91000021     	add	x1, x1, #0x0
		0000000000021240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28ea
   21244: 94000000     	bl	0x21244 <syna_tcm_read_cs_data+0x2d0>
		0000000000021244:  R_AARCH64_CALL26	_printk
   21248: 17ffffac     	b	0x210f8 <syna_tcm_read_cs_data+0x184>
   2124c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002124c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   21250: 91000000     	add	x0, x0, #0x0
		0000000000021250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   21254: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   21258: 91000021     	add	x1, x1, #0x0
		0000000000021258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   2125c: 2a1403e3     	mov	w3, w20
   21260: 2a1403e4     	mov	w4, w20
   21264: 94000000     	bl	0x21264 <syna_tcm_read_cs_data+0x2f0>
		0000000000021264:  R_AARCH64_CALL26	_printk
   21268: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3a2
   2126c: 91000000     	add	x0, x0, #0x0
		000000000002126c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3a2
   21270: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28ea
   21274: 91000021     	add	x1, x1, #0x0
		0000000000021274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28ea
   21278: 94000000     	bl	0x21278 <syna_tcm_read_cs_data+0x304>
		0000000000021278:  R_AARCH64_CALL26	_printk
   2127c: 128002b4     	mov	w20, #-0x16             // =-22
   21280: 17ffff9e     	b	0x210f8 <syna_tcm_read_cs_data+0x184>
   21284: 94000000     	bl	0x21284 <syna_tcm_read_cs_data+0x310>
		0000000000021284:  R_AARCH64_CALL26	__stack_chk_fail
