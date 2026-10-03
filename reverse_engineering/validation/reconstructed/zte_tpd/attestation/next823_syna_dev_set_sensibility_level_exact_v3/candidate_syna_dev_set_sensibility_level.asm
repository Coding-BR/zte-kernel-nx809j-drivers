
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <syna_dev_set_sensibility_level>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 2a0103f5     	mov	w21, w1
      1c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6987
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6987
      24: 2a0203f3     	mov	w19, w2
      28: aa0003f4     	mov	x20, x0
      2c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9664
      30: 91000000     	add	x0, x0, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9664
      34: aa0103e2     	mov	x2, x1
      38: 94000000     	bl	0x38 <syna_dev_set_sensibility_level+0x34>
		0000000000000038:  R_AARCH64_CALL26	_printk
      3c: b4000314     	cbz	x20, 0x9c <syna_dev_set_sensibility_level+0x98>
      40: 710006bf     	cmp	w21, #0x1
      44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacae
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacae
      4c: 540002cd     	b.le	0xa4 <syna_dev_set_sensibility_level+0xa0>
      50: 71000abf     	cmp	w21, #0x2
      54: 54000480     	b.eq	0xe4 <syna_dev_set_sensibility_level+0xe0>
      58: 71000ebf     	cmp	w21, #0x3
      5c: 54000760     	b.eq	0x148 <syna_dev_set_sensibility_level+0x144>
      60: 710012bf     	cmp	w21, #0x4
      64: 540008a1     	b.ne	0x178 <syna_dev_set_sensibility_level+0x174>
      68: b9460288     	ldr	w8, [x20, #0x600]
      6c: b9460689     	ldr	w9, [x20, #0x604]
      70: 52801f21     	mov	w1, #0xf9               // =249
      74: f9400280     	ldr	x0, [x20]
      78: 2a1303e3     	mov	w3, w19
      7c: 531c6d08     	lsl	w8, w8, #4
      80: 2a092108     	orr	w8, w8, w9, lsl #8
      84: 321e0102     	orr	w2, w8, #0x4
      88: 94000000     	bl	0x88 <syna_dev_set_sensibility_level+0x84>
		0000000000000088:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
      8c: 37f80800     	tbnz	w0, #0x1f, 0x18c <syna_dev_set_sensibility_level+0x188>
      90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4524
      94: 91000000     	add	x0, x0, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4524
      98: 14000038     	b	0x178 <syna_dev_set_sensibility_level+0x174>
      9c: 128002a0     	mov	w0, #-0x16              // =-22
      a0: 1400003b     	b	0x18c <syna_dev_set_sensibility_level+0x188>
      a4: 340003b5     	cbz	w21, 0x118 <syna_dev_set_sensibility_level+0x114>
      a8: 710006bf     	cmp	w21, #0x1
      ac: 54000661     	b.ne	0x178 <syna_dev_set_sensibility_level+0x174>
      b0: b9460288     	ldr	w8, [x20, #0x600]
      b4: b9460689     	ldr	w9, [x20, #0x604]
      b8: 52801f21     	mov	w1, #0xf9               // =249
      bc: f9400280     	ldr	x0, [x20]
      c0: 2a1303e3     	mov	w3, w19
      c4: 531c6d08     	lsl	w8, w8, #4
      c8: 2a092108     	orr	w8, w8, w9, lsl #8
      cc: 32000102     	orr	w2, w8, #0x1
      d0: 94000000     	bl	0xd0 <syna_dev_set_sensibility_level+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
      d4: 37f805c0     	tbnz	w0, #0x1f, 0x18c <syna_dev_set_sensibility_level+0x188>
      d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6de9
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6de9
      e0: 14000026     	b	0x178 <syna_dev_set_sensibility_level+0x174>
      e4: b9460288     	ldr	w8, [x20, #0x600]
      e8: b9460689     	ldr	w9, [x20, #0x604]
      ec: 52801f21     	mov	w1, #0xf9               // =249
      f0: f9400280     	ldr	x0, [x20]
      f4: 2a1303e3     	mov	w3, w19
      f8: 531c6d08     	lsl	w8, w8, #4
      fc: 2a092108     	orr	w8, w8, w9, lsl #8
     100: 321f0102     	orr	w2, w8, #0x2
     104: 94000000     	bl	0x104 <syna_dev_set_sensibility_level+0x100>
		0000000000000104:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
     108: 37f80420     	tbnz	w0, #0x1f, 0x18c <syna_dev_set_sensibility_level+0x188>
     10c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1877
     110: 91000000     	add	x0, x0, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1877
     114: 14000019     	b	0x178 <syna_dev_set_sensibility_level+0x174>
     118: b9460288     	ldr	w8, [x20, #0x600]
     11c: b9460689     	ldr	w9, [x20, #0x604]
     120: 52801f21     	mov	w1, #0xf9               // =249
     124: f9400280     	ldr	x0, [x20]
     128: 2a1303e3     	mov	w3, w19
     12c: 531c6d08     	lsl	w8, w8, #4
     130: 2a092102     	orr	w2, w8, w9, lsl #8
     134: 94000000     	bl	0x134 <syna_dev_set_sensibility_level+0x130>
		0000000000000134:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
     138: 37f802a0     	tbnz	w0, #0x1f, 0x18c <syna_dev_set_sensibility_level+0x188>
     13c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d1
     140: 91000000     	add	x0, x0, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d1
     144: 1400000d     	b	0x178 <syna_dev_set_sensibility_level+0x174>
     148: b9460288     	ldr	w8, [x20, #0x600]
     14c: b9460689     	ldr	w9, [x20, #0x604]
     150: 52801f21     	mov	w1, #0xf9               // =249
     154: f9400280     	ldr	x0, [x20]
     158: 2a1303e3     	mov	w3, w19
     15c: 531c6d08     	lsl	w8, w8, #4
     160: 2a092108     	orr	w8, w8, w9, lsl #8
     164: 32000502     	orr	w2, w8, #0x3
     168: 94000000     	bl	0x168 <syna_dev_set_sensibility_level+0x164>
		0000000000000168:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
     16c: 37f80100     	tbnz	w0, #0x1f, 0x18c <syna_dev_set_sensibility_level+0x188>
     170: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a7
     174: 91000000     	add	x0, x0, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a7
     178: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6987
     17c: 91000021     	add	x1, x1, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6987
     180: aa0103e2     	mov	x2, x1
     184: 94000000     	bl	0x184 <syna_dev_set_sensibility_level+0x180>
		0000000000000184:  R_AARCH64_CALL26	_printk
     188: 2a1f03e0     	mov	w0, wzr
     18c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     190: f9400bf5     	ldr	x21, [sp, #0x10]
     194: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     198: d50323bf     	autiasp
     19c: d65f03c0     	ret
