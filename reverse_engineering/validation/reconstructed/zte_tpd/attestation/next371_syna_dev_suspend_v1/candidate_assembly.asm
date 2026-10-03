
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aa08 <syna_dev_suspend>:
    aa08: d503233f     	paciasp
    aa0c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    aa10: f9000bf5     	str	x21, [sp, #0x10]
    aa14: a9024ff4     	stp	x20, x19, [sp, #0x20]
    aa18: 910003fd     	mov	x29, sp
    aa1c: f9404c13     	ldr	x19, [x0, #0x98]
    aa20: b9457e68     	ldr	w8, [x19, #0x57c]
    aa24: 7100051f     	cmp	w8, #0x1
    aa28: 540000e0     	b.eq	0xaa44 <syna_dev_suspend+0x3c>
    aa2c: 2a1f03e0     	mov	w0, wzr
    aa30: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    aa34: f9400bf5     	ldr	x21, [sp, #0x10]
    aa38: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    aa3c: d50323bf     	autiasp
    aa40: d65f03c0     	ret
    aa44: 90000014     	adrp	x20, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000aa44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d73
    aa48: 91000294     	add	x20, x20, #0x0
		000000000000aa48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d73
    aa4c: f9413a75     	ldr	x21, [x19, #0x270]
    aa50: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000aa50:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BF3F
    aa54: 91000000     	add	x0, x0, #0x0
		000000000000aa54:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BF3F
    aa58: aa1403e1     	mov	x1, x20
    aa5c: 94000000     	bl	0xaa5c <syna_dev_suspend+0x54>
		000000000000aa5c:  R_AARCH64_CALL26	_printk
    aa60: b945b268     	ldr	w8, [x19, #0x5b0]
    aa64: b945c669     	ldr	w9, [x19, #0x5c4]
    aa68: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000aa68:  R_AARCH64_ADR_PREL_PG_HI21	unk_347BF
    aa6c: 91000000     	add	x0, x0, #0x0
		000000000000aa6c:  R_AARCH64_ADD_ABS_LO12_NC	unk_347BF
    aa70: aa1403e1     	mov	x1, x20
    aa74: 2a080128     	orr	w8, w9, w8
    aa78: 7100011f     	cmp	w8, #0x0
    aa7c: 1a9f07e2     	cset	w2, ne
    aa80: 39160662     	strb	w2, [x19, #0x581]
    aa84: 94000000     	bl	0xaa84 <syna_dev_suspend+0x7c>
		000000000000aa84:  R_AARCH64_CALL26	_printk
    aa88: b4000893     	cbz	x19, 0xab98 <syna_dev_suspend+0x190>
    aa8c: f9413a68     	ldr	x8, [x19, #0x270]
    aa90: f9400260     	ldr	x0, [x19]
    aa94: b940b909     	ldr	w9, [x8, #0xb8]
    aa98: 34000069     	cbz	w9, 0xaaa4 <syna_dev_suspend+0x9c>
    aa9c: 3942f108     	ldrb	w8, [x8, #0xbc]
    aaa0: 37000068     	tbnz	w8, #0x0, 0xaaac <syna_dev_suspend+0xa4>
    aaa4: b9420c02     	ldr	w2, [x0, #0x20c]
    aaa8: 14000002     	b	0xaab0 <syna_dev_suspend+0xa8>
    aaac: 2a1f03e2     	mov	w2, wzr
    aab0: 39560668     	ldrb	w8, [x19, #0x581]
    aab4: 7100051f     	cmp	w8, #0x1
    aab8: 54000101     	b.ne	0xaad8 <syna_dev_suspend+0xd0>
    aabc: aa1303e0     	mov	x0, x19
    aac0: 52800021     	mov	w1, #0x1                // =1
    aac4: 94000000     	bl	0xaac4 <syna_dev_suspend+0xbc>
		000000000000aac4:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
    aac8: 36f80120     	tbz	w0, #0x1f, 0xaaec <syna_dev_suspend+0xe4>
    aacc: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000aacc:  R_AARCH64_ADR_PREL_PG_HI21	unk_37671
    aad0: 91000000     	add	x0, x0, #0x0
		000000000000aad0:  R_AARCH64_ADD_ABS_LO12_NC	unk_37671
    aad4: 1400002e     	b	0xab8c <syna_dev_suspend+0x184>
    aad8: 39560268     	ldrb	w8, [x19, #0x580]
    aadc: 370000c8     	tbnz	w8, #0x0, 0xaaf4 <syna_dev_suspend+0xec>
    aae0: 52800021     	mov	w1, #0x1                // =1
    aae4: 94000000     	bl	0xaae4 <syna_dev_suspend+0xdc>
		000000000000aae4:  R_AARCH64_CALL26	syna_tcm_sleep
    aae8: 37f804e0     	tbnz	w0, #0x1f, 0xab84 <syna_dev_suspend+0x17c>
    aaec: 52800c80     	mov	w0, #0x64               // =100
    aaf0: 94000000     	bl	0xaaf0 <syna_dev_suspend+0xe8>
		000000000000aaf0:  R_AARCH64_CALL26	msleep
    aaf4: 52800048     	mov	w8, #0x2                // =2
    aaf8: aa1303e0     	mov	x0, x19
    aafc: b9057e68     	str	w8, [x19, #0x57c]
    ab00: 94000000     	bl	0xab00 <syna_dev_suspend+0xf8>
		000000000000ab00:  R_AARCH64_CALL26	syna_dev_free_input_events
    ab04: f9400260     	ldr	x0, [x19]
    ab08: 94000000     	bl	0xab08 <syna_dev_suspend+0x100>
		000000000000ab08:  R_AARCH64_CALL26	syna_tcm_clear_command_processing
    ab0c: 39560668     	ldrb	w8, [x19, #0x581]
    ab10: 37000308     	tbnz	w8, #0x0, 0xab70 <syna_dev_suspend+0x168>
    ab14: f94022b4     	ldr	x20, [x21, #0x40]
    ab18: b40002d4     	cbz	x20, 0xab70 <syna_dev_suspend+0x168>
    ab1c: b85fc288     	ldur	w8, [x20, #-0x4]
    ab20: 528c3629     	mov	w9, #0x61b1             // =25009
    ab24: 72a685c9     	movk	w9, #0x342e, lsl #16
    ab28: 6b09011f     	cmp	w8, w9
    ab2c: 54000100     	b.eq	0xab4c <syna_dev_suspend+0x144>
    ab30: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000ab30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    ab34: 91000000     	add	x0, x0, #0x0
		000000000000ab34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    ab38: 90000002     	adrp	x2, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000ab38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fb8
    ab3c: 91000042     	add	x2, x2, #0x0
		000000000000ab3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fb8
    ab40: 52904501     	mov	w1, #0x8228             // =33320
    ab44: 52800803     	mov	w3, #0x40               // =64
    ab48: 94000000     	bl	0xab48 <syna_dev_suspend+0x140>
		000000000000ab48:  R_AARCH64_CALL26	_printk
    ab4c: 910022a0     	add	x0, x21, #0x8
    ab50: aa1f03e1     	mov	x1, xzr
    ab54: b85fc290     	ldur	w16, [x20, #-0x4]
    ab58: 7280e7f1     	movk	w17, #0x73f
    ab5c: 72b8e2f1     	movk	w17, #0xc717, lsl #16
    ab60: 6b11021f     	cmp	w16, w17
    ab64: 54000040     	b.eq	0xab6c <syna_dev_suspend+0x164>
    ab68: d4304680     	brk	#0x8234
    ab6c: d63f0280     	blr	x20
    ab70: 2a1f03f4     	mov	w20, wzr
    ab74: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000ab74:  R_AARCH64_ADR_PREL_PG_HI21	unk_360F0
    ab78: 91000000     	add	x0, x0, #0x0
		000000000000ab78:  R_AARCH64_ADD_ABS_LO12_NC	unk_360F0
    ab7c: b905e27f     	str	wzr, [x19, #0x5e0]
    ab80: 14000009     	b	0xaba4 <syna_dev_suspend+0x19c>
    ab84: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000ab84:  R_AARCH64_ADR_PREL_PG_HI21	unk_376A7
    ab88: 91000000     	add	x0, x0, #0x0
		000000000000ab88:  R_AARCH64_ADD_ABS_LO12_NC	unk_376A7
    ab8c: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000ab8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7020
    ab90: 91000021     	add	x1, x1, #0x0
		000000000000ab90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7020
    ab94: 94000000     	bl	0xab94 <syna_dev_suspend+0x18c>
		000000000000ab94:  R_AARCH64_CALL26	_printk
    ab98: 12800094     	mov	w20, #-0x5              // =-5
    ab9c: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000ab9c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D163
    aba0: 91000000     	add	x0, x0, #0x0
		000000000000aba0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D163
    aba4: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000aba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d73
    aba8: 91000021     	add	x1, x1, #0x0
		000000000000aba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d73
    abac: 94000000     	bl	0xabac <syna_dev_suspend+0x1a4>
		000000000000abac:  R_AARCH64_CALL26	_printk
    abb0: 2a1403e0     	mov	w0, w20
    abb4: 17ffff9f     	b	0xaa30 <syna_dev_suspend+0x28>
