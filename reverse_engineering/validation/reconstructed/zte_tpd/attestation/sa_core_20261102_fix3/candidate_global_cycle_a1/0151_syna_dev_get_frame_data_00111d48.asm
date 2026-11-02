
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a0b8 <syna_dev_get_frame_data>:
    a0b8: d503233f     	paciasp
    a0bc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a0c0: f9000bf5     	str	x21, [sp, #0x10]
    a0c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a0c8: 910003fd     	mov	x29, sp
    a0cc: 2a0103f4     	mov	w20, w1
    a0d0: 2a0203f3     	mov	w19, w2
    a0d4: aa0003f5     	mov	x21, x0
    a0d8: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942b
    a0dc: 91000000     	add	x0, x0, #0x0
		000000000000a0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942b
    a0e0: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c196
    a0e4: 91000021     	add	x1, x1, #0x0
		000000000000a0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c196
    a0e8: 2a1403e2     	mov	w2, w20
    a0ec: 94000000     	bl	0xa0ec <syna_dev_get_frame_data+0x34>
		000000000000a0ec:  R_AARCH64_CALL26	_printk
    a0f0: b4000155     	cbz	x21, 0xa118 <syna_dev_get_frame_data+0x60>
    a0f4: f94002a0     	ldr	x0, [x21]
    a0f8: 7100029f     	cmp	w20, #0x0
    a0fc: 528000c8     	mov	w8, #0x6                // =6
    a100: 1a8803e2     	csel	w2, wzr, w8, eq
    a104: 52801e61     	mov	w1, #0xf3               // =243
    a108: 2a1303e3     	mov	w3, w19
    a10c: 94000000     	bl	0xa10c <syna_dev_get_frame_data+0x54>
		000000000000a10c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a110: 0a807c00     	and	w0, w0, w0, asr #31
    a114: 14000002     	b	0xa11c <syna_dev_get_frame_data+0x64>
    a118: 128002a0     	mov	w0, #-0x16              // =-22
    a11c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a120: f9400bf5     	ldr	x21, [sp, #0x10]
    a124: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a128: d50323bf     	autiasp
    a12c: d65f03c0     	ret
