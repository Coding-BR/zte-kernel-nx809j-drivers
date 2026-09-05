
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fa8 <charger_policy_enable_status_get>:
     fa8: d503233f     	paciasp
     fac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     fb0: f9000bf3     	str	x19, [sp, #0x10]
     fb4: 910003fd     	mov	x29, sp
     fb8: b4000181     	cbz	x1, 0xfe8 <charger_policy_enable_status_get+0x40>
     fbc: b941e828     	ldr	w8, [x1, #0x1e8]
     fc0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1f
     fc4: 91000042     	add	x2, x2, #0x0
		0000000000000fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1f
     fc8: 52820001     	mov	w1, #0x1000             // =4096
     fcc: 7100011f     	cmp	w8, #0x0
     fd0: 1a9f17e3     	cset	w3, eq
     fd4: 94000000     	bl	0xfd4 <charger_policy_enable_status_get+0x2c>
		0000000000000fd4:  R_AARCH64_CALL26	snprintf
     fd8: f9400bf3     	ldr	x19, [sp, #0x10]
     fdc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     fe0: d50323bf     	autiasp
     fe4: d65f03c0     	ret
     fe8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     fec: 91000108     	add	x8, x8, #0x0
		0000000000000fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     ff0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c
     ff4: 91000021     	add	x1, x1, #0x0
		0000000000000ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c
     ff8: aa0003f3     	mov	x19, x0
     ffc: aa0803e0     	mov	x0, x8
    1000: 94000000     	bl	0x1000 <charger_policy_enable_status_get+0x58>
		0000000000001000:  R_AARCH64_CALL26	_printk
    1004: 90000009     	adrp	x9, 0x1000 <charger_policy_enable_status_get+0x58>
		0000000000001004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc42
    1008: 91000129     	add	x9, x9, #0x0
		0000000000001008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc42
    100c: 528d8ea8     	mov	w8, #0x6c75             // =27765
    1010: f9400129     	ldr	x9, [x9]
    1014: 72a00d88     	movk	w8, #0x6c, lsl #16
    1018: 52800160     	mov	w0, #0xb                // =11
    101c: b9000a68     	str	w8, [x19, #0x8]
    1020: f9000269     	str	x9, [x19]
    1024: 17ffffed     	b	0xfd8 <charger_policy_enable_status_get+0x30>
