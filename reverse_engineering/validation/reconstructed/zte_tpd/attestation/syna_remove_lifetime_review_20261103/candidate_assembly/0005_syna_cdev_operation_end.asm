
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009814 <syna_cdev_operation_end>:
    9814: d503233f     	paciasp
    9818: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    981c: 910003fd     	mov	x29, sp
    9820: 14000010     	b	0x9860 <syna_cdev_operation_end+0x4c>
    9824: 12800008     	mov	w8, #-0x1               // =-1
    9828: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009828:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    982c: 91000129     	add	x9, x9, #0x0
		000000000000982c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26d8
    9830: b8e80128     	ldaddal	w8, w8, [x9]
    9834: 51000508     	sub	w8, w8, #0x1
    9838: 350000e8     	cbnz	w8, 0x9854 <syna_cdev_operation_end+0x40>
    983c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000983c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30660
    9840: 91000000     	add	x0, x0, #0x0
		0000000000009840:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30660
    9844: 52800061     	mov	w1, #0x3                // =3
    9848: 2a1f03e2     	mov	w2, wzr
    984c: aa1f03e3     	mov	x3, xzr
    9850: 94000000     	bl	0x9850 <syna_cdev_operation_end+0x3c>
		0000000000009850:  R_AARCH64_CALL26	__wake_up
    9854: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9858: d50323bf     	autiasp
    985c: d65f03c0     	ret
    9860: 52800029     	mov	w9, #0x1                // =1
    9864: 9000000a     	adrp	x10, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009864:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    9868: 9100014a     	add	x10, x10, #0x0
		0000000000009868:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26d8
    986c: f9800151     	prfm	pstl1strm, [x10]
    9870: 885f7d48     	ldxr	w8, [x10]
    9874: 4b090108     	sub	w8, w8, w9
    9878: 880bfd48     	stlxr	w11, w8, [x10]
    987c: 35ffffab     	cbnz	w11, 0x9870 <syna_cdev_operation_end+0x5c>
    9880: d5033bbf     	dmb	ish
    9884: 35fffe88     	cbnz	w8, 0x9854 <syna_cdev_operation_end+0x40>
    9888: 17ffffed     	b	0x983c <syna_cdev_operation_end+0x28>
