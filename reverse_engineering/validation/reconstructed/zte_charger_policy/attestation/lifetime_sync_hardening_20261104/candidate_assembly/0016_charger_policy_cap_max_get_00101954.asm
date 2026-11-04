
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001958 <charger_policy_cap_max_get>:
    1958: d503233f     	paciasp
    195c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1960: f9000bf3     	str	x19, [sp, #0x10]
    1964: 910003fd     	mov	x29, sp
    1968: b4000141     	cbz	x1, 0x1990 <charger_policy_cap_max_get+0x38>
    196c: b9419823     	ldr	w3, [x1, #0x198]
    1970: 90000002     	adrp	x2, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    1974: 91000042     	add	x2, x2, #0x0
		0000000000001974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    1978: 52820001     	mov	w1, #0x1000             // =4096
    197c: 94000000     	bl	0x197c <charger_policy_cap_max_get+0x24>
		000000000000197c:  R_AARCH64_CALL26	snprintf
    1980: f9400bf3     	ldr	x19, [sp, #0x10]
    1984: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1988: d50323bf     	autiasp
    198c: d65f03c0     	ret
    1990: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1994: 91000108     	add	x8, x8, #0x0
		0000000000001994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1998: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8e
    199c: 91000021     	add	x1, x1, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8e
    19a0: aa0003f3     	mov	x19, x0
    19a4: aa0803e0     	mov	x0, x8
    19a8: 94000000     	bl	0x19a8 <charger_policy_cap_max_get+0x50>
		00000000000019a8:  R_AARCH64_CALL26	_printk
    19ac: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    19b0: 91000129     	add	x9, x9, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    19b4: 528d8ea8     	mov	w8, #0x6c75             // =27765
    19b8: f9400129     	ldr	x9, [x9]
    19bc: 72a00d88     	movk	w8, #0x6c, lsl #16
    19c0: 52800160     	mov	w0, #0xb                // =11
    19c4: b9000a68     	str	w8, [x19, #0x8]
    19c8: f9000269     	str	x9, [x19]
    19cc: 17ffffed     	b	0x1980 <charger_policy_cap_max_get+0x28>
