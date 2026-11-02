
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000033d8 <aw22xxx_rgb_show>:
    33d8: d503233f     	paciasp
    33dc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    33e0: f9000bf7     	str	x23, [sp, #0x10]
    33e4: a90257f6     	stp	x22, x21, [sp, #0x20]
    33e8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    33ec: 910003fd     	mov	x29, sp
    33f0: f9404c15     	ldr	x21, [x0, #0x98]
    33f4: 90000014     	adrp	x20, 0x3000 <aw22xxx_play+0x84>
		00000000000033f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96c
    33f8: 91000294     	add	x20, x20, #0x0
		00000000000033f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96c
    33fc: aa0203f3     	mov	x19, x2
    3400: aa0203e0     	mov	x0, x2
    3404: 52820001     	mov	w1, #0x1000             // =4096
    3408: b942fea4     	ldr	w4, [x21, #0x2fc]
    340c: aa1403e2     	mov	x2, x20
    3410: 2a1f03e3     	mov	w3, wzr
    3414: 52820016     	mov	w22, #0x1000            // =4096
    3418: 94000000     	bl	0x3418 <aw22xxx_rgb_show+0x40>
		0000000000003418:  R_AARCH64_CALL26	snprintf
    341c: 93407c17     	sxtw	x23, w0
    3420: b94302a4     	ldr	w4, [x21, #0x300]
    3424: aa1403e2     	mov	x2, x20
    3428: 52800023     	mov	w3, #0x1                // =1
    342c: cb1702c1     	sub	x1, x22, x23
    3430: 8b170260     	add	x0, x19, x23
    3434: 94000000     	bl	0x3434 <aw22xxx_rgb_show+0x5c>
		0000000000003434:  R_AARCH64_CALL26	snprintf
    3438: 8b20c2f7     	add	x23, x23, w0, sxtw
    343c: b94306a4     	ldr	w4, [x21, #0x304]
    3440: aa1403e2     	mov	x2, x20
    3444: 52800043     	mov	w3, #0x2                // =2
    3448: cb1702c1     	sub	x1, x22, x23
    344c: 8b170260     	add	x0, x19, x23
    3450: 94000000     	bl	0x3450 <aw22xxx_rgb_show+0x78>
		0000000000003450:  R_AARCH64_CALL26	snprintf
    3454: 8b20c2f7     	add	x23, x23, w0, sxtw
    3458: b9430aa4     	ldr	w4, [x21, #0x308]
    345c: aa1403e2     	mov	x2, x20
    3460: 52800063     	mov	w3, #0x3                // =3
    3464: cb1702c1     	sub	x1, x22, x23
    3468: 8b170260     	add	x0, x19, x23
    346c: 94000000     	bl	0x346c <aw22xxx_rgb_show+0x94>
		000000000000346c:  R_AARCH64_CALL26	snprintf
    3470: 8b20c2f7     	add	x23, x23, w0, sxtw
    3474: b9430ea4     	ldr	w4, [x21, #0x30c]
    3478: aa1403e2     	mov	x2, x20
    347c: 52800083     	mov	w3, #0x4                // =4
    3480: cb1702c1     	sub	x1, x22, x23
    3484: 8b170260     	add	x0, x19, x23
    3488: 94000000     	bl	0x3488 <aw22xxx_rgb_show+0xb0>
		0000000000003488:  R_AARCH64_CALL26	snprintf
    348c: 8b20c2f7     	add	x23, x23, w0, sxtw
    3490: b94312a4     	ldr	w4, [x21, #0x310]
    3494: aa1403e2     	mov	x2, x20
    3498: 528000a3     	mov	w3, #0x5                // =5
    349c: cb1702c1     	sub	x1, x22, x23
    34a0: 8b170260     	add	x0, x19, x23
    34a4: 94000000     	bl	0x34a4 <aw22xxx_rgb_show+0xcc>
		00000000000034a4:  R_AARCH64_CALL26	snprintf
    34a8: 8b20c2f7     	add	x23, x23, w0, sxtw
    34ac: b94316a4     	ldr	w4, [x21, #0x314]
    34b0: aa1403e2     	mov	x2, x20
    34b4: 528000c3     	mov	w3, #0x6                // =6
    34b8: cb1702c1     	sub	x1, x22, x23
    34bc: 8b170260     	add	x0, x19, x23
    34c0: 94000000     	bl	0x34c0 <aw22xxx_rgb_show+0xe8>
		00000000000034c0:  R_AARCH64_CALL26	snprintf
    34c4: 8b20c2f7     	add	x23, x23, w0, sxtw
    34c8: b9431aa4     	ldr	w4, [x21, #0x318]
    34cc: aa1403e2     	mov	x2, x20
    34d0: 528000e3     	mov	w3, #0x7                // =7
    34d4: cb1702c1     	sub	x1, x22, x23
    34d8: 8b170260     	add	x0, x19, x23
    34dc: 94000000     	bl	0x34dc <aw22xxx_rgb_show+0x104>
		00000000000034dc:  R_AARCH64_CALL26	snprintf
    34e0: 8b20c2f7     	add	x23, x23, w0, sxtw
    34e4: b9431ea4     	ldr	w4, [x21, #0x31c]
    34e8: aa1403e2     	mov	x2, x20
    34ec: 52800103     	mov	w3, #0x8                // =8
    34f0: cb1702c1     	sub	x1, x22, x23
    34f4: 8b170260     	add	x0, x19, x23
    34f8: 94000000     	bl	0x34f8 <aw22xxx_rgb_show+0x120>
		00000000000034f8:  R_AARCH64_CALL26	snprintf
    34fc: 8b20c2e0     	add	x0, x23, w0, sxtw
    3500: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3504: f9400bf7     	ldr	x23, [sp, #0x10]
    3508: a94257f6     	ldp	x22, x21, [sp, #0x20]
    350c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    3510: d50323bf     	autiasp
    3514: d65f03c0     	ret
