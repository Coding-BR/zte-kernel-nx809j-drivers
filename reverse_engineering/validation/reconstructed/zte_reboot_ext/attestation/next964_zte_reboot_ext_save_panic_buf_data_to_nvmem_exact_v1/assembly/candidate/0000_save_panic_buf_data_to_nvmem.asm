
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <save_panic_buf_data_to_nvmem>:
       0: d503233f     	paciasp
       4: d100c3ff     	sub	sp, sp, #0x30
       8: a9017bfd     	stp	x29, x30, [sp, #0x10]
       c: a9024ff4     	stp	x20, x19, [sp, #0x20]
      10: 910043fd     	add	x29, sp, #0x10
      14: b50000a0     	cbnz	x0, 0x28 <save_panic_buf_data_to_nvmem+0x28>
      18: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb
      1c: 91000000     	add	x0, x0, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb
      20: 94000000     	bl	0x20 <save_panic_buf_data_to_nvmem+0x20>
		0000000000000020:  R_AARCH64_CALL26	_printk
      24: 1400004e     	b	0x15c <save_panic_buf_data_to_nvmem+0x15c>
      28: f9404801     	ldr	x1, [x0, #0x90]
      2c: aa0003f3     	mov	x19, x0
      30: b13ffc3f     	cmn	x1, #0xfff
      34: 540000a3     	b.lo	0x48 <save_panic_buf_data_to_nvmem+0x48>
      38: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a5
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a5
      40: 94000000     	bl	0x40 <save_panic_buf_data_to_nvmem+0x40>
		0000000000000040:  R_AARCH64_CALL26	_printk
      44: 1400000b     	b	0x70 <save_panic_buf_data_to_nvmem+0x70>
      48: 90000014     	adrp	x20, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf+0x3
      4c: 91000294     	add	x20, x20, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf+0x3
      50: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85
      54: 91000000     	add	x0, x0, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85
      58: 39400281     	ldrb	w1, [x20]
      5c: 94000000     	bl	0x5c <save_panic_buf_data_to_nvmem+0x5c>
		000000000000005c:  R_AARCH64_CALL26	_printk
      60: f9404a60     	ldr	x0, [x19, #0x90]
      64: aa1403e1     	mov	x1, x20
      68: 52800022     	mov	w2, #0x1                // =1
      6c: 94000000     	bl	0x6c <save_panic_buf_data_to_nvmem+0x6c>
		000000000000006c:  R_AARCH64_CALL26	nvmem_cell_write
      70: f9404661     	ldr	x1, [x19, #0x88]
      74: b13ffc3f     	cmn	x1, #0xfff
      78: 540000a3     	b.lo	0x8c <save_panic_buf_data_to_nvmem+0x8c>
      7c: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		000000000000007c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3da
      80: 91000000     	add	x0, x0, #0x0
		0000000000000080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3da
      84: 94000000     	bl	0x84 <save_panic_buf_data_to_nvmem+0x84>
		0000000000000084:  R_AARCH64_CALL26	_printk
      88: 1400000b     	b	0xb4 <save_panic_buf_data_to_nvmem+0xb4>
      8c: 90000014     	adrp	x20, 0x0 <save_panic_buf_data_to_nvmem>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf+0x1
      90: 91000294     	add	x20, x20, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf+0x1
      94: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c0
      98: 91000000     	add	x0, x0, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c0
      9c: 39400281     	ldrb	w1, [x20]
      a0: 94000000     	bl	0xa0 <save_panic_buf_data_to_nvmem+0xa0>
		00000000000000a0:  R_AARCH64_CALL26	_printk
      a4: f9404660     	ldr	x0, [x19, #0x88]
      a8: aa1403e1     	mov	x1, x20
      ac: 52800022     	mov	w2, #0x1                // =1
      b0: 94000000     	bl	0xb0 <save_panic_buf_data_to_nvmem+0xb0>
		00000000000000b0:  R_AARCH64_CALL26	nvmem_cell_write
      b4: f9404261     	ldr	x1, [x19, #0x80]
      b8: b13ffc3f     	cmn	x1, #0xfff
      bc: 540000a3     	b.lo	0xd0 <save_panic_buf_data_to_nvmem+0xd0>
      c0: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177
      c4: 91000000     	add	x0, x0, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177
      c8: 94000000     	bl	0xc8 <save_panic_buf_data_to_nvmem+0xc8>
		00000000000000c8:  R_AARCH64_CALL26	_printk
      cc: 1400000b     	b	0xf8 <save_panic_buf_data_to_nvmem+0xf8>
      d0: 90000014     	adrp	x20, 0x0 <save_panic_buf_data_to_nvmem>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
      d4: 91000294     	add	x20, x20, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf
      d8: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71e
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71e
      e0: 39400281     	ldrb	w1, [x20]
      e4: 94000000     	bl	0xe4 <save_panic_buf_data_to_nvmem+0xe4>
		00000000000000e4:  R_AARCH64_CALL26	_printk
      e8: f9404260     	ldr	x0, [x19, #0x80]
      ec: aa1403e1     	mov	x1, x20
      f0: 52800022     	mov	w2, #0x1                // =1
      f4: 94000000     	bl	0xf4 <save_panic_buf_data_to_nvmem+0xf4>
		00000000000000f4:  R_AARCH64_CALL26	nvmem_cell_write
      f8: f9404e61     	ldr	x1, [x19, #0x98]
      fc: b13ffc3f     	cmn	x1, #0xfff
     100: 540000a3     	b.lo	0x114 <save_panic_buf_data_to_nvmem+0x114>
     104: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f7
     108: 91000000     	add	x0, x0, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f7
     10c: 94000000     	bl	0x10c <save_panic_buf_data_to_nvmem+0x10c>
		000000000000010c:  R_AARCH64_CALL26	_printk
     110: 14000013     	b	0x15c <save_panic_buf_data_to_nvmem+0x15c>
     114: 90000014     	adrp	x20, 0x0 <save_panic_buf_data_to_nvmem>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf+0x4
     118: 91000294     	add	x20, x20, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf+0x4
     11c: 90000000     	adrp	x0, 0x0 <save_panic_buf_data_to_nvmem>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     120: 91000000     	add	x0, x0, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     124: 39400281     	ldrb	w1, [x20]
     128: 39400682     	ldrb	w2, [x20, #0x1]
     12c: 39400a83     	ldrb	w3, [x20, #0x2]
     130: 39400e84     	ldrb	w4, [x20, #0x3]
     134: 39401285     	ldrb	w5, [x20, #0x4]
     138: 39401686     	ldrb	w6, [x20, #0x5]
     13c: 39401a87     	ldrb	w7, [x20, #0x6]
     140: 39401e88     	ldrb	w8, [x20, #0x7]
     144: b90003e8     	str	w8, [sp]
     148: 94000000     	bl	0x148 <save_panic_buf_data_to_nvmem+0x148>
		0000000000000148:  R_AARCH64_CALL26	_printk
     14c: f9404e60     	ldr	x0, [x19, #0x98]
     150: aa1403e1     	mov	x1, x20
     154: 52800022     	mov	w2, #0x1                // =1
     158: 94000000     	bl	0x158 <save_panic_buf_data_to_nvmem+0x158>
		0000000000000158:  R_AARCH64_CALL26	nvmem_cell_write
     15c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     160: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     164: 9100c3ff     	add	sp, sp, #0x30
     168: d50323bf     	autiasp
     16c: d65f03c0     	ret
