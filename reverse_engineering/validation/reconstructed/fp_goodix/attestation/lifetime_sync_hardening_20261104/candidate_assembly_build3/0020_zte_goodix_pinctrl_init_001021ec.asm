
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000128c <zte_goodix_pinctrl_init>:
    128c: d503233f     	paciasp
    1290: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1294: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1298: 910003fd     	mov	x29, sp
    129c: aa0003f3     	mov	x19, x0
    12a0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000012a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x802
    12a4: 91000000     	add	x0, x0, #0x0
		00000000000012a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x802
    12a8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000012a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10d8
    12ac: 91000021     	add	x1, x1, #0x0
		00000000000012ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10d8
    12b0: 94000000     	bl	0x12b0 <zte_goodix_pinctrl_init+0x24>
		00000000000012b0:  R_AARCH64_CALL26	_printk
    12b4: f9400e68     	ldr	x8, [x19, #0x18]
    12b8: 91004100     	add	x0, x8, #0x10
    12bc: 94000000     	bl	0x12bc <zte_goodix_pinctrl_init+0x30>
		00000000000012bc:  R_AARCH64_CALL26	devm_pinctrl_get
    12c0: aa1303f4     	mov	x20, x19
    12c4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000012c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e
    12c8: 91000021     	add	x1, x1, #0x0
		00000000000012c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e
    12cc: f8080e80     	str	x0, [x20, #0x80]!
    12d0: b40003a0     	cbz	x0, 0x1344 <zte_goodix_pinctrl_init+0xb8>
    12d4: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    12d8: 54000368     	b.hi	0x1344 <zte_goodix_pinctrl_init+0xb8>
    12dc: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000012dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    12e0: 91000021     	add	x1, x1, #0x0
		00000000000012e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    12e4: 94000000     	bl	0x12e4 <zte_goodix_pinctrl_init+0x58>
		00000000000012e4:  R_AARCH64_CALL26	pinctrl_lookup_state
    12e8: aa1303f4     	mov	x20, x19
    12ec: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000012ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc4
    12f0: 91000021     	add	x1, x1, #0x0
		00000000000012f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc4
    12f4: f8088e80     	str	x0, [x20, #0x88]!
    12f8: b4000260     	cbz	x0, 0x1344 <zte_goodix_pinctrl_init+0xb8>
    12fc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1300: 54000228     	b.hi	0x1344 <zte_goodix_pinctrl_init+0xb8>
    1304: f9404260     	ldr	x0, [x19, #0x80]
    1308: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    130c: 91000021     	add	x1, x1, #0x0
		000000000000130c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1310: 94000000     	bl	0x1310 <zte_goodix_pinctrl_init+0x84>
		0000000000001310:  R_AARCH64_CALL26	pinctrl_lookup_state
    1314: aa1303f4     	mov	x20, x19
    1318: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x256
    131c: 91000021     	add	x1, x1, #0x0
		000000000000131c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x256
    1320: f8090e80     	str	x0, [x20, #0x90]!
    1324: b4000100     	cbz	x0, 0x1344 <zte_goodix_pinctrl_init+0xb8>
    1328: b13ffc1f     	cmn	x0, #0xfff
    132c: 540000c2     	b.hs	0x1344 <zte_goodix_pinctrl_init+0xb8>
    1330: 2a1f03e0     	mov	w0, wzr
    1334: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1338: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    133c: d50323bf     	autiasp
    1340: d65f03c0     	ret
    1344: f9400e68     	ldr	x8, [x19, #0x18]
    1348: 91004100     	add	x0, x8, #0x10
    134c: 94000000     	bl	0x134c <zte_goodix_pinctrl_init+0xc0>
		000000000000134c:  R_AARCH64_CALL26	_dev_err
    1350: b9400280     	ldr	w0, [x20]
    1354: f900427f     	str	xzr, [x19, #0x80]
    1358: 17fffff7     	b	0x1334 <zte_goodix_pinctrl_init+0xa8>
