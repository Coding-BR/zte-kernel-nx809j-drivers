
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000092d4 <syna_dev_process_unexpected_reset>:
    92d4: d503233f     	paciasp
    92d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    92dc: f9000bf3     	str	x19, [sp, #0x10]
    92e0: 910003fd     	mov	x29, sp
    92e4: b4000123     	cbz	x3, 0x9308 <syna_dev_process_unexpected_reset+0x34>
    92e8: b9457c68     	ldr	w8, [x3, #0x57c]
    92ec: 7100051f     	cmp	w8, #0x1
    92f0: 540001a0     	b.eq	0x9324 <syna_dev_process_unexpected_reset+0x50>
    92f4: 2a1f03e0     	mov	w0, wzr
    92f8: f9400bf3     	ldr	x19, [sp, #0x10]
    92fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9300: d50323bf     	autiasp
    9304: d65f03c0     	ret
    9308: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009308:  R_AARCH64_ADR_PREL_PG_HI21	unk_38D56
    930c: 91000000     	add	x0, x0, #0x0
		000000000000930c:  R_AARCH64_ADD_ABS_LO12_NC	unk_38D56
    9310: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f09
    9314: 91000021     	add	x1, x1, #0x0
		0000000000009314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f09
    9318: 94000000     	bl	0x9318 <syna_dev_process_unexpected_reset+0x44>
		0000000000009318:  R_AARCH64_CALL26	_printk
    931c: 128002a0     	mov	w0, #-0x16              // =-22
    9320: 17fffff6     	b	0x92f8 <syna_dev_process_unexpected_reset+0x24>
    9324: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009324:  R_AARCH64_ADR_PREL_PG_HI21	unk_32499
    9328: 91000000     	add	x0, x0, #0x0
		0000000000009328:  R_AARCH64_ADD_ABS_LO12_NC	unk_32499
    932c: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		000000000000932c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f09
    9330: 91000021     	add	x1, x1, #0x0
		0000000000009330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f09
    9334: aa0303f3     	mov	x19, x3
    9338: 94000000     	bl	0x9338 <syna_dev_process_unexpected_reset+0x64>
		0000000000009338:  R_AARCH64_CALL26	_printk
    933c: f942a661     	ldr	x1, [x19, #0x548]
    9340: b4000141     	cbz	x1, 0x9368 <syna_dev_process_unexpected_reset+0x94>
    9344: b9452269     	ldr	w9, [x19, #0x520]
    9348: aa1303e8     	mov	x8, x19
    934c: 35fffd49     	cbnz	w9, 0x92f4 <syna_dev_process_unexpected_reset+0x20>
    9350: 52800029     	mov	w9, #0x1                // =1
    9354: 9114a102     	add	x2, x8, #0x528
    9358: 52800400     	mov	w0, #0x20               // =32
    935c: b9052109     	str	w9, [x8, #0x520]
    9360: 94000000     	bl	0x9360 <syna_dev_process_unexpected_reset+0x8c>
		0000000000009360:  R_AARCH64_CALL26	queue_work_on
    9364: 17ffffe4     	b	0x92f4 <syna_dev_process_unexpected_reset+0x20>
    9368: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009368:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BEBC
    936c: 91000000     	add	x0, x0, #0x0
		000000000000936c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BEBC
    9370: 17ffffe8     	b	0x9310 <syna_dev_process_unexpected_reset+0x3c>
