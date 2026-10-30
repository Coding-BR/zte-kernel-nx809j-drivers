
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d78 <nav_event_input>:
     d78: d503233f     	paciasp
     d7c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d80: a9014ff4     	stp	x20, x19, [sp, #0x10]
     d84: 910003fd     	mov	x29, sp
     d88: 2a0003e2     	mov	w2, w0
     d8c: 7100141f     	cmp	w0, #0x5
     d90: 540000cc     	b.gt	0xda8 <nav_event_input+0x30>
     d94: 71000c5f     	cmp	w2, #0x3
     d98: 540005cc     	b.gt	0xe50 <nav_event_input+0xd8>
     d9c: 54000701     	b.ne	0xe7c <nav_event_input+0x104>
     da0: 52800cf3     	mov	w19, #0x67              // =103
     da4: 14000005     	b	0xdb8 <nav_event_input+0x40>
     da8: 71001c5f     	cmp	w2, #0x7
     dac: 5400038c     	b.gt	0xe1c <nav_event_input+0xa4>
     db0: 54000781     	b.ne	0xea0 <nav_event_input+0x128>
     db4: 52800e53     	mov	w19, #0x72              // =114
     db8: 90000014     	adrp	x20, 0x0 <zte_goodix_pinctrl_select>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x38
     dbc: 52800021     	mov	w1, #0x1                // =1
     dc0: 2a1303e2     	mov	w2, w19
     dc4: f9400280     	ldr	x0, [x20]
		0000000000000dc4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
     dc8: 52800023     	mov	w3, #0x1                // =1
     dcc: 94000000     	bl	0xdcc <nav_event_input+0x54>
		0000000000000dcc:  R_AARCH64_CALL26	input_event
     dd0: f9400280     	ldr	x0, [x20]
		0000000000000dd0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
     dd4: 2a1f03e1     	mov	w1, wzr
     dd8: 2a1f03e2     	mov	w2, wzr
     ddc: 2a1f03e3     	mov	w3, wzr
     de0: 94000000     	bl	0xde0 <nav_event_input+0x68>
		0000000000000de0:  R_AARCH64_CALL26	input_event
     de4: f9400280     	ldr	x0, [x20]
		0000000000000de4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
     de8: 52800021     	mov	w1, #0x1                // =1
     dec: 2a1303e2     	mov	w2, w19
     df0: 2a1f03e3     	mov	w3, wzr
     df4: 94000000     	bl	0xdf4 <nav_event_input+0x7c>
		0000000000000df4:  R_AARCH64_CALL26	input_event
     df8: f9400280     	ldr	x0, [x20]
		0000000000000df8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x38
     dfc: 2a1f03e1     	mov	w1, wzr
     e00: 2a1f03e2     	mov	w2, wzr
     e04: 2a1f03e3     	mov	w3, wzr
     e08: 94000000     	bl	0xe08 <nav_event_input+0x90>
		0000000000000e08:  R_AARCH64_CALL26	input_event
     e0c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e10: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e14: d50323bf     	autiasp
     e18: d65f03c0     	ret
     e1c: 7100205f     	cmp	w2, #0x8
     e20: 540006e0     	b.eq	0xefc <nav_event_input+0x184>
     e24: 7100245f     	cmp	w2, #0x9
     e28: 540004e0     	b.eq	0xec4 <nav_event_input+0x14c>
     e2c: 7100285f     	cmp	w2, #0xa
     e30: 54000741     	b.ne	0xf18 <nav_event_input+0x1a0>
     e34: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x584
     e38: 91000000     	add	x0, x0, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x584
     e3c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     e40: 91000021     	add	x1, x1, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     e44: 94000000     	bl	0xe44 <nav_event_input+0xcc>
		0000000000000e44:  R_AARCH64_CALL26	_printk
     e48: 52800e73     	mov	w19, #0x73              // =115
     e4c: 17ffffdb     	b	0xdb8 <nav_event_input+0x40>
     e50: 7100105f     	cmp	w2, #0x4
     e54: 54000460     	b.eq	0xee0 <nav_event_input+0x168>
     e58: 7100145f     	cmp	w2, #0x5
     e5c: 540005e1     	b.ne	0xf18 <nav_event_input+0x1a0>
     e60: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdaa
     e64: 91000000     	add	x0, x0, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdaa
     e68: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     e6c: 91000021     	add	x1, x1, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     e70: 94000000     	bl	0xe70 <nav_event_input+0xf8>
		0000000000000e70:  R_AARCH64_CALL26	_printk
     e74: 52800d33     	mov	w19, #0x69              // =105
     e78: 17ffffd0     	b	0xdb8 <nav_event_input+0x40>
     e7c: 51000448     	sub	w8, w2, #0x1
     e80: 7100091f     	cmp	w8, #0x2
     e84: 540004a2     	b.hs	0xf18 <nav_event_input+0x1a0>
     e88: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78a
     e8c: 91000000     	add	x0, x0, #0x0
		0000000000000e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78a
     e90: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     e94: 91000021     	add	x1, x1, #0x0
		0000000000000e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     e98: 94000000     	bl	0xe98 <nav_event_input+0x120>
		0000000000000e98:  R_AARCH64_CALL26	_printk
     e9c: 17ffffdc     	b	0xe0c <nav_event_input+0x94>
     ea0: 7100185f     	cmp	w2, #0x6
     ea4: 540003a1     	b.ne	0xf18 <nav_event_input+0x1a0>
     ea8: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x211
     eac: 91000000     	add	x0, x0, #0x0
		0000000000000eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x211
     eb0: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     eb4: 91000021     	add	x1, x1, #0x0
		0000000000000eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     eb8: 94000000     	bl	0xeb8 <nav_event_input+0x140>
		0000000000000eb8:  R_AARCH64_CALL26	_printk
     ebc: 52800d53     	mov	w19, #0x6a              // =106
     ec0: 17ffffbe     	b	0xdb8 <nav_event_input+0x40>
     ec4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81b
     ec8: 91000000     	add	x0, x0, #0x0
		0000000000000ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81b
     ecc: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     ed0: 91000021     	add	x1, x1, #0x0
		0000000000000ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     ed4: 94000000     	bl	0xed4 <nav_event_input+0x15c>
		0000000000000ed4:  R_AARCH64_CALL26	_printk
     ed8: 528048f3     	mov	w19, #0x247             // =583
     edc: 17ffffb7     	b	0xdb8 <nav_event_input+0x40>
     ee0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x241
     ee4: 91000000     	add	x0, x0, #0x0
		0000000000000ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x241
     ee8: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     eec: 91000021     	add	x1, x1, #0x0
		0000000000000eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     ef0: 94000000     	bl	0xef0 <nav_event_input+0x178>
		0000000000000ef0:  R_AARCH64_CALL26	_printk
     ef4: 52800d93     	mov	w19, #0x6c              // =108
     ef8: 17ffffb0     	b	0xdb8 <nav_event_input+0x40>
     efc: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bd
     f00: 91000000     	add	x0, x0, #0x0
		0000000000000f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bd
     f04: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     f08: 91000021     	add	x1, x1, #0x0
		0000000000000f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     f0c: 94000000     	bl	0xf0c <nav_event_input+0x194>
		0000000000000f0c:  R_AARCH64_CALL26	_printk
     f10: 52801b13     	mov	w19, #0xd8              // =216
     f14: 17ffffa9     	b	0xdb8 <nav_event_input+0x40>
     f18: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
     f1c: 91000000     	add	x0, x0, #0x0
		0000000000000f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
     f20: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     f24: 91000021     	add	x1, x1, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     f28: 94000000     	bl	0xf28 <nav_event_input+0x1b0>
		0000000000000f28:  R_AARCH64_CALL26	_printk
     f2c: 2a1f03f3     	mov	w19, wzr
     f30: 17ffffa2     	b	0xdb8 <nav_event_input+0x40>
