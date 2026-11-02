
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a448 <syna_dev_set_charger_mode>:
    a448: d503233f     	paciasp
    a44c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a450: f9000bf5     	str	x21, [sp, #0x10]
    a454: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a458: 910003fd     	mov	x29, sp
    a45c: 2a0103f4     	mov	w20, w1
    a460: 2a0203f3     	mov	w19, w2
    a464: aa0003f5     	mov	x21, x0
    a468: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942b
    a46c: 91000000     	add	x0, x0, #0x0
		000000000000a46c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942b
    a470: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d78
    a474: 91000021     	add	x1, x1, #0x0
		000000000000a474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d78
    a478: 2a1403e2     	mov	w2, w20
    a47c: 94000000     	bl	0xa47c <syna_dev_set_charger_mode+0x34>
		000000000000a47c:  R_AARCH64_CALL26	_printk
    a480: b4000115     	cbz	x21, 0xa4a0 <syna_dev_set_charger_mode+0x58>
    a484: f94002a0     	ldr	x0, [x21]
    a488: 528000e1     	mov	w1, #0x7                // =7
    a48c: 2a1403e2     	mov	w2, w20
    a490: 2a1303e3     	mov	w3, w19
    a494: 94000000     	bl	0xa494 <syna_dev_set_charger_mode+0x4c>
		000000000000a494:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a498: 0a807c00     	and	w0, w0, w0, asr #31
    a49c: 14000002     	b	0xa4a4 <syna_dev_set_charger_mode+0x5c>
    a4a0: 128002a0     	mov	w0, #-0x16              // =-22
    a4a4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a4a8: f9400bf5     	ldr	x21, [sp, #0x10]
    a4ac: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a4b0: d50323bf     	autiasp
    a4b4: d65f03c0     	ret
