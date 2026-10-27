
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005a40 <aw9620x_read_init_over_irq>:
    5a40: d503233f     	paciasp
    5a44: d10143ff     	sub	sp, sp, #0x50
    5a48: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5a4c: f90013f7     	str	x23, [sp, #0x20]
    5a50: a90357f6     	stp	x22, x21, [sp, #0x30]
    5a54: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5a58: 910043fd     	add	x29, sp, #0x10
    5a5c: d5384108     	mrs	x8, SP_EL0
    5a60: 90000015     	adrp	x21, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005a60:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x224b
    5a64: 910002b5     	add	x21, x21, #0x0
		0000000000005a64:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x224b
    5a68: f9438908     	ldr	x8, [x8, #0x710]
    5a6c: aa0003f3     	mov	x19, x0
    5a70: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005a70:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    5a74: 91000042     	add	x2, x2, #0x0
		0000000000005a74:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    5a78: aa1503e3     	mov	x3, x21
    5a7c: 528081c4     	mov	w4, #0x40e              // =1038
    5a80: f90007e8     	str	x8, [sp, #0x8]
    5a84: f9401801     	ldr	x1, [x0, #0x30]
    5a88: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005a88:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5a8c: 91000000     	add	x0, x0, #0x0
		0000000000005a8c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    5a90: b90007ff     	str	wzr, [sp, #0x4]
    5a94: 94000000     	bl	0x5a94 <aw9620x_read_init_over_irq+0x54>
		0000000000005a94:  R_AARCH64_CALL26	_dev_printk
    5a98: 90000016     	adrp	x22, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005a98:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    5a9c: 910002d6     	add	x22, x22, #0x0
		0000000000005a9c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    5aa0: 52800c94     	mov	w20, #0x64              // =100
    5aa4: 90000017     	adrp	x23, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005aa4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a50
    5aa8: 910002f7     	add	x23, x23, #0x0
		0000000000005aa8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a50
    5aac: 910013e2     	add	x2, sp, #0x4
    5ab0: aa1303e0     	mov	x0, x19
    5ab4: 52888201     	mov	w1, #0x4410             // =17424
    5ab8: 97fff812     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000005ab8:  R_AARCH64_CALL26	aw9620x_i2c_read
    5abc: 37f80380     	tbnz	w0, #0x1f, 0x5b2c <aw9620x_read_init_over_irq+0xec>
    5ac0: 394013e8     	ldrb	w8, [sp, #0x4]
    5ac4: f9401a61     	ldr	x1, [x19, #0x30]
    5ac8: 370004c8     	tbnz	w8, #0x0, 0x5b60 <aw9620x_read_init_over_irq+0x120>
    5acc: aa1603e0     	mov	x0, x22
    5ad0: aa1703e2     	mov	x2, x23
    5ad4: aa1503e3     	mov	x3, x21
    5ad8: 52808344     	mov	w4, #0x41a              // =1050
    5adc: 2a1403e5     	mov	w5, w20
    5ae0: 94000000     	bl	0x5ae0 <aw9620x_read_init_over_irq+0xa0>
		0000000000005ae0:  R_AARCH64_CALL26	_dev_printk
    5ae4: 52807d00     	mov	w0, #0x3e8              // =1000
    5ae8: 52807e41     	mov	w1, #0x3f2              // =1010
    5aec: 52800042     	mov	w2, #0x2                // =2
    5af0: 94000000     	bl	0x5af0 <aw9620x_read_init_over_irq+0xb0>
		0000000000005af0:  R_AARCH64_CALL26	usleep_range_state
    5af4: 51000694     	sub	w20, w20, #0x1
    5af8: 3100069f     	cmn	w20, #0x1
    5afc: 54fffd81     	b.ne	0x5aac <aw9620x_read_init_over_irq+0x6c>
    5b00: f9401a61     	ldr	x1, [x19, #0x30]
    5b04: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b04:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    5b08: 91000000     	add	x0, x0, #0x0
		0000000000005b08:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    5b0c: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b0c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x278b
    5b10: 91000042     	add	x2, x2, #0x0
		0000000000005b10:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x278b
    5b14: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b14:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x224b
    5b18: 91000063     	add	x3, x3, #0x0
		0000000000005b18:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x224b
    5b1c: 528083e4     	mov	w4, #0x41f              // =1055
    5b20: 94000000     	bl	0x5b20 <aw9620x_read_init_over_irq+0xe0>
		0000000000005b20:  R_AARCH64_CALL26	_dev_printk
    5b24: 12800040     	mov	w0, #-0x3               // =-3
    5b28: 14000018     	b	0x5b88 <aw9620x_read_init_over_irq+0x148>
    5b2c: f9401a61     	ldr	x1, [x19, #0x30]
    5b30: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b30:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    5b34: 91000000     	add	x0, x0, #0x0
		0000000000005b34:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    5b38: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b38:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x342f
    5b3c: 91000042     	add	x2, x2, #0x0
		0000000000005b3c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x342f
    5b40: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b40:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x224b
    5b44: 91000063     	add	x3, x3, #0x0
		0000000000005b44:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x224b
    5b48: 52808264     	mov	w4, #0x413              // =1043
    5b4c: 12800005     	mov	w5, #-0x1               // =-1
    5b50: 2a1403e6     	mov	w6, w20
    5b54: 94000000     	bl	0x5b54 <aw9620x_read_init_over_irq+0x114>
		0000000000005b54:  R_AARCH64_CALL26	_dev_printk
    5b58: 12800000     	mov	w0, #-0x1               // =-1
    5b5c: 1400000b     	b	0x5b88 <aw9620x_read_init_over_irq+0x148>
    5b60: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b60:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5b64: 91000000     	add	x0, x0, #0x0
		0000000000005b64:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    5b68: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b68:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3b1c
    5b6c: 91000042     	add	x2, x2, #0x0
		0000000000005b6c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3b1c
    5b70: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005b70:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x224b
    5b74: 91000063     	add	x3, x3, #0x0
		0000000000005b74:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x224b
    5b78: 528082e4     	mov	w4, #0x417              // =1047
    5b7c: 2a1403e5     	mov	w5, w20
    5b80: 94000000     	bl	0x5b80 <aw9620x_read_init_over_irq+0x140>
		0000000000005b80:  R_AARCH64_CALL26	_dev_printk
    5b84: 2a1f03e0     	mov	w0, wzr
    5b88: d5384108     	mrs	x8, SP_EL0
    5b8c: f9438908     	ldr	x8, [x8, #0x710]
    5b90: f94007e9     	ldr	x9, [sp, #0x8]
    5b94: eb09011f     	cmp	x8, x9
    5b98: 54000101     	b.ne	0x5bb8 <aw9620x_read_init_over_irq+0x178>
    5b9c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5ba0: f94013f7     	ldr	x23, [sp, #0x20]
    5ba4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5ba8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5bac: 910143ff     	add	sp, sp, #0x50
    5bb0: d50323bf     	autiasp
    5bb4: d65f03c0     	ret
    5bb8: 94000000     	bl	0x5bb8 <aw9620x_read_init_over_irq+0x178>
		0000000000005bb8:  R_AARCH64_CALL26	__stack_chk_fail
