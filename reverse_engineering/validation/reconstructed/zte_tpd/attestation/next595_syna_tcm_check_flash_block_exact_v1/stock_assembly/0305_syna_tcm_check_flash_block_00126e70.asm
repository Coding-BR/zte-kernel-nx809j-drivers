
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000205e8 <syna_tcm_check_flash_block>:
   205e8: d503233f     	paciasp
   205ec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   205f0: f9000bf3     	str	x19, [sp, #0x10]
   205f4: 910003fd     	mov	x29, sp
   205f8: b40007e1     	cbz	x1, 0x206f4 <syna_tcm_check_flash_block+0x10c>
   205fc: b4000822     	cbz	x2, 0x20700 <syna_tcm_check_flash_block+0x118>
   20600: 39406049     	ldrb	w9, [x2, #0x18]
   20604: aa0003e8     	mov	x8, x0
   20608: 2a1f03e0     	mov	w0, wzr
   2060c: 51000529     	sub	w9, w9, #0x1
   20610: 13890529     	ror	w9, w9, #0x1
   20614: 7100093f     	cmp	w9, #0x2
   20618: 5400036c     	b.gt	0x20684 <syna_tcm_check_flash_block+0x9c>
   2061c: 340005e9     	cbz	w9, 0x206d8 <syna_tcm_check_flash_block+0xf0>
   20620: 7100053f     	cmp	w9, #0x1
   20624: 54000901     	b.ne	0x20744 <syna_tcm_check_flash_block+0x15c>
   20628: b9401040     	ldr	w0, [x2, #0x10]
   2062c: 340008c0     	cbz	w0, 0x20744 <syna_tcm_check_flash_block+0x15c>
   20630: b9402c29     	ldr	w9, [x1, #0x2c]
   20634: 7941710a     	ldrh	w10, [x8, #0xb8]
   20638: 79417503     	ldrh	w3, [x8, #0xba]
   2063c: 1b097d49     	mul	w9, w10, w9
   20640: 2a030128     	orr	w8, w9, w3
   20644: 34000808     	cbz	w8, 0x20744 <syna_tcm_check_flash_block+0x15c>
   20648: b9401442     	ldr	w2, [x2, #0x14]
   2064c: 6b09005f     	cmp	w2, w9
   20650: 54000aa1     	b.ne	0x207a4 <syna_tcm_check_flash_block+0x1bc>
   20654: 6b03001f     	cmp	w0, w3
   20658: 54000760     	b.eq	0x20744 <syna_tcm_check_flash_block+0x15c>
   2065c: 90000008     	adrp	x8, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca
   20660: 91000108     	add	x8, x8, #0x0
		0000000000020660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca
   20664: 2a0003f3     	mov	w19, w0
   20668: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c34
   2066c: 91000021     	add	x1, x1, #0x0
		000000000002066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c34
   20670: aa0803e0     	mov	x0, x8
   20674: 2a1303e2     	mov	w2, w19
   20678: 94000000     	bl	0x20678 <syna_tcm_check_flash_block+0x90>
		0000000000020678:  R_AARCH64_CALL26	_printk
   2067c: 2a1303e0     	mov	w0, w19
   20680: 14000031     	b	0x20744 <syna_tcm_check_flash_block+0x15c>
   20684: 71000d3f     	cmp	w9, #0x3
   20688: 54000320     	b.eq	0x206ec <syna_tcm_check_flash_block+0x104>
   2068c: 7100253f     	cmp	w9, #0x9
   20690: 540005a1     	b.ne	0x20744 <syna_tcm_check_flash_block+0x15c>
   20694: b9401040     	ldr	w0, [x2, #0x10]
   20698: 71001c1f     	cmp	w0, #0x7
   2069c: 540005c9     	b.ls	0x20754 <syna_tcm_check_flash_block+0x16c>
   206a0: f940102a     	ldr	x10, [x1, #0x20]
   206a4: 39400148     	ldrb	w8, [x10]
   206a8: 321f0109     	orr	w9, w8, #0x2
   206ac: 71000d3f     	cmp	w9, #0x3
   206b0: 540006a1     	b.ne	0x20784 <syna_tcm_check_flash_block+0x19c>
   206b4: b9402c29     	ldr	w9, [x1, #0x2c]
   206b8: b9401443     	ldr	w3, [x2, #0x14]
   206bc: 7100051f     	cmp	w8, #0x1
   206c0: 540002e0     	b.eq	0x2071c <syna_tcm_check_flash_block+0x134>
   206c4: 71000d1f     	cmp	w8, #0x3
   206c8: 54000361     	b.ne	0x20734 <syna_tcm_check_flash_block+0x14c>
   206cc: 52800228     	mov	w8, #0x11               // =17
   206d0: 5280020b     	mov	w11, #0x10              // =16
   206d4: 14000014     	b	0x20724 <syna_tcm_check_flash_block+0x13c>
   206d8: b9401048     	ldr	w8, [x2, #0x10]
   206dc: 12801e09     	mov	w9, #-0xf1              // =-241
   206e0: 7100011f     	cmp	w8, #0x0
   206e4: 1a880120     	csel	w0, w9, w8, eq
   206e8: 14000017     	b	0x20744 <syna_tcm_check_flash_block+0x15c>
   206ec: b9401040     	ldr	w0, [x2, #0x10]
   206f0: 14000015     	b	0x20744 <syna_tcm_check_flash_block+0x15c>
   206f4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000206f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2917
   206f8: 91000000     	add	x0, x0, #0x0
		00000000000206f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2917
   206fc: 14000003     	b	0x20708 <syna_tcm_check_flash_block+0x120>
   20700: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41c
   20704: 91000000     	add	x0, x0, #0x0
		0000000000020704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41c
   20708: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa75
   2070c: 91000021     	add	x1, x1, #0x0
		000000000002070c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa75
   20710: 94000000     	bl	0x20710 <syna_tcm_check_flash_block+0x128>
		0000000000020710:  R_AARCH64_CALL26	_printk
   20714: 12801e00     	mov	w0, #-0xf1              // =-241
   20718: 1400000b     	b	0x20744 <syna_tcm_check_flash_block+0x15c>
   2071c: 528001a8     	mov	w8, #0xd                // =13
   20720: 5280018b     	mov	w11, #0xc               // =12
   20724: 386b694b     	ldrb	w11, [x10, x11]
   20728: 38686948     	ldrb	w8, [x10, x8]
   2072c: 2a082168     	orr	w8, w11, w8, lsl #8
   20730: 14000002     	b	0x20738 <syna_tcm_check_flash_block+0x150>
   20734: 2a1f03e8     	mov	w8, wzr
   20738: 1b097d02     	mul	w2, w8, w9
   2073c: 6b02007f     	cmp	w3, w2
   20740: 54000181     	b.ne	0x20770 <syna_tcm_check_flash_block+0x188>
   20744: f9400bf3     	ldr	x19, [sp, #0x10]
   20748: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2074c: d50323bf     	autiasp
   20750: d65f03c0     	ret
   20754: 90000008     	adrp	x8, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x894e
   20758: 91000108     	add	x8, x8, #0x0
		0000000000020758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x894e
   2075c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c40
   20760: 91000021     	add	x1, x1, #0x0
		0000000000020760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c40
   20764: 2a0003e2     	mov	w2, w0
   20768: aa0803e0     	mov	x0, x8
   2076c: 1400000b     	b	0x20798 <syna_tcm_check_flash_block+0x1b0>
   20770: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1072
   20774: 91000000     	add	x0, x0, #0x0
		0000000000020774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1072
   20778: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c40
   2077c: 91000021     	add	x1, x1, #0x0
		000000000002077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c40
   20780: 1400000e     	b	0x207b8 <syna_tcm_check_flash_block+0x1d0>
   20784: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0c6
   20788: 91000000     	add	x0, x0, #0x0
		0000000000020788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0c6
   2078c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002078c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c40
   20790: 91000021     	add	x1, x1, #0x0
		0000000000020790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c40
   20794: 2a0803e2     	mov	w2, w8
   20798: 94000000     	bl	0x20798 <syna_tcm_check_flash_block+0x1b0>
		0000000000020798:  R_AARCH64_CALL26	_printk
   2079c: 12801e00     	mov	w0, #-0xf1              // =-241
   207a0: 17ffffe9     	b	0x20744 <syna_tcm_check_flash_block+0x15c>
   207a4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000207a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x544d
   207a8: 91000000     	add	x0, x0, #0x0
		00000000000207a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x544d
   207ac: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000207ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c34
   207b0: 91000021     	add	x1, x1, #0x0
		00000000000207b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c34
   207b4: 2a0903e3     	mov	w3, w9
   207b8: 94000000     	bl	0x207b8 <syna_tcm_check_flash_block+0x1d0>
		00000000000207b8:  R_AARCH64_CALL26	_printk
   207bc: 12801e00     	mov	w0, #-0xf1              // =-241
   207c0: 17ffffe1     	b	0x20744 <syna_tcm_check_flash_block+0x15c>
