
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b7b0 <syna_dev_probe>:
    b7b0: d503233f     	paciasp
    b7b4: d101c3ff     	sub	sp, sp, #0x70
    b7b8: a9047bfd     	stp	x29, x30, [sp, #0x40]
    b7bc: a90557f6     	stp	x22, x21, [sp, #0x50]
    b7c0: a9064ff4     	stp	x20, x19, [sp, #0x60]
    b7c4: 910103fd     	add	x29, sp, #0x40
    b7c8: d5384108     	mrs	x8, SP_EL0
    b7cc: aa0003f4     	mov	x20, x0
    b7d0: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5178
    b7d4: 91000000     	add	x0, x0, #0x0
		000000000000b7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5178
    b7d8: f9438908     	ldr	x8, [x8, #0x710]
    b7dc: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b7dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    b7e0: 91000021     	add	x1, x1, #0x0
		000000000000b7e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    b7e4: f81f83a8     	stur	x8, [x29, #-0x8]
    b7e8: f90007ff     	str	xzr, [sp, #0x8]
    b7ec: 94000000     	bl	0xb7ec <syna_dev_probe+0x3c>
		000000000000b7ec:  R_AARCH64_CALL26	_printk
    b7f0: f9405295     	ldr	x21, [x20, #0xa0]
    b7f4: b5000115     	cbnz	x21, 0xb814 <syna_dev_probe+0x64>
    b7f8: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b7f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b9e
    b7fc: 91000000     	add	x0, x0, #0x0
		000000000000b7fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b9e
    b800: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    b804: 91000021     	add	x1, x1, #0x0
		000000000000b804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    b808: 94000000     	bl	0xb808 <syna_dev_probe+0x58>
		000000000000b808:  R_AARCH64_CALL26	_printk
    b80c: 128002a0     	mov	w0, #-0x16              // =-22
    b810: 14000013     	b	0xb85c <syna_dev_probe+0xac>
    b814: 94000000     	bl	0xb814 <syna_dev_probe+0x64>
		000000000000b814:  R_AARCH64_CALL26	syna_request_managed_device
    b818: b50000e0     	cbnz	x0, 0xb834 <syna_dev_probe+0x84>
    b81c: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b81c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    b820: 91000000     	add	x0, x0, #0x0
		000000000000b820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    b824: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
    b828: 91000021     	add	x1, x1, #0x0
		000000000000b828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
    b82c: 94000000     	bl	0xb82c <syna_dev_probe+0x7c>
		000000000000b82c:  R_AARCH64_CALL26	_printk
    b830: 14000005     	b	0xb844 <syna_dev_probe+0x94>
    b834: 5280da01     	mov	w1, #0x6d0              // =1744
    b838: 5281b802     	mov	w2, #0xdc0              // =3520
    b83c: 94000000     	bl	0xb83c <syna_dev_probe+0x8c>
		000000000000b83c:  R_AARCH64_CALL26	devm_kmalloc
    b840: b5000240     	cbnz	x0, 0xb888 <syna_dev_probe+0xd8>
    b844: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacfd
    b848: 91000000     	add	x0, x0, #0x0
		000000000000b848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacfd
    b84c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b84c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    b850: 91000021     	add	x1, x1, #0x0
		000000000000b850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    b854: 94000000     	bl	0xb854 <syna_dev_probe+0xa4>
		000000000000b854:  R_AARCH64_CALL26	_printk
    b858: 12800160     	mov	w0, #-0xc               // =-12
    b85c: d5384108     	mrs	x8, SP_EL0
    b860: f9438908     	ldr	x8, [x8, #0x710]
    b864: f85f83a9     	ldur	x9, [x29, #-0x8]
    b868: eb09011f     	cmp	x8, x9
    b86c: 540024a1     	b.ne	0xbd00 <syna_dev_probe+0x550>
    b870: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    b874: a94557f6     	ldp	x22, x21, [sp, #0x50]
    b878: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    b87c: 9101c3ff     	add	sp, sp, #0x70
    b880: d50323bf     	autiasp
    b884: d65f03c0     	ret
    b888: aa0003f3     	mov	x19, x0
    b88c: b905881f     	str	wzr, [x0, #0x588]
    b890: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aeb
    b894: 91000021     	add	x1, x1, #0x0
		000000000000b894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aeb
    b898: 90000002     	adrp	x2, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b898:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7b1
    b89c: 91000042     	add	x2, x2, #0x0
		000000000000b89c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7b1
    b8a0: 91164000     	add	x0, x0, #0x590
    b8a4: 94000000     	bl	0xb8a4 <syna_dev_probe+0xf4>
		000000000000b8a4:  R_AARCH64_CALL26	__init_swait_queue_head
    b8a8: 910023e0     	add	x0, sp, #0x8
    b8ac: 910022a1     	add	x1, x21, #0x8
    b8b0: aa1303e2     	mov	x2, x19
    b8b4: 94000000     	bl	0xb8b4 <syna_dev_probe+0x104>
		000000000000b8b4:  R_AARCH64_CALL26	syna_tcm_allocate_device
    b8b8: 2a0003e8     	mov	w8, w0
    b8bc: 37f80420     	tbnz	w0, #0x1f, 0xb940 <syna_dev_probe+0x190>
    b8c0: f94007e0     	ldr	x0, [sp, #0x8]
    b8c4: b40003e0     	cbz	x0, 0xb940 <syna_dev_probe+0x190>
    b8c8: a9005260     	stp	x0, x20, [x19]
    b8cc: 910043e1     	add	x1, sp, #0x10
    b8d0: 2a1f03e2     	mov	w2, wzr
    b8d4: f9013a75     	str	x21, [x19, #0x270]
    b8d8: 529fffe3     	mov	w3, #0xffff             // =65535
    b8dc: f940aea8     	ldr	x8, [x21, #0x158]
    b8e0: b94162a9     	ldr	w9, [x21, #0x160]
    b8e4: b94172aa     	ldr	w10, [x21, #0x170]
    b8e8: f9000be8     	str	x8, [sp, #0x10]
    b8ec: b9001be9     	str	w9, [sp, #0x18]
    b8f0: b9416aa9     	ldr	w9, [x21, #0x168]
    b8f4: b94166a8     	ldr	w8, [x21, #0x164]
    b8f8: b90027ea     	str	w10, [sp, #0x24]
    b8fc: b940faaa     	ldr	w10, [x21, #0xf8]
    b900: 2903a7e8     	stp	w8, w9, [sp, #0x1c]
    b904: b9416ea9     	ldr	w9, [x21, #0x16c]
    b908: b94176a8     	ldr	w8, [x21, #0x174]
    b90c: b9002be8     	str	w8, [sp, #0x28]
    b910: b9417aa8     	ldr	w8, [x21, #0x178]
    b914: b90037ea     	str	w10, [sp, #0x34]
    b918: 2905a7e8     	stp	w8, w9, [sp, #0x2c]
    b91c: 94000000     	bl	0xb91c <syna_dev_probe+0x16c>
		000000000000b91c:  R_AARCH64_CALL26	syna_tcm_config_timings
    b920: 36f80200     	tbz	w0, #0x1f, 0xb960 <syna_dev_probe+0x1b0>
    b924: 2a0003f5     	mov	w21, w0
    b928: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11b
    b92c: 91000000     	add	x0, x0, #0x0
		000000000000b92c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11b
    b930: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    b934: 91000021     	add	x1, x1, #0x0
		000000000000b934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    b938: 94000000     	bl	0xb938 <syna_dev_probe+0x188>
		000000000000b938:  R_AARCH64_CALL26	_printk
    b93c: 14000089     	b	0xbb60 <syna_dev_probe+0x3b0>
    b940: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ab0
    b944: 91000000     	add	x0, x0, #0x0
		000000000000b944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ab0
    b948: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    b94c: 91000021     	add	x1, x1, #0x0
		000000000000b94c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    b950: 2a0803f3     	mov	w19, w8
    b954: 94000000     	bl	0xb954 <syna_dev_probe+0x1a4>
		000000000000b954:  R_AARCH64_CALL26	_printk
    b958: 2a1303e0     	mov	w0, w19
    b95c: 17ffffc0     	b	0xb85c <syna_dev_probe+0xac>
    b960: 90000015     	adrp	x21, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
    b964: 910002b5     	add	x21, x21, #0x0
		000000000000b964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
    b968: 90000016     	adrp	x22, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b968:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7ab
    b96c: 910002d6     	add	x22, x22, #0x0
		000000000000b96c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7ab
    b970: 910ae260     	add	x0, x19, #0x2b8
    b974: aa1503e1     	mov	x1, x21
    b978: aa1603e2     	mov	x2, x22
    b97c: 390ba27f     	strb	wzr, [x19, #0x2e8]
    b980: f901567f     	str	xzr, [x19, #0x2a8]
    b984: f9015a7f     	str	xzr, [x19, #0x2b0]
    b988: 94000000     	bl	0xb988 <syna_dev_probe+0x1d8>
		000000000000b988:  R_AARCH64_CALL26	__mutex_init
    b98c: 9109e260     	add	x0, x19, #0x278
    b990: aa1503e1     	mov	x1, x21
    b994: aa1603e2     	mov	x2, x22
    b998: 94000000     	bl	0xb998 <syna_dev_probe+0x1e8>
		000000000000b998:  R_AARCH64_CALL26	__mutex_init
    b99c: 91160668     	add	x8, x19, #0x581
    b9a0: 52800029     	mov	w9, #0x1                // =1
    b9a4: 390bd27f     	strb	wzr, [x19, #0x2f4]
    b9a8: 79000109     	strh	w9, [x8]
    b9ac: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b9ac:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xbe8c
    b9b0: 91000108     	add	x8, x8, #0x0
		000000000000b9b0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xbe8c
    b9b4: f9035668     	str	x8, [x19, #0x6a8]
    b9b8: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b9b8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc27c
    b9bc: 91000108     	add	x8, x8, #0x0
		000000000000b9bc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc27c
    b9c0: f9035a68     	str	x8, [x19, #0x6b0]
    b9c4: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b9c4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc408
    b9c8: 91000108     	add	x8, x8, #0x0
		000000000000b9c8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc408
    b9cc: f9035e68     	str	x8, [x19, #0x6b8]
    b9d0: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b9d0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc4e4
    b9d4: 91000108     	add	x8, x8, #0x0
		000000000000b9d4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc4e4
    b9d8: f9036268     	str	x8, [x19, #0x6c0]
    b9dc: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b9dc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xcaf4
    b9e0: 91000108     	add	x8, x8, #0x0
		000000000000b9e0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xcaf4
    b9e4: b9057e7f     	str	wzr, [x19, #0x57c]
    b9e8: f9036668     	str	x8, [x19, #0x6c8]
    b9ec: d503201f     	nop
    b9f0: 52840000     	mov	w0, #0x2000             // =8192
    b9f4: 52819801     	mov	w1, #0xcc0              // =3264
    b9f8: 72a00060     	movk	w0, #0x3, lsl #16
    b9fc: 94000000     	bl	0xb9fc <syna_dev_probe+0x24c>
		000000000000b9fc:  R_AARCH64_CALL26	__kmalloc_large_noprof
    ba00: f9023260     	str	x0, [x19, #0x460]
    ba04: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31fa
    ba08: 91000021     	add	x1, x1, #0x0
		000000000000ba08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31fa
    ba0c: 90000002     	adrp	x2, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba0c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7a9
    ba10: 91000042     	add	x2, x2, #0x0
		000000000000ba10:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7a9
    ba14: 9111c260     	add	x0, x19, #0x470
    ba18: 94000000     	bl	0xba18 <syna_dev_probe+0x268>
		000000000000ba18:  R_AARCH64_CALL26	__mutex_init
    ba1c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x320c
    ba20: 91000021     	add	x1, x1, #0x0
		000000000000ba20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x320c
    ba24: 90000002     	adrp	x2, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba24:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7aa
    ba28: 91000042     	add	x2, x2, #0x0
		000000000000ba28:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7aa
    ba2c: 91112260     	add	x0, x19, #0x448
    ba30: 94000000     	bl	0xba30 <syna_dev_probe+0x280>
		000000000000ba30:  R_AARCH64_CALL26	__init_waitqueue_head
    ba34: 52801fe8     	mov	w8, #0xff               // =255
    ba38: b9046a7f     	str	wzr, [x19, #0x468]
    ba3c: 91128260     	add	x0, x19, #0x4a0
    ba40: b904a268     	str	w8, [x19, #0x4a0]
    ba44: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9153
    ba48: 91000108     	add	x8, x8, #0x0
		000000000000ba48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9153
    ba4c: f9025668     	str	x8, [x19, #0x4a8]
    ba50: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xfc0
    ba54: 91000108     	add	x8, x8, #0x0
		000000000000ba54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xfc0
    ba58: f9025a68     	str	x8, [x19, #0x4b0]
    ba5c: f902667f     	str	xzr, [x19, #0x4c8]
    ba60: 94000000     	bl	0xba60 <syna_dev_probe+0x2b0>
		000000000000ba60:  R_AARCH64_CALL26	misc_register
    ba64: 35000240     	cbnz	w0, 0xbaac <syna_dev_probe+0x2fc>
    ba68: 91004280     	add	x0, x20, #0x10
    ba6c: 52800021     	mov	w1, #0x1                // =1
    ba70: f902d67f     	str	xzr, [x19, #0x5a8]
    ba74: f9005693     	str	x19, [x20, #0xa8]
    ba78: 94000000     	bl	0xba78 <syna_dev_probe+0x2c8>
		000000000000ba78:  R_AARCH64_CALL26	device_set_wakeup_capable
    ba7c: 91004280     	add	x0, x20, #0x10
    ba80: 94000000     	bl	0xba80 <syna_dev_probe+0x2d0>
		000000000000ba80:  R_AARCH64_CALL26	device_wakeup_enable
    ba84: aa1303e0     	mov	x0, x19
    ba88: 94000101     	bl	0xbe8c <syna_dev_connect>
    ba8c: 36f801e0     	tbz	w0, #0x1f, 0xbac8 <syna_dev_probe+0x318>
    ba90: 2a0003f5     	mov	w21, w0
    ba94: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e99
    ba98: 91000000     	add	x0, x0, #0x0
		000000000000ba98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e99
    ba9c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000ba9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    baa0: 91000021     	add	x1, x1, #0x0
		000000000000baa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    baa4: 94000000     	bl	0xbaa4 <syna_dev_probe+0x2f4>
		000000000000baa4:  R_AARCH64_CALL26	_printk
    baa8: 14000021     	b	0xbb2c <syna_dev_probe+0x37c>
    baac: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000baac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7572
    bab0: 91000108     	add	x8, x8, #0x0
		000000000000bab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7572
    bab4: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    bab8: 91000021     	add	x1, x1, #0x0
		000000000000bab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    babc: 2a0003f3     	mov	w19, w0
    bac0: aa0803e0     	mov	x0, x8
    bac4: 17ffffa4     	b	0xb954 <syna_dev_probe+0x1a4>
    bac8: aa1303e0     	mov	x0, x19
    bacc: aa1403e1     	mov	x1, x20
    bad0: 94000000     	bl	0xbad0 <syna_dev_probe+0x320>
		000000000000bad0:  R_AARCH64_CALL26	syna_cdev_create
    bad4: 36f80100     	tbz	w0, #0x1f, 0xbaf4 <syna_dev_probe+0x344>
    bad8: 2a0003f5     	mov	w21, w0
    badc: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000badc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71a
    bae0: 91000000     	add	x0, x0, #0x0
		000000000000bae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71a
    bae4: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    bae8: 91000021     	add	x1, x1, #0x0
		000000000000bae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    baec: 94000000     	bl	0xbaec <syna_dev_probe+0x33c>
		000000000000baec:  R_AARCH64_CALL26	_printk
    baf0: 1400000d     	b	0xbb24 <syna_dev_probe+0x374>
    baf4: aa1303e0     	mov	x0, x19
    baf8: aa1403e1     	mov	x1, x20
    bafc: 94000000     	bl	0xbafc <syna_dev_probe+0x34c>
		000000000000bafc:  R_AARCH64_CALL26	syna_sysfs_create_dir
    bb00: 36f80380     	tbz	w0, #0x1f, 0xbb70 <syna_dev_probe+0x3c0>
    bb04: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x749
    bb08: 91000000     	add	x0, x0, #0x0
		000000000000bb08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x749
    bb0c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    bb10: 91000021     	add	x1, x1, #0x0
		000000000000bb10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    bb14: 94000000     	bl	0xbb14 <syna_dev_probe+0x364>
		000000000000bb14:  R_AARCH64_CALL26	_printk
    bb18: aa1303e0     	mov	x0, x19
    bb1c: 94000000     	bl	0xbb1c <syna_dev_probe+0x36c>
		000000000000bb1c:  R_AARCH64_CALL26	syna_cdev_remove
    bb20: 12800275     	mov	w21, #-0x14             // =-20
    bb24: aa1303e0     	mov	x0, x19
    bb28: 940001d5     	bl	0xc27c <syna_dev_disconnect>
    bb2c: f9423260     	ldr	x0, [x19, #0x460]
    bb30: 910aa274     	add	x20, x19, #0x2a8
    bb34: 94000000     	bl	0xbb34 <syna_dev_probe+0x384>
		000000000000bb34:  R_AARCH64_CALL26	kfree
    bb38: 394ba262     	ldrb	w2, [x19, #0x2e8]
    bb3c: 35000ca2     	cbnz	w2, 0xbcd0 <syna_dev_probe+0x520>
    bb40: f9400294     	ldr	x20, [x20]
    bb44: 94000000     	bl	0xbb44 <syna_dev_probe+0x394>
		000000000000bb44:  R_AARCH64_CALL26	syna_request_managed_device
    bb48: b4000d00     	cbz	x0, 0xbce8 <syna_dev_probe+0x538>
    bb4c: b4000074     	cbz	x20, 0xbb58 <syna_dev_probe+0x3a8>
    bb50: aa1403e1     	mov	x1, x20
    bb54: 94000000     	bl	0xbb54 <syna_dev_probe+0x3a4>
		000000000000bb54:  R_AARCH64_CALL26	devm_kfree
    bb58: f9015a7f     	str	xzr, [x19, #0x2b0]
    bb5c: 390ba27f     	strb	wzr, [x19, #0x2e8]
    bb60: f94007e0     	ldr	x0, [sp, #0x8]
    bb64: 94000000     	bl	0xbb64 <syna_dev_probe+0x3b4>
		000000000000bb64:  R_AARCH64_CALL26	syna_tcm_remove_device
    bb68: 2a1503e0     	mov	w0, w21
    bb6c: 17ffff3c     	b	0xb85c <syna_dev_probe+0xac>
    bb70: aa1303e0     	mov	x0, x19
    bb74: 94000442     	bl	0xcc7c <syna_ts_register_for_panel_events>
    bb78: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x814f
    bb7c: 91000000     	add	x0, x0, #0x0
		000000000000bb7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x814f
    bb80: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3ea
    bb84: 91000021     	add	x1, x1, #0x0
		000000000000bb84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3ea
    bb88: 94000000     	bl	0xbb88 <syna_dev_probe+0x3d8>
		000000000000bb88:  R_AARCH64_CALL26	_printk
    bb8c: 90000015     	adrp	x21, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb8c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    bb90: 90000009     	adrp	x9, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb90:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe1bc
    bb94: 91000129     	add	x9, x9, #0x0
		000000000000bb94:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe1bc
    bb98: f94002a8     	ldr	x8, [x21]
		000000000000bb98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    bb9c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bb9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aeb
    bba0: 91000021     	add	x1, x1, #0x0
		000000000000bba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aeb
    bba4: 90000002     	adrp	x2, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bba4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7b1
    bba8: 91000042     	add	x2, x2, #0x0
		000000000000bba8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7b1
    bbac: 91158260     	add	x0, x19, #0x560
    bbb0: f9070509     	str	x9, [x8, #0xe08]
    bbb4: 90000009     	adrp	x9, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bbb4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe1e4
    bbb8: 91000129     	add	x9, x9, #0x0
		000000000000bbb8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe1e4
    bbbc: f906ed13     	str	x19, [x8, #0xdd8]
    bbc0: f9070909     	str	x9, [x8, #0xe10]
    bbc4: b9055a7f     	str	wzr, [x19, #0x558]
    bbc8: 94000000     	bl	0xbbc8 <syna_dev_probe+0x418>
		000000000000bbc8:  R_AARCH64_CALL26	__init_swait_queue_head
    bbcc: 52800141     	mov	w1, #0xa                // =10
    bbd0: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bbd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
    bbd4: 91000000     	add	x0, x0, #0x0
		000000000000bbd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
    bbd8: 90000003     	adrp	x3, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bbd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69cf
    bbdc: 91000063     	add	x3, x3, #0x0
		000000000000bbdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69cf
    bbe0: 72a000c1     	movk	w1, #0x6, lsl #16
    bbe4: 52800022     	mov	w2, #0x1                // =1
    bbe8: 3915e27f     	strb	wzr, [x19, #0x578]
    bbec: 52800036     	mov	w22, #0x1               // =1
    bbf0: b905227f     	str	wzr, [x19, #0x520]
    bbf4: 94000000     	bl	0xbbf4 <syna_dev_probe+0x444>
		000000000000bbf4:  R_AARCH64_CALL26	alloc_workqueue
    bbf8: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    bbfc: f902a660     	str	x0, [x19, #0x548]
    bc00: f9029668     	str	x8, [x19, #0x528]
    bc04: 9114c268     	add	x8, x19, #0x530
    bc08: f9029a68     	str	x8, [x19, #0x530]
    bc0c: f9029e68     	str	x8, [x19, #0x538]
    bc10: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bc10:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xcd08
    bc14: 91000108     	add	x8, x8, #0x0
		000000000000bc14:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xcd08
    bc18: f902a268     	str	x8, [x19, #0x540]
    bc1c: b21f03e8     	mov	x8, #0x200000002        // =8589934594
    bc20: f9030268     	str	x8, [x19, #0x600]
    bc24: 52800048     	mov	w8, #0x2                // =2
    bc28: b9060e68     	str	w8, [x19, #0x60c]
    bc2c: d2800028     	mov	x8, #0x1                // =1
    bc30: f2c00048     	movk	x8, #0x2, lsl #32
    bc34: f902da7f     	str	xzr, [x19, #0x5b0]
    bc38: b905ba7f     	str	wzr, [x19, #0x5b8]
    bc3c: b905c67f     	str	wzr, [x19, #0x5c4]
    bc40: b905d67f     	str	wzr, [x19, #0x5d4]
    bc44: b905de7f     	str	wzr, [x19, #0x5dc]
    bc48: f902fe68     	str	x8, [x19, #0x5f8]
    bc4c: f902f67f     	str	xzr, [x19, #0x5e8]
    bc50: f902fa7f     	str	xzr, [x19, #0x5f0]
    bc54: 94000000     	bl	0xbc54 <syna_dev_probe+0x4a4>
		000000000000bc54:  R_AARCH64_CALL26	zte_get_boot_mode
    bc58: 90000014     	adrp	x20, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bc58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3823
    bc5c: 91000294     	add	x20, x20, #0x0
		000000000000bc5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3823
    bc60: 2a0003e2     	mov	w2, w0
    bc64: b9061a60     	str	w0, [x19, #0x618]
    bc68: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bc68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bd1
    bc6c: 91000000     	add	x0, x0, #0x0
		000000000000bc6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bd1
    bc70: aa1403e1     	mov	x1, x20
    bc74: 94000000     	bl	0xbc74 <syna_dev_probe+0x4c4>
		000000000000bc74:  R_AARCH64_CALL26	_printk
    bc78: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bc78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x145
    bc7c: 91000000     	add	x0, x0, #0x0
		000000000000bc7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x145
    bc80: 90000002     	adrp	x2, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bc80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    bc84: 91000042     	add	x2, x2, #0x0
		000000000000bc84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    bc88: 90000004     	adrp	x4, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bc88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8092
    bc8c: 91000084     	add	x4, x4, #0x0
		000000000000bc8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8092
    bc90: aa1403e1     	mov	x1, x20
    bc94: 52800023     	mov	w3, #0x1                // =1
    bc98: 94000000     	bl	0xbc98 <syna_dev_probe+0x4e8>
		000000000000bc98:  R_AARCH64_CALL26	_printk
    bc9c: f94002a8     	ldr	x8, [x21]
		000000000000bc9c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    bca0: 91162260     	add	x0, x19, #0x588
    bca4: 39160e76     	strb	w22, [x19, #0x583]
    bca8: 39007516     	strb	w22, [x8, #0x1d]
    bcac: 39111916     	strb	w22, [x8, #0x446]
    bcb0: 94000000     	bl	0xbcb0 <syna_dev_probe+0x500>
		000000000000bcb0:  R_AARCH64_CALL26	completion_done
    bcb4: 2a0003e8     	mov	w8, w0
    bcb8: 2a1f03e0     	mov	w0, wzr
    bcbc: 3707dd08     	tbnz	w8, #0x0, 0xb85c <syna_dev_probe+0xac>
    bcc0: 91162260     	add	x0, x19, #0x588
    bcc4: 94000000     	bl	0xbcc4 <syna_dev_probe+0x514>
		000000000000bcc4:  R_AARCH64_CALL26	complete
    bcc8: 2a1f03e0     	mov	w0, wzr
    bccc: 17fffee4     	b	0xb85c <syna_dev_probe+0xac>
    bcd0: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bcd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
    bcd4: 91000000     	add	x0, x0, #0x0
		000000000000bcd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
    bcd8: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bcd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
    bcdc: 91000021     	add	x1, x1, #0x0
		000000000000bcdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
    bce0: 94000000     	bl	0xbce0 <syna_dev_probe+0x530>
		000000000000bce0:  R_AARCH64_CALL26	_printk
    bce4: 17ffff97     	b	0xbb40 <syna_dev_probe+0x390>
    bce8: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    bcec: 91000000     	add	x0, x0, #0x0
		000000000000bcec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    bcf0: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bcf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
    bcf4: 91000021     	add	x1, x1, #0x0
		000000000000bcf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
    bcf8: 94000000     	bl	0xbcf8 <syna_dev_probe+0x548>
		000000000000bcf8:  R_AARCH64_CALL26	_printk
    bcfc: 17ffff97     	b	0xbb58 <syna_dev_probe+0x3a8>
    bd00: 94000000     	bl	0xbd00 <syna_dev_probe+0x550>
		000000000000bd00:  R_AARCH64_CALL26	__stack_chk_fail
    bd04: 52840000     	mov	w0, #0x2000             // =8192
    bd08: d5384115     	mrs	x21, SP_EL0
    bd0c: f9402ab6     	ldr	x22, [x21, #0x50]
    bd10: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bd10:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x168
    bd14: 91000108     	add	x8, x8, #0x0
		000000000000bd14:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x168
    bd18: 72a00060     	movk	w0, #0x3, lsl #16
    bd1c: 52819801     	mov	w1, #0xcc0              // =3264
    bd20: f9002aa8     	str	x8, [x21, #0x50]
    bd24: 94000000     	bl	0xbd24 <syna_dev_probe+0x574>
		000000000000bd24:  R_AARCH64_CALL26	__kmalloc_large_noprof
    bd28: f9002ab6     	str	x22, [x21, #0x50]
    bd2c: 17ffff35     	b	0xba00 <syna_dev_probe+0x250>
