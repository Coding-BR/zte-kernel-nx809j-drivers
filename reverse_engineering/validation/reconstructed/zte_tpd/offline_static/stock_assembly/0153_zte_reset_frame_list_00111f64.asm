
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b6dc <zte_reset_frame_list>:
    b6dc: d503233f     	paciasp
    b6e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b6e4: f9000bf3     	str	x19, [sp, #0x10]
    b6e8: 910003fd     	mov	x29, sp
    b6ec: aa0003f3     	mov	x19, x0
    b6f0: 9111c000     	add	x0, x0, #0x470
    b6f4: 94000000     	bl	0xb6f4 <zte_reset_frame_list+0x18>
		000000000000b6f4:  R_AARCH64_CALL26	mutex_lock
    b6f8: f9423260     	ldr	x0, [x19, #0x460]
    b6fc: 52840002     	mov	w2, #0x2000             // =8192
    b700: 9110f268     	add	x8, x19, #0x43c
    b704: 2a1f03e1     	mov	w1, wzr
    b708: 72a00062     	movk	w2, #0x3, lsl #16
    b70c: f900011f     	str	xzr, [x8]
    b710: 94000000     	bl	0xb710 <zte_reset_frame_list+0x34>
		000000000000b710:  R_AARCH64_CALL26	memset
    b714: 9111c260     	add	x0, x19, #0x470
    b718: 94000000     	bl	0xb718 <zte_reset_frame_list+0x3c>
		000000000000b718:  R_AARCH64_CALL26	mutex_unlock
    b71c: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b71c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x515c
    b720: 91000000     	add	x0, x0, #0x0
		000000000000b720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x515c
    b724: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61ce
    b728: 91000021     	add	x1, x1, #0x0
		000000000000b728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61ce
    b72c: 94000000     	bl	0xb72c <zte_reset_frame_list+0x50>
		000000000000b72c:  R_AARCH64_CALL26	_printk
    b730: f9400bf3     	ldr	x19, [sp, #0x10]
    b734: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b738: d50323bf     	autiasp
    b73c: d65f03c0     	ret
