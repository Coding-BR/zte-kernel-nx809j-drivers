
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000089f8 <ram_num_show>:
    89f8: d503233f     	paciasp
    89fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8a00: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8a04: 910003fd     	mov	x29, sp
    8a08: f9404c14     	ldr	x20, [x0, #0x98]
    8a0c: aa0203f3     	mov	x19, x2
    8a10: d102a280     	sub	x0, x20, #0xa8
    8a14: 97ffff85     	bl	0x8828 <get_ram_num>
    8a18: 394ed283     	ldrb	w3, [x20, #0x3b4]
    8a1c: 90000002     	adrp	x2, 0x8000 <reg_show+0x10>
		0000000000008a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1592
    8a20: 91000042     	add	x2, x2, #0x0
		0000000000008a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1592
    8a24: aa1303e0     	mov	x0, x19
    8a28: 52820001     	mov	w1, #0x1000             // =4096
    8a2c: 94000000     	bl	0x8a2c <ram_num_show+0x34>
		0000000000008a2c:  R_AARCH64_CALL26	snprintf
    8a30: 93407c00     	sxtw	x0, w0
    8a34: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    8a38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    8a3c: d50323bf     	autiasp
    8a40: d65f03c0     	ret
