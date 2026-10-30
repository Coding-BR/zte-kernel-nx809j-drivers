
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001745c <syna_tcm_buf_copy>:
   1745c: d503233f     	paciasp
   17460: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   17464: f9000bf7     	str	x23, [sp, #0x10]
   17468: a90257f6     	stp	x22, x21, [sp, #0x20]
   1746c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   17470: 910003fd     	mov	x29, sp
   17474: 39410002     	ldrb	w2, [x0, #0x40]
   17478: aa0003f3     	mov	x19, x0
   1747c: aa0103f4     	mov	x20, x1
   17480: 350009e2     	cbnz	w2, 0x175bc <syna_tcm_buf_copy+0x160>
   17484: 91004260     	add	x0, x19, #0x10
   17488: 94000000     	bl	0x17488 <syna_tcm_buf_copy+0x2c>
		0000000000017488:  R_AARCH64_CALL26	mutex_lock
   1748c: 39410268     	ldrb	w8, [x19, #0x40]
   17490: 11000508     	add	w8, w8, #0x1
   17494: 39010268     	strb	w8, [x19, #0x40]
   17498: 39410282     	ldrb	w2, [x20, #0x40]
   1749c: 350009c2     	cbnz	w2, 0x175d4 <syna_tcm_buf_copy+0x178>
   174a0: 91004280     	add	x0, x20, #0x10
   174a4: 94000000     	bl	0x174a4 <syna_tcm_buf_copy+0x48>
		00000000000174a4:  R_AARCH64_CALL26	mutex_lock
   174a8: 39410288     	ldrb	w8, [x20, #0x40]
   174ac: b9400e95     	ldr	w21, [x20, #0xc]
   174b0: 11000508     	add	w8, w8, #0x1
   174b4: 39010288     	strb	w8, [x20, #0x40]
   174b8: b9400a63     	ldr	w3, [x19, #0x8]
   174bc: 6b15007f     	cmp	w3, w21
   174c0: 540003c2     	b.hs	0x17538 <syna_tcm_buf_copy+0xdc>
   174c4: 110006b6     	add	w22, w21, #0x1
   174c8: f9400260     	ldr	x0, [x19]
   174cc: 6b16007f     	cmp	w3, w22
   174d0: 54000262     	b.hs	0x1751c <syna_tcm_buf_copy+0xc0>
   174d4: b40000c0     	cbz	x0, 0x174ec <syna_tcm_buf_copy+0x90>
   174d8: aa0003f7     	mov	x23, x0
   174dc: 94000000     	bl	0x174dc <syna_tcm_buf_copy+0x80>
		00000000000174dc:  R_AARCH64_CALL26	syna_request_managed_device
   174e0: b4000c60     	cbz	x0, 0x1766c <syna_tcm_buf_copy+0x210>
   174e4: aa1703e1     	mov	x1, x23
   174e8: 94000000     	bl	0x174e8 <syna_tcm_buf_copy+0x8c>
		00000000000174e8:  R_AARCH64_CALL26	devm_kfree
   174ec: 94000000     	bl	0x174ec <syna_tcm_buf_copy+0x90>
		00000000000174ec:  R_AARCH64_CALL26	syna_request_managed_device
   174f0: b4000cc0     	cbz	x0, 0x17688 <syna_tcm_buf_copy+0x22c>
   174f4: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   174f8: 6b0802bf     	cmp	w21, w8
   174fc: 54000b22     	b.hs	0x17660 <syna_tcm_buf_copy+0x204>
   17500: aa1603e1     	mov	x1, x22
   17504: 5281b802     	mov	w2, #0xdc0              // =3520
   17508: 94000000     	bl	0x17508 <syna_tcm_buf_copy+0xac>
		0000000000017508:  R_AARCH64_CALL26	devm_kmalloc
   1750c: f9000260     	str	x0, [x19]
   17510: b4000c80     	cbz	x0, 0x176a0 <syna_tcm_buf_copy+0x244>
   17514: b9000a76     	str	w22, [x19, #0x8]
   17518: 14000002     	b	0x17520 <syna_tcm_buf_copy+0xc4>
   1751c: aa0303f6     	mov	x22, x3
   17520: 2a1f03e1     	mov	w1, wzr
   17524: aa1603e2     	mov	x2, x22
   17528: 94000000     	bl	0x17528 <syna_tcm_buf_copy+0xcc>
		0000000000017528:  R_AARCH64_CALL26	memset
   1752c: b9000e7f     	str	wzr, [x19, #0xc]
   17530: b9400a63     	ldr	w3, [x19, #0x8]
   17534: b9400e95     	ldr	w21, [x20, #0xc]
   17538: f9400260     	ldr	x0, [x19]
   1753c: b4000860     	cbz	x0, 0x17648 <syna_tcm_buf_copy+0x1ec>
   17540: f9400281     	ldr	x1, [x20]
   17544: b4000821     	cbz	x1, 0x17648 <syna_tcm_buf_copy+0x1ec>
   17548: b9400a82     	ldr	w2, [x20, #0x8]
   1754c: 6b0302bf     	cmp	w21, w3
   17550: 540006e8     	b.hi	0x1762c <syna_tcm_buf_copy+0x1d0>
   17554: 6b0202bf     	cmp	w21, w2
   17558: 540006a8     	b.hi	0x1762c <syna_tcm_buf_copy+0x1d0>
   1755c: 2a1503e2     	mov	w2, w21
   17560: 94000000     	bl	0x17560 <syna_tcm_buf_copy+0x104>
		0000000000017560:  R_AARCH64_CALL26	memcpy
   17564: b9400e88     	ldr	w8, [x20, #0xc]
   17568: b9000e68     	str	w8, [x19, #0xc]
   1756c: 39410282     	ldrb	w2, [x20, #0x40]
   17570: 7100045f     	cmp	w2, #0x1
   17574: 540004c1     	b.ne	0x1760c <syna_tcm_buf_copy+0x1b0>
   17578: 2a1f03e8     	mov	w8, wzr
   1757c: 91004280     	add	x0, x20, #0x10
   17580: 39010288     	strb	w8, [x20, #0x40]
   17584: 94000000     	bl	0x17584 <syna_tcm_buf_copy+0x128>
		0000000000017584:  R_AARCH64_CALL26	mutex_unlock
   17588: 39410262     	ldrb	w2, [x19, #0x40]
   1758c: 7100045f     	cmp	w2, #0x1
   17590: 540002e1     	b.ne	0x175ec <syna_tcm_buf_copy+0x190>
   17594: 2a1f03e8     	mov	w8, wzr
   17598: 91004260     	add	x0, x19, #0x10
   1759c: 39010268     	strb	w8, [x19, #0x40]
   175a0: 94000000     	bl	0x175a0 <syna_tcm_buf_copy+0x144>
		00000000000175a0:  R_AARCH64_CALL26	mutex_unlock
   175a4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   175a8: f9400bf7     	ldr	x23, [sp, #0x10]
   175ac: a94257f6     	ldp	x22, x21, [sp, #0x20]
   175b0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   175b4: d50323bf     	autiasp
   175b8: d65f03c0     	ret
   175bc: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000175bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   175c0: 91000000     	add	x0, x0, #0x0
		00000000000175c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   175c4: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000175c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   175c8: 91000021     	add	x1, x1, #0x0
		00000000000175c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   175cc: 94000000     	bl	0x175cc <syna_tcm_buf_copy+0x170>
		00000000000175cc:  R_AARCH64_CALL26	_printk
   175d0: 17ffffad     	b	0x17484 <syna_tcm_buf_copy+0x28>
   175d4: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000175d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   175d8: 91000000     	add	x0, x0, #0x0
		00000000000175d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   175dc: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000175dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   175e0: 91000021     	add	x1, x1, #0x0
		00000000000175e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   175e4: 94000000     	bl	0x175e4 <syna_tcm_buf_copy+0x188>
		00000000000175e4:  R_AARCH64_CALL26	_printk
   175e8: 17ffffae     	b	0x174a0 <syna_tcm_buf_copy+0x44>
   175ec: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000175ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   175f0: 91000000     	add	x0, x0, #0x0
		00000000000175f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   175f4: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000175f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   175f8: 91000021     	add	x1, x1, #0x0
		00000000000175f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   175fc: 94000000     	bl	0x175fc <syna_tcm_buf_copy+0x1a0>
		00000000000175fc:  R_AARCH64_CALL26	_printk
   17600: 39410268     	ldrb	w8, [x19, #0x40]
   17604: 51000508     	sub	w8, w8, #0x1
   17608: 17ffffe4     	b	0x17598 <syna_tcm_buf_copy+0x13c>
   1760c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001760c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   17610: 91000000     	add	x0, x0, #0x0
		0000000000017610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   17614: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   17618: 91000021     	add	x1, x1, #0x0
		0000000000017618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1761c: 94000000     	bl	0x1761c <syna_tcm_buf_copy+0x1c0>
		000000000001761c:  R_AARCH64_CALL26	_printk
   17620: 39410288     	ldrb	w8, [x20, #0x40]
   17624: 51000508     	sub	w8, w8, #0x1
   17628: 17ffffd5     	b	0x1757c <syna_tcm_buf_copy+0x120>
   1762c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001762c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   17630: 91000000     	add	x0, x0, #0x0
		0000000000017630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   17634: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   17638: 91000021     	add	x1, x1, #0x0
		0000000000017638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1763c: 2a1503e4     	mov	w4, w21
   17640: 94000000     	bl	0x17640 <syna_tcm_buf_copy+0x1e4>
		0000000000017640:  R_AARCH64_CALL26	_printk
   17644: b9400e95     	ldr	w21, [x20, #0xc]
   17648: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a49
   1764c: 91000000     	add	x0, x0, #0x0
		000000000001764c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a49
   17650: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   17654: 91000021     	add	x1, x1, #0x0
		0000000000017654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   17658: 2a1503e2     	mov	w2, w21
   1765c: 1400001e     	b	0x176d4 <syna_tcm_buf_copy+0x278>
   17660: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   17664: 91000000     	add	x0, x0, #0x0
		0000000000017664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   17668: 1400000a     	b	0x17690 <syna_tcm_buf_copy+0x234>
   1766c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001766c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   17670: 91000000     	add	x0, x0, #0x0
		0000000000017670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17674: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   17678: 91000021     	add	x1, x1, #0x0
		0000000000017678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1767c: 94000000     	bl	0x1767c <syna_tcm_buf_copy+0x220>
		000000000001767c:  R_AARCH64_CALL26	_printk
   17680: 94000000     	bl	0x17680 <syna_tcm_buf_copy+0x224>
		0000000000017680:  R_AARCH64_CALL26	syna_request_managed_device
   17684: b5fff380     	cbnz	x0, 0x174f4 <syna_tcm_buf_copy+0x98>
   17688: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1768c: 91000000     	add	x0, x0, #0x0
		000000000001768c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17690: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   17694: 91000021     	add	x1, x1, #0x0
		0000000000017694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   17698: 94000000     	bl	0x17698 <syna_tcm_buf_copy+0x23c>
		0000000000017698:  R_AARCH64_CALL26	_printk
   1769c: f900027f     	str	xzr, [x19]
   176a0: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000176a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   176a4: 91000000     	add	x0, x0, #0x0
		00000000000176a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   176a8: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000176a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   176ac: 91000021     	add	x1, x1, #0x0
		00000000000176ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   176b0: 2a1603e2     	mov	w2, w22
   176b4: 94000000     	bl	0x176b4 <syna_tcm_buf_copy+0x258>
		00000000000176b4:  R_AARCH64_CALL26	_printk
   176b8: f900067f     	str	xzr, [x19, #0x8]
   176bc: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000176bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64e5
   176c0: 91000000     	add	x0, x0, #0x0
		00000000000176c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64e5
   176c4: b9400e88     	ldr	w8, [x20, #0xc]
   176c8: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000176c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   176cc: 91000021     	add	x1, x1, #0x0
		00000000000176cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   176d0: 11000502     	add	w2, w8, #0x1
   176d4: 94000000     	bl	0x176d4 <syna_tcm_buf_copy+0x278>
		00000000000176d4:  R_AARCH64_CALL26	_printk
   176d8: 17ffffa5     	b	0x1756c <syna_tcm_buf_copy+0x110>
