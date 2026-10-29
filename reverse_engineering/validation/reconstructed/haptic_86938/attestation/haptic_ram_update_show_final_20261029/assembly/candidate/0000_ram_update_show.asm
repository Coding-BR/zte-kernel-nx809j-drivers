
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003034 <ram_update_show>:
    3034: d503233f     	paciasp
    3038: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    303c: a90157f6     	stp	x22, x21, [sp, #0x10]
    3040: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3044: 910003fd     	mov	x29, sp
    3048: f9404c15     	ldr	x21, [x0, #0x98]
    304c: aa0203f3     	mov	x19, x2
    3050: f94292a8     	ldr	x8, [x21, #0x520]
    3054: d102a2b4     	sub	x20, x21, #0xa8
    3058: aa1403e0     	mov	x0, x20
    305c: f9401d08     	ldr	x8, [x8, #0x38]
    3060: b85fc110     	ldur	w16, [x8, #-0x4]
    3064: 72810611     	movk	w17, #0x830
    3068: 72b08f51     	movk	w17, #0x847a, lsl #16
    306c: 6b11021f     	cmp	w16, w17
    3070: 54000040     	b.eq	0x3078 <ram_update_show+0x44>
    3074: d4304500     	brk	#0x8228
    3078: d63f0100     	blr	x8
    307c: f94292a8     	ldr	x8, [x21, #0x520]
    3080: aa1403e0     	mov	x0, x20
    3084: 52800021     	mov	w1, #0x1                // =1
    3088: f9403508     	ldr	x8, [x8, #0x68]
    308c: b85fc110     	ldur	w16, [x8, #-0x4]
    3090: 729bedd1     	movk	w17, #0xdf6e
    3094: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    3098: 6b11021f     	cmp	w16, w17
    309c: 54000040     	b.eq	0x30a4 <ram_update_show+0x70>
    30a0: d4304500     	brk	#0x8228
    30a4: d63f0100     	blr	x8
    30a8: f94292a8     	ldr	x8, [x21, #0x520]
    30ac: aa1403e0     	mov	x0, x20
    30b0: f9407d08     	ldr	x8, [x8, #0xf8]
    30b4: b85fc110     	ldur	w16, [x8, #-0x4]
    30b8: 72810611     	movk	w17, #0x830
    30bc: 72b08f51     	movk	w17, #0x847a, lsl #16
    30c0: 6b11021f     	cmp	w16, w17
    30c4: 54000040     	b.eq	0x30cc <ram_update_show+0x98>
    30c8: d4304500     	brk	#0x8228
    30cc: d63f0100     	blr	x8
    30d0: 90000008     	adrp	x8, 0x3000 <f0_show+0xb4>
		00000000000030d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73a
    30d4: 91000108     	add	x8, x8, #0x0
		00000000000030d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73a
    30d8: aa1403e0     	mov	x0, x20
    30dc: a9402109     	ldp	x9, x8, [x8]
    30e0: aa1303e1     	mov	x1, x19
    30e4: a9002269     	stp	x9, x8, [x19]
    30e8: f94292a8     	ldr	x8, [x21, #0x520]
    30ec: f940a108     	ldr	x8, [x8, #0x140]
    30f0: b85fc110     	ldur	w16, [x8, #-0x4]
    30f4: 72974991     	movk	w17, #0xba4c
    30f8: 72a181b1     	movk	w17, #0xc0d, lsl #16
    30fc: 6b11021f     	cmp	w16, w17
    3100: 54000040     	b.eq	0x3108 <ram_update_show+0xd4>
    3104: d4304500     	brk	#0x8228
    3108: d63f0100     	blr	x8
    310c: 5281fe28     	mov	w8, #0xff1              // =4081
    3110: 91003c16     	add	x22, x0, #0xf
    3114: 90000002     	adrp	x2, 0x3000 <f0_show+0xb4>
		0000000000003114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b8
    3118: 91000042     	add	x2, x2, #0x0
		0000000000003118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b8
    311c: cb000101     	sub	x1, x8, x0
    3120: 8b160260     	add	x0, x19, x22
    3124: 94000000     	bl	0x3124 <ram_update_show+0xf0>
		0000000000003124:  R_AARCH64_CALL26	snprintf
    3128: f94292a8     	ldr	x8, [x21, #0x520]
    312c: 8b20c2d3     	add	x19, x22, w0, sxtw
    3130: aa1403e0     	mov	x0, x20
    3134: 2a1f03e1     	mov	w1, wzr
    3138: f9403508     	ldr	x8, [x8, #0x68]
    313c: b85fc110     	ldur	w16, [x8, #-0x4]
    3140: 729bedd1     	movk	w17, #0xdf6e
    3144: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    3148: 6b11021f     	cmp	w16, w17
    314c: 54000040     	b.eq	0x3154 <ram_update_show+0x120>
    3150: d4304500     	brk	#0x8228
    3154: d63f0100     	blr	x8
    3158: aa1303e0     	mov	x0, x19
    315c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3160: a94157f6     	ldp	x22, x21, [sp, #0x10]
    3164: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    3168: d50323bf     	autiasp
    316c: d65f03c0     	ret
