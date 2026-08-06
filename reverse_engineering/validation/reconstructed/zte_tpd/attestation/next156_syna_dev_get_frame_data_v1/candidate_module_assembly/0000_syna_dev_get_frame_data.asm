
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008520 <syna_dev_get_frame_data>:
    8520: d503233f     	paciasp
    8524: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    8528: f9000bf5     	str	x21, [sp, #0x10]
    852c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8530: 910003fd     	mov	x29, sp
    8534: 2a0103f4     	mov	w20, w1
    8538: 2a0203f3     	mov	w19, w2
    853c: aa0003f5     	mov	x21, x0
    8540: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x150>
		0000000000008540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253b
    8544: 91000000     	add	x0, x0, #0x0
		0000000000008544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253b
    8548: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x150>
		0000000000008548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5385
    854c: 91000021     	add	x1, x1, #0x0
		000000000000854c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5385
    8550: 2a1403e2     	mov	w2, w20
    8554: 94000000     	bl	0x8554 <syna_dev_get_frame_data+0x34>
		0000000000008554:  R_AARCH64_CALL26	_printk
    8558: b4000155     	cbz	x21, 0x8580 <syna_dev_get_frame_data+0x60>
    855c: f94002a0     	ldr	x0, [x21]
    8560: 7100029f     	cmp	w20, #0x0
    8564: 528000c8     	mov	w8, #0x6                // =6
    8568: 1a8803e2     	csel	w2, wzr, w8, eq
    856c: 52801e61     	mov	w1, #0xf3               // =243
    8570: 2a1303e3     	mov	w3, w19
    8574: 94000000     	bl	0x8574 <syna_dev_get_frame_data+0x54>
		0000000000008574:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8578: 0a807c00     	and	w0, w0, w0, asr #31
    857c: 14000002     	b	0x8584 <syna_dev_get_frame_data+0x64>
    8580: 128002a0     	mov	w0, #-0x16              // =-22
    8584: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8588: f9400bf5     	ldr	x21, [sp, #0x10]
    858c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8590: d50323bf     	autiasp
    8594: d65f03c0     	ret
