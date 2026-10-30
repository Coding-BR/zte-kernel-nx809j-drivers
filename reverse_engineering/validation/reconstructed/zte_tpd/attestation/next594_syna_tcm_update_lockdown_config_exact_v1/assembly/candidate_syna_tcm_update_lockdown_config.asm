
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000028e8 <syna_tcm_update_lockdown_config>:
    28e8: d503233f     	paciasp
    28ec: d10503ff     	sub	sp, sp, #0x140
    28f0: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    28f4: a91067fc     	stp	x28, x25, [sp, #0x100]
    28f8: a9115ff8     	stp	x24, x23, [sp, #0x110]
    28fc: a91257f6     	stp	x22, x21, [sp, #0x120]
    2900: a9134ff4     	stp	x20, x19, [sp, #0x130]
    2904: 9103c3fd     	add	x29, sp, #0xf0
    2908: d5384108     	mrs	x8, SP_EL0
    290c: f9438908     	ldr	x8, [x8, #0x710]
    2910: f81f83a8     	stur	x8, [x29, #-0x8]
    2914: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    2918: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    291c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    2920: f9000fff     	str	xzr, [sp, #0x18]
    2924: b40011c0     	cbz	x0, 0x2b5c <syna_tcm_update_lockdown_config+0x274>
    2928: aa0103f6     	mov	x22, x1
    292c: b4000fe1     	cbz	x1, 0x2b28 <syna_tcm_update_lockdown_config+0x240>
    2930: b94002c8     	ldr	w8, [x22]
    2934: 34000fa8     	cbz	w8, 0x2b28 <syna_tcm_update_lockdown_config+0x240>
    2938: 3949c2c8     	ldrb	w8, [x22, #0x270]
    293c: 7100051f     	cmp	w8, #0x1
    2940: 54000fa1     	b.ne	0x2b34 <syna_tcm_update_lockdown_config+0x24c>
    2944: f9413ec8     	ldr	x8, [x22, #0x278]
    2948: b4000f68     	cbz	x8, 0x2b34 <syna_tcm_update_lockdown_config+0x24c>
    294c: 2a0203f5     	mov	w21, w2
    2950: b94282c2     	ldr	w2, [x22, #0x280]
    2954: 71001c5f     	cmp	w2, #0x7
    2958: 54001109     	b.ls	0x2b78 <syna_tcm_update_lockdown_config+0x290>
    295c: aa0003f3     	mov	x19, x0
    2960: 52800108     	mov	w8, #0x8                // =8
    2964: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    2968: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    296c: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    2970: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    2974: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    2978: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    297c: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    2980: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    2984: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    2988: f9002bff     	str	xzr, [sp, #0x50]
    298c: b900dfe8     	str	w8, [sp, #0xdc]
    2990: 34000095     	cbz	w21, 0x29a0 <syna_tcm_update_lockdown_config+0xb8>
    2994: b9420e77     	ldr	w23, [x19, #0x20c]
    2998: b941ea74     	ldr	w20, [x19, #0x1e8]
    299c: 14000003     	b	0x29a8 <syna_tcm_update_lockdown_config+0xc0>
    29a0: 2a1f03f4     	mov	w20, wzr
    29a4: 2a1f03f7     	mov	w23, wzr
    29a8: 910143e8     	add	x8, sp, #0x50
    29ac: 90000018     	adrp	x24, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000029ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd8
    29b0: 91000318     	add	x24, x24, #0x0
		00000000000029b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd8
    29b4: 90000019     	adrp	x25, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000029b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    29b8: 91000339     	add	x25, x25, #0x0
		00000000000029b8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    29bc: 91014100     	add	x0, x8, #0x50
    29c0: aa1803e1     	mov	x1, x24
    29c4: aa1903e2     	mov	x2, x25
    29c8: a9097fff     	stp	xzr, xzr, [sp, #0x90]
    29cc: 94000000     	bl	0x29cc <syna_tcm_update_lockdown_config+0xe4>
		00000000000029cc:  R_AARCH64_CALL26	__mutex_init
    29d0: 910023e8     	add	x8, sp, #0x8
    29d4: aa1803e1     	mov	x1, x24
    29d8: aa1903e2     	mov	x2, x25
    29dc: 91004100     	add	x0, x8, #0x10
    29e0: 390123ff     	strb	wzr, [sp, #0x48]
    29e4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    29e8: 94000000     	bl	0x29e8 <syna_tcm_update_lockdown_config+0x100>
		00000000000029e8:  R_AARCH64_CALL26	__mutex_init
    29ec: 52800028     	mov	w8, #0x1                // =1
    29f0: 910143e1     	add	x1, sp, #0x50
    29f4: aa1303e0     	mov	x0, x19
    29f8: 2a1703e2     	mov	w2, w23
    29fc: 2a1403e3     	mov	w3, w20
    2a00: b9038a68     	str	w8, [x19, #0x388]
    2a04: 97fff637     	bl	0x2e0 <syna_tcm_set_up_flash_access>
    2a08: 37f80c80     	tbnz	w0, #0x1f, 0x2b98 <syna_tcm_update_lockdown_config+0x2b0>
    2a0c: 910143e1     	add	x1, sp, #0x50
    2a10: 910023e2     	add	x2, sp, #0x8
    2a14: aa1303e0     	mov	x0, x19
    2a18: 2a1703e3     	mov	w3, w23
    2a1c: 97fff99c     	bl	0x108c <syna_tcm_read_flash_boot_config>
    2a20: 37f80f40     	tbnz	w0, #0x1f, 0x2c08 <syna_tcm_update_lockdown_config+0x320>
    2a24: b94017e8     	ldr	w8, [sp, #0x14]
    2a28: f94007e9     	ldr	x9, [sp, #0x8]
    2a2c: 51001d08     	sub	w8, w8, #0x7
    2a30: 38e84928     	ldrsb	w8, [x9, w8, uxtw]
    2a34: 37f80f88     	tbnz	w8, #0x1f, 0x2c24 <syna_tcm_update_lockdown_config+0x33c>
    2a38: 910143e1     	add	x1, sp, #0x50
    2a3c: 9109c2c2     	add	x2, x22, #0x270
    2a40: aa1303e0     	mov	x0, x19
    2a44: 94000000     	bl	0x2a44 <syna_tcm_update_lockdown_config+0x15c>
		0000000000002a44:  R_AARCH64_CALL26	syna_tcm_check_flash_block
    2a48: 7100001f     	cmp	w0, #0x0
    2a4c: 54000fad     	b.le	0x2c40 <syna_tcm_update_lockdown_config+0x358>
    2a50: b94282c8     	ldr	w8, [x22, #0x280]
    2a54: f9413ec9     	ldr	x9, [x22, #0x278]
    2a58: 910143e1     	add	x1, sp, #0x50
    2a5c: b9408bea     	ldr	w10, [sp, #0x88]
    2a60: aa1303e0     	mov	x0, x19
    2a64: 52800104     	mov	w4, #0x8                // =8
    2a68: 51002108     	sub	w8, w8, #0x8
    2a6c: 2a1503e5     	mov	w5, w21
    2a70: 52800115     	mov	w21, #0x8               // =8
    2a74: 0b080142     	add	w2, w10, w8
    2a78: 8b080123     	add	x3, x9, x8
    2a7c: 94000000     	bl	0x2a7c <syna_tcm_update_lockdown_config+0x194>
		0000000000002a7c:  R_AARCH64_CALL26	syna_tcm_write_flash
    2a80: 7100001f     	cmp	w0, #0x0
    2a84: 1a95b015     	csel	w21, w0, w21, lt
    2a88: 39402668     	ldrb	w8, [x19, #0x9]
    2a8c: 71002d1f     	cmp	w8, #0xb
    2a90: 540000a1     	b.ne	0x2aa4 <syna_tcm_update_lockdown_config+0x1bc>
    2a94: aa1303e0     	mov	x0, x19
    2a98: 52800021     	mov	w1, #0x1                // =1
    2a9c: 2a1403e2     	mov	w2, w20
    2aa0: 94000000     	bl	0x2aa0 <syna_tcm_update_lockdown_config+0x1b8>
		0000000000002aa0:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    2aa4: b9038a7f     	str	wzr, [x19, #0x388]
    2aa8: 394123e2     	ldrb	w2, [sp, #0x48]
    2aac: 350007e2     	cbnz	w2, 0x2ba8 <syna_tcm_update_lockdown_config+0x2c0>
    2ab0: f94007f3     	ldr	x19, [sp, #0x8]
    2ab4: 94000000     	bl	0x2ab4 <syna_tcm_update_lockdown_config+0x1cc>
		0000000000002ab4:  R_AARCH64_CALL26	syna_request_managed_device
    2ab8: b4000840     	cbz	x0, 0x2bc0 <syna_tcm_update_lockdown_config+0x2d8>
    2abc: b4000073     	cbz	x19, 0x2ac8 <syna_tcm_update_lockdown_config+0x1e0>
    2ac0: aa1303e1     	mov	x1, x19
    2ac4: 94000000     	bl	0x2ac4 <syna_tcm_update_lockdown_config+0x1dc>
		0000000000002ac4:  R_AARCH64_CALL26	devm_kfree
    2ac8: 394343e2     	ldrb	w2, [sp, #0xd0]
    2acc: f9000bff     	str	xzr, [sp, #0x10]
    2ad0: 390123ff     	strb	wzr, [sp, #0x48]
    2ad4: 35000822     	cbnz	w2, 0x2bd8 <syna_tcm_update_lockdown_config+0x2f0>
    2ad8: f9404bf3     	ldr	x19, [sp, #0x90]
    2adc: 94000000     	bl	0x2adc <syna_tcm_update_lockdown_config+0x1f4>
		0000000000002adc:  R_AARCH64_CALL26	syna_request_managed_device
    2ae0: b4000880     	cbz	x0, 0x2bf0 <syna_tcm_update_lockdown_config+0x308>
    2ae4: b4000073     	cbz	x19, 0x2af0 <syna_tcm_update_lockdown_config+0x208>
    2ae8: aa1303e1     	mov	x1, x19
    2aec: 94000000     	bl	0x2aec <syna_tcm_update_lockdown_config+0x204>
		0000000000002aec:  R_AARCH64_CALL26	devm_kfree
    2af0: 2a1503e0     	mov	w0, w21
    2af4: d5384108     	mrs	x8, SP_EL0
    2af8: f9438908     	ldr	x8, [x8, #0x710]
    2afc: f85f83a9     	ldur	x9, [x29, #-0x8]
    2b00: eb09011f     	cmp	x8, x9
    2b04: 54000b21     	b.ne	0x2c68 <syna_tcm_update_lockdown_config+0x380>
    2b08: a9534ff4     	ldp	x20, x19, [sp, #0x130]
    2b0c: a95257f6     	ldp	x22, x21, [sp, #0x120]
    2b10: a9515ff8     	ldp	x24, x23, [sp, #0x110]
    2b14: a95067fc     	ldp	x28, x25, [sp, #0x100]
    2b18: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    2b1c: 910503ff     	add	sp, sp, #0x140
    2b20: d50323bf     	autiasp
    2b24: d65f03c0     	ret
    2b28: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d76
    2b2c: 91000000     	add	x0, x0, #0x0
		0000000000002b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d76
    2b30: 1400000d     	b	0x2b64 <syna_tcm_update_lockdown_config+0x27c>
    2b34: 394a22c0     	ldrb	w0, [x22, #0x288]
    2b38: 94000000     	bl	0x2b38 <syna_tcm_update_lockdown_config+0x250>
		0000000000002b38:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    2b3c: aa0003e2     	mov	x2, x0
    2b40: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb94c
    2b44: 91000000     	add	x0, x0, #0x0
		0000000000002b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb94c
    2b48: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ecc
    2b4c: 91000021     	add	x1, x1, #0x0
		0000000000002b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ecc
    2b50: 94000000     	bl	0x2b50 <syna_tcm_update_lockdown_config+0x268>
		0000000000002b50:  R_AARCH64_CALL26	_printk
    2b54: 12801e00     	mov	w0, #-0xf1              // =-241
    2b58: 17ffffe7     	b	0x2af4 <syna_tcm_update_lockdown_config+0x20c>
    2b5c: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    2b60: 91000000     	add	x0, x0, #0x0
		0000000000002b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    2b64: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ecc
    2b68: 91000021     	add	x1, x1, #0x0
		0000000000002b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ecc
    2b6c: 94000000     	bl	0x2b6c <syna_tcm_update_lockdown_config+0x284>
		0000000000002b6c:  R_AARCH64_CALL26	_printk
    2b70: 12801e00     	mov	w0, #-0xf1              // =-241
    2b74: 17ffffe0     	b	0x2af4 <syna_tcm_update_lockdown_config+0x20c>
    2b78: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2390
    2b7c: 91000000     	add	x0, x0, #0x0
		0000000000002b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2390
    2b80: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ecc
    2b84: 91000021     	add	x1, x1, #0x0
		0000000000002b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ecc
    2b88: 52800103     	mov	w3, #0x8                // =8
    2b8c: 94000000     	bl	0x2b8c <syna_tcm_update_lockdown_config+0x2a4>
		0000000000002b8c:  R_AARCH64_CALL26	_printk
    2b90: 12801e00     	mov	w0, #-0xf1              // =-241
    2b94: 17ffffd8     	b	0x2af4 <syna_tcm_update_lockdown_config+0x20c>
    2b98: 2a0003f5     	mov	w21, w0
    2b9c: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    2ba0: 91000000     	add	x0, x0, #0x0
		0000000000002ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    2ba4: 1400001c     	b	0x2c14 <syna_tcm_update_lockdown_config+0x32c>
    2ba8: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    2bac: 91000000     	add	x0, x0, #0x0
		0000000000002bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    2bb0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    2bb4: 91000021     	add	x1, x1, #0x0
		0000000000002bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    2bb8: 94000000     	bl	0x2bb8 <syna_tcm_update_lockdown_config+0x2d0>
		0000000000002bb8:  R_AARCH64_CALL26	_printk
    2bbc: 17ffffbd     	b	0x2ab0 <syna_tcm_update_lockdown_config+0x1c8>
    2bc0: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    2bc4: 91000000     	add	x0, x0, #0x0
		0000000000002bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    2bc8: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    2bcc: 91000021     	add	x1, x1, #0x0
		0000000000002bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    2bd0: 94000000     	bl	0x2bd0 <syna_tcm_update_lockdown_config+0x2e8>
		0000000000002bd0:  R_AARCH64_CALL26	_printk
    2bd4: 17ffffbd     	b	0x2ac8 <syna_tcm_update_lockdown_config+0x1e0>
    2bd8: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    2bdc: 91000000     	add	x0, x0, #0x0
		0000000000002bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    2be0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    2be4: 91000021     	add	x1, x1, #0x0
		0000000000002be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    2be8: 94000000     	bl	0x2be8 <syna_tcm_update_lockdown_config+0x300>
		0000000000002be8:  R_AARCH64_CALL26	_printk
    2bec: 17ffffbb     	b	0x2ad8 <syna_tcm_update_lockdown_config+0x1f0>
    2bf0: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    2bf4: 91000000     	add	x0, x0, #0x0
		0000000000002bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    2bf8: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    2bfc: 91000021     	add	x1, x1, #0x0
		0000000000002bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    2c00: 94000000     	bl	0x2c00 <syna_tcm_update_lockdown_config+0x318>
		0000000000002c00:  R_AARCH64_CALL26	_printk
    2c04: 17ffffbb     	b	0x2af0 <syna_tcm_update_lockdown_config+0x208>
    2c08: 2a0003f5     	mov	w21, w0
    2c0c: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fcc
    2c10: 91000000     	add	x0, x0, #0x0
		0000000000002c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fcc
    2c14: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ecc
    2c18: 91000021     	add	x1, x1, #0x0
		0000000000002c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ecc
    2c1c: 94000000     	bl	0x2c1c <syna_tcm_update_lockdown_config+0x334>
		0000000000002c1c:  R_AARCH64_CALL26	_printk
    2c20: 17ffff9a     	b	0x2a88 <syna_tcm_update_lockdown_config+0x1a0>
    2c24: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42fa
    2c28: 91000000     	add	x0, x0, #0x0
		0000000000002c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42fa
    2c2c: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ecc
    2c30: 91000021     	add	x1, x1, #0x0
		0000000000002c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ecc
    2c34: 94000000     	bl	0x2c34 <syna_tcm_update_lockdown_config+0x34c>
		0000000000002c34:  R_AARCH64_CALL26	_printk
    2c38: 2a1f03f5     	mov	w21, wzr
    2c3c: 17ffff93     	b	0x2a88 <syna_tcm_update_lockdown_config+0x1a0>
    2c40: 2a0003f5     	mov	w21, w0
    2c44: 394a22c0     	ldrb	w0, [x22, #0x288]
    2c48: 94000000     	bl	0x2c48 <syna_tcm_update_lockdown_config+0x360>
		0000000000002c48:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    2c4c: aa0003e2     	mov	x2, x0
    2c50: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e1e
    2c54: 91000000     	add	x0, x0, #0x0
		0000000000002c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e1e
    2c58: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ecc
    2c5c: 91000021     	add	x1, x1, #0x0
		0000000000002c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ecc
    2c60: 94000000     	bl	0x2c60 <syna_tcm_update_lockdown_config+0x378>
		0000000000002c60:  R_AARCH64_CALL26	_printk
    2c64: 17ffff89     	b	0x2a88 <syna_tcm_update_lockdown_config+0x1a0>
    2c68: 94000000     	bl	0x2c68 <syna_tcm_update_lockdown_config+0x380>
		0000000000002c68:  R_AARCH64_CALL26	__stack_chk_fail
