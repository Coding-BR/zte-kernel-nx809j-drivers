
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001968 <charger_policy_cap_max_get>:
    1968: d503233f     	paciasp
    196c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1970: f9000bf3     	str	x19, [sp, #0x10]
    1974: 910003fd     	mov	x29, sp
    1978: b4000141     	cbz	x1, 0x19a0 <charger_policy_cap_max_get+0x38>
    197c: b9419823     	ldr	w3, [x1, #0x198]
    1980: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1984: 91000042     	add	x2, x2, #0x0
		0000000000001984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    1988: 52820001     	mov	w1, #0x1000             // =4096
    198c: 94000000     	bl	0x198c <charger_policy_cap_max_get+0x24>
		000000000000198c:  R_AARCH64_CALL26	snprintf
    1990: f9400bf3     	ldr	x19, [sp, #0x10]
    1994: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1998: d50323bf     	autiasp
    199c: d65f03c0     	ret
    19a0: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000019a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    19a4: 91000108     	add	x8, x8, #0x0
		00000000000019a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    19a8: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000019a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8e
    19ac: 91000021     	add	x1, x1, #0x0
		00000000000019ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8e
    19b0: aa0003f3     	mov	x19, x0
    19b4: aa0803e0     	mov	x0, x8
    19b8: 94000000     	bl	0x19b8 <charger_policy_cap_max_get+0x50>
		00000000000019b8:  R_AARCH64_CALL26	_printk
    19bc: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000019bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    19c0: 91000129     	add	x9, x9, #0x0
		00000000000019c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    19c4: 528d8ea8     	mov	w8, #0x6c75             // =27765
    19c8: f9400129     	ldr	x9, [x9]
    19cc: 72a00d88     	movk	w8, #0x6c, lsl #16
    19d0: 52800160     	mov	w0, #0xb                // =11
    19d4: b9000a68     	str	w8, [x19, #0x8]
    19d8: f9000269     	str	x9, [x19]
    19dc: 17ffffed     	b	0x1990 <charger_policy_cap_max_get+0x28>
