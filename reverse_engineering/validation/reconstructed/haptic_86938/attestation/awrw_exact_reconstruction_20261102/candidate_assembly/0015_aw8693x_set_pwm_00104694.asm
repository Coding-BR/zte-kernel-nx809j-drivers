
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002ab8 <aw8693x_set_pwm>:
    2ab8: d503233f     	paciasp
    2abc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2ac0: 910003fd     	mov	x29, sp
    2ac4: 12001c28     	and	w8, w1, #0xff
    2ac8: 7100051f     	cmp	w8, #0x1
    2acc: 5400010c     	b.gt	0x2aec <aw8693x_set_pwm+0x34>
    2ad0: 340001e8     	cbz	w8, 0x2b0c <aw8693x_set_pwm+0x54>
    2ad4: 7100051f     	cmp	w8, #0x1
    2ad8: 54000301     	b.ne	0x2b38 <aw8693x_set_pwm+0x80>
    2adc: 528008c1     	mov	w1, #0x46               // =70
    2ae0: 12800c02     	mov	w2, #-0x61              // =-97
    2ae4: 2a1f03e3     	mov	w3, wzr
    2ae8: 14000010     	b	0x2b28 <aw8693x_set_pwm+0x70>
    2aec: 7100091f     	cmp	w8, #0x2
    2af0: 54000160     	b.eq	0x2b1c <aw8693x_set_pwm+0x64>
    2af4: 71000d1f     	cmp	w8, #0x3
    2af8: 54000201     	b.ne	0x2b38 <aw8693x_set_pwm+0x80>
    2afc: 528008c1     	mov	w1, #0x46               // =70
    2b00: 12800c02     	mov	w2, #-0x61              // =-97
    2b04: 52800c03     	mov	w3, #0x60               // =96
    2b08: 14000008     	b	0x2b28 <aw8693x_set_pwm+0x70>
    2b0c: 528008c1     	mov	w1, #0x46               // =70
    2b10: 12800c02     	mov	w2, #-0x61              // =-97
    2b14: 52800403     	mov	w3, #0x20               // =32
    2b18: 14000004     	b	0x2b28 <aw8693x_set_pwm+0x70>
    2b1c: 528008c1     	mov	w1, #0x46               // =70
    2b20: 12800c02     	mov	w2, #-0x61              // =-97
    2b24: 52800803     	mov	w3, #0x40               // =64
    2b28: 94000000     	bl	0x2b28 <aw8693x_set_pwm+0x70>
		0000000000002b28:  R_AARCH64_CALL26	i2c_w_bits
    2b2c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2b30: d50323bf     	autiasp
    2b34: d65f03c0     	ret
    2b38: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251
    2b3c: 91000000     	add	x0, x0, #0x0
		0000000000002b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251
    2b40: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		0000000000002b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    2b44: 91000021     	add	x1, x1, #0x0
		0000000000002b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    2b48: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		0000000000002b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7db
    2b4c: 91000063     	add	x3, x3, #0x0
		0000000000002b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7db
    2b50: 52802ac2     	mov	w2, #0x156              // =342
    2b54: 94000000     	bl	0x2b54 <aw8693x_set_pwm+0x9c>
		0000000000002b54:  R_AARCH64_CALL26	_printk
    2b58: 17fffff5     	b	0x2b2c <aw8693x_set_pwm+0x74>
