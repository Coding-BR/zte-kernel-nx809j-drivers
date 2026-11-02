
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008510 <aw9620x_old_boot_nvr_modify>:
    8510: d503233f     	paciasp
    8514: d10103ff     	sub	sp, sp, #0x40
    8518: a9017bfd     	stp	x29, x30, [sp, #0x10]
    851c: f90013f5     	str	x21, [sp, #0x20]
    8520: a9034ff4     	stp	x20, x19, [sp, #0x30]
    8524: 910043fd     	add	x29, sp, #0x10
    8528: d5384108     	mrs	x8, SP_EL0
    852c: 90000014     	adrp	x20, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000852c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    8530: 91000294     	add	x20, x20, #0x0
		0000000000008530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8534: f9438908     	ldr	x8, [x8, #0x710]
    8538: 90000015     	adrp	x21, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
    853c: 910002b5     	add	x21, x21, #0x0
		000000000000853c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
    8540: aa0003f3     	mov	x19, x0
    8544: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    8548: 91000042     	add	x2, x2, #0x0
		0000000000008548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    854c: f90007e8     	str	x8, [sp, #0x8]
    8550: aa1503e3     	mov	x3, x21
    8554: 52820584     	mov	w4, #0x102c             // =4140
    8558: f9401801     	ldr	x1, [x0, #0x30]
    855c: aa1403e0     	mov	x0, x20
    8560: b90007ff     	str	wzr, [sp, #0x4]
    8564: 94000000     	bl	0x8564 <aw9620x_old_boot_nvr_modify+0x54>
		0000000000008564:  R_AARCH64_CALL26	_dev_printk
    8568: a9428668     	ldp	x8, x1, [x19, #0x28]
    856c: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000856c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x267f
    8570: 91000042     	add	x2, x2, #0x0
		0000000000008570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x267f
    8574: aa1403e0     	mov	x0, x20
    8578: aa1503e3     	mov	x3, x21
    857c: 528205e4     	mov	w4, #0x102f             // =4143
    8580: 79400505     	ldrh	w5, [x8, #0x2]
    8584: 94000000     	bl	0x8584 <aw9620x_old_boot_nvr_modify+0x74>
		0000000000008584:  R_AARCH64_CALL26	_dev_printk
    8588: aa1303e0     	mov	x0, x19
    858c: 52888881     	mov	w1, #0x4444             // =17476
    8590: 52a00022     	mov	w2, #0x10000            // =65536
    8594: 97ffe49f     	bl	0x1810 <aw9620x_i2c_write>
    8598: 340002e0     	cbz	w0, 0x85f4 <aw9620x_old_boot_nvr_modify+0xe4>
    859c: f9401668     	ldr	x8, [x19, #0x28]
    85a0: 52800245     	mov	w5, #0x12               // =18
    85a4: 79400509     	ldrh	w9, [x8, #0x2]
    85a8: 7100493f     	cmp	w9, #0x12
    85ac: 54000080     	b.eq	0x85bc <aw9620x_old_boot_nvr_modify+0xac>
    85b0: 79000505     	strh	w5, [x8, #0x2]
    85b4: f9401668     	ldr	x8, [x19, #0x28]
    85b8: 79400505     	ldrh	w5, [x8, #0x2]
    85bc: f9401a61     	ldr	x1, [x19, #0x30]
    85c0: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000085c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    85c4: 91000000     	add	x0, x0, #0x0
		00000000000085c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    85c8: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000085c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x267f
    85cc: 91000042     	add	x2, x2, #0x0
		00000000000085cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x267f
    85d0: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000085d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
    85d4: 91000063     	add	x3, x3, #0x0
		00000000000085d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
    85d8: 528206a4     	mov	w4, #0x1035             // =4149
    85dc: 94000000     	bl	0x85dc <aw9620x_old_boot_nvr_modify+0xcc>
		00000000000085dc:  R_AARCH64_CALL26	_dev_printk
    85e0: aa1303e0     	mov	x0, x19
    85e4: 52888881     	mov	w1, #0x4444             // =17476
    85e8: 52a00022     	mov	w2, #0x10000            // =65536
    85ec: 97ffe489     	bl	0x1810 <aw9620x_i2c_write>
    85f0: 35000b60     	cbnz	w0, 0x875c <aw9620x_old_boot_nvr_modify+0x24c>
    85f4: aa1303e0     	mov	x0, x19
    85f8: 529fe401     	mov	w1, #0xff20             // =65312
    85fc: 12b86002     	mov	w2, #0x3cffffff         // =1023410175
    8600: 97ffe484     	bl	0x1810 <aw9620x_i2c_write>
    8604: 910013e2     	add	x2, sp, #0x4
    8608: aa1303e0     	mov	x0, x19
    860c: 5288e901     	mov	w1, #0x4748             // =18248
    8610: 97ffed3c     	bl	0x3b00 <aw9620x_i2c_read>
    8614: b94007f4     	ldr	w20, [sp, #0x4]
    8618: f9401a61     	ldr	x1, [x19, #0x30]
    861c: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000861c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    8620: 91000000     	add	x0, x0, #0x0
		0000000000008620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8624: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacb
    8628: 91000042     	add	x2, x2, #0x0
		0000000000008628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacb
    862c: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000862c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
    8630: 91000063     	add	x3, x3, #0x0
		0000000000008630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
    8634: 528207e4     	mov	w4, #0x103f             // =4159
    8638: 2a1403e5     	mov	w5, w20
    863c: 94000000     	bl	0x863c <aw9620x_old_boot_nvr_modify+0x12c>
		000000000000863c:  R_AARCH64_CALL26	_dev_printk
    8640: aa1303e0     	mov	x0, x19
    8644: 34000774     	cbz	w20, 0x8730 <aw9620x_old_boot_nvr_modify+0x220>
    8648: 5288e901     	mov	w1, #0x4748             // =18248
    864c: 2a1f03e2     	mov	w2, wzr
    8650: 97ffe470     	bl	0x1810 <aw9620x_i2c_write>
    8654: 528f2442     	mov	w2, #0x7922             // =31010
    8658: aa1303e0     	mov	x0, x19
    865c: 5288f101     	mov	w1, #0x4788             // =18312
    8660: 72ab4c62     	movk	w2, #0x5a63, lsl #16
    8664: 97ffe46b     	bl	0x1810 <aw9620x_i2c_write>
    8668: aa1303e0     	mov	x0, x19
    866c: 52890401     	mov	w1, #0x4820             // =18464
    8670: 528000c2     	mov	w2, #0x6                // =6
    8674: 97ffe467     	bl	0x1810 <aw9620x_i2c_write>
    8678: aa1303e0     	mov	x0, x19
    867c: 5288e001     	mov	w1, #0x4700             // =18176
    8680: 52802202     	mov	w2, #0x110              // =272
    8684: 97ffe463     	bl	0x1810 <aw9620x_i2c_write>
    8688: aa1303e0     	mov	x0, x19
    868c: 5288e681     	mov	w1, #0x4734             // =18228
    8690: 5288ca02     	mov	w2, #0x4650             // =18000
    8694: 97ffe45f     	bl	0x1810 <aw9620x_i2c_write>
    8698: aa1303e0     	mov	x0, x19
    869c: 5288e081     	mov	w1, #0x4704             // =18180
    86a0: 52882002     	mov	w2, #0x4100             // =16640
    86a4: 97ffe45b     	bl	0x1810 <aw9620x_i2c_write>
    86a8: aa1303e0     	mov	x0, x19
    86ac: 5288e201     	mov	w1, #0x4710             // =18192
    86b0: 528004a2     	mov	w2, #0x25               // =37
    86b4: 97ffe457     	bl	0x1810 <aw9620x_i2c_write>
    86b8: aa1303e0     	mov	x0, x19
    86bc: 5288e581     	mov	w1, #0x472c             // =18220
    86c0: 52801e02     	mov	w2, #0xf0               // =240
    86c4: 97ffe453     	bl	0x1810 <aw9620x_i2c_write>
    86c8: aa1303e0     	mov	x0, x19
    86cc: 5288e281     	mov	w1, #0x4714             // =18196
    86d0: 52800022     	mov	w2, #0x1                // =1
    86d4: 97ffe44f     	bl	0x1810 <aw9620x_i2c_write>
    86d8: 52827100     	mov	w0, #0x1388             // =5000
    86dc: 52827241     	mov	w1, #0x1392             // =5010
    86e0: 52800042     	mov	w2, #0x2                // =2
    86e4: 94000000     	bl	0x86e4 <aw9620x_old_boot_nvr_modify+0x1d4>
		00000000000086e4:  R_AARCH64_CALL26	usleep_range_state
    86e8: aa1303e0     	mov	x0, x19
    86ec: 5288e081     	mov	w1, #0x4704             // =18180
    86f0: 52882002     	mov	w2, #0x4100             // =16640
    86f4: 97ffe447     	bl	0x1810 <aw9620x_i2c_write>
    86f8: aa1303e0     	mov	x0, x19
    86fc: 5288e101     	mov	w1, #0x4708             // =18184
    8700: 2a1f03e2     	mov	w2, wzr
    8704: 97ffe443     	bl	0x1810 <aw9620x_i2c_write>
    8708: aa1303e0     	mov	x0, x19
    870c: 5288e201     	mov	w1, #0x4710             // =18192
    8710: 52800582     	mov	w2, #0x2c               // =44
    8714: 97ffe43f     	bl	0x1810 <aw9620x_i2c_write>
    8718: aa1303e0     	mov	x0, x19
    871c: 5288e281     	mov	w1, #0x4714             // =18196
    8720: 52800022     	mov	w2, #0x1                // =1
    8724: 97ffe43b     	bl	0x1810 <aw9620x_i2c_write>
    8728: 2a1f03e0     	mov	w0, wzr
    872c: 14000016     	b	0x8784 <aw9620x_old_boot_nvr_modify+0x274>
    8730: 52888881     	mov	w1, #0x4444             // =17476
    8734: 2a1f03e2     	mov	w2, wzr
    8738: 97ffe436     	bl	0x1810 <aw9620x_i2c_write>
    873c: aa1303e0     	mov	x0, x19
    8740: 529fe301     	mov	w1, #0xff18             // =65304
    8744: 52800782     	mov	w2, #0x3c               // =60
    8748: 97ffe432     	bl	0x1810 <aw9620x_i2c_write>
    874c: 52800320     	mov	w0, #0x19               // =25
    8750: 94000000     	bl	0x8750 <aw9620x_old_boot_nvr_modify+0x240>
		0000000000008750:  R_AARCH64_CALL26	msleep
    8754: 52800020     	mov	w0, #0x1                // =1
    8758: 1400000b     	b	0x8784 <aw9620x_old_boot_nvr_modify+0x274>
    875c: f9401a61     	ldr	x1, [x19, #0x30]
    8760: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    8764: 91000000     	add	x0, x0, #0x0
		0000000000008764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8768: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x395f
    876c: 91000042     	add	x2, x2, #0x0
		000000000000876c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x395f
    8770: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
    8774: 91000063     	add	x3, x3, #0x0
		0000000000008774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
    8778: 52820704     	mov	w4, #0x1038             // =4152
    877c: 94000000     	bl	0x877c <aw9620x_old_boot_nvr_modify+0x26c>
		000000000000877c:  R_AARCH64_CALL26	_dev_printk
    8780: 12800000     	mov	w0, #-0x1               // =-1
    8784: d5384108     	mrs	x8, SP_EL0
    8788: f9438908     	ldr	x8, [x8, #0x710]
    878c: f94007e9     	ldr	x9, [sp, #0x8]
    8790: eb09011f     	cmp	x8, x9
    8794: 540000e1     	b.ne	0x87b0 <aw9620x_old_boot_nvr_modify+0x2a0>
    8798: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    879c: f94013f5     	ldr	x21, [sp, #0x20]
    87a0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    87a4: 910103ff     	add	sp, sp, #0x40
    87a8: d50323bf     	autiasp
    87ac: d65f03c0     	ret
    87b0: 94000000     	bl	0x87b0 <aw9620x_old_boot_nvr_modify+0x2a0>
		00000000000087b0:  R_AARCH64_CALL26	__stack_chk_fail
