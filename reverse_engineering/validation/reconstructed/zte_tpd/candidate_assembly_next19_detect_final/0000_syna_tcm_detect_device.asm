
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fb58 <syna_tcm_detect_device>:
    fb58: d503233f     	paciasp
    fb5c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    fb60: a9014ff4     	stp	x20, x19, [sp, #0x10]
    fb64: 910003fd     	mov	x29, sp
    fb68: b4000580     	cbz	x0, 0xfc18 <syna_tcm_detect_device+0xc0>
    fb6c: 12000c28     	and	w8, w1, #0xf
    fb70: aa0003f3     	mov	x19, x0
    fb74: 2a0103f4     	mov	w20, w1
    fb78: 7100051f     	cmp	w8, #0x1
    fb7c: 7900101f     	strh	wzr, [x0, #0x8]
    fb80: 54000221     	b.ne	0xfbc4 <syna_tcm_detect_device+0x6c>
    fb84: 53071e81     	ubfx	w1, w20, #7, #1
    fb88: 12000042     	and	w2, w2, #0x1
    fb8c: aa1303e0     	mov	x0, x19
    fb90: 94000000     	bl	0xfb90 <syna_tcm_detect_device+0x38>
		000000000000fb90:  R_AARCH64_CALL26	syna_tcm_v1_detect
    fb94: 37f80100     	tbnz	w0, #0x1f, 0xfbb4 <syna_tcm_detect_device+0x5c>
    fb98: f941ce68     	ldr	x8, [x19, #0x398]
    fb9c: b4000268     	cbz	x8, 0xfbe8 <syna_tcm_detect_device+0x90>
    fba0: f941ca68     	ldr	x8, [x19, #0x390]
    fba4: b4000228     	cbz	x8, 0xfbe8 <syna_tcm_detect_device+0x90>
    fba8: 36380534     	tbz	w20, #0x7, 0xfc4c <syna_tcm_detect_device+0xf4>
    fbac: 52800020     	mov	w0, #0x1                // =1
    fbb0: 14000023     	b	0xfc3c <syna_tcm_detect_device+0xe4>
    fbb4: b9424a68     	ldr	w8, [x19, #0x248]
    fbb8: 35000648     	cbnz	w8, 0xfc80 <syna_tcm_detect_device+0x128>
    fbbc: 12801e80     	mov	w0, #-0xf5              // =-245
    fbc0: 1400001f     	b	0xfc3c <syna_tcm_detect_device+0xe4>
    fbc4: 7100091f     	cmp	w8, #0x2
    fbc8: 540002e1     	b.ne	0xfc24 <syna_tcm_detect_device+0xcc>
    fbcc: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fbcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x838
    fbd0: 91000000     	add	x0, x0, #0x0
		000000000000fbd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x838
    fbd4: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fbd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fbd8: 91000021     	add	x1, x1, #0x0
		000000000000fbd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fbdc: 52800042     	mov	w2, #0x2                // =2
    fbe0: 94000000     	bl	0xfbe0 <syna_tcm_detect_device+0x88>
		000000000000fbe0:  R_AARCH64_CALL26	_printk
    fbe4: 14000015     	b	0xfc38 <syna_tcm_detect_device+0xe0>
    fbe8: 90000013     	adrp	x19, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fbe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fbec: 91000273     	add	x19, x19, #0x0
		000000000000fbec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fbf0: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fbf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x444d
    fbf4: 91000000     	add	x0, x0, #0x0
		000000000000fbf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x444d
    fbf8: aa1303e1     	mov	x1, x19
    fbfc: 94000000     	bl	0xfbfc <syna_tcm_detect_device+0xa4>
		000000000000fbfc:  R_AARCH64_CALL26	_printk
    fc00: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f6
    fc04: 91000000     	add	x0, x0, #0x0
		000000000000fc04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f6
    fc08: aa1303e1     	mov	x1, x19
    fc0c: 94000000     	bl	0xfc0c <syna_tcm_detect_device+0xb4>
		000000000000fc0c:  R_AARCH64_CALL26	_printk
    fc10: 12801e80     	mov	w0, #-0xf5              // =-245
    fc14: 1400000a     	b	0xfc3c <syna_tcm_detect_device+0xe4>
    fc18: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd91
    fc1c: 91000000     	add	x0, x0, #0x0
		000000000000fc1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd91
    fc20: 14000003     	b	0xfc2c <syna_tcm_detect_device+0xd4>
    fc24: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1642
    fc28: 91000000     	add	x0, x0, #0x0
		000000000000fc28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1642
    fc2c: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fc30: 91000021     	add	x1, x1, #0x0
		000000000000fc30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fc34: 94000000     	bl	0xfc34 <syna_tcm_detect_device+0xdc>
		000000000000fc34:  R_AARCH64_CALL26	_printk
    fc38: 12801e00     	mov	w0, #-0xf1              // =-241
    fc3c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    fc40: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    fc44: d50323bf     	autiasp
    fc48: d65f03c0     	ret
    fc4c: 39402662     	ldrb	w2, [x19, #0x9]
    fc50: 71002c5f     	cmp	w2, #0xb
    fc54: 540002e0     	b.eq	0xfcb0 <syna_tcm_detect_device+0x158>
    fc58: 7100045f     	cmp	w2, #0x1
    fc5c: 54000361     	b.ne	0xfcc8 <syna_tcm_detect_device+0x170>
    fc60: b9400e62     	ldr	w2, [x19, #0xc]
    fc64: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d3
    fc68: 91000000     	add	x0, x0, #0x0
		000000000000fc68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d3
    fc6c: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fc70: 91000021     	add	x1, x1, #0x0
		000000000000fc70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fc74: 91020a63     	add	x3, x19, #0x82
    fc78: 94000000     	bl	0xfc78 <syna_tcm_detect_device+0x120>
		000000000000fc78:  R_AARCH64_CALL26	_printk
    fc7c: 14000018     	b	0xfcdc <syna_tcm_detect_device+0x184>
    fc80: f9412268     	ldr	x8, [x19, #0x240]
    fc84: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf5
    fc88: 91000000     	add	x0, x0, #0x0
		000000000000fc88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf5
    fc8c: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fc8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fc90: 91000021     	add	x1, x1, #0x0
		000000000000fc90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fc94: 39400102     	ldrb	w2, [x8]
    fc98: 39400503     	ldrb	w3, [x8, #0x1]
    fc9c: 39400904     	ldrb	w4, [x8, #0x2]
    fca0: 39400d05     	ldrb	w5, [x8, #0x3]
    fca4: 94000000     	bl	0xfca4 <syna_tcm_detect_device+0x14c>
		000000000000fca4:  R_AARCH64_CALL26	_printk
    fca8: 12801e80     	mov	w0, #-0xf5              // =-245
    fcac: 17ffffe4     	b	0xfc3c <syna_tcm_detect_device+0xe4>
    fcb0: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fcb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a41
    fcb4: 91000000     	add	x0, x0, #0x0
		000000000000fcb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a41
    fcb8: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fcb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fcbc: 91000021     	add	x1, x1, #0x0
		000000000000fcbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fcc0: 94000000     	bl	0xfcc0 <syna_tcm_detect_device+0x168>
		000000000000fcc0:  R_AARCH64_CALL26	_printk
    fcc4: 14000006     	b	0xfcdc <syna_tcm_detect_device+0x184>
    fcc8: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fcc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34e6
    fccc: 91000000     	add	x0, x0, #0x0
		000000000000fccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34e6
    fcd0: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x154>
		000000000000fcd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6d
    fcd4: 91000021     	add	x1, x1, #0x0
		000000000000fcd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6d
    fcd8: 94000000     	bl	0xfcd8 <syna_tcm_detect_device+0x180>
		000000000000fcd8:  R_AARCH64_CALL26	_printk
    fcdc: 39402660     	ldrb	w0, [x19, #0x9]
    fce0: 17ffffd7     	b	0xfc3c <syna_tcm_detect_device+0xe4>
