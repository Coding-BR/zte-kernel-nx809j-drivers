
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a4bc <syna_dev_set_play_game>:
    a4bc: d503233f     	paciasp
    a4c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a4c4: f9000bf5     	str	x21, [sp, #0x10]
    a4c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a4cc: 910003fd     	mov	x29, sp
    a4d0: 2a0103f4     	mov	w20, w1
    a4d4: 2a0203f3     	mov	w19, w2
    a4d8: aa0003f5     	mov	x21, x0
    a4dc: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a4dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942b
    a4e0: 91000000     	add	x0, x0, #0x0
		000000000000a4e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942b
    a4e4: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a4e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b58
    a4e8: 91000021     	add	x1, x1, #0x0
		000000000000a4e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b58
    a4ec: 2a1403e2     	mov	w2, w20
    a4f0: 94000000     	bl	0xa4f0 <syna_dev_set_play_game+0x34>
		000000000000a4f0:  R_AARCH64_CALL26	_printk
    a4f4: b4000115     	cbz	x21, 0xa514 <syna_dev_set_play_game+0x58>
    a4f8: f94002a0     	ldr	x0, [x21]
    a4fc: 2a140682     	orr	w2, w20, w20, lsl #1
    a500: 52801aa1     	mov	w1, #0xd5               // =213
    a504: 2a1303e3     	mov	w3, w19
    a508: 94000000     	bl	0xa508 <syna_dev_set_play_game+0x4c>
		000000000000a508:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a50c: 0a807c00     	and	w0, w0, w0, asr #31
    a510: 14000002     	b	0xa518 <syna_dev_set_play_game+0x5c>
    a514: 128002a0     	mov	w0, #-0x16              // =-22
    a518: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a51c: f9400bf5     	ldr	x21, [sp, #0x10]
    a520: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a524: d50323bf     	autiasp
    a528: d65f03c0     	ret
