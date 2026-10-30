
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ccec <syna_dev_probe>:
   1ccec: d503233f     	paciasp
   1ccf0: d101c3ff     	sub	sp, sp, #0x70
   1ccf4: a9047bfd     	stp	x29, x30, [sp, #0x40]
   1ccf8: a90557f6     	stp	x22, x21, [sp, #0x50]
   1ccfc: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1cd00: 910103fd     	add	x29, sp, #0x40
   1cd04: d5384108     	mrs	x8, SP_EL0
   1cd08: aa0003f4     	mov	x20, x0
   1cd0c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a4
   1cd10: 91000000     	add	x0, x0, #0x0
		000000000001cd10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a4
   1cd14: f9438908     	ldr	x8, [x8, #0x710]
   1cd18: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cd1c: 91000021     	add	x1, x1, #0x0
		000000000001cd1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cd20: f81f83a8     	stur	x8, [x29, #-0x8]
   1cd24: f90007ff     	str	xzr, [sp, #0x8]
   1cd28: 94000000     	bl	0x1cd28 <syna_dev_probe+0x3c>
		000000000001cd28:  R_AARCH64_CALL26	_printk
   1cd2c: f9405295     	ldr	x21, [x20, #0xa0]
   1cd30: b5000115     	cbnz	x21, 0x1cd50 <syna_dev_probe+0x64>
   1cd34: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cea
   1cd38: 91000000     	add	x0, x0, #0x0
		000000000001cd38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cea
   1cd3c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cd40: 91000021     	add	x1, x1, #0x0
		000000000001cd40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cd44: 94000000     	bl	0x1cd44 <syna_dev_probe+0x58>
		000000000001cd44:  R_AARCH64_CALL26	_printk
   1cd48: 128002a0     	mov	w0, #-0x16              // =-22
   1cd4c: 14000013     	b	0x1cd98 <syna_dev_probe+0xac>
   1cd50: 94000000     	bl	0x1cd50 <syna_dev_probe+0x64>
		000000000001cd50:  R_AARCH64_CALL26	syna_request_managed_device
   1cd54: b50000e0     	cbnz	x0, 0x1cd70 <syna_dev_probe+0x84>
   1cd58: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1cd5c: 91000000     	add	x0, x0, #0x0
		000000000001cd5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1cd60: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1cd64: 91000021     	add	x1, x1, #0x0
		000000000001cd64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   1cd68: 94000000     	bl	0x1cd68 <syna_dev_probe+0x7c>
		000000000001cd68:  R_AARCH64_CALL26	_printk
   1cd6c: 14000005     	b	0x1cd80 <syna_dev_probe+0x94>
   1cd70: 5280da01     	mov	w1, #0x6d0              // =1744
   1cd74: 5281b802     	mov	w2, #0xdc0              // =3520
   1cd78: 94000000     	bl	0x1cd78 <syna_dev_probe+0x8c>
		000000000001cd78:  R_AARCH64_CALL26	devm_kmalloc
   1cd7c: b5000240     	cbnz	x0, 0x1cdc4 <syna_dev_probe+0xd8>
   1cd80: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafa4
   1cd84: 91000000     	add	x0, x0, #0x0
		000000000001cd84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafa4
   1cd88: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cd88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cd8c: 91000021     	add	x1, x1, #0x0
		000000000001cd8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cd90: 94000000     	bl	0x1cd90 <syna_dev_probe+0xa4>
		000000000001cd90:  R_AARCH64_CALL26	_printk
   1cd94: 12800160     	mov	w0, #-0xc               // =-12
   1cd98: d5384108     	mrs	x8, SP_EL0
   1cd9c: f9438908     	ldr	x8, [x8, #0x710]
   1cda0: f85f83a9     	ldur	x9, [x29, #-0x8]
   1cda4: eb09011f     	cmp	x8, x9
   1cda8: 540024a1     	b.ne	0x1d23c <syna_dev_probe+0x550>
   1cdac: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1cdb0: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1cdb4: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   1cdb8: 9101c3ff     	add	sp, sp, #0x70
   1cdbc: d50323bf     	autiasp
   1cdc0: d65f03c0     	ret
   1cdc4: aa0003f3     	mov	x19, x0
   1cdc8: b905881f     	str	wzr, [x0, #0x588]
   1cdcc: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cdcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1cdd0: 91000021     	add	x1, x1, #0x0
		000000000001cdd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   1cdd4: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cdd4:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_probe_wait_base+0x1
   1cdd8: 91000042     	add	x2, x2, #0x0
		000000000001cdd8:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_probe_wait_base+0x1
   1cddc: 91164000     	add	x0, x0, #0x590
   1cde0: 94000000     	bl	0x1cde0 <syna_dev_probe+0xf4>
		000000000001cde0:  R_AARCH64_CALL26	__init_swait_queue_head
   1cde4: 910023e0     	add	x0, sp, #0x8
   1cde8: 910022a1     	add	x1, x21, #0x8
   1cdec: aa1303e2     	mov	x2, x19
   1cdf0: 94000000     	bl	0x1cdf0 <syna_dev_probe+0x104>
		000000000001cdf0:  R_AARCH64_CALL26	syna_tcm_allocate_device
   1cdf4: 2a0003e8     	mov	w8, w0
   1cdf8: 37f80420     	tbnz	w0, #0x1f, 0x1ce7c <syna_dev_probe+0x190>
   1cdfc: f94007e0     	ldr	x0, [sp, #0x8]
   1ce00: b40003e0     	cbz	x0, 0x1ce7c <syna_dev_probe+0x190>
   1ce04: a9005260     	stp	x0, x20, [x19]
   1ce08: 910043e1     	add	x1, sp, #0x10
   1ce0c: 2a1f03e2     	mov	w2, wzr
   1ce10: f9013a75     	str	x21, [x19, #0x270]
   1ce14: 529fffe3     	mov	w3, #0xffff             // =65535
   1ce18: f940aea8     	ldr	x8, [x21, #0x158]
   1ce1c: b94162a9     	ldr	w9, [x21, #0x160]
   1ce20: b94172aa     	ldr	w10, [x21, #0x170]
   1ce24: f9000be8     	str	x8, [sp, #0x10]
   1ce28: b9001be9     	str	w9, [sp, #0x18]
   1ce2c: b9416aa9     	ldr	w9, [x21, #0x168]
   1ce30: b94166a8     	ldr	w8, [x21, #0x164]
   1ce34: b90027ea     	str	w10, [sp, #0x24]
   1ce38: b940faaa     	ldr	w10, [x21, #0xf8]
   1ce3c: 2903a7e8     	stp	w8, w9, [sp, #0x1c]
   1ce40: b9416ea9     	ldr	w9, [x21, #0x16c]
   1ce44: b94176a8     	ldr	w8, [x21, #0x174]
   1ce48: b9002be8     	str	w8, [sp, #0x28]
   1ce4c: b9417aa8     	ldr	w8, [x21, #0x178]
   1ce50: b90037ea     	str	w10, [sp, #0x34]
   1ce54: 2905a7e8     	stp	w8, w9, [sp, #0x2c]
   1ce58: 94000000     	bl	0x1ce58 <syna_dev_probe+0x16c>
		000000000001ce58:  R_AARCH64_CALL26	syna_tcm_config_timings
   1ce5c: 36f80200     	tbz	w0, #0x1f, 0x1ce9c <syna_dev_probe+0x1b0>
   1ce60: 2a0003f5     	mov	w21, w0
   1ce64: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ce64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120
   1ce68: 91000000     	add	x0, x0, #0x0
		000000000001ce68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120
   1ce6c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ce6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ce70: 91000021     	add	x1, x1, #0x0
		000000000001ce70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ce74: 94000000     	bl	0x1ce74 <syna_dev_probe+0x188>
		000000000001ce74:  R_AARCH64_CALL26	_printk
   1ce78: 14000089     	b	0x1d09c <syna_dev_probe+0x3b0>
   1ce7c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ce7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bc2
   1ce80: 91000000     	add	x0, x0, #0x0
		000000000001ce80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bc2
   1ce84: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ce84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ce88: 91000021     	add	x1, x1, #0x0
		000000000001ce88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ce8c: 2a0803f3     	mov	w19, w8
   1ce90: 94000000     	bl	0x1ce90 <syna_dev_probe+0x1a4>
		000000000001ce90:  R_AARCH64_CALL26	_printk
   1ce94: 2a1303e0     	mov	w0, w19
   1ce98: 17ffffc0     	b	0x1cd98 <syna_dev_probe+0xac>
   1ce9c: 90000015     	adrp	x21, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ce9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   1cea0: 910002b5     	add	x21, x21, #0x0
		000000000001cea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   1cea4: 90000016     	adrp	x22, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cea4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f36
   1cea8: 910002d6     	add	x22, x22, #0x0
		000000000001cea8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f36
   1ceac: 910ae260     	add	x0, x19, #0x2b8
   1ceb0: aa1503e1     	mov	x1, x21
   1ceb4: aa1603e2     	mov	x2, x22
   1ceb8: 390ba27f     	strb	wzr, [x19, #0x2e8]
   1cebc: f901567f     	str	xzr, [x19, #0x2a8]
   1cec0: f9015a7f     	str	xzr, [x19, #0x2b0]
   1cec4: 94000000     	bl	0x1cec4 <syna_dev_probe+0x1d8>
		000000000001cec4:  R_AARCH64_CALL26	__mutex_init
   1cec8: 9109e260     	add	x0, x19, #0x278
   1cecc: aa1503e1     	mov	x1, x21
   1ced0: aa1603e2     	mov	x2, x22
   1ced4: 94000000     	bl	0x1ced4 <syna_dev_probe+0x1e8>
		000000000001ced4:  R_AARCH64_CALL26	__mutex_init
   1ced8: 91160668     	add	x8, x19, #0x581
   1cedc: 52800029     	mov	w9, #0x1                // =1
   1cee0: 390bd27f     	strb	wzr, [x19, #0x2f4]
   1cee4: 79000109     	strh	w9, [x8]
   1cee8: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cee8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_connect
   1ceec: 91000108     	add	x8, x8, #0x0
		000000000001ceec:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_connect
   1cef0: f9035668     	str	x8, [x19, #0x6a8]
   1cef4: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cef4:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_disconnect
   1cef8: 91000108     	add	x8, x8, #0x0
		000000000001cef8:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_disconnect
   1cefc: f9035a68     	str	x8, [x19, #0x6b0]
   1cf00: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf00:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_set_up_app_fw
   1cf04: 91000108     	add	x8, x8, #0x0
		000000000001cf04:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_set_up_app_fw
   1cf08: f9035e68     	str	x8, [x19, #0x6b8]
   1cf0c: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf0c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_resume
   1cf10: 91000108     	add	x8, x8, #0x0
		000000000001cf10:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_resume
   1cf14: f9036268     	str	x8, [x19, #0x6c0]
   1cf18: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf18:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_suspend
   1cf1c: 91000108     	add	x8, x8, #0x0
		000000000001cf1c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_suspend
   1cf20: b9057e7f     	str	wzr, [x19, #0x57c]
   1cf24: f9036668     	str	x8, [x19, #0x6c8]
   1cf28: d503201f     	nop
   1cf2c: 52840000     	mov	w0, #0x2000             // =8192
   1cf30: 52819801     	mov	w1, #0xcc0              // =3264
   1cf34: 72a00060     	movk	w0, #0x3, lsl #16
   1cf38: 94000000     	bl	0x1cf38 <syna_dev_probe+0x24c>
		000000000001cf38:  R_AARCH64_CALL26	__kmalloc_large_noprof
   1cf3c: f9023260     	str	x0, [x19, #0x460]
   1cf40: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
   1cf44: 91000021     	add	x1, x1, #0x0
		000000000001cf44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
   1cf48: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf48:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f34
   1cf4c: 91000042     	add	x2, x2, #0x0
		000000000001cf4c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f34
   1cf50: 9111c260     	add	x0, x19, #0x470
   1cf54: 94000000     	bl	0x1cf54 <syna_dev_probe+0x268>
		000000000001cf54:  R_AARCH64_CALL26	__mutex_init
   1cf58: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32c4
   1cf5c: 91000021     	add	x1, x1, #0x0
		000000000001cf5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32c4
   1cf60: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f35
   1cf64: 91000042     	add	x2, x2, #0x0
		000000000001cf64:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f35
   1cf68: 91112260     	add	x0, x19, #0x448
   1cf6c: 94000000     	bl	0x1cf6c <syna_dev_probe+0x280>
		000000000001cf6c:  R_AARCH64_CALL26	__init_waitqueue_head
   1cf70: 52801fe8     	mov	w8, #0xff               // =255
   1cf74: b9046a7f     	str	wzr, [x19, #0x468]
   1cf78: 91128260     	add	x0, x19, #0x4a0
   1cf7c: b904a268     	str	w8, [x19, #0x4a0]
   1cf80: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a2
   1cf84: 91000108     	add	x8, x8, #0x0
		000000000001cf84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a2
   1cf88: f9025668     	str	x8, [x19, #0x4a8]
   1cf8c: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cf8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1a830
   1cf90: 91000108     	add	x8, x8, #0x0
		000000000001cf90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1a830
   1cf94: f9025a68     	str	x8, [x19, #0x4b0]
   1cf98: f902667f     	str	xzr, [x19, #0x4c8]
   1cf9c: 94000000     	bl	0x1cf9c <syna_dev_probe+0x2b0>
		000000000001cf9c:  R_AARCH64_CALL26	misc_register
   1cfa0: 35000240     	cbnz	w0, 0x1cfe8 <syna_dev_probe+0x2fc>
   1cfa4: 91004280     	add	x0, x20, #0x10
   1cfa8: 52800021     	mov	w1, #0x1                // =1
   1cfac: f902d67f     	str	xzr, [x19, #0x5a8]
   1cfb0: f9005693     	str	x19, [x20, #0xa8]
   1cfb4: 94000000     	bl	0x1cfb4 <syna_dev_probe+0x2c8>
		000000000001cfb4:  R_AARCH64_CALL26	device_set_wakeup_capable
   1cfb8: 91004280     	add	x0, x20, #0x10
   1cfbc: 94000000     	bl	0x1cfbc <syna_dev_probe+0x2d0>
		000000000001cfbc:  R_AARCH64_CALL26	device_wakeup_enable
   1cfc0: aa1303e0     	mov	x0, x19
   1cfc4: 94000101     	bl	0x1d3c8 <syna_dev_process_touch_report+0x158>
		000000000001cfc4:  R_AARCH64_CALL26	syna_dev_connect
   1cfc8: 36f801e0     	tbz	w0, #0x1f, 0x1d004 <syna_dev_probe+0x318>
   1cfcc: 2a0003f5     	mov	w21, w0
   1cfd0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cfd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7056
   1cfd4: 91000000     	add	x0, x0, #0x0
		000000000001cfd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7056
   1cfd8: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cfd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cfdc: 91000021     	add	x1, x1, #0x0
		000000000001cfdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cfe0: 94000000     	bl	0x1cfe0 <syna_dev_probe+0x2f4>
		000000000001cfe0:  R_AARCH64_CALL26	_printk
   1cfe4: 14000021     	b	0x1d068 <syna_dev_probe+0x37c>
   1cfe8: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cfe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774c
   1cfec: 91000108     	add	x8, x8, #0x0
		000000000001cfec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774c
   1cff0: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1cff4: 91000021     	add	x1, x1, #0x0
		000000000001cff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1cff8: 2a0003f3     	mov	w19, w0
   1cffc: aa0803e0     	mov	x0, x8
   1d000: 17ffffa4     	b	0x1ce90 <syna_dev_probe+0x1a4>
   1d004: aa1303e0     	mov	x0, x19
   1d008: aa1403e1     	mov	x1, x20
   1d00c: 94000000     	bl	0x1d00c <syna_dev_probe+0x320>
		000000000001d00c:  R_AARCH64_CALL26	syna_cdev_create
   1d010: 36f80100     	tbz	w0, #0x1f, 0x1d030 <syna_dev_probe+0x344>
   1d014: 2a0003f5     	mov	w21, w0
   1d018: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x734
   1d01c: 91000000     	add	x0, x0, #0x0
		000000000001d01c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x734
   1d020: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d024: 91000021     	add	x1, x1, #0x0
		000000000001d024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d028: 94000000     	bl	0x1d028 <syna_dev_probe+0x33c>
		000000000001d028:  R_AARCH64_CALL26	_printk
   1d02c: 1400000d     	b	0x1d060 <syna_dev_probe+0x374>
   1d030: aa1303e0     	mov	x0, x19
   1d034: aa1403e1     	mov	x1, x20
   1d038: 94000000     	bl	0x1d038 <syna_dev_probe+0x34c>
		000000000001d038:  R_AARCH64_CALL26	syna_sysfs_create_dir
   1d03c: 36f80380     	tbz	w0, #0x1f, 0x1d0ac <syna_dev_probe+0x3c0>
   1d040: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x764
   1d044: 91000000     	add	x0, x0, #0x0
		000000000001d044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x764
   1d048: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d04c: 91000021     	add	x1, x1, #0x0
		000000000001d04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d050: 94000000     	bl	0x1d050 <syna_dev_probe+0x364>
		000000000001d050:  R_AARCH64_CALL26	_printk
   1d054: aa1303e0     	mov	x0, x19
   1d058: 94000000     	bl	0x1d058 <syna_dev_probe+0x36c>
		000000000001d058:  R_AARCH64_CALL26	syna_cdev_remove
   1d05c: 12800275     	mov	w21, #-0x14             // =-20
   1d060: aa1303e0     	mov	x0, x19
   1d064: 940001d5     	bl	0x1d7b8 <syna_dev_enable_lowpwr_gesture+0xc>
		000000000001d064:  R_AARCH64_CALL26	syna_dev_disconnect
   1d068: f9423260     	ldr	x0, [x19, #0x460]
   1d06c: 910aa274     	add	x20, x19, #0x2a8
   1d070: 94000000     	bl	0x1d070 <syna_dev_probe+0x384>
		000000000001d070:  R_AARCH64_CALL26	kfree
   1d074: 394ba262     	ldrb	w2, [x19, #0x2e8]
   1d078: 35000ca2     	cbnz	w2, 0x1d20c <syna_dev_probe+0x520>
   1d07c: f9400294     	ldr	x20, [x20]
   1d080: 94000000     	bl	0x1d080 <syna_dev_probe+0x394>
		000000000001d080:  R_AARCH64_CALL26	syna_request_managed_device
   1d084: b4000d00     	cbz	x0, 0x1d224 <syna_dev_probe+0x538>
   1d088: b4000074     	cbz	x20, 0x1d094 <syna_dev_probe+0x3a8>
   1d08c: aa1403e1     	mov	x1, x20
   1d090: 94000000     	bl	0x1d090 <syna_dev_probe+0x3a4>
		000000000001d090:  R_AARCH64_CALL26	devm_kfree
   1d094: f9015a7f     	str	xzr, [x19, #0x2b0]
   1d098: 390ba27f     	strb	wzr, [x19, #0x2e8]
   1d09c: f94007e0     	ldr	x0, [sp, #0x8]
   1d0a0: 94000000     	bl	0x1d0a0 <syna_dev_probe+0x3b4>
		000000000001d0a0:  R_AARCH64_CALL26	syna_tcm_remove_device
   1d0a4: 2a1503e0     	mov	w0, w21
   1d0a8: 17ffff3c     	b	0x1cd98 <syna_dev_probe+0xac>
   1d0ac: aa1303e0     	mov	x0, x19
   1d0b0: 94000442     	bl	0x1e1b8 <syna_cdev_ioctl_raw_write+0x34c>
		000000000001d0b0:  R_AARCH64_CALL26	syna_ts_register_for_panel_events
   1d0b4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8360
   1d0b8: 91000000     	add	x0, x0, #0x0
		000000000001d0b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8360
   1d0bc: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6a6
   1d0c0: 91000021     	add	x1, x1, #0x0
		000000000001d0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6a6
   1d0c4: 94000000     	bl	0x1d0c4 <syna_dev_probe+0x3d8>
		000000000001d0c4:  R_AARCH64_CALL26	_printk
   1d0c8: 90000015     	adrp	x21, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1d0cc: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_resume
   1d0d0: 91000129     	add	x9, x9, #0x0
		000000000001d0d0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_resume
   1d0d4: f94002a8     	ldr	x8, [x21]
		000000000001d0d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d0d8: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1d0dc: 91000021     	add	x1, x1, #0x0
		000000000001d0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   1d0e0: 90000002     	adrp	x2, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0e0:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_probe_wait_base+0x1
   1d0e4: 91000042     	add	x2, x2, #0x0
		000000000001d0e4:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_probe_wait_base+0x1
   1d0e8: 91158260     	add	x0, x19, #0x560
   1d0ec: f9070509     	str	x9, [x8, #0xe08]
   1d0f0: 90000009     	adrp	x9, 0x1d000 <syna_dev_probe+0x314>
		000000000001d0f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_suspend
   1d0f4: 91000129     	add	x9, x9, #0x0
		000000000001d0f4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_suspend
   1d0f8: f906ed13     	str	x19, [x8, #0xdd8]
   1d0fc: f9070909     	str	x9, [x8, #0xe10]
   1d100: b9055a7f     	str	wzr, [x19, #0x558]
   1d104: 94000000     	bl	0x1d104 <syna_dev_probe+0x418>
		000000000001d104:  R_AARCH64_CALL26	__init_swait_queue_head
   1d108: 52800141     	mov	w1, #0xa                // =10
   1d10c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d10c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   1d110: 91000000     	add	x0, x0, #0x0
		000000000001d110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   1d114: 90000003     	adrp	x3, 0x1d000 <syna_dev_probe+0x314>
		000000000001d114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b76
   1d118: 91000063     	add	x3, x3, #0x0
		000000000001d118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b76
   1d11c: 72a000c1     	movk	w1, #0x6, lsl #16
   1d120: 52800022     	mov	w2, #0x1                // =1
   1d124: 3915e27f     	strb	wzr, [x19, #0x578]
   1d128: 52800036     	mov	w22, #0x1               // =1
   1d12c: b905227f     	str	wzr, [x19, #0x520]
   1d130: 94000000     	bl	0x1d130 <syna_dev_probe+0x444>
		000000000001d130:  R_AARCH64_CALL26	alloc_workqueue
   1d134: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   1d138: f902a660     	str	x0, [x19, #0x548]
   1d13c: f9029668     	str	x8, [x19, #0x528]
   1d140: 9114c268     	add	x8, x19, #0x530
   1d144: f9029a68     	str	x8, [x19, #0x530]
   1d148: f9029e68     	str	x8, [x19, #0x538]
   1d14c: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x314>
		000000000001d14c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_helper_work
   1d150: 91000108     	add	x8, x8, #0x0
		000000000001d150:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_helper_work
   1d154: f902a268     	str	x8, [x19, #0x540]
   1d158: b21f03e8     	mov	x8, #0x200000002        // =8589934594
   1d15c: f9030268     	str	x8, [x19, #0x600]
   1d160: 52800048     	mov	w8, #0x2                // =2
   1d164: b9060e68     	str	w8, [x19, #0x60c]
   1d168: d2800028     	mov	x8, #0x1                // =1
   1d16c: f2c00048     	movk	x8, #0x2, lsl #32
   1d170: f902da7f     	str	xzr, [x19, #0x5b0]
   1d174: b905ba7f     	str	wzr, [x19, #0x5b8]
   1d178: b905c67f     	str	wzr, [x19, #0x5c4]
   1d17c: b905d67f     	str	wzr, [x19, #0x5d4]
   1d180: b905de7f     	str	wzr, [x19, #0x5dc]
   1d184: f902fe68     	str	x8, [x19, #0x5f8]
   1d188: f902f67f     	str	xzr, [x19, #0x5e8]
   1d18c: f902fa7f     	str	xzr, [x19, #0x5f0]
   1d190: 94000000     	bl	0x1d190 <syna_dev_probe+0x4a4>
		000000000001d190:  R_AARCH64_CALL26	zte_get_boot_mode
   1d194: 90000014     	adrp	x20, 0x1d000 <syna_dev_probe+0x314>
		000000000001d194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1d198: 91000294     	add	x20, x20, #0x0
		000000000001d198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1d19c: 2a0003e2     	mov	w2, w0
   1d1a0: b9061a60     	str	w0, [x19, #0x618]
   1d1a4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1e
   1d1a8: 91000000     	add	x0, x0, #0x0
		000000000001d1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1e
   1d1ac: aa1403e1     	mov	x1, x20
   1d1b0: 94000000     	bl	0x1d1b0 <syna_dev_probe+0x4c4>
		000000000001d1b0:  R_AARCH64_CALL26	_printk
   1d1b4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d1b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a
   1d1b8: 91000000     	add	x0, x0, #0x0
		000000000001d1b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a
   1d1bc: 90000002     	adrp	x2, 0x1d000 <syna_dev_probe+0x314>
		000000000001d1bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1d1c0: 91000042     	add	x2, x2, #0x0
		000000000001d1c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1d1c4: 90000004     	adrp	x4, 0x1d000 <syna_dev_probe+0x314>
		000000000001d1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82a0
   1d1c8: 91000084     	add	x4, x4, #0x0
		000000000001d1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82a0
   1d1cc: aa1403e1     	mov	x1, x20
   1d1d0: 52800023     	mov	w3, #0x1                // =1
   1d1d4: 94000000     	bl	0x1d1d4 <syna_dev_probe+0x4e8>
		000000000001d1d4:  R_AARCH64_CALL26	_printk
   1d1d8: f94002a8     	ldr	x8, [x21]
		000000000001d1d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d1dc: 91162260     	add	x0, x19, #0x588
   1d1e0: 39160e76     	strb	w22, [x19, #0x583]
   1d1e4: 39007516     	strb	w22, [x8, #0x1d]
   1d1e8: 39111916     	strb	w22, [x8, #0x446]
   1d1ec: 94000000     	bl	0x1d1ec <syna_dev_probe+0x500>
		000000000001d1ec:  R_AARCH64_CALL26	completion_done
   1d1f0: 2a0003e8     	mov	w8, w0
   1d1f4: 2a1f03e0     	mov	w0, wzr
   1d1f8: 3707dd08     	tbnz	w8, #0x0, 0x1cd98 <syna_dev_probe+0xac>
   1d1fc: 91162260     	add	x0, x19, #0x588
   1d200: 94000000     	bl	0x1d200 <syna_dev_probe+0x514>
		000000000001d200:  R_AARCH64_CALL26	complete
   1d204: 2a1f03e0     	mov	w0, wzr
   1d208: 17fffee4     	b	0x1cd98 <syna_dev_probe+0xac>
   1d20c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d20c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1d210: 91000000     	add	x0, x0, #0x0
		000000000001d210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1d214: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1d218: 91000021     	add	x1, x1, #0x0
		000000000001d218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1d21c: 94000000     	bl	0x1d21c <syna_dev_probe+0x530>
		000000000001d21c:  R_AARCH64_CALL26	_printk
   1d220: 17ffff97     	b	0x1d07c <syna_dev_probe+0x390>
   1d224: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x314>
		000000000001d224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1d228: 91000000     	add	x0, x0, #0x0
		000000000001d228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1d22c: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x314>
		000000000001d22c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1d230: 91000021     	add	x1, x1, #0x0
		000000000001d230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1d234: 94000000     	bl	0x1d234 <syna_dev_probe+0x548>
		000000000001d234:  R_AARCH64_CALL26	_printk
   1d238: 17ffff97     	b	0x1d094 <syna_dev_probe+0x3a8>
   1d23c: 94000000     	bl	0x1d23c <syna_dev_probe+0x550>
		000000000001d23c:  R_AARCH64_CALL26	__stack_chk_fail
   1d240: 52840000     	mov	w0, #0x2000             // =8192
   1d244: d5384115     	mrs	x21, SP_EL0
   1d248: f9402ab6     	ldr	x22, [x21, #0x50]
   1d24c: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x314>
		000000000001d24c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xb48
   1d250: 91000108     	add	x8, x8, #0x0
		000000000001d250:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xb48
   1d254: 72a00060     	movk	w0, #0x3, lsl #16
   1d258: 52819801     	mov	w1, #0xcc0              // =3264
   1d25c: f9002aa8     	str	x8, [x21, #0x50]
   1d260: 94000000     	bl	0x1d260 <syna_dev_probe+0x574>
		000000000001d260:  R_AARCH64_CALL26	__kmalloc_large_noprof
   1d264: f9002ab6     	str	x22, [x21, #0x50]
   1d268: 17ffff35     	b	0x1cf3c <syna_dev_probe+0x250>
