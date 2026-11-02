
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003b38 <aw22xxx_multi_breath_pattern_show>:
    3b38: d503233f     	paciasp
    3b3c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3b40: 910003fd     	mov	x29, sp
    3b44: f9404c08     	ldr	x8, [x0, #0x98]
    3b48: aa0203e0     	mov	x0, x2
    3b4c: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94e
    3b50: 91000042     	add	x2, x2, #0x0
		0000000000003b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94e
    3b54: 52820001     	mov	w1, #0x1000             // =4096
    3b58: b942f903     	ldr	w3, [x8, #0x2f8]
    3b5c: 94000000     	bl	0x3b5c <aw22xxx_multi_breath_pattern_show+0x24>
		0000000000003b5c:  R_AARCH64_CALL26	snprintf
    3b60: 93407c00     	sxtw	x0, w0
    3b64: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3b68: d50323bf     	autiasp
    3b6c: d65f03c0     	ret
