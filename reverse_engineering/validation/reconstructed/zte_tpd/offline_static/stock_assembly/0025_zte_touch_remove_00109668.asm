
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002de0 <zte_touch_remove>:
    2de0: d503233f     	paciasp
    2de4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2de8: 910003fd     	mov	x29, sp
    2dec: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7392
    2df0: 91000000     	add	x0, x0, #0x0
		0000000000002df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7392
    2df4: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8aff
    2df8: 91000021     	add	x1, x1, #0x0
		0000000000002df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8aff
    2dfc: 52816ae2     	mov	w2, #0xb57              // =2903
    2e00: 94000000     	bl	0x2e00 <zte_touch_remove+0x20>
		0000000000002e00:  R_AARCH64_CALL26	_printk
    2e04: 94001291     	bl	0x7848 <zte_touch_deinit>
    2e08: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2e0c: d50323bf     	autiasp
    2e10: d65f03c0     	ret
