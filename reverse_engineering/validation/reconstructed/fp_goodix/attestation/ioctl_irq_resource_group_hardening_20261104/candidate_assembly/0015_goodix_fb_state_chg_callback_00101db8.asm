
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001088 <goodix_fb_state_chg_callback>:
    1088: d503233f     	paciasp
    108c: d10103ff     	sub	sp, sp, #0x40
    1090: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1094: f90013f5     	str	x21, [sp, #0x20]
    1098: a9034ff4     	stp	x20, x19, [sp, #0x30]
    109c: 910043fd     	add	x29, sp, #0x10
    10a0: d5384108     	mrs	x8, SP_EL0
    10a4: f9438908     	ldr	x8, [x8, #0x710]
    10a8: f90007e8     	str	x8, [sp, #0x8]
    10ac: 390013ff     	strb	wzr, [sp, #0x4]
    10b0: b40000e1     	cbz	x1, 0x10cc <goodix_fb_state_chg_callback+0x44>
    10b4: b40000c2     	cbz	x2, 0x10cc <goodix_fb_state_chg_callback+0x44>
    10b8: 3941c048     	ldrb	w8, [x2, #0x70]
    10bc: 35000148     	cbnz	w8, 0x10e4 <goodix_fb_state_chg_callback+0x5c>
    10c0: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000010c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x601
    10c4: 91000000     	add	x0, x0, #0x0
		00000000000010c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x601
    10c8: 14000003     	b	0x10d4 <goodix_fb_state_chg_callback+0x4c>
    10cc: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000010cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c3
    10d0: 91000000     	add	x0, x0, #0x0
		00000000000010d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c3
    10d4: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000010d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
    10d8: 91000021     	add	x1, x1, #0x0
		00000000000010d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
    10dc: 94000000     	bl	0x10dc <goodix_fb_state_chg_callback+0x54>
		00000000000010dc:  R_AARCH64_CALL26	_printk
    10e0: 1400000c     	b	0x1110 <goodix_fb_state_chg_callback+0x88>
    10e4: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000010e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e
    10e8: 91000108     	add	x8, x8, #0x0
		00000000000010e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e
    10ec: aa0103f3     	mov	x19, x1
    10f0: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000010f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
    10f4: 91000021     	add	x1, x1, #0x0
		00000000000010f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
    10f8: 2a0003f5     	mov	w21, w0
    10fc: aa0803e0     	mov	x0, x8
    1100: aa0203f4     	mov	x20, x2
    1104: 94000000     	bl	0x1104 <goodix_fb_state_chg_callback+0x7c>
		0000000000001104:  R_AARCH64_CALL26	_printk
    1108: 710006bf     	cmp	w21, #0x1
    110c: 54000180     	b.eq	0x113c <goodix_fb_state_chg_callback+0xb4>
    1110: d5384108     	mrs	x8, SP_EL0
    1114: f9438908     	ldr	x8, [x8, #0x710]
    1118: f94007e9     	ldr	x9, [sp, #0x8]
    111c: eb09011f     	cmp	x8, x9
    1120: 540005a1     	b.ne	0x11d4 <goodix_fb_state_chg_callback+0x14c>
    1124: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1128: f94013f5     	ldr	x21, [sp, #0x20]
    112c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1130: 910103ff     	add	sp, sp, #0x40
    1134: d50323bf     	autiasp
    1138: d65f03c0     	ret
    113c: b9400268     	ldr	w8, [x19]
    1140: 7100051f     	cmp	w8, #0x1
    1144: 54000200     	b.eq	0x1184 <goodix_fb_state_chg_callback+0xfc>
    1148: 7100091f     	cmp	w8, #0x2
    114c: 540003e1     	b.ne	0x11c8 <goodix_fb_state_chg_callback+0x140>
    1150: 90000013     	adrp	x19, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
    1154: 91000273     	add	x19, x19, #0x0
		0000000000001154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
    1158: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fd
    115c: 91000000     	add	x0, x0, #0x0
		000000000000115c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fd
    1160: aa1303e1     	mov	x1, x19
    1164: 94000000     	bl	0x1164 <goodix_fb_state_chg_callback+0xdc>
		0000000000001164:  R_AARCH64_CALL26	_printk
    1168: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x476
    116c: 91000000     	add	x0, x0, #0x0
		000000000000116c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x476
    1170: aa1303e1     	mov	x1, x19
    1174: 3901c69f     	strb	wzr, [x20, #0x71]
    1178: 94000000     	bl	0x1178 <goodix_fb_state_chg_callback+0xf0>
		0000000000001178:  R_AARCH64_CALL26	_printk
    117c: 52800068     	mov	w8, #0x3                // =3
    1180: 1400000e     	b	0x11b8 <goodix_fb_state_chg_callback+0x130>
    1184: 90000013     	adrp	x19, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
    1188: 91000273     	add	x19, x19, #0x0
		0000000000001188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
    118c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf00
    1190: 91000000     	add	x0, x0, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf00
    1194: aa1303e1     	mov	x1, x19
    1198: 94000000     	bl	0x1198 <goodix_fb_state_chg_callback+0x110>
		0000000000001198:  R_AARCH64_CALL26	_printk
    119c: 52800028     	mov	w8, #0x1                // =1
    11a0: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000011a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa07
    11a4: 91000000     	add	x0, x0, #0x0
		00000000000011a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa07
    11a8: aa1303e1     	mov	x1, x19
    11ac: 3901c688     	strb	w8, [x20, #0x71]
    11b0: 94000000     	bl	0x11b0 <goodix_fb_state_chg_callback+0x128>
		00000000000011b0:  R_AARCH64_CALL26	_printk
    11b4: 52800048     	mov	w8, #0x2                // =2
    11b8: 910013e0     	add	x0, sp, #0x4
    11bc: 390013e8     	strb	w8, [sp, #0x4]
    11c0: 94000000     	bl	0x11c0 <goodix_fb_state_chg_callback+0x138>
		00000000000011c0:  R_AARCH64_CALL26	sendnlmsg
    11c4: 17ffffd3     	b	0x1110 <goodix_fb_state_chg_callback+0x88>
    11c8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000011c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1173
    11cc: 91000000     	add	x0, x0, #0x0
		00000000000011cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1173
    11d0: 17ffffc1     	b	0x10d4 <goodix_fb_state_chg_callback+0x4c>
    11d4: 94000000     	bl	0x11d4 <goodix_fb_state_chg_callback+0x14c>
		00000000000011d4:  R_AARCH64_CALL26	__stack_chk_fail
