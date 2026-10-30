
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002050 <aw22xxx_set_cfg_run_state>:
    2050: d503233f     	paciasp
    2054: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2058: a90157f6     	stp	x22, x21, [sp, #0x10]
    205c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2060: 910003fd     	mov	x29, sp
    2064: 53187c13     	lsr	w19, w0, #24
    2068: 90000016     	adrp	x22, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1250
    206c: 910002d6     	add	x22, x22, #0x0
		000000000000206c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1250
    2070: 2a0003f5     	mov	w21, w0
    2074: 530c5c14     	ubfx	w20, w0, #12, #12
    2078: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd0
    207c: 91000000     	add	x0, x0, #0x0
		000000000000207c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd0
    2080: aa1603e1     	mov	x1, x22
    2084: 2a1303e2     	mov	w2, w19
    2088: 94000000     	bl	0x2088 <aw22xxx_set_cfg_run_state+0x38>
		0000000000002088:  R_AARCH64_CALL26	_printk
    208c: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000208c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x607
    2090: 91000000     	add	x0, x0, #0x0
		0000000000002090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x607
    2094: aa1603e1     	mov	x1, x22
    2098: 2a1403e2     	mov	w2, w20
    209c: 94000000     	bl	0x209c <aw22xxx_set_cfg_run_state+0x4c>
		000000000000209c:  R_AARCH64_CALL26	_printk
    20a0: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000020a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x951
    20a4: 91000000     	add	x0, x0, #0x0
		00000000000020a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x951
    20a8: aa1603e1     	mov	x1, x22
    20ac: 2a1503e2     	mov	w2, w21
    20b0: 94000000     	bl	0x20b0 <aw22xxx_set_cfg_run_state+0x60>
		00000000000020b0:  R_AARCH64_CALL26	_printk
    20b4: 7100067f     	cmp	w19, #0x1
    20b8: 90000008     	adrp	x8, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000020b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3c
    20bc: 540000c1     	b.ne	0x20d4 <aw22xxx_set_cfg_run_state+0x84>
    20c0: 350000b4     	cbnz	w20, 0x20d4 <aw22xxx_set_cfg_run_state+0x84>
    20c4: 39400109     	ldrb	w9, [x8]
		00000000000020c4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    20c8: 52800faa     	mov	w10, #0x7d              // =125
    20cc: 0a0a0129     	and	w9, w9, w10
    20d0: 14000021     	b	0x2154 <aw22xxx_set_cfg_run_state+0x104>
    20d4: 71000e7f     	cmp	w19, #0x3
    20d8: 540000a1     	b.ne	0x20ec <aw22xxx_set_cfg_run_state+0x9c>
    20dc: 35000094     	cbnz	w20, 0x20ec <aw22xxx_set_cfg_run_state+0x9c>
    20e0: 39400109     	ldrb	w9, [x8]
		00000000000020e0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    20e4: 121f1529     	and	w9, w9, #0x7e
    20e8: 1400001b     	b	0x2154 <aw22xxx_set_cfg_run_state+0x104>
    20ec: 71000e7f     	cmp	w19, #0x3
    20f0: 540000c1     	b.ne	0x2108 <aw22xxx_set_cfg_run_state+0xb8>
    20f4: 71000a9f     	cmp	w20, #0x2
    20f8: 54000081     	b.ne	0x2108 <aw22xxx_set_cfg_run_state+0xb8>
    20fc: 39400109     	ldrb	w9, [x8]
		00000000000020fc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    2100: 32000129     	orr	w9, w9, #0x1
    2104: 14000014     	b	0x2154 <aw22xxx_set_cfg_run_state+0x104>
    2108: 71000a7f     	cmp	w19, #0x2
    210c: 540000c1     	b.ne	0x2124 <aw22xxx_set_cfg_run_state+0xd4>
    2110: 350000b4     	cbnz	w20, 0x2124 <aw22xxx_set_cfg_run_state+0xd4>
    2114: 39400109     	ldrb	w9, [x8]
		0000000000002114:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    2118: 52800f6a     	mov	w10, #0x7b              // =123
    211c: 0a0a0129     	and	w9, w9, w10
    2120: 1400000d     	b	0x2154 <aw22xxx_set_cfg_run_state+0x104>
    2124: 39400109     	ldrb	w9, [x8]
		0000000000002124:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    2128: 71000a7f     	cmp	w19, #0x2
    212c: 540000c1     	b.ne	0x2144 <aw22xxx_set_cfg_run_state+0xf4>
    2130: 5104068a     	sub	w10, w20, #0x101
    2134: 71000d5f     	cmp	w10, #0x3
    2138: 54000068     	b.hi	0x2144 <aw22xxx_set_cfg_run_state+0xf4>
    213c: 321e0129     	orr	w9, w9, #0x4
    2140: 14000005     	b	0x2154 <aw22xxx_set_cfg_run_state+0x104>
    2144: 71000e7f     	cmp	w19, #0x3
    2148: 5280002a     	mov	w10, #0x1               // =1
    214c: 1a8a054a     	cinc	w10, w10, ne
    2150: 2a0a0129     	orr	w9, w9, w10
    2154: 39000109     	strb	w9, [x8]
		0000000000002154:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3c
    2158: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    215c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    2160: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2164: d50323bf     	autiasp
    2168: d65f03c0     	ret
