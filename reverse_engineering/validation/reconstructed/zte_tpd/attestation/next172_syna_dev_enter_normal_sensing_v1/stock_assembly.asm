
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000da0c <syna_dev_enter_normal_sensing>:
    da0c: d503233f     	paciasp
    da10: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    da14: a9014ff4     	stp	x20, x19, [sp, #0x10]
    da18: 910003fd     	mov	x29, sp
    da1c: f9413808     	ldr	x8, [x0, #0x270]
    da20: aa0003f3     	mov	x19, x0
    da24: f9400000     	ldr	x0, [x0]
    da28: b940b909     	ldr	w9, [x8, #0xb8]
    da2c: 340000a9     	cbz	w9, 0xda40 <syna_dev_enter_normal_sensing+0x34>
    da30: 3942f108     	ldrb	w8, [x8, #0xbc]
    da34: 36000068     	tbz	w8, #0x0, 0xda40 <syna_dev_enter_normal_sensing+0x34>
    da38: 2a1f03f4     	mov	w20, wzr
    da3c: 14000002     	b	0xda44 <syna_dev_enter_normal_sensing+0x38>
    da40: b9420c14     	ldr	w20, [x0, #0x20c]
    da44: 2a1f03e1     	mov	w1, wzr
    da48: 2a1403e2     	mov	w2, w20
    da4c: 94000000     	bl	0xda4c <syna_dev_enter_normal_sensing+0x40>
		000000000000da4c:  R_AARCH64_CALL26	syna_tcm_sleep
    da50: 37f80200     	tbnz	w0, #0x1f, 0xda90 <syna_dev_enter_normal_sensing+0x84>
    da54: 39560668     	ldrb	w8, [x19, #0x581]
    da58: 7100051f     	cmp	w8, #0x1
    da5c: 54000101     	b.ne	0xda7c <syna_dev_enter_normal_sensing+0x70>
    da60: aa1303e0     	mov	x0, x19
    da64: 2a1f03e1     	mov	w1, wzr
    da68: 2a1403e2     	mov	w2, w20
    da6c: 94000015     	bl	0xdac0 <syna_dev_enable_lowpwr_gesture>
    da70: 37f80160     	tbnz	w0, #0x1f, 0xda9c <syna_dev_enter_normal_sensing+0x90>
    da74: 52800c80     	mov	w0, #0x64               // =100
    da78: 94000000     	bl	0xda78 <syna_dev_enter_normal_sensing+0x6c>
		000000000000da78:  R_AARCH64_CALL26	msleep
    da7c: 2a1f03e0     	mov	w0, wzr
    da80: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    da84: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    da88: d50323bf     	autiasp
    da8c: d65f03c0     	ret
    da90: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000da90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a0d
    da94: 91000108     	add	x8, x8, #0x0
		000000000000da94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a0d
    da98: 14000003     	b	0xdaa4 <syna_dev_enter_normal_sensing+0x98>
    da9c: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000da9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6289
    daa0: 91000108     	add	x8, x8, #0x0
		000000000000daa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6289
    daa4: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000daa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x868f
    daa8: 91000021     	add	x1, x1, #0x0
		000000000000daa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x868f
    daac: 2a0003f3     	mov	w19, w0
    dab0: aa0803e0     	mov	x0, x8
    dab4: 94000000     	bl	0xdab4 <syna_dev_enter_normal_sensing+0xa8>
		000000000000dab4:  R_AARCH64_CALL26	_printk
    dab8: 2a1303e0     	mov	w0, w19
    dabc: 17fffff1     	b	0xda80 <syna_dev_enter_normal_sensing+0x74>
