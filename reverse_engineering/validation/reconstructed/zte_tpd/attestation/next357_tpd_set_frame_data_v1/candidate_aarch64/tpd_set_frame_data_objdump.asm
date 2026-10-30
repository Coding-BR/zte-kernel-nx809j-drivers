
/out/tpd_set_frame_data.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_frame_data>:
       0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       4: a9024ff4     	stp	x20, x19, [sp, #0x20]
       8: f946dc13     	ldr	x19, [x0, #0xdb8]
       c: 2a0103f4     	mov	w20, w1
      10: 90000000     	adrp	x0, 0x0 <tpd_set_frame_data>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
      14: 91000000     	add	x0, x0, #0x0
		0000000000000014:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
      18: 90000001     	adrp	x1, 0x0 <tpd_set_frame_data>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      1c: 91000021     	add	x1, x1, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      20: f9000bf5     	str	x21, [sp, #0x10]
      24: 910003fd     	mov	x29, sp
      28: 94000000     	bl	0x28 <tpd_set_frame_data+0x28>
		0000000000000028:  R_AARCH64_CALL26	printk
      2c: b4000133     	cbz	x19, 0x50 <tpd_set_frame_data+0x50>
      30: f9413a68     	ldr	x8, [x19, #0x270]
      34: b940b909     	ldr	w9, [x8, #0xb8]
      38: 34000069     	cbz	w9, 0x44 <tpd_set_frame_data+0x44>
      3c: 3942f108     	ldrb	w8, [x8, #0xbc]
      40: 370000c8     	tbnz	w8, #0x0, 0x58 <tpd_set_frame_data+0x58>
      44: f9400268     	ldr	x8, [x19]
      48: b9420d15     	ldr	w21, [x8, #0x20c]
      4c: 14000004     	b	0x5c <tpd_set_frame_data+0x5c>
      50: 128002a0     	mov	w0, #-0x16              // =-22
      54: 14000016     	b	0xac <tpd_set_frame_data+0xac>
      58: 2a1f03f5     	mov	w21, wzr
      5c: b9457e68     	ldr	w8, [x19, #0x57c]
      60: 7100051f     	cmp	w8, #0x1
      64: 54000181     	b.ne	0x94 <tpd_set_frame_data+0x94>
      68: aa1303e0     	mov	x0, x19
      6c: b905e274     	str	w20, [x19, #0x5e0]
      70: 94000000     	bl	0x70 <tpd_set_frame_data+0x70>
		0000000000000070:  R_AARCH64_CALL26	zte_reset_frame_list
      74: aa1303e0     	mov	x0, x19
      78: 2a1403e1     	mov	w1, w20
      7c: 2a1503e2     	mov	w2, w21
      80: 94000000     	bl	0x80 <tpd_set_frame_data+0x80>
		0000000000000080:  R_AARCH64_CALL26	syna_dev_get_frame_data
      84: 36f80120     	tbz	w0, #0x1f, 0xa8 <tpd_set_frame_data+0xa8>
      88: 90000000     	adrp	x0, 0x0 <tpd_set_frame_data>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	unk_345B2
      8c: 91000000     	add	x0, x0, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	unk_345B2
      90: 14000003     	b	0x9c <tpd_set_frame_data+0x9c>
      94: 90000000     	adrp	x0, 0x0 <tpd_set_frame_data>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
      98: 91000000     	add	x0, x0, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
      9c: 90000001     	adrp	x1, 0x0 <tpd_set_frame_data>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      a0: 91000021     	add	x1, x1, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      a4: 94000000     	bl	0xa4 <tpd_set_frame_data+0xa4>
		00000000000000a4:  R_AARCH64_CALL26	printk
      a8: 2a1f03e0     	mov	w0, wzr
      ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      b0: f9400bf5     	ldr	x21, [sp, #0x10]
      b4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      b8: d65f03c0     	ret
