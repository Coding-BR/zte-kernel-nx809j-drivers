
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000030ac <aw22xxx_rgb_show>:
    30ac: d503233f     	paciasp
    30b0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    30b4: f9000bf7     	str	x23, [sp, #0x10]
    30b8: a90257f6     	stp	x22, x21, [sp, #0x20]
    30bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    30c0: 910003fd     	mov	x29, sp
    30c4: f9404c15     	ldr	x21, [x0, #0x98]
    30c8: 90000014     	adrp	x20, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000030c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ea
    30cc: 91000294     	add	x20, x20, #0x0
		00000000000030cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ea
    30d0: aa0203f3     	mov	x19, x2
    30d4: aa0203e0     	mov	x0, x2
    30d8: 52820001     	mov	w1, #0x1000             // =4096
    30dc: b942fea4     	ldr	w4, [x21, #0x2fc]
    30e0: aa1403e2     	mov	x2, x20
    30e4: 2a1f03e3     	mov	w3, wzr
    30e8: 52820016     	mov	w22, #0x1000            // =4096
    30ec: 94000000     	bl	0x30ec <aw22xxx_rgb_show+0x40>
		00000000000030ec:  R_AARCH64_CALL26	snprintf
    30f0: 93407c17     	sxtw	x23, w0
    30f4: b94302a4     	ldr	w4, [x21, #0x300]
    30f8: aa1403e2     	mov	x2, x20
    30fc: 52800023     	mov	w3, #0x1                // =1
    3100: cb1702c1     	sub	x1, x22, x23
    3104: 8b170260     	add	x0, x19, x23
    3108: 94000000     	bl	0x3108 <aw22xxx_rgb_show+0x5c>
		0000000000003108:  R_AARCH64_CALL26	snprintf
    310c: 8b20c2f7     	add	x23, x23, w0, sxtw
    3110: b94306a4     	ldr	w4, [x21, #0x304]
    3114: aa1403e2     	mov	x2, x20
    3118: 52800043     	mov	w3, #0x2                // =2
    311c: cb1702c1     	sub	x1, x22, x23
    3120: 8b170260     	add	x0, x19, x23
    3124: 94000000     	bl	0x3124 <aw22xxx_rgb_show+0x78>
		0000000000003124:  R_AARCH64_CALL26	snprintf
    3128: 8b20c2f7     	add	x23, x23, w0, sxtw
    312c: b9430aa4     	ldr	w4, [x21, #0x308]
    3130: aa1403e2     	mov	x2, x20
    3134: 52800063     	mov	w3, #0x3                // =3
    3138: cb1702c1     	sub	x1, x22, x23
    313c: 8b170260     	add	x0, x19, x23
    3140: 94000000     	bl	0x3140 <aw22xxx_rgb_show+0x94>
		0000000000003140:  R_AARCH64_CALL26	snprintf
    3144: 8b20c2f7     	add	x23, x23, w0, sxtw
    3148: b9430ea4     	ldr	w4, [x21, #0x30c]
    314c: aa1403e2     	mov	x2, x20
    3150: 52800083     	mov	w3, #0x4                // =4
    3154: cb1702c1     	sub	x1, x22, x23
    3158: 8b170260     	add	x0, x19, x23
    315c: 94000000     	bl	0x315c <aw22xxx_rgb_show+0xb0>
		000000000000315c:  R_AARCH64_CALL26	snprintf
    3160: 8b20c2f7     	add	x23, x23, w0, sxtw
    3164: b94312a4     	ldr	w4, [x21, #0x310]
    3168: aa1403e2     	mov	x2, x20
    316c: 528000a3     	mov	w3, #0x5                // =5
    3170: cb1702c1     	sub	x1, x22, x23
    3174: 8b170260     	add	x0, x19, x23
    3178: 94000000     	bl	0x3178 <aw22xxx_rgb_show+0xcc>
		0000000000003178:  R_AARCH64_CALL26	snprintf
    317c: 8b20c2f7     	add	x23, x23, w0, sxtw
    3180: b94316a4     	ldr	w4, [x21, #0x314]
    3184: aa1403e2     	mov	x2, x20
    3188: 528000c3     	mov	w3, #0x6                // =6
    318c: cb1702c1     	sub	x1, x22, x23
    3190: 8b170260     	add	x0, x19, x23
    3194: 94000000     	bl	0x3194 <aw22xxx_rgb_show+0xe8>
		0000000000003194:  R_AARCH64_CALL26	snprintf
    3198: 8b20c2f7     	add	x23, x23, w0, sxtw
    319c: b9431aa4     	ldr	w4, [x21, #0x318]
    31a0: aa1403e2     	mov	x2, x20
    31a4: 528000e3     	mov	w3, #0x7                // =7
    31a8: cb1702c1     	sub	x1, x22, x23
    31ac: 8b170260     	add	x0, x19, x23
    31b0: 94000000     	bl	0x31b0 <aw22xxx_rgb_show+0x104>
		00000000000031b0:  R_AARCH64_CALL26	snprintf
    31b4: 8b20c2f7     	add	x23, x23, w0, sxtw
    31b8: b9431ea4     	ldr	w4, [x21, #0x31c]
    31bc: aa1403e2     	mov	x2, x20
    31c0: 52800103     	mov	w3, #0x8                // =8
    31c4: cb1702c1     	sub	x1, x22, x23
    31c8: 8b170260     	add	x0, x19, x23
    31cc: 94000000     	bl	0x31cc <aw22xxx_rgb_show+0x120>
		00000000000031cc:  R_AARCH64_CALL26	snprintf
    31d0: 8b20c2e0     	add	x0, x23, w0, sxtw
    31d4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    31d8: f9400bf7     	ldr	x23, [sp, #0x10]
    31dc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    31e0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    31e4: d50323bf     	autiasp
    31e8: d65f03c0     	ret
