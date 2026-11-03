
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001974 <goodixfp_init_drm_notifier>:
    1974: d503233f     	paciasp
    1978: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    197c: f9000bf7     	str	x23, [sp, #0x10]
    1980: a90257f6     	stp	x22, x21, [sp, #0x20]
    1984: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1988: 910003fd     	mov	x29, sp
    198c: 90000014     	adrp	x20, 0x1000 <gf_disable_irq+0x20>
		000000000000198c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
    1990: 91000294     	add	x20, x20, #0x0
		0000000000001990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
    1994: aa0003f3     	mov	x19, x0
    1998: 52884816     	mov	w22, #0x4240            // =16960
    199c: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		000000000000199c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb90
    19a0: 91000000     	add	x0, x0, #0x0
		00000000000019a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb90
    19a4: aa1403e1     	mov	x1, x20
    19a8: 72a001f6     	movk	w22, #0xf, lsl #16
    19ac: 94000000     	bl	0x19ac <goodixfp_init_drm_notifier+0x38>
		00000000000019ac:  R_AARCH64_CALL26	_printk
    19b0: f8570268     	ldur	x8, [x19, #-0x90]
    19b4: f9417d00     	ldr	x0, [x8, #0x2f8]
    19b8: 94000058     	bl	0x1b18 <goodixfp_drm_get_pannel>
    19bc: 2a1f03f7     	mov	w23, wzr
    19c0: 90000015     	adrp	x21, 0x1000 <gf_disable_irq+0x20>
		00000000000019c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x545
    19c4: 910002b5     	add	x21, x21, #0x0
		00000000000019c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x545
    19c8: 1400000f     	b	0x1a04 <goodixfp_init_drm_notifier+0x90>
    19cc: aa1503e0     	mov	x0, x21
    19d0: aa1403e1     	mov	x1, x20
    19d4: 94000000     	bl	0x19d4 <goodixfp_init_drm_notifier+0x60>
		00000000000019d4:  R_AARCH64_CALL26	_printk
    19d8: 52884800     	mov	w0, #0x4240             // =16960
    19dc: 910fa2c1     	add	x1, x22, #0x3e8
    19e0: 52800042     	mov	w2, #0x2                // =2
    19e4: 72a001e0     	movk	w0, #0xf, lsl #16
    19e8: 94000000     	bl	0x19e8 <goodixfp_init_drm_notifier+0x74>
		00000000000019e8:  R_AARCH64_CALL26	usleep_range_state
    19ec: f8570268     	ldur	x8, [x19, #-0x90]
    19f0: f9417d00     	ldr	x0, [x8, #0x2f8]
    19f4: 94000049     	bl	0x1b18 <goodixfp_drm_get_pannel>
    19f8: 110006f7     	add	w23, w23, #0x1
    19fc: 710066ff     	cmp	w23, #0x19
    1a00: 540001c0     	b.eq	0x1a38 <goodixfp_init_drm_notifier+0xc4>
    1a04: 35fffe40     	cbnz	w0, 0x19cc <goodixfp_init_drm_notifier+0x58>
    1a08: 110006f7     	add	w23, w23, #0x1
    1a0c: 710066ff     	cmp	w23, #0x19
    1a10: 54ffffa1     	b.ne	0x1a04 <goodixfp_init_drm_notifier+0x90>
    1a14: 90000014     	adrp	x20, 0x1000 <gf_disable_irq+0x20>
		0000000000001a14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1a18: f9400288     	ldr	x8, [x20]
		0000000000001a18:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1a1c: b50001c8     	cbnz	x8, 0x1a54 <goodixfp_init_drm_notifier+0xe0>
    1a20: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1a24: f9400bf7     	ldr	x23, [sp, #0x10]
    1a28: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1a2c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1a30: d50323bf     	autiasp
    1a34: d65f03c0     	ret
    1a38: 34fffee0     	cbz	w0, 0x1a14 <goodixfp_init_drm_notifier+0xa0>
    1a3c: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1263
    1a40: 91000000     	add	x0, x0, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1263
    1a44: 90000001     	adrp	x1, 0x1000 <gf_disable_irq+0x20>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
    1a48: 91000021     	add	x1, x1, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
    1a4c: 94000000     	bl	0x1a4c <goodixfp_init_drm_notifier+0xd8>
		0000000000001a4c:  R_AARCH64_CALL26	_printk
    1a50: 17fffff1     	b	0x1a14 <goodixfp_init_drm_notifier+0xa0>
    1a54: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		0000000000001a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd3
    1a58: 91000000     	add	x0, x0, #0x0
		0000000000001a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd3
    1a5c: 90000001     	adrp	x1, 0x1000 <gf_disable_irq+0x20>
		0000000000001a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
    1a60: 91000021     	add	x1, x1, #0x0
		0000000000001a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
    1a64: d102a273     	sub	x19, x19, #0xa8
    1a68: 94000000     	bl	0x1a68 <goodixfp_init_drm_notifier+0xf4>
		0000000000001a68:  R_AARCH64_CALL26	_printk
    1a6c: f9400282     	ldr	x2, [x20]
		0000000000001a6c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1a70: 90000003     	adrp	x3, 0x1000 <gf_disable_irq+0x20>
		0000000000001a70:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1c6c
    1a74: 91000063     	add	x3, x3, #0x0
		0000000000001a74:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1c6c
    1a78: 52800020     	mov	w0, #0x1                // =1
    1a7c: 52800061     	mov	w1, #0x3                // =3
    1a80: aa1303e4     	mov	x4, x19
    1a84: 94000000     	bl	0x1a84 <goodixfp_init_drm_notifier+0x110>
		0000000000001a84:  R_AARCH64_CALL26	panel_event_notifier_register
    1a88: 90000008     	adrp	x8, 0x1000 <gf_disable_irq+0x20>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1a8c: f9000100     	str	x0, [x8]
		0000000000001a8c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1a90: b5fffc80     	cbnz	x0, 0x1a20 <goodixfp_init_drm_notifier+0xac>
    1a94: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		0000000000001a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1476
    1a98: 91000000     	add	x0, x0, #0x0
		0000000000001a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1476
    1a9c: 90000001     	adrp	x1, 0x1000 <gf_disable_irq+0x20>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
    1aa0: 91000021     	add	x1, x1, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
    1aa4: 94000000     	bl	0x1aa4 <goodixfp_init_drm_notifier+0x130>
		0000000000001aa4:  R_AARCH64_CALL26	_printk
    1aa8: 17ffffde     	b	0x1a20 <goodixfp_init_drm_notifier+0xac>
