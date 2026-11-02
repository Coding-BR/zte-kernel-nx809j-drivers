
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009e94 <syna_dev_do_reflash>:
    9e94: d503233f     	paciasp
    9e98: d100c3ff     	sub	sp, sp, #0x30
    9e9c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9ea0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9ea4: 910043fd     	add	x29, sp, #0x10
    9ea8: d5384108     	mrs	x8, SP_EL0
    9eac: f9438908     	ldr	x8, [x8, #0x710]
    9eb0: f90007e8     	str	x8, [sp, #0x8]
    9eb4: f90003ff     	str	xzr, [sp]
    9eb8: b5000180     	cbnz	x0, 0x9ee8 <syna_dev_do_reflash+0x54>
    9ebc: 128002a0     	mov	w0, #-0x16              // =-22
    9ec0: d5384108     	mrs	x8, SP_EL0
    9ec4: f9438908     	ldr	x8, [x8, #0x710]
    9ec8: f94007e9     	ldr	x9, [sp, #0x8]
    9ecc: eb09011f     	cmp	x8, x9
    9ed0: 54000621     	b.ne	0x9f94 <syna_dev_do_reflash+0x100>
    9ed4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9ed8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9edc: 9100c3ff     	add	sp, sp, #0x30
    9ee0: d50323bf     	autiasp
    9ee4: d65f03c0     	ret
    9ee8: a9402013     	ldp	x19, x8, [x0]
    9eec: 2a0103f4     	mov	w20, w1
    9ef0: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b32
    9ef4: 91000021     	add	x1, x1, #0x0
		0000000000009ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b32
    9ef8: 910003e0     	mov	x0, sp
    9efc: f9403902     	ldr	x2, [x8, #0x70]
    9f00: 94000000     	bl	0x9f00 <syna_dev_do_reflash+0x6c>
		0000000000009f00:  R_AARCH64_CALL26	request_firmware
    9f04: 36f80180     	tbz	w0, #0x1f, 0x9f34 <syna_dev_do_reflash+0xa0>
    9f08: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d9c
    9f0c: 91000108     	add	x8, x8, #0x0
		0000000000009f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d9c
    9f10: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
    9f14: 91000021     	add	x1, x1, #0x0
		0000000000009f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
    9f18: 90000002     	adrp	x2, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b32
    9f1c: 91000042     	add	x2, x2, #0x0
		0000000000009f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b32
    9f20: 2a0003f3     	mov	w19, w0
    9f24: aa0803e0     	mov	x0, x8
    9f28: 94000000     	bl	0x9f28 <syna_dev_do_reflash+0x94>
		0000000000009f28:  R_AARCH64_CALL26	_printk
    9f2c: 2a1303e0     	mov	w0, w19
    9f30: 17ffffe4     	b	0x9ec0 <syna_dev_do_reflash+0x2c>
    9f34: f94003e8     	ldr	x8, [sp]
    9f38: 12000284     	and	w4, w20, #0x1
    9f3c: aa1303e0     	mov	x0, x19
    9f40: 2a1f03e3     	mov	w3, wzr
    9f44: f9400501     	ldr	x1, [x8, #0x8]
    9f48: b9400102     	ldr	w2, [x8]
    9f4c: 94000000     	bl	0x9f4c <syna_dev_do_reflash+0xb8>
		0000000000009f4c:  R_AARCH64_CALL26	syna_tcm_do_fw_update
    9f50: 2a0003f4     	mov	w20, w0
    9f54: 36f800c0     	tbz	w0, #0x1f, 0x9f6c <syna_dev_do_reflash+0xd8>
    9f58: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177ce
    9f5c: 91000000     	add	x0, x0, #0x0
		0000000000009f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177ce
    9f60: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
    9f64: 91000021     	add	x1, x1, #0x0
		0000000000009f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
    9f68: 94000000     	bl	0x9f68 <syna_dev_do_reflash+0xd4>
		0000000000009f68:  R_AARCH64_CALL26	_printk
    9f6c: 39402662     	ldrb	w2, [x19, #0x9]
    9f70: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188f8
    9f74: 91000000     	add	x0, x0, #0x0
		0000000000009f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188f8
    9f78: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
    9f7c: 91000021     	add	x1, x1, #0x0
		0000000000009f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
    9f80: 94000000     	bl	0x9f80 <syna_dev_do_reflash+0xec>
		0000000000009f80:  R_AARCH64_CALL26	_printk
    9f84: f94003e0     	ldr	x0, [sp]
    9f88: 94000000     	bl	0x9f88 <syna_dev_do_reflash+0xf4>
		0000000000009f88:  R_AARCH64_CALL26	release_firmware
    9f8c: 2a1403e0     	mov	w0, w20
    9f90: 17ffffcc     	b	0x9ec0 <syna_dev_do_reflash+0x2c>
    9f94: 94000000     	bl	0x9f94 <syna_dev_do_reflash+0x100>
		0000000000009f94:  R_AARCH64_CALL26	__stack_chk_fail
