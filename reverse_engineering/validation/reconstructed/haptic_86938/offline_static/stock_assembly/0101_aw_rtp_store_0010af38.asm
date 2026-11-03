
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008118 <aw_rtp_store>:
    8118: d503233f     	paciasp
    811c: d10103ff     	sub	sp, sp, #0x40
    8120: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8124: f90013f5     	str	x21, [sp, #0x20]
    8128: a9034ff4     	stp	x20, x19, [sp, #0x30]
    812c: 910043fd     	add	x29, sp, #0x10
    8130: d5384109     	mrs	x9, SP_EL0
    8134: aa0203e8     	mov	x8, x2
    8138: 910013e2     	add	x2, sp, #0x4
    813c: f9438929     	ldr	x9, [x9, #0x710]
    8140: 2a1f03e1     	mov	w1, wzr
    8144: aa0303f3     	mov	x19, x3
    8148: f90007e9     	str	x9, [sp, #0x8]
    814c: f9404c15     	ldr	x21, [x0, #0x98]
    8150: aa0803e0     	mov	x0, x8
    8154: b90007ff     	str	wzr, [sp, #0x4]
    8158: 94000000     	bl	0x8158 <aw_rtp_store+0x40>
		0000000000008158:  R_AARCH64_CALL26	kstrtouint
    815c: 36f80180     	tbz	w0, #0x1f, 0x818c <aw_rtp_store+0x74>
    8160: 2a0003f4     	mov	w20, w0
    8164: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2417
    8168: 91000000     	add	x0, x0, #0x0
		0000000000008168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2417
    816c: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		000000000000816c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8170: 91000021     	add	x1, x1, #0x0
		0000000000008170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8174: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f8
    8178: 91000063     	add	x3, x3, #0x0
		0000000000008178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f8
    817c: 528146c2     	mov	w2, #0xa36              // =2614
    8180: 94000000     	bl	0x8180 <aw_rtp_store+0x68>
		0000000000008180:  R_AARCH64_CALL26	_printk
    8184: 93407e93     	sxtw	x19, w20
    8188: 14000042     	b	0x8290 <aw_rtp_store+0x178>
    818c: 910922a0     	add	x0, x21, #0x248
    8190: d102a2b4     	sub	x20, x21, #0xa8
    8194: 94000000     	bl	0x8194 <aw_rtp_store+0x7c>
		0000000000008194:  R_AARCH64_CALL26	mutex_lock
    8198: f94292a8     	ldr	x8, [x21, #0x520]
    819c: aa1403e0     	mov	x0, x20
    81a0: f9401d08     	ldr	x8, [x8, #0x38]
    81a4: b85fc110     	ldur	w16, [x8, #-0x4]
    81a8: 72810611     	movk	w17, #0x830
    81ac: 72b08f51     	movk	w17, #0x847a, lsl #16
    81b0: 6b11021f     	cmp	w16, w17
    81b4: 54000040     	b.eq	0x81bc <aw_rtp_store+0xa4>
    81b8: d4304500     	brk	#0x8228
    81bc: d63f0100     	blr	x8
    81c0: f94292a8     	ldr	x8, [x21, #0x520]
    81c4: aa1403e0     	mov	x0, x20
    81c8: 2a1f03e1     	mov	w1, wzr
    81cc: f9408908     	ldr	x8, [x8, #0x110]
    81d0: b85fc110     	ldur	w16, [x8, #-0x4]
    81d4: 729bedd1     	movk	w17, #0xdf6e
    81d8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    81dc: 6b11021f     	cmp	w16, w17
    81e0: 54000040     	b.eq	0x81e8 <aw_rtp_store+0xd0>
    81e4: d4304500     	brk	#0x8228
    81e8: d63f0100     	blr	x8
    81ec: f94292a8     	ldr	x8, [x21, #0x520]
    81f0: aa1403e0     	mov	x0, x20
    81f4: f9407908     	ldr	x8, [x8, #0xf0]
    81f8: b85fc110     	ldur	w16, [x8, #-0x4]
    81fc: 72810611     	movk	w17, #0x830
    8200: 72b08f51     	movk	w17, #0x847a, lsl #16
    8204: 6b11021f     	cmp	w16, w17
    8208: 54000040     	b.eq	0x8210 <aw_rtp_store+0xf8>
    820c: d4304500     	brk	#0x8228
    8210: d63f0100     	blr	x8
    8214: b94007e4     	ldr	w4, [sp, #0x4]
    8218: 51000488     	sub	w8, w4, #0x1
    821c: 71000d1f     	cmp	w8, #0x3
    8220: 54000248     	b.hi	0x8268 <aw_rtp_store+0x150>
    8224: 90000008     	adrp	x8, 0x8000 <reg_show+0x10>
		0000000000008224:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    8228: 91000108     	add	x8, x8, #0x0
		0000000000008228:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    822c: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		000000000000822c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd5c
    8230: 91000000     	add	x0, x0, #0x0
		0000000000008230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd5c
    8234: 8b041905     	add	x5, x8, x4, lsl #6
    8238: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    823c: 91000021     	add	x1, x1, #0x0
		000000000000823c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8240: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f8
    8244: 91000063     	add	x3, x3, #0x0
		0000000000008244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f8
    8248: 52814862     	mov	w2, #0xa43              // =2627
    824c: b81e82a4     	stur	w4, [x21, #-0x18]
    8250: 94000000     	bl	0x8250 <aw_rtp_store+0x138>
		0000000000008250:  R_AARCH64_CALL26	_printk
    8254: f941d2a1     	ldr	x1, [x21, #0x3a0]
    8258: 910be2a2     	add	x2, x21, #0x2f8
    825c: 52800400     	mov	w0, #0x20               // =32
    8260: 94000000     	bl	0x8260 <aw_rtp_store+0x148>
		0000000000008260:  R_AARCH64_CALL26	queue_work_on
    8264: 14000009     	b	0x8288 <aw_rtp_store+0x170>
    8268: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    826c: 91000000     	add	x0, x0, #0x0
		000000000000826c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    8270: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8274: 91000021     	add	x1, x1, #0x0
		0000000000008274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8278: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f8
    827c: 91000063     	add	x3, x3, #0x0
		000000000000827c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f8
    8280: 528148e2     	mov	w2, #0xa47              // =2631
    8284: 94000000     	bl	0x8284 <aw_rtp_store+0x16c>
		0000000000008284:  R_AARCH64_CALL26	_printk
    8288: 910922a0     	add	x0, x21, #0x248
    828c: 94000000     	bl	0x828c <aw_rtp_store+0x174>
		000000000000828c:  R_AARCH64_CALL26	mutex_unlock
    8290: d5384108     	mrs	x8, SP_EL0
    8294: f9438908     	ldr	x8, [x8, #0x710]
    8298: f94007e9     	ldr	x9, [sp, #0x8]
    829c: eb09011f     	cmp	x8, x9
    82a0: 54000101     	b.ne	0x82c0 <aw_rtp_store+0x1a8>
    82a4: aa1303e0     	mov	x0, x19
    82a8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    82ac: f94013f5     	ldr	x21, [sp, #0x20]
    82b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    82b4: 910103ff     	add	sp, sp, #0x40
    82b8: d50323bf     	autiasp
    82bc: d65f03c0     	ret
    82c0: 94000000     	bl	0x82c0 <aw_rtp_store+0x1a8>
		00000000000082c0:  R_AARCH64_CALL26	__stack_chk_fail
