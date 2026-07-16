
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001294 <goodixfp_init_drm_notifier>:
    1294: d503233f     	paciasp
    1298: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    129c: f9000bf7     	str	x23, [sp, #0x10]
    12a0: a90257f6     	stp	x22, x21, [sp, #0x20]
    12a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    12a8: 910003fd     	mov	x29, sp
    12ac: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2d8>
		00000000000012ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
    12b0: 91000294     	add	x20, x20, #0x0
		00000000000012b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
    12b4: aa0003f3     	mov	x19, x0
    12b8: 52884816     	mov	w22, #0x4240            // =16960
    12bc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000012bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee2
    12c0: 91000000     	add	x0, x0, #0x0
		00000000000012c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee2
    12c4: aa1403e1     	mov	x1, x20
    12c8: 72a001f6     	movk	w22, #0xf, lsl #16
    12cc: 94000000     	bl	0x12cc <goodixfp_init_drm_notifier+0x38>
		00000000000012cc:  R_AARCH64_CALL26	_printk
    12d0: f8570268     	ldur	x8, [x19, #-0x90]
    12d4: f9417d00     	ldr	x0, [x8, #0x2f8]
    12d8: 94000058     	bl	0x1438 <goodixfp_drm_get_pannel>
    12dc: 2a1f03f7     	mov	w23, wzr
    12e0: 90000015     	adrp	x21, 0x1000 <gf_probe+0x2d8>
		00000000000012e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe42
    12e4: 910002b5     	add	x21, x21, #0x0
		00000000000012e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe42
    12e8: 1400000f     	b	0x1324 <goodixfp_init_drm_notifier+0x90>
    12ec: aa1503e0     	mov	x0, x21
    12f0: aa1403e1     	mov	x1, x20
    12f4: 94000000     	bl	0x12f4 <goodixfp_init_drm_notifier+0x60>
		00000000000012f4:  R_AARCH64_CALL26	_printk
    12f8: 52884800     	mov	w0, #0x4240             // =16960
    12fc: 910fa2c1     	add	x1, x22, #0x3e8
    1300: 52800042     	mov	w2, #0x2                // =2
    1304: 72a001e0     	movk	w0, #0xf, lsl #16
    1308: 94000000     	bl	0x1308 <goodixfp_init_drm_notifier+0x74>
		0000000000001308:  R_AARCH64_CALL26	usleep_range_state
    130c: f8570268     	ldur	x8, [x19, #-0x90]
    1310: f9417d00     	ldr	x0, [x8, #0x2f8]
    1314: 94000049     	bl	0x1438 <goodixfp_drm_get_pannel>
    1318: 110006f7     	add	w23, w23, #0x1
    131c: 710066ff     	cmp	w23, #0x19
    1320: 540001c0     	b.eq	0x1358 <goodixfp_init_drm_notifier+0xc4>
    1324: 35fffe40     	cbnz	w0, 0x12ec <goodixfp_init_drm_notifier+0x58>
    1328: 110006f7     	add	w23, w23, #0x1
    132c: 710066ff     	cmp	w23, #0x19
    1330: 54ffffa1     	b.ne	0x1324 <goodixfp_init_drm_notifier+0x90>
    1334: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2d8>
		0000000000001334:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1338: f9400288     	ldr	x8, [x20]
		0000000000001338:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    133c: b50001c8     	cbnz	x8, 0x1374 <goodixfp_init_drm_notifier+0xe0>
    1340: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1344: f9400bf7     	ldr	x23, [sp, #0x10]
    1348: a94257f6     	ldp	x22, x21, [sp, #0x20]
    134c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1350: d50323bf     	autiasp
    1354: d65f03c0     	ret
    1358: 34fffee0     	cbz	w0, 0x1334 <goodixfp_init_drm_notifier+0xa0>
    135c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xefb
    1360: 91000000     	add	x0, x0, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xefb
    1364: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
    1368: 91000021     	add	x1, x1, #0x0
		0000000000001368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
    136c: 94000000     	bl	0x136c <goodixfp_init_drm_notifier+0xd8>
		000000000000136c:  R_AARCH64_CALL26	_printk
    1370: 17fffff1     	b	0x1334 <goodixfp_init_drm_notifier+0xa0>
    1374: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ea
    1378: 91000000     	add	x0, x0, #0x0
		0000000000001378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ea
    137c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		000000000000137c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
    1380: 91000021     	add	x1, x1, #0x0
		0000000000001380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
    1384: d102a273     	sub	x19, x19, #0xa8
    1388: 94000000     	bl	0x1388 <goodixfp_init_drm_notifier+0xf4>
		0000000000001388:  R_AARCH64_CALL26	_printk
    138c: f9400282     	ldr	x2, [x20]
		000000000000138c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1390: 90000003     	adrp	x3, 0x1000 <gf_probe+0x2d8>
		0000000000001390:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x158c
    1394: 91000063     	add	x3, x3, #0x0
		0000000000001394:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x158c
    1398: 52800020     	mov	w0, #0x1                // =1
    139c: 52800061     	mov	w1, #0x3                // =3
    13a0: aa1303e4     	mov	x4, x19
    13a4: 94000000     	bl	0x13a4 <goodixfp_init_drm_notifier+0x110>
		00000000000013a4:  R_AARCH64_CALL26	panel_event_notifier_register
    13a8: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		00000000000013a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    13ac: f9000100     	str	x0, [x8]
		00000000000013ac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    13b0: b5fffc80     	cbnz	x0, 0x1340 <goodixfp_init_drm_notifier+0xac>
    13b4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000013b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d7
    13b8: 91000000     	add	x0, x0, #0x0
		00000000000013b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d7
    13bc: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		00000000000013bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
    13c0: 91000021     	add	x1, x1, #0x0
		00000000000013c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
    13c4: 94000000     	bl	0x13c4 <goodixfp_init_drm_notifier+0x130>
		00000000000013c4:  R_AARCH64_CALL26	_printk
    13c8: 17ffffde     	b	0x1340 <goodixfp_init_drm_notifier+0xac>
