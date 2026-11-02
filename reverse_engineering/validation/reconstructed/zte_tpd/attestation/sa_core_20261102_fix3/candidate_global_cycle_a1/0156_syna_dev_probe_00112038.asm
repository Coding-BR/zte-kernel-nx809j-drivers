
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cd48 <syna_dev_probe>:
   1cd48: d503233f     	paciasp
   1cd4c: d101c3ff     	sub	sp, sp, #0x70
   1cd50: a9047bfd     	stp	x29, x30, [sp, #0x40]
   1cd54: a90557f6     	stp	x22, x21, [sp, #0x50]
   1cd58: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1cd5c: 910103fd     	add	x29, sp, #0x40
   1cd60: d5384108     	mrs	x8, SP_EL0
   1cd64: aa0003f4     	mov	x20, x0
   1cd68: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a4
   1cd6c: 91000000     	add	x0, x0, #0x0
		000000000001cd6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a4
   1cd70: f9438908     	ldr	x8, [x8, #0x710]
   1cd74: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cd78: 91000021     	add	x1, x1, #0x0
		000000000001cd78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cd7c: f81f83a8     	stur	x8, [x29, #-0x8]
   1cd80: f90007ff     	str	xzr, [sp, #0x8]
   1cd84: 94000000     	bl	0x1cd84 <syna_dev_probe+0x3c>
		000000000001cd84:  R_AARCH64_CALL26	_printk
   1cd88: f9405295     	ldr	x21, [x20, #0xa0]
   1cd8c: b5000115     	cbnz	x21, 0x1cdac <syna_dev_probe+0x64>
   1cd90: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cea
   1cd94: 91000000     	add	x0, x0, #0x0
		000000000001cd94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cea
   1cd98: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cd9c: 91000021     	add	x1, x1, #0x0
		000000000001cd9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cda0: 94000000     	bl	0x1cda0 <syna_dev_probe+0x58>
		000000000001cda0:  R_AARCH64_CALL26	_printk
   1cda4: 128002a0     	mov	w0, #-0x16              // =-22
   1cda8: 14000013     	b	0x1cdf4 <syna_dev_probe+0xac>
   1cdac: 94000000     	bl	0x1cdac <syna_dev_probe+0x64>
		000000000001cdac:  R_AARCH64_CALL26	syna_request_managed_device
   1cdb0: b50000e0     	cbnz	x0, 0x1cdcc <syna_dev_probe+0x84>
   1cdb4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cdb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1cdb8: 91000000     	add	x0, x0, #0x0
		000000000001cdb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1cdbc: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cdbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1cdc0: 91000021     	add	x1, x1, #0x0
		000000000001cdc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   1cdc4: 94000000     	bl	0x1cdc4 <syna_dev_probe+0x7c>
		000000000001cdc4:  R_AARCH64_CALL26	_printk
   1cdc8: 14000005     	b	0x1cddc <syna_dev_probe+0x94>
   1cdcc: 5280da01     	mov	w1, #0x6d0              // =1744
   1cdd0: 5281b802     	mov	w2, #0xdc0              // =3520
   1cdd4: 94000000     	bl	0x1cdd4 <syna_dev_probe+0x8c>
		000000000001cdd4:  R_AARCH64_CALL26	devm_kmalloc
   1cdd8: b5000240     	cbnz	x0, 0x1ce20 <syna_dev_probe+0xd8>
   1cddc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafa4
   1cde0: 91000000     	add	x0, x0, #0x0
		000000000001cde0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafa4
   1cde4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cde4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cde8: 91000021     	add	x1, x1, #0x0
		000000000001cde8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cdec: 94000000     	bl	0x1cdec <syna_dev_probe+0xa4>
		000000000001cdec:  R_AARCH64_CALL26	_printk
   1cdf0: 12800160     	mov	w0, #-0xc               // =-12
   1cdf4: d5384108     	mrs	x8, SP_EL0
   1cdf8: f9438908     	ldr	x8, [x8, #0x710]
   1cdfc: f85f83a9     	ldur	x9, [x29, #-0x8]
   1ce00: eb09011f     	cmp	x8, x9
   1ce04: 540024a1     	b.ne	0x1d298 <syna_dev_probe+0x550>
   1ce08: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1ce0c: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1ce10: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   1ce14: 9101c3ff     	add	sp, sp, #0x70
   1ce18: d50323bf     	autiasp
   1ce1c: d65f03c0     	ret
   1ce20: aa0003f3     	mov	x19, x0
   1ce24: b905881f     	str	wzr, [x0, #0x588]
   1ce28: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ce28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1ce2c: 91000021     	add	x1, x1, #0x0
		000000000001ce2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   1ce30: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ce30:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_probe_wait_base+0x1
   1ce34: 91000042     	add	x2, x2, #0x0
		000000000001ce34:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_probe_wait_base+0x1
   1ce38: 91164000     	add	x0, x0, #0x590
   1ce3c: 94000000     	bl	0x1ce3c <syna_dev_probe+0xf4>
		000000000001ce3c:  R_AARCH64_CALL26	__init_swait_queue_head
   1ce40: 910023e0     	add	x0, sp, #0x8
   1ce44: 910022a1     	add	x1, x21, #0x8
   1ce48: aa1303e2     	mov	x2, x19
   1ce4c: 94000000     	bl	0x1ce4c <syna_dev_probe+0x104>
		000000000001ce4c:  R_AARCH64_CALL26	syna_tcm_allocate_device
   1ce50: 2a0003e8     	mov	w8, w0
   1ce54: 37f80420     	tbnz	w0, #0x1f, 0x1ced8 <syna_dev_probe+0x190>
   1ce58: f94007e0     	ldr	x0, [sp, #0x8]
   1ce5c: b40003e0     	cbz	x0, 0x1ced8 <syna_dev_probe+0x190>
   1ce60: a9005260     	stp	x0, x20, [x19]
   1ce64: 910043e1     	add	x1, sp, #0x10
   1ce68: 2a1f03e2     	mov	w2, wzr
   1ce6c: f9013a75     	str	x21, [x19, #0x270]
   1ce70: 529fffe3     	mov	w3, #0xffff             // =65535
   1ce74: f940aea8     	ldr	x8, [x21, #0x158]
   1ce78: b94162a9     	ldr	w9, [x21, #0x160]
   1ce7c: b94172aa     	ldr	w10, [x21, #0x170]
   1ce80: f9000be8     	str	x8, [sp, #0x10]
   1ce84: b9001be9     	str	w9, [sp, #0x18]
   1ce88: b9416aa9     	ldr	w9, [x21, #0x168]
   1ce8c: b94166a8     	ldr	w8, [x21, #0x164]
   1ce90: b90027ea     	str	w10, [sp, #0x24]
   1ce94: b940faaa     	ldr	w10, [x21, #0xf8]
   1ce98: 2903a7e8     	stp	w8, w9, [sp, #0x1c]
   1ce9c: b9416ea9     	ldr	w9, [x21, #0x16c]
   1cea0: b94176a8     	ldr	w8, [x21, #0x174]
   1cea4: b9002be8     	str	w8, [sp, #0x28]
   1cea8: b9417aa8     	ldr	w8, [x21, #0x178]
   1ceac: b90037ea     	str	w10, [sp, #0x34]
   1ceb0: 2905a7e8     	stp	w8, w9, [sp, #0x2c]
   1ceb4: 94000000     	bl	0x1ceb4 <syna_dev_probe+0x16c>
		000000000001ceb4:  R_AARCH64_CALL26	syna_tcm_config_timings
   1ceb8: 36f80200     	tbz	w0, #0x1f, 0x1cef8 <syna_dev_probe+0x1b0>
   1cebc: 2a0003f5     	mov	w21, w0
   1cec0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120
   1cec4: 91000000     	add	x0, x0, #0x0
		000000000001cec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120
   1cec8: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cecc: 91000021     	add	x1, x1, #0x0
		000000000001cecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ced0: 94000000     	bl	0x1ced0 <syna_dev_probe+0x188>
		000000000001ced0:  R_AARCH64_CALL26	_printk
   1ced4: 14000089     	b	0x1d0f8 <syna_dev_probe+0x3b0>
   1ced8: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ced8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bc2
   1cedc: 91000000     	add	x0, x0, #0x0
		000000000001cedc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bc2
   1cee0: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cee4: 91000021     	add	x1, x1, #0x0
		000000000001cee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cee8: 2a0803f3     	mov	w19, w8
   1ceec: 94000000     	bl	0x1ceec <syna_dev_probe+0x1a4>
		000000000001ceec:  R_AARCH64_CALL26	_printk
   1cef0: 2a1303e0     	mov	w0, w19
   1cef4: 17ffffc0     	b	0x1cdf4 <syna_dev_probe+0xac>
   1cef8: 90000015     	adrp	x21, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   1cefc: 910002b5     	add	x21, x21, #0x0
		000000000001cefc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   1cf00: 90000016     	adrp	x22, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf00:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f36
   1cf04: 910002d6     	add	x22, x22, #0x0
		000000000001cf04:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f36
   1cf08: 910ae260     	add	x0, x19, #0x2b8
   1cf0c: aa1503e1     	mov	x1, x21
   1cf10: aa1603e2     	mov	x2, x22
   1cf14: 390ba27f     	strb	wzr, [x19, #0x2e8]
   1cf18: f901567f     	str	xzr, [x19, #0x2a8]
   1cf1c: f9015a7f     	str	xzr, [x19, #0x2b0]
   1cf20: 94000000     	bl	0x1cf20 <syna_dev_probe+0x1d8>
		000000000001cf20:  R_AARCH64_CALL26	__mutex_init
   1cf24: 9109e260     	add	x0, x19, #0x278
   1cf28: aa1503e1     	mov	x1, x21
   1cf2c: aa1603e2     	mov	x2, x22
   1cf30: 94000000     	bl	0x1cf30 <syna_dev_probe+0x1e8>
		000000000001cf30:  R_AARCH64_CALL26	__mutex_init
   1cf34: 91160668     	add	x8, x19, #0x581
   1cf38: 52800029     	mov	w9, #0x1                // =1
   1cf3c: 390bd27f     	strb	wzr, [x19, #0x2f4]
   1cf40: 79000109     	strh	w9, [x8]
   1cf44: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf44:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_connect
   1cf48: 91000108     	add	x8, x8, #0x0
		000000000001cf48:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_connect
   1cf4c: f9035668     	str	x8, [x19, #0x6a8]
   1cf50: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf50:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_disconnect
   1cf54: 91000108     	add	x8, x8, #0x0
		000000000001cf54:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_disconnect
   1cf58: f9035a68     	str	x8, [x19, #0x6b0]
   1cf5c: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf5c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_set_up_app_fw
   1cf60: 91000108     	add	x8, x8, #0x0
		000000000001cf60:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_set_up_app_fw
   1cf64: f9035e68     	str	x8, [x19, #0x6b8]
   1cf68: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf68:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_resume
   1cf6c: 91000108     	add	x8, x8, #0x0
		000000000001cf6c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_resume
   1cf70: f9036268     	str	x8, [x19, #0x6c0]
   1cf74: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf74:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_suspend
   1cf78: 91000108     	add	x8, x8, #0x0
		000000000001cf78:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_suspend
   1cf7c: b9057e7f     	str	wzr, [x19, #0x57c]
   1cf80: f9036668     	str	x8, [x19, #0x6c8]
   1cf84: d503201f     	nop
   1cf88: 52840000     	mov	w0, #0x2000             // =8192
   1cf8c: 52819801     	mov	w1, #0xcc0              // =3264
   1cf90: 72a00060     	movk	w0, #0x3, lsl #16
   1cf94: 94000000     	bl	0x1cf94 <syna_dev_probe+0x24c>
		000000000001cf94:  R_AARCH64_CALL26	__kmalloc_large_noprof
   1cf98: f9023260     	str	x0, [x19, #0x460]
   1cf9c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cf9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
   1cfa0: 91000021     	add	x1, x1, #0x0
		000000000001cfa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
   1cfa4: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cfa4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f34
   1cfa8: 91000042     	add	x2, x2, #0x0
		000000000001cfa8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f34
   1cfac: 9111c260     	add	x0, x19, #0x470
   1cfb0: 94000000     	bl	0x1cfb0 <syna_dev_probe+0x268>
		000000000001cfb0:  R_AARCH64_CALL26	__mutex_init
   1cfb4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cfb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32c4
   1cfb8: 91000021     	add	x1, x1, #0x0
		000000000001cfb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32c4
   1cfbc: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cfbc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f35
   1cfc0: 91000042     	add	x2, x2, #0x0
		000000000001cfc0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f35
   1cfc4: 91112260     	add	x0, x19, #0x448
   1cfc8: 94000000     	bl	0x1cfc8 <syna_dev_probe+0x280>
		000000000001cfc8:  R_AARCH64_CALL26	__init_waitqueue_head
   1cfcc: 52801fe8     	mov	w8, #0xff               // =255
   1cfd0: b9046a7f     	str	wzr, [x19, #0x468]
   1cfd4: 91128260     	add	x0, x19, #0x4a0
   1cfd8: b904a268     	str	w8, [x19, #0x4a0]
   1cfdc: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cfdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a2
   1cfe0: 91000108     	add	x8, x8, #0x0
		000000000001cfe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a2
   1cfe4: f9025668     	str	x8, [x19, #0x4a8]
   1cfe8: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cfe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1a830
   1cfec: 91000108     	add	x8, x8, #0x0
		000000000001cfec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1a830
   1cff0: f9025a68     	str	x8, [x19, #0x4b0]
   1cff4: f902667f     	str	xzr, [x19, #0x4c8]
   1cff8: 94000000     	bl	0x1cff8 <syna_dev_probe+0x2b0>
		000000000001cff8:  R_AARCH64_CALL26	misc_register
   1cffc: 35000240     	cbnz	w0, 0x1d044 <syna_dev_probe+0x2fc>
   1d000: 91004280     	add	x0, x20, #0x10
   1d004: 52800021     	mov	w1, #0x1                // =1
   1d008: f902d67f     	str	xzr, [x19, #0x5a8]
   1d00c: f9005693     	str	x19, [x20, #0xa8]
   1d010: 94000000     	bl	0x1d010 <syna_dev_probe+0x2c8>
		000000000001d010:  R_AARCH64_CALL26	device_set_wakeup_capable
   1d014: 91004280     	add	x0, x20, #0x10
   1d018: 94000000     	bl	0x1d018 <syna_dev_probe+0x2d0>
		000000000001d018:  R_AARCH64_CALL26	device_wakeup_enable
   1d01c: aa1303e0     	mov	x0, x19
   1d020: 94000101     	bl	0x1d424 <syna_dev_process_touch_report+0x158>
		000000000001d020:  R_AARCH64_CALL26	syna_dev_connect
   1d024: 36f801e0     	tbz	w0, #0x1f, 0x1d060 <syna_dev_probe+0x318>
   1d028: 2a0003f5     	mov	w21, w0
   1d02c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d02c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7056
   1d030: 91000000     	add	x0, x0, #0x0
		000000000001d030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7056
   1d034: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d038: 91000021     	add	x1, x1, #0x0
		000000000001d038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d03c: 94000000     	bl	0x1d03c <syna_dev_probe+0x2f4>
		000000000001d03c:  R_AARCH64_CALL26	_printk
   1d040: 14000021     	b	0x1d0c4 <syna_dev_probe+0x37c>
   1d044: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774c
   1d048: 91000108     	add	x8, x8, #0x0
		000000000001d048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774c
   1d04c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d04c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d050: 91000021     	add	x1, x1, #0x0
		000000000001d050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d054: 2a0003f3     	mov	w19, w0
   1d058: aa0803e0     	mov	x0, x8
   1d05c: 17ffffa4     	b	0x1ceec <syna_dev_probe+0x1a4>
   1d060: aa1303e0     	mov	x0, x19
   1d064: aa1403e1     	mov	x1, x20
   1d068: 94000000     	bl	0x1d068 <syna_dev_probe+0x320>
		000000000001d068:  R_AARCH64_CALL26	syna_cdev_create
   1d06c: 36f80100     	tbz	w0, #0x1f, 0x1d08c <syna_dev_probe+0x344>
   1d070: 2a0003f5     	mov	w21, w0
   1d074: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x734
   1d078: 91000000     	add	x0, x0, #0x0
		000000000001d078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x734
   1d07c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d07c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d080: 91000021     	add	x1, x1, #0x0
		000000000001d080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d084: 94000000     	bl	0x1d084 <syna_dev_probe+0x33c>
		000000000001d084:  R_AARCH64_CALL26	_printk
   1d088: 1400000d     	b	0x1d0bc <syna_dev_probe+0x374>
   1d08c: aa1303e0     	mov	x0, x19
   1d090: aa1403e1     	mov	x1, x20
   1d094: 94000000     	bl	0x1d094 <syna_dev_probe+0x34c>
		000000000001d094:  R_AARCH64_CALL26	syna_sysfs_create_dir
   1d098: 36f80380     	tbz	w0, #0x1f, 0x1d108 <syna_dev_probe+0x3c0>
   1d09c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x764
   1d0a0: 91000000     	add	x0, x0, #0x0
		000000000001d0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x764
   1d0a4: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d0a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d0a8: 91000021     	add	x1, x1, #0x0
		000000000001d0a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d0ac: 94000000     	bl	0x1d0ac <syna_dev_probe+0x364>
		000000000001d0ac:  R_AARCH64_CALL26	_printk
   1d0b0: aa1303e0     	mov	x0, x19
   1d0b4: 94000000     	bl	0x1d0b4 <syna_dev_probe+0x36c>
		000000000001d0b4:  R_AARCH64_CALL26	syna_cdev_remove
   1d0b8: 12800275     	mov	w21, #-0x14             // =-20
   1d0bc: aa1303e0     	mov	x0, x19
   1d0c0: 940001d5     	bl	0x1d814 <syna_dev_enable_lowpwr_gesture+0xc>
		000000000001d0c0:  R_AARCH64_CALL26	syna_dev_disconnect
   1d0c4: f9423260     	ldr	x0, [x19, #0x460]
   1d0c8: 910aa274     	add	x20, x19, #0x2a8
   1d0cc: 94000000     	bl	0x1d0cc <syna_dev_probe+0x384>
		000000000001d0cc:  R_AARCH64_CALL26	kfree
   1d0d0: 394ba262     	ldrb	w2, [x19, #0x2e8]
   1d0d4: 35000ca2     	cbnz	w2, 0x1d268 <syna_dev_probe+0x520>
   1d0d8: f9400294     	ldr	x20, [x20]
   1d0dc: 94000000     	bl	0x1d0dc <syna_dev_probe+0x394>
		000000000001d0dc:  R_AARCH64_CALL26	syna_request_managed_device
   1d0e0: b4000d00     	cbz	x0, 0x1d280 <syna_dev_probe+0x538>
   1d0e4: b4000074     	cbz	x20, 0x1d0f0 <syna_dev_probe+0x3a8>
   1d0e8: aa1403e1     	mov	x1, x20
   1d0ec: 94000000     	bl	0x1d0ec <syna_dev_probe+0x3a4>
		000000000001d0ec:  R_AARCH64_CALL26	devm_kfree
   1d0f0: f9015a7f     	str	xzr, [x19, #0x2b0]
   1d0f4: 390ba27f     	strb	wzr, [x19, #0x2e8]
   1d0f8: f94007e0     	ldr	x0, [sp, #0x8]
   1d0fc: 94000000     	bl	0x1d0fc <syna_dev_probe+0x3b4>
		000000000001d0fc:  R_AARCH64_CALL26	syna_tcm_remove_device
   1d100: 2a1503e0     	mov	w0, w21
   1d104: 17ffff3c     	b	0x1cdf4 <syna_dev_probe+0xac>
   1d108: aa1303e0     	mov	x0, x19
   1d10c: 94000442     	bl	0x1e214 <syna_cdev_ioctl_raw_write+0x34c>
		000000000001d10c:  R_AARCH64_CALL26	syna_ts_register_for_panel_events
   1d110: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8360
   1d114: 91000000     	add	x0, x0, #0x0
		000000000001d114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8360
   1d118: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6a6
   1d11c: 91000021     	add	x1, x1, #0x0
		000000000001d11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6a6
   1d120: 94000000     	bl	0x1d120 <syna_dev_probe+0x3d8>
		000000000001d120:  R_AARCH64_CALL26	_printk
   1d124: 90000015     	adrp	x21, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d124:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1d128: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d128:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_resume
   1d12c: 91000129     	add	x9, x9, #0x0
		000000000001d12c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_resume
   1d130: f94002a8     	ldr	x8, [x21]
		000000000001d130:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d134: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1d138: 91000021     	add	x1, x1, #0x0
		000000000001d138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   1d13c: 90000002     	adrp	x2, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d13c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_probe_wait_base+0x1
   1d140: 91000042     	add	x2, x2, #0x0
		000000000001d140:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_probe_wait_base+0x1
   1d144: 91158260     	add	x0, x19, #0x560
   1d148: f9070509     	str	x9, [x8, #0xe08]
   1d14c: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d14c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_suspend
   1d150: 91000129     	add	x9, x9, #0x0
		000000000001d150:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_suspend
   1d154: f906ed13     	str	x19, [x8, #0xdd8]
   1d158: f9070909     	str	x9, [x8, #0xe10]
   1d15c: b9055a7f     	str	wzr, [x19, #0x558]
   1d160: 94000000     	bl	0x1d160 <syna_dev_probe+0x418>
		000000000001d160:  R_AARCH64_CALL26	__init_swait_queue_head
   1d164: 52800141     	mov	w1, #0xa                // =10
   1d168: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   1d16c: 91000000     	add	x0, x0, #0x0
		000000000001d16c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   1d170: 90000003     	adrp	x3, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b76
   1d174: 91000063     	add	x3, x3, #0x0
		000000000001d174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b76
   1d178: 72a000c1     	movk	w1, #0x6, lsl #16
   1d17c: 52800022     	mov	w2, #0x1                // =1
   1d180: 3915e27f     	strb	wzr, [x19, #0x578]
   1d184: 52800036     	mov	w22, #0x1               // =1
   1d188: b905227f     	str	wzr, [x19, #0x520]
   1d18c: 94000000     	bl	0x1d18c <syna_dev_probe+0x444>
		000000000001d18c:  R_AARCH64_CALL26	alloc_workqueue
   1d190: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   1d194: f902a660     	str	x0, [x19, #0x548]
   1d198: f9029668     	str	x8, [x19, #0x528]
   1d19c: 9114c268     	add	x8, x19, #0x530
   1d1a0: f9029a68     	str	x8, [x19, #0x530]
   1d1a4: f9029e68     	str	x8, [x19, #0x538]
   1d1a8: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d1a8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_helper_work
   1d1ac: 91000108     	add	x8, x8, #0x0
		000000000001d1ac:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_helper_work
   1d1b0: f902a268     	str	x8, [x19, #0x540]
   1d1b4: b21f03e8     	mov	x8, #0x200000002        // =8589934594
   1d1b8: f9030268     	str	x8, [x19, #0x600]
   1d1bc: 52800048     	mov	w8, #0x2                // =2
   1d1c0: b9060e68     	str	w8, [x19, #0x60c]
   1d1c4: d2800028     	mov	x8, #0x1                // =1
   1d1c8: f2c00048     	movk	x8, #0x2, lsl #32
   1d1cc: f902da7f     	str	xzr, [x19, #0x5b0]
   1d1d0: b905ba7f     	str	wzr, [x19, #0x5b8]
   1d1d4: b905c67f     	str	wzr, [x19, #0x5c4]
   1d1d8: b905d67f     	str	wzr, [x19, #0x5d4]
   1d1dc: b905de7f     	str	wzr, [x19, #0x5dc]
   1d1e0: f902fe68     	str	x8, [x19, #0x5f8]
   1d1e4: f902f67f     	str	xzr, [x19, #0x5e8]
   1d1e8: f902fa7f     	str	xzr, [x19, #0x5f0]
   1d1ec: 94000000     	bl	0x1d1ec <syna_dev_probe+0x4a4>
		000000000001d1ec:  R_AARCH64_CALL26	zte_get_boot_mode
   1d1f0: 90000014     	adrp	x20, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d1f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d1f4: 91000294     	add	x20, x20, #0x0
		000000000001d1f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d1f8: 2a0003e2     	mov	w2, w0
   1d1fc: b9061a60     	str	w0, [x19, #0x618]
   1d200: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1e
   1d204: 91000000     	add	x0, x0, #0x0
		000000000001d204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1e
   1d208: aa1403e1     	mov	x1, x20
   1d20c: 94000000     	bl	0x1d20c <syna_dev_probe+0x4c4>
		000000000001d20c:  R_AARCH64_CALL26	_printk
   1d210: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a
   1d214: 91000000     	add	x0, x0, #0x0
		000000000001d214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a
   1d218: 90000002     	adrp	x2, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1d21c: 91000042     	add	x2, x2, #0x0
		000000000001d21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1d220: 90000004     	adrp	x4, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82a0
   1d224: 91000084     	add	x4, x4, #0x0
		000000000001d224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82a0
   1d228: aa1403e1     	mov	x1, x20
   1d22c: 52800023     	mov	w3, #0x1                // =1
   1d230: 94000000     	bl	0x1d230 <syna_dev_probe+0x4e8>
		000000000001d230:  R_AARCH64_CALL26	_printk
   1d234: f94002a8     	ldr	x8, [x21]
		000000000001d234:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d238: 91162260     	add	x0, x19, #0x588
   1d23c: 39160e76     	strb	w22, [x19, #0x583]
   1d240: 39007516     	strb	w22, [x8, #0x1d]
   1d244: 39111916     	strb	w22, [x8, #0x446]
   1d248: 94000000     	bl	0x1d248 <syna_dev_probe+0x500>
		000000000001d248:  R_AARCH64_CALL26	completion_done
   1d24c: 2a0003e8     	mov	w8, w0
   1d250: 2a1f03e0     	mov	w0, wzr
   1d254: 3707dd08     	tbnz	w8, #0x0, 0x1cdf4 <syna_dev_probe+0xac>
   1d258: 91162260     	add	x0, x19, #0x588
   1d25c: 94000000     	bl	0x1d25c <syna_dev_probe+0x514>
		000000000001d25c:  R_AARCH64_CALL26	complete
   1d260: 2a1f03e0     	mov	w0, wzr
   1d264: 17fffee4     	b	0x1cdf4 <syna_dev_probe+0xac>
   1d268: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1d26c: 91000000     	add	x0, x0, #0x0
		000000000001d26c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1d270: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1d274: 91000021     	add	x1, x1, #0x0
		000000000001d274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1d278: 94000000     	bl	0x1d278 <syna_dev_probe+0x530>
		000000000001d278:  R_AARCH64_CALL26	_printk
   1d27c: 17ffff97     	b	0x1d0d8 <syna_dev_probe+0x390>
   1d280: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1d284: 91000000     	add	x0, x0, #0x0
		000000000001d284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1d288: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1d28c: 91000021     	add	x1, x1, #0x0
		000000000001d28c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1d290: 94000000     	bl	0x1d290 <syna_dev_probe+0x548>
		000000000001d290:  R_AARCH64_CALL26	_printk
   1d294: 17ffff97     	b	0x1d0f0 <syna_dev_probe+0x3a8>
   1d298: 94000000     	bl	0x1d298 <syna_dev_probe+0x550>
		000000000001d298:  R_AARCH64_CALL26	__stack_chk_fail
   1d29c: 52840000     	mov	w0, #0x2000             // =8192
   1d2a0: d5384115     	mrs	x21, SP_EL0
   1d2a4: f9402ab6     	ldr	x22, [x21, #0x50]
   1d2a8: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001d2a8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xb48
   1d2ac: 91000108     	add	x8, x8, #0x0
		000000000001d2ac:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xb48
   1d2b0: 72a00060     	movk	w0, #0x3, lsl #16
   1d2b4: 52819801     	mov	w1, #0xcc0              // =3264
   1d2b8: f9002aa8     	str	x8, [x21, #0x50]
   1d2bc: 94000000     	bl	0x1d2bc <syna_dev_probe+0x574>
		000000000001d2bc:  R_AARCH64_CALL26	__kmalloc_large_noprof
   1d2c0: f9002ab6     	str	x22, [x21, #0x50]
   1d2c4: 17ffff35     	b	0x1cf98 <syna_dev_probe+0x250>
