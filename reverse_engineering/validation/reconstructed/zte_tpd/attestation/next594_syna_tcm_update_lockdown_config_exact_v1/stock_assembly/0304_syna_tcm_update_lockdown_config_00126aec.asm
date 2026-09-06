
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020264 <syna_tcm_update_lockdown_config>:
   20264: d503233f     	paciasp
   20268: d10503ff     	sub	sp, sp, #0x140
   2026c: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
   20270: a91067fc     	stp	x28, x25, [sp, #0x100]
   20274: a9115ff8     	stp	x24, x23, [sp, #0x110]
   20278: a91257f6     	stp	x22, x21, [sp, #0x120]
   2027c: a9134ff4     	stp	x20, x19, [sp, #0x130]
   20280: 9103c3fd     	add	x29, sp, #0xf0
   20284: d5384108     	mrs	x8, SP_EL0
   20288: f9438908     	ldr	x8, [x8, #0x710]
   2028c: f81f83a8     	stur	x8, [x29, #-0x8]
   20290: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   20294: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   20298: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   2029c: f9000fff     	str	xzr, [sp, #0x18]
   202a0: b40011c0     	cbz	x0, 0x204d8 <syna_tcm_update_lockdown_config+0x274>
   202a4: aa0103f6     	mov	x22, x1
   202a8: b4000fe1     	cbz	x1, 0x204a4 <syna_tcm_update_lockdown_config+0x240>
   202ac: b94002c8     	ldr	w8, [x22]
   202b0: 34000fa8     	cbz	w8, 0x204a4 <syna_tcm_update_lockdown_config+0x240>
   202b4: 3949c2c8     	ldrb	w8, [x22, #0x270]
   202b8: 7100051f     	cmp	w8, #0x1
   202bc: 54000fa1     	b.ne	0x204b0 <syna_tcm_update_lockdown_config+0x24c>
   202c0: f9413ec8     	ldr	x8, [x22, #0x278]
   202c4: b4000f68     	cbz	x8, 0x204b0 <syna_tcm_update_lockdown_config+0x24c>
   202c8: 2a0203f5     	mov	w21, w2
   202cc: b94282c2     	ldr	w2, [x22, #0x280]
   202d0: 71001c5f     	cmp	w2, #0x7
   202d4: 54001109     	b.ls	0x204f4 <syna_tcm_update_lockdown_config+0x290>
   202d8: aa0003f3     	mov	x19, x0
   202dc: 52800108     	mov	w8, #0x8                // =8
   202e0: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   202e4: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   202e8: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   202ec: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   202f0: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   202f4: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   202f8: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   202fc: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   20300: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   20304: f9002bff     	str	xzr, [sp, #0x50]
   20308: b900dfe8     	str	w8, [sp, #0xdc]
   2030c: 34000095     	cbz	w21, 0x2031c <syna_tcm_update_lockdown_config+0xb8>
   20310: b9420e77     	ldr	w23, [x19, #0x20c]
   20314: b941ea74     	ldr	w20, [x19, #0x1e8]
   20318: 14000003     	b	0x20324 <syna_tcm_update_lockdown_config+0xc0>
   2031c: 2a1f03f4     	mov	w20, wzr
   20320: 2a1f03f7     	mov	w23, wzr
   20324: 910143e8     	add	x8, sp, #0x50
   20328: 90000018     	adrp	x24, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   2032c: 91000318     	add	x24, x24, #0x0
		000000000002032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   20330: 90000019     	adrp	x25, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   20334: 91000339     	add	x25, x25, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   20338: 91014100     	add	x0, x8, #0x50
   2033c: aa1803e1     	mov	x1, x24
   20340: aa1903e2     	mov	x2, x25
   20344: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   20348: 94000000     	bl	0x20348 <syna_tcm_update_lockdown_config+0xe4>
		0000000000020348:  R_AARCH64_CALL26	__mutex_init
   2034c: 910023e8     	add	x8, sp, #0x8
   20350: aa1803e1     	mov	x1, x24
   20354: aa1903e2     	mov	x2, x25
   20358: 91004100     	add	x0, x8, #0x10
   2035c: 390123ff     	strb	wzr, [sp, #0x48]
   20360: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   20364: 94000000     	bl	0x20364 <syna_tcm_update_lockdown_config+0x100>
		0000000000020364:  R_AARCH64_CALL26	__mutex_init
   20368: 52800028     	mov	w8, #0x1                // =1
   2036c: 910143e1     	add	x1, sp, #0x50
   20370: aa1303e0     	mov	x0, x19
   20374: 2a1703e2     	mov	w2, w23
   20378: 2a1403e3     	mov	w3, w20
   2037c: b9038a68     	str	w8, [x19, #0x388]
   20380: 97fff637     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   20384: 37f80c80     	tbnz	w0, #0x1f, 0x20514 <syna_tcm_update_lockdown_config+0x2b0>
   20388: 910143e1     	add	x1, sp, #0x50
   2038c: 910023e2     	add	x2, sp, #0x8
   20390: aa1303e0     	mov	x0, x19
   20394: 2a1703e3     	mov	w3, w23
   20398: 97fff99c     	bl	0x1ea08 <syna_tcm_read_flash_boot_config>
   2039c: 37f80f40     	tbnz	w0, #0x1f, 0x20584 <syna_tcm_update_lockdown_config+0x320>
   203a0: b94017e8     	ldr	w8, [sp, #0x14]
   203a4: f94007e9     	ldr	x9, [sp, #0x8]
   203a8: 51001d08     	sub	w8, w8, #0x7
   203ac: 38e84928     	ldrsb	w8, [x9, w8, uxtw]
   203b0: 37f80f88     	tbnz	w8, #0x1f, 0x205a0 <syna_tcm_update_lockdown_config+0x33c>
   203b4: 910143e1     	add	x1, sp, #0x50
   203b8: 9109c2c2     	add	x2, x22, #0x270
   203bc: aa1303e0     	mov	x0, x19
   203c0: 9400008a     	bl	0x205e8 <syna_tcm_check_flash_block>
   203c4: 7100001f     	cmp	w0, #0x0
   203c8: 54000fad     	b.le	0x205bc <syna_tcm_update_lockdown_config+0x358>
   203cc: b94282c8     	ldr	w8, [x22, #0x280]
   203d0: f9413ec9     	ldr	x9, [x22, #0x278]
   203d4: 910143e1     	add	x1, sp, #0x50
   203d8: b9408bea     	ldr	w10, [sp, #0x88]
   203dc: aa1303e0     	mov	x0, x19
   203e0: 52800104     	mov	w4, #0x8                // =8
   203e4: 51002108     	sub	w8, w8, #0x8
   203e8: 2a1503e5     	mov	w5, w21
   203ec: 52800115     	mov	w21, #0x8               // =8
   203f0: 0b080142     	add	w2, w10, w8
   203f4: 8b080123     	add	x3, x9, x8
   203f8: 940000f3     	bl	0x207c4 <syna_tcm_write_flash>
   203fc: 7100001f     	cmp	w0, #0x0
   20400: 1a95b015     	csel	w21, w0, w21, lt
   20404: 39402668     	ldrb	w8, [x19, #0x9]
   20408: 71002d1f     	cmp	w8, #0xb
   2040c: 540000a1     	b.ne	0x20420 <syna_tcm_update_lockdown_config+0x1bc>
   20410: aa1303e0     	mov	x0, x19
   20414: 52800021     	mov	w1, #0x1                // =1
   20418: 2a1403e2     	mov	w2, w20
   2041c: 94000000     	bl	0x2041c <syna_tcm_update_lockdown_config+0x1b8>
		000000000002041c:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   20420: b9038a7f     	str	wzr, [x19, #0x388]
   20424: 394123e2     	ldrb	w2, [sp, #0x48]
   20428: 350007e2     	cbnz	w2, 0x20524 <syna_tcm_update_lockdown_config+0x2c0>
   2042c: f94007f3     	ldr	x19, [sp, #0x8]
   20430: 94000000     	bl	0x20430 <syna_tcm_update_lockdown_config+0x1cc>
		0000000000020430:  R_AARCH64_CALL26	syna_request_managed_device
   20434: b4000840     	cbz	x0, 0x2053c <syna_tcm_update_lockdown_config+0x2d8>
   20438: b4000073     	cbz	x19, 0x20444 <syna_tcm_update_lockdown_config+0x1e0>
   2043c: aa1303e1     	mov	x1, x19
   20440: 94000000     	bl	0x20440 <syna_tcm_update_lockdown_config+0x1dc>
		0000000000020440:  R_AARCH64_CALL26	devm_kfree
   20444: 394343e2     	ldrb	w2, [sp, #0xd0]
   20448: f9000bff     	str	xzr, [sp, #0x10]
   2044c: 390123ff     	strb	wzr, [sp, #0x48]
   20450: 35000822     	cbnz	w2, 0x20554 <syna_tcm_update_lockdown_config+0x2f0>
   20454: f9404bf3     	ldr	x19, [sp, #0x90]
   20458: 94000000     	bl	0x20458 <syna_tcm_update_lockdown_config+0x1f4>
		0000000000020458:  R_AARCH64_CALL26	syna_request_managed_device
   2045c: b4000880     	cbz	x0, 0x2056c <syna_tcm_update_lockdown_config+0x308>
   20460: b4000073     	cbz	x19, 0x2046c <syna_tcm_update_lockdown_config+0x208>
   20464: aa1303e1     	mov	x1, x19
   20468: 94000000     	bl	0x20468 <syna_tcm_update_lockdown_config+0x204>
		0000000000020468:  R_AARCH64_CALL26	devm_kfree
   2046c: 2a1503e0     	mov	w0, w21
   20470: d5384108     	mrs	x8, SP_EL0
   20474: f9438908     	ldr	x8, [x8, #0x710]
   20478: f85f83a9     	ldur	x9, [x29, #-0x8]
   2047c: eb09011f     	cmp	x8, x9
   20480: 54000b21     	b.ne	0x205e4 <syna_tcm_update_lockdown_config+0x380>
   20484: a9534ff4     	ldp	x20, x19, [sp, #0x130]
   20488: a95257f6     	ldp	x22, x21, [sp, #0x120]
   2048c: a9515ff8     	ldp	x24, x23, [sp, #0x110]
   20490: a95067fc     	ldp	x28, x25, [sp, #0x100]
   20494: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
   20498: 910503ff     	add	sp, sp, #0x140
   2049c: d50323bf     	autiasp
   204a0: d65f03c0     	ret
   204a4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bed
   204a8: 91000000     	add	x0, x0, #0x0
		00000000000204a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bed
   204ac: 1400000d     	b	0x204e0 <syna_tcm_update_lockdown_config+0x27c>
   204b0: 394a22c0     	ldrb	w0, [x22, #0x288]
   204b4: 94000000     	bl	0x204b4 <syna_tcm_update_lockdown_config+0x250>
		00000000000204b4:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   204b8: aa0003e2     	mov	x2, x0
   204bc: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6af
   204c0: 91000000     	add	x0, x0, #0x0
		00000000000204c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6af
   204c4: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cf8
   204c8: 91000021     	add	x1, x1, #0x0
		00000000000204c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cf8
   204cc: 94000000     	bl	0x204cc <syna_tcm_update_lockdown_config+0x268>
		00000000000204cc:  R_AARCH64_CALL26	_printk
   204d0: 12801e00     	mov	w0, #-0xf1              // =-241
   204d4: 17ffffe7     	b	0x20470 <syna_tcm_update_lockdown_config+0x20c>
   204d8: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   204dc: 91000000     	add	x0, x0, #0x0
		00000000000204dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   204e0: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cf8
   204e4: 91000021     	add	x1, x1, #0x0
		00000000000204e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cf8
   204e8: 94000000     	bl	0x204e8 <syna_tcm_update_lockdown_config+0x284>
		00000000000204e8:  R_AARCH64_CALL26	_printk
   204ec: 12801e00     	mov	w0, #-0xf1              // =-241
   204f0: 17ffffe0     	b	0x20470 <syna_tcm_update_lockdown_config+0x20c>
   204f4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2313
   204f8: 91000000     	add	x0, x0, #0x0
		00000000000204f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2313
   204fc: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000204fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cf8
   20500: 91000021     	add	x1, x1, #0x0
		0000000000020500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cf8
   20504: 52800103     	mov	w3, #0x8                // =8
   20508: 94000000     	bl	0x20508 <syna_tcm_update_lockdown_config+0x2a4>
		0000000000020508:  R_AARCH64_CALL26	_printk
   2050c: 12801e00     	mov	w0, #-0xf1              // =-241
   20510: 17ffffd8     	b	0x20470 <syna_tcm_update_lockdown_config+0x20c>
   20514: 2a0003f5     	mov	w21, w0
   20518: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   2051c: 91000000     	add	x0, x0, #0x0
		000000000002051c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   20520: 1400001c     	b	0x20590 <syna_tcm_update_lockdown_config+0x32c>
   20524: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   20528: 91000000     	add	x0, x0, #0x0
		0000000000020528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   2052c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002052c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   20530: 91000021     	add	x1, x1, #0x0
		0000000000020530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   20534: 94000000     	bl	0x20534 <syna_tcm_update_lockdown_config+0x2d0>
		0000000000020534:  R_AARCH64_CALL26	_printk
   20538: 17ffffbd     	b	0x2042c <syna_tcm_update_lockdown_config+0x1c8>
   2053c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002053c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   20540: 91000000     	add	x0, x0, #0x0
		0000000000020540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   20544: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   20548: 91000021     	add	x1, x1, #0x0
		0000000000020548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   2054c: 94000000     	bl	0x2054c <syna_tcm_update_lockdown_config+0x2e8>
		000000000002054c:  R_AARCH64_CALL26	_printk
   20550: 17ffffbd     	b	0x20444 <syna_tcm_update_lockdown_config+0x1e0>
   20554: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   20558: 91000000     	add	x0, x0, #0x0
		0000000000020558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   2055c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002055c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   20560: 91000021     	add	x1, x1, #0x0
		0000000000020560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   20564: 94000000     	bl	0x20564 <syna_tcm_update_lockdown_config+0x300>
		0000000000020564:  R_AARCH64_CALL26	_printk
   20568: 17ffffbb     	b	0x20454 <syna_tcm_update_lockdown_config+0x1f0>
   2056c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002056c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   20570: 91000000     	add	x0, x0, #0x0
		0000000000020570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   20574: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   20578: 91000021     	add	x1, x1, #0x0
		0000000000020578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   2057c: 94000000     	bl	0x2057c <syna_tcm_update_lockdown_config+0x318>
		000000000002057c:  R_AARCH64_CALL26	_printk
   20580: 17ffffbb     	b	0x2046c <syna_tcm_update_lockdown_config+0x208>
   20584: 2a0003f5     	mov	w21, w0
   20588: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e73
   2058c: 91000000     	add	x0, x0, #0x0
		000000000002058c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e73
   20590: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cf8
   20594: 91000021     	add	x1, x1, #0x0
		0000000000020594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cf8
   20598: 94000000     	bl	0x20598 <syna_tcm_update_lockdown_config+0x334>
		0000000000020598:  R_AARCH64_CALL26	_printk
   2059c: 17ffff9a     	b	0x20404 <syna_tcm_update_lockdown_config+0x1a0>
   205a0: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000205a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x420b
   205a4: 91000000     	add	x0, x0, #0x0
		00000000000205a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x420b
   205a8: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000205a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cf8
   205ac: 91000021     	add	x1, x1, #0x0
		00000000000205ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cf8
   205b0: 94000000     	bl	0x205b0 <syna_tcm_update_lockdown_config+0x34c>
		00000000000205b0:  R_AARCH64_CALL26	_printk
   205b4: 2a1f03f5     	mov	w21, wzr
   205b8: 17ffff93     	b	0x20404 <syna_tcm_update_lockdown_config+0x1a0>
   205bc: 2a0003f5     	mov	w21, w0
   205c0: 394a22c0     	ldrb	w0, [x22, #0x288]
   205c4: 94000000     	bl	0x205c4 <syna_tcm_update_lockdown_config+0x360>
		00000000000205c4:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   205c8: aa0003e2     	mov	x2, x0
   205cc: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000205cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bd4
   205d0: 91000000     	add	x0, x0, #0x0
		00000000000205d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bd4
   205d4: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000205d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cf8
   205d8: 91000021     	add	x1, x1, #0x0
		00000000000205d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cf8
   205dc: 94000000     	bl	0x205dc <syna_tcm_update_lockdown_config+0x378>
		00000000000205dc:  R_AARCH64_CALL26	_printk
   205e0: 17ffff89     	b	0x20404 <syna_tcm_update_lockdown_config+0x1a0>
   205e4: 94000000     	bl	0x205e4 <syna_tcm_update_lockdown_config+0x380>
		00000000000205e4:  R_AARCH64_CALL26	__stack_chk_fail
