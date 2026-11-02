
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a07c <syna_dev_set_sensibility_level>:
    a07c: d503233f     	paciasp
    a080: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a084: f9000bf5     	str	x21, [sp, #0x10]
    a088: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a08c: 910003fd     	mov	x29, sp
    a090: 2a0103f5     	mov	w21, w1
    a094: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d38
    a098: 91000021     	add	x1, x1, #0x0
		000000000000a098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d38
    a09c: 2a0203f3     	mov	w19, w2
    a0a0: aa0003f4     	mov	x20, x0
    a0a4: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a0a4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A85B
    a0a8: 91000000     	add	x0, x0, #0x0
		000000000000a0a8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A85B
    a0ac: aa0103e2     	mov	x2, x1
    a0b0: 94000000     	bl	0xa0b0 <syna_dev_set_sensibility_level+0x34>
		000000000000a0b0:  R_AARCH64_CALL26	_printk
    a0b4: b4000274     	cbz	x20, 0xa100 <syna_dev_set_sensibility_level+0x84>
    a0b8: 710006bf     	cmp	w21, #0x1
    a0bc: 5400026c     	b.gt	0xa108 <syna_dev_set_sensibility_level+0x8c>
    a0c0: 340004b5     	cbz	w21, 0xa154 <syna_dev_set_sensibility_level+0xd8>
    a0c4: 710006bf     	cmp	w21, #0x1
    a0c8: 54000921     	b.ne	0xa1ec <syna_dev_set_sensibility_level+0x170>
    a0cc: b9460688     	ldr	w8, [x20, #0x604]
    a0d0: b9460289     	ldr	w9, [x20, #0x600]
    a0d4: 52801f21     	mov	w1, #0xf9               // =249
    a0d8: f9400280     	ldr	x0, [x20]
    a0dc: 2a1303e3     	mov	w3, w19
    a0e0: 53185d08     	lsl	w8, w8, #8
    a0e4: 2a091108     	orr	w8, w8, w9, lsl #4
    a0e8: 32000102     	orr	w2, w8, #0x1
    a0ec: 94000000     	bl	0xa0ec <syna_dev_set_sensibility_level+0x70>
		000000000000a0ec:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a0f0: 37f808c0     	tbnz	w0, #0x1f, 0xa208 <syna_dev_set_sensibility_level+0x18c>
    a0f4: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a0f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_38158
    a0f8: 91000000     	add	x0, x0, #0x0
		000000000000a0f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_38158
    a0fc: 1400003e     	b	0xa1f4 <syna_dev_set_sensibility_level+0x178>
    a100: 128002a0     	mov	w0, #-0x16              // =-22
    a104: 14000041     	b	0xa208 <syna_dev_set_sensibility_level+0x18c>
    a108: 710012bf     	cmp	w21, #0x4
    a10c: 540003c0     	b.eq	0xa184 <syna_dev_set_sensibility_level+0x108>
    a110: 71000ebf     	cmp	w21, #0x3
    a114: 54000520     	b.eq	0xa1b8 <syna_dev_set_sensibility_level+0x13c>
    a118: 71000abf     	cmp	w21, #0x2
    a11c: 54000681     	b.ne	0xa1ec <syna_dev_set_sensibility_level+0x170>
    a120: b9460688     	ldr	w8, [x20, #0x604]
    a124: b9460289     	ldr	w9, [x20, #0x600]
    a128: 52801f21     	mov	w1, #0xf9               // =249
    a12c: f9400280     	ldr	x0, [x20]
    a130: 2a1303e3     	mov	w3, w19
    a134: 53185d08     	lsl	w8, w8, #8
    a138: 2a091108     	orr	w8, w8, w9, lsl #4
    a13c: 321f0102     	orr	w2, w8, #0x2
    a140: 94000000     	bl	0xa140 <syna_dev_set_sensibility_level+0xc4>
		000000000000a140:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a144: 37f80620     	tbnz	w0, #0x1f, 0xa208 <syna_dev_set_sensibility_level+0x18c>
    a148: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a148:  R_AARCH64_ADR_PREL_PG_HI21	unk_32E7C
    a14c: 91000000     	add	x0, x0, #0x0
		000000000000a14c:  R_AARCH64_ADD_ABS_LO12_NC	unk_32E7C
    a150: 14000029     	b	0xa1f4 <syna_dev_set_sensibility_level+0x178>
    a154: b9460688     	ldr	w8, [x20, #0x604]
    a158: b9460289     	ldr	w9, [x20, #0x600]
    a15c: 52801f21     	mov	w1, #0xf9               // =249
    a160: f9400280     	ldr	x0, [x20]
    a164: 2a1303e3     	mov	w3, w19
    a168: 53185d08     	lsl	w8, w8, #8
    a16c: 2a091102     	orr	w2, w8, w9, lsl #4
    a170: 94000000     	bl	0xa170 <syna_dev_set_sensibility_level+0xf4>
		000000000000a170:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a174: 37f804a0     	tbnz	w0, #0x1f, 0xa208 <syna_dev_set_sensibility_level+0x18c>
    a178: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a178:  R_AARCH64_ADR_PREL_PG_HI21	unk_33BBE
    a17c: 91000000     	add	x0, x0, #0x0
		000000000000a17c:  R_AARCH64_ADD_ABS_LO12_NC	unk_33BBE
    a180: 1400001d     	b	0xa1f4 <syna_dev_set_sensibility_level+0x178>
    a184: b9460688     	ldr	w8, [x20, #0x604]
    a188: b9460289     	ldr	w9, [x20, #0x600]
    a18c: 52801f21     	mov	w1, #0xf9               // =249
    a190: f9400280     	ldr	x0, [x20]
    a194: 2a1303e3     	mov	w3, w19
    a198: 53185d08     	lsl	w8, w8, #8
    a19c: 2a091108     	orr	w8, w8, w9, lsl #4
    a1a0: 321e0102     	orr	w2, w8, #0x4
    a1a4: 94000000     	bl	0xa1a4 <syna_dev_set_sensibility_level+0x128>
		000000000000a1a4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a1a8: 37f80300     	tbnz	w0, #0x1f, 0xa208 <syna_dev_set_sensibility_level+0x18c>
    a1ac: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a1ac:  R_AARCH64_ADR_PREL_PG_HI21	unk_359E9
    a1b0: 91000000     	add	x0, x0, #0x0
		000000000000a1b0:  R_AARCH64_ADD_ABS_LO12_NC	unk_359E9
    a1b4: 14000010     	b	0xa1f4 <syna_dev_set_sensibility_level+0x178>
    a1b8: b9460688     	ldr	w8, [x20, #0x604]
    a1bc: b9460289     	ldr	w9, [x20, #0x600]
    a1c0: 52801f21     	mov	w1, #0xf9               // =249
    a1c4: f9400280     	ldr	x0, [x20]
    a1c8: 2a1303e3     	mov	w3, w19
    a1cc: 53185d08     	lsl	w8, w8, #8
    a1d0: 2a091108     	orr	w8, w8, w9, lsl #4
    a1d4: 32000502     	orr	w2, w8, #0x3
    a1d8: 94000000     	bl	0xa1d8 <syna_dev_set_sensibility_level+0x15c>
		000000000000a1d8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a1dc: 37f80160     	tbnz	w0, #0x1f, 0xa208 <syna_dev_set_sensibility_level+0x18c>
    a1e0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a1e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_32EAC
    a1e4: 91000000     	add	x0, x0, #0x0
		000000000000a1e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_32EAC
    a1e8: 14000003     	b	0xa1f4 <syna_dev_set_sensibility_level+0x178>
    a1ec: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a1ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BDBF
    a1f0: 91000000     	add	x0, x0, #0x0
		000000000000a1f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BDBF
    a1f4: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d38
    a1f8: 91000021     	add	x1, x1, #0x0
		000000000000a1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d38
    a1fc: aa0103e2     	mov	x2, x1
    a200: 94000000     	bl	0xa200 <syna_dev_set_sensibility_level+0x184>
		000000000000a200:  R_AARCH64_CALL26	_printk
    a204: 2a1f03e0     	mov	w0, wzr
    a208: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a20c: f9400bf5     	ldr	x21, [sp, #0x10]
    a210: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a214: d50323bf     	autiasp
    a218: d65f03c0     	ret
