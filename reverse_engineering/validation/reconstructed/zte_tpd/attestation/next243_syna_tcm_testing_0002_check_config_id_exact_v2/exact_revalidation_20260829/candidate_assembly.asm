
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f27c <syna_tcm_testing_0002_check_config_id>:
    f27c: 2a1f03e8     	mov	w8, wzr
    f280: b4000360     	cbz	x0, 0xf2ec <syna_tcm_testing_0002_check_config_id+0x70>
    f284: aa0103e3     	mov	x3, x1
    f288: b4000321     	cbz	x1, 0xf2ec <syna_tcm_testing_0002_check_config_id+0x70>
    f28c: 37f80122     	tbnz	w2, #0x1f, 0xf2b0 <syna_tcm_testing_0002_check_config_id+0x34>
    f290: 2a1f03e8     	mov	w8, wzr
    f294: 3868c809     	ldrb	w9, [x0, w8, sxtw]
    f298: 3868c86a     	ldrb	w10, [x3, w8, sxtw]
    f29c: 6b0a013f     	cmp	w9, w10
    f2a0: 540000c1     	b.ne	0xf2b8 <syna_tcm_testing_0002_check_config_id+0x3c>
    f2a4: 11000508     	add	w8, w8, #0x1
    f2a8: 6b02011f     	cmp	w8, w2
    f2ac: 54ffff4d     	b.le	0xf294 <syna_tcm_testing_0002_check_config_id+0x18>
    f2b0: 52800020     	mov	w0, #0x1                // =1
    f2b4: d65f03c0     	ret
    f2b8: d503233f     	paciasp
    f2bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    f2c0: 910003fd     	mov	x29, sp
    f2c4: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f2c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afcf
    f2c8: 91000108     	add	x8, x8, #0x0
		000000000000f2c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afcf
    f2cc: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f2cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c027
    f2d0: 91000021     	add	x1, x1, #0x0
		000000000000f2d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c027
    f2d4: aa0003e2     	mov	x2, x0
    f2d8: aa0803e0     	mov	x0, x8
    f2dc: 94000000     	bl	0xf2dc <syna_tcm_testing_0002_check_config_id+0x60>
		000000000000f2dc:  R_AARCH64_CALL26	_printk
    f2e0: 2a1f03e8     	mov	w8, wzr
    f2e4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    f2e8: d50323bf     	autiasp
    f2ec: 2a0803e0     	mov	w0, w8
    f2f0: d65f03c0     	ret
