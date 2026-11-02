
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000808c <syna_dev_do_reflash>:
    808c: d503233f     	paciasp
    8090: d100c3ff     	sub	sp, sp, #0x30
    8094: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8098: a9024ff4     	stp	x20, x19, [sp, #0x20]
    809c: 910043fd     	add	x29, sp, #0x10
    80a0: d5384108     	mrs	x8, SP_EL0
    80a4: f9438908     	ldr	x8, [x8, #0x710]
    80a8: f90007e8     	str	x8, [sp, #0x8]
    80ac: f90003ff     	str	xzr, [sp]
    80b0: b5000180     	cbnz	x0, 0x80e0 <syna_dev_do_reflash+0x54>
    80b4: 128002a0     	mov	w0, #-0x16              // =-22
    80b8: d5384108     	mrs	x8, SP_EL0
    80bc: f9438908     	ldr	x8, [x8, #0x710]
    80c0: f94007e9     	ldr	x9, [sp, #0x8]
    80c4: eb09011f     	cmp	x8, x9
    80c8: 54000621     	b.ne	0x818c <syna_dev_do_reflash+0x100>
    80cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    80d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    80d4: 9100c3ff     	add	sp, sp, #0x30
    80d8: d50323bf     	autiasp
    80dc: d65f03c0     	ret
    80e0: a9402013     	ldp	x19, x8, [x0]
    80e4: 2a0103f4     	mov	w20, w1
    80e8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000080e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3509
    80ec: 91000021     	add	x1, x1, #0x0
		00000000000080ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3509
    80f0: 910003e0     	mov	x0, sp
    80f4: f9403902     	ldr	x2, [x8, #0x70]
    80f8: 94000000     	bl	0x80f8 <syna_dev_do_reflash+0x6c>
		00000000000080f8:  R_AARCH64_CALL26	request_firmware
    80fc: 36f80180     	tbz	w0, #0x1f, 0x812c <syna_dev_do_reflash+0xa0>
    8100: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38fd
    8104: 91000108     	add	x8, x8, #0x0
		0000000000008104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38fd
    8108: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fe6
    810c: 91000021     	add	x1, x1, #0x0
		000000000000810c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fe6
    8110: 90000002     	adrp	x2, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3509
    8114: 91000042     	add	x2, x2, #0x0
		0000000000008114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3509
    8118: 2a0003f3     	mov	w19, w0
    811c: aa0803e0     	mov	x0, x8
    8120: 94000000     	bl	0x8120 <syna_dev_do_reflash+0x94>
		0000000000008120:  R_AARCH64_CALL26	_printk
    8124: 2a1303e0     	mov	w0, w19
    8128: 17ffffe4     	b	0x80b8 <syna_dev_do_reflash+0x2c>
    812c: f94003e8     	ldr	x8, [sp]
    8130: 12000284     	and	w4, w20, #0x1
    8134: aa1303e0     	mov	x0, x19
    8138: 2a1f03e3     	mov	w3, wzr
    813c: f9400501     	ldr	x1, [x8, #0x8]
    8140: b9400102     	ldr	w2, [x8]
    8144: 94000000     	bl	0x8144 <syna_dev_do_reflash+0xb8>
		0000000000008144:  R_AARCH64_CALL26	syna_tcm_do_fw_update
    8148: 2a0003f4     	mov	w20, w0
    814c: 36f800c0     	tbz	w0, #0x1f, 0x8164 <syna_dev_do_reflash+0xd8>
    8150: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75b
    8154: 91000000     	add	x0, x0, #0x0
		0000000000008154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75b
    8158: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fe6
    815c: 91000021     	add	x1, x1, #0x0
		000000000000815c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fe6
    8160: 94000000     	bl	0x8160 <syna_dev_do_reflash+0xd4>
		0000000000008160:  R_AARCH64_CALL26	_printk
    8164: 39402662     	ldrb	w2, [x19, #0x9]
    8168: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfd
    816c: 91000000     	add	x0, x0, #0x0
		000000000000816c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfd
    8170: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fe6
    8174: 91000021     	add	x1, x1, #0x0
		0000000000008174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fe6
    8178: 94000000     	bl	0x8178 <syna_dev_do_reflash+0xec>
		0000000000008178:  R_AARCH64_CALL26	_printk
    817c: f94003e0     	ldr	x0, [sp]
    8180: 94000000     	bl	0x8180 <syna_dev_do_reflash+0xf4>
		0000000000008180:  R_AARCH64_CALL26	release_firmware
    8184: 2a1403e0     	mov	w0, w20
    8188: 17ffffcc     	b	0x80b8 <syna_dev_do_reflash+0x2c>
    818c: 94000000     	bl	0x818c <syna_dev_do_reflash+0x100>
		000000000000818c:  R_AARCH64_CALL26	__stack_chk_fail
