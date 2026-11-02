
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b2b0 <syna_dev_set_play_game>:
    b2b0: d503233f     	paciasp
    b2b4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b2b8: f9000bf5     	str	x21, [sp, #0x10]
    b2bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b2c0: 910003fd     	mov	x29, sp
    b2c4: 2a0103f4     	mov	w20, w1
    b2c8: 2a0203f3     	mov	w19, w2
    b2cc: aa0003f5     	mov	x21, x0
    b2d0: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b2d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8f
    b2d4: 91000000     	add	x0, x0, #0x0
		000000000000b2d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8f
    b2d8: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b2d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b2
    b2dc: 91000021     	add	x1, x1, #0x0
		000000000000b2dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b2
    b2e0: 2a1403e2     	mov	w2, w20
    b2e4: 94000000     	bl	0xb2e4 <syna_dev_set_play_game+0x34>
		000000000000b2e4:  R_AARCH64_CALL26	_printk
    b2e8: b4000115     	cbz	x21, 0xb308 <syna_dev_set_play_game+0x58>
    b2ec: f94002a0     	ldr	x0, [x21]
    b2f0: 2a140682     	orr	w2, w20, w20, lsl #1
    b2f4: 52801aa1     	mov	w1, #0xd5               // =213
    b2f8: 2a1303e3     	mov	w3, w19
    b2fc: 94000000     	bl	0xb2fc <syna_dev_set_play_game+0x4c>
		000000000000b2fc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b300: 0a807c00     	and	w0, w0, w0, asr #31
    b304: 14000002     	b	0xb30c <syna_dev_set_play_game+0x5c>
    b308: 128002a0     	mov	w0, #-0x16              // =-22
    b30c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b310: f9400bf5     	ldr	x21, [sp, #0x10]
    b314: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b318: d50323bf     	autiasp
    b31c: d65f03c0     	ret
