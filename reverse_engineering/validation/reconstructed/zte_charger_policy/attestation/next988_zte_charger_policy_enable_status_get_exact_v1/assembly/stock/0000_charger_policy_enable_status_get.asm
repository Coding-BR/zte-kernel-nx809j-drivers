
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001050 <charger_policy_enable_status_get>:
    1050: d503233f     	paciasp
    1054: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1058: f9000bf3     	str	x19, [sp, #0x10]
    105c: 910003fd     	mov	x29, sp
    1060: b4000181     	cbz	x1, 0x1090 <charger_policy_enable_status_get+0x40>
    1064: b941e828     	ldr	w8, [x1, #0x1e8]
    1068: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1637
    106c: 91000042     	add	x2, x2, #0x0
		000000000000106c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1637
    1070: 52820001     	mov	w1, #0x1000             // =4096
    1074: 7100011f     	cmp	w8, #0x0
    1078: 1a9f17e3     	cset	w3, eq
    107c: 94000000     	bl	0x107c <charger_policy_enable_status_get+0x2c>
		000000000000107c:  R_AARCH64_CALL26	snprintf
    1080: f9400bf3     	ldr	x19, [sp, #0x10]
    1084: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1088: d50323bf     	autiasp
    108c: d65f03c0     	ret
    1090: 90000008     	adrp	x8, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
    1094: 91000108     	add	x8, x8, #0x0
		0000000000001094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
    1098: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c
    109c: 91000021     	add	x1, x1, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c
    10a0: aa0003f3     	mov	x19, x0
    10a4: aa0803e0     	mov	x0, x8
    10a8: 94000000     	bl	0x10a8 <charger_policy_enable_status_get+0x58>
		00000000000010a8:  R_AARCH64_CALL26	_printk
    10ac: 90000009     	adrp	x9, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000010ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
    10b0: 91000129     	add	x9, x9, #0x0
		00000000000010b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
    10b4: 528d8ea8     	mov	w8, #0x6c75             // =27765
    10b8: f9400129     	ldr	x9, [x9]
    10bc: 72a00d88     	movk	w8, #0x6c, lsl #16
    10c0: 52800160     	mov	w0, #0xb                // =11
    10c4: b9000a68     	str	w8, [x19, #0x8]
    10c8: f9000269     	str	x9, [x19]
    10cc: 17ffffed     	b	0x1080 <charger_policy_enable_status_get+0x30>
