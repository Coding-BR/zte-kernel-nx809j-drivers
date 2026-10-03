
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003210 <aw22xxx_rgb_show>:
    3210: d503233f     	paciasp
    3214: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    3218: f9000bf7     	str	x23, [sp, #0x10]
    321c: a90257f6     	stp	x22, x21, [sp, #0x20]
    3220: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3224: 910003fd     	mov	x29, sp
    3228: f9404c15     	ldr	x21, [x0, #0x98]
    322c: 90000014     	adrp	x20, 0x3000 <aw22xxx_imax_show+0xd0>
		000000000000322c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x9ea
    3230: 91000294     	add	x20, x20, #0x0
		0000000000003230:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x9ea
    3234: aa0203f3     	mov	x19, x2
    3238: aa0203e0     	mov	x0, x2
    323c: 52820001     	mov	w1, #0x1000             // =4096
    3240: b942fea4     	ldr	w4, [x21, #0x2fc]
    3244: aa1403e2     	mov	x2, x20
    3248: 2a1f03e3     	mov	w3, wzr
    324c: 52820016     	mov	w22, #0x1000            // =4096
    3250: 94000000     	bl	0x3250 <aw22xxx_rgb_show+0x40>
		0000000000003250:  R_AARCH64_CALL26	snprintf
    3254: 93407c17     	sxtw	x23, w0
    3258: b94302a4     	ldr	w4, [x21, #0x300]
    325c: aa1403e2     	mov	x2, x20
    3260: 52800023     	mov	w3, #0x1                // =1
    3264: cb1702c1     	sub	x1, x22, x23
    3268: 8b170260     	add	x0, x19, x23
    326c: 94000000     	bl	0x326c <aw22xxx_rgb_show+0x5c>
		000000000000326c:  R_AARCH64_CALL26	snprintf
    3270: 8b20c2f7     	add	x23, x23, w0, sxtw
    3274: b94306a4     	ldr	w4, [x21, #0x304]
    3278: aa1403e2     	mov	x2, x20
    327c: 52800043     	mov	w3, #0x2                // =2
    3280: cb1702c1     	sub	x1, x22, x23
    3284: 8b170260     	add	x0, x19, x23
    3288: 94000000     	bl	0x3288 <aw22xxx_rgb_show+0x78>
		0000000000003288:  R_AARCH64_CALL26	snprintf
    328c: 8b20c2f7     	add	x23, x23, w0, sxtw
    3290: b9430aa4     	ldr	w4, [x21, #0x308]
    3294: aa1403e2     	mov	x2, x20
    3298: 52800063     	mov	w3, #0x3                // =3
    329c: cb1702c1     	sub	x1, x22, x23
    32a0: 8b170260     	add	x0, x19, x23
    32a4: 94000000     	bl	0x32a4 <aw22xxx_rgb_show+0x94>
		00000000000032a4:  R_AARCH64_CALL26	snprintf
    32a8: 8b20c2f7     	add	x23, x23, w0, sxtw
    32ac: b9430ea4     	ldr	w4, [x21, #0x30c]
    32b0: aa1403e2     	mov	x2, x20
    32b4: 52800083     	mov	w3, #0x4                // =4
    32b8: cb1702c1     	sub	x1, x22, x23
    32bc: 8b170260     	add	x0, x19, x23
    32c0: 94000000     	bl	0x32c0 <aw22xxx_rgb_show+0xb0>
		00000000000032c0:  R_AARCH64_CALL26	snprintf
    32c4: 8b20c2f7     	add	x23, x23, w0, sxtw
    32c8: b94312a4     	ldr	w4, [x21, #0x310]
    32cc: aa1403e2     	mov	x2, x20
    32d0: 528000a3     	mov	w3, #0x5                // =5
    32d4: cb1702c1     	sub	x1, x22, x23
    32d8: 8b170260     	add	x0, x19, x23
    32dc: 94000000     	bl	0x32dc <aw22xxx_rgb_show+0xcc>
		00000000000032dc:  R_AARCH64_CALL26	snprintf
    32e0: 8b20c2f7     	add	x23, x23, w0, sxtw
    32e4: b94316a4     	ldr	w4, [x21, #0x314]
    32e8: aa1403e2     	mov	x2, x20
    32ec: 528000c3     	mov	w3, #0x6                // =6
    32f0: cb1702c1     	sub	x1, x22, x23
    32f4: 8b170260     	add	x0, x19, x23
    32f8: 94000000     	bl	0x32f8 <aw22xxx_rgb_show+0xe8>
		00000000000032f8:  R_AARCH64_CALL26	snprintf
    32fc: 8b20c2f7     	add	x23, x23, w0, sxtw
    3300: b9431aa4     	ldr	w4, [x21, #0x318]
    3304: aa1403e2     	mov	x2, x20
    3308: 528000e3     	mov	w3, #0x7                // =7
    330c: cb1702c1     	sub	x1, x22, x23
    3310: 8b170260     	add	x0, x19, x23
    3314: 94000000     	bl	0x3314 <aw22xxx_rgb_show+0x104>
		0000000000003314:  R_AARCH64_CALL26	snprintf
    3318: 8b20c2f7     	add	x23, x23, w0, sxtw
    331c: b9431ea4     	ldr	w4, [x21, #0x31c]
    3320: aa1403e2     	mov	x2, x20
    3324: 52800103     	mov	w3, #0x8                // =8
    3328: cb1702c1     	sub	x1, x22, x23
    332c: 8b170260     	add	x0, x19, x23
    3330: 94000000     	bl	0x3330 <aw22xxx_rgb_show+0x120>
		0000000000003330:  R_AARCH64_CALL26	snprintf
    3334: 8b20c2e0     	add	x0, x23, w0, sxtw
    3338: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    333c: f9400bf7     	ldr	x23, [sp, #0x10]
    3340: a94257f6     	ldp	x22, x21, [sp, #0x20]
    3344: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    3348: d50323bf     	autiasp
    334c: d65f03c0     	ret
