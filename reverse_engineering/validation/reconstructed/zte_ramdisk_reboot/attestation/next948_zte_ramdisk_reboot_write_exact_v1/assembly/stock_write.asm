
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_ramdisk_reboot_write>:
       4: aa0003e8     	mov	x8, x0
       8: 7100043f     	cmp	w1, #0x1
       c: 12800000     	mov	w0, #-0x1               // =-1
      10: 54000181     	b.ne	0x40 <zte_ramdisk_reboot_write+0x3c>
      14: b4000168     	cbz	x8, 0x40 <zte_ramdisk_reboot_write+0x3c>
      18: d503233f     	paciasp
      1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      20: f9000bf3     	str	x19, [sp, #0x10]
      24: 910003fd     	mov	x29, sp
      28: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
      2c: f9400133     	ldr	x19, [x9]
		000000000000002c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x80
      30: b50000b3     	cbnz	x19, 0x44 <zte_ramdisk_reboot_write+0x40>
      34: f9400bf3     	ldr	x19, [sp, #0x10]
      38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      3c: d50323bf     	autiasp
      40: d65f03c0     	ret
      44: f9403661     	ldr	x1, [x19, #0x68]
      48: 39400108     	ldrb	w8, [x8]
      4c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	saved_ramdisk_buf
      50: b13ffc3f     	cmn	x1, #0xfff
      54: 39000128     	strb	w8, [x9]
		0000000000000054:  R_AARCH64_LDST8_ABS_LO12_NC	saved_ramdisk_buf
      58: 540000a3     	b.lo	0x6c <zte_ramdisk_reboot_write+0x68>
      5c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b
      60: 91000000     	add	x0, x0, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b
      64: 94000000     	bl	0x64 <zte_ramdisk_reboot_write+0x60>
		0000000000000064:  R_AARCH64_CALL26	_printk
      68: 1400000a     	b	0x90 <zte_ramdisk_reboot_write+0x8c>
      6c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3df
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3df
      74: 2a0803e1     	mov	w1, w8
      78: 94000000     	bl	0x78 <zte_ramdisk_reboot_write+0x74>
		0000000000000078:  R_AARCH64_CALL26	_printk
      7c: f9403660     	ldr	x0, [x19, #0x68]
      80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000080:  R_AARCH64_ADR_PREL_PG_HI21	saved_ramdisk_buf
      84: 91000021     	add	x1, x1, #0x0
		0000000000000084:  R_AARCH64_ADD_ABS_LO12_NC	saved_ramdisk_buf
      88: 52800022     	mov	w2, #0x1                // =1
      8c: 94000000     	bl	0x8c <zte_ramdisk_reboot_write+0x88>
		000000000000008c:  R_AARCH64_CALL26	nvmem_cell_write
      90: 2a1f03e0     	mov	w0, wzr
      94: 17ffffe8     	b	0x34 <zte_ramdisk_reboot_write+0x30>
