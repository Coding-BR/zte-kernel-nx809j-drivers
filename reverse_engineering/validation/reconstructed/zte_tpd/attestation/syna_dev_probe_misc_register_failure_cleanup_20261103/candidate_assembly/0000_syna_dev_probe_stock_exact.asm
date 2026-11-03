
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ec58 <syna_dev_probe_stock_exact>:
   1ec58: d503233f     	paciasp
   1ec5c: d101c3ff     	sub	sp, sp, #0x70
   1ec60: a9047bfd     	stp	x29, x30, [sp, #0x40]
   1ec64: a90557f6     	stp	x22, x21, [sp, #0x50]
   1ec68: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1ec6c: 910103fd     	add	x29, sp, #0x40
   1ec70: d5384108     	mrs	x8, SP_EL0
   1ec74: aa0003f4     	mov	x20, x0
   1ec78: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ec78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a4
   1ec7c: 91000000     	add	x0, x0, #0x0
		000000000001ec7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a4
   1ec80: f9438908     	ldr	x8, [x8, #0x710]
   1ec84: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ec84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ec88: 91000021     	add	x1, x1, #0x0
		000000000001ec88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ec8c: f81f83a8     	stur	x8, [x29, #-0x8]
   1ec90: f90007ff     	str	xzr, [sp, #0x8]
   1ec94: 94000000     	bl	0x1ec94 <syna_dev_probe_stock_exact+0x3c>
		000000000001ec94:  R_AARCH64_CALL26	_printk
   1ec98: f9405295     	ldr	x21, [x20, #0xa0]
   1ec9c: b5000115     	cbnz	x21, 0x1ecbc <syna_dev_probe_stock_exact+0x64>
   1eca0: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cea
   1eca4: 91000000     	add	x0, x0, #0x0
		000000000001eca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cea
   1eca8: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ecac: 91000021     	add	x1, x1, #0x0
		000000000001ecac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ecb0: 94000000     	bl	0x1ecb0 <syna_dev_probe_stock_exact+0x58>
		000000000001ecb0:  R_AARCH64_CALL26	_printk
   1ecb4: 128002a0     	mov	w0, #-0x16              // =-22
   1ecb8: 14000013     	b	0x1ed04 <syna_dev_probe_stock_exact+0xac>
   1ecbc: 94000000     	bl	0x1ecbc <syna_dev_probe_stock_exact+0x64>
		000000000001ecbc:  R_AARCH64_CALL26	syna_request_managed_device
   1ecc0: b50000e0     	cbnz	x0, 0x1ecdc <syna_dev_probe_stock_exact+0x84>
   1ecc4: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ecc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1ecc8: 91000000     	add	x0, x0, #0x0
		000000000001ecc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1eccc: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1ecd0: 91000021     	add	x1, x1, #0x0
		000000000001ecd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   1ecd4: 94000000     	bl	0x1ecd4 <syna_dev_probe_stock_exact+0x7c>
		000000000001ecd4:  R_AARCH64_CALL26	_printk
   1ecd8: 14000005     	b	0x1ecec <syna_dev_probe_stock_exact+0x94>
   1ecdc: 5280da01     	mov	w1, #0x6d0              // =1744
   1ece0: 5281b802     	mov	w2, #0xdc0              // =3520
   1ece4: 94000000     	bl	0x1ece4 <syna_dev_probe_stock_exact+0x8c>
		000000000001ece4:  R_AARCH64_CALL26	devm_kmalloc
   1ece8: b5000240     	cbnz	x0, 0x1ed30 <syna_dev_probe_stock_exact+0xd8>
   1ecec: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ecec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafa4
   1ecf0: 91000000     	add	x0, x0, #0x0
		000000000001ecf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafa4
   1ecf4: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ecf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ecf8: 91000021     	add	x1, x1, #0x0
		000000000001ecf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ecfc: 94000000     	bl	0x1ecfc <syna_dev_probe_stock_exact+0xa4>
		000000000001ecfc:  R_AARCH64_CALL26	_printk
   1ed00: 12800160     	mov	w0, #-0xc               // =-12
   1ed04: d5384108     	mrs	x8, SP_EL0
   1ed08: f9438908     	ldr	x8, [x8, #0x710]
   1ed0c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1ed10: eb09011f     	cmp	x8, x9
   1ed14: 540024a1     	b.ne	0x1f1a8 <syna_dev_probe_stock_exact+0x550>
   1ed18: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1ed1c: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1ed20: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   1ed24: 9101c3ff     	add	sp, sp, #0x70
   1ed28: d50323bf     	autiasp
   1ed2c: d65f03c0     	ret
   1ed30: aa0003f3     	mov	x19, x0
   1ed34: b905881f     	str	wzr, [x0, #0x588]
   1ed38: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ed38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1ed3c: 91000021     	add	x1, x1, #0x0
		000000000001ed3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   1ed40: 90000002     	adrp	x2, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ed40:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_probe_wait_base+0x1
   1ed44: 91000042     	add	x2, x2, #0x0
		000000000001ed44:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_probe_wait_base+0x1
   1ed48: 91164000     	add	x0, x0, #0x590
   1ed4c: 94000000     	bl	0x1ed4c <syna_dev_probe_stock_exact+0xf4>
		000000000001ed4c:  R_AARCH64_CALL26	__init_swait_queue_head
   1ed50: 910023e0     	add	x0, sp, #0x8
   1ed54: 910022a1     	add	x1, x21, #0x8
   1ed58: aa1303e2     	mov	x2, x19
   1ed5c: 94000000     	bl	0x1ed5c <syna_dev_probe_stock_exact+0x104>
		000000000001ed5c:  R_AARCH64_CALL26	syna_tcm_allocate_device
   1ed60: 2a0003e8     	mov	w8, w0
   1ed64: 37f80420     	tbnz	w0, #0x1f, 0x1ede8 <syna_dev_probe_stock_exact+0x190>
   1ed68: f94007e0     	ldr	x0, [sp, #0x8]
   1ed6c: b40003e0     	cbz	x0, 0x1ede8 <syna_dev_probe_stock_exact+0x190>
   1ed70: a9005260     	stp	x0, x20, [x19]
   1ed74: 910043e1     	add	x1, sp, #0x10
   1ed78: 2a1f03e2     	mov	w2, wzr
   1ed7c: f9013a75     	str	x21, [x19, #0x270]
   1ed80: 529fffe3     	mov	w3, #0xffff             // =65535
   1ed84: f940aea8     	ldr	x8, [x21, #0x158]
   1ed88: b94162a9     	ldr	w9, [x21, #0x160]
   1ed8c: b94172aa     	ldr	w10, [x21, #0x170]
   1ed90: f9000be8     	str	x8, [sp, #0x10]
   1ed94: b9001be9     	str	w9, [sp, #0x18]
   1ed98: b9416aa9     	ldr	w9, [x21, #0x168]
   1ed9c: b94166a8     	ldr	w8, [x21, #0x164]
   1eda0: b90027ea     	str	w10, [sp, #0x24]
   1eda4: b940faaa     	ldr	w10, [x21, #0xf8]
   1eda8: 2903a7e8     	stp	w8, w9, [sp, #0x1c]
   1edac: b9416ea9     	ldr	w9, [x21, #0x16c]
   1edb0: b94176a8     	ldr	w8, [x21, #0x174]
   1edb4: b9002be8     	str	w8, [sp, #0x28]
   1edb8: b9417aa8     	ldr	w8, [x21, #0x178]
   1edbc: b90037ea     	str	w10, [sp, #0x34]
   1edc0: 2905a7e8     	stp	w8, w9, [sp, #0x2c]
   1edc4: 94000000     	bl	0x1edc4 <syna_dev_probe_stock_exact+0x16c>
		000000000001edc4:  R_AARCH64_CALL26	syna_tcm_config_timings
   1edc8: 36f80200     	tbz	w0, #0x1f, 0x1ee08 <syna_dev_probe_stock_exact+0x1b0>
   1edcc: 2a0003f5     	mov	w21, w0
   1edd0: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001edd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120
   1edd4: 91000000     	add	x0, x0, #0x0
		000000000001edd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120
   1edd8: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001edd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1eddc: 91000021     	add	x1, x1, #0x0
		000000000001eddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ede0: 94000000     	bl	0x1ede0 <syna_dev_probe_stock_exact+0x188>
		000000000001ede0:  R_AARCH64_CALL26	_printk
   1ede4: 14000089     	b	0x1f008 <syna_dev_probe_stock_exact+0x3b0>
   1ede8: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ede8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bc2
   1edec: 91000000     	add	x0, x0, #0x0
		000000000001edec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bc2
   1edf0: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001edf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1edf4: 91000021     	add	x1, x1, #0x0
		000000000001edf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1edf8: 2a0803f3     	mov	w19, w8
   1edfc: 94000000     	bl	0x1edfc <syna_dev_probe_stock_exact+0x1a4>
		000000000001edfc:  R_AARCH64_CALL26	_printk
   1ee00: 2a1303e0     	mov	w0, w19
   1ee04: 17ffffc0     	b	0x1ed04 <syna_dev_probe_stock_exact+0xac>
   1ee08: 90000015     	adrp	x21, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   1ee0c: 910002b5     	add	x21, x21, #0x0
		000000000001ee0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   1ee10: 90000016     	adrp	x22, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f7e
   1ee14: 910002d6     	add	x22, x22, #0x0
		000000000001ee14:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f7e
   1ee18: 910ae260     	add	x0, x19, #0x2b8
   1ee1c: aa1503e1     	mov	x1, x21
   1ee20: aa1603e2     	mov	x2, x22
   1ee24: 390ba27f     	strb	wzr, [x19, #0x2e8]
   1ee28: f901567f     	str	xzr, [x19, #0x2a8]
   1ee2c: f9015a7f     	str	xzr, [x19, #0x2b0]
   1ee30: 94000000     	bl	0x1ee30 <syna_dev_probe_stock_exact+0x1d8>
		000000000001ee30:  R_AARCH64_CALL26	__mutex_init
   1ee34: 9109e260     	add	x0, x19, #0x278
   1ee38: aa1503e1     	mov	x1, x21
   1ee3c: aa1603e2     	mov	x2, x22
   1ee40: 94000000     	bl	0x1ee40 <syna_dev_probe_stock_exact+0x1e8>
		000000000001ee40:  R_AARCH64_CALL26	__mutex_init
   1ee44: 91160668     	add	x8, x19, #0x581
   1ee48: 52800029     	mov	w9, #0x1                // =1
   1ee4c: 390bd27f     	strb	wzr, [x19, #0x2f4]
   1ee50: 79000109     	strh	w9, [x8]
   1ee54: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee54:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_connect
   1ee58: 91000108     	add	x8, x8, #0x0
		000000000001ee58:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_connect
   1ee5c: f9035668     	str	x8, [x19, #0x6a8]
   1ee60: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee60:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_disconnect
   1ee64: 91000108     	add	x8, x8, #0x0
		000000000001ee64:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_disconnect
   1ee68: f9035a68     	str	x8, [x19, #0x6b0]
   1ee6c: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee6c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_set_up_app_fw
   1ee70: 91000108     	add	x8, x8, #0x0
		000000000001ee70:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_set_up_app_fw
   1ee74: f9035e68     	str	x8, [x19, #0x6b8]
   1ee78: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee78:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_resume
   1ee7c: 91000108     	add	x8, x8, #0x0
		000000000001ee7c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_resume
   1ee80: f9036268     	str	x8, [x19, #0x6c0]
   1ee84: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ee84:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_suspend
   1ee88: 91000108     	add	x8, x8, #0x0
		000000000001ee88:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_suspend
   1ee8c: b9057e7f     	str	wzr, [x19, #0x57c]
   1ee90: f9036668     	str	x8, [x19, #0x6c8]
   1ee94: d503201f     	nop
   1ee98: 52840000     	mov	w0, #0x2000             // =8192
   1ee9c: 52819801     	mov	w1, #0xcc0              // =3264
   1eea0: 72a00060     	movk	w0, #0x3, lsl #16
   1eea4: 94000000     	bl	0x1eea4 <syna_dev_probe_stock_exact+0x24c>
		000000000001eea4:  R_AARCH64_CALL26	__kmalloc_large_noprof
   1eea8: f9023260     	str	x0, [x19, #0x460]
   1eeac: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eeac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
   1eeb0: 91000021     	add	x1, x1, #0x0
		000000000001eeb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
   1eeb4: 90000002     	adrp	x2, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eeb4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f7c
   1eeb8: 91000042     	add	x2, x2, #0x0
		000000000001eeb8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f7c
   1eebc: 9111c260     	add	x0, x19, #0x470
   1eec0: 94000000     	bl	0x1eec0 <syna_dev_probe_stock_exact+0x268>
		000000000001eec0:  R_AARCH64_CALL26	__mutex_init
   1eec4: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32c4
   1eec8: 91000021     	add	x1, x1, #0x0
		000000000001eec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32c4
   1eecc: 90000002     	adrp	x2, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eecc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3f7d
   1eed0: 91000042     	add	x2, x2, #0x0
		000000000001eed0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3f7d
   1eed4: 91112260     	add	x0, x19, #0x448
   1eed8: 94000000     	bl	0x1eed8 <syna_dev_probe_stock_exact+0x280>
		000000000001eed8:  R_AARCH64_CALL26	__init_waitqueue_head
   1eedc: 52801fe8     	mov	w8, #0xff               // =255
   1eee0: b9046a7f     	str	wzr, [x19, #0x468]
   1eee4: 91128260     	add	x0, x19, #0x4a0
   1eee8: b904a268     	str	w8, [x19, #0x4a0]
   1eeec: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eeec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a2
   1eef0: 91000108     	add	x8, x8, #0x0
		000000000001eef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a2
   1eef4: f9025668     	str	x8, [x19, #0x4a8]
   1eef8: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001eef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1a830
   1eefc: 91000108     	add	x8, x8, #0x0
		000000000001eefc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1a830
   1ef00: f9025a68     	str	x8, [x19, #0x4b0]
   1ef04: f902667f     	str	xzr, [x19, #0x4c8]
   1ef08: 94000000     	bl	0x1ef08 <syna_dev_probe_stock_exact+0x2b0>
		000000000001ef08:  R_AARCH64_CALL26	syna_dev_probe_misc_register
   1ef0c: 35000240     	cbnz	w0, 0x1ef54 <syna_dev_probe_stock_exact+0x2fc>
   1ef10: 91004280     	add	x0, x20, #0x10
   1ef14: 52800021     	mov	w1, #0x1                // =1
   1ef18: f902d67f     	str	xzr, [x19, #0x5a8]
   1ef1c: f9005693     	str	x19, [x20, #0xa8]
   1ef20: 94000000     	bl	0x1ef20 <syna_dev_probe_stock_exact+0x2c8>
		000000000001ef20:  R_AARCH64_CALL26	device_set_wakeup_capable
   1ef24: 91004280     	add	x0, x20, #0x10
   1ef28: 94000000     	bl	0x1ef28 <syna_dev_probe_stock_exact+0x2d0>
		000000000001ef28:  R_AARCH64_CALL26	device_wakeup_enable
   1ef2c: aa1303e0     	mov	x0, x19
   1ef30: 94000101     	bl	0x1f334 <syna_dev_process_touch_report_stock_exact+0x158>
		000000000001ef30:  R_AARCH64_CALL26	syna_dev_connect
   1ef34: 36f801e0     	tbz	w0, #0x1f, 0x1ef70 <syna_dev_probe_stock_exact+0x318>
   1ef38: 2a0003f5     	mov	w21, w0
   1ef3c: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ef3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7056
   1ef40: 91000000     	add	x0, x0, #0x0
		000000000001ef40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7056
   1ef44: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ef44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ef48: 91000021     	add	x1, x1, #0x0
		000000000001ef48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ef4c: 94000000     	bl	0x1ef4c <syna_dev_probe_stock_exact+0x2f4>
		000000000001ef4c:  R_AARCH64_CALL26	_printk
   1ef50: 14000021     	b	0x1efd4 <syna_dev_probe_stock_exact+0x37c>
   1ef54: 90000008     	adrp	x8, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ef54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774c
   1ef58: 91000108     	add	x8, x8, #0x0
		000000000001ef58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774c
   1ef5c: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ef5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ef60: 91000021     	add	x1, x1, #0x0
		000000000001ef60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ef64: 2a0003f3     	mov	w19, w0
   1ef68: aa0803e0     	mov	x0, x8
   1ef6c: 17ffffa4     	b	0x1edfc <syna_dev_probe_stock_exact+0x1a4>
   1ef70: aa1303e0     	mov	x0, x19
   1ef74: aa1403e1     	mov	x1, x20
   1ef78: 94000000     	bl	0x1ef78 <syna_dev_probe_stock_exact+0x320>
		000000000001ef78:  R_AARCH64_CALL26	syna_cdev_create
   1ef7c: 36f80100     	tbz	w0, #0x1f, 0x1ef9c <syna_dev_probe_stock_exact+0x344>
   1ef80: 2a0003f5     	mov	w21, w0
   1ef84: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ef84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x734
   1ef88: 91000000     	add	x0, x0, #0x0
		000000000001ef88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x734
   1ef8c: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001ef8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1ef90: 91000021     	add	x1, x1, #0x0
		000000000001ef90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1ef94: 94000000     	bl	0x1ef94 <syna_dev_probe_stock_exact+0x33c>
		000000000001ef94:  R_AARCH64_CALL26	_printk
   1ef98: 1400000d     	b	0x1efcc <syna_dev_probe_stock_exact+0x374>
   1ef9c: aa1303e0     	mov	x0, x19
   1efa0: aa1403e1     	mov	x1, x20
   1efa4: 94000000     	bl	0x1efa4 <syna_dev_probe_stock_exact+0x34c>
		000000000001efa4:  R_AARCH64_CALL26	syna_sysfs_create_dir
   1efa8: 36f80380     	tbz	w0, #0x1f, 0x1f018 <syna_dev_probe_stock_exact+0x3c0>
   1efac: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001efac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x764
   1efb0: 91000000     	add	x0, x0, #0x0
		000000000001efb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x764
   1efb4: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x1d0>
		000000000001efb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1efb8: 91000021     	add	x1, x1, #0x0
		000000000001efb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1efbc: 94000000     	bl	0x1efbc <syna_dev_probe_stock_exact+0x364>
		000000000001efbc:  R_AARCH64_CALL26	_printk
   1efc0: aa1303e0     	mov	x0, x19
   1efc4: 94000000     	bl	0x1efc4 <syna_dev_probe_stock_exact+0x36c>
		000000000001efc4:  R_AARCH64_CALL26	syna_cdev_remove
   1efc8: 12800275     	mov	w21, #-0x14             // =-20
   1efcc: aa1303e0     	mov	x0, x19
   1efd0: 940001d5     	bl	0x1f724 <syna_dev_enable_lowpwr_gesture+0xc>
		000000000001efd0:  R_AARCH64_CALL26	syna_dev_disconnect
   1efd4: f9423260     	ldr	x0, [x19, #0x460]
   1efd8: 910aa274     	add	x20, x19, #0x2a8
   1efdc: 94000000     	bl	0x1efdc <syna_dev_probe_stock_exact+0x384>
		000000000001efdc:  R_AARCH64_CALL26	kfree
   1efe0: 394ba262     	ldrb	w2, [x19, #0x2e8]
   1efe4: 35000ca2     	cbnz	w2, 0x1f178 <syna_dev_probe_stock_exact+0x520>
   1efe8: f9400294     	ldr	x20, [x20]
   1efec: 94000000     	bl	0x1efec <syna_dev_probe_stock_exact+0x394>
		000000000001efec:  R_AARCH64_CALL26	syna_request_managed_device
   1eff0: b4000d00     	cbz	x0, 0x1f190 <syna_dev_probe_stock_exact+0x538>
   1eff4: b4000074     	cbz	x20, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
   1eff8: aa1403e1     	mov	x1, x20
   1effc: 94000000     	bl	0x1effc <syna_dev_probe_stock_exact+0x3a4>
		000000000001effc:  R_AARCH64_CALL26	devm_kfree
   1f000: f9015a7f     	str	xzr, [x19, #0x2b0]
   1f004: 390ba27f     	strb	wzr, [x19, #0x2e8]
   1f008: f94007e0     	ldr	x0, [sp, #0x8]
   1f00c: 94000000     	bl	0x1f00c <syna_dev_probe_stock_exact+0x3b4>
		000000000001f00c:  R_AARCH64_CALL26	syna_tcm_remove_device
   1f010: 2a1503e0     	mov	w0, w21
   1f014: 17ffff3c     	b	0x1ed04 <syna_dev_probe_stock_exact+0xac>
   1f018: aa1303e0     	mov	x0, x19
   1f01c: 94000442     	bl	0x20124 <syna_cdev_ioctl_raw_write+0x34c>
		000000000001f01c:  R_AARCH64_CALL26	syna_ts_register_for_panel_events
   1f020: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8360
   1f024: 91000000     	add	x0, x0, #0x0
		000000000001f024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8360
   1f028: 90000001     	adrp	x1, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6a6
   1f02c: 91000021     	add	x1, x1, #0x0
		000000000001f02c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6a6
   1f030: 94000000     	bl	0x1f030 <syna_dev_probe_stock_exact+0x3d8>
		000000000001f030:  R_AARCH64_CALL26	_printk
   1f034: 90000015     	adrp	x21, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f034:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f038: 90000009     	adrp	x9, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f038:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_resume
   1f03c: 91000129     	add	x9, x9, #0x0
		000000000001f03c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_resume
   1f040: f94002a8     	ldr	x8, [x21]
		000000000001f040:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f044: 90000001     	adrp	x1, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8a
   1f048: 91000021     	add	x1, x1, #0x0
		000000000001f048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8a
   1f04c: 90000002     	adrp	x2, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f04c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_probe_wait_base+0x1
   1f050: 91000042     	add	x2, x2, #0x0
		000000000001f050:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_probe_wait_base+0x1
   1f054: 91158260     	add	x0, x19, #0x560
   1f058: f9070509     	str	x9, [x8, #0xe08]
   1f05c: 90000009     	adrp	x9, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f05c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_suspend
   1f060: 91000129     	add	x9, x9, #0x0
		000000000001f060:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_suspend
   1f064: f906ed13     	str	x19, [x8, #0xdd8]
   1f068: f9070909     	str	x9, [x8, #0xe10]
   1f06c: b9055a7f     	str	wzr, [x19, #0x558]
   1f070: 94000000     	bl	0x1f070 <syna_dev_probe_stock_exact+0x418>
		000000000001f070:  R_AARCH64_CALL26	__init_swait_queue_head
   1f074: 52800141     	mov	w1, #0xa                // =10
   1f078: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   1f07c: 91000000     	add	x0, x0, #0x0
		000000000001f07c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   1f080: 90000003     	adrp	x3, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b76
   1f084: 91000063     	add	x3, x3, #0x0
		000000000001f084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b76
   1f088: 72a000c1     	movk	w1, #0x6, lsl #16
   1f08c: 52800022     	mov	w2, #0x1                // =1
   1f090: 3915e27f     	strb	wzr, [x19, #0x578]
   1f094: 52800036     	mov	w22, #0x1               // =1
   1f098: b905227f     	str	wzr, [x19, #0x520]
   1f09c: 94000000     	bl	0x1f09c <syna_dev_probe_stock_exact+0x444>
		000000000001f09c:  R_AARCH64_CALL26	alloc_workqueue
   1f0a0: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   1f0a4: f902a660     	str	x0, [x19, #0x548]
   1f0a8: f9029668     	str	x8, [x19, #0x528]
   1f0ac: 9114c268     	add	x8, x19, #0x530
   1f0b0: f9029a68     	str	x8, [x19, #0x530]
   1f0b4: f9029e68     	str	x8, [x19, #0x538]
   1f0b8: 90000008     	adrp	x8, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f0b8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_helper_work
   1f0bc: 91000108     	add	x8, x8, #0x0
		000000000001f0bc:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_helper_work
   1f0c0: f902a268     	str	x8, [x19, #0x540]
   1f0c4: b21f03e8     	mov	x8, #0x200000002        // =8589934594
   1f0c8: f9030268     	str	x8, [x19, #0x600]
   1f0cc: 52800048     	mov	w8, #0x2                // =2
   1f0d0: b9060e68     	str	w8, [x19, #0x60c]
   1f0d4: d2800028     	mov	x8, #0x1                // =1
   1f0d8: f2c00048     	movk	x8, #0x2, lsl #32
   1f0dc: f902da7f     	str	xzr, [x19, #0x5b0]
   1f0e0: b905ba7f     	str	wzr, [x19, #0x5b8]
   1f0e4: b905c67f     	str	wzr, [x19, #0x5c4]
   1f0e8: b905d67f     	str	wzr, [x19, #0x5d4]
   1f0ec: b905de7f     	str	wzr, [x19, #0x5dc]
   1f0f0: f902fe68     	str	x8, [x19, #0x5f8]
   1f0f4: f902f67f     	str	xzr, [x19, #0x5e8]
   1f0f8: f902fa7f     	str	xzr, [x19, #0x5f0]
   1f0fc: 94000000     	bl	0x1f0fc <syna_dev_probe_stock_exact+0x4a4>
		000000000001f0fc:  R_AARCH64_CALL26	zte_get_boot_mode
   1f100: 90000014     	adrp	x20, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f2
   1f104: 91000294     	add	x20, x20, #0x0
		000000000001f104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f2
   1f108: 2a0003e2     	mov	w2, w0
   1f10c: b9061a60     	str	w0, [x19, #0x618]
   1f110: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1e
   1f114: 91000000     	add	x0, x0, #0x0
		000000000001f114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1e
   1f118: aa1403e1     	mov	x1, x20
   1f11c: 94000000     	bl	0x1f11c <syna_dev_probe_stock_exact+0x4c4>
		000000000001f11c:  R_AARCH64_CALL26	_printk
   1f120: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a
   1f124: 91000000     	add	x0, x0, #0x0
		000000000001f124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a
   1f128: 90000002     	adrp	x2, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1f12c: 91000042     	add	x2, x2, #0x0
		000000000001f12c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1f130: 90000004     	adrp	x4, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x82a0
   1f134: 91000084     	add	x4, x4, #0x0
		000000000001f134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x82a0
   1f138: aa1403e1     	mov	x1, x20
   1f13c: 52800023     	mov	w3, #0x1                // =1
   1f140: 94000000     	bl	0x1f140 <syna_dev_probe_stock_exact+0x4e8>
		000000000001f140:  R_AARCH64_CALL26	_printk
   1f144: f94002a8     	ldr	x8, [x21]
		000000000001f144:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f148: 91162260     	add	x0, x19, #0x588
   1f14c: 39160e76     	strb	w22, [x19, #0x583]
   1f150: 39007516     	strb	w22, [x8, #0x1d]
   1f154: 39111916     	strb	w22, [x8, #0x446]
   1f158: 94000000     	bl	0x1f158 <syna_dev_probe_stock_exact+0x500>
		000000000001f158:  R_AARCH64_CALL26	completion_done
   1f15c: 2a0003e8     	mov	w8, w0
   1f160: 2a1f03e0     	mov	w0, wzr
   1f164: 3707dd08     	tbnz	w8, #0x0, 0x1ed04 <syna_dev_probe_stock_exact+0xac>
   1f168: 91162260     	add	x0, x19, #0x588
   1f16c: 94000000     	bl	0x1f16c <syna_dev_probe_stock_exact+0x514>
		000000000001f16c:  R_AARCH64_CALL26	complete
   1f170: 2a1f03e0     	mov	w0, wzr
   1f174: 17fffee4     	b	0x1ed04 <syna_dev_probe_stock_exact+0xac>
   1f178: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1f17c: 91000000     	add	x0, x0, #0x0
		000000000001f17c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1f180: 90000001     	adrp	x1, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1f184: 91000021     	add	x1, x1, #0x0
		000000000001f184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1f188: 94000000     	bl	0x1f188 <syna_dev_probe_stock_exact+0x530>
		000000000001f188:  R_AARCH64_CALL26	_printk
   1f18c: 17ffff97     	b	0x1efe8 <syna_dev_probe_stock_exact+0x390>
   1f190: 90000000     	adrp	x0, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1f194: 91000000     	add	x0, x0, #0x0
		000000000001f194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1f198: 90000001     	adrp	x1, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1f19c: 91000021     	add	x1, x1, #0x0
		000000000001f19c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1f1a0: 94000000     	bl	0x1f1a0 <syna_dev_probe_stock_exact+0x548>
		000000000001f1a0:  R_AARCH64_CALL26	_printk
   1f1a4: 17ffff97     	b	0x1f000 <syna_dev_probe_stock_exact+0x3a8>
   1f1a8: 94000000     	bl	0x1f1a8 <syna_dev_probe_stock_exact+0x550>
		000000000001f1a8:  R_AARCH64_CALL26	__stack_chk_fail
   1f1ac: 52840000     	mov	w0, #0x2000             // =8192
   1f1b0: d5384115     	mrs	x21, SP_EL0
   1f1b4: f9402ab6     	ldr	x22, [x21, #0x50]
   1f1b8: 90000008     	adrp	x8, 0x1f000 <syna_dev_probe_stock_exact+0x3a8>
		000000000001f1b8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xb98
   1f1bc: 91000108     	add	x8, x8, #0x0
		000000000001f1bc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xb98
   1f1c0: 72a00060     	movk	w0, #0x3, lsl #16
   1f1c4: 52819801     	mov	w1, #0xcc0              // =3264
   1f1c8: f9002aa8     	str	x8, [x21, #0x50]
   1f1cc: 94000000     	bl	0x1f1cc <syna_dev_probe_stock_exact+0x574>
		000000000001f1cc:  R_AARCH64_CALL26	__kmalloc_large_noprof
   1f1d0: f9002ab6     	str	x22, [x21, #0x50]
   1f1d4: 17ffff35     	b	0x1eea8 <syna_dev_probe_stock_exact+0x250>
