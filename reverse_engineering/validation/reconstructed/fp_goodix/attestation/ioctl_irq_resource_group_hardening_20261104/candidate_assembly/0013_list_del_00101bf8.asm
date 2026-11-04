
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011d8 <list_del>:
    11d8: 90000009     	adrp	x9, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000011d8:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
    11dc: 91000129     	add	x9, x9, #0x0
		00000000000011dc:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
    11e0: f9400528     	ldr	x8, [x9, #0x8]
    11e4: f940010a     	ldr	x10, [x8]
    11e8: eb09015f     	cmp	x10, x9
    11ec: 540001a1     	b.ne	0x1220 <list_del+0x48>
    11f0: f940012a     	ldr	x10, [x9]
    11f4: f940054b     	ldr	x11, [x10, #0x8]
    11f8: eb09017f     	cmp	x11, x9
    11fc: 54000121     	b.ne	0x1220 <list_del+0x48>
    1200: f9000548     	str	x8, [x10, #0x8]
    1204: f900010a     	str	x10, [x8]
    1208: d2802008     	mov	x8, #0x100              // =256
    120c: 5280044a     	mov	w10, #0x22              // =34
    1210: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    1214: aa0a010a     	orr	x10, x8, x10
    1218: a9002928     	stp	x8, x10, [x9]
    121c: d65f03c0     	ret
    1220: d503233f     	paciasp
    1224: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1228: 910003fd     	mov	x29, sp
    122c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000122c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
    1230: 91000000     	add	x0, x0, #0x0
		0000000000001230:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
    1234: 94000000     	bl	0x1234 <list_del+0x5c>
		0000000000001234:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1238: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    123c: d50323bf     	autiasp
    1240: 17fffff2     	b	0x1208 <list_del+0x30>
