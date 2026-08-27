
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009fa4 <syna_dev_set_play_game>:
    9fa4: d503233f     	paciasp
    9fa8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9fac: f9000bf5     	str	x21, [sp, #0x10]
    9fb0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9fb4: 910003fd     	mov	x29, sp
    9fb8: 2a0103f4     	mov	w20, w1
    9fbc: 2a0203f3     	mov	w19, w2
    9fc0: aa0003f5     	mov	x21, x0
    9fc4: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x240>
		0000000000009fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253b
    9fc8: 91000000     	add	x0, x0, #0x0
		0000000000009fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253b
    9fcc: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x240>
		0000000000009fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e9
    9fd0: 91000021     	add	x1, x1, #0x0
		0000000000009fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e9
    9fd4: 2a1403e2     	mov	w2, w20
    9fd8: 94000000     	bl	0x9fd8 <syna_dev_set_play_game+0x34>
		0000000000009fd8:  R_AARCH64_CALL26	_printk
    9fdc: b4000115     	cbz	x21, 0x9ffc <syna_dev_set_play_game+0x58>
    9fe0: f94002a0     	ldr	x0, [x21]
    9fe4: 2a140682     	orr	w2, w20, w20, lsl #1
    9fe8: 52801aa1     	mov	w1, #0xd5               // =213
    9fec: 2a1303e3     	mov	w3, w19
    9ff0: 94000000     	bl	0x9ff0 <syna_dev_set_play_game+0x4c>
		0000000000009ff0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9ff4: 0a807c00     	and	w0, w0, w0, asr #31
    9ff8: 14000002     	b	0xa000 <syna_dev_set_play_game+0x5c>
    9ffc: 128002a0     	mov	w0, #-0x16              // =-22
    a000: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a004: f9400bf5     	ldr	x21, [sp, #0x10]
    a008: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a00c: d50323bf     	autiasp
    a010: d65f03c0     	ret
