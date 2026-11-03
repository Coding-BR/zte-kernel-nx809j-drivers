
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007ec <zte_ramdisk_reboot_write>:
     7ec: aa0003e8     	mov	x8, x0
     7f0: 7100043f     	cmp	w1, #0x1
     7f4: 12800000     	mov	w0, #-0x1               // =-1
     7f8: 54000181     	b.ne	0x828 <zte_ramdisk_reboot_write+0x3c>
     7fc: b4000168     	cbz	x8, 0x828 <zte_ramdisk_reboot_write+0x3c>
     800: d503233f     	paciasp
     804: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     808: f9000bf3     	str	x19, [sp, #0x10]
     80c: 910003fd     	mov	x29, sp
     810: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     814: f9400133     	ldr	x19, [x9]
		0000000000000814:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     818: b50000b3     	cbnz	x19, 0x82c <zte_ramdisk_reboot_write+0x40>
     81c: f9400bf3     	ldr	x19, [sp, #0x10]
     820: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     824: d50323bf     	autiasp
     828: d65f03c0     	ret
     82c: f9403661     	ldr	x1, [x19, #0x68]
     830: 39400108     	ldrb	w8, [x8]
     834: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000834:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     838: b13ffc3f     	cmn	x1, #0xfff
     83c: 39000128     	strb	w8, [x9]
		000000000000083c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     840: 540000a3     	b.lo	0x854 <zte_ramdisk_reboot_write+0x68>
     844: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b
     848: 91000000     	add	x0, x0, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b
     84c: 94000000     	bl	0x84c <zte_ramdisk_reboot_write+0x60>
		000000000000084c:  R_AARCH64_CALL26	_printk
     850: 1400000a     	b	0x878 <zte_ramdisk_reboot_write+0x8c>
     854: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42a
     858: 91000000     	add	x0, x0, #0x0
		0000000000000858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42a
     85c: 2a0803e1     	mov	w1, w8
     860: 94000000     	bl	0x860 <zte_ramdisk_reboot_write+0x74>
		0000000000000860:  R_AARCH64_CALL26	_printk
     864: f9403660     	ldr	x0, [x19, #0x68]
     868: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     86c: 91000021     	add	x1, x1, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     870: 52800022     	mov	w2, #0x1                // =1
     874: 94000000     	bl	0x874 <zte_ramdisk_reboot_write+0x88>
		0000000000000874:  R_AARCH64_CALL26	nvmem_cell_write
     878: 2a1f03e0     	mov	w0, wzr
     87c: 17ffffe8     	b	0x81c <zte_ramdisk_reboot_write+0x30>
