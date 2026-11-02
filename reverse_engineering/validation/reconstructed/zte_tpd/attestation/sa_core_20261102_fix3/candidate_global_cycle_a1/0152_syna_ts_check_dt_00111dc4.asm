
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a1c0 <syna_ts_check_dt>:
   1a1c0: d503233f     	paciasp
   1a1c4: d10303ff     	sub	sp, sp, #0xc0
   1a1c8: a9067bfd     	stp	x29, x30, [sp, #0x60]
   1a1cc: a9076ffc     	stp	x28, x27, [sp, #0x70]
   1a1d0: a90867fa     	stp	x26, x25, [sp, #0x80]
   1a1d4: a9095ff8     	stp	x24, x23, [sp, #0x90]
   1a1d8: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   1a1dc: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   1a1e0: 910183fd     	add	x29, sp, #0x60
   1a1e4: d5384108     	mrs	x8, SP_EL0
   1a1e8: aa0003f3     	mov	x19, x0
   1a1ec: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001a1ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9924
   1a1f0: 91000021     	add	x1, x1, #0x0
		000000000001a1f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9924
   1a1f4: f9438908     	ldr	x8, [x8, #0x710]
   1a1f8: aa1f03e2     	mov	x2, xzr
   1a1fc: f81f83a8     	stur	x8, [x29, #-0x8]
   1a200: f9417400     	ldr	x0, [x0, #0x2e8]
   1a204: 94000000     	bl	0x1a204 <syna_ts_check_dt+0x44>
		000000000001a204:  R_AARCH64_CALL26	of_count_phandle_with_args
   1a208: 7100041f     	cmp	w0, #0x1
   1a20c: 5400070b     	b.lt	0x1a2ec <syna_ts_check_dt+0x12c>
   1a210: 2a0003f5     	mov	w21, w0
   1a214: 2a1f03f6     	mov	w22, wzr
   1a218: 90000017     	adrp	x23, 0x1a000 <edge_long_press_up+0x230>
		000000000001a218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9924
   1a21c: 910002f7     	add	x23, x23, #0x0
		000000000001a21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9924
   1a220: 9000001b     	adrp	x27, 0x1a000 <edge_long_press_up+0x230>
		000000000001a220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x268c
   1a224: 9100037b     	add	x27, x27, #0x0
		000000000001a224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x268c
   1a228: 90000018     	adrp	x24, 0x1a000 <edge_long_press_up+0x230>
		000000000001a228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x992a
   1a22c: 91000318     	add	x24, x24, #0x0
		000000000001a22c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x992a
   1a230: 9000001c     	adrp	x28, 0x1a000 <edge_long_press_up+0x230>
		000000000001a230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f88
   1a234: 9100039c     	add	x28, x28, #0x0
		000000000001a234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f88
   1a238: 12800014     	mov	w20, #-0x1              // =-1
   1a23c: 90000019     	adrp	x25, 0x1a000 <edge_long_press_up+0x230>
		000000000001a23c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x718
   1a240: 91000339     	add	x25, x25, #0x0
		000000000001a240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x718
   1a244: 14000009     	b	0x1a268 <syna_ts_check_dt+0xa8>
   1a248: 12800254     	mov	w20, #-0x13             // =-19
   1a24c: aa1b03e0     	mov	x0, x27
   1a250: aa1803e1     	mov	x1, x24
   1a254: aa1803e2     	mov	x2, x24
   1a258: 94000000     	bl	0x1a258 <syna_ts_check_dt+0x98>
		000000000001a258:  R_AARCH64_CALL26	_printk
   1a25c: 110006d6     	add	w22, w22, #0x1
   1a260: 6b1602bf     	cmp	w21, w22
   1a264: 540005c0     	b.eq	0x1a31c <syna_ts_check_dt+0x15c>
   1a268: f9417660     	ldr	x0, [x19, #0x2e8]
   1a26c: 910023e5     	add	x5, sp, #0x8
   1a270: aa1703e1     	mov	x1, x23
   1a274: aa1f03e2     	mov	x2, xzr
   1a278: 2a1f03e3     	mov	w3, wzr
   1a27c: 2a1603e4     	mov	w4, w22
   1a280: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1a284: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1a288: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1a28c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1a290: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1a294: 94000000     	bl	0x1a294 <syna_ts_check_dt+0xd4>
		000000000001a294:  R_AARCH64_CALL26	__of_parse_phandle_with_args
   1a298: f94007e8     	ldr	x8, [sp, #0x8]
   1a29c: 7100001f     	cmp	w0, #0x0
   1a2a0: 9a9f011a     	csel	x26, x8, xzr, eq
   1a2a4: b500019a     	cbnz	x26, 0x1a2d4 <syna_ts_check_dt+0x114>
   1a2a8: aa1a03e0     	mov	x0, x26
   1a2ac: 94000000     	bl	0x1a2ac <syna_ts_check_dt+0xec>
		000000000001a2ac:  R_AARCH64_CALL26	of_drm_find_panel
   1a2b0: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
   1a2b4: 54000209     	b.ls	0x1a2f4 <syna_ts_check_dt+0x134>
   1a2b8: b1004c1f     	cmn	x0, #0x13
   1a2bc: 54fffc60     	b.eq	0x1a248 <syna_ts_check_dt+0x88>
   1a2c0: b108141f     	cmn	x0, #0x205
   1a2c4: 54fffcc1     	b.ne	0x1a25c <syna_ts_check_dt+0x9c>
   1a2c8: 12804094     	mov	w20, #-0x205            // =-517
   1a2cc: aa1c03e0     	mov	x0, x28
   1a2d0: 17ffffe0     	b	0x1a250 <syna_ts_check_dt+0x90>
   1a2d4: f9400343     	ldr	x3, [x26]
   1a2d8: aa1903e0     	mov	x0, x25
   1a2dc: aa1803e1     	mov	x1, x24
   1a2e0: aa1803e2     	mov	x2, x24
   1a2e4: 94000000     	bl	0x1a2e4 <syna_ts_check_dt+0x124>
		000000000001a2e4:  R_AARCH64_CALL26	_printk
   1a2e8: 17fffff0     	b	0x1a2a8 <syna_ts_check_dt+0xe8>
   1a2ec: 12800254     	mov	w20, #-0x13             // =-19
   1a2f0: 1400000b     	b	0x1a31c <syna_ts_check_dt+0x15c>
   1a2f4: f9400341     	ldr	x1, [x26]
   1a2f8: 90000008     	adrp	x8, 0x1a000 <edge_long_press_up+0x230>
		000000000001a2f8:  R_AARCH64_ADR_PREL_PG_HI21	DEVICE_NODE_NAME
   1a2fc: 91000108     	add	x8, x8, #0x0
		000000000001a2fc:  R_AARCH64_ADD_ABS_LO12_NC	DEVICE_NODE_NAME
   1a300: aa0003f3     	mov	x19, x0
   1a304: aa0803e0     	mov	x0, x8
   1a308: 52800c82     	mov	w2, #0x64               // =100
   1a30c: 94000000     	bl	0x1a30c <syna_ts_check_dt+0x14c>
		000000000001a30c:  R_AARCH64_CALL26	strncpy
   1a310: 90000008     	adrp	x8, 0x1a000 <edge_long_press_up+0x230>
		000000000001a310:  R_AARCH64_ADR_PREL_PG_HI21	active_panel
   1a314: 2a1f03f4     	mov	w20, wzr
   1a318: f9000113     	str	x19, [x8]
		000000000001a318:  R_AARCH64_LDST64_ABS_LO12_NC	active_panel
   1a31c: d5384108     	mrs	x8, SP_EL0
   1a320: f9438908     	ldr	x8, [x8, #0x710]
   1a324: f85f83a9     	ldur	x9, [x29, #-0x8]
   1a328: eb09011f     	cmp	x8, x9
   1a32c: 54000161     	b.ne	0x1a358 <syna_ts_check_dt+0x198>
   1a330: 2a1403e0     	mov	w0, w20
   1a334: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   1a338: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   1a33c: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   1a340: a94867fa     	ldp	x26, x25, [sp, #0x80]
   1a344: a9476ffc     	ldp	x28, x27, [sp, #0x70]
   1a348: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   1a34c: 910303ff     	add	sp, sp, #0xc0
   1a350: d50323bf     	autiasp
   1a354: d65f03c0     	ret
   1a358: 94000000     	bl	0x1a358 <syna_ts_check_dt+0x198>
		000000000001a358:  R_AARCH64_CALL26	__stack_chk_fail
