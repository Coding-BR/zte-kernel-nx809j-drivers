
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ab54 <cali_store>:
    ab54: d503233f     	paciasp
    ab58: d10143ff     	sub	sp, sp, #0x50
    ab5c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ab60: a9025ff8     	stp	x24, x23, [sp, #0x20]
    ab64: a90357f6     	stp	x22, x21, [sp, #0x30]
    ab68: a9044ff4     	stp	x20, x19, [sp, #0x40]
    ab6c: 910043fd     	add	x29, sp, #0x10
    ab70: d5384109     	mrs	x9, SP_EL0
    ab74: aa0203e8     	mov	x8, x2
    ab78: 910013e2     	add	x2, sp, #0x4
    ab7c: f9438929     	ldr	x9, [x9, #0x710]
    ab80: 2a1f03e1     	mov	w1, wzr
    ab84: aa0303f3     	mov	x19, x3
    ab88: f90007e9     	str	x9, [sp, #0x8]
    ab8c: f9404c18     	ldr	x24, [x0, #0x98]
    ab90: aa0803e0     	mov	x0, x8
    ab94: b90007ff     	str	wzr, [sp, #0x4]
    ab98: 94000000     	bl	0xab98 <cali_store+0x44>
		000000000000ab98:  R_AARCH64_CALL26	kstrtouint
    ab9c: 37f80c20     	tbnz	w0, #0x1f, 0xad20 <cali_store+0x1cc>
    aba0: b94007e8     	ldr	w8, [sp, #0x4]
    aba4: 34000c08     	cbz	w8, 0xad24 <cali_store+0x1d0>
    aba8: 91092300     	add	x0, x24, #0x248
    abac: d102a314     	sub	x20, x24, #0xa8
    abb0: 94000000     	bl	0xabb0 <cali_store+0x5c>
		000000000000abb0:  R_AARCH64_CALL26	mutex_lock
    abb4: f9429308     	ldr	x8, [x24, #0x520]
    abb8: b943c315     	ldr	w21, [x24, #0x3c0]
    abbc: aa1403e0     	mov	x0, x20
    abc0: 394eeb16     	ldrb	w22, [x24, #0x3ba]
    abc4: 2a1f03e1     	mov	w1, wzr
    abc8: f9408d08     	ldr	x8, [x8, #0x118]
    abcc: b85fc110     	ldur	w16, [x8, #-0x4]
    abd0: 728dd2b1     	movk	w17, #0x6e95
    abd4: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    abd8: 6b11021f     	cmp	w16, w17
    abdc: 54000040     	b.eq	0xabe4 <cali_store+0x90>
    abe0: d4304500     	brk	#0x8228
    abe4: d63f0100     	blr	x8
    abe8: f9429308     	ldr	x8, [x24, #0x520]
    abec: aa1403e0     	mov	x0, x20
    abf0: f9400108     	ldr	x8, [x8]
    abf4: b85fc110     	ldur	w16, [x8, #-0x4]
    abf8: 729e3e11     	movk	w17, #0xf1f0
    abfc: 72aa2591     	movk	w17, #0x512c, lsl #16
    ac00: 6b11021f     	cmp	w16, w17
    ac04: 54000040     	b.eq	0xac0c <cali_store+0xb8>
    ac08: d4304500     	brk	#0x8228
    ac0c: d63f0100     	blr	x8
    ac10: 35000a40     	cbnz	w0, 0xad58 <cali_store+0x204>
    ac14: 52800c89     	mov	w9, #0x64               // =100
    ac18: 110192c8     	add	w8, w22, #0x64
    ac1c: 5290a3ea     	mov	w10, #0x851f            // =34079
    ac20: 4b160129     	sub	w9, w9, w22
    ac24: 1b157d08     	mul	w8, w8, w21
    ac28: 72aa3d6a     	movk	w10, #0x51eb, lsl #16
    ac2c: 1b157d29     	mul	w9, w9, w21
    ac30: b85b8315     	ldur	w21, [x24, #-0x48]
    ac34: b943c304     	ldr	w4, [x24, #0x3c0]
    ac38: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000ac38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ad6
    ac3c: 91000000     	add	x0, x0, #0x0
		000000000000ac3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ad6
    ac40: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000ac40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ac44: 91000021     	add	x1, x1, #0x0
		000000000000ac44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ac48: 9baa7d08     	umull	x8, w8, w10
    ac4c: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000ac4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ac50: 91000063     	add	x3, x3, #0x0
		000000000000ac50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ac54: 9baa7d29     	umull	x9, w9, w10
    ac58: 52805602     	mov	w2, #0x2b0              // =688
    ac5c: 2a1503e7     	mov	w7, w21
    ac60: d365fd16     	lsr	x22, x8, #37
    ac64: d365fd37     	lsr	x23, x9, #37
    ac68: 2a1603e6     	mov	w6, w22
    ac6c: 2a1703e5     	mov	w5, w23
    ac70: 94000000     	bl	0xac70 <cali_store+0x11c>
		000000000000ac70:  R_AARCH64_CALL26	_printk
    ac74: b85b8304     	ldur	w4, [x24, #-0x48]
    ac78: 6b17009f     	cmp	w4, w23
    ac7c: 54000803     	b.lo	0xad7c <cali_store+0x228>
    ac80: 6b16009f     	cmp	w4, w22
    ac84: 540007c8     	b.hi	0xad7c <cali_store+0x228>
    ac88: 90000016     	adrp	x22, 0xa000 <vibrator_work_routine+0x348>
		000000000000ac88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ac8c: 910002d6     	add	x22, x22, #0x0
		000000000000ac8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ac90: 90000017     	adrp	x23, 0xa000 <vibrator_work_routine+0x348>
		000000000000ac90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ac94: 910002f7     	add	x23, x23, #0x0
		000000000000ac94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ac98: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000ac98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4802
    ac9c: 91000000     	add	x0, x0, #0x0
		000000000000ac9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4802
    aca0: aa1603e1     	mov	x1, x22
    aca4: 52805722     	mov	w2, #0x2b9              // =697
    aca8: aa1703e3     	mov	x3, x23
    acac: 2a1503e4     	mov	w4, w21
    acb0: 94000000     	bl	0xacb0 <cali_store+0x15c>
		000000000000acb0:  R_AARCH64_CALL26	_printk
    acb4: b943c308     	ldr	w8, [x24, #0x3c0]
    acb8: 5290d409     	mov	w9, #0x86a0             // =34464
    acbc: 0b1506aa     	add	w10, w21, w21, lsl #1
    acc0: 72a00029     	movk	w9, #0x1, lsl #16
    acc4: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000acc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f96
    acc8: 91000000     	add	x0, x0, #0x0
		000000000000acc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f96
    accc: 4b0802a8     	sub	w8, w21, w8
    acd0: aa1603e1     	mov	x1, x22
    acd4: 528057c2     	mov	w2, #0x2be              // =702
    acd8: 1b097d08     	mul	w8, w8, w9
    acdc: 531d7149     	lsl	w9, w10, #3
    ace0: aa1703e3     	mov	x3, x23
    ace4: 1ac90d15     	sdiv	w21, w8, w9
    ace8: 2a1503e4     	mov	w4, w21
    acec: 94000000     	bl	0xacec <cali_store+0x198>
		000000000000acec:  R_AARCH64_CALL26	_printk
    acf0: 37f80595     	tbnz	w21, #0x1f, 0xada0 <cali_store+0x24c>
    acf4: 529999a8     	mov	w8, #0xcccd             // =52429
    acf8: 72b99988     	movk	w8, #0xcccc, lsl #16
    acfc: 9ba87ea8     	umull	x8, w21, w8
    ad00: d363fd09     	lsr	x9, x8, #35
    ad04: 52800148     	mov	w8, #0xa                // =10
    ad08: 1b08d52a     	msub	w10, w9, w8, w21
    ad0c: 39592f08     	ldrb	w8, [x24, #0x64b]
    ad10: 0b080129     	add	w9, w9, w8
    ad14: 7100115f     	cmp	w10, #0x4
    ad18: 1a899529     	cinc	w9, w9, hi
    ad1c: 1400002e     	b	0xadd4 <cali_store+0x280>
    ad20: 93407c13     	sxtw	x19, w0
    ad24: d5384108     	mrs	x8, SP_EL0
    ad28: f9438908     	ldr	x8, [x8, #0x710]
    ad2c: f94007e9     	ldr	x9, [sp, #0x8]
    ad30: eb09011f     	cmp	x8, x9
    ad34: 540009a1     	b.ne	0xae68 <cali_store+0x314>
    ad38: aa1303e0     	mov	x0, x19
    ad3c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    ad40: a94357f6     	ldp	x22, x21, [sp, #0x30]
    ad44: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    ad48: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ad4c: 910143ff     	add	sp, sp, #0x50
    ad50: d50323bf     	autiasp
    ad54: d65f03c0     	ret
    ad58: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000ad58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2942
    ad5c: 91000000     	add	x0, x0, #0x0
		000000000000ad5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2942
    ad60: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000ad60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ad64: 91000021     	add	x1, x1, #0x0
		000000000000ad64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ad68: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000ad68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ad6c: 91000063     	add	x3, x3, #0x0
		000000000000ad6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ad70: 52805542     	mov	w2, #0x2aa              // =682
    ad74: 94000000     	bl	0xad74 <cali_store+0x220>
		000000000000ad74:  R_AARCH64_CALL26	_printk
    ad78: 14000024     	b	0xae08 <cali_store+0x2b4>
    ad7c: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000ad7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f04
    ad80: 91000000     	add	x0, x0, #0x0
		000000000000ad80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f04
    ad84: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000ad84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ad88: 91000021     	add	x1, x1, #0x0
		000000000000ad88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ad8c: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000ad8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    ad90: 91000063     	add	x3, x3, #0x0
		000000000000ad90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    ad94: 528056a2     	mov	w2, #0x2b5              // =693
    ad98: 94000000     	bl	0xad98 <cali_store+0x244>
		000000000000ad98:  R_AARCH64_CALL26	_printk
    ad9c: 14000030     	b	0xae5c <cali_store+0x308>
    ada0: 529999a9     	mov	w9, #0xcccd             // =52429
    ada4: 4b1503e8     	neg	w8, w21
    ada8: 5280014a     	mov	w10, #0xa               // =10
    adac: 72b99989     	movk	w9, #0xcccc, lsl #16
    adb0: 9ba97d09     	umull	x9, w8, w9
    adb4: d363fd29     	lsr	x9, x9, #35
    adb8: 1b0aa12a     	msub	w10, w9, w10, w8
    adbc: 39592f08     	ldrb	w8, [x24, #0x64b]
    adc0: 2a2903eb     	mvn	w11, w9
    adc4: 4b090109     	sub	w9, w8, w9
    adc8: 0b0b010b     	add	w11, w8, w11
    adcc: 7100155f     	cmp	w10, #0x5
    add0: 1a8b3129     	csel	w9, w9, w11, lo
    add4: 6b08013f     	cmp	w9, w8
    add8: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000add8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6a
    addc: 91000000     	add	x0, x0, #0x0
		000000000000addc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6a
    ade0: 5a88b508     	cneg	w8, w8, ge
    ade4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000ade4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ade8: 91000021     	add	x1, x1, #0x0
		000000000000ade8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    adec: 0b090108     	add	w8, w8, w9
    adf0: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000adf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3952
    adf4: 91000063     	add	x3, x3, #0x0
		000000000000adf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3952
    adf8: 12001d04     	and	w4, w8, #0xff
    adfc: 52805a22     	mov	w2, #0x2d1              // =721
    ae00: b81e0304     	stur	w4, [x24, #-0x20]
    ae04: 94000000     	bl	0xae04 <cali_store+0x2b0>
		000000000000ae04:  R_AARCH64_CALL26	_printk
    ae08: f9429308     	ldr	x8, [x24, #0x520]
    ae0c: aa1403e0     	mov	x0, x20
    ae10: 52800021     	mov	w1, #0x1                // =1
    ae14: f9408d08     	ldr	x8, [x8, #0x118]
    ae18: b85fc110     	ldur	w16, [x8, #-0x4]
    ae1c: 728dd2b1     	movk	w17, #0x6e95
    ae20: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    ae24: 6b11021f     	cmp	w16, w17
    ae28: 54000040     	b.eq	0xae30 <cali_store+0x2dc>
    ae2c: d4304500     	brk	#0x8228
    ae30: d63f0100     	blr	x8
    ae34: f9429308     	ldr	x8, [x24, #0x520]
    ae38: aa1403e0     	mov	x0, x20
    ae3c: f9401d08     	ldr	x8, [x8, #0x38]
    ae40: b85fc110     	ldur	w16, [x8, #-0x4]
    ae44: 72810611     	movk	w17, #0x830
    ae48: 72b08f51     	movk	w17, #0x847a, lsl #16
    ae4c: 6b11021f     	cmp	w16, w17
    ae50: 54000040     	b.eq	0xae58 <cali_store+0x304>
    ae54: d4304500     	brk	#0x8228
    ae58: d63f0100     	blr	x8
    ae5c: 91092300     	add	x0, x24, #0x248
    ae60: 94000000     	bl	0xae60 <cali_store+0x30c>
		000000000000ae60:  R_AARCH64_CALL26	mutex_unlock
    ae64: 17ffffb0     	b	0xad24 <cali_store+0x1d0>
    ae68: 94000000     	bl	0xae68 <cali_store+0x314>
		000000000000ae68:  R_AARCH64_CALL26	__stack_chk_fail
