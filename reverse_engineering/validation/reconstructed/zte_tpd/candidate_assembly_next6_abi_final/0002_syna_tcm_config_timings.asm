
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fe8c <syna_tcm_config_timings>:
    fe8c: b5000081     	cbnz	x1, 0xfe9c <syna_tcm_config_timings+0x10>
    fe90: 529fffe8     	mov	w8, #0xffff             // =65535
    fe94: 6b08007f     	cmp	w3, w8
    fe98: 54000580     	b.eq	0xff48 <syna_tcm_config_timings+0xbc>
    fe9c: b4000101     	cbz	x1, 0xfebc <syna_tcm_config_timings+0x30>
    fea0: 361000e3     	tbz	w3, #0x2, 0xfebc <syna_tcm_config_timings+0x30>
    fea4: b9400828     	ldr	w8, [x1, #0x8]
    fea8: 34000048     	cbz	w8, 0xfeb0 <syna_tcm_config_timings+0x24>
    feac: b9021008     	str	w8, [x0, #0x210]
    feb0: b9400c22     	ldr	w2, [x1, #0xc]
    feb4: 34000042     	cbz	w2, 0xfebc <syna_tcm_config_timings+0x30>
    feb8: b9021402     	str	w2, [x0, #0x214]
    febc: 360000e3     	tbz	w3, #0x0, 0xfed8 <syna_tcm_config_timings+0x4c>
    fec0: b4000081     	cbz	x1, 0xfed0 <syna_tcm_config_timings+0x44>
    fec4: b9400028     	ldr	w8, [x1]
    fec8: 7100011f     	cmp	w8, #0x0
    fecc: 1a880042     	csel	w2, w2, w8, eq
    fed0: 34000042     	cbz	w2, 0xfed8 <syna_tcm_config_timings+0x4c>
    fed4: b9020802     	str	w2, [x0, #0x208]
    fed8: 360800e3     	tbz	w3, #0x1, 0xfef4 <syna_tcm_config_timings+0x68>
    fedc: b4000081     	cbz	x1, 0xfeec <syna_tcm_config_timings+0x60>
    fee0: b9400428     	ldr	w8, [x1, #0x4]
    fee4: 7100011f     	cmp	w8, #0x0
    fee8: 1a880042     	csel	w2, w2, w8, eq
    feec: 34000042     	cbz	w2, 0xfef4 <syna_tcm_config_timings+0x68>
    fef0: b9020c02     	str	w2, [x0, #0x20c]
    fef4: b40000a1     	cbz	x1, 0xff08 <syna_tcm_config_timings+0x7c>
    fef8: 36180083     	tbz	w3, #0x3, 0xff08 <syna_tcm_config_timings+0x7c>
    fefc: b9401022     	ldr	w2, [x1, #0x10]
    ff00: 34000042     	cbz	w2, 0xff08 <syna_tcm_config_timings+0x7c>
    ff04: b9021802     	str	w2, [x0, #0x218]
    ff08: 364000e3     	tbz	w3, #0x8, 0xff24 <syna_tcm_config_timings+0x98>
    ff0c: b4000081     	cbz	x1, 0xff1c <syna_tcm_config_timings+0x90>
    ff10: b9402028     	ldr	w8, [x1, #0x20]
    ff14: 7100011f     	cmp	w8, #0x0
    ff18: 1a880042     	csel	w2, w2, w8, eq
    ff1c: 34000042     	cbz	w2, 0xff24 <syna_tcm_config_timings+0x98>
    ff20: b901e802     	str	w2, [x0, #0x1e8]
    ff24: 364800e3     	tbz	w3, #0x9, 0xff40 <syna_tcm_config_timings+0xb4>
    ff28: b4000081     	cbz	x1, 0xff38 <syna_tcm_config_timings+0xac>
    ff2c: b9402428     	ldr	w8, [x1, #0x24]
    ff30: 7100011f     	cmp	w8, #0x0
    ff34: 1a880042     	csel	w2, w2, w8, eq
    ff38: 34000042     	cbz	w2, 0xff40 <syna_tcm_config_timings+0xb4>
    ff3c: b901ec02     	str	w2, [x0, #0x1ec]
    ff40: 2a1f03e0     	mov	w0, wzr
    ff44: d65f03c0     	ret
    ff48: d503233f     	paciasp
    ff4c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    ff50: 910003fd     	mov	x29, sp
    ff54: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x94>
		000000000000ff54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4187
    ff58: 91000000     	add	x0, x0, #0x0
		000000000000ff58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4187
    ff5c: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x94>
		000000000000ff5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b8
    ff60: 91000021     	add	x1, x1, #0x0
		000000000000ff60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b8
    ff64: 94000000     	bl	0xff64 <syna_tcm_config_timings+0xd8>
		000000000000ff64:  R_AARCH64_CALL26	_printk
    ff68: 12801e00     	mov	w0, #-0xf1              // =-241
    ff6c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    ff70: d50323bf     	autiasp
    ff74: d65f03c0     	ret
