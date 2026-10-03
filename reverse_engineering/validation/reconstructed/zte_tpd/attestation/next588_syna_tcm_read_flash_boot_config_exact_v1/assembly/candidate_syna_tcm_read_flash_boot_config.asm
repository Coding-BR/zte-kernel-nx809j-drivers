
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000108c <syna_tcm_read_flash_boot_config>:
    108c: d503233f     	paciasp
    1090: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1094: f9000bf7     	str	x23, [sp, #0x10]
    1098: a90257f6     	stp	x22, x21, [sp, #0x20]
    109c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    10a0: 910003fd     	mov	x29, sp
    10a4: b5000081     	cbnz	x1, 0x10b4 <syna_tcm_read_flash_boot_config+0x28>
    10a8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000010a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
    10ac: 91000000     	add	x0, x0, #0x0
		00000000000010ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
    10b0: 14000004     	b	0x10c0 <syna_tcm_read_flash_boot_config+0x34>
    10b4: b50001a2     	cbnz	x2, 0x10e8 <syna_tcm_read_flash_boot_config+0x5c>
    10b8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000010b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ce6
    10bc: 91000000     	add	x0, x0, #0x0
		00000000000010bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ce6
    10c0: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000010c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e6a
    10c4: 91000021     	add	x1, x1, #0x0
		00000000000010c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e6a
    10c8: 94000000     	bl	0x10c8 <syna_tcm_read_flash_boot_config+0x3c>
		00000000000010c8:  R_AARCH64_CALL26	_printk
    10cc: 12801e00     	mov	w0, #-0xf1              // =-241
    10d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    10d4: f9400bf7     	ldr	x23, [sp, #0x10]
    10d8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    10dc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    10e0: d50323bf     	autiasp
    10e4: d65f03c0     	ret
    10e8: 39402408     	ldrb	w8, [x0, #0x9]
    10ec: 7100051f     	cmp	w8, #0x1
    10f0: 540000e1     	b.ne	0x110c <syna_tcm_read_flash_boot_config+0x80>
    10f4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000010f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1004
    10f8: 91000000     	add	x0, x0, #0x0
		00000000000010f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1004
    10fc: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000010fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e6a
    1100: 91000021     	add	x1, x1, #0x0
		0000000000001100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e6a
    1104: 52800022     	mov	w2, #0x1                // =1
    1108: 14000050     	b	0x1248 <syna_tcm_read_flash_boot_config+0x1bc>
    110c: f9401029     	ldr	x9, [x1, #0x20]
    1110: 39400128     	ldrb	w8, [x9]
    1114: 7100051f     	cmp	w8, #0x1
    1118: 54000100     	b.eq	0x1138 <syna_tcm_read_flash_boot_config+0xac>
    111c: 71000d1f     	cmp	w8, #0x3
    1120: 540008a1     	b.ne	0x1234 <syna_tcm_read_flash_boot_config+0x1a8>
    1124: 52800268     	mov	w8, #0x13               // =19
    1128: 5280024a     	mov	w10, #0x12              // =18
    112c: 5280022b     	mov	w11, #0x11              // =17
    1130: 5280020c     	mov	w12, #0x10              // =16
    1134: 14000005     	b	0x1148 <syna_tcm_read_flash_boot_config+0xbc>
    1138: 528001e8     	mov	w8, #0xf                // =15
    113c: 528001ca     	mov	w10, #0xe               // =14
    1140: 528001ab     	mov	w11, #0xd               // =13
    1144: 5280018c     	mov	w12, #0xc               // =12
    1148: 386c692c     	ldrb	w12, [x9, x12]
    114c: 386b692b     	ldrb	w11, [x9, x11]
    1150: 2a0b218c     	orr	w12, w12, w11, lsl #8
    1154: b9402c2b     	ldr	w11, [x1, #0x2c]
    1158: 1b0c7d74     	mul	w20, w11, w12
    115c: 34000674     	cbz	w20, 0x1228 <syna_tcm_read_flash_boot_config+0x19c>
    1160: 386a692a     	ldrb	w10, [x9, x10]
    1164: 38686928     	ldrb	w8, [x9, x8]
    1168: 2a082144     	orr	w4, w10, w8, lsl #8
    116c: 1b047d73     	mul	w19, w11, w4
    1170: 340005d3     	cbz	w19, 0x1228 <syna_tcm_read_flash_boot_config+0x19c>
    1174: b9403828     	ldr	w8, [x1, #0x38]
    1178: 6b14011f     	cmp	w8, w20
    117c: 54000040     	b.eq	0x1184 <syna_tcm_read_flash_boot_config+0xf8>
    1180: b9003834     	str	w20, [x1, #0x38]
    1184: b9403428     	ldr	w8, [x1, #0x34]
    1188: aa0003f6     	mov	x22, x0
    118c: 2a0303f5     	mov	w21, w3
    1190: aa0203f7     	mov	x23, x2
    1194: 6b04011f     	cmp	w8, w4
    1198: 54000040     	b.eq	0x11a0 <syna_tcm_read_flash_boot_config+0x114>
    119c: b9003424     	str	w4, [x1, #0x34]
    11a0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000011a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d8
    11a4: 91000000     	add	x0, x0, #0x0
		00000000000011a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d8
    11a8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000011a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e6a
    11ac: 91000021     	add	x1, x1, #0x0
		00000000000011ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e6a
    11b0: 2a1403e2     	mov	w2, w20
    11b4: 2a1403e3     	mov	w3, w20
    11b8: 2a1303e5     	mov	w5, w19
    11bc: 94000000     	bl	0x11bc <syna_tcm_read_flash_boot_config+0x130>
		00000000000011bc:  R_AARCH64_CALL26	_printk
    11c0: b9400ae8     	ldr	w8, [x23, #0x8]
    11c4: f94002e0     	ldr	x0, [x23]
    11c8: 6b13011f     	cmp	w8, w19
    11cc: 54000142     	b.hs	0x11f4 <syna_tcm_read_flash_boot_config+0x168>
    11d0: b4000040     	cbz	x0, 0x11d8 <syna_tcm_read_flash_boot_config+0x14c>
    11d4: 94000c3a     	bl	0x42bc <syna_pal_mem_free>
    11d8: 2a1303e0     	mov	w0, w19
    11dc: 94000a8e     	bl	0x3c14 <syna_pal_mem_alloc>
    11e0: aa1703e8     	mov	x8, x23
    11e4: f90002e0     	str	x0, [x23]
    11e8: b40004a0     	cbz	x0, 0x127c <syna_tcm_read_flash_boot_config+0x1f0>
    11ec: b9000913     	str	w19, [x8, #0x8]
    11f0: 2a1303e8     	mov	w8, w19
    11f4: 2a0803e2     	mov	w2, w8
    11f8: 2a1f03e1     	mov	w1, wzr
    11fc: 94000000     	bl	0x11fc <syna_tcm_read_flash_boot_config+0x170>
		00000000000011fc:  R_AARCH64_CALL26	memset
    1200: f94002e2     	ldr	x2, [x23]
    1204: aa1603e0     	mov	x0, x22
    1208: 2a1403e1     	mov	w1, w20
    120c: 2a1303e3     	mov	w3, w19
    1210: 2a1503e4     	mov	w4, w21
    1214: b9000eff     	str	wzr, [x23, #0xc]
    1218: 97fffceb     	bl	0x5c4 <syna_tcm_read_flash>
    121c: 37f801a0     	tbnz	w0, #0x1f, 0x1250 <syna_tcm_read_flash_boot_config+0x1c4>
    1220: b9000ef3     	str	w19, [x23, #0xc]
    1224: 17ffffab     	b	0x10d0 <syna_tcm_read_flash_boot_config+0x44>
    1228: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c64
    122c: 91000000     	add	x0, x0, #0x0
		000000000000122c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c64
    1230: 17ffffa4     	b	0x10c0 <syna_tcm_read_flash_boot_config+0x34>
    1234: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb350
    1238: 91000000     	add	x0, x0, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb350
    123c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000123c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e6a
    1240: 91000021     	add	x1, x1, #0x0
		0000000000001240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e6a
    1244: 2a0803e2     	mov	w2, w8
    1248: 94000000     	bl	0x1248 <syna_tcm_read_flash_boot_config+0x1bc>
		0000000000001248:  R_AARCH64_CALL26	_printk
    124c: 17ffffa0     	b	0x10cc <syna_tcm_read_flash_boot_config+0x40>
    1250: 90000008     	adrp	x8, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1040
    1254: 91000108     	add	x8, x8, #0x0
		0000000000001254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1040
    1258: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e6a
    125c: 91000021     	add	x1, x1, #0x0
		000000000000125c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e6a
    1260: 2a0003f5     	mov	w21, w0
    1264: aa0803e0     	mov	x0, x8
    1268: 2a1403e2     	mov	w2, w20
    126c: 2a1303e3     	mov	w3, w19
    1270: 94000000     	bl	0x1270 <syna_tcm_read_flash_boot_config+0x1e4>
		0000000000001270:  R_AARCH64_CALL26	_printk
    1274: 2a1503e0     	mov	w0, w21
    1278: 17ffff96     	b	0x10d0 <syna_tcm_read_flash_boot_config+0x44>
    127c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000127c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d72
    1280: 91000000     	add	x0, x0, #0x0
		0000000000001280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d72
    1284: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d4
    1288: 91000021     	add	x1, x1, #0x0
		0000000000001288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d4
    128c: 2a1303e2     	mov	w2, w19
    1290: aa0803f4     	mov	x20, x8
    1294: 94000000     	bl	0x1294 <syna_tcm_read_flash_boot_config+0x208>
		0000000000001294:  R_AARCH64_CALL26	_printk
    1298: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2904
    129c: 91000000     	add	x0, x0, #0x0
		000000000000129c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2904
    12a0: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000012a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e6a
    12a4: 91000021     	add	x1, x1, #0x0
		00000000000012a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e6a
    12a8: f900069f     	str	xzr, [x20, #0x8]
    12ac: 94000000     	bl	0x12ac <syna_tcm_read_flash_boot_config+0x220>
		00000000000012ac:  R_AARCH64_CALL26	_printk
    12b0: 12801e40     	mov	w0, #-0xf3              // =-243
    12b4: 17ffff87     	b	0x10d0 <syna_tcm_read_flash_boot_config+0x44>
