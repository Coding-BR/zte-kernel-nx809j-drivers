
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005630 <aw9620x_read_ack_irq>:
    5630: d503233f     	paciasp
    5634: d101c3ff     	sub	sp, sp, #0x70
    5638: a9017bfd     	stp	x29, x30, [sp, #0x10]
    563c: f90013fb     	str	x27, [sp, #0x20]
    5640: a90367fa     	stp	x26, x25, [sp, #0x30]
    5644: a9045ff8     	stp	x24, x23, [sp, #0x40]
    5648: a90557f6     	stp	x22, x21, [sp, #0x50]
    564c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    5650: 910043fd     	add	x29, sp, #0x10
    5654: d5384108     	mrs	x8, SP_EL0
    5658: 52800149     	mov	w9, #0xa                // =10
    565c: aa0003f3     	mov	x19, x0
    5660: f9438908     	ldr	x8, [x8, #0x710]
    5664: 90000014     	adrp	x20, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5668: 91000294     	add	x20, x20, #0x0
		0000000000005668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    566c: 90000015     	adrp	x21, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000566c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3012
    5670: 910002b5     	add	x21, x21, #0x0
		0000000000005670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3012
    5674: 90000016     	adrp	x22, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x893
    5678: 910002d6     	add	x22, x22, #0x0
		0000000000005678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x893
    567c: f90007e8     	str	x8, [sp, #0x8]
    5680: 90000017     	adrp	x23, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5684: 910002f7     	add	x23, x23, #0x0
		0000000000005684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5688: b9402408     	ldr	w8, [x0, #0x24]
    568c: 90000019     	adrp	x25, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000568c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x257b
    5690: 91000339     	add	x25, x25, #0x0
		0000000000005690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x257b
    5694: b90007ff     	str	wzr, [sp, #0x4]
    5698: 71000d1f     	cmp	w8, #0x3
    569c: 52800c88     	mov	w8, #0x64               // =100
    56a0: 1a890118     	csel	w24, w8, w9, eq
    56a4: 910013e2     	add	x2, sp, #0x4
    56a8: aa1303e0     	mov	x0, x19
    56ac: 52888201     	mov	w1, #0x4410             // =17424
    56b0: 97fff914     	bl	0x3b00 <aw9620x_i2c_read>
    56b4: b94007fa     	ldr	w26, [sp, #0x4]
    56b8: f9401a61     	ldr	x1, [x19, #0x30]
    56bc: 2a0003fb     	mov	w27, w0
    56c0: aa1403e0     	mov	x0, x20
    56c4: aa1503e2     	mov	x2, x21
    56c8: aa1603e3     	mov	x3, x22
    56cc: 5280e7e4     	mov	w4, #0x73f              // =1855
    56d0: 2a1a03e5     	mov	w5, w26
    56d4: 94000000     	bl	0x56d4 <aw9620x_read_ack_irq+0xa4>
		00000000000056d4:  R_AARCH64_CALL26	_dev_printk
    56d8: 3500035b     	cbnz	w27, 0x5740 <aw9620x_read_ack_irq+0x110>
    56dc: f9401a61     	ldr	x1, [x19, #0x30]
    56e0: 37e8047a     	tbnz	w26, #0x1d, 0x576c <aw9620x_read_ack_irq+0x13c>
    56e4: aa1703e0     	mov	x0, x23
    56e8: aa1903e2     	mov	x2, x25
    56ec: aa1603e3     	mov	x3, x22
    56f0: 5280e904     	mov	w4, #0x748              // =1864
    56f4: 2a1a03e5     	mov	w5, w26
    56f8: 2a1803e6     	mov	w6, w24
    56fc: 94000000     	bl	0x56fc <aw9620x_read_ack_irq+0xcc>
		00000000000056fc:  R_AARCH64_CALL26	_dev_printk
    5700: 52807d00     	mov	w0, #0x3e8              // =1000
    5704: 52807e41     	mov	w1, #0x3f2              // =1010
    5708: 52800042     	mov	w2, #0x2                // =2
    570c: 94000000     	bl	0x570c <aw9620x_read_ack_irq+0xdc>
		000000000000570c:  R_AARCH64_CALL26	usleep_range_state
    5710: 51000718     	sub	w24, w24, #0x1
    5714: 3100071f     	cmn	w24, #0x1
    5718: 54fffc61     	b.ne	0x56a4 <aw9620x_read_ack_irq+0x74>
    571c: f9401a61     	ldr	x1, [x19, #0x30]
    5720: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5724: 91000000     	add	x0, x0, #0x0
		0000000000005724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5728: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3506
    572c: 91000042     	add	x2, x2, #0x0
		000000000000572c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3506
    5730: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x893
    5734: 91000063     	add	x3, x3, #0x0
		0000000000005734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x893
    5738: 5280e9a4     	mov	w4, #0x74d              // =1869
    573c: 14000009     	b	0x5760 <aw9620x_read_ack_irq+0x130>
    5740: f9401a61     	ldr	x1, [x19, #0x30]
    5744: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5748: 91000000     	add	x0, x0, #0x0
		0000000000005748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    574c: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000574c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2994
    5750: 91000042     	add	x2, x2, #0x0
		0000000000005750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2994
    5754: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x893
    5758: 91000063     	add	x3, x3, #0x0
		0000000000005758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x893
    575c: 5280e824     	mov	w4, #0x741              // =1857
    5760: 94000000     	bl	0x5760 <aw9620x_read_ack_irq+0x130>
		0000000000005760:  R_AARCH64_CALL26	_dev_printk
    5764: 12800000     	mov	w0, #-0x1               // =-1
    5768: 1400000a     	b	0x5790 <aw9620x_read_ack_irq+0x160>
    576c: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000576c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    5770: 91000000     	add	x0, x0, #0x0
		0000000000005770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5774: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2195
    5778: 91000042     	add	x2, x2, #0x0
		0000000000005778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2195
    577c: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000577c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x893
    5780: 91000063     	add	x3, x3, #0x0
		0000000000005780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x893
    5784: 5280e8a4     	mov	w4, #0x745              // =1861
    5788: 94000000     	bl	0x5788 <aw9620x_read_ack_irq+0x158>
		0000000000005788:  R_AARCH64_CALL26	_dev_printk
    578c: 2a1f03e0     	mov	w0, wzr
    5790: d5384108     	mrs	x8, SP_EL0
    5794: f9438908     	ldr	x8, [x8, #0x710]
    5798: f94007e9     	ldr	x9, [sp, #0x8]
    579c: eb09011f     	cmp	x8, x9
    57a0: 54000141     	b.ne	0x57c8 <aw9620x_read_ack_irq+0x198>
    57a4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    57a8: f94013fb     	ldr	x27, [sp, #0x20]
    57ac: a94557f6     	ldp	x22, x21, [sp, #0x50]
    57b0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    57b4: a94367fa     	ldp	x26, x25, [sp, #0x30]
    57b8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    57bc: 9101c3ff     	add	sp, sp, #0x70
    57c0: d50323bf     	autiasp
    57c4: d65f03c0     	ret
    57c8: 94000000     	bl	0x57c8 <aw9620x_read_ack_irq+0x198>
		00000000000057c8:  R_AARCH64_CALL26	__stack_chk_fail
