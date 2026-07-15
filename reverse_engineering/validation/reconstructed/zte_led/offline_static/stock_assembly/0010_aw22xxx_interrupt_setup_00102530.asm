
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001050 <aw22xxx_interrupt_setup>:
    1050: d503233f     	paciasp
    1054: d10143ff     	sub	sp, sp, #0x50
    1058: a9027bfd     	stp	x29, x30, [sp, #0x20]
    105c: f9001bf5     	str	x21, [sp, #0x30]
    1060: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1064: 910083fd     	add	x29, sp, #0x20
    1068: d5384108     	mrs	x8, SP_EL0
    106c: 90000014     	adrp	x20, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    1070: 91000294     	add	x20, x20, #0x0
		0000000000001070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    1074: f9438908     	ldr	x8, [x8, #0x710]
    1078: aa0003f3     	mov	x19, x0
    107c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000107c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1320
    1080: 91000021     	add	x1, x1, #0x0
		0000000000001080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1320
    1084: aa1403e0     	mov	x0, x20
    1088: f81f83a8     	stur	x8, [x29, #-0x8]
    108c: 94000000     	bl	0x108c <aw22xxx_interrupt_setup+0x3c>
		000000000000108c:  R_AARCH64_CALL26	_printk
    1090: 90000015     	adrp	x21, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f
    1094: 910002b5     	add	x21, x21, #0x0
		0000000000001094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f
    1098: aa1403e0     	mov	x0, x20
    109c: aa1503e1     	mov	x1, x21
    10a0: 390033ff     	strb	wzr, [sp, #0xc]
    10a4: 94000000     	bl	0x10a4 <aw22xxx_interrupt_setup+0x54>
		00000000000010a4:  R_AARCH64_CALL26	_printk
    10a8: 910033e2     	add	x2, sp, #0xc
    10ac: aa1303e0     	mov	x0, x19
    10b0: 52800141     	mov	w1, #0xa                // =10
    10b4: 97fffd26     	bl	0x54c <aw22xxx_i2c_read>
    10b8: 394033e2     	ldrb	w2, [sp, #0xc]
    10bc: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000010bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x387
    10c0: 91000000     	add	x0, x0, #0x0
		00000000000010c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x387
    10c4: aa1503e1     	mov	x1, x21
    10c8: 94000000     	bl	0x10c8 <aw22xxx_interrupt_setup+0x78>
		00000000000010c8:  R_AARCH64_CALL26	_printk
    10cc: 910043e2     	add	x2, sp, #0x10
    10d0: aa1303e0     	mov	x0, x19
    10d4: 52800121     	mov	w1, #0x9                // =9
    10d8: 390043ff     	strb	wzr, [sp, #0x10]
    10dc: 97fffd1c     	bl	0x54c <aw22xxx_i2c_read>
    10e0: 394043e8     	ldrb	w8, [sp, #0x10]
    10e4: aa1303e0     	mov	x0, x19
    10e8: 52800121     	mov	w1, #0x9                // =9
    10ec: 32000102     	orr	w2, w8, #0x1
    10f0: 390043e2     	strb	w2, [sp, #0x10]
    10f4: 97fffcca     	bl	0x41c <aw22xxx_i2c_write>
    10f8: d10033a2     	sub	x2, x29, #0xc
    10fc: aa1303e0     	mov	x0, x19
    1100: 52800121     	mov	w1, #0x9                // =9
    1104: 381f43bf     	sturb	wzr, [x29, #-0xc]
    1108: 97fffd11     	bl	0x54c <aw22xxx_i2c_read>
    110c: 385f43a8     	ldurb	w8, [x29, #-0xc]
    1110: aa1303e0     	mov	x0, x19
    1114: 52800121     	mov	w1, #0x9                // =9
    1118: 321c0102     	orr	w2, w8, #0x10
    111c: 381f43a2     	sturb	w2, [x29, #-0xc]
    1120: 97fffcbf     	bl	0x41c <aw22xxx_i2c_write>
    1124: d5384108     	mrs	x8, SP_EL0
    1128: f9438908     	ldr	x8, [x8, #0x710]
    112c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1130: eb09011f     	cmp	x8, x9
    1134: 540000e1     	b.ne	0x1150 <aw22xxx_interrupt_setup+0x100>
    1138: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    113c: f9401bf5     	ldr	x21, [sp, #0x30]
    1140: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1144: 910143ff     	add	sp, sp, #0x50
    1148: d50323bf     	autiasp
    114c: d65f03c0     	ret
    1150: 94000000     	bl	0x1150 <aw22xxx_interrupt_setup+0x100>
		0000000000001150:  R_AARCH64_CALL26	__stack_chk_fail
