
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026f88 <syna_tcm_remove_device>:
   26f88: d503233f     	paciasp
   26f8c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26f90: a9014ff4     	stp	x20, x19, [sp, #0x10]
   26f94: 910003fd     	mov	x29, sp
   26f98: b5000080     	cbnz	x0, 0x26fa8 <syna_tcm_remove_device+0x20>
   26f9c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   26fa0: 91000000     	add	x0, x0, #0x0
		0000000000026fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   26fa4: 1400008e     	b	0x271dc <syna_tcm_remove_device+0x254>
   26fa8: 394c4002     	ldrb	w2, [x0, #0x310]
   26fac: aa0003f3     	mov	x19, x0
   26fb0: 340000c2     	cbz	w2, 0x26fc8 <syna_tcm_remove_device+0x40>
   26fb4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   26fb8: 91000000     	add	x0, x0, #0x0
		0000000000026fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   26fbc: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   26fc0: 91000021     	add	x1, x1, #0x0
		0000000000026fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   26fc4: 94000000     	bl	0x26fc4 <syna_tcm_remove_device+0x3c>
		0000000000026fc4:  R_AARCH64_CALL26	_printk
   26fc8: f9416a74     	ldr	x20, [x19, #0x2d0]
   26fcc: 94000000     	bl	0x26fcc <syna_tcm_remove_device+0x44>
		0000000000026fcc:  R_AARCH64_CALL26	syna_request_managed_device
   26fd0: b50000e0     	cbnz	x0, 0x26fec <syna_tcm_remove_device+0x64>
   26fd4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   26fd8: 91000000     	add	x0, x0, #0x0
		0000000000026fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   26fdc: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   26fe0: 91000021     	add	x1, x1, #0x0
		0000000000026fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   26fe4: 94000000     	bl	0x26fe4 <syna_tcm_remove_device+0x5c>
		0000000000026fe4:  R_AARCH64_CALL26	_printk
   26fe8: 14000004     	b	0x26ff8 <syna_tcm_remove_device+0x70>
   26fec: b4000074     	cbz	x20, 0x26ff8 <syna_tcm_remove_device+0x70>
   26ff0: aa1403e1     	mov	x1, x20
   26ff4: 94000000     	bl	0x26ff4 <syna_tcm_remove_device+0x6c>
		0000000000026ff4:  R_AARCH64_CALL26	devm_kfree
   26ff8: 394b2262     	ldrb	w2, [x19, #0x2c8]
   26ffc: f9016e7f     	str	xzr, [x19, #0x2d8]
   27000: 390c427f     	strb	wzr, [x19, #0x310]
   27004: 340000c2     	cbz	w2, 0x2701c <syna_tcm_remove_device+0x94>
   27008: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   2700c: 91000000     	add	x0, x0, #0x0
		000000000002700c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   27010: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27014: 91000021     	add	x1, x1, #0x0
		0000000000027014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   27018: 94000000     	bl	0x27018 <syna_tcm_remove_device+0x90>
		0000000000027018:  R_AARCH64_CALL26	_printk
   2701c: f9414674     	ldr	x20, [x19, #0x288]
   27020: 94000000     	bl	0x27020 <syna_tcm_remove_device+0x98>
		0000000000027020:  R_AARCH64_CALL26	syna_request_managed_device
   27024: b50000e0     	cbnz	x0, 0x27040 <syna_tcm_remove_device+0xb8>
   27028: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   2702c: 91000000     	add	x0, x0, #0x0
		000000000002702c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   27030: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27034: 91000021     	add	x1, x1, #0x0
		0000000000027034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   27038: 94000000     	bl	0x27038 <syna_tcm_remove_device+0xb0>
		0000000000027038:  R_AARCH64_CALL26	_printk
   2703c: 14000004     	b	0x2704c <syna_tcm_remove_device+0xc4>
   27040: b4000074     	cbz	x20, 0x2704c <syna_tcm_remove_device+0xc4>
   27044: aa1403e1     	mov	x1, x20
   27048: 94000000     	bl	0x27048 <syna_tcm_remove_device+0xc0>
		0000000000027048:  R_AARCH64_CALL26	devm_kfree
   2704c: 394a0262     	ldrb	w2, [x19, #0x280]
   27050: f9014a7f     	str	xzr, [x19, #0x290]
   27054: 390b227f     	strb	wzr, [x19, #0x2c8]
   27058: 340000c2     	cbz	w2, 0x27070 <syna_tcm_remove_device+0xe8>
   2705c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002705c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   27060: 91000000     	add	x0, x0, #0x0
		0000000000027060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   27064: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27068: 91000021     	add	x1, x1, #0x0
		0000000000027068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   2706c: 94000000     	bl	0x2706c <syna_tcm_remove_device+0xe4>
		000000000002706c:  R_AARCH64_CALL26	_printk
   27070: f9412274     	ldr	x20, [x19, #0x240]
   27074: 94000000     	bl	0x27074 <syna_tcm_remove_device+0xec>
		0000000000027074:  R_AARCH64_CALL26	syna_request_managed_device
   27078: b50000e0     	cbnz	x0, 0x27094 <syna_tcm_remove_device+0x10c>
   2707c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002707c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   27080: 91000000     	add	x0, x0, #0x0
		0000000000027080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   27084: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27088: 91000021     	add	x1, x1, #0x0
		0000000000027088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   2708c: 94000000     	bl	0x2708c <syna_tcm_remove_device+0x104>
		000000000002708c:  R_AARCH64_CALL26	_printk
   27090: 14000004     	b	0x270a0 <syna_tcm_remove_device+0x118>
   27094: b4000074     	cbz	x20, 0x270a0 <syna_tcm_remove_device+0x118>
   27098: aa1403e1     	mov	x1, x20
   2709c: 94000000     	bl	0x2709c <syna_tcm_remove_device+0x114>
		000000000002709c:  R_AARCH64_CALL26	devm_kfree
   270a0: 39474262     	ldrb	w2, [x19, #0x1d0]
   270a4: f901267f     	str	xzr, [x19, #0x248]
   270a8: 390a027f     	strb	wzr, [x19, #0x280]
   270ac: 340000c2     	cbz	w2, 0x270c4 <syna_tcm_remove_device+0x13c>
   270b0: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000270b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   270b4: 91000000     	add	x0, x0, #0x0
		00000000000270b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   270b8: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000270b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   270bc: 91000021     	add	x1, x1, #0x0
		00000000000270bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   270c0: 94000000     	bl	0x270c0 <syna_tcm_remove_device+0x138>
		00000000000270c0:  R_AARCH64_CALL26	_printk
   270c4: f940ca74     	ldr	x20, [x19, #0x190]
   270c8: 94000000     	bl	0x270c8 <syna_tcm_remove_device+0x140>
		00000000000270c8:  R_AARCH64_CALL26	syna_request_managed_device
   270cc: b50000e0     	cbnz	x0, 0x270e8 <syna_tcm_remove_device+0x160>
   270d0: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000270d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   270d4: 91000000     	add	x0, x0, #0x0
		00000000000270d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   270d8: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000270d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   270dc: 91000021     	add	x1, x1, #0x0
		00000000000270dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   270e0: 94000000     	bl	0x270e0 <syna_tcm_remove_device+0x158>
		00000000000270e0:  R_AARCH64_CALL26	_printk
   270e4: 14000004     	b	0x270f4 <syna_tcm_remove_device+0x16c>
   270e8: b4000074     	cbz	x20, 0x270f4 <syna_tcm_remove_device+0x16c>
   270ec: aa1403e1     	mov	x1, x20
   270f0: 94000000     	bl	0x270f0 <syna_tcm_remove_device+0x168>
		00000000000270f0:  R_AARCH64_CALL26	devm_kfree
   270f4: 39450262     	ldrb	w2, [x19, #0x140]
   270f8: f900ce7f     	str	xzr, [x19, #0x198]
   270fc: 3907427f     	strb	wzr, [x19, #0x1d0]
   27100: 340000c2     	cbz	w2, 0x27118 <syna_tcm_remove_device+0x190>
   27104: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   27108: 91000000     	add	x0, x0, #0x0
		0000000000027108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   2710c: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002710c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27110: 91000021     	add	x1, x1, #0x0
		0000000000027110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   27114: 94000000     	bl	0x27114 <syna_tcm_remove_device+0x18c>
		0000000000027114:  R_AARCH64_CALL26	_printk
   27118: f9408274     	ldr	x20, [x19, #0x100]
   2711c: 94000000     	bl	0x2711c <syna_tcm_remove_device+0x194>
		000000000002711c:  R_AARCH64_CALL26	syna_request_managed_device
   27120: b50000e0     	cbnz	x0, 0x2713c <syna_tcm_remove_device+0x1b4>
   27124: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   27128: 91000000     	add	x0, x0, #0x0
		0000000000027128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   2712c: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002712c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27130: 91000021     	add	x1, x1, #0x0
		0000000000027130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   27134: 94000000     	bl	0x27134 <syna_tcm_remove_device+0x1ac>
		0000000000027134:  R_AARCH64_CALL26	_printk
   27138: 14000004     	b	0x27148 <syna_tcm_remove_device+0x1c0>
   2713c: b4000074     	cbz	x20, 0x27148 <syna_tcm_remove_device+0x1c0>
   27140: aa1403e1     	mov	x1, x20
   27144: 94000000     	bl	0x27144 <syna_tcm_remove_device+0x1bc>
		0000000000027144:  R_AARCH64_CALL26	devm_kfree
   27148: 39462262     	ldrb	w2, [x19, #0x188]
   2714c: f900867f     	str	xzr, [x19, #0x108]
   27150: 3905027f     	strb	wzr, [x19, #0x140]
   27154: 340000c2     	cbz	w2, 0x2716c <syna_tcm_remove_device+0x1e4>
   27158: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   2715c: 91000000     	add	x0, x0, #0x0
		000000000002715c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   27160: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27164: 91000021     	add	x1, x1, #0x0
		0000000000027164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   27168: 94000000     	bl	0x27168 <syna_tcm_remove_device+0x1e0>
		0000000000027168:  R_AARCH64_CALL26	_printk
   2716c: f940a674     	ldr	x20, [x19, #0x148]
   27170: 94000000     	bl	0x27170 <syna_tcm_remove_device+0x1e8>
		0000000000027170:  R_AARCH64_CALL26	syna_request_managed_device
   27174: b50000e0     	cbnz	x0, 0x27190 <syna_tcm_remove_device+0x208>
   27178: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   2717c: 91000000     	add	x0, x0, #0x0
		000000000002717c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   27180: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27184: 91000021     	add	x1, x1, #0x0
		0000000000027184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   27188: 94000000     	bl	0x27188 <syna_tcm_remove_device+0x200>
		0000000000027188:  R_AARCH64_CALL26	_printk
   2718c: 14000004     	b	0x2719c <syna_tcm_remove_device+0x214>
   27190: b4000074     	cbz	x20, 0x2719c <syna_tcm_remove_device+0x214>
   27194: aa1403e1     	mov	x1, x20
   27198: 94000000     	bl	0x27198 <syna_tcm_remove_device+0x210>
		0000000000027198:  R_AARCH64_CALL26	devm_kfree
   2719c: f900aa7f     	str	xzr, [x19, #0x150]
   271a0: 3906227f     	strb	wzr, [x19, #0x188]
   271a4: f900027f     	str	xzr, [x19]
   271a8: f900267f     	str	xzr, [x19, #0x48]
   271ac: 94000000     	bl	0x271ac <syna_tcm_remove_device+0x224>
		00000000000271ac:  R_AARCH64_CALL26	syna_request_managed_device
   271b0: b50000e0     	cbnz	x0, 0x271cc <syna_tcm_remove_device+0x244>
   271b4: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000271b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   271b8: 91000000     	add	x0, x0, #0x0
		00000000000271b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   271bc: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000271bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   271c0: 91000021     	add	x1, x1, #0x0
		00000000000271c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   271c4: 94000000     	bl	0x271c4 <syna_tcm_remove_device+0x23c>
		00000000000271c4:  R_AARCH64_CALL26	_printk
   271c8: 14000003     	b	0x271d4 <syna_tcm_remove_device+0x24c>
   271cc: aa1303e1     	mov	x1, x19
   271d0: 94000000     	bl	0x271d0 <syna_tcm_remove_device+0x248>
		00000000000271d0:  R_AARCH64_CALL26	devm_kfree
   271d4: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000271d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d06
   271d8: 91000000     	add	x0, x0, #0x0
		00000000000271d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d06
   271dc: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000271dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a6e
   271e0: 91000021     	add	x1, x1, #0x0
		00000000000271e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a6e
   271e4: 94000000     	bl	0x271e4 <syna_tcm_remove_device+0x25c>
		00000000000271e4:  R_AARCH64_CALL26	_printk
   271e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   271ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   271f0: d50323bf     	autiasp
   271f4: d65f03c0     	ret
