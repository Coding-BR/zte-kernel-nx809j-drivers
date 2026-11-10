
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000a0 <nav_event_input>:
      a0: d503233f     	paciasp
      a4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      a8: a9014ff4     	stp	x20, x19, [sp, #0x10]
      ac: 910003fd     	mov	x29, sp
      b0: 2a0003e2     	mov	w2, w0
      b4: 7100141f     	cmp	w0, #0x5
      b8: 540000ec     	b.gt	0xd4 <nav_event_input+0x34>
      bc: 7100085f     	cmp	w2, #0x2
      c0: 540005ed     	b.le	0x17c <nav_event_input+0xdc>
      c4: 71000c5f     	cmp	w2, #0x3
      c8: 54000681     	b.ne	0x198 <nav_event_input+0xf8>
      cc: 52800cf3     	mov	w19, #0x67              // =103
      d0: 14000005     	b	0xe4 <nav_event_input+0x44>
      d4: 71001c5f     	cmp	w2, #0x7
      d8: 5400038c     	b.gt	0x148 <nav_event_input+0xa8>
      dc: 54000741     	b.ne	0x1c4 <nav_event_input+0x124>
      e0: 52800e53     	mov	w19, #0x72              // =114
      e4: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
      e8: 52800021     	mov	w1, #0x1                // =1
      ec: 2a1303e2     	mov	w2, w19
      f0: f9400280     	ldr	x0, [x20]
		00000000000000f0:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
      f4: 52800023     	mov	w3, #0x1                // =1
      f8: 94000000     	bl	0xf8 <nav_event_input+0x58>
		00000000000000f8:  R_AARCH64_CALL26	input_event
      fc: f9400280     	ldr	x0, [x20]
		00000000000000fc:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     100: 2a1f03e1     	mov	w1, wzr
     104: 2a1f03e2     	mov	w2, wzr
     108: 2a1f03e3     	mov	w3, wzr
     10c: 94000000     	bl	0x10c <nav_event_input+0x6c>
		000000000000010c:  R_AARCH64_CALL26	input_event
     110: f9400280     	ldr	x0, [x20]
		0000000000000110:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     114: 52800021     	mov	w1, #0x1                // =1
     118: 2a1303e2     	mov	w2, w19
     11c: 2a1f03e3     	mov	w3, wzr
     120: 94000000     	bl	0x120 <nav_event_input+0x80>
		0000000000000120:  R_AARCH64_CALL26	input_event
     124: f9400280     	ldr	x0, [x20]
		0000000000000124:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     128: 2a1f03e1     	mov	w1, wzr
     12c: 2a1f03e2     	mov	w2, wzr
     130: 2a1f03e3     	mov	w3, wzr
     134: 94000000     	bl	0x134 <nav_event_input+0x94>
		0000000000000134:  R_AARCH64_CALL26	input_event
     138: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     13c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     140: d50323bf     	autiasp
     144: d65f03c0     	ret
     148: 7100205f     	cmp	w2, #0x8
     14c: 54000760     	b.eq	0x238 <nav_event_input+0x198>
     150: 7100245f     	cmp	w2, #0x9
     154: 540004a0     	b.eq	0x1e8 <nav_event_input+0x148>
     158: 7100285f     	cmp	w2, #0xa
     15c: 540007c1     	b.ne	0x254 <nav_event_input+0x1b4>
     160: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf8
     164: 91000000     	add	x0, x0, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf8
     168: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     16c: 91000021     	add	x1, x1, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     170: 94000000     	bl	0x170 <nav_event_input+0xd0>
		0000000000000170:  R_AARCH64_CALL26	_printk
     174: 52800e73     	mov	w19, #0x73              // =115
     178: 17ffffdb     	b	0xe4 <nav_event_input+0x44>
     17c: 7100045f     	cmp	w2, #0x1
     180: 54000420     	b.eq	0x204 <nav_event_input+0x164>
     184: 7100085f     	cmp	w2, #0x2
     188: 54000661     	b.ne	0x254 <nav_event_input+0x1b4>
     18c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x128d
     190: 91000000     	add	x0, x0, #0x0
		0000000000000190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x128d
     194: 1400001e     	b	0x20c <nav_event_input+0x16c>
     198: 7100105f     	cmp	w2, #0x4
     19c: 54000400     	b.eq	0x21c <nav_event_input+0x17c>
     1a0: 7100145f     	cmp	w2, #0x5
     1a4: 54000581     	b.ne	0x254 <nav_event_input+0x1b4>
     1a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4b
     1ac: 91000000     	add	x0, x0, #0x0
		00000000000001ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4b
     1b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     1b4: 91000021     	add	x1, x1, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     1b8: 94000000     	bl	0x1b8 <nav_event_input+0x118>
		00000000000001b8:  R_AARCH64_CALL26	_printk
     1bc: 52800d33     	mov	w19, #0x69              // =105
     1c0: 17ffffc9     	b	0xe4 <nav_event_input+0x44>
     1c4: 7100185f     	cmp	w2, #0x6
     1c8: 54000461     	b.ne	0x254 <nav_event_input+0x1b4>
     1cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbae
     1d0: 91000000     	add	x0, x0, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbae
     1d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     1d8: 91000021     	add	x1, x1, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     1dc: 94000000     	bl	0x1dc <nav_event_input+0x13c>
		00000000000001dc:  R_AARCH64_CALL26	_printk
     1e0: 52800d53     	mov	w19, #0x6a              // =106
     1e4: 17ffffc0     	b	0xe4 <nav_event_input+0x44>
     1e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ba
     1ec: 91000000     	add	x0, x0, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ba
     1f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     1f4: 91000021     	add	x1, x1, #0x0
		00000000000001f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     1f8: 94000000     	bl	0x1f8 <nav_event_input+0x158>
		00000000000001f8:  R_AARCH64_CALL26	_printk
     1fc: 52801b33     	mov	w19, #0xd9              // =217
     200: 17ffffb9     	b	0xe4 <nav_event_input+0x44>
     204: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7c
     208: 91000000     	add	x0, x0, #0x0
		0000000000000208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7c
     20c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     210: 91000021     	add	x1, x1, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     214: 94000000     	bl	0x214 <nav_event_input+0x174>
		0000000000000214:  R_AARCH64_CALL26	_printk
     218: 17ffffc8     	b	0x138 <nav_event_input+0x98>
     21c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355
     220: 91000000     	add	x0, x0, #0x0
		0000000000000220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355
     224: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     228: 91000021     	add	x1, x1, #0x0
		0000000000000228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     22c: 94000000     	bl	0x22c <nav_event_input+0x18c>
		000000000000022c:  R_AARCH64_CALL26	_printk
     230: 52800d93     	mov	w19, #0x6c              // =108
     234: 17ffffac     	b	0xe4 <nav_event_input+0x44>
     238: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
     23c: 91000000     	add	x0, x0, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
     240: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     244: 91000021     	add	x1, x1, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     248: 94000000     	bl	0x248 <nav_event_input+0x1a8>
		0000000000000248:  R_AARCH64_CALL26	_printk
     24c: 52801b13     	mov	w19, #0xd8              // =216
     250: 17ffffa5     	b	0xe4 <nav_event_input+0x44>
     254: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77c
     258: 91000000     	add	x0, x0, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77c
     25c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     264: 94000000     	bl	0x264 <nav_event_input+0x1c4>
		0000000000000264:  R_AARCH64_CALL26	_printk
     268: 2a1f03f3     	mov	w19, wzr
     26c: 17ffff9e     	b	0xe4 <nav_event_input+0x44>
