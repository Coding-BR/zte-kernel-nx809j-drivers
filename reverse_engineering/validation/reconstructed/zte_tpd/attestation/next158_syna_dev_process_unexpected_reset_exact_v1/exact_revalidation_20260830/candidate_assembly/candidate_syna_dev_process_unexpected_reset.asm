
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a26c <syna_dev_process_unexpected_reset>:
    a26c: d503233f     	paciasp
    a270: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a274: f9000bf3     	str	x19, [sp, #0x10]
    a278: 910003fd     	mov	x29, sp
    a27c: b4000123     	cbz	x3, 0xa2a0 <syna_dev_process_unexpected_reset+0x34>
    a280: b9457c68     	ldr	w8, [x3, #0x57c]
    a284: 7100051f     	cmp	w8, #0x1
    a288: 540001a0     	b.eq	0xa2bc <syna_dev_process_unexpected_reset+0x50>
    a28c: 2a1f03e0     	mov	w0, wzr
    a290: f9400bf3     	ldr	x19, [sp, #0x10]
    a294: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a298: d50323bf     	autiasp
    a29c: d65f03c0     	ret
    a2a0: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a2a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_38D56
    a2a4: 91000000     	add	x0, x0, #0x0
		000000000000a2a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_38D56
    a2a8: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a2a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6da
    a2ac: 91000021     	add	x1, x1, #0x0
		000000000000a2ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6da
    a2b0: 94000000     	bl	0xa2b0 <syna_dev_process_unexpected_reset+0x44>
		000000000000a2b0:  R_AARCH64_CALL26	_printk
    a2b4: 128002a0     	mov	w0, #-0x16              // =-22
    a2b8: 17fffff6     	b	0xa290 <syna_dev_process_unexpected_reset+0x24>
    a2bc: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a2bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_32499
    a2c0: 91000000     	add	x0, x0, #0x0
		000000000000a2c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_32499
    a2c4: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a2c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6da
    a2c8: 91000021     	add	x1, x1, #0x0
		000000000000a2c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6da
    a2cc: aa0303f3     	mov	x19, x3
    a2d0: 94000000     	bl	0xa2d0 <syna_dev_process_unexpected_reset+0x64>
		000000000000a2d0:  R_AARCH64_CALL26	_printk
    a2d4: f942a661     	ldr	x1, [x19, #0x548]
    a2d8: b4000141     	cbz	x1, 0xa300 <syna_dev_process_unexpected_reset+0x94>
    a2dc: b9452269     	ldr	w9, [x19, #0x520]
    a2e0: aa1303e8     	mov	x8, x19
    a2e4: 35fffd49     	cbnz	w9, 0xa28c <syna_dev_process_unexpected_reset+0x20>
    a2e8: 52800029     	mov	w9, #0x1                // =1
    a2ec: 9114a102     	add	x2, x8, #0x528
    a2f0: 52800400     	mov	w0, #0x20               // =32
    a2f4: b9052109     	str	w9, [x8, #0x520]
    a2f8: 94000000     	bl	0xa2f8 <syna_dev_process_unexpected_reset+0x8c>
		000000000000a2f8:  R_AARCH64_CALL26	queue_work_on
    a2fc: 17ffffe4     	b	0xa28c <syna_dev_process_unexpected_reset+0x20>
    a300: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a300:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BEBC
    a304: 91000000     	add	x0, x0, #0x0
		000000000000a304:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BEBC
    a308: 17ffffe8     	b	0xa2a8 <syna_dev_process_unexpected_reset+0x3c>
