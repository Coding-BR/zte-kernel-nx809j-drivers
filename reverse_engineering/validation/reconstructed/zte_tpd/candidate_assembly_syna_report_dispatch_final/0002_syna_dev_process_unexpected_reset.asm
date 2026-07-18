
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000961c <syna_dev_process_unexpected_reset>:
    961c: d503233f     	paciasp
    9620: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9624: f9000bf3     	str	x19, [sp, #0x10]
    9628: 910003fd     	mov	x29, sp
    962c: b4000123     	cbz	x3, 0x9650 <syna_dev_process_unexpected_reset+0x34>
    9630: b9457c68     	ldr	w8, [x3, #0x57c]
    9634: 7100051f     	cmp	w8, #0x1
    9638: 540001a0     	b.eq	0x966c <syna_dev_process_unexpected_reset+0x50>
    963c: 2a1f03e0     	mov	w0, wzr
    9640: f9400bf3     	ldr	x19, [sp, #0x10]
    9644: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9648: d50323bf     	autiasp
    964c: d65f03c0     	ret
    9650: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009650:  R_AARCH64_ADR_PREL_PG_HI21	unk_38D56
    9654: 91000000     	add	x0, x0, #0x0
		0000000000009654:  R_AARCH64_ADD_ABS_LO12_NC	unk_38D56
    9658: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46da
    965c: 91000021     	add	x1, x1, #0x0
		000000000000965c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46da
    9660: 94000000     	bl	0x9660 <syna_dev_process_unexpected_reset+0x44>
		0000000000009660:  R_AARCH64_CALL26	_printk
    9664: 128002a0     	mov	w0, #-0x16              // =-22
    9668: 17fffff6     	b	0x9640 <syna_dev_process_unexpected_reset+0x24>
    966c: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		000000000000966c:  R_AARCH64_ADR_PREL_PG_HI21	unk_32499
    9670: 91000000     	add	x0, x0, #0x0
		0000000000009670:  R_AARCH64_ADD_ABS_LO12_NC	unk_32499
    9674: 90000001     	adrp	x1, 0x9000 <syna_dev_probe+0x4c0>
		0000000000009674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46da
    9678: 91000021     	add	x1, x1, #0x0
		0000000000009678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46da
    967c: aa0303f3     	mov	x19, x3
    9680: 94000000     	bl	0x9680 <syna_dev_process_unexpected_reset+0x64>
		0000000000009680:  R_AARCH64_CALL26	_printk
    9684: f942a669     	ldr	x9, [x19, #0x548]
    9688: b4000169     	cbz	x9, 0x96b4 <syna_dev_process_unexpected_reset+0x98>
    968c: b9452269     	ldr	w9, [x19, #0x520]
    9690: aa1303e8     	mov	x8, x19
    9694: 35fffd49     	cbnz	w9, 0x963c <syna_dev_process_unexpected_reset+0x20>
    9698: f942a501     	ldr	x1, [x8, #0x548]
    969c: 52800029     	mov	w9, #0x1                // =1
    96a0: 9114a102     	add	x2, x8, #0x528
    96a4: 52800400     	mov	w0, #0x20               // =32
    96a8: b9052109     	str	w9, [x8, #0x520]
    96ac: 94000000     	bl	0x96ac <syna_dev_process_unexpected_reset+0x90>
		00000000000096ac:  R_AARCH64_CALL26	queue_work_on
    96b0: 17ffffe3     	b	0x963c <syna_dev_process_unexpected_reset+0x20>
    96b4: 90000000     	adrp	x0, 0x9000 <syna_dev_probe+0x4c0>
		00000000000096b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BEBC
    96b8: 91000000     	add	x0, x0, #0x0
		00000000000096b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BEBC
    96bc: 17ffffe7     	b	0x9658 <syna_dev_process_unexpected_reset+0x3c>
