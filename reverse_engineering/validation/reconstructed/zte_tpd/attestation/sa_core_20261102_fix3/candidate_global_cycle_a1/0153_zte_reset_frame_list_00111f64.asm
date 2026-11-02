
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e590 <zte_reset_frame_list>:
    e590: d503233f     	paciasp
    e594: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e598: f9000bf3     	str	x19, [sp, #0x10]
    e59c: 910003fd     	mov	x29, sp
    e5a0: aa0003f3     	mov	x19, x0
    e5a4: 9111c000     	add	x0, x0, #0x470
    e5a8: 94000000     	bl	0xe5a8 <zte_reset_frame_list+0x18>
		000000000000e5a8:  R_AARCH64_CALL26	mutex_lock
    e5ac: f9423260     	ldr	x0, [x19, #0x460]
    e5b0: 52840002     	mov	w2, #0x2000             // =8192
    e5b4: 9110f268     	add	x8, x19, #0x43c
    e5b8: 2a1f03e1     	mov	w1, wzr
    e5bc: 72a00062     	movk	w2, #0x3, lsl #16
    e5c0: f900011f     	str	xzr, [x8]
    e5c4: 94000000     	bl	0xe5c4 <zte_reset_frame_list+0x34>
		000000000000e5c4:  R_AARCH64_CALL26	memset
    e5c8: 9111c260     	add	x0, x19, #0x470
    e5cc: 94000000     	bl	0xe5cc <zte_reset_frame_list+0x3c>
		000000000000e5cc:  R_AARCH64_CALL26	mutex_unlock
    e5d0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197ef
    e5d4: 91000000     	add	x0, x0, #0x0
		000000000000e5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197ef
    e5d8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e61
    e5dc: 91000021     	add	x1, x1, #0x0
		000000000000e5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e61
    e5e0: 94000000     	bl	0xe5e0 <zte_reset_frame_list+0x50>
		000000000000e5e0:  R_AARCH64_CALL26	_printk
    e5e4: f9400bf3     	ldr	x19, [sp, #0x10]
    e5e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e5ec: d50323bf     	autiasp
    e5f0: d65f03c0     	ret
