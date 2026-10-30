
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000394 <zte_ramdisk_reboot_write>:
     394: aa0003e8     	mov	x8, x0
     398: 7100043f     	cmp	w1, #0x1
     39c: 12800000     	mov	w0, #-0x1               // =-1
     3a0: 54000181     	b.ne	0x3d0 <zte_ramdisk_reboot_write+0x3c>
     3a4: b4000168     	cbz	x8, 0x3d0 <zte_ramdisk_reboot_write+0x3c>
     3a8: d503233f     	paciasp
     3ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3b0: f9000bf3     	str	x19, [sp, #0x10]
     3b4: 910003fd     	mov	x29, sp
     3b8: 90000009     	adrp	x9, 0x0 <extract_ocp_info>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x88
     3bc: f9400133     	ldr	x19, [x9]
		00000000000003bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x88
     3c0: b50000b3     	cbnz	x19, 0x3d4 <zte_ramdisk_reboot_write+0x40>
     3c4: f9400bf3     	ldr	x19, [sp, #0x10]
     3c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     3cc: d50323bf     	autiasp
     3d0: d65f03c0     	ret
     3d4: f9403661     	ldr	x1, [x19, #0x68]
     3d8: 39400108     	ldrb	w8, [x8]
     3dc: 90000009     	adrp	x9, 0x0 <extract_ocp_info>
		00000000000003dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     3e0: b13ffc3f     	cmn	x1, #0xfff
     3e4: 39000128     	strb	w8, [x9]
		00000000000003e4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss
     3e8: 540000a3     	b.lo	0x3fc <zte_ramdisk_reboot_write+0x68>
     3ec: 90000000     	adrp	x0, 0x0 <extract_ocp_info>
		00000000000003ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     3f0: 91000000     	add	x0, x0, #0x0
		00000000000003f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     3f4: 94000000     	bl	0x3f4 <zte_ramdisk_reboot_write+0x60>
		00000000000003f4:  R_AARCH64_CALL26	_printk
     3f8: 1400000a     	b	0x420 <zte_ramdisk_reboot_write+0x8c>
     3fc: 90000000     	adrp	x0, 0x0 <extract_ocp_info>
		00000000000003fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c4
     400: 91000000     	add	x0, x0, #0x0
		0000000000000400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c4
     404: 2a0803e1     	mov	w1, w8
     408: 94000000     	bl	0x408 <zte_ramdisk_reboot_write+0x74>
		0000000000000408:  R_AARCH64_CALL26	_printk
     40c: f9403660     	ldr	x0, [x19, #0x68]
     410: 90000001     	adrp	x1, 0x0 <extract_ocp_info>
		0000000000000410:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     414: 91000021     	add	x1, x1, #0x0
		0000000000000414:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     418: 52800022     	mov	w2, #0x1                // =1
     41c: 94000000     	bl	0x41c <zte_ramdisk_reboot_write+0x88>
		000000000000041c:  R_AARCH64_CALL26	nvmem_cell_write
     420: 2a1f03e0     	mov	w0, wzr
     424: 17ffffe8     	b	0x3c4 <zte_ramdisk_reboot_write+0x30>
