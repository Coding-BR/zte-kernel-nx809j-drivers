
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ab24 <cali_store>:
    ab24: d503233f     	paciasp
    ab28: d10143ff     	sub	sp, sp, #0x50
    ab2c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ab30: a9025ff8     	stp	x24, x23, [sp, #0x20]
    ab34: a90357f6     	stp	x22, x21, [sp, #0x30]
    ab38: a9044ff4     	stp	x20, x19, [sp, #0x40]
    ab3c: 910043fd     	add	x29, sp, #0x10
    ab40: d5384109     	mrs	x9, SP_EL0
    ab44: aa0203e8     	mov	x8, x2
    ab48: 910013e2     	add	x2, sp, #0x4
    ab4c: f9438929     	ldr	x9, [x9, #0x710]
    ab50: 2a1f03e1     	mov	w1, wzr
    ab54: aa0303f3     	mov	x19, x3
    ab58: f90007e9     	str	x9, [sp, #0x8]
    ab5c: f9404c18     	ldr	x24, [x0, #0x98]
    ab60: aa0803e0     	mov	x0, x8
    ab64: b90007ff     	str	wzr, [sp, #0x4]
    ab68: 94000000     	bl	0xab68 <cali_store+0x44>
		000000000000ab68:  R_AARCH64_CALL26	kstrtouint
    ab6c: 37f80c20     	tbnz	w0, #0x1f, 0xacf0 <cali_store+0x1cc>
    ab70: b94007e8     	ldr	w8, [sp, #0x4]
    ab74: 34000c08     	cbz	w8, 0xacf4 <cali_store+0x1d0>
    ab78: 91092300     	add	x0, x24, #0x248
    ab7c: d102a314     	sub	x20, x24, #0xa8
    ab80: 94000000     	bl	0xab80 <cali_store+0x5c>
		000000000000ab80:  R_AARCH64_CALL26	mutex_lock
    ab84: f9429308     	ldr	x8, [x24, #0x520]
    ab88: b943c315     	ldr	w21, [x24, #0x3c0]
    ab8c: aa1403e0     	mov	x0, x20
    ab90: 394eeb16     	ldrb	w22, [x24, #0x3ba]
    ab94: 2a1f03e1     	mov	w1, wzr
    ab98: f9408d08     	ldr	x8, [x8, #0x118]
    ab9c: b85fc110     	ldur	w16, [x8, #-0x4]
    aba0: 728dd2b1     	movk	w17, #0x6e95
    aba4: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    aba8: 6b11021f     	cmp	w16, w17
    abac: 54000040     	b.eq	0xabb4 <cali_store+0x90>
    abb0: d4304500     	brk	#0x8228
    abb4: d63f0100     	blr	x8
    abb8: f9429308     	ldr	x8, [x24, #0x520]
    abbc: aa1403e0     	mov	x0, x20
    abc0: f9400108     	ldr	x8, [x8]
    abc4: b85fc110     	ldur	w16, [x8, #-0x4]
    abc8: 729e3e11     	movk	w17, #0xf1f0
    abcc: 72aa2591     	movk	w17, #0x512c, lsl #16
    abd0: 6b11021f     	cmp	w16, w17
    abd4: 54000040     	b.eq	0xabdc <cali_store+0xb8>
    abd8: d4304500     	brk	#0x8228
    abdc: d63f0100     	blr	x8
    abe0: 35000a40     	cbnz	w0, 0xad28 <cali_store+0x204>
    abe4: 52800c89     	mov	w9, #0x64               // =100
    abe8: 110192c8     	add	w8, w22, #0x64
    abec: 5290a3ea     	mov	w10, #0x851f            // =34079
    abf0: 4b160129     	sub	w9, w9, w22
    abf4: 1b157d08     	mul	w8, w8, w21
    abf8: 72aa3d6a     	movk	w10, #0x51eb, lsl #16
    abfc: 1b157d29     	mul	w9, w9, w21
    ac00: b85b8315     	ldur	w21, [x24, #-0x48]
    ac04: b943c304     	ldr	w4, [x24, #0x3c0]
    ac08: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ad6
    ac0c: 91000000     	add	x0, x0, #0x0
		000000000000ac0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ad6
    ac10: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ac14: 91000021     	add	x1, x1, #0x0
		000000000000ac14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ac18: 9baa7d08     	umull	x8, w8, w10
    ac1c: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ac20: 91000063     	add	x3, x3, #0x0
		000000000000ac20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ac24: 9baa7d29     	umull	x9, w9, w10
    ac28: 52805602     	mov	w2, #0x2b0              // =688
    ac2c: 2a1503e7     	mov	w7, w21
    ac30: d365fd16     	lsr	x22, x8, #37
    ac34: d365fd37     	lsr	x23, x9, #37
    ac38: 2a1603e6     	mov	w6, w22
    ac3c: 2a1703e5     	mov	w5, w23
    ac40: 94000000     	bl	0xac40 <cali_store+0x11c>
		000000000000ac40:  R_AARCH64_CALL26	_printk
    ac44: b85b8304     	ldur	w4, [x24, #-0x48]
    ac48: 6b17009f     	cmp	w4, w23
    ac4c: 54000803     	b.lo	0xad4c <cali_store+0x228>
    ac50: 6b16009f     	cmp	w4, w22
    ac54: 540007c8     	b.hi	0xad4c <cali_store+0x228>
    ac58: 90000016     	adrp	x22, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ac5c: 910002d6     	add	x22, x22, #0x0
		000000000000ac5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ac60: 90000017     	adrp	x23, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ac64: 910002f7     	add	x23, x23, #0x0
		000000000000ac64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ac68: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4802
    ac6c: 91000000     	add	x0, x0, #0x0
		000000000000ac6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4802
    ac70: aa1603e1     	mov	x1, x22
    ac74: 52805722     	mov	w2, #0x2b9              // =697
    ac78: aa1703e3     	mov	x3, x23
    ac7c: 2a1503e4     	mov	w4, w21
    ac80: 94000000     	bl	0xac80 <cali_store+0x15c>
		000000000000ac80:  R_AARCH64_CALL26	_printk
    ac84: b943c308     	ldr	w8, [x24, #0x3c0]
    ac88: 5290d409     	mov	w9, #0x86a0             // =34464
    ac8c: 0b1506aa     	add	w10, w21, w21, lsl #1
    ac90: 72a00029     	movk	w9, #0x1, lsl #16
    ac94: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000ac94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f96
    ac98: 91000000     	add	x0, x0, #0x0
		000000000000ac98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f96
    ac9c: 4b0802a8     	sub	w8, w21, w8
    aca0: aa1603e1     	mov	x1, x22
    aca4: 528057c2     	mov	w2, #0x2be              // =702
    aca8: 1b097d08     	mul	w8, w8, w9
    acac: 531d7149     	lsl	w9, w10, #3
    acb0: aa1703e3     	mov	x3, x23
    acb4: 1ac90d15     	sdiv	w21, w8, w9
    acb8: 2a1503e4     	mov	w4, w21
    acbc: 94000000     	bl	0xacbc <cali_store+0x198>
		000000000000acbc:  R_AARCH64_CALL26	_printk
    acc0: 37f80595     	tbnz	w21, #0x1f, 0xad70 <cali_store+0x24c>
    acc4: 529999a8     	mov	w8, #0xcccd             // =52429
    acc8: 72b99988     	movk	w8, #0xcccc, lsl #16
    accc: 9ba87ea8     	umull	x8, w21, w8
    acd0: d363fd09     	lsr	x9, x8, #35
    acd4: 52800148     	mov	w8, #0xa                // =10
    acd8: 1b08d52a     	msub	w10, w9, w8, w21
    acdc: 39592f08     	ldrb	w8, [x24, #0x64b]
    ace0: 0b080129     	add	w9, w9, w8
    ace4: 7100115f     	cmp	w10, #0x4
    ace8: 1a899529     	cinc	w9, w9, hi
    acec: 1400002e     	b	0xada4 <cali_store+0x280>
    acf0: 93407c13     	sxtw	x19, w0
    acf4: d5384108     	mrs	x8, SP_EL0
    acf8: f9438908     	ldr	x8, [x8, #0x710]
    acfc: f94007e9     	ldr	x9, [sp, #0x8]
    ad00: eb09011f     	cmp	x8, x9
    ad04: 540009a1     	b.ne	0xae38 <cali_store+0x314>
    ad08: aa1303e0     	mov	x0, x19
    ad0c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    ad10: a94357f6     	ldp	x22, x21, [sp, #0x30]
    ad14: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    ad18: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ad1c: 910143ff     	add	sp, sp, #0x50
    ad20: d50323bf     	autiasp
    ad24: d65f03c0     	ret
    ad28: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000ad28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2942
    ad2c: 91000000     	add	x0, x0, #0x0
		000000000000ad2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2942
    ad30: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000ad30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ad34: 91000021     	add	x1, x1, #0x0
		000000000000ad34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ad38: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000ad38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ad3c: 91000063     	add	x3, x3, #0x0
		000000000000ad3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ad40: 52805542     	mov	w2, #0x2aa              // =682
    ad44: 94000000     	bl	0xad44 <cali_store+0x220>
		000000000000ad44:  R_AARCH64_CALL26	_printk
    ad48: 14000024     	b	0xadd8 <cali_store+0x2b4>
    ad4c: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000ad4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f04
    ad50: 91000000     	add	x0, x0, #0x0
		000000000000ad50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f04
    ad54: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000ad54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ad58: 91000021     	add	x1, x1, #0x0
		000000000000ad58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ad5c: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000ad5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ad60: 91000063     	add	x3, x3, #0x0
		000000000000ad60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ad64: 528056a2     	mov	w2, #0x2b5              // =693
    ad68: 94000000     	bl	0xad68 <cali_store+0x244>
		000000000000ad68:  R_AARCH64_CALL26	_printk
    ad6c: 14000030     	b	0xae2c <cali_store+0x308>
    ad70: 529999a9     	mov	w9, #0xcccd             // =52429
    ad74: 4b1503e8     	neg	w8, w21
    ad78: 5280014a     	mov	w10, #0xa               // =10
    ad7c: 72b99989     	movk	w9, #0xcccc, lsl #16
    ad80: 9ba97d09     	umull	x9, w8, w9
    ad84: d363fd29     	lsr	x9, x9, #35
    ad88: 1b0aa12a     	msub	w10, w9, w10, w8
    ad8c: 39592f08     	ldrb	w8, [x24, #0x64b]
    ad90: 2a2903eb     	mvn	w11, w9
    ad94: 4b090109     	sub	w9, w8, w9
    ad98: 0b0b010b     	add	w11, w8, w11
    ad9c: 7100155f     	cmp	w10, #0x5
    ada0: 1a8b3129     	csel	w9, w9, w11, lo
    ada4: 6b08013f     	cmp	w9, w8
    ada8: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000ada8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6a
    adac: 91000000     	add	x0, x0, #0x0
		000000000000adac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6a
    adb0: 5a88b508     	cneg	w8, w8, ge
    adb4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000adb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    adb8: 91000021     	add	x1, x1, #0x0
		000000000000adb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    adbc: 0b090108     	add	w8, w8, w9
    adc0: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000adc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    adc4: 91000063     	add	x3, x3, #0x0
		000000000000adc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    adc8: 12001d04     	and	w4, w8, #0xff
    adcc: 52805a22     	mov	w2, #0x2d1              // =721
    add0: b81e0304     	stur	w4, [x24, #-0x20]
    add4: 94000000     	bl	0xadd4 <cali_store+0x2b0>
		000000000000add4:  R_AARCH64_CALL26	_printk
    add8: f9429308     	ldr	x8, [x24, #0x520]
    addc: aa1403e0     	mov	x0, x20
    ade0: 52800021     	mov	w1, #0x1                // =1
    ade4: f9408d08     	ldr	x8, [x8, #0x118]
    ade8: b85fc110     	ldur	w16, [x8, #-0x4]
    adec: 728dd2b1     	movk	w17, #0x6e95
    adf0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    adf4: 6b11021f     	cmp	w16, w17
    adf8: 54000040     	b.eq	0xae00 <cali_store+0x2dc>
    adfc: d4304500     	brk	#0x8228
    ae00: d63f0100     	blr	x8
    ae04: f9429308     	ldr	x8, [x24, #0x520]
    ae08: aa1403e0     	mov	x0, x20
    ae0c: f9401d08     	ldr	x8, [x8, #0x38]
    ae10: b85fc110     	ldur	w16, [x8, #-0x4]
    ae14: 72810611     	movk	w17, #0x830
    ae18: 72b08f51     	movk	w17, #0x847a, lsl #16
    ae1c: 6b11021f     	cmp	w16, w17
    ae20: 54000040     	b.eq	0xae28 <cali_store+0x304>
    ae24: d4304500     	brk	#0x8228
    ae28: d63f0100     	blr	x8
    ae2c: 91092300     	add	x0, x24, #0x248
    ae30: 94000000     	bl	0xae30 <cali_store+0x30c>
		000000000000ae30:  R_AARCH64_CALL26	mutex_unlock
    ae34: 17ffffb0     	b	0xacf4 <cali_store+0x1d0>
    ae38: 94000000     	bl	0xae38 <cali_store+0x314>
		000000000000ae38:  R_AARCH64_CALL26	__stack_chk_fail
