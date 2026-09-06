
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008b0 <syna_tcm_read_flash_area>:
     8b0: d503233f     	paciasp
     8b4: d10543ff     	sub	sp, sp, #0x150
     8b8: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
     8bc: f90083fc     	str	x28, [sp, #0x100]
     8c0: a91167fa     	stp	x26, x25, [sp, #0x110]
     8c4: a9125ff8     	stp	x24, x23, [sp, #0x120]
     8c8: a91357f6     	stp	x22, x21, [sp, #0x130]
     8cc: a9144ff4     	stp	x20, x19, [sp, #0x140]
     8d0: 9103c3fd     	add	x29, sp, #0xf0
     8d4: d5384108     	mrs	x8, SP_EL0
     8d8: f9438908     	ldr	x8, [x8, #0x710]
     8dc: f81f83a8     	stur	x8, [x29, #-0x8]
     8e0: a9097fff     	stp	xzr, xzr, [sp, #0x90]
     8e4: a9087fff     	stp	xzr, xzr, [sp, #0x80]
     8e8: a9077fff     	stp	xzr, xzr, [sp, #0x70]
     8ec: a9067fff     	stp	xzr, xzr, [sp, #0x60]
     8f0: a9057fff     	stp	xzr, xzr, [sp, #0x50]
     8f4: a9047fff     	stp	xzr, xzr, [sp, #0x40]
     8f8: a9037fff     	stp	xzr, xzr, [sp, #0x30]
     8fc: a9027fff     	stp	xzr, xzr, [sp, #0x20]
     900: a9017fff     	stp	xzr, xzr, [sp, #0x10]
     904: f90007ff     	str	xzr, [sp, #0x8]
     908: b5000080     	cbnz	x0, 0x918 <syna_tcm_read_flash_area+0x68>
     90c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000090c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
     910: 91000000     	add	x0, x0, #0x0
		0000000000000910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
     914: 14000004     	b	0x924 <syna_tcm_read_flash_area+0x74>
     918: b50002a2     	cbnz	x2, 0x96c <syna_tcm_read_flash_area+0xbc>
     91c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e22
     920: 91000000     	add	x0, x0, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e22
     924: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eda
     928: 91000021     	add	x1, x1, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eda
     92c: 94000000     	bl	0x92c <syna_tcm_read_flash_area+0x7c>
		000000000000092c:  R_AARCH64_CALL26	_printk
     930: 12801e00     	mov	w0, #-0xf1              // =-241
     934: d5384108     	mrs	x8, SP_EL0
     938: f9438908     	ldr	x8, [x8, #0x710]
     93c: f85f83a9     	ldur	x9, [x29, #-0x8]
     940: eb09011f     	cmp	x8, x9
     944: 54002d21     	b.ne	0xee8 <syna_tcm_read_flash_area+0x638>
     948: a9544ff4     	ldp	x20, x19, [sp, #0x140]
     94c: f94083fc     	ldr	x28, [sp, #0x100]
     950: a95357f6     	ldp	x22, x21, [sp, #0x130]
     954: a9525ff8     	ldp	x24, x23, [sp, #0x120]
     958: a95167fa     	ldp	x26, x25, [sp, #0x110]
     95c: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
     960: 910543ff     	add	sp, sp, #0x150
     964: d50323bf     	autiasp
     968: d65f03c0     	ret
     96c: 2a0303f3     	mov	w19, w3
     970: aa0003f4     	mov	x20, x0
     974: 2a0103f5     	mov	w21, w1
     978: aa0203fa     	mov	x26, x2
     97c: 35000063     	cbnz	w3, 0x988 <syna_tcm_read_flash_area+0xd8>
     980: 2a1f03e3     	mov	w3, wzr
     984: 14000002     	b	0x98c <syna_tcm_read_flash_area+0xdc>
     988: b941ea83     	ldr	w3, [x20, #0x1e8]
     98c: 39402699     	ldrb	w25, [x20, #0x9]
     990: 71002f3f     	cmp	w25, #0xb
     994: 540001e0     	b.eq	0x9d0 <syna_tcm_read_flash_area+0x120>
     998: 910023e1     	add	x1, sp, #0x8
     99c: aa1403e0     	mov	x0, x20
     9a0: 2a1303e2     	mov	w2, w19
     9a4: 97fffe4f     	bl	0x2e0 <syna_tcm_set_up_flash_access>
     9a8: 36f80140     	tbz	w0, #0x1f, 0x9d0 <syna_tcm_read_flash_area+0x120>
     9ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
     9b0: 91000108     	add	x8, x8, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
     9b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eda
     9b8: 91000021     	add	x1, x1, #0x0
		00000000000009b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eda
     9bc: 2a0003f3     	mov	w19, w0
     9c0: aa0803e0     	mov	x0, x8
     9c4: 94000000     	bl	0x9c4 <syna_tcm_read_flash_area+0x114>
		00000000000009c4:  R_AARCH64_CALL26	_printk
     9c8: 2a1303e0     	mov	w0, w19
     9cc: 17ffffda     	b	0x934 <syna_tcm_read_flash_area+0x84>
     9d0: 910023e8     	add	x8, sp, #0x8
     9d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
     9d8: 91000021     	add	x1, x1, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
     9dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
     9e0: 91000042     	add	x2, x2, #0x0
		00000000000009e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
     9e4: 91014100     	add	x0, x8, #0x50
     9e8: 390223ff     	strb	wzr, [sp, #0x88]
     9ec: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     9f0: 94000000     	bl	0x9f0 <syna_tcm_read_flash_area+0x140>
		00000000000009f0:  R_AARCH64_CALL26	__mutex_init
     9f4: 2a1503e8     	mov	w8, w21
     9f8: 710052bf     	cmp	w21, #0x14
     9fc: 5400020d     	b.le	0xa3c <syna_tcm_read_flash_area+0x18c>
     a00: 7100551f     	cmp	w8, #0x15
     a04: aa1a03e2     	mov	x2, x26
     a08: 54000360     	b.eq	0xa74 <syna_tcm_read_flash_area+0x1c4>
     a0c: 7100591f     	cmp	w8, #0x16
     a10: 54000440     	b.eq	0xa98 <syna_tcm_read_flash_area+0x1e8>
     a14: 71005d1f     	cmp	w8, #0x17
     a18: 54000761     	b.ne	0xb04 <syna_tcm_read_flash_area+0x254>
     a1c: 910023e1     	add	x1, sp, #0x8
     a20: aa1403e0     	mov	x0, x20
     a24: 2a1f03e3     	mov	w3, wzr
     a28: 2a1f03e4     	mov	w4, wzr
     a2c: 2a1303e5     	mov	w5, w19
     a30: 94000379     	bl	0x1814 <syna_tcm_read_flash_mtp_config>
     a34: 37f802e0     	tbnz	w0, #0x1f, 0xa90 <syna_tcm_read_flash_area+0x1e0>
     a38: 1400017d     	b	0x102c <syna_tcm_read_flash_area+0x77c>
     a3c: 71000d1f     	cmp	w8, #0x3
     a40: aa1a03e2     	mov	x2, x26
     a44: 540004a0     	b.eq	0xad8 <syna_tcm_read_flash_area+0x228>
     a48: 7100191f     	cmp	w8, #0x6
     a4c: 540005c1     	b.ne	0xb04 <syna_tcm_read_flash_area+0x254>
     a50: 910023e1     	add	x1, sp, #0x8
     a54: aa1403e0     	mov	x0, x20
     a58: 2a1303e3     	mov	w3, w19
     a5c: 9400018c     	bl	0x108c <syna_tcm_read_flash_boot_config>
     a60: 36f82e60     	tbz	w0, #0x1f, 0x102c <syna_tcm_read_flash_area+0x77c>
     a64: 2a0003f5     	mov	w21, w0
     a68: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
     a6c: 91000000     	add	x0, x0, #0x0
		0000000000000a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
     a70: 1400015c     	b	0xfe0 <syna_tcm_read_flash_area+0x730>
     a74: 910023e1     	add	x1, sp, #0x8
     a78: aa1403e0     	mov	x0, x20
     a7c: 2a1f03e3     	mov	w3, wzr
     a80: 2a1f03e4     	mov	w4, wzr
     a84: 2a1303e5     	mov	w5, w19
     a88: 9400020c     	bl	0x12b8 <syna_tcm_read_flash_boot_cs_config>
     a8c: 36f82d00     	tbz	w0, #0x1f, 0x102c <syna_tcm_read_flash_area+0x77c>
     a90: 2a0003f5     	mov	w21, w0
     a94: 14000151     	b	0xfd8 <syna_tcm_read_flash_area+0x728>
     a98: 39402688     	ldrb	w8, [x20, #0x9]
     a9c: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     aa0: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     aa4: 7100051f     	cmp	w8, #0x1
     aa8: a93cffbf     	stp	xzr, xzr, [x29, #-0x38]
     aac: a93bffbf     	stp	xzr, xzr, [x29, #-0x48]
     ab0: f81b03bf     	stur	xzr, [x29, #-0x50]
     ab4: 540003a1     	b.ne	0xb28 <syna_tcm_read_flash_area+0x278>
     ab8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa0
     abc: 91000000     	add	x0, x0, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa0
     ac0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa4
     ac4: 91000021     	add	x1, x1, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa4
     ac8: 52800022     	mov	w2, #0x1                // =1
     acc: 94000000     	bl	0xacc <syna_tcm_read_flash_area+0x21c>
		0000000000000acc:  R_AARCH64_CALL26	_printk
     ad0: 12801e17     	mov	w23, #-0xf1             // =-241
     ad4: 14000140     	b	0xfd4 <syna_tcm_read_flash_area+0x724>
     ad8: 39402688     	ldrb	w8, [x20, #0x9]
     adc: 7100051f     	cmp	w8, #0x1
     ae0: 540004e1     	b.ne	0xb7c <syna_tcm_read_flash_area+0x2cc>
     ae4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x498c
     ae8: 91000000     	add	x0, x0, #0x0
		0000000000000ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x498c
     aec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a42
     af0: 91000021     	add	x1, x1, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a42
     af4: 52800022     	mov	w2, #0x1                // =1
     af8: 94000000     	bl	0xaf8 <syna_tcm_read_flash_area+0x248>
		0000000000000af8:  R_AARCH64_CALL26	_printk
     afc: 12801e15     	mov	w21, #-0xf1             // =-241
     b00: 140000e1     	b	0xe84 <syna_tcm_read_flash_area+0x5d4>
     b04: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x293e
     b08: 91000000     	add	x0, x0, #0x0
		0000000000000b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x293e
     b0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eda
     b10: 91000021     	add	x1, x1, #0x0
		0000000000000b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eda
     b14: 94000000     	bl	0xb14 <syna_tcm_read_flash_area+0x264>
		0000000000000b14:  R_AARCH64_CALL26	_printk
     b18: 12801e15     	mov	w21, #-0xf1             // =-241
     b1c: 7100073f     	cmp	w25, #0x1
     b20: 540026a0     	b.eq	0xff4 <syna_tcm_read_flash_area+0x744>
     b24: 14000138     	b	0x1004 <syna_tcm_read_flash_area+0x754>
     b28: d10143a8     	sub	x8, x29, #0x50
     b2c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
     b30: 91000021     	add	x1, x1, #0x0
		0000000000000b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
     b34: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
     b38: 91000042     	add	x2, x2, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
     b3c: 91004100     	add	x0, x8, #0x10
     b40: a93b7fbf     	stp	xzr, xzr, [x29, #-0x50]
     b44: 94000000     	bl	0xb44 <syna_tcm_read_flash_area+0x294>
		0000000000000b44:  R_AARCH64_CALL26	__mutex_init
     b48: 910023e1     	add	x1, sp, #0x8
     b4c: d10143a2     	sub	x2, x29, #0x50
     b50: aa1403e0     	mov	x0, x20
     b54: 2a1303e3     	mov	w3, w19
     b58: 9400014d     	bl	0x108c <syna_tcm_read_flash_boot_config>
     b5c: 36f80380     	tbz	w0, #0x1f, 0xbcc <syna_tcm_read_flash_area+0x31c>
     b60: 2a0003f7     	mov	w23, w0
     b64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fce
     b68: 91000000     	add	x0, x0, #0x0
		0000000000000b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fce
     b6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa4
     b70: 91000021     	add	x1, x1, #0x0
		0000000000000b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa4
     b74: 94000000     	bl	0xb74 <syna_tcm_read_flash_area+0x2c4>
		0000000000000b74:  R_AARCH64_CALL26	_printk
     b78: 14000103     	b	0xf84 <syna_tcm_read_flash_area+0x6d4>
     b7c: 79417288     	ldrh	w8, [x20, #0xb8]
     b80: b94037e9     	ldr	w9, [sp, #0x34]
     b84: 1b097d17     	mul	w23, w8, w9
     b88: 340003f7     	cbz	w23, 0xc04 <syna_tcm_read_flash_area+0x354>
     b8c: 79417696     	ldrh	w22, [x20, #0xba]
     b90: 340003b6     	cbz	w22, 0xc04 <syna_tcm_read_flash_area+0x354>
     b94: b9400848     	ldr	w8, [x2, #0x8]
     b98: f9400040     	ldr	x0, [x2]
     b9c: 6b16011f     	cmp	w8, w22
     ba0: 540014c2     	b.hs	0xe38 <syna_tcm_read_flash_area+0x588>
     ba4: b4001080     	cbz	x0, 0xdb4 <syna_tcm_read_flash_area+0x504>
     ba8: aa0003f8     	mov	x24, x0
     bac: 94000000     	bl	0xbac <syna_tcm_read_flash_area+0x2fc>
		0000000000000bac:  R_AARCH64_CALL26	syna_request_managed_device
     bb0: b5000fe0     	cbnz	x0, 0xdac <syna_tcm_read_flash_area+0x4fc>
     bb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
     bb8: 91000000     	add	x0, x0, #0x0
		0000000000000bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
     bbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
     bc0: 91000021     	add	x1, x1, #0x0
		0000000000000bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
     bc4: 94000000     	bl	0xbc4 <syna_tcm_read_flash_area+0x314>
		0000000000000bc4:  R_AARCH64_CALL26	_printk
     bc8: 1400007b     	b	0xdb4 <syna_tcm_read_flash_area+0x504>
     bcc: b9400b56     	ldr	w22, [x26, #0x8]
     bd0: f9400340     	ldr	x0, [x26]
     bd4: 71001edf     	cmp	w22, #0x7
     bd8: 540006a8     	b.hi	0xcac <syna_tcm_read_flash_area+0x3fc>
     bdc: b4000260     	cbz	x0, 0xc28 <syna_tcm_read_flash_area+0x378>
     be0: aa0003f6     	mov	x22, x0
     be4: 94000000     	bl	0xbe4 <syna_tcm_read_flash_area+0x334>
		0000000000000be4:  R_AARCH64_CALL26	syna_request_managed_device
     be8: b50001c0     	cbnz	x0, 0xc20 <syna_tcm_read_flash_area+0x370>
     bec: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
     bf0: 91000000     	add	x0, x0, #0x0
		0000000000000bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
     bf4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
     bf8: 91000021     	add	x1, x1, #0x0
		0000000000000bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
     bfc: 94000000     	bl	0xbfc <syna_tcm_read_flash_area+0x34c>
		0000000000000bfc:  R_AARCH64_CALL26	_printk
     c00: 1400000a     	b	0xc28 <syna_tcm_read_flash_area+0x378>
     c04: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa594
     c08: 91000000     	add	x0, x0, #0x0
		0000000000000c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa594
     c0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a42
     c10: 91000021     	add	x1, x1, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a42
     c14: 94000000     	bl	0xc14 <syna_tcm_read_flash_area+0x364>
		0000000000000c14:  R_AARCH64_CALL26	_printk
     c18: 12801e15     	mov	w21, #-0xf1             // =-241
     c1c: 1400009a     	b	0xe84 <syna_tcm_read_flash_area+0x5d4>
     c20: aa1603e1     	mov	x1, x22
     c24: 94000000     	bl	0xc24 <syna_tcm_read_flash_area+0x374>
		0000000000000c24:  R_AARCH64_CALL26	devm_kfree
     c28: 94000000     	bl	0xc28 <syna_tcm_read_flash_area+0x378>
		0000000000000c28:  R_AARCH64_CALL26	syna_request_managed_device
     c2c: b5000120     	cbnz	x0, 0xc50 <syna_tcm_read_flash_area+0x3a0>
     c30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
     c34: 91000000     	add	x0, x0, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
     c38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
     c3c: 91000021     	add	x1, x1, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
     c40: 94000000     	bl	0xc40 <syna_tcm_read_flash_area+0x390>
		0000000000000c40:  R_AARCH64_CALL26	_printk
     c44: aa1a03e8     	mov	x8, x26
     c48: f900035f     	str	xzr, [x26]
     c4c: 14000008     	b	0xc6c <syna_tcm_read_flash_area+0x3bc>
     c50: 52800101     	mov	w1, #0x8                // =8
     c54: 5281b802     	mov	w2, #0xdc0              // =3520
     c58: 52800116     	mov	w22, #0x8               // =8
     c5c: 94000000     	bl	0xc5c <syna_tcm_read_flash_area+0x3ac>
		0000000000000c5c:  R_AARCH64_CALL26	devm_kmalloc
     c60: aa1a03e8     	mov	x8, x26
     c64: f9000340     	str	x0, [x26]
     c68: b5000200     	cbnz	x0, 0xca8 <syna_tcm_read_flash_area+0x3f8>
     c6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
     c70: 91000000     	add	x0, x0, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
     c74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
     c78: 91000021     	add	x1, x1, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
     c7c: 52800102     	mov	w2, #0x8                // =8
     c80: aa0803f6     	mov	x22, x8
     c84: 94000000     	bl	0xc84 <syna_tcm_read_flash_area+0x3d4>
		0000000000000c84:  R_AARCH64_CALL26	_printk
     c88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2904
     c8c: 91000000     	add	x0, x0, #0x0
		0000000000000c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2904
     c90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa4
     c94: 91000021     	add	x1, x1, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa4
     c98: f90006df     	str	xzr, [x22, #0x8]
     c9c: 94000000     	bl	0xc9c <syna_tcm_read_flash_area+0x3ec>
		0000000000000c9c:  R_AARCH64_CALL26	_printk
     ca0: 12801e57     	mov	w23, #-0xf3             // =-243
     ca4: 140000b8     	b	0xf84 <syna_tcm_read_flash_area+0x6d4>
     ca8: b9000916     	str	w22, [x8, #0x8]
     cac: 2a1603e2     	mov	w2, w22
     cb0: 2a1f03e1     	mov	w1, wzr
     cb4: 94000000     	bl	0xcb4 <syna_tcm_read_flash_area+0x404>
		0000000000000cb4:  R_AARCH64_CALL26	memset
     cb8: b85bc3aa     	ldur	w10, [x29, #-0x44]
     cbc: f85b03a8     	ldur	x8, [x29, #-0x50]
     cc0: aa1a03e9     	mov	x9, x26
     cc4: b9000f5f     	str	wzr, [x26, #0xc]
     cc8: 51001d4b     	sub	w11, w10, #0x7
     ccc: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
     cd0: 37f8066b     	tbnz	w11, #0x1f, 0xd9c <syna_tcm_read_flash_area+0x4ec>
     cd4: 51003d4b     	sub	w11, w10, #0xf
     cd8: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
     cdc: 37f8064b     	tbnz	w11, #0x1f, 0xda4 <syna_tcm_read_flash_area+0x4f4>
     ce0: 51005d4b     	sub	w11, w10, #0x17
     ce4: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
     ce8: 37f80d8b     	tbnz	w11, #0x1f, 0xe98 <syna_tcm_read_flash_area+0x5e8>
     cec: 51007d4b     	sub	w11, w10, #0x1f
     cf0: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
     cf4: 37f80d6b     	tbnz	w11, #0x1f, 0xea0 <syna_tcm_read_flash_area+0x5f0>
     cf8: 51009d4b     	sub	w11, w10, #0x27
     cfc: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
     d00: 37f80d4b     	tbnz	w11, #0x1f, 0xea8 <syna_tcm_read_flash_area+0x5f8>
     d04: 5100bd4b     	sub	w11, w10, #0x2f
     d08: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
     d0c: 37f80d2b     	tbnz	w11, #0x1f, 0xeb0 <syna_tcm_read_flash_area+0x600>
     d10: 5100dd49     	sub	w9, w10, #0x37
     d14: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d18: 37f80d09     	tbnz	w9, #0x1f, 0xeb8 <syna_tcm_read_flash_area+0x608>
     d1c: 5100fd49     	sub	w9, w10, #0x3f
     d20: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d24: 37f80ce9     	tbnz	w9, #0x1f, 0xec0 <syna_tcm_read_flash_area+0x610>
     d28: 51011d49     	sub	w9, w10, #0x47
     d2c: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d30: 37f80cc9     	tbnz	w9, #0x1f, 0xec8 <syna_tcm_read_flash_area+0x618>
     d34: 51013d49     	sub	w9, w10, #0x4f
     d38: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d3c: 37f80ca9     	tbnz	w9, #0x1f, 0xed0 <syna_tcm_read_flash_area+0x620>
     d40: 51015d49     	sub	w9, w10, #0x57
     d44: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d48: 37f80c89     	tbnz	w9, #0x1f, 0xed8 <syna_tcm_read_flash_area+0x628>
     d4c: 51017d49     	sub	w9, w10, #0x5f
     d50: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d54: 37f80c69     	tbnz	w9, #0x1f, 0xee0 <syna_tcm_read_flash_area+0x630>
     d58: 51019d49     	sub	w9, w10, #0x67
     d5c: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d60: 37f80c69     	tbnz	w9, #0x1f, 0xeec <syna_tcm_read_flash_area+0x63c>
     d64: 5101bd49     	sub	w9, w10, #0x6f
     d68: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d6c: 37f80c49     	tbnz	w9, #0x1f, 0xef4 <syna_tcm_read_flash_area+0x644>
     d70: 5101dd49     	sub	w9, w10, #0x77
     d74: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d78: 37f80c29     	tbnz	w9, #0x1f, 0xefc <syna_tcm_read_flash_area+0x64c>
     d7c: 5101fd49     	sub	w9, w10, #0x7f
     d80: 12800feb     	mov	w11, #-0x80             // =-128
     d84: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
     d88: 7100013f     	cmp	w9, #0x0
     d8c: 128010e9     	mov	w9, #-0x88              // =-136
     d90: 1a89b169     	csel	w9, w11, w9, lt
     d94: 0b0a012a     	add	w10, w9, w10
     d98: 1400005a     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     d9c: 5100214a     	sub	w10, w10, #0x8
     da0: 14000059     	b	0xf04 <syna_tcm_read_flash_area+0x654>
     da4: 5100414a     	sub	w10, w10, #0x10
     da8: 14000057     	b	0xf04 <syna_tcm_read_flash_area+0x654>
     dac: aa1803e1     	mov	x1, x24
     db0: 94000000     	bl	0xdb0 <syna_tcm_read_flash_area+0x500>
		0000000000000db0:  R_AARCH64_CALL26	devm_kfree
     db4: 94000000     	bl	0xdb4 <syna_tcm_read_flash_area+0x504>
		0000000000000db4:  R_AARCH64_CALL26	syna_request_managed_device
     db8: b5000120     	cbnz	x0, 0xddc <syna_tcm_read_flash_area+0x52c>
     dbc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
     dc0: 91000000     	add	x0, x0, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
     dc4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
     dc8: 91000021     	add	x1, x1, #0x0
		0000000000000dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
     dcc: 94000000     	bl	0xdcc <syna_tcm_read_flash_area+0x51c>
		0000000000000dcc:  R_AARCH64_CALL26	_printk
     dd0: aa1a03e8     	mov	x8, x26
     dd4: f900035f     	str	xzr, [x26]
     dd8: 14000007     	b	0xdf4 <syna_tcm_read_flash_area+0x544>
     ddc: aa1603e1     	mov	x1, x22
     de0: 5281b802     	mov	w2, #0xdc0              // =3520
     de4: 94000000     	bl	0xde4 <syna_tcm_read_flash_area+0x534>
		0000000000000de4:  R_AARCH64_CALL26	devm_kmalloc
     de8: aa1a03e8     	mov	x8, x26
     dec: f9000340     	str	x0, [x26]
     df0: b5000200     	cbnz	x0, 0xe30 <syna_tcm_read_flash_area+0x580>
     df4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
     df8: 91000000     	add	x0, x0, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
     dfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
     e00: 91000021     	add	x1, x1, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
     e04: 2a1603e2     	mov	w2, w22
     e08: aa0803f5     	mov	x21, x8
     e0c: 94000000     	bl	0xe0c <syna_tcm_read_flash_area+0x55c>
		0000000000000e0c:  R_AARCH64_CALL26	_printk
     e10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2904
     e14: 91000000     	add	x0, x0, #0x0
		0000000000000e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2904
     e18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a42
     e1c: 91000021     	add	x1, x1, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a42
     e20: f90006bf     	str	xzr, [x21, #0x8]
     e24: 94000000     	bl	0xe24 <syna_tcm_read_flash_area+0x574>
		0000000000000e24:  R_AARCH64_CALL26	_printk
     e28: 12801e55     	mov	w21, #-0xf3             // =-243
     e2c: 14000016     	b	0xe84 <syna_tcm_read_flash_area+0x5d4>
     e30: b9000916     	str	w22, [x8, #0x8]
     e34: aa1603e8     	mov	x8, x22
     e38: 2a1f03e1     	mov	w1, wzr
     e3c: aa0803e2     	mov	x2, x8
     e40: 94000000     	bl	0xe40 <syna_tcm_read_flash_area+0x590>
		0000000000000e40:  R_AARCH64_CALL26	memset
     e44: f9400342     	ldr	x2, [x26]
     e48: aa1403e0     	mov	x0, x20
     e4c: 2a1703e1     	mov	w1, w23
     e50: 2a1603e3     	mov	w3, w22
     e54: 2a1303e4     	mov	w4, w19
     e58: b9000f5f     	str	wzr, [x26, #0xc]
     e5c: 97fffdda     	bl	0x5c4 <syna_tcm_read_flash>
     e60: 36f80180     	tbz	w0, #0x1f, 0xe90 <syna_tcm_read_flash_area+0x5e0>
     e64: 2a0003f5     	mov	w21, w0
     e68: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95da
     e6c: 91000000     	add	x0, x0, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95da
     e70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a42
     e74: 91000021     	add	x1, x1, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a42
     e78: 2a1703e2     	mov	w2, w23
     e7c: 2a1603e3     	mov	w3, w22
     e80: 94000000     	bl	0xe80 <syna_tcm_read_flash_area+0x5d0>
		0000000000000e80:  R_AARCH64_CALL26	_printk
     e84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7962
     e88: 91000000     	add	x0, x0, #0x0
		0000000000000e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7962
     e8c: 14000055     	b	0xfe0 <syna_tcm_read_flash_area+0x730>
     e90: b9000f56     	str	w22, [x26, #0xc]
     e94: 14000066     	b	0x102c <syna_tcm_read_flash_area+0x77c>
     e98: 5100614a     	sub	w10, w10, #0x18
     e9c: 1400001a     	b	0xf04 <syna_tcm_read_flash_area+0x654>
     ea0: 5100814a     	sub	w10, w10, #0x20
     ea4: 14000018     	b	0xf04 <syna_tcm_read_flash_area+0x654>
     ea8: 5100a14a     	sub	w10, w10, #0x28
     eac: 14000016     	b	0xf04 <syna_tcm_read_flash_area+0x654>
     eb0: 5100c14a     	sub	w10, w10, #0x30
     eb4: 14000014     	b	0xf04 <syna_tcm_read_flash_area+0x654>
     eb8: 5100e14a     	sub	w10, w10, #0x38
     ebc: 14000011     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ec0: 5101014a     	sub	w10, w10, #0x40
     ec4: 1400000f     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ec8: 5101214a     	sub	w10, w10, #0x48
     ecc: 1400000d     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ed0: 5101414a     	sub	w10, w10, #0x50
     ed4: 1400000b     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ed8: 5101614a     	sub	w10, w10, #0x58
     edc: 14000009     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ee0: 5101814a     	sub	w10, w10, #0x60
     ee4: 14000007     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ee8: 94000000     	bl	0xee8 <syna_tcm_read_flash_area+0x638>
		0000000000000ee8:  R_AARCH64_CALL26	__stack_chk_fail
     eec: 5101a14a     	sub	w10, w10, #0x68
     ef0: 14000004     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     ef4: 5101c14a     	sub	w10, w10, #0x70
     ef8: 14000002     	b	0xf00 <syna_tcm_read_flash_area+0x650>
     efc: 5101e14a     	sub	w10, w10, #0x78
     f00: aa1a03e9     	mov	x9, x26
     f04: f940012b     	ldr	x11, [x9]
     f08: b40001ab     	cbz	x11, 0xf3c <syna_tcm_read_flash_area+0x68c>
     f0c: 8b2ac108     	add	x8, x8, w10, sxtw
     f10: b4000168     	cbz	x8, 0xf3c <syna_tcm_read_flash_area+0x68c>
     f14: b9400923     	ldr	w3, [x9, #0x8]
     f18: 71001c7f     	cmp	w3, #0x7
     f1c: 540001e8     	b.hi	0xf58 <syna_tcm_read_flash_area+0x6a8>
     f20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
     f24: 91000000     	add	x0, x0, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
     f28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
     f2c: 91000021     	add	x1, x1, #0x0
		0000000000000f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
     f30: 52800102     	mov	w2, #0x8                // =8
     f34: 52800104     	mov	w4, #0x8                // =8
     f38: 94000000     	bl	0xf38 <syna_tcm_read_flash_area+0x688>
		0000000000000f38:  R_AARCH64_CALL26	_printk
     f3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b4
     f40: 91000000     	add	x0, x0, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b4
     f44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa4
     f48: 91000021     	add	x1, x1, #0x0
		0000000000000f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa4
     f4c: 94000000     	bl	0xf4c <syna_tcm_read_flash_area+0x69c>
		0000000000000f4c:  R_AARCH64_CALL26	_printk
     f50: 128002b7     	mov	w23, #-0x16             // =-22
     f54: 1400000c     	b	0xf84 <syna_tcm_read_flash_area+0x6d4>
     f58: f9400108     	ldr	x8, [x8]
     f5c: 5280010a     	mov	w10, #0x8               // =8
     f60: 2a1f03f7     	mov	w23, wzr
     f64: f9000168     	str	x8, [x11]
     f68: b85bc3a8     	ldur	w8, [x29, #-0x44]
     f6c: f85b03ab     	ldur	x11, [x29, #-0x50]
     f70: b9000d2a     	str	w10, [x9, #0xc]
     f74: 51001d08     	sub	w8, w8, #0x7
     f78: 3868c968     	ldrb	w8, [x11, w8, sxtw]
     f7c: 53077d08     	lsr	w8, w8, #7
     f80: b9003688     	str	w8, [x20, #0x34]
     f84: 385f03a2     	ldurb	w2, [x29, #-0x10]
     f88: 340000c2     	cbz	w2, 0xfa0 <syna_tcm_read_flash_area+0x6f0>
     f8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
     f90: 91000000     	add	x0, x0, #0x0
		0000000000000f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
     f94: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
     f98: 91000021     	add	x1, x1, #0x0
		0000000000000f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
     f9c: 94000000     	bl	0xf9c <syna_tcm_read_flash_area+0x6ec>
		0000000000000f9c:  R_AARCH64_CALL26	_printk
     fa0: f85b03b6     	ldur	x22, [x29, #-0x50]
     fa4: 94000000     	bl	0xfa4 <syna_tcm_read_flash_area+0x6f4>
		0000000000000fa4:  R_AARCH64_CALL26	syna_request_managed_device
     fa8: b50000e0     	cbnz	x0, 0xfc4 <syna_tcm_read_flash_area+0x714>
     fac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
     fb0: 91000000     	add	x0, x0, #0x0
		0000000000000fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
     fb4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
     fb8: 91000021     	add	x1, x1, #0x0
		0000000000000fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
     fbc: 94000000     	bl	0xfbc <syna_tcm_read_flash_area+0x70c>
		0000000000000fbc:  R_AARCH64_CALL26	_printk
     fc0: 14000004     	b	0xfd0 <syna_tcm_read_flash_area+0x720>
     fc4: b4000076     	cbz	x22, 0xfd0 <syna_tcm_read_flash_area+0x720>
     fc8: aa1603e1     	mov	x1, x22
     fcc: 94000000     	bl	0xfcc <syna_tcm_read_flash_area+0x71c>
		0000000000000fcc:  R_AARCH64_CALL26	devm_kfree
     fd0: 36f802f7     	tbz	w23, #0x1f, 0x102c <syna_tcm_read_flash_area+0x77c>
     fd4: 2a1703f5     	mov	w21, w23
     fd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4948
     fdc: 91000000     	add	x0, x0, #0x0
		0000000000000fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4948
     fe0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eda
     fe4: 91000021     	add	x1, x1, #0x0
		0000000000000fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eda
     fe8: 94000000     	bl	0xfe8 <syna_tcm_read_flash_area+0x738>
		0000000000000fe8:  R_AARCH64_CALL26	_printk
     fec: 7100073f     	cmp	w25, #0x1
     ff0: 540000a1     	b.ne	0x1004 <syna_tcm_read_flash_area+0x754>
     ff4: aa1403e0     	mov	x0, x20
     ff8: 52800021     	mov	w1, #0x1                // =1
     ffc: 2a1303e2     	mov	w2, w19
    1000: 94000000     	bl	0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001000:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    1004: 394223e2     	ldrb	w2, [sp, #0x88]
    1008: 350002a2     	cbnz	w2, 0x105c <syna_tcm_read_flash_area+0x7ac>
    100c: f94027f3     	ldr	x19, [sp, #0x48]
    1010: 94000000     	bl	0x1010 <syna_tcm_read_flash_area+0x760>
		0000000000001010:  R_AARCH64_CALL26	syna_request_managed_device
    1014: b4000300     	cbz	x0, 0x1074 <syna_tcm_read_flash_area+0x7c4>
    1018: b4000073     	cbz	x19, 0x1024 <syna_tcm_read_flash_area+0x774>
    101c: aa1303e1     	mov	x1, x19
    1020: 94000000     	bl	0x1020 <syna_tcm_read_flash_area+0x770>
		0000000000001020:  R_AARCH64_CALL26	devm_kfree
    1024: 2a1503e0     	mov	w0, w21
    1028: 17fffe43     	b	0x934 <syna_tcm_read_flash_area+0x84>
    102c: 2a1503e0     	mov	w0, w21
    1030: 94000000     	bl	0x1030 <syna_tcm_read_flash_area+0x780>
		0000000000001030:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    1034: aa0003e2     	mov	x2, x0
    1038: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x739c
    103c: 91000000     	add	x0, x0, #0x0
		000000000000103c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x739c
    1040: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eda
    1044: 91000021     	add	x1, x1, #0x0
		0000000000001044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eda
    1048: 94000000     	bl	0x1048 <syna_tcm_read_flash_area+0x798>
		0000000000001048:  R_AARCH64_CALL26	_printk
    104c: 2a1f03f5     	mov	w21, wzr
    1050: 7100073f     	cmp	w25, #0x1
    1054: 54fffd00     	b.eq	0xff4 <syna_tcm_read_flash_area+0x744>
    1058: 17ffffeb     	b	0x1004 <syna_tcm_read_flash_area+0x754>
    105c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000105c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    1060: 91000000     	add	x0, x0, #0x0
		0000000000001060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    1064: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    1068: 91000021     	add	x1, x1, #0x0
		0000000000001068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    106c: 94000000     	bl	0x106c <syna_tcm_read_flash_area+0x7bc>
		000000000000106c:  R_AARCH64_CALL26	_printk
    1070: 17ffffe7     	b	0x100c <syna_tcm_read_flash_area+0x75c>
    1074: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    1078: 91000000     	add	x0, x0, #0x0
		0000000000001078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    107c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000107c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    1080: 91000021     	add	x1, x1, #0x0
		0000000000001080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    1084: 94000000     	bl	0x1084 <syna_tcm_read_flash_area+0x7d4>
		0000000000001084:  R_AARCH64_CALL26	_printk
    1088: 17ffffe7     	b	0x1024 <syna_tcm_read_flash_area+0x774>
