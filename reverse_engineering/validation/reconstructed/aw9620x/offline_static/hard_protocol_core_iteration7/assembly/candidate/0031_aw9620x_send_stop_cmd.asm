
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000053dc <aw9620x_send_stop_cmd>:
    53dc: d503233f     	paciasp
    53e0: d101c3ff     	sub	sp, sp, #0x70
    53e4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    53e8: f90013fb     	str	x27, [sp, #0x20]
    53ec: a90367fa     	stp	x26, x25, [sp, #0x30]
    53f0: a9045ff8     	stp	x24, x23, [sp, #0x40]
    53f4: a90557f6     	stp	x22, x21, [sp, #0x50]
    53f8: a9064ff4     	stp	x20, x19, [sp, #0x60]
    53fc: 910043fd     	add	x29, sp, #0x10
    5400: d5384108     	mrs	x8, SP_EL0
    5404: 90000014     	adrp	x20, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005404:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5408: 91000294     	add	x20, x20, #0x0
		0000000000005408:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    540c: f9438908     	ldr	x8, [x8, #0x710]
    5410: aa0003f3     	mov	x19, x0
    5414: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005414:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    5418: 91000042     	add	x2, x2, #0x0
		0000000000005418:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    541c: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000541c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xf38
    5420: 91000063     	add	x3, x3, #0x0
		0000000000005420:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xf38
    5424: f90007e8     	str	x8, [sp, #0x8]
    5428: 5280f8e4     	mov	w4, #0x7c7              // =1991
    542c: f9401801     	ldr	x1, [x0, #0x30]
    5430: aa1403e0     	mov	x0, x20
    5434: 94000000     	bl	0x5434 <aw9620x_send_stop_cmd+0x58>
		0000000000005434:  R_AARCH64_CALL26	_dev_printk
    5438: aa1303e0     	mov	x0, x19
    543c: 52888881     	mov	w1, #0x4444             // =17476
    5440: 52a00022     	mov	w2, #0x10000            // =65536
    5444: 97fff0f3     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005444:  R_AARCH64_CALL26	aw9620x_i2c_write
    5448: 529e0229     	mov	w9, #0xf011             // =61457
    544c: 5281fdc8     	mov	w8, #0xfee              // =4078
    5450: aa1303e0     	mov	x0, x19
    5454: 72a78009     	movk	w9, #0x3c00, lsl #16
    5458: 529fe401     	mov	w1, #0xff20             // =65312
    545c: 2a080122     	orr	w2, w9, w8
    5460: 97fff0ec     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005460:  R_AARCH64_CALL26	aw9620x_i2c_write
    5464: 910013e2     	add	x2, sp, #0x4
    5468: aa1303e0     	mov	x0, x19
    546c: 5288e881     	mov	w1, #0x4744             // =18244
    5470: b90007ff     	str	wzr, [sp, #0x4]
    5474: 97fff9a3     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000005474:  R_AARCH64_CALL26	aw9620x_i2c_read
    5478: b94007e8     	ldr	w8, [sp, #0x4]
    547c: aa1303e0     	mov	x0, x19
    5480: 5288e881     	mov	w1, #0x4744             // =18244
    5484: 12005d02     	and	w2, w8, #0xffffff
    5488: 97fff0e2     	bl	0x1810 <aw9620x_i2c_write>
		0000000000005488:  R_AARCH64_CALL26	aw9620x_i2c_write
    548c: 529e0222     	mov	w2, #0xf011             // =61457
    5490: aa1303e0     	mov	x0, x19
    5494: 529fe401     	mov	w1, #0xff20             // =65312
    5498: 72a78002     	movk	w2, #0x3c00, lsl #16
    549c: 97fff0dd     	bl	0x1810 <aw9620x_i2c_write>
		000000000000549c:  R_AARCH64_CALL26	aw9620x_i2c_write
    54a0: aa1303e0     	mov	x0, x19
    54a4: 52888881     	mov	w1, #0x4444             // =17476
    54a8: 2a1f03e2     	mov	w2, wzr
    54ac: 97fff0d9     	bl	0x1810 <aw9620x_i2c_write>
		00000000000054ac:  R_AARCH64_CALL26	aw9620x_i2c_write
    54b0: 52800320     	mov	w0, #0x19               // =25
    54b4: 94000000     	bl	0x54b4 <aw9620x_send_stop_cmd+0xd8>
		00000000000054b4:  R_AARCH64_CALL26	msleep
    54b8: 90000015     	adrp	x21, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000054b8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3012
    54bc: 910002b5     	add	x21, x21, #0x0
		00000000000054bc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3012
    54c0: 90000016     	adrp	x22, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000054c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3896
    54c4: 910002d6     	add	x22, x22, #0x0
		00000000000054c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3896
    54c8: 90000017     	adrp	x23, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000054c8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    54cc: 910002f7     	add	x23, x23, #0x0
		00000000000054cc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    54d0: 52800158     	mov	w24, #0xa               // =10
    54d4: 90000019     	adrp	x25, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000054d4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x257b
    54d8: 91000339     	add	x25, x25, #0x0
		00000000000054d8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x257b
    54dc: b90007ff     	str	wzr, [sp, #0x4]
    54e0: 910013e2     	add	x2, sp, #0x4
    54e4: aa1303e0     	mov	x0, x19
    54e8: 52888201     	mov	w1, #0x4410             // =17424
    54ec: 97fff985     	bl	0x3b00 <aw9620x_i2c_read>
		00000000000054ec:  R_AARCH64_CALL26	aw9620x_i2c_read
    54f0: b94007fa     	ldr	w26, [sp, #0x4]
    54f4: f9401a61     	ldr	x1, [x19, #0x30]
    54f8: 2a0003fb     	mov	w27, w0
    54fc: aa1403e0     	mov	x0, x20
    5500: aa1503e2     	mov	x2, x21
    5504: aa1603e3     	mov	x3, x22
    5508: 5280eb84     	mov	w4, #0x75c              // =1884
    550c: 2a1a03e5     	mov	w5, w26
    5510: 94000000     	bl	0x5510 <aw9620x_send_stop_cmd+0x134>
		0000000000005510:  R_AARCH64_CALL26	_dev_printk
    5514: 3500037b     	cbnz	w27, 0x5580 <aw9620x_send_stop_cmd+0x1a4>
    5518: f9401a61     	ldr	x1, [x19, #0x30]
    551c: 7100075f     	cmp	w26, #0x1
    5520: 54000580     	b.eq	0x55d0 <aw9620x_send_stop_cmd+0x1f4>
    5524: aa1703e0     	mov	x0, x23
    5528: aa1903e2     	mov	x2, x25
    552c: aa1603e3     	mov	x3, x22
    5530: 5280ecc4     	mov	w4, #0x766              // =1894
    5534: 2a1a03e5     	mov	w5, w26
    5538: 2a1803e6     	mov	w6, w24
    553c: 94000000     	bl	0x553c <aw9620x_send_stop_cmd+0x160>
		000000000000553c:  R_AARCH64_CALL26	_dev_printk
    5540: 52807d00     	mov	w0, #0x3e8              // =1000
    5544: 52807e41     	mov	w1, #0x3f2              // =1010
    5548: 52800042     	mov	w2, #0x2                // =2
    554c: 94000000     	bl	0x554c <aw9620x_send_stop_cmd+0x170>
		000000000000554c:  R_AARCH64_CALL26	usleep_range_state
    5550: 51000718     	sub	w24, w24, #0x1
    5554: 3100071f     	cmn	w24, #0x1
    5558: 54fffc41     	b.ne	0x54e0 <aw9620x_send_stop_cmd+0x104>
    555c: f9401a61     	ldr	x1, [x19, #0x30]
    5560: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005560:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5564: 91000000     	add	x0, x0, #0x0
		0000000000005564:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    5568: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005568:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3506
    556c: 91000042     	add	x2, x2, #0x0
		000000000000556c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3506
    5570: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005570:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3896
    5574: 91000063     	add	x3, x3, #0x0
		0000000000005574:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3896
    5578: 5280ed84     	mov	w4, #0x76c              // =1900
    557c: 14000009     	b	0x55a0 <aw9620x_send_stop_cmd+0x1c4>
    5580: f9401a61     	ldr	x1, [x19, #0x30]
    5584: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005584:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    5588: 91000000     	add	x0, x0, #0x0
		0000000000005588:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    558c: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		000000000000558c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2994
    5590: 91000042     	add	x2, x2, #0x0
		0000000000005590:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2994
    5594: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005594:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3896
    5598: 91000063     	add	x3, x3, #0x0
		0000000000005598:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3896
    559c: 5280ebc4     	mov	w4, #0x75e              // =1886
    55a0: 94000000     	bl	0x55a0 <aw9620x_send_stop_cmd+0x1c4>
		00000000000055a0:  R_AARCH64_CALL26	_dev_printk
    55a4: f9401a61     	ldr	x1, [x19, #0x30]
    55a8: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000055a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    55ac: 91000000     	add	x0, x0, #0x0
		00000000000055ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    55b0: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000055b0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x72e
    55b4: 91000042     	add	x2, x2, #0x0
		00000000000055b4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x72e
    55b8: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000055b8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xf38
    55bc: 91000063     	add	x3, x3, #0x0
		00000000000055bc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xf38
    55c0: 5280fa84     	mov	w4, #0x7d4              // =2004
    55c4: 94000000     	bl	0x55c4 <aw9620x_send_stop_cmd+0x1e8>
		00000000000055c4:  R_AARCH64_CALL26	_dev_printk
    55c8: 12800000     	mov	w0, #-0x1               // =-1
    55cc: 1400000a     	b	0x55f4 <aw9620x_send_stop_cmd+0x218>
    55d0: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000055d0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    55d4: 91000000     	add	x0, x0, #0x0
		00000000000055d4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    55d8: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000055d8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1cee
    55dc: 91000042     	add	x2, x2, #0x0
		00000000000055dc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1cee
    55e0: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000055e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3896
    55e4: 91000063     	add	x3, x3, #0x0
		00000000000055e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3896
    55e8: 5280ec64     	mov	w4, #0x763              // =1891
    55ec: 94000000     	bl	0x55ec <aw9620x_send_stop_cmd+0x210>
		00000000000055ec:  R_AARCH64_CALL26	_dev_printk
    55f0: 2a1f03e0     	mov	w0, wzr
    55f4: d5384108     	mrs	x8, SP_EL0
    55f8: f9438908     	ldr	x8, [x8, #0x710]
    55fc: f94007e9     	ldr	x9, [sp, #0x8]
    5600: eb09011f     	cmp	x8, x9
    5604: 54000141     	b.ne	0x562c <aw9620x_send_stop_cmd+0x250>
    5608: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    560c: f94013fb     	ldr	x27, [sp, #0x20]
    5610: a94557f6     	ldp	x22, x21, [sp, #0x50]
    5614: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    5618: a94367fa     	ldp	x26, x25, [sp, #0x30]
    561c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5620: 9101c3ff     	add	sp, sp, #0x70
    5624: d50323bf     	autiasp
    5628: d65f03c0     	ret
    562c: 94000000     	bl	0x562c <aw9620x_send_stop_cmd+0x250>
		000000000000562c:  R_AARCH64_CALL26	__stack_chk_fail
