
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012a0 <goodixfp_init_drm_notifier>:
    12a0: d503233f     	paciasp
    12a4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    12a8: f9000bf7     	str	x23, [sp, #0x10]
    12ac: a90257f6     	stp	x22, x21, [sp, #0x20]
    12b0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    12b4: 910003fd     	mov	x29, sp
    12b8: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2cc>
		00000000000012b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40a
    12bc: 91000294     	add	x20, x20, #0x0
		00000000000012bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40a
    12c0: aa0003f3     	mov	x19, x0
    12c4: 52884816     	mov	w22, #0x4240            // =16960
    12c8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000012c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7c
    12cc: 91000000     	add	x0, x0, #0x0
		00000000000012cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7c
    12d0: aa1403e1     	mov	x1, x20
    12d4: 72a001f6     	movk	w22, #0xf, lsl #16
    12d8: 94000000     	bl	0x12d8 <goodixfp_init_drm_notifier+0x38>
		00000000000012d8:  R_AARCH64_CALL26	_printk
    12dc: f8570268     	ldur	x8, [x19, #-0x90]
    12e0: f9417d00     	ldr	x0, [x8, #0x2f8]
    12e4: 94000058     	bl	0x1444 <goodixfp_drm_get_pannel>
    12e8: 2a1f03f7     	mov	w23, wzr
    12ec: 90000015     	adrp	x21, 0x1000 <gf_probe+0x2cc>
		00000000000012ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x425
    12f0: 910002b5     	add	x21, x21, #0x0
		00000000000012f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x425
    12f4: 1400000f     	b	0x1330 <goodixfp_init_drm_notifier+0x90>
    12f8: aa1503e0     	mov	x0, x21
    12fc: aa1403e1     	mov	x1, x20
    1300: 94000000     	bl	0x1300 <goodixfp_init_drm_notifier+0x60>
		0000000000001300:  R_AARCH64_CALL26	_printk
    1304: 52884800     	mov	w0, #0x4240             // =16960
    1308: 910fa2c1     	add	x1, x22, #0x3e8
    130c: 52800042     	mov	w2, #0x2                // =2
    1310: 72a001e0     	movk	w0, #0xf, lsl #16
    1314: 94000000     	bl	0x1314 <goodixfp_init_drm_notifier+0x74>
		0000000000001314:  R_AARCH64_CALL26	usleep_range_state
    1318: f8570268     	ldur	x8, [x19, #-0x90]
    131c: f9417d00     	ldr	x0, [x8, #0x2f8]
    1320: 94000049     	bl	0x1444 <goodixfp_drm_get_pannel>
    1324: 110006f7     	add	w23, w23, #0x1
    1328: 710066ff     	cmp	w23, #0x19
    132c: 540001c0     	b.eq	0x1364 <goodixfp_init_drm_notifier+0xc4>
    1330: 35fffe40     	cbnz	w0, 0x12f8 <goodixfp_init_drm_notifier+0x58>
    1334: 110006f7     	add	w23, w23, #0x1
    1338: 710066ff     	cmp	w23, #0x19
    133c: 54ffffa1     	b.ne	0x1330 <goodixfp_init_drm_notifier+0x90>
    1340: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2cc>
		0000000000001340:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1344: f9400288     	ldr	x8, [x20]
		0000000000001344:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1348: b50001c8     	cbnz	x8, 0x1380 <goodixfp_init_drm_notifier+0xe0>
    134c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1350: f9400bf7     	ldr	x23, [sp, #0x10]
    1354: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1358: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    135c: d50323bf     	autiasp
    1360: d65f03c0     	ret
    1364: 34fffee0     	cbz	w0, 0x1340 <goodixfp_init_drm_notifier+0xa0>
    1368: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1040
    136c: 91000000     	add	x0, x0, #0x0
		000000000000136c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1040
    1370: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40a
    1374: 91000021     	add	x1, x1, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40a
    1378: 94000000     	bl	0x1378 <goodixfp_init_drm_notifier+0xd8>
		0000000000001378:  R_AARCH64_CALL26	_printk
    137c: 17fffff1     	b	0x1340 <goodixfp_init_drm_notifier+0xa0>
    1380: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1388: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40a
    138c: 91000021     	add	x1, x1, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40a
    1390: d102a273     	sub	x19, x19, #0xa8
    1394: 94000000     	bl	0x1394 <goodixfp_init_drm_notifier+0xf4>
		0000000000001394:  R_AARCH64_CALL26	_printk
    1398: f9400282     	ldr	x2, [x20]
		0000000000001398:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    139c: 90000003     	adrp	x3, 0x1000 <gf_probe+0x2cc>
		000000000000139c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1598
    13a0: 91000063     	add	x3, x3, #0x0
		00000000000013a0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1598
    13a4: 52800020     	mov	w0, #0x1                // =1
    13a8: 52800061     	mov	w1, #0x3                // =3
    13ac: aa1303e4     	mov	x4, x19
    13b0: 94000000     	bl	0x13b0 <goodixfp_init_drm_notifier+0x110>
		00000000000013b0:  R_AARCH64_CALL26	panel_event_notifier_register
    13b4: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		00000000000013b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    13b8: f9000100     	str	x0, [x8]
		00000000000013b8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    13bc: b5fffc80     	cbnz	x0, 0x134c <goodixfp_init_drm_notifier+0xac>
    13c0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1289
    13c4: 91000000     	add	x0, x0, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1289
    13c8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40a
    13cc: 91000021     	add	x1, x1, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40a
    13d0: 94000000     	bl	0x13d0 <goodixfp_init_drm_notifier+0x130>
		00000000000013d0:  R_AARCH64_CALL26	_printk
    13d4: 17ffffde     	b	0x134c <goodixfp_init_drm_notifier+0xac>
