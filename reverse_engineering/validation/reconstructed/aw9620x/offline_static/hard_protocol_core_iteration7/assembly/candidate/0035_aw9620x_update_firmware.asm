
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000059c4 <aw9620x_update_firmware>:
    59c4: d503233f     	paciasp
    59c8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    59cc: f9000bf5     	str	x21, [sp, #0x10]
    59d0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    59d4: 910003fd     	mov	x29, sp
    59d8: aa0103f3     	mov	x19, x1
    59dc: b9405435     	ldr	w21, [x1, #0x54]
    59e0: f9401801     	ldr	x1, [x0, #0x30]
    59e4: aa0003f4     	mov	x20, x0
    59e8: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000059e8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    59ec: 91000000     	add	x0, x0, #0x0
		00000000000059ec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    59f0: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000059f0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    59f4: 91000042     	add	x2, x2, #0x0
		00000000000059f4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    59f8: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000059f8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xc02
    59fc: 91000063     	add	x3, x3, #0x0
		00000000000059fc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xc02
    5a00: 528194c4     	mov	w4, #0xca6              // =3238
    5a04: 94000000     	bl	0x5a04 <aw9620x_update_firmware+0x40>
		0000000000005a04:  R_AARCH64_CALL26	_dev_printk
    5a08: b9406664     	ldr	w4, [x19, #0x64]
    5a0c: 52841d08     	mov	w8, #0x20e8             // =8424
    5a10: 39401e81     	ldrb	w1, [x20, #0x7]
    5a14: 8b080268     	add	x8, x19, x8
    5a18: aa1403e0     	mov	x0, x20
    5a1c: b9028684     	str	w4, [x20, #0x284]
    5a20: 8b150102     	add	x2, x8, x21
    5a24: b9405263     	ldr	w3, [x19, #0x50]
    5a28: 94000000     	bl	0x5a28 <aw9620x_update_firmware+0x64>
		0000000000005a28:  R_AARCH64_CALL26	aw9620x_fw_update
    5a2c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5a30: f9400bf5     	ldr	x21, [sp, #0x10]
    5a34: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5a38: d50323bf     	autiasp
    5a3c: d65f03c0     	ret
