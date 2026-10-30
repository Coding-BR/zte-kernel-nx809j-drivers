
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000fc <nubia_get_hw_id>:
      fc: d503233f     	paciasp
     100: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     104: f9000bf3     	str	x19, [sp, #0x10]
     108: 910003fd     	mov	x29, sp
     10c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     110: 52800120     	mov	w0, #0x9                // =9
     114: 39400109     	ldrb	w9, [x8]
		0000000000000114:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     118: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     11c: 39800108     	ldrsb	x8, [x8]
		000000000000011c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     120: 7100053f     	cmp	w9, #0x1
     124: 5400012c     	b.gt	0x148 <nubia_get_hw_id+0x4c>
     128: 34000229     	cbz	w9, 0x16c <nubia_get_hw_id+0x70>
     12c: 7100053f     	cmp	w9, #0x1
     130: 540003c1     	b.ne	0x1a8 <nubia_get_hw_id+0xac>
     134: 71000d1f     	cmp	w8, #0x3
     138: 54000382     	b.hs	0x1a8 <nubia_get_hw_id+0xac>
     13c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x340
     140: 91000129     	add	x9, x9, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x340
     144: 14000013     	b	0x190 <nubia_get_hw_id+0x94>
     148: 7100093f     	cmp	w9, #0x2
     14c: 540001a0     	b.eq	0x180 <nubia_get_hw_id+0x84>
     150: 71000d3f     	cmp	w9, #0x3
     154: 540002a1     	b.ne	0x1a8 <nubia_get_hw_id+0xac>
     158: 71000d1f     	cmp	w8, #0x3
     15c: 54000261     	b.ne	0x1a8 <nubia_get_hw_id+0xac>
     160: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0xd8
     164: 91000273     	add	x19, x19, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0xd8
     168: 1400000b     	b	0x194 <nubia_get_hw_id+0x98>
     16c: 71000d1f     	cmp	w8, #0x3
     170: 540001c2     	b.hs	0x1a8 <nubia_get_hw_id+0xac>
     174: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x310
     178: 91000129     	add	x9, x9, #0x0
		0000000000000178:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x310
     17c: 14000005     	b	0x190 <nubia_get_hw_id+0x94>
     180: 71000d1f     	cmp	w8, #0x3
     184: 54000122     	b.hs	0x1a8 <nubia_get_hw_id+0xac>
     188: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x328
     18c: 91000129     	add	x9, x9, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x328
     190: f8687933     	ldr	x19, [x9, x8, lsl #3]
     194: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_bss_base+0x18
     198: b9400108     	ldr	w8, [x8]
		0000000000000198:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     19c: 7100051f     	cmp	w8, #0x1
     1a0: 540000c0     	b.eq	0x1b8 <nubia_get_hw_id+0xbc>
     1a4: b9400a60     	ldr	w0, [x19, #0x8]
     1a8: f9400bf3     	ldr	x19, [sp, #0x10]
     1ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     1b0: d50323bf     	autiasp
     1b4: d65f03c0     	ret
     1b8: b9400a61     	ldr	w1, [x19, #0x8]
     1bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x4df
     1c0: 91000000     	add	x0, x0, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x4df
     1c4: 94000000     	bl	0x1c4 <nubia_get_hw_id+0xc8>
		00000000000001c4:  R_AARCH64_CALL26	_printk
     1c8: 17fffff7     	b	0x1a4 <nubia_get_hw_id+0xa8>
