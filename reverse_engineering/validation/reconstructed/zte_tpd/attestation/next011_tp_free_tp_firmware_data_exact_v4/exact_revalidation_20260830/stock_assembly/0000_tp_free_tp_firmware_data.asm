
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001468 <tp_free_tp_firmware_data>:
    1468: d503233f     	paciasp
    146c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1470: f9000bf3     	str	x19, [sp, #0x10]
    1474: 910003fd     	mov	x29, sp
    1478: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001478:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    147c: f9400113     	ldr	x19, [x8]
		000000000000147c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1480: f9462e60     	ldr	x0, [x19, #0xc58]
    1484: b4000180     	cbz	x0, 0x14b4 <tp_free_tp_firmware_data+0x4c>
    1488: f9400408     	ldr	x8, [x0, #0x8]
    148c: b4000108     	cbz	x8, 0x14ac <tp_free_tp_firmware_data+0x44>
    1490: aa0803e0     	mov	x0, x8
    1494: 94000000     	bl	0x1494 <tp_free_tp_firmware_data+0x2c>
		0000000000001494:  R_AARCH64_CALL26	vfree
    1498: f9462e68     	ldr	x8, [x19, #0xc58]
    149c: f900051f     	str	xzr, [x8, #0x8]
    14a0: f9462e68     	ldr	x8, [x19, #0xc58]
    14a4: f900011f     	str	xzr, [x8]
    14a8: f9462e60     	ldr	x0, [x19, #0xc58]
    14ac: 94000000     	bl	0x14ac <tp_free_tp_firmware_data+0x44>
		00000000000014ac:  R_AARCH64_CALL26	kfree
    14b0: f9062e7f     	str	xzr, [x19, #0xc58]
    14b4: b9044a7f     	str	wzr, [x19, #0x448]
    14b8: f9400bf3     	ldr	x19, [sp, #0x10]
    14bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    14c0: d50323bf     	autiasp
    14c4: d65f03c0     	ret
