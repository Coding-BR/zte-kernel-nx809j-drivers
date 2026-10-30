
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002f30 <aw22xxx_imax_show>:
    2f30: d503233f     	paciasp
    2f34: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    2f38: a9015ff8     	stp	x24, x23, [sp, #0x10]
    2f3c: a90257f6     	stp	x22, x21, [sp, #0x20]
    2f40: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2f44: 910003fd     	mov	x29, sp
    2f48: 90000015     	adrp	x21, 0x2000 <aw22xxx_irq+0x20>
		0000000000002f48:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1528
    2f4c: 910002b5     	add	x21, x21, #0x0
		0000000000002f4c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1528
    2f50: 90000014     	adrp	x20, 0x2000 <aw22xxx_irq+0x20>
		0000000000002f50:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x4e8
    2f54: 91000294     	add	x20, x20, #0x0
		0000000000002f54:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x4e8
    2f58: f9404c16     	ldr	x22, [x0, #0x98]
    2f5c: aa0203f3     	mov	x19, x2
    2f60: aa0203e0     	mov	x0, x2
    2f64: 52820001     	mov	w1, #0x1000             // =4096
    2f68: aa1503e2     	mov	x2, x21
    2f6c: 2a1f03e3     	mov	w3, wzr
    2f70: aa1403e4     	mov	x4, x20
    2f74: 52820017     	mov	w23, #0x1000            // =4096
    2f78: 94000000     	bl	0x2f78 <aw22xxx_imax_show+0x48>
		0000000000002f78:  R_AARCH64_CALL26	snprintf
    2f7c: 93407c18     	sxtw	x24, w0
    2f80: 91008284     	add	x4, x20, #0x20
    2f84: aa1503e2     	mov	x2, x21
    2f88: 52800023     	mov	w3, #0x1                // =1
    2f8c: cb1802e1     	sub	x1, x23, x24
    2f90: 8b180260     	add	x0, x19, x24
    2f94: 94000000     	bl	0x2f94 <aw22xxx_imax_show+0x64>
		0000000000002f94:  R_AARCH64_CALL26	snprintf
    2f98: 8b20c318     	add	x24, x24, w0, sxtw
    2f9c: 91010284     	add	x4, x20, #0x40
    2fa0: aa1503e2     	mov	x2, x21
    2fa4: 52800043     	mov	w3, #0x2                // =2
    2fa8: cb1802e1     	sub	x1, x23, x24
    2fac: 8b180260     	add	x0, x19, x24
    2fb0: 94000000     	bl	0x2fb0 <aw22xxx_imax_show+0x80>
		0000000000002fb0:  R_AARCH64_CALL26	snprintf
    2fb4: 8b20c318     	add	x24, x24, w0, sxtw
    2fb8: 91018284     	add	x4, x20, #0x60
    2fbc: aa1503e2     	mov	x2, x21
    2fc0: 52800063     	mov	w3, #0x3                // =3
    2fc4: cb1802e1     	sub	x1, x23, x24
    2fc8: 8b180260     	add	x0, x19, x24
    2fcc: 94000000     	bl	0x2fcc <aw22xxx_imax_show+0x9c>
		0000000000002fcc:  R_AARCH64_CALL26	snprintf
    2fd0: 8b20c318     	add	x24, x24, w0, sxtw
    2fd4: 91020284     	add	x4, x20, #0x80
    2fd8: aa1503e2     	mov	x2, x21
    2fdc: 52800083     	mov	w3, #0x4                // =4
    2fe0: cb1802e1     	sub	x1, x23, x24
    2fe4: 8b180260     	add	x0, x19, x24
    2fe8: 94000000     	bl	0x2fe8 <aw22xxx_imax_show+0xb8>
		0000000000002fe8:  R_AARCH64_CALL26	snprintf
    2fec: 8b20c318     	add	x24, x24, w0, sxtw
    2ff0: 91028284     	add	x4, x20, #0xa0
    2ff4: aa1503e2     	mov	x2, x21
    2ff8: 528000a3     	mov	w3, #0x5                // =5
    2ffc: cb1802e1     	sub	x1, x23, x24
    3000: 8b180260     	add	x0, x19, x24
    3004: 94000000     	bl	0x3004 <aw22xxx_imax_show+0xd4>
		0000000000003004:  R_AARCH64_CALL26	snprintf
    3008: 8b20c318     	add	x24, x24, w0, sxtw
    300c: 91030284     	add	x4, x20, #0xc0
    3010: aa1503e2     	mov	x2, x21
    3014: 528000c3     	mov	w3, #0x6                // =6
    3018: cb1802e1     	sub	x1, x23, x24
    301c: 8b180260     	add	x0, x19, x24
    3020: 94000000     	bl	0x3020 <aw22xxx_imax_show+0xf0>
		0000000000003020:  R_AARCH64_CALL26	snprintf
    3024: 8b20c318     	add	x24, x24, w0, sxtw
    3028: 91038284     	add	x4, x20, #0xe0
    302c: aa1503e2     	mov	x2, x21
    3030: 528000e3     	mov	w3, #0x7                // =7
    3034: cb1802e1     	sub	x1, x23, x24
    3038: 8b180260     	add	x0, x19, x24
    303c: 94000000     	bl	0x303c <aw22xxx_imax_show+0x10c>
		000000000000303c:  R_AARCH64_CALL26	snprintf
    3040: 8b20c318     	add	x24, x24, w0, sxtw
    3044: 91040284     	add	x4, x20, #0x100
    3048: aa1503e2     	mov	x2, x21
    304c: 52800103     	mov	w3, #0x8                // =8
    3050: cb1802e1     	sub	x1, x23, x24
    3054: 8b180260     	add	x0, x19, x24
    3058: 94000000     	bl	0x3058 <aw22xxx_imax_show+0x128>
		0000000000003058:  R_AARCH64_CALL26	snprintf
    305c: 8b20c318     	add	x24, x24, w0, sxtw
    3060: 91048284     	add	x4, x20, #0x120
    3064: aa1503e2     	mov	x2, x21
    3068: 52800123     	mov	w3, #0x9                // =9
    306c: cb1802e1     	sub	x1, x23, x24
    3070: 8b180260     	add	x0, x19, x24
    3074: 94000000     	bl	0x3074 <aw22xxx_imax_show+0x144>
		0000000000003074:  R_AARCH64_CALL26	snprintf
    3078: 8b20c318     	add	x24, x24, w0, sxtw
    307c: 91050284     	add	x4, x20, #0x140
    3080: aa1503e2     	mov	x2, x21
    3084: 52800143     	mov	w3, #0xa                // =10
    3088: cb1802e1     	sub	x1, x23, x24
    308c: 8b180260     	add	x0, x19, x24
    3090: 94000000     	bl	0x3090 <aw22xxx_imax_show+0x160>
		0000000000003090:  R_AARCH64_CALL26	snprintf
    3094: 8b20c318     	add	x24, x24, w0, sxtw
    3098: 91058284     	add	x4, x20, #0x160
    309c: aa1503e2     	mov	x2, x21
    30a0: 52800163     	mov	w3, #0xb                // =11
    30a4: cb1802e1     	sub	x1, x23, x24
    30a8: 8b180260     	add	x0, x19, x24
    30ac: 94000000     	bl	0x30ac <aw22xxx_imax_show+0x17c>
		00000000000030ac:  R_AARCH64_CALL26	snprintf
    30b0: 8b20c318     	add	x24, x24, w0, sxtw
    30b4: 91060284     	add	x4, x20, #0x180
    30b8: aa1503e2     	mov	x2, x21
    30bc: 52800183     	mov	w3, #0xc                // =12
    30c0: cb1802e1     	sub	x1, x23, x24
    30c4: 8b180260     	add	x0, x19, x24
    30c8: 94000000     	bl	0x30c8 <aw22xxx_imax_show+0x198>
		00000000000030c8:  R_AARCH64_CALL26	snprintf
    30cc: b942e2c3     	ldr	w3, [x22, #0x2e0]
    30d0: 7100387f     	cmp	w3, #0xe
    30d4: 54000202     	b.hs	0x3114 <aw22xxx_imax_show+0x1e4>
    30d8: 8b20c315     	add	x21, x24, w0, sxtw
    30dc: 52820008     	mov	w8, #0x1000             // =4096
    30e0: 8b031684     	add	x4, x20, x3, lsl #5
    30e4: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000030e4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xaaa
    30e8: 91000042     	add	x2, x2, #0x0
		00000000000030e8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xaaa
    30ec: cb150101     	sub	x1, x8, x21
    30f0: 8b150260     	add	x0, x19, x21
    30f4: 94000000     	bl	0x30f4 <aw22xxx_imax_show+0x1c4>
		00000000000030f4:  R_AARCH64_CALL26	snprintf
    30f8: 8b20c2a0     	add	x0, x21, w0, sxtw
    30fc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3100: a94257f6     	ldp	x22, x21, [sp, #0x20]
    3104: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    3108: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    310c: d50323bf     	autiasp
    3110: d65f03c0     	ret
    3114: d42aa240     	brk	#0x5512
