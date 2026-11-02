
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002fd0 <aw8693x_get_wav_loop>:
    2fd0: d503233f     	paciasp
    2fd4: d10143ff     	sub	sp, sp, #0x50
    2fd8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2fdc: f90013f7     	str	x23, [sp, #0x20]
    2fe0: a90357f6     	stp	x22, x21, [sp, #0x30]
    2fe4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2fe8: 910043fd     	add	x29, sp, #0x10
    2fec: d5384108     	mrs	x8, SP_EL0
    2ff0: aa0103f3     	mov	x19, x1
    2ff4: 910013e2     	add	x2, sp, #0x4
    2ff8: f9438908     	ldr	x8, [x8, #0x710]
    2ffc: 52800241     	mov	w1, #0x12               // =18
    3000: 52800083     	mov	w3, #0x4                // =4
    3004: aa0003f4     	mov	x20, x0
    3008: f90007e8     	str	x8, [sp, #0x8]
    300c: b90007ff     	str	wzr, [sp, #0x4]
    3010: 94000000     	bl	0x3010 <aw8693x_get_wav_loop+0x40>
		0000000000003010:  R_AARCH64_CALL26	i2c_r_bytes
    3014: 394013e8     	ldrb	w8, [sp, #0x4]
    3018: 90000015     	adrp	x21, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10e9
    301c: 910002b5     	add	x21, x21, #0x0
		000000000000301c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10e9
    3020: aa1303e0     	mov	x0, x19
    3024: 52820001     	mov	w1, #0x1000             // =4096
    3028: aa1503e2     	mov	x2, x21
    302c: 53047d04     	lsr	w4, w8, #4
    3030: 12000d08     	and	w8, w8, #0xf
    3034: 52800023     	mov	w3, #0x1                // =1
    3038: 39009e88     	strb	w8, [x20, #0x27]
    303c: 52820016     	mov	w22, #0x1000            // =4096
    3040: 39009a84     	strb	w4, [x20, #0x26]
    3044: 94000000     	bl	0x3044 <aw8693x_get_wav_loop+0x74>
		0000000000003044:  R_AARCH64_CALL26	snprintf
    3048: 93407c17     	sxtw	x23, w0
    304c: 39409e84     	ldrb	w4, [x20, #0x27]
    3050: aa1503e2     	mov	x2, x21
    3054: 52800043     	mov	w3, #0x2                // =2
    3058: cb1702c1     	sub	x1, x22, x23
    305c: 8b170260     	add	x0, x19, x23
    3060: 94000000     	bl	0x3060 <aw8693x_get_wav_loop+0x90>
		0000000000003060:  R_AARCH64_CALL26	snprintf
    3064: 394017e8     	ldrb	w8, [sp, #0x5]
    3068: 8b20c2f7     	add	x23, x23, w0, sxtw
    306c: aa1503e2     	mov	x2, x21
    3070: 52800063     	mov	w3, #0x3                // =3
    3074: 53047d04     	lsr	w4, w8, #4
    3078: 12000d08     	and	w8, w8, #0xf
    307c: cb1702c1     	sub	x1, x22, x23
    3080: 8b170260     	add	x0, x19, x23
    3084: 3900a688     	strb	w8, [x20, #0x29]
    3088: 3900a284     	strb	w4, [x20, #0x28]
    308c: 94000000     	bl	0x308c <aw8693x_get_wav_loop+0xbc>
		000000000000308c:  R_AARCH64_CALL26	snprintf
    3090: 8b20c2f7     	add	x23, x23, w0, sxtw
    3094: 3940a684     	ldrb	w4, [x20, #0x29]
    3098: aa1503e2     	mov	x2, x21
    309c: 52800083     	mov	w3, #0x4                // =4
    30a0: cb1702c1     	sub	x1, x22, x23
    30a4: 8b170260     	add	x0, x19, x23
    30a8: 94000000     	bl	0x30a8 <aw8693x_get_wav_loop+0xd8>
		00000000000030a8:  R_AARCH64_CALL26	snprintf
    30ac: 39401be8     	ldrb	w8, [sp, #0x6]
    30b0: 8b20c2f7     	add	x23, x23, w0, sxtw
    30b4: aa1503e2     	mov	x2, x21
    30b8: 528000a3     	mov	w3, #0x5                // =5
    30bc: 53047d04     	lsr	w4, w8, #4
    30c0: 12000d08     	and	w8, w8, #0xf
    30c4: cb1702c1     	sub	x1, x22, x23
    30c8: 8b170260     	add	x0, x19, x23
    30cc: 3900ae88     	strb	w8, [x20, #0x2b]
    30d0: 3900aa84     	strb	w4, [x20, #0x2a]
    30d4: 94000000     	bl	0x30d4 <aw8693x_get_wav_loop+0x104>
		00000000000030d4:  R_AARCH64_CALL26	snprintf
    30d8: 8b20c2f7     	add	x23, x23, w0, sxtw
    30dc: 3940ae84     	ldrb	w4, [x20, #0x2b]
    30e0: aa1503e2     	mov	x2, x21
    30e4: 528000c3     	mov	w3, #0x6                // =6
    30e8: cb1702c1     	sub	x1, x22, x23
    30ec: 8b170260     	add	x0, x19, x23
    30f0: 94000000     	bl	0x30f0 <aw8693x_get_wav_loop+0x120>
		00000000000030f0:  R_AARCH64_CALL26	snprintf
    30f4: 39401fe8     	ldrb	w8, [sp, #0x7]
    30f8: 8b20c2f7     	add	x23, x23, w0, sxtw
    30fc: aa1503e2     	mov	x2, x21
    3100: 528000e3     	mov	w3, #0x7                // =7
    3104: 53047d04     	lsr	w4, w8, #4
    3108: 12000d08     	and	w8, w8, #0xf
    310c: cb1702c1     	sub	x1, x22, x23
    3110: 8b170260     	add	x0, x19, x23
    3114: 3900b688     	strb	w8, [x20, #0x2d]
    3118: 3900b284     	strb	w4, [x20, #0x2c]
    311c: 94000000     	bl	0x311c <aw8693x_get_wav_loop+0x14c>
		000000000000311c:  R_AARCH64_CALL26	snprintf
    3120: 8b20c2f7     	add	x23, x23, w0, sxtw
    3124: 3940b684     	ldrb	w4, [x20, #0x2d]
    3128: aa1503e2     	mov	x2, x21
    312c: 52800103     	mov	w3, #0x8                // =8
    3130: cb1702c1     	sub	x1, x22, x23
    3134: 8b170260     	add	x0, x19, x23
    3138: 94000000     	bl	0x3138 <aw8693x_get_wav_loop+0x168>
		0000000000003138:  R_AARCH64_CALL26	snprintf
    313c: d5384108     	mrs	x8, SP_EL0
    3140: f9438908     	ldr	x8, [x8, #0x710]
    3144: f94007e9     	ldr	x9, [sp, #0x8]
    3148: eb09011f     	cmp	x8, x9
    314c: 54000121     	b.ne	0x3170 <aw8693x_get_wav_loop+0x1a0>
    3150: 8b20c2e0     	add	x0, x23, w0, sxtw
    3154: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3158: f94013f7     	ldr	x23, [sp, #0x20]
    315c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    3160: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3164: 910143ff     	add	sp, sp, #0x50
    3168: d50323bf     	autiasp
    316c: d65f03c0     	ret
    3170: 94000000     	bl	0x3170 <aw8693x_get_wav_loop+0x1a0>
		0000000000003170:  R_AARCH64_CALL26	__stack_chk_fail
