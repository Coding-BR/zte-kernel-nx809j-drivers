
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <aw86320_play_atsin0>:
       4: d503233f     	paciasp
       8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
       c: f9000bf9     	str	x25, [sp, #0x10]
      10: a9025ff8     	stp	x24, x23, [sp, #0x20]
      14: a90357f6     	stp	x22, x21, [sp, #0x30]
      18: a9044ff4     	stp	x20, x19, [sp, #0x40]
      1c: 910003fd     	mov	x29, sp
      20: 2a0003f3     	mov	w19, w0
      24: 12003c34     	and	w20, w1, #0xffff
      28: 2a0203f5     	mov	w21, w2
      2c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x5cf
      30: 91000000     	add	x0, x0, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x5cf
      34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
      38: 91000021     	add	x1, x1, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
      3c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x650
      40: 91000063     	add	x3, x3, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x650
      44: 12003e64     	and	w4, w19, #0xffff
      48: 12003c46     	and	w6, w2, #0xffff
      4c: 528046c2     	mov	w2, #0x236              // =566
      50: 2a1403e5     	mov	w5, w20
      54: 94000000     	bl	0x54 <aw86320_play_atsin0+0x50>
		0000000000000054:  R_AARCH64_CALL26	_printk
      58: 71016a9f     	cmp	w20, #0x5a
      5c: 540000c8     	b.hi	0x74 <aw86320_play_atsin0+0x70>
      60: 72003e7f     	tst	w19, #0xffff
      64: 54000080     	b.eq	0x74 <aw86320_play_atsin0+0x70>
      68: 12003ea8     	and	w8, w21, #0xffff
      6c: 7107d11f     	cmp	w8, #0x1f4
      70: 54000109     	b.ls	0x90 <aw86320_play_atsin0+0x8c>
      74: a9444ff4     	ldp	x20, x19, [sp, #0x40]
      78: f9400bf9     	ldr	x25, [sp, #0x10]
      7c: a94357f6     	ldp	x22, x21, [sp, #0x30]
      80: a9425ff8     	ldp	x24, x23, [sp, #0x20]
      84: a8c57bfd     	ldp	x29, x30, [sp], #0x50
      88: d50323bf     	autiasp
      8c: d65f03c0     	ret
      90: 529ff288     	mov	w8, #0xff94             // =65428
      94: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
      98: 529999aa     	mov	w10, #0xcccd            // =52429
      9c: 72a006a8     	movk	w8, #0x35, lsl #16
      a0: f94002e9     	ldr	x9, [x23]
		00000000000000a0:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
      a4: 72b9998a     	movk	w10, #0xcccc, lsl #16
      a8: 1b087e88     	mul	w8, w20, w8
      ac: 5285000c     	mov	w12, #0x2800            // =10240
      b0: 90000016     	adrp	x22, 0x0 <.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
      b4: 910002d6     	add	x22, x22, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
      b8: b9434d2b     	ldr	w11, [x9, #0x34c]
      bc: 52800038     	mov	w24, #0x1               // =1
      c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xc6a
      c4: 91000000     	add	x0, x0, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xc6a
      c8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x650
      cc: 91000063     	add	x3, x3, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x650
      d0: 9baa7d08     	umull	x8, w8, w10
      d4: b943492a     	ldr	w10, [x9, #0x348]
      d8: 53144d6b     	lsl	w11, w11, #12
      dc: aa1603e1     	mov	x1, x22
      e0: 52804982     	mov	w2, #0x24c              // =588
      e4: b9001138     	str	w24, [x9, #0x10]
      e8: d36dfd14     	lsr	x20, x8, #45
      ec: 2a0c0268     	orr	w8, w19, w12
      f0: 12003e6c     	and	w12, w19, #0xffff
      f4: 2a0a396a     	orr	w10, w11, w10, lsl #14
      f8: 710ff99f     	cmp	w12, #0x3fe
      fc: 52857feb     	mov	w11, #0x2bff            // =11263
     100: 1a888173     	csel	w19, w11, w8, hi
     104: 2a1403e5     	mov	w5, w20
     108: 2a150155     	orr	w21, w10, w21
     10c: 12003e64     	and	w4, w19, #0xffff
     110: 12003ea6     	and	w6, w21, #0xffff
     114: 94000000     	bl	0x114 <aw86320_play_atsin0+0x110>
		0000000000000114:  R_AARCH64_CALL26	_printk
     118: f94002f9     	ldr	x25, [x23]
		0000000000000118:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     11c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x7c7
     120: 91000000     	add	x0, x0, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x7c7
     124: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xf20
     128: 91000063     	add	x3, x3, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xf20
     12c: aa1603e1     	mov	x1, x22
     130: 52802522     	mov	w2, #0x129              // =297
     134: 94000000     	bl	0x134 <aw86320_play_atsin0+0x130>
		0000000000000134:  R_AARCH64_CALL26	_printk
     138: 394d1b28     	ldrb	w8, [x25, #0x346]
     13c: 7100051f     	cmp	w8, #0x1
     140: 54000041     	b.ne	0x148 <aw86320_play_atsin0+0x144>
     144: 39000738     	strb	w24, [x25, #0x1]
     148: 394d1728     	ldrb	w8, [x25, #0x345]
     14c: 7100051f     	cmp	w8, #0x1
     150: 54000061     	b.ne	0x15c <aw86320_play_atsin0+0x158>
     154: 52800048     	mov	w8, #0x2                // =2
     158: 39000728     	strb	w8, [x25, #0x1]
     15c: f94002e8     	ldr	x8, [x23]
		000000000000015c:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     160: 39400508     	ldrb	w8, [x8, #0x1]
     164: 7100051f     	cmp	w8, #0x1
     168: 54fff861     	b.ne	0x74 <aw86320_play_atsin0+0x70>
     16c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x714
     170: 91000000     	add	x0, x0, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x714
     174: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     178: 91000021     	add	x1, x1, #0x0
		0000000000000178:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     17c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x650
     180: 91000063     	add	x3, x3, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x650
     184: 52804a02     	mov	w2, #0x250              // =592
     188: 52800024     	mov	w4, #0x1                // =1
     18c: 94000000     	bl	0x18c <aw86320_play_atsin0+0x188>
		000000000000018c:  R_AARCH64_CALL26	_printk
     190: f94002e0     	ldr	x0, [x23]
		0000000000000190:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     194: 94000050     	bl	0x2d4 <aw86320_play_stop>
		0000000000000194:  R_AARCH64_CALL26	aw86320_play_stop
     198: f94002e8     	ldr	x8, [x23]
		0000000000000198:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     19c: b9401108     	ldr	w8, [x8, #0x10]
     1a0: 7100051f     	cmp	w8, #0x1
     1a4: 54fff681     	b.ne	0x74 <aw86320_play_atsin0+0x70>
     1a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x1004
     1ac: 91000000     	add	x0, x0, #0x0
		00000000000001ac:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x1004
     1b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     1b4: 91000021     	add	x1, x1, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     1b8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x650
     1bc: 91000063     	add	x3, x3, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x650
     1c0: 52804a62     	mov	w2, #0x253              // =595
     1c4: 94000000     	bl	0x1c4 <aw86320_play_atsin0+0x1c0>
		00000000000001c4:  R_AARCH64_CALL26	_printk
     1c8: f94002e0     	ldr	x0, [x23]
		00000000000001c8:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     1cc: 94000077     	bl	0x3a8 <aw86320_timecheck_work_init>
		00000000000001cc:  R_AARCH64_CALL26	aw86320_timecheck_work_init
     1d0: f94002e0     	ldr	x0, [x23]
		00000000000001d0:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     1d4: 528004a1     	mov	w1, #0x25               // =37
     1d8: 2a1f03e2     	mov	w2, wzr
     1dc: 94000098     	bl	0x43c <haptic_i2c_write>
		00000000000001dc:  R_AARCH64_CALL26	haptic_i2c_write
     1e0: f94002e0     	ldr	x0, [x23]
		00000000000001e0:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     1e4: 52800461     	mov	w1, #0x23               // =35
     1e8: 2a1403e2     	mov	w2, w20
     1ec: 94000094     	bl	0x43c <haptic_i2c_write>
		00000000000001ec:  R_AARCH64_CALL26	haptic_i2c_write
     1f0: f94002e0     	ldr	x0, [x23]
		00000000000001f0:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     1f4: 52800481     	mov	w1, #0x24               // =36
     1f8: 2a1503e2     	mov	w2, w21
     1fc: 94000090     	bl	0x43c <haptic_i2c_write>
		00000000000001fc:  R_AARCH64_CALL26	haptic_i2c_write
     200: f94002e0     	ldr	x0, [x23]
		0000000000000200:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
     204: 528004a1     	mov	w1, #0x25               // =37
     208: 2a1303e2     	mov	w2, w19
     20c: 9400008c     	bl	0x43c <haptic_i2c_write>
		000000000000020c:  R_AARCH64_CALL26	haptic_i2c_write
     210: 17ffff99     	b	0x74 <aw86320_play_atsin0+0x70>
