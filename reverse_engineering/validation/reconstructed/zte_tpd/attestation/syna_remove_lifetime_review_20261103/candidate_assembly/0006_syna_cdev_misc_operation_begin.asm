
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000995c <syna_cdev_misc_operation_begin>:
    995c: d503233f     	paciasp
    9960: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9964: f9000bf5     	str	x21, [sp, #0x10]
    9968: a9024ff4     	stp	x20, x19, [sp, #0x20]
    996c: 910003fd     	mov	x29, sp
    9970: aa0003f5     	mov	x21, x0
    9974: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009974:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    9978: 91000000     	add	x0, x0, #0x0
		0000000000009978:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    997c: aa0203f3     	mov	x19, x2
    9980: aa0103f4     	mov	x20, x1
    9984: 94000000     	bl	0x9984 <syna_cdev_misc_operation_begin+0x28>
		0000000000009984:  R_AARCH64_CALL26	mutex_lock
    9988: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009988:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_online
    998c: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000998c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    9990: 3940010a     	ldrb	w10, [x8]
		0000000000009990:  R_AARCH64_LDST8_ABS_LO12_NC	syna_cdev_lifecycle_online
    9994: f9400129     	ldr	x9, [x9]
		0000000000009994:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
    9998: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009998:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e0
    999c: f940010b     	ldr	x11, [x8]
		000000000000999c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    99a0: f100013f     	cmp	x9, #0x0
    99a4: 1a8a03e9     	csel	w9, wzr, w10, eq
    99a8: f100017f     	cmp	x11, #0x0
    99ac: 9112816a     	add	x10, x11, #0x4a0
    99b0: fa551140     	ccmp	x10, x21, #0x0, ne
    99b4: 1a8913f5     	csel	w21, wzr, w9, ne
    99b8: 710006bf     	cmp	w21, #0x1
    99bc: 540001a1     	b.ne	0x99f0 <syna_cdev_misc_operation_begin+0x94>
    99c0: 14000015     	b	0x9a14 <syna_cdev_misc_operation_begin+0xb8>
    99c4: 52800029     	mov	w9, #0x1                // =1
    99c8: 9000000a     	adrp	x10, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000099c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    99cc: 9100014a     	add	x10, x10, #0x0
		00000000000099cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26d8
    99d0: b829015f     	stadd	w9, [x10]
    99d4: b4000074     	cbz	x20, 0x99e0 <syna_cdev_misc_operation_begin+0x84>
    99d8: f9400108     	ldr	x8, [x8]
		00000000000099d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    99dc: f9000288     	str	x8, [x20]
    99e0: b4000093     	cbz	x19, 0x99f0 <syna_cdev_misc_operation_begin+0x94>
    99e4: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000099e4:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_generation
    99e8: f9400108     	ldr	x8, [x8]
		00000000000099e8:  R_AARCH64_LDST64_ABS_LO12_NC	syna_cdev_lifecycle_generation
    99ec: f9000268     	str	x8, [x19]
    99f0: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000099f0:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    99f4: 91000000     	add	x0, x0, #0x0
		00000000000099f4:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    99f8: 94000000     	bl	0x99f8 <syna_cdev_misc_operation_begin+0x9c>
		00000000000099f8:  R_AARCH64_CALL26	mutex_unlock
    99fc: 2a1503e0     	mov	w0, w21
    9a00: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9a04: f9400bf5     	ldr	x21, [sp, #0x10]
    9a08: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9a0c: d50323bf     	autiasp
    9a10: d65f03c0     	ret
    9a14: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    9a18: 91000129     	add	x9, x9, #0x0
		0000000000009a18:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26d8
    9a1c: f9800131     	prfm	pstl1strm, [x9]
    9a20: 885f7d2a     	ldxr	w10, [x9]
    9a24: 1100054a     	add	w10, w10, #0x1
    9a28: 880b7d2a     	stxr	w11, w10, [x9]
    9a2c: 35ffffab     	cbnz	w11, 0x9a20 <syna_cdev_misc_operation_begin+0xc4>
    9a30: b5fffd54     	cbnz	x20, 0x99d8 <syna_cdev_misc_operation_begin+0x7c>
    9a34: 17ffffeb     	b	0x99e0 <syna_cdev_misc_operation_begin+0x84>
