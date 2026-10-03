
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b284 <syna_sysfs_pwr_store>:
    b284: d503233f     	paciasp
    b288: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b28c: a90157f6     	stp	x22, x21, [sp, #0x10]
    b290: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b294: 910003fd     	mov	x29, sp
    b298: f9400c08     	ldr	x8, [x0, #0x18]
    b29c: aa0303f3     	mov	x19, x3
    b2a0: f9400d14     	ldr	x20, [x8, #0x18]
    b2a4: f9404e96     	ldr	x22, [x20, #0x98]
    b2a8: 39560ac8     	ldrb	w8, [x22, #0x582]
    b2ac: 36000448     	tbz	w8, #0x0, 0xb334 <syna_sysfs_pwr_store+0xb0>
    b2b0: aa0203f5     	mov	x21, x2
    b2b4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b2b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175d6
    b2b8: 91000021     	add	x1, x1, #0x0
		000000000000b2b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175d6
    b2bc: aa0203e0     	mov	x0, x2
    b2c0: 528000c2     	mov	w2, #0x6                // =6
    b2c4: 94000000     	bl	0xb2c4 <syna_sysfs_pwr_store+0x40>
		000000000000b2c4:  R_AARCH64_CALL26	strncmp
    b2c8: 34000300     	cbz	w0, 0xb328 <syna_sysfs_pwr_store+0xa4>
    b2cc: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b2cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19977
    b2d0: 91000021     	add	x1, x1, #0x0
		000000000000b2d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19977
    b2d4: aa1503e0     	mov	x0, x21
    b2d8: 528000e2     	mov	w2, #0x7                // =7
    b2dc: 94000000     	bl	0xb2dc <syna_sysfs_pwr_store+0x58>
		000000000000b2dc:  R_AARCH64_CALL26	strncmp
    b2e0: 35000360     	cbnz	w0, 0xb34c <syna_sysfs_pwr_store+0xc8>
    b2e4: f94366c8     	ldr	x8, [x22, #0x6c8]
    b2e8: b4000128     	cbz	x8, 0xb30c <syna_sysfs_pwr_store+0x88>
    b2ec: aa1403e0     	mov	x0, x20
    b2f0: b85fc110     	ldur	w16, [x8, #-0x4]
    b2f4: 72878171     	movk	w17, #0x3c0b
    b2f8: 72a54e11     	movk	w17, #0x2a70, lsl #16
    b2fc: 6b11021f     	cmp	w16, w17
    b300: 54000040     	b.eq	0xb308 <syna_sysfs_pwr_store+0x84>
    b304: d4304500     	brk	#0x8228
    b308: d63f0100     	blr	x8
    b30c: 93407e73     	sxtw	x19, w19
    b310: aa1303e0     	mov	x0, x19
    b314: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b318: a94157f6     	ldp	x22, x21, [sp, #0x10]
    b31c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b320: d50323bf     	autiasp
    b324: d65f03c0     	ret
    b328: f94362c8     	ldr	x8, [x22, #0x6c0]
    b32c: b5fffe08     	cbnz	x8, 0xb2ec <syna_sysfs_pwr_store+0x68>
    b330: 17fffff7     	b	0xb30c <syna_sysfs_pwr_store+0x88>
    b334: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19190
    b338: 91000000     	add	x0, x0, #0x0
		000000000000b338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19190
    b33c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b33c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac8a
    b340: 91000021     	add	x1, x1, #0x0
		000000000000b340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac8a
    b344: 94000000     	bl	0xb344 <syna_sysfs_pwr_store+0xc0>
		000000000000b344:  R_AARCH64_CALL26	_printk
    b348: 17fffff2     	b	0xb310 <syna_sysfs_pwr_store+0x8c>
    b34c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b34c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b95
    b350: 91000000     	add	x0, x0, #0x0
		000000000000b350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b95
    b354: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac8a
    b358: 91000021     	add	x1, x1, #0x0
		000000000000b358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac8a
    b35c: aa1503e2     	mov	x2, x21
    b360: 94000000     	bl	0xb360 <syna_sysfs_pwr_store+0xdc>
		000000000000b360:  R_AARCH64_CALL26	_printk
    b364: 928002b3     	mov	x19, #-0x16             // =-22
    b368: 17ffffea     	b	0xb310 <syna_sysfs_pwr_store+0x8c>
