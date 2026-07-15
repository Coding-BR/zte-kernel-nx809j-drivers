
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f390 <syna_tcm_do_fw_update_ex>:
   1f390: d503233f     	paciasp
   1f394: d103c3ff     	sub	sp, sp, #0xf0
   1f398: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
   1f39c: f9005bf9     	str	x25, [sp, #0xb0]
   1f3a0: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
   1f3a4: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   1f3a8: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   1f3ac: 910283fd     	add	x29, sp, #0xa0
   1f3b0: d5384108     	mrs	x8, SP_EL0
   1f3b4: f9438908     	ldr	x8, [x8, #0x710]
   1f3b8: f81f83a8     	stur	x8, [x29, #-0x8]
   1f3bc: b5000080     	cbnz	x0, 0x1f3cc <syna_tcm_do_fw_update_ex+0x3c>
   1f3c0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f3c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1f3c4: 91000000     	add	x0, x0, #0x0
		000000000001f3c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1f3c8: 14000006     	b	0x1f3e0 <syna_tcm_do_fw_update_ex+0x50>
   1f3cc: b4000061     	cbz	x1, 0x1f3d8 <syna_tcm_do_fw_update_ex+0x48>
   1f3d0: b9400028     	ldr	w8, [x1]
   1f3d4: 35000288     	cbnz	w8, 0x1f424 <syna_tcm_do_fw_update_ex+0x94>
   1f3d8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f3d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bed
   1f3dc: 91000000     	add	x0, x0, #0x0
		000000000001f3dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bed
   1f3e0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f3e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b6
   1f3e4: 91000021     	add	x1, x1, #0x0
		000000000001f3e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b6
   1f3e8: 94000000     	bl	0x1f3e8 <syna_tcm_do_fw_update_ex+0x58>
		000000000001f3e8:  R_AARCH64_CALL26	_printk
   1f3ec: 12801e00     	mov	w0, #-0xf1              // =-241
   1f3f0: d5384108     	mrs	x8, SP_EL0
   1f3f4: f9438908     	ldr	x8, [x8, #0x710]
   1f3f8: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f3fc: eb09011f     	cmp	x8, x9
   1f400: 54001561     	b.ne	0x1f6ac <syna_tcm_do_fw_update_ex+0x31c>
   1f404: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   1f408: f9405bf9     	ldr	x25, [sp, #0xb0]
   1f40c: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   1f410: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
   1f414: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
   1f418: 9103c3ff     	add	sp, sp, #0xf0
   1f41c: d50323bf     	autiasp
   1f420: d65f03c0     	ret
   1f424: aa0003f3     	mov	x19, x0
   1f428: 2a0503f4     	mov	w20, w5
   1f42c: aa0103f9     	mov	x25, x1
   1f430: 2a0603f8     	mov	w24, w6
   1f434: 2a0303f6     	mov	w22, w3
   1f438: 2a0403f5     	mov	w21, w4
   1f43c: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   1f440: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   1f444: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   1f448: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1f44c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1f450: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1f454: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1f458: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1f45c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1f460: f90003ff     	str	xzr, [sp]
   1f464: b90003e2     	str	w2, [sp]
   1f468: 35000065     	cbnz	w5, 0x1f474 <syna_tcm_do_fw_update_ex+0xe4>
   1f46c: 2a1f03f7     	mov	w23, wzr
   1f470: 14000002     	b	0x1f478 <syna_tcm_do_fw_update_ex+0xe8>
   1f474: b9420e77     	ldr	w23, [x19, #0x20c]
   1f478: 910003e8     	mov	x8, sp
   1f47c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f47c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1f480: 91000021     	add	x1, x1, #0x0
		000000000001f480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   1f484: 90000002     	adrp	x2, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f484:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   1f488: 91000042     	add	x2, x2, #0x0
		000000000001f488:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   1f48c: 91014100     	add	x0, x8, #0x50
   1f490: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1f494: 94000000     	bl	0x1f494 <syna_tcm_do_fw_update_ex+0x104>
		000000000001f494:  R_AARCH64_CALL26	__mutex_init
   1f498: b9400328     	ldr	w8, [x25]
   1f49c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f49c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28ca
   1f4a0: 91000000     	add	x0, x0, #0x0
		000000000001f4a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28ca
   1f4a4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f4a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b6
   1f4a8: 91000021     	add	x1, x1, #0x0
		000000000001f4a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b6
   1f4ac: f9000ff9     	str	x25, [sp, #0x18]
   1f4b0: b90013e8     	str	w8, [sp, #0x10]
   1f4b4: 94000000     	bl	0x1f4b4 <syna_tcm_do_fw_update_ex+0x124>
		000000000001f4b4:  R_AARCH64_CALL26	_printk
   1f4b8: 52800028     	mov	w8, #0x1                // =1
   1f4bc: b9038a68     	str	w8, [x19, #0x388]
   1f4c0: 39402669     	ldrb	w9, [x19, #0x9]
   1f4c4: 71002d3f     	cmp	w9, #0xb
   1f4c8: 54000101     	b.ne	0x1f4e8 <syna_tcm_do_fw_update_ex+0x158>
   1f4cc: b94003e8     	ldr	w8, [sp]
   1f4d0: 52800129     	mov	w9, #0x9                // =9
   1f4d4: 2a1403e3     	mov	w3, w20
   1f4d8: 2a090108     	orr	w8, w8, w9
   1f4dc: b90003e8     	str	w8, [sp]
   1f4e0: 37180188     	tbnz	w8, #0x3, 0x1f510 <syna_tcm_do_fw_update_ex+0x180>
   1f4e4: 14000010     	b	0x1f524 <syna_tcm_do_fw_update_ex+0x194>
   1f4e8: b94003e8     	ldr	w8, [sp]
   1f4ec: 7100053f     	cmp	w9, #0x1
   1f4f0: 54000721     	b.ne	0x1f5d4 <syna_tcm_do_fw_update_ex+0x244>
   1f4f4: 79416669     	ldrh	w9, [x19, #0xb2]
   1f4f8: 2a1403e3     	mov	w3, w20
   1f4fc: 34000089     	cbz	w9, 0x1f50c <syna_tcm_do_fw_update_ex+0x17c>
   1f500: 52800129     	mov	w9, #0x9                // =9
   1f504: 2a090108     	orr	w8, w8, w9
   1f508: b90003e8     	str	w8, [sp]
   1f50c: 361800c8     	tbz	w8, #0x3, 0x1f524 <syna_tcm_do_fw_update_ex+0x194>
   1f510: f9400fe9     	ldr	x9, [sp, #0x18]
   1f514: b9408fea     	ldr	w10, [sp, #0x8c]
   1f518: b9404129     	ldr	w9, [x9, #0x40]
   1f51c: 0b090149     	add	w9, w10, w9
   1f520: b9008fe9     	str	w9, [sp, #0x8c]
   1f524: 360000c8     	tbz	w8, #0x0, 0x1f53c <syna_tcm_do_fw_update_ex+0x1ac>
   1f528: f9400fe8     	ldr	x8, [sp, #0x18]
   1f52c: b9408fe9     	ldr	w9, [sp, #0x8c]
   1f530: b9408108     	ldr	w8, [x8, #0x80]
   1f534: 0b080128     	add	w8, w9, w8
   1f538: b9008fe8     	str	w8, [sp, #0x8c]
   1f53c: 910003e1     	mov	x1, sp
   1f540: aa1303e0     	mov	x0, x19
   1f544: 2a1703e2     	mov	w2, w23
   1f548: 97fff9c5     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   1f54c: 36f80100     	tbz	w0, #0x1f, 0x1f56c <syna_tcm_do_fw_update_ex+0x1dc>
   1f550: 2a0003f4     	mov	w20, w0
   1f554: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   1f558: 91000000     	add	x0, x0, #0x0
		000000000001f558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   1f55c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f55c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b6
   1f560: 91000021     	add	x1, x1, #0x0
		000000000001f560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b6
   1f564: 94000000     	bl	0x1f564 <syna_tcm_do_fw_update_ex+0x1d4>
		000000000001f564:  R_AARCH64_CALL26	_printk
   1f568: 14000037     	b	0x1f644 <syna_tcm_do_fw_update_ex+0x2b4>
   1f56c: 39402662     	ldrb	w2, [x19, #0x9]
   1f570: 71002c5f     	cmp	w2, #0xb
   1f574: 54000241     	b.ne	0x1f5bc <syna_tcm_do_fw_update_ex+0x22c>
   1f578: b94003e8     	ldr	w8, [sp]
   1f57c: 36180348     	tbz	w8, #0x3, 0x1f5e4 <syna_tcm_do_fw_update_ex+0x254>
   1f580: 394223e8     	ldrb	w8, [sp, #0x88]
   1f584: f9400fe9     	ldr	x9, [sp, #0x18]
   1f588: 910003e1     	mov	x1, sp
   1f58c: aa1303e0     	mov	x0, x19
   1f590: 2a1603e3     	mov	w3, w22
   1f594: 2a1503e4     	mov	w4, w21
   1f598: 0a180108     	and	w8, w8, w24
   1f59c: 9100c122     	add	x2, x9, #0x30
   1f5a0: 12000105     	and	w5, w8, #0x1
   1f5a4: 94000043     	bl	0x1f6b0 <syna_tcm_update_flash_block>
   1f5a8: 36f801c0     	tbz	w0, #0x1f, 0x1f5e0 <syna_tcm_do_fw_update_ex+0x250>
   1f5ac: 2a0003f4     	mov	w20, w0
   1f5b0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1531
   1f5b4: 91000000     	add	x0, x0, #0x0
		000000000001f5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1531
   1f5b8: 17ffffe9     	b	0x1f55c <syna_tcm_do_fw_update_ex+0x1cc>
   1f5bc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f5bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa14
   1f5c0: 91000000     	add	x0, x0, #0x0
		000000000001f5c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa14
   1f5c4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f5c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b6
   1f5c8: 91000021     	add	x1, x1, #0x0
		000000000001f5c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b6
   1f5cc: 94000000     	bl	0x1f5cc <syna_tcm_do_fw_update_ex+0x23c>
		000000000001f5cc:  R_AARCH64_CALL26	_printk
   1f5d0: 14000018     	b	0x1f630 <syna_tcm_do_fw_update_ex+0x2a0>
   1f5d4: 2a1403e3     	mov	w3, w20
   1f5d8: 371ff9c8     	tbnz	w8, #0x3, 0x1f510 <syna_tcm_do_fw_update_ex+0x180>
   1f5dc: 17ffffd2     	b	0x1f524 <syna_tcm_do_fw_update_ex+0x194>
   1f5e0: b94003e8     	ldr	w8, [sp]
   1f5e4: 360001c8     	tbz	w8, #0x0, 0x1f61c <syna_tcm_do_fw_update_ex+0x28c>
   1f5e8: f9400fe8     	ldr	x8, [sp, #0x18]
   1f5ec: 910003e1     	mov	x1, sp
   1f5f0: aa1303e0     	mov	x0, x19
   1f5f4: 2a1603e3     	mov	w3, w22
   1f5f8: 2a1503e4     	mov	w4, w21
   1f5fc: 2a1f03e5     	mov	w5, wzr
   1f600: 9101c102     	add	x2, x8, #0x70
   1f604: 9400002b     	bl	0x1f6b0 <syna_tcm_update_flash_block>
   1f608: 36f800a0     	tbz	w0, #0x1f, 0x1f61c <syna_tcm_do_fw_update_ex+0x28c>
   1f60c: 2a0003f4     	mov	w20, w0
   1f610: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77ab
   1f614: 91000000     	add	x0, x0, #0x0
		000000000001f614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77ab
   1f618: 17ffffd1     	b	0x1f55c <syna_tcm_do_fw_update_ex+0x1cc>
   1f61c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f61c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4efd
   1f620: 91000000     	add	x0, x0, #0x0
		000000000001f620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4efd
   1f624: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b6
   1f628: 91000021     	add	x1, x1, #0x0
		000000000001f628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b6
   1f62c: 94000000     	bl	0x1f62c <syna_tcm_do_fw_update_ex+0x29c>
		000000000001f62c:  R_AARCH64_CALL26	_printk
   1f630: aa1303e0     	mov	x0, x19
   1f634: 2a1403e1     	mov	w1, w20
   1f638: 94000000     	bl	0x1f638 <syna_tcm_do_fw_update_ex+0x2a8>
		000000000001f638:  R_AARCH64_CALL26	syna_tcm_reset
   1f63c: 2a0003f4     	mov	w20, w0
   1f640: 37f80300     	tbnz	w0, #0x1f, 0x1f6a0 <syna_tcm_do_fw_update_ex+0x310>
   1f644: b9038a7f     	str	wzr, [x19, #0x388]
   1f648: 394203e2     	ldrb	w2, [sp, #0x80]
   1f64c: 35000122     	cbnz	w2, 0x1f670 <syna_tcm_do_fw_update_ex+0x2e0>
   1f650: f94023f3     	ldr	x19, [sp, #0x40]
   1f654: 94000000     	bl	0x1f654 <syna_tcm_do_fw_update_ex+0x2c4>
		000000000001f654:  R_AARCH64_CALL26	syna_request_managed_device
   1f658: b4000180     	cbz	x0, 0x1f688 <syna_tcm_do_fw_update_ex+0x2f8>
   1f65c: b4000073     	cbz	x19, 0x1f668 <syna_tcm_do_fw_update_ex+0x2d8>
   1f660: aa1303e1     	mov	x1, x19
   1f664: 94000000     	bl	0x1f664 <syna_tcm_do_fw_update_ex+0x2d4>
		000000000001f664:  R_AARCH64_CALL26	devm_kfree
   1f668: 2a1403e0     	mov	w0, w20
   1f66c: 17ffff61     	b	0x1f3f0 <syna_tcm_do_fw_update_ex+0x60>
   1f670: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1f674: 91000000     	add	x0, x0, #0x0
		000000000001f674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1f678: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1f67c: 91000021     	add	x1, x1, #0x0
		000000000001f67c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1f680: 94000000     	bl	0x1f680 <syna_tcm_do_fw_update_ex+0x2f0>
		000000000001f680:  R_AARCH64_CALL26	_printk
   1f684: 17fffff3     	b	0x1f650 <syna_tcm_do_fw_update_ex+0x2c0>
   1f688: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f68c: 91000000     	add	x0, x0, #0x0
		000000000001f68c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f690: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1f694: 91000021     	add	x1, x1, #0x0
		000000000001f694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1f698: 94000000     	bl	0x1f698 <syna_tcm_do_fw_update_ex+0x308>
		000000000001f698:  R_AARCH64_CALL26	_printk
   1f69c: 17fffff3     	b	0x1f668 <syna_tcm_do_fw_update_ex+0x2d8>
   1f6a0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f6a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86eb
   1f6a4: 91000000     	add	x0, x0, #0x0
		000000000001f6a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86eb
   1f6a8: 17ffffad     	b	0x1f55c <syna_tcm_do_fw_update_ex+0x1cc>
   1f6ac: 94000000     	bl	0x1f6ac <syna_tcm_do_fw_update_ex+0x31c>
		000000000001f6ac:  R_AARCH64_CALL26	__stack_chk_fail
