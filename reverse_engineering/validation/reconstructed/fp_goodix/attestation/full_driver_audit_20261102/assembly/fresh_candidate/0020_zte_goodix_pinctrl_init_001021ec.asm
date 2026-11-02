
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001290 <zte_goodix_pinctrl_init>:
    1290: d503233f     	paciasp
    1294: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1298: a9014ff4     	stp	x20, x19, [sp, #0x10]
    129c: 910003fd     	mov	x29, sp
    12a0: aa0003f3     	mov	x19, x0
    12a4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000012a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x802
    12a8: 91000000     	add	x0, x0, #0x0
		00000000000012a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x802
    12ac: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000012ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10d8
    12b0: 91000021     	add	x1, x1, #0x0
		00000000000012b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10d8
    12b4: 94000000     	bl	0x12b4 <zte_goodix_pinctrl_init+0x24>
		00000000000012b4:  R_AARCH64_CALL26	_printk
    12b8: f9400e68     	ldr	x8, [x19, #0x18]
    12bc: 91004100     	add	x0, x8, #0x10
    12c0: 94000000     	bl	0x12c0 <zte_goodix_pinctrl_init+0x30>
		00000000000012c0:  R_AARCH64_CALL26	devm_pinctrl_get
    12c4: aa1303f4     	mov	x20, x19
    12c8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000012c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e
    12cc: 91000021     	add	x1, x1, #0x0
		00000000000012cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e
    12d0: f8080e80     	str	x0, [x20, #0x80]!
    12d4: b40003a0     	cbz	x0, 0x1348 <zte_goodix_pinctrl_init+0xb8>
    12d8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    12dc: 54000368     	b.hi	0x1348 <zte_goodix_pinctrl_init+0xb8>
    12e0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000012e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    12e4: 91000021     	add	x1, x1, #0x0
		00000000000012e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    12e8: 94000000     	bl	0x12e8 <zte_goodix_pinctrl_init+0x58>
		00000000000012e8:  R_AARCH64_CALL26	pinctrl_lookup_state
    12ec: aa1303f4     	mov	x20, x19
    12f0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcc4
    12f4: 91000021     	add	x1, x1, #0x0
		00000000000012f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcc4
    12f8: f8088e80     	str	x0, [x20, #0x88]!
    12fc: b4000260     	cbz	x0, 0x1348 <zte_goodix_pinctrl_init+0xb8>
    1300: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1304: 54000228     	b.hi	0x1348 <zte_goodix_pinctrl_init+0xb8>
    1308: f9404260     	ldr	x0, [x19, #0x80]
    130c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    1310: 91000021     	add	x1, x1, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1314: 94000000     	bl	0x1314 <zte_goodix_pinctrl_init+0x84>
		0000000000001314:  R_AARCH64_CALL26	pinctrl_lookup_state
    1318: aa1303f4     	mov	x20, x19
    131c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x256
    1320: 91000021     	add	x1, x1, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x256
    1324: f8090e80     	str	x0, [x20, #0x90]!
    1328: b4000100     	cbz	x0, 0x1348 <zte_goodix_pinctrl_init+0xb8>
    132c: b13ffc1f     	cmn	x0, #0xfff
    1330: 540000c2     	b.hs	0x1348 <zte_goodix_pinctrl_init+0xb8>
    1334: 2a1f03e0     	mov	w0, wzr
    1338: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    133c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1340: d50323bf     	autiasp
    1344: d65f03c0     	ret
    1348: f9400e68     	ldr	x8, [x19, #0x18]
    134c: 91004100     	add	x0, x8, #0x10
    1350: 94000000     	bl	0x1350 <zte_goodix_pinctrl_init+0xc0>
		0000000000001350:  R_AARCH64_CALL26	_dev_err
    1354: b9400280     	ldr	w0, [x20]
    1358: f900427f     	str	xzr, [x19, #0x80]
    135c: 17fffff7     	b	0x1338 <zte_goodix_pinctrl_init+0xa8>
