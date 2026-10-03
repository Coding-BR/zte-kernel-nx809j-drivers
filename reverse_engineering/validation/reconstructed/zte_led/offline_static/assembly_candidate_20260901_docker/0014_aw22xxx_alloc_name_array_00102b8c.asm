
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001084 <aw22xxx_alloc_name_array>:
    1084: d503233f     	paciasp
    1088: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    108c: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1090: a90257f6     	stp	x22, x21, [sp, #0x20]
    1094: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1098: 910003fd     	mov	x29, sp
    109c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000109c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    10a0: 91000000     	add	x0, x0, #0x0
		00000000000010a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    10a4: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000010a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1799
    10a8: 91000021     	add	x1, x1, #0x0
		00000000000010a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1799
    10ac: 94000000     	bl	0x10ac <aw22xxx_alloc_name_array+0x28>
		00000000000010ac:  R_AARCH64_CALL26	_printk
    10b0: d503201f     	nop
    10b4: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000010b4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    10b8: 52819801     	mov	w1, #0xcc0              // =3264
    10bc: 52800b02     	mov	w2, #0x58               // =88
    10c0: f9400100     	ldr	x0, [x8]
		00000000000010c0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    10c4: 94000000     	bl	0x10c4 <aw22xxx_alloc_name_array+0x40>
		00000000000010c4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    10c8: 90000013     	adrp	x19, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000010c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
    10cc: f9000260     	str	x0, [x19]
		00000000000010cc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    10d0: b4000500     	cbz	x0, 0x1170 <aw22xxx_alloc_name_array+0xec>
    10d4: aa1f03f4     	mov	x20, xzr
    10d8: 90000015     	adrp	x21, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000010d8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
    10dc: 90000017     	adrp	x23, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000010dc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    10e0: 910002f7     	add	x23, x23, #0x0
		00000000000010e0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    10e4: d5384116     	mrs	x22, SP_EL0
    10e8: d503201f     	nop
    10ec: f94002a0     	ldr	x0, [x21]
		00000000000010ec:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    10f0: 52819801     	mov	w1, #0xcc0              // =3264
    10f4: 52800802     	mov	w2, #0x40               // =64
    10f8: 94000000     	bl	0x10f8 <aw22xxx_alloc_name_array+0x74>
		00000000000010f8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    10fc: aa0003e8     	mov	x8, x0
    1100: f9400260     	ldr	x0, [x19]
		0000000000001100:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1104: f8347808     	str	x8, [x0, x20, lsl #3]
    1108: b40001c8     	cbz	x8, 0x1140 <aw22xxx_alloc_name_array+0xbc>
    110c: 91000694     	add	x20, x20, #0x1
    1110: f1002e9f     	cmp	x20, #0xb
    1114: 54fffea1     	b.ne	0x10e8 <aw22xxx_alloc_name_array+0x64>
    1118: 1400001d     	b	0x118c <aw22xxx_alloc_name_array+0x108>
    111c: f94002a0     	ldr	x0, [x21]
		000000000000111c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    1120: f9402ad8     	ldr	x24, [x22, #0x50]
    1124: 52819801     	mov	w1, #0xcc0              // =3264
    1128: 52800802     	mov	w2, #0x40               // =64
    112c: f9002ad7     	str	x23, [x22, #0x50]
    1130: 94000000     	bl	0x1130 <aw22xxx_alloc_name_array+0xac>
		0000000000001130:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1134: aa0003e8     	mov	x8, x0
    1138: f9002ad8     	str	x24, [x22, #0x50]
    113c: 17fffff1     	b	0x1100 <aw22xxx_alloc_name_array+0x7c>
    1140: 34000154     	cbz	w20, 0x1168 <aw22xxx_alloc_name_array+0xe4>
    1144: 91000694     	add	x20, x20, #0x1
    1148: f9400268     	ldr	x8, [x19]
		0000000000001148:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    114c: 51000a89     	sub	w9, w20, #0x2
    1150: f8695900     	ldr	x0, [x8, w9, uxtw #3]
    1154: 94000000     	bl	0x1154 <aw22xxx_alloc_name_array+0xd0>
		0000000000001154:  R_AARCH64_CALL26	kfree
    1158: 51000694     	sub	w20, w20, #0x1
    115c: 7100069f     	cmp	w20, #0x1
    1160: 54ffff4c     	b.gt	0x1148 <aw22xxx_alloc_name_array+0xc4>
    1164: f9400260     	ldr	x0, [x19]
		0000000000001164:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1168: 94000000     	bl	0x1168 <aw22xxx_alloc_name_array+0xe4>
		0000000000001168:  R_AARCH64_CALL26	kfree
    116c: f900027f     	str	xzr, [x19]
		000000000000116c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1170: 12800160     	mov	w0, #-0xc               // =-12
    1174: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1178: a94257f6     	ldp	x22, x21, [sp, #0x20]
    117c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1180: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1184: d50323bf     	autiasp
    1188: d65f03c0     	ret
    118c: 90000009     	adrp	x9, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b09
    1190: 91000129     	add	x9, x9, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b09
    1194: f9400008     	ldr	x8, [x0]
    1198: f940012a     	ldr	x10, [x9]
    119c: f8406129     	ldur	x9, [x9, #0x6]
    11a0: 9000000b     	adrp	x11, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000011a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1683
    11a4: 9100016b     	add	x11, x11, #0x0
		00000000000011a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1683
    11a8: 9000000d     	adrp	x13, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000011a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac3
    11ac: 910001ad     	add	x13, x13, #0x0
		00000000000011ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac3
    11b0: f900010a     	str	x10, [x8]
    11b4: 90000010     	adrp	x16, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000011b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38c
    11b8: 91000210     	add	x16, x16, #0x0
		00000000000011b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38c
    11bc: f940026a     	ldr	x10, [x19]
		00000000000011bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    11c0: f8006109     	stur	x9, [x8, #0x6]
    11c4: f9400168     	ldr	x8, [x11]
    11c8: f840716b     	ldur	x11, [x11, #0x7]
    11cc: a9400211     	ldp	x17, x0, [x16]
    11d0: f9400549     	ldr	x9, [x10, #0x8]
    11d4: f840f210     	ldur	x16, [x16, #0xf]
    11d8: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000011d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1799
    11dc: 91000021     	add	x1, x1, #0x0
		00000000000011dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1799
    11e0: f9000128     	str	x8, [x9]
    11e4: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000011e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37c
    11e8: 91000108     	add	x8, x8, #0x0
		00000000000011e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37c
    11ec: f800712b     	stur	x11, [x9, #0x7]
    11f0: 9000000b     	adrp	x11, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000011f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc1
    11f4: 9100016b     	add	x11, x11, #0x0
		00000000000011f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc1
    11f8: f9400949     	ldr	x9, [x10, #0x10]
    11fc: a940210a     	ldp	x10, x8, [x8]
    1200: a9402d6c     	ldp	x12, x11, [x11]
    1204: a900212a     	stp	x10, x8, [x9]
    1208: 52800dc8     	mov	w8, #0x6e               // =110
    120c: f940026a     	ldr	x10, [x19]
		000000000000120c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1210: f9400d49     	ldr	x9, [x10, #0x18]
    1214: 79002128     	strh	w8, [x9, #0x10]
    1218: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
    121c: 91000108     	add	x8, x8, #0x0
		000000000000121c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
    1220: a9002d2c     	stp	x12, x11, [x9]
    1224: f9400109     	ldr	x9, [x8]
    1228: f8407108     	ldur	x8, [x8, #0x7]
    122c: f940114a     	ldr	x10, [x10, #0x20]
    1230: 9000000b     	adrp	x11, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1818
    1234: 9100016b     	add	x11, x11, #0x0
		0000000000001234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1818
    1238: f840e16c     	ldur	x12, [x11, #0xe]
    123c: f9000149     	str	x9, [x10]
    1240: f9400269     	ldr	x9, [x19]
		0000000000001240:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1244: f8007148     	stur	x8, [x10, #0x7]
    1248: a940296b     	ldp	x11, x10, [x11]
    124c: f9401528     	ldr	x8, [x9, #0x28]
    1250: a900290b     	stp	x11, x10, [x8]
    1254: f800e10c     	stur	x12, [x8, #0xe]
    1258: f9401928     	ldr	x8, [x9, #0x30]
    125c: a94039a9     	ldp	x9, x14, [x13]
    1260: f94009ad     	ldr	x13, [x13, #0x10]
    1264: a9003909     	stp	x9, x14, [x8]
    1268: f940026f     	ldr	x15, [x19]
		0000000000001268:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    126c: f900090d     	str	x13, [x8, #0x10]
    1270: f9401de8     	ldr	x8, [x15, #0x38]
    1274: a9000111     	stp	x17, x0, [x8]
    1278: f800f110     	stur	x16, [x8, #0xf]
    127c: f94021e8     	ldr	x8, [x15, #0x40]
    1280: a900290b     	stp	x11, x10, [x8]
    1284: f940026a     	ldr	x10, [x19]
		0000000000001284:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    1288: f800e10c     	stur	x12, [x8, #0xe]
    128c: f9402548     	ldr	x8, [x10, #0x48]
    1290: a9003909     	stp	x9, x14, [x8]
    1294: f900090d     	str	x13, [x8, #0x10]
    1298: f9402948     	ldr	x8, [x10, #0x50]
    129c: a9000111     	stp	x17, x0, [x8]
    12a0: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000012a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
    12a4: 91000000     	add	x0, x0, #0x0
		00000000000012a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
    12a8: f800f110     	stur	x16, [x8, #0xf]
    12ac: 94000000     	bl	0x12ac <aw22xxx_alloc_name_array+0x228>
		00000000000012ac:  R_AARCH64_CALL26	_printk
    12b0: 2a1f03e0     	mov	w0, wzr
    12b4: 17ffffb0     	b	0x1174 <aw22xxx_alloc_name_array+0xf0>
    12b8: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000012b8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    12bc: d5384113     	mrs	x19, SP_EL0
    12c0: f9402a74     	ldr	x20, [x19, #0x50]
    12c4: f9400100     	ldr	x0, [x8]
		00000000000012c4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    12c8: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000012c8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    12cc: 91000108     	add	x8, x8, #0x0
		00000000000012cc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    12d0: 52819801     	mov	w1, #0xcc0              // =3264
    12d4: 52800b02     	mov	w2, #0x58               // =88
    12d8: f9002a68     	str	x8, [x19, #0x50]
    12dc: 94000000     	bl	0x12dc <aw22xxx_alloc_name_array+0x258>
		00000000000012dc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    12e0: f9002a74     	str	x20, [x19, #0x50]
    12e4: 17ffff79     	b	0x10c8 <aw22xxx_alloc_name_array+0x44>
