
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024b0 <aw8693x_set_pwm>:
    24b0: d503233f     	paciasp
    24b4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    24b8: 910003fd     	mov	x29, sp
    24bc: 12001c28     	and	w8, w1, #0xff
    24c0: 7100051f     	cmp	w8, #0x1
    24c4: 5400010c     	b.gt	0x24e4 <aw8693x_set_pwm+0x34>
    24c8: 340001e8     	cbz	w8, 0x2504 <aw8693x_set_pwm+0x54>
    24cc: 7100051f     	cmp	w8, #0x1
    24d0: 54000301     	b.ne	0x2530 <aw8693x_set_pwm+0x80>
    24d4: 528008c1     	mov	w1, #0x46               // =70
    24d8: 12800c02     	mov	w2, #-0x61              // =-97
    24dc: 2a1f03e3     	mov	w3, wzr
    24e0: 14000010     	b	0x2520 <aw8693x_set_pwm+0x70>
    24e4: 7100091f     	cmp	w8, #0x2
    24e8: 54000160     	b.eq	0x2514 <aw8693x_set_pwm+0x64>
    24ec: 71000d1f     	cmp	w8, #0x3
    24f0: 54000201     	b.ne	0x2530 <aw8693x_set_pwm+0x80>
    24f4: 528008c1     	mov	w1, #0x46               // =70
    24f8: 12800c02     	mov	w2, #-0x61              // =-97
    24fc: 52800c03     	mov	w3, #0x60               // =96
    2500: 14000008     	b	0x2520 <aw8693x_set_pwm+0x70>
    2504: 528008c1     	mov	w1, #0x46               // =70
    2508: 12800c02     	mov	w2, #-0x61              // =-97
    250c: 52800403     	mov	w3, #0x20               // =32
    2510: 14000004     	b	0x2520 <aw8693x_set_pwm+0x70>
    2514: 528008c1     	mov	w1, #0x46               // =70
    2518: 12800c02     	mov	w2, #-0x61              // =-97
    251c: 52800803     	mov	w3, #0x40               // =64
    2520: 94000000     	bl	0x2520 <aw8693x_set_pwm+0x70>
		0000000000002520:  R_AARCH64_CALL26	i2c_w_bits
    2524: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2528: d50323bf     	autiasp
    252c: d65f03c0     	ret
    2530: 90000000     	adrp	x0, 0x2000 <cont_save_store+0x78>
		0000000000002530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35
    2534: 91000000     	add	x0, x0, #0x0
		0000000000002534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35
    2538: 90000001     	adrp	x1, 0x2000 <cont_save_store+0x78>
		0000000000002538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    253c: 91000021     	add	x1, x1, #0x0
		000000000000253c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    2540: 90000003     	adrp	x3, 0x2000 <cont_save_store+0x78>
		0000000000002540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x144
    2544: 91000063     	add	x3, x3, #0x0
		0000000000002544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x144
    2548: 52802ac2     	mov	w2, #0x156              // =342
    254c: 94000000     	bl	0x254c <aw8693x_set_pwm+0x9c>
		000000000000254c:  R_AARCH64_CALL26	_printk
    2550: 17fffff5     	b	0x2524 <aw8693x_set_pwm+0x74>
