
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b4c0 <syna_dev_get_frame_data>:
    b4c0: d503233f     	paciasp
    b4c4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b4c8: f9000bf5     	str	x21, [sp, #0x10]
    b4cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b4d0: 910003fd     	mov	x29, sp
    b4d4: 2a0103f4     	mov	w20, w1
    b4d8: 2a0203f3     	mov	w19, w2
    b4dc: aa0003f5     	mov	x21, x0
    b4e0: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8f
    b4e4: 91000000     	add	x0, x0, #0x0
		000000000000b4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8f
    b4e8: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b4e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb35c
    b4ec: 91000021     	add	x1, x1, #0x0
		000000000000b4ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb35c
    b4f0: 2a1403e2     	mov	w2, w20
    b4f4: 94000000     	bl	0xb4f4 <syna_dev_get_frame_data+0x34>
		000000000000b4f4:  R_AARCH64_CALL26	_printk
    b4f8: b4000155     	cbz	x21, 0xb520 <syna_dev_get_frame_data+0x60>
    b4fc: f94002a0     	ldr	x0, [x21]
    b500: 7100029f     	cmp	w20, #0x0
    b504: 528000c8     	mov	w8, #0x6                // =6
    b508: 1a8803e2     	csel	w2, wzr, w8, eq
    b50c: 52801e61     	mov	w1, #0xf3               // =243
    b510: 2a1303e3     	mov	w3, w19
    b514: 94000000     	bl	0xb514 <syna_dev_get_frame_data+0x54>
		000000000000b514:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b518: 0a807c00     	and	w0, w0, w0, asr #31
    b51c: 14000002     	b	0xb524 <syna_dev_get_frame_data+0x64>
    b520: 128002a0     	mov	w0, #-0x16              // =-22
    b524: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b528: f9400bf5     	ldr	x21, [sp, #0x10]
    b52c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b530: d50323bf     	autiasp
    b534: d65f03c0     	ret
