
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f2d8 <syna_tcm_testing_0002_check_config_id>:
    f2d8: 2a1f03e8     	mov	w8, wzr
    f2dc: b4000360     	cbz	x0, 0xf348 <syna_tcm_testing_0002_check_config_id+0x70>
    f2e0: aa0103e3     	mov	x3, x1
    f2e4: b4000321     	cbz	x1, 0xf348 <syna_tcm_testing_0002_check_config_id+0x70>
    f2e8: 37f80122     	tbnz	w2, #0x1f, 0xf30c <syna_tcm_testing_0002_check_config_id+0x34>
    f2ec: 2a1f03e8     	mov	w8, wzr
    f2f0: 3868c809     	ldrb	w9, [x0, w8, sxtw]
    f2f4: 3868c86a     	ldrb	w10, [x3, w8, sxtw]
    f2f8: 6b0a013f     	cmp	w9, w10
    f2fc: 540000c1     	b.ne	0xf314 <syna_tcm_testing_0002_check_config_id+0x3c>
    f300: 11000508     	add	w8, w8, #0x1
    f304: 6b02011f     	cmp	w8, w2
    f308: 54ffff4d     	b.le	0xf2f0 <syna_tcm_testing_0002_check_config_id+0x18>
    f30c: 52800020     	mov	w0, #0x1                // =1
    f310: d65f03c0     	ret
    f314: d503233f     	paciasp
    f318: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    f31c: 910003fd     	mov	x29, sp
    f320: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afcf
    f324: 91000108     	add	x8, x8, #0x0
		000000000000f324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afcf
    f328: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c027
    f32c: 91000021     	add	x1, x1, #0x0
		000000000000f32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c027
    f330: aa0003e2     	mov	x2, x0
    f334: aa0803e0     	mov	x0, x8
    f338: 94000000     	bl	0xf338 <syna_tcm_testing_0002_check_config_id+0x60>
		000000000000f338:  R_AARCH64_CALL26	_printk
    f33c: 2a1f03e8     	mov	w8, wzr
    f340: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    f344: d50323bf     	autiasp
    f348: 2a0803e0     	mov	w0, w8
    f34c: d65f03c0     	ret
