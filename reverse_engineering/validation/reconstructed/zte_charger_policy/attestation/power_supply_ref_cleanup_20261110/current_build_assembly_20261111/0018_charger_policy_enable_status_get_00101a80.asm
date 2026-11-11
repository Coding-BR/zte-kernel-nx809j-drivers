
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a94 <charger_policy_enable_status_get>:
    1a94: d503233f     	paciasp
    1a98: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1a9c: f9000bf3     	str	x19, [sp, #0x10]
    1aa0: 910003fd     	mov	x29, sp
    1aa4: b4000181     	cbz	x1, 0x1ad4 <charger_policy_enable_status_get+0x40>
    1aa8: b941e828     	ldr	w8, [x1, #0x1e8]
    1aac: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1ab0: 91000042     	add	x2, x2, #0x0
		0000000000001ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    1ab4: 52820001     	mov	w1, #0x1000             // =4096
    1ab8: 7100011f     	cmp	w8, #0x0
    1abc: 1a9f17e3     	cset	w3, eq
    1ac0: 94000000     	bl	0x1ac0 <charger_policy_enable_status_get+0x2c>
		0000000000001ac0:  R_AARCH64_CALL26	snprintf
    1ac4: f9400bf3     	ldr	x19, [sp, #0x10]
    1ac8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1acc: d50323bf     	autiasp
    1ad0: d65f03c0     	ret
    1ad4: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1ad8: 91000108     	add	x8, x8, #0x0
		0000000000001ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1adc: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c
    1ae0: 91000021     	add	x1, x1, #0x0
		0000000000001ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c
    1ae4: aa0003f3     	mov	x19, x0
    1ae8: aa0803e0     	mov	x0, x8
    1aec: 94000000     	bl	0x1aec <charger_policy_enable_status_get+0x58>
		0000000000001aec:  R_AARCH64_CALL26	_printk
    1af0: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    1af4: 91000129     	add	x9, x9, #0x0
		0000000000001af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1af8: 528d8ea8     	mov	w8, #0x6c75             // =27765
    1afc: f9400129     	ldr	x9, [x9]
    1b00: 72a00d88     	movk	w8, #0x6c, lsl #16
    1b04: 52800160     	mov	w0, #0xb                // =11
    1b08: b9000a68     	str	w8, [x19, #0x8]
    1b0c: f9000269     	str	x9, [x19]
    1b10: 17ffffed     	b	0x1ac4 <charger_policy_enable_status_get+0x30>
