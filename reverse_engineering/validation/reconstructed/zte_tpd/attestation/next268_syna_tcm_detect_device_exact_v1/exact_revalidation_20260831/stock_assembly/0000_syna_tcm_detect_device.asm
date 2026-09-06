
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b0bc <syna_tcm_detect_device>:
   1b0bc: d503233f     	paciasp
   1b0c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b0c4: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1b0c8: 910003fd     	mov	x29, sp
   1b0cc: b4000580     	cbz	x0, 0x1b17c <syna_tcm_detect_device+0xc0>
   1b0d0: 12000c28     	and	w8, w1, #0xf
   1b0d4: aa0003f3     	mov	x19, x0
   1b0d8: 2a0103f4     	mov	w20, w1
   1b0dc: 7100051f     	cmp	w8, #0x1
   1b0e0: 7900101f     	strh	wzr, [x0, #0x8]
   1b0e4: 54000221     	b.ne	0x1b128 <syna_tcm_detect_device+0x6c>
   1b0e8: 53071e81     	ubfx	w1, w20, #7, #1
   1b0ec: 12000042     	and	w2, w2, #0x1
   1b0f0: aa1303e0     	mov	x0, x19
   1b0f4: 94000000     	bl	0x1b0f4 <syna_tcm_detect_device+0x38>
		000000000001b0f4:  R_AARCH64_CALL26	syna_tcm_v1_detect
   1b0f8: 37f80100     	tbnz	w0, #0x1f, 0x1b118 <syna_tcm_detect_device+0x5c>
   1b0fc: f941ce68     	ldr	x8, [x19, #0x398]
   1b100: b4000268     	cbz	x8, 0x1b14c <syna_tcm_detect_device+0x90>
   1b104: f941ca68     	ldr	x8, [x19, #0x390]
   1b108: b4000228     	cbz	x8, 0x1b14c <syna_tcm_detect_device+0x90>
   1b10c: 36380534     	tbz	w20, #0x7, 0x1b1b0 <syna_tcm_detect_device+0xf4>
   1b110: 52800020     	mov	w0, #0x1                // =1
   1b114: 14000023     	b	0x1b1a0 <syna_tcm_detect_device+0xe4>
   1b118: b9424a68     	ldr	w8, [x19, #0x248]
   1b11c: 35000648     	cbnz	w8, 0x1b1e4 <syna_tcm_detect_device+0x128>
   1b120: 12801e80     	mov	w0, #-0xf5              // =-245
   1b124: 1400001f     	b	0x1b1a0 <syna_tcm_detect_device+0xe4>
   1b128: 7100091f     	cmp	w8, #0x2
   1b12c: 540002e1     	b.ne	0x1b188 <syna_tcm_detect_device+0xcc>
   1b130: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x145d
   1b134: 91000000     	add	x0, x0, #0x0
		000000000001b134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x145d
   1b138: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b13c: 91000021     	add	x1, x1, #0x0
		000000000001b13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b140: 52800042     	mov	w2, #0x2                // =2
   1b144: 94000000     	bl	0x1b144 <syna_tcm_detect_device+0x88>
		000000000001b144:  R_AARCH64_CALL26	_printk
   1b148: 14000015     	b	0x1b19c <syna_tcm_detect_device+0xe0>
   1b14c: 90000013     	adrp	x19, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b14c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b150: 91000273     	add	x19, x19, #0x0
		000000000001b150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b154: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa86f
   1b158: 91000000     	add	x0, x0, #0x0
		000000000001b158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa86f
   1b15c: aa1303e1     	mov	x1, x19
   1b160: 94000000     	bl	0x1b160 <syna_tcm_detect_device+0xa4>
		000000000001b160:  R_AARCH64_CALL26	_printk
   1b164: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x581c
   1b168: 91000000     	add	x0, x0, #0x0
		000000000001b168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x581c
   1b16c: aa1303e1     	mov	x1, x19
   1b170: 94000000     	bl	0x1b170 <syna_tcm_detect_device+0xb4>
		000000000001b170:  R_AARCH64_CALL26	_printk
   1b174: 12801e80     	mov	w0, #-0xf5              // =-245
   1b178: 1400000a     	b	0x1b1a0 <syna_tcm_detect_device+0xe4>
   1b17c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1b180: 91000000     	add	x0, x0, #0x0
		000000000001b180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1b184: 14000003     	b	0x1b190 <syna_tcm_detect_device+0xd4>
   1b188: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a9
   1b18c: 91000000     	add	x0, x0, #0x0
		000000000001b18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a9
   1b190: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b194: 91000021     	add	x1, x1, #0x0
		000000000001b194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b198: 94000000     	bl	0x1b198 <syna_tcm_detect_device+0xdc>
		000000000001b198:  R_AARCH64_CALL26	_printk
   1b19c: 12801e00     	mov	w0, #-0xf1              // =-241
   1b1a0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1b1a4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b1a8: d50323bf     	autiasp
   1b1ac: d65f03c0     	ret
   1b1b0: 39402662     	ldrb	w2, [x19, #0x9]
   1b1b4: 71002c5f     	cmp	w2, #0xb
   1b1b8: 540002e0     	b.eq	0x1b214 <syna_tcm_detect_device+0x158>
   1b1bc: 7100045f     	cmp	w2, #0x1
   1b1c0: 54000361     	b.ne	0x1b22c <syna_tcm_detect_device+0x170>
   1b1c4: b9400e62     	ldr	w2, [x19, #0xc]
   1b1c8: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b1c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9da
   1b1cc: 91000000     	add	x0, x0, #0x0
		000000000001b1cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9da
   1b1d0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b1d4: 91000021     	add	x1, x1, #0x0
		000000000001b1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b1d8: 91020a63     	add	x3, x19, #0x82
   1b1dc: 94000000     	bl	0x1b1dc <syna_tcm_detect_device+0x120>
		000000000001b1dc:  R_AARCH64_CALL26	_printk
   1b1e0: 14000018     	b	0x1b240 <syna_tcm_detect_device+0x184>
   1b1e4: f9412268     	ldr	x8, [x19, #0x240]
   1b1e8: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b1e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4d
   1b1ec: 91000000     	add	x0, x0, #0x0
		000000000001b1ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4d
   1b1f0: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b1f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b1f4: 91000021     	add	x1, x1, #0x0
		000000000001b1f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b1f8: 39400102     	ldrb	w2, [x8]
   1b1fc: 39400503     	ldrb	w3, [x8, #0x1]
   1b200: 39400904     	ldrb	w4, [x8, #0x2]
   1b204: 39400d05     	ldrb	w5, [x8, #0x3]
   1b208: 94000000     	bl	0x1b208 <syna_tcm_detect_device+0x14c>
		000000000001b208:  R_AARCH64_CALL26	_printk
   1b20c: 12801e80     	mov	w0, #-0xf5              // =-245
   1b210: 17ffffe4     	b	0x1b1a0 <syna_tcm_detect_device+0xe4>
   1b214: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5de
   1b218: 91000000     	add	x0, x0, #0x0
		000000000001b218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5de
   1b21c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b21c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b220: 91000021     	add	x1, x1, #0x0
		000000000001b220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b224: 94000000     	bl	0x1b224 <syna_tcm_detect_device+0x168>
		000000000001b224:  R_AARCH64_CALL26	_printk
   1b228: 14000006     	b	0x1b240 <syna_tcm_detect_device+0x184>
   1b22c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b22c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83cf
   1b230: 91000000     	add	x0, x0, #0x0
		000000000001b230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83cf
   1b234: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc5f
   1b238: 91000021     	add	x1, x1, #0x0
		000000000001b238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc5f
   1b23c: 94000000     	bl	0x1b23c <syna_tcm_detect_device+0x180>
		000000000001b23c:  R_AARCH64_CALL26	_printk
   1b240: 39402660     	ldrb	w0, [x19, #0x9]
   1b244: 17ffffd7     	b	0x1b1a0 <syna_tcm_detect_device+0xe4>
