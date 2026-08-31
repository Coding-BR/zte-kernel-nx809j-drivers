
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f190 <syna_tcm_read_flash_mtp_config>:
   1f190: d503233f     	paciasp
   1f194: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1f198: f9000bf9     	str	x25, [sp, #0x10]
   1f19c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1f1a0: a90357f6     	stp	x22, x21, [sp, #0x30]
   1f1a4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1f1a8: 910003fd     	mov	x29, sp
   1f1ac: b4000721     	cbz	x1, 0x1f290 <syna_tcm_read_flash_mtp_config+0x100>
   1f1b0: aa0203f3     	mov	x19, x2
   1f1b4: b4000742     	cbz	x2, 0x1f29c <syna_tcm_read_flash_mtp_config+0x10c>
   1f1b8: 39402408     	ldrb	w8, [x0, #0x9]
   1f1bc: aa0003f7     	mov	x23, x0
   1f1c0: 7100051f     	cmp	w8, #0x1
   1f1c4: 540007a0     	b.eq	0x1f2b8 <syna_tcm_read_flash_mtp_config+0x128>
   1f1c8: 2a0503f6     	mov	w22, w5
   1f1cc: 2a0403f5     	mov	w21, w4
   1f1d0: 2a0303f4     	mov	w20, w3
   1f1d4: 35000043     	cbnz	w3, 0x1f1dc <syna_tcm_read_flash_mtp_config+0x4c>
   1f1d8: b9402834     	ldr	w20, [x1, #0x28]
   1f1dc: f9401028     	ldr	x8, [x1, #0x20]
   1f1e0: 39400102     	ldrb	w2, [x8]
   1f1e4: 71000c5f     	cmp	w2, #0x3
   1f1e8: 54000741     	b.ne	0x1f2d0 <syna_tcm_read_flash_mtp_config+0x140>
   1f1ec: b9400a78     	ldr	w24, [x19, #0x8]
   1f1f0: b9403c39     	ldr	w25, [x1, #0x3c]
   1f1f4: f9400260     	ldr	x0, [x19]
   1f1f8: 6b14031f     	cmp	w24, w20
   1f1fc: 54000242     	b.hs	0x1f244 <syna_tcm_read_flash_mtp_config+0xb4>
   1f200: b40000c0     	cbz	x0, 0x1f218 <syna_tcm_read_flash_mtp_config+0x88>
   1f204: aa0003f8     	mov	x24, x0
   1f208: 94000000     	bl	0x1f208 <syna_tcm_read_flash_mtp_config+0x78>
		000000000001f208:  R_AARCH64_CALL26	syna_request_managed_device
   1f20c: b40008a0     	cbz	x0, 0x1f320 <syna_tcm_read_flash_mtp_config+0x190>
   1f210: aa1803e1     	mov	x1, x24
   1f214: 94000000     	bl	0x1f214 <syna_tcm_read_flash_mtp_config+0x84>
		000000000001f214:  R_AARCH64_CALL26	devm_kfree
   1f218: 94000000     	bl	0x1f218 <syna_tcm_read_flash_mtp_config+0x88>
		000000000001f218:  R_AARCH64_CALL26	syna_request_managed_device
   1f21c: b4000900     	cbz	x0, 0x1f33c <syna_tcm_read_flash_mtp_config+0x1ac>
   1f220: 7100029f     	cmp	w20, #0x0
   1f224: 5400078d     	b.le	0x1f314 <syna_tcm_read_flash_mtp_config+0x184>
   1f228: 2a1403f8     	mov	w24, w20
   1f22c: 5281b802     	mov	w2, #0xdc0              // =3520
   1f230: aa1803e1     	mov	x1, x24
   1f234: 94000000     	bl	0x1f234 <syna_tcm_read_flash_mtp_config+0xa4>
		000000000001f234:  R_AARCH64_CALL26	devm_kmalloc
   1f238: f9000260     	str	x0, [x19]
   1f23c: b40008c0     	cbz	x0, 0x1f354 <syna_tcm_read_flash_mtp_config+0x1c4>
   1f240: b9000a74     	str	w20, [x19, #0x8]
   1f244: 2a1f03e1     	mov	w1, wzr
   1f248: aa1803e2     	mov	x2, x24
   1f24c: 94000000     	bl	0x1f24c <syna_tcm_read_flash_mtp_config+0xbc>
		000000000001f24c:  R_AARCH64_CALL26	memset
   1f250: f9400262     	ldr	x2, [x19]
   1f254: 0b150321     	add	w1, w25, w21
   1f258: aa1703e0     	mov	x0, x23
   1f25c: 2a1403e3     	mov	w3, w20
   1f260: 2a1603e4     	mov	w4, w22
   1f264: b9000e7f     	str	wzr, [x19, #0xc]
   1f268: 97fffb36     	bl	0x1df40 <syna_tcm_read_flash>
   1f26c: 37f80400     	tbnz	w0, #0x1f, 0x1f2ec <syna_tcm_read_flash_mtp_config+0x15c>
   1f270: b9000e74     	str	w20, [x19, #0xc]
   1f274: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1f278: f9400bf9     	ldr	x25, [sp, #0x10]
   1f27c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1f280: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1f284: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1f288: d50323bf     	autiasp
   1f28c: d65f03c0     	ret
   1f290: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2917
   1f294: 91000000     	add	x0, x0, #0x0
		000000000001f294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2917
   1f298: 14000003     	b	0x1f2a4 <syna_tcm_read_flash_mtp_config+0x114>
   1f29c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f29c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0c
   1f2a0: 91000000     	add	x0, x0, #0x0
		000000000001f2a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0c
   1f2a4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2989
   1f2a8: 91000021     	add	x1, x1, #0x0
		000000000001f2a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2989
   1f2ac: 94000000     	bl	0x1f2ac <syna_tcm_read_flash_mtp_config+0x11c>
		000000000001f2ac:  R_AARCH64_CALL26	_printk
   1f2b0: 12801e00     	mov	w0, #-0xf1              // =-241
   1f2b4: 17fffff0     	b	0x1f274 <syna_tcm_read_flash_mtp_config+0xe4>
   1f2b8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d6a
   1f2bc: 91000000     	add	x0, x0, #0x0
		000000000001f2bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d6a
   1f2c0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2989
   1f2c4: 91000021     	add	x1, x1, #0x0
		000000000001f2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2989
   1f2c8: 52800022     	mov	w2, #0x1                // =1
   1f2cc: 14000005     	b	0x1f2e0 <syna_tcm_read_flash_mtp_config+0x150>
   1f2d0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0c6
   1f2d4: 91000000     	add	x0, x0, #0x0
		000000000001f2d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0c6
   1f2d8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2989
   1f2dc: 91000021     	add	x1, x1, #0x0
		000000000001f2dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2989
   1f2e0: 94000000     	bl	0x1f2e0 <syna_tcm_read_flash_mtp_config+0x150>
		000000000001f2e0:  R_AARCH64_CALL26	_printk
   1f2e4: 12801e00     	mov	w0, #-0xf1              // =-241
   1f2e8: 17ffffe3     	b	0x1f274 <syna_tcm_read_flash_mtp_config+0xe4>
   1f2ec: 90000008     	adrp	x8, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x429b
   1f2f0: 91000108     	add	x8, x8, #0x0
		000000000001f2f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x429b
   1f2f4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f2f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2989
   1f2f8: 91000021     	add	x1, x1, #0x0
		000000000001f2f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2989
   1f2fc: 0b150322     	add	w2, w25, w21
   1f300: 2a0003f3     	mov	w19, w0
   1f304: aa0803e0     	mov	x0, x8
   1f308: 94000000     	bl	0x1f308 <syna_tcm_read_flash_mtp_config+0x178>
		000000000001f308:  R_AARCH64_CALL26	_printk
   1f30c: 2a1303e0     	mov	w0, w19
   1f310: 17ffffd9     	b	0x1f274 <syna_tcm_read_flash_mtp_config+0xe4>
   1f314: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1f318: 91000000     	add	x0, x0, #0x0
		000000000001f318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1f31c: 1400000a     	b	0x1f344 <syna_tcm_read_flash_mtp_config+0x1b4>
   1f320: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f324: 91000000     	add	x0, x0, #0x0
		000000000001f324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f328: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1f32c: 91000021     	add	x1, x1, #0x0
		000000000001f32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1f330: 94000000     	bl	0x1f330 <syna_tcm_read_flash_mtp_config+0x1a0>
		000000000001f330:  R_AARCH64_CALL26	_printk
   1f334: 94000000     	bl	0x1f334 <syna_tcm_read_flash_mtp_config+0x1a4>
		000000000001f334:  R_AARCH64_CALL26	syna_request_managed_device
   1f338: b5fff740     	cbnz	x0, 0x1f220 <syna_tcm_read_flash_mtp_config+0x90>
   1f33c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f33c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1f340: 91000000     	add	x0, x0, #0x0
		000000000001f340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1f344: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1f348: 91000021     	add	x1, x1, #0x0
		000000000001f348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1f34c: 94000000     	bl	0x1f34c <syna_tcm_read_flash_mtp_config+0x1bc>
		000000000001f34c:  R_AARCH64_CALL26	_printk
   1f350: f900027f     	str	xzr, [x19]
   1f354: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1f358: 91000000     	add	x0, x0, #0x0
		000000000001f358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1f35c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f35c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1f360: 91000021     	add	x1, x1, #0x0
		000000000001f360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1f364: 2a1403e2     	mov	w2, w20
   1f368: 94000000     	bl	0x1f368 <syna_tcm_read_flash_mtp_config+0x1d8>
		000000000001f368:  R_AARCH64_CALL26	_printk
   1f36c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f36c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286f
   1f370: 91000000     	add	x0, x0, #0x0
		000000000001f370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286f
   1f374: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2989
   1f378: 91000021     	add	x1, x1, #0x0
		000000000001f378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2989
   1f37c: f900067f     	str	xzr, [x19, #0x8]
   1f380: 94000000     	bl	0x1f380 <syna_tcm_read_flash_mtp_config+0x1f0>
		000000000001f380:  R_AARCH64_CALL26	_printk
   1f384: 12801e40     	mov	w0, #-0xf3              // =-243
   1f388: 17ffffbb     	b	0x1f274 <syna_tcm_read_flash_mtp_config+0xe4>
