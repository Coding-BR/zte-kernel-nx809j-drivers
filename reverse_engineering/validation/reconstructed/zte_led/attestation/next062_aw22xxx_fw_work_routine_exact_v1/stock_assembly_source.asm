
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003d5c <aw22xxx_fw_work_routine>:
    3d5c: d503233f     	paciasp
    3d60: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    3d64: f9000bf5     	str	x21, [sp, #0x10]
    3d68: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3d6c: 910003fd     	mov	x29, sp
    3d70: 90000015     	adrp	x21, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    3d74: 910002b5     	add	x21, x21, #0x0
		0000000000003d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    3d78: aa0003f3     	mov	x19, x0
    3d7c: d1084014     	sub	x20, x0, #0x210
    3d80: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1098
    3d84: 91000021     	add	x1, x1, #0x0
		0000000000003d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1098
    3d88: aa1503e0     	mov	x0, x21
    3d8c: 94000000     	bl	0x3d8c <aw22xxx_fw_work_routine+0x30>
		0000000000003d8c:  R_AARCH64_CALL26	_printk
    3d90: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1778
    3d94: 91000021     	add	x1, x1, #0x0
		0000000000003d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1778
    3d98: aa1503e0     	mov	x0, x21
    3d9c: 94000000     	bl	0x3d9c <aw22xxx_fw_work_routine+0x40>
		0000000000003d9c:  R_AARCH64_CALL26	_printk
    3da0: d1082268     	sub	x8, x19, #0x208
    3da4: 52800029     	mov	w9, #0x1                // =1
    3da8: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003da8:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    3dac: 91000000     	add	x0, x0, #0x0
		0000000000003dac:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    3db0: f9400103     	ldr	x3, [x8]
    3db4: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003db4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d8
    3db8: 91000042     	add	x2, x2, #0x0
		0000000000003db8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d8
    3dbc: 90000006     	adrp	x6, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003dbc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x40e8
    3dc0: 910000c6     	add	x6, x6, #0x0
		0000000000003dc0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x40e8
    3dc4: 52800021     	mov	w1, #0x1                // =1
    3dc8: 52819804     	mov	w4, #0xcc0              // =3264
    3dcc: aa1403e5     	mov	x5, x20
    3dd0: 39037e69     	strb	w9, [x19, #0xdf]
    3dd4: 94000000     	bl	0x3dd4 <aw22xxx_fw_work_routine+0x78>
		0000000000003dd4:  R_AARCH64_CALL26	request_firmware_nowait
    3dd8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3ddc: f9400bf5     	ldr	x21, [sp, #0x10]
    3de0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    3de4: d50323bf     	autiasp
    3de8: d65f03c0     	ret
