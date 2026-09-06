
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b1a8 <syna_dev_set_display_rotation>:
    b1a8: d503233f     	paciasp
    b1ac: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    b1b0: f9000bf7     	str	x23, [sp, #0x10]
    b1b4: a90257f6     	stp	x22, x21, [sp, #0x20]
    b1b8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    b1bc: 910003fd     	mov	x29, sp
    b1c0: 2a0103f3     	mov	w19, w1
    b1c4: 2a0203f4     	mov	w20, w2
    b1c8: aa0003f5     	mov	x21, x0
    b1cc: b9460c16     	ldr	w22, [x0, #0x60c]
    b1d0: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e19
    b1d4: 91000000     	add	x0, x0, #0x0
		000000000000b1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e19
    b1d8: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b1d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b0a
    b1dc: 91000021     	add	x1, x1, #0x0
		000000000000b1dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b0a
    b1e0: 2a1303e2     	mov	w2, w19
    b1e4: 94000000     	bl	0xb1e4 <syna_dev_set_display_rotation+0x3c>
		000000000000b1e4:  R_AARCH64_CALL26	_printk
    b1e8: b4000555     	cbz	x21, 0xb290 <syna_dev_set_display_rotation+0xe8>
    b1ec: 710002df     	cmp	w22, #0x0
    b1f0: 52800068     	mov	w8, #0x3                // =3
    b1f4: f94002a0     	ldr	x0, [x21]
    b1f8: 1a8803f7     	csel	w23, wzr, w8, eq
    b1fc: 528016c1     	mov	w1, #0xb6               // =182
    b200: 2a1403e3     	mov	w3, w20
    b204: 2a1703e2     	mov	w2, w23
    b208: 94000000     	bl	0xb208 <syna_dev_set_display_rotation+0x60>
		000000000000b208:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b20c: 37f80440     	tbnz	w0, #0x1f, 0xb294 <syna_dev_set_display_rotation+0xec>
    b210: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7534
    b214: 91000000     	add	x0, x0, #0x0
		000000000000b214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7534
    b218: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b0a
    b21c: 91000021     	add	x1, x1, #0x0
		000000000000b21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b0a
    b220: 2a1703e2     	mov	w2, w23
    b224: 94000000     	bl	0xb224 <syna_dev_set_display_rotation+0x7c>
		000000000000b224:  R_AARCH64_CALL26	_printk
    b228: f94002a0     	ldr	x0, [x21]
    b22c: 528016a1     	mov	w1, #0xb5               // =181
    b230: 2a1603e2     	mov	w2, w22
    b234: 2a1403e3     	mov	w3, w20
    b238: 94000000     	bl	0xb238 <syna_dev_set_display_rotation+0x90>
		000000000000b238:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b23c: 37f802c0     	tbnz	w0, #0x1f, 0xb294 <syna_dev_set_display_rotation+0xec>
    b240: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ff8
    b244: 91000000     	add	x0, x0, #0x0
		000000000000b244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ff8
    b248: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b0a
    b24c: 91000021     	add	x1, x1, #0x0
		000000000000b24c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b0a
    b250: 2a1603e2     	mov	w2, w22
    b254: 94000000     	bl	0xb254 <syna_dev_set_display_rotation+0xac>
		000000000000b254:  R_AARCH64_CALL26	_printk
    b258: f94002a0     	ldr	x0, [x21]
    b25c: 52801681     	mov	w1, #0xb4               // =180
    b260: 2a1303e2     	mov	w2, w19
    b264: 2a1403e3     	mov	w3, w20
    b268: 94000000     	bl	0xb268 <syna_dev_set_display_rotation+0xc0>
		000000000000b268:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b26c: 37f80140     	tbnz	w0, #0x1f, 0xb294 <syna_dev_set_display_rotation+0xec>
    b270: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d4
    b274: 91000000     	add	x0, x0, #0x0
		000000000000b274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d4
    b278: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b0a
    b27c: 91000021     	add	x1, x1, #0x0
		000000000000b27c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b0a
    b280: 2a1303e2     	mov	w2, w19
    b284: 94000000     	bl	0xb284 <syna_dev_set_display_rotation+0xdc>
		000000000000b284:  R_AARCH64_CALL26	_printk
    b288: 2a1f03e0     	mov	w0, wzr
    b28c: 14000002     	b	0xb294 <syna_dev_set_display_rotation+0xec>
    b290: 128002a0     	mov	w0, #-0x16              // =-22
    b294: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    b298: f9400bf7     	ldr	x23, [sp, #0x10]
    b29c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    b2a0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    b2a4: d50323bf     	autiasp
    b2a8: d65f03c0     	ret
