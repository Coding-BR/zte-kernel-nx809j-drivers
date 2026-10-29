
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001874 <aw8693x_set_pwm>:
    1874: d503233f     	paciasp
    1878: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    187c: 910003fd     	mov	x29, sp
    1880: 12001c28     	and	w8, w1, #0xff
    1884: 7100051f     	cmp	w8, #0x1
    1888: 5400010c     	b.gt	0x18a8 <aw8693x_set_pwm+0x34>
    188c: 340001e8     	cbz	w8, 0x18c8 <aw8693x_set_pwm+0x54>
    1890: 7100051f     	cmp	w8, #0x1
    1894: 54000301     	b.ne	0x18f4 <aw8693x_set_pwm+0x80>
    1898: 528008c1     	mov	w1, #0x46               // =70
    189c: 12800c02     	mov	w2, #-0x61              // =-97
    18a0: 2a1f03e3     	mov	w3, wzr
    18a4: 14000010     	b	0x18e4 <aw8693x_set_pwm+0x70>
    18a8: 7100091f     	cmp	w8, #0x2
    18ac: 54000160     	b.eq	0x18d8 <aw8693x_set_pwm+0x64>
    18b0: 71000d1f     	cmp	w8, #0x3
    18b4: 54000201     	b.ne	0x18f4 <aw8693x_set_pwm+0x80>
    18b8: 528008c1     	mov	w1, #0x46               // =70
    18bc: 12800c02     	mov	w2, #-0x61              // =-97
    18c0: 52800c03     	mov	w3, #0x60               // =96
    18c4: 14000008     	b	0x18e4 <aw8693x_set_pwm+0x70>
    18c8: 528008c1     	mov	w1, #0x46               // =70
    18cc: 12800c02     	mov	w2, #-0x61              // =-97
    18d0: 52800403     	mov	w3, #0x20               // =32
    18d4: 14000004     	b	0x18e4 <aw8693x_set_pwm+0x70>
    18d8: 528008c1     	mov	w1, #0x46               // =70
    18dc: 12800c02     	mov	w2, #-0x61              // =-97
    18e0: 52800803     	mov	w3, #0x40               // =64
    18e4: 94000000     	bl	0x18e4 <aw8693x_set_pwm+0x70>
		00000000000018e4:  R_AARCH64_CALL26	i2c_w_bits
    18e8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    18ec: d50323bf     	autiasp
    18f0: d65f03c0     	ret
    18f4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000018f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x372
    18f8: 91000000     	add	x0, x0, #0x0
		00000000000018f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x372
    18fc: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		00000000000018fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1900: 91000021     	add	x1, x1, #0x0
		0000000000001900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1904: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce1
    1908: 91000063     	add	x3, x3, #0x0
		0000000000001908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce1
    190c: 52802ac2     	mov	w2, #0x156              // =342
    1910: 94000000     	bl	0x1910 <aw8693x_set_pwm+0x9c>
		0000000000001910:  R_AARCH64_CALL26	_printk
    1914: 17fffff5     	b	0x18e8 <aw8693x_set_pwm+0x74>
