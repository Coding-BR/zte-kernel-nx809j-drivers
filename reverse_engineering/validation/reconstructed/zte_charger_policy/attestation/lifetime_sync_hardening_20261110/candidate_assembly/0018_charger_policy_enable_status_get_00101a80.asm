
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a84 <charger_policy_enable_status_get>:
    1a84: d503233f     	paciasp
    1a88: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1a8c: f9000bf3     	str	x19, [sp, #0x10]
    1a90: 910003fd     	mov	x29, sp
    1a94: b4000181     	cbz	x1, 0x1ac4 <charger_policy_enable_status_get+0x40>
    1a98: b941e828     	ldr	w8, [x1, #0x1e8]
    1a9c: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1aa0: 91000042     	add	x2, x2, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    1aa4: 52820001     	mov	w1, #0x1000             // =4096
    1aa8: 7100011f     	cmp	w8, #0x0
    1aac: 1a9f17e3     	cset	w3, eq
    1ab0: 94000000     	bl	0x1ab0 <charger_policy_enable_status_get+0x2c>
		0000000000001ab0:  R_AARCH64_CALL26	snprintf
    1ab4: f9400bf3     	ldr	x19, [sp, #0x10]
    1ab8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1abc: d50323bf     	autiasp
    1ac0: d65f03c0     	ret
    1ac4: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1ac8: 91000108     	add	x8, x8, #0x0
		0000000000001ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1acc: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c
    1ad0: 91000021     	add	x1, x1, #0x0
		0000000000001ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c
    1ad4: aa0003f3     	mov	x19, x0
    1ad8: aa0803e0     	mov	x0, x8
    1adc: 94000000     	bl	0x1adc <charger_policy_enable_status_get+0x58>
		0000000000001adc:  R_AARCH64_CALL26	_printk
    1ae0: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    1ae4: 91000129     	add	x9, x9, #0x0
		0000000000001ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    1ae8: 528d8ea8     	mov	w8, #0x6c75             // =27765
    1aec: f9400129     	ldr	x9, [x9]
    1af0: 72a00d88     	movk	w8, #0x6c, lsl #16
    1af4: 52800160     	mov	w0, #0xb                // =11
    1af8: b9000a68     	str	w8, [x19, #0x8]
    1afc: f9000269     	str	x9, [x19]
    1b00: 17ffffed     	b	0x1ab4 <charger_policy_enable_status_get+0x30>
