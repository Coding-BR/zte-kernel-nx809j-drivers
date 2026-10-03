
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020254 <tpd_proc_deinit>:
   20254: d503233f     	paciasp
   20258: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2025c: f9000bf3     	str	x19, [sp, #0x10]
   20260: 910003fd     	mov	x29, sp
   20264: 90000013     	adrp	x19, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020264:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
   20268: f9400261     	ldr	x1, [x19]
		0000000000020268:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   2026c: b4000f81     	cbz	x1, 0x2045c <tpd_proc_deinit+0x208>
   20270: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2137
   20274: 91000000     	add	x0, x0, #0x0
		0000000000020274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2137
   20278: 94000000     	bl	0x20278 <tpd_proc_deinit+0x24>
		0000000000020278:  R_AARCH64_CALL26	remove_proc_entry
   2027c: f9400261     	ldr	x1, [x19]
		000000000002027c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20280: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2146
   20284: 91000000     	add	x0, x0, #0x0
		0000000000020284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2146
   20288: 94000000     	bl	0x20288 <tpd_proc_deinit+0x34>
		0000000000020288:  R_AARCH64_CALL26	remove_proc_entry
   2028c: f9400261     	ldr	x1, [x19]
		000000000002028c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20290: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd3
   20294: 91000000     	add	x0, x0, #0x0
		0000000000020294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd3
   20298: 94000000     	bl	0x20298 <tpd_proc_deinit+0x44>
		0000000000020298:  R_AARCH64_CALL26	remove_proc_entry
   2029c: f9400261     	ldr	x1, [x19]
		000000000002029c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   202a0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000202a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41ac
   202a4: 91000000     	add	x0, x0, #0x0
		00000000000202a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41ac
   202a8: 94000000     	bl	0x202a8 <tpd_proc_deinit+0x54>
		00000000000202a8:  R_AARCH64_CALL26	remove_proc_entry
   202ac: f9400261     	ldr	x1, [x19]
		00000000000202ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   202b0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000202b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28dd
   202b4: 91000000     	add	x0, x0, #0x0
		00000000000202b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28dd
   202b8: 94000000     	bl	0x202b8 <tpd_proc_deinit+0x64>
		00000000000202b8:  R_AARCH64_CALL26	remove_proc_entry
   202bc: f9400261     	ldr	x1, [x19]
		00000000000202bc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   202c0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000202c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32be
   202c4: 91000000     	add	x0, x0, #0x0
		00000000000202c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32be
   202c8: 94000000     	bl	0x202c8 <tpd_proc_deinit+0x74>
		00000000000202c8:  R_AARCH64_CALL26	remove_proc_entry
   202cc: f9400261     	ldr	x1, [x19]
		00000000000202cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   202d0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000202d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a9d
   202d4: 91000000     	add	x0, x0, #0x0
		00000000000202d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a9d
   202d8: 94000000     	bl	0x202d8 <tpd_proc_deinit+0x84>
		00000000000202d8:  R_AARCH64_CALL26	remove_proc_entry
   202dc: f9400261     	ldr	x1, [x19]
		00000000000202dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   202e0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000202e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b7
   202e4: 91000000     	add	x0, x0, #0x0
		00000000000202e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b7
   202e8: 94000000     	bl	0x202e8 <tpd_proc_deinit+0x94>
		00000000000202e8:  R_AARCH64_CALL26	remove_proc_entry
   202ec: f9400261     	ldr	x1, [x19]
		00000000000202ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   202f0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x108b
   202f4: 91000000     	add	x0, x0, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x108b
   202f8: 94000000     	bl	0x202f8 <tpd_proc_deinit+0xa4>
		00000000000202f8:  R_AARCH64_CALL26	remove_proc_entry
   202fc: f9400261     	ldr	x1, [x19]
		00000000000202fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20300: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ffa
   20304: 91000000     	add	x0, x0, #0x0
		0000000000020304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ffa
   20308: 94000000     	bl	0x20308 <tpd_proc_deinit+0xb4>
		0000000000020308:  R_AARCH64_CALL26	remove_proc_entry
   2030c: f9400261     	ldr	x1, [x19]
		000000000002030c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20310: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1954
   20314: 91000000     	add	x0, x0, #0x0
		0000000000020314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1954
   20318: 94000000     	bl	0x20318 <tpd_proc_deinit+0xc4>
		0000000000020318:  R_AARCH64_CALL26	remove_proc_entry
   2031c: f9400261     	ldr	x1, [x19]
		000000000002031c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20320: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30a3
   20324: 91000000     	add	x0, x0, #0x0
		0000000000020324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30a3
   20328: 94000000     	bl	0x20328 <tpd_proc_deinit+0xd4>
		0000000000020328:  R_AARCH64_CALL26	remove_proc_entry
   2032c: f9400261     	ldr	x1, [x19]
		000000000002032c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20330: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61a
   20334: 91000000     	add	x0, x0, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61a
   20338: 94000000     	bl	0x20338 <tpd_proc_deinit+0xe4>
		0000000000020338:  R_AARCH64_CALL26	remove_proc_entry
   2033c: f9400261     	ldr	x1, [x19]
		000000000002033c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20340: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cfc
   20344: 91000000     	add	x0, x0, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cfc
   20348: 94000000     	bl	0x20348 <tpd_proc_deinit+0xf4>
		0000000000020348:  R_AARCH64_CALL26	remove_proc_entry
   2034c: f9400261     	ldr	x1, [x19]
		000000000002034c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20350: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44c8
   20354: 91000000     	add	x0, x0, #0x0
		0000000000020354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44c8
   20358: 94000000     	bl	0x20358 <tpd_proc_deinit+0x104>
		0000000000020358:  R_AARCH64_CALL26	remove_proc_entry
   2035c: f9400261     	ldr	x1, [x19]
		000000000002035c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20360: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1095
   20364: 91000000     	add	x0, x0, #0x0
		0000000000020364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1095
   20368: 94000000     	bl	0x20368 <tpd_proc_deinit+0x114>
		0000000000020368:  R_AARCH64_CALL26	remove_proc_entry
   2036c: f9400261     	ldr	x1, [x19]
		000000000002036c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20370: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41cc
   20374: 91000000     	add	x0, x0, #0x0
		0000000000020374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41cc
   20378: 94000000     	bl	0x20378 <tpd_proc_deinit+0x124>
		0000000000020378:  R_AARCH64_CALL26	remove_proc_entry
   2037c: f9400261     	ldr	x1, [x19]
		000000000002037c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20380: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x346f
   20384: 91000000     	add	x0, x0, #0x0
		0000000000020384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x346f
   20388: 94000000     	bl	0x20388 <tpd_proc_deinit+0x134>
		0000000000020388:  R_AARCH64_CALL26	remove_proc_entry
   2038c: f9400261     	ldr	x1, [x19]
		000000000002038c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20390: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
   20394: 91000000     	add	x0, x0, #0x0
		0000000000020394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
   20398: 94000000     	bl	0x20398 <tpd_proc_deinit+0x144>
		0000000000020398:  R_AARCH64_CALL26	remove_proc_entry
   2039c: f9400261     	ldr	x1, [x19]
		000000000002039c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   203a0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000203a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c4e
   203a4: 91000000     	add	x0, x0, #0x0
		00000000000203a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c4e
   203a8: 94000000     	bl	0x203a8 <tpd_proc_deinit+0x154>
		00000000000203a8:  R_AARCH64_CALL26	remove_proc_entry
   203ac: f9400261     	ldr	x1, [x19]
		00000000000203ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   203b0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000203b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2153
   203b4: 91000000     	add	x0, x0, #0x0
		00000000000203b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2153
   203b8: 94000000     	bl	0x203b8 <tpd_proc_deinit+0x164>
		00000000000203b8:  R_AARCH64_CALL26	remove_proc_entry
   203bc: f9400261     	ldr	x1, [x19]
		00000000000203bc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   203c0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000203c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345
   203c4: 91000000     	add	x0, x0, #0x0
		00000000000203c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345
   203c8: 94000000     	bl	0x203c8 <tpd_proc_deinit+0x174>
		00000000000203c8:  R_AARCH64_CALL26	remove_proc_entry
   203cc: f9400261     	ldr	x1, [x19]
		00000000000203cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   203d0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000203d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c57
   203d4: 91000000     	add	x0, x0, #0x0
		00000000000203d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c57
   203d8: 94000000     	bl	0x203d8 <tpd_proc_deinit+0x184>
		00000000000203d8:  R_AARCH64_CALL26	remove_proc_entry
   203dc: f9400261     	ldr	x1, [x19]
		00000000000203dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   203e0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000203e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5005
   203e4: 91000000     	add	x0, x0, #0x0
		00000000000203e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5005
   203e8: 94000000     	bl	0x203e8 <tpd_proc_deinit+0x194>
		00000000000203e8:  R_AARCH64_CALL26	remove_proc_entry
   203ec: f9400261     	ldr	x1, [x19]
		00000000000203ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   203f0: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000203f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44d2
   203f4: 91000000     	add	x0, x0, #0x0
		00000000000203f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44d2
   203f8: 94000000     	bl	0x203f8 <tpd_proc_deinit+0x1a4>
		00000000000203f8:  R_AARCH64_CALL26	remove_proc_entry
   203fc: f9400261     	ldr	x1, [x19]
		00000000000203fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20400: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x347b
   20404: 91000000     	add	x0, x0, #0x0
		0000000000020404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x347b
   20408: 94000000     	bl	0x20408 <tpd_proc_deinit+0x1b4>
		0000000000020408:  R_AARCH64_CALL26	remove_proc_entry
   2040c: f9400261     	ldr	x1, [x19]
		000000000002040c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20410: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195f
   20414: 91000000     	add	x0, x0, #0x0
		0000000000020414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195f
   20418: 94000000     	bl	0x20418 <tpd_proc_deinit+0x1c4>
		0000000000020418:  R_AARCH64_CALL26	remove_proc_entry
   2041c: f9400261     	ldr	x1, [x19]
		000000000002041c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20420: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3baa
   20424: 91000000     	add	x0, x0, #0x0
		0000000000020424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3baa
   20428: 94000000     	bl	0x20428 <tpd_proc_deinit+0x1d4>
		0000000000020428:  R_AARCH64_CALL26	remove_proc_entry
   2042c: f9400261     	ldr	x1, [x19]
		000000000002042c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   20430: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5010
   20434: 91000000     	add	x0, x0, #0x0
		0000000000020434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5010
   20438: 94000000     	bl	0x20438 <tpd_proc_deinit+0x1e4>
		0000000000020438:  R_AARCH64_CALL26	remove_proc_entry
   2043c: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		000000000002043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a4
   20440: 91000000     	add	x0, x0, #0x0
		0000000000020440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a4
   20444: aa1f03e1     	mov	x1, xzr
   20448: 94000000     	bl	0x20448 <tpd_proc_deinit+0x1f4>
		0000000000020448:  R_AARCH64_CALL26	remove_proc_entry
   2044c: f9400bf3     	ldr	x19, [sp, #0x10]
   20450: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   20454: d50323bf     	autiasp
   20458: d65f03c0     	ret
   2045c: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		000000000002045c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CE70
   20460: 91000000     	add	x0, x0, #0x0
		0000000000020460:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CE70
   20464: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4863
   20468: 91000021     	add	x1, x1, #0x0
		0000000000020468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4863
   2046c: 94000000     	bl	0x2046c <tpd_proc_deinit+0x218>
		000000000002046c:  R_AARCH64_CALL26	_printk
   20470: 17fffff7     	b	0x2044c <tpd_proc_deinit+0x1f8>
