
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ce30 <tpd_set_screen_off_awake>:
    ce30: f946dc08     	ldr	x8, [x0, #0xdb8]
    ce34: b9457d09     	ldr	w9, [x8, #0x57c]
    ce38: b905f501     	str	w1, [x8, #0x5f4]
    ce3c: 7100053f     	cmp	w9, #0x1
    ce40: 540000c1     	b.ne	0xce58 <tpd_set_screen_off_awake+0x28>
    ce44: b905f101     	str	w1, [x8, #0x5f0]
    ce48: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce48:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
    ce4c: 2a1f03e0     	mov	w0, wzr
    ce50: b9000101     	str	w1, [x8]
		000000000000ce50:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
    ce54: d65f03c0     	ret
    ce58: d503233f     	paciasp
    ce5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    ce60: 910003fd     	mov	x29, sp
    ce64: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce64:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
    ce68: 91000000     	add	x0, x0, #0x0
		000000000000ce68:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
    ce6c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c509
    ce70: 91000021     	add	x1, x1, #0x0
		000000000000ce70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c509
    ce74: 94000000     	bl	0xce74 <tpd_set_screen_off_awake+0x44>
		000000000000ce74:  R_AARCH64_CALL26	_printk
    ce78: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    ce7c: d50323bf     	autiasp
    ce80: 2a1f03e0     	mov	w0, wzr
    ce84: d65f03c0     	ret
