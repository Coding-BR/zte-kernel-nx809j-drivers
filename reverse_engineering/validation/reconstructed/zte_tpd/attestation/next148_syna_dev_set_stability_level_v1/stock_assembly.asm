
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b01c <syna_dev_set_stability_level>:
    b01c: d503233f     	paciasp
    b020: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b024: f9000bf5     	str	x21, [sp, #0x10]
    b028: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b02c: 910003fd     	mov	x29, sp
    b030: 2a0103f5     	mov	w21, w1
    b034: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ef5
    b038: 91000021     	add	x1, x1, #0x0
		000000000000b038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ef5
    b03c: 2a0203f3     	mov	w19, w2
    b040: aa0003f4     	mov	x20, x0
    b044: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9664
    b048: 91000000     	add	x0, x0, #0x0
		000000000000b048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9664
    b04c: aa0103e2     	mov	x2, x1
    b050: 94000000     	bl	0xb050 <syna_dev_set_stability_level+0x34>
		000000000000b050:  R_AARCH64_CALL26	_printk
    b054: b40002f4     	cbz	x20, 0xb0b0 <syna_dev_set_stability_level+0x94>
    b058: 710006bf     	cmp	w21, #0x1
    b05c: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b05c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacae
    b060: 91000000     	add	x0, x0, #0x0
		000000000000b060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacae
    b064: 540002ad     	b.le	0xb0b8 <syna_dev_set_stability_level+0x9c>
    b068: 71000abf     	cmp	w21, #0x2
    b06c: 54000440     	b.eq	0xb0f4 <syna_dev_set_stability_level+0xd8>
    b070: 71000ebf     	cmp	w21, #0x3
    b074: 540006e0     	b.eq	0xb150 <syna_dev_set_stability_level+0x134>
    b078: 710012bf     	cmp	w21, #0x4
    b07c: 54000801     	b.ne	0xb17c <syna_dev_set_stability_level+0x160>
    b080: b9460288     	ldr	w8, [x20, #0x600]
    b084: b945fe89     	ldr	w9, [x20, #0x5fc]
    b088: 52801f21     	mov	w1, #0xf9               // =249
    b08c: f9400280     	ldr	x0, [x20]
    b090: 2a1303e3     	mov	w3, w19
    b094: 2a081128     	orr	w8, w9, w8, lsl #4
    b098: 32160102     	orr	w2, w8, #0x400
    b09c: 94000000     	bl	0xb09c <syna_dev_set_stability_level+0x80>
		000000000000b09c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b0a0: 37f80780     	tbnz	w0, #0x1f, 0xb190 <syna_dev_set_stability_level+0x174>
    b0a4: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b0a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fa0
    b0a8: 91000000     	add	x0, x0, #0x0
		000000000000b0a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fa0
    b0ac: 14000034     	b	0xb17c <syna_dev_set_stability_level+0x160>
    b0b0: 128002a0     	mov	w0, #-0x16              // =-22
    b0b4: 14000037     	b	0xb190 <syna_dev_set_stability_level+0x174>
    b0b8: 34000375     	cbz	w21, 0xb124 <syna_dev_set_stability_level+0x108>
    b0bc: 710006bf     	cmp	w21, #0x1
    b0c0: 540005e1     	b.ne	0xb17c <syna_dev_set_stability_level+0x160>
    b0c4: b9460288     	ldr	w8, [x20, #0x600]
    b0c8: b945fe89     	ldr	w9, [x20, #0x5fc]
    b0cc: 52801f21     	mov	w1, #0xf9               // =249
    b0d0: f9400280     	ldr	x0, [x20]
    b0d4: 2a1303e3     	mov	w3, w19
    b0d8: 2a081128     	orr	w8, w9, w8, lsl #4
    b0dc: 32180102     	orr	w2, w8, #0x100
    b0e0: 94000000     	bl	0xb0e0 <syna_dev_set_stability_level+0xc4>
		000000000000b0e0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b0e4: 37f80560     	tbnz	w0, #0x1f, 0xb190 <syna_dev_set_stability_level+0x174>
    b0e8: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b0e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b70
    b0ec: 91000000     	add	x0, x0, #0x0
		000000000000b0ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b70
    b0f0: 14000023     	b	0xb17c <syna_dev_set_stability_level+0x160>
    b0f4: b9460288     	ldr	w8, [x20, #0x600]
    b0f8: b945fe89     	ldr	w9, [x20, #0x5fc]
    b0fc: 52801f21     	mov	w1, #0xf9               // =249
    b100: f9400280     	ldr	x0, [x20]
    b104: 2a1303e3     	mov	w3, w19
    b108: 2a081128     	orr	w8, w9, w8, lsl #4
    b10c: 32170102     	orr	w2, w8, #0x200
    b110: 94000000     	bl	0xb110 <syna_dev_set_stability_level+0xf4>
		000000000000b110:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b114: 37f803e0     	tbnz	w0, #0x1f, 0xb190 <syna_dev_set_stability_level+0x174>
    b118: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fca
    b11c: 91000000     	add	x0, x0, #0x0
		000000000000b11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fca
    b120: 14000017     	b	0xb17c <syna_dev_set_stability_level+0x160>
    b124: b9460288     	ldr	w8, [x20, #0x600]
    b128: b945fe89     	ldr	w9, [x20, #0x5fc]
    b12c: 52801f21     	mov	w1, #0xf9               // =249
    b130: f9400280     	ldr	x0, [x20]
    b134: 2a1303e3     	mov	w3, w19
    b138: 2a081122     	orr	w2, w9, w8, lsl #4
    b13c: 94000000     	bl	0xb13c <syna_dev_set_stability_level+0x120>
		000000000000b13c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b140: 37f80280     	tbnz	w0, #0x1f, 0xb190 <syna_dev_set_stability_level+0x174>
    b144: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f12
    b148: 91000000     	add	x0, x0, #0x0
		000000000000b148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f12
    b14c: 1400000c     	b	0xb17c <syna_dev_set_stability_level+0x160>
    b150: b9460288     	ldr	w8, [x20, #0x600]
    b154: b945fe89     	ldr	w9, [x20, #0x5fc]
    b158: 52801f21     	mov	w1, #0xf9               // =249
    b15c: f9400280     	ldr	x0, [x20]
    b160: 2a1303e3     	mov	w3, w19
    b164: 2a081128     	orr	w8, w9, w8, lsl #4
    b168: 32180502     	orr	w2, w8, #0x300
    b16c: 94000000     	bl	0xb16c <syna_dev_set_stability_level+0x150>
		000000000000b16c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    b170: 37f80100     	tbnz	w0, #0x1f, 0xb190 <syna_dev_set_stability_level+0x174>
    b174: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ee
    b178: 91000000     	add	x0, x0, #0x0
		000000000000b178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ee
    b17c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000b17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ef5
    b180: 91000021     	add	x1, x1, #0x0
		000000000000b180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ef5
    b184: aa0103e2     	mov	x2, x1
    b188: 94000000     	bl	0xb188 <syna_dev_set_stability_level+0x16c>
		000000000000b188:  R_AARCH64_CALL26	_printk
    b18c: 2a1f03e0     	mov	w0, wzr
    b190: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b194: f9400bf5     	ldr	x21, [sp, #0x10]
    b198: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b19c: d50323bf     	autiasp
    b1a0: d65f03c0     	ret
