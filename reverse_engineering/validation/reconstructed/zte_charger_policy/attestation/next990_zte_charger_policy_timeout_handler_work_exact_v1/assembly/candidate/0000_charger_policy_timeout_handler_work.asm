
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe8 <charger_policy_timeout_handler_work>:
     fe8: d503233f     	paciasp
     fec: d10103ff     	sub	sp, sp, #0x40
     ff0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     ff4: f90013f5     	str	x21, [sp, #0x20]
     ff8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     ffc: 910043fd     	add	x29, sp, #0x10
    1000: d5384108     	mrs	x8, SP_EL0
    1004: aa0003f3     	mov	x19, x0
    1008: 52800020     	mov	w0, #0x1                // =1
    100c: f9438908     	ldr	x8, [x8, #0x710]
    1010: f90007e8     	str	x8, [sp, #0x8]
    1014: 94000000     	bl	0x1014 <charger_policy_timeout_handler_work+0x2c>
		0000000000001014:  R_AARCH64_CALL26	ktime_get_with_offset
    1018: 94000000     	bl	0x1018 <charger_policy_timeout_handler_work+0x30>
		0000000000001018:  R_AARCH64_CALL26	ns_to_timespec64
    101c: 90000008     	adrp	x8, 0x1000 <charger_policy_timeout_handler_work+0x18>
		000000000000101c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    1020: f9400109     	ldr	x9, [x8]
		0000000000001020:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    1024: cb090009     	sub	x9, x0, x9
    1028: f104b53f     	cmp	x9, #0x12d
    102c: 5400004b     	b.lt	0x1034 <charger_policy_timeout_handler_work+0x4c>
    1030: f9000100     	str	x0, [x8]
		0000000000001030:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    1034: f104b13f     	cmp	x9, #0x12c
    1038: f9408a60     	ldr	x0, [x19, #0x110]
    103c: 910013e2     	add	x2, sp, #0x4
    1040: 1a9fd7e8     	cset	w8, gt
    1044: 2a1f03e1     	mov	w1, wzr
    1048: b90007ff     	str	wzr, [sp, #0x4]
    104c: 3905d668     	strb	w8, [x19, #0x175]
    1050: 97fffb0f     	bl	0xfffffffffffffc8c <policy_external_power_changed+0xffffffffffffa9cc>
		0000000000001050:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
    1054: 36f80120     	tbz	w0, #0x1f, 0x1078 <charger_policy_timeout_handler_work+0x90>
    1058: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc7
    105c: 91000000     	add	x0, x0, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc7
    1060: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c
    1064: 91000021     	add	x1, x1, #0x0
		0000000000001064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c
    1068: 94000000     	bl	0x1068 <charger_policy_timeout_handler_work+0x80>
		0000000000001068:  R_AARCH64_CALL26	_printk
    106c: 90000014     	adrp	x20, 0x1000 <charger_policy_timeout_handler_work+0x18>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cbd
    1070: 91000294     	add	x20, x20, #0x0
		0000000000001070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cbd
    1074: 14000011     	b	0x10b8 <charger_policy_timeout_handler_work+0xd0>
    1078: b94007e8     	ldr	w8, [sp, #0x4]
    107c: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		000000000000107c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21df
    1080: 91000000     	add	x0, x0, #0x0
		0000000000001080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21df
    1084: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c
    1088: 91000021     	add	x1, x1, #0x0
		0000000000001088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c
    108c: 7100051f     	cmp	w8, #0x1
    1090: 7a441904     	ccmp	w8, #0x4, #0x4, ne
    1094: 1a9f17f4     	cset	w20, eq
    1098: 2a1403e2     	mov	w2, w20
    109c: 94000000     	bl	0x109c <charger_policy_timeout_handler_work+0xb4>
		000000000000109c:  R_AARCH64_CALL26	_printk
    10a0: 90000008     	adrp	x8, 0x1000 <charger_policy_timeout_handler_work+0x18>
		00000000000010a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cbd
    10a4: 91000108     	add	x8, x8, #0x0
		00000000000010a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cbd
    10a8: 7100029f     	cmp	w20, #0x0
    10ac: 90000009     	adrp	x9, 0x1000 <charger_policy_timeout_handler_work+0x18>
		00000000000010ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c14
    10b0: 91000129     	add	x9, x9, #0x0
		00000000000010b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c14
    10b4: 9a881134     	csel	x20, x9, x8, ne
    10b8: b9414668     	ldr	w8, [x19, #0x144]
    10bc: b9414a69     	ldr	w9, [x19, #0x148]
    10c0: 6b09011f     	cmp	w8, w9
    10c4: 540000c0     	b.eq	0x10dc <charger_policy_timeout_handler_work+0xf4>
    10c8: f8560260     	ldur	x0, [x19, #-0xa0]
    10cc: 52800028     	mov	w8, #0x1                // =1
    10d0: 3905d668     	strb	w8, [x19, #0x175]
    10d4: b4000040     	cbz	x0, 0x10dc <charger_policy_timeout_handler_work+0xf4>
    10d8: 94000000     	bl	0x10d8 <charger_policy_timeout_handler_work+0xf0>
		00000000000010d8:  R_AARCH64_CALL26	power_supply_changed
    10dc: 3945d668     	ldrb	w8, [x19, #0x175]
    10e0: 7100051f     	cmp	w8, #0x1
    10e4: 54000740     	b.eq	0x11cc <charger_policy_timeout_handler_work+0x1e4>
    10e8: d102a274     	sub	x20, x19, #0xa8
    10ec: aa1403e0     	mov	x0, x20
    10f0: 94000096     	bl	0x1348 <charger_policy_timeout_handler_work+0x360>
		00000000000010f0:  R_AARCH64_CALL26	.text+0x3a28
    10f4: 36000c00     	tbz	w0, #0x0, 0x1274 <charger_policy_timeout_handler_work+0x28c>
    10f8: 3945c668     	ldrb	w8, [x19, #0x171]
    10fc: 37000088     	tbnz	w8, #0x0, 0x110c <charger_policy_timeout_handler_work+0x124>
    1100: 3945ca68     	ldrb	w8, [x19, #0x172]
    1104: 7100051f     	cmp	w8, #0x1
    1108: 54000ac1     	b.ne	0x1260 <charger_policy_timeout_handler_work+0x278>
    110c: f9408a60     	ldr	x0, [x19, #0x110]
    1110: 910013e2     	add	x2, sp, #0x4
    1114: 52800681     	mov	w1, #0x34               // =52
    1118: b90007ff     	str	wzr, [sp, #0x4]
    111c: 97fffadc     	bl	0xfffffffffffffc8c <policy_external_power_changed+0xffffffffffffa9cc>
		000000000000111c:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
    1120: 37f80740     	tbnz	w0, #0x1f, 0x1208 <charger_policy_timeout_handler_work+0x220>
    1124: 3945c268     	ldrb	w8, [x19, #0x170]
    1128: 7100051f     	cmp	w8, #0x1
    112c: 54000081     	b.ne	0x113c <charger_policy_timeout_handler_work+0x154>
    1130: b94007e2     	ldr	w2, [sp, #0x4]
    1134: 7102585f     	cmp	w2, #0x96
    1138: 540007cd     	b.le	0x1230 <charger_policy_timeout_handler_work+0x248>
    113c: b9414268     	ldr	w8, [x19, #0x140]
    1140: 35000728     	cbnz	w8, 0x1224 <charger_policy_timeout_handler_work+0x23c>
    1144: b9414668     	ldr	w8, [x19, #0x144]
    1148: 7100111f     	cmp	w8, #0x4
    114c: 54000842     	b.hs	0x1254 <charger_policy_timeout_handler_work+0x26c>
    1150: d1020275     	sub	x21, x19, #0x80
    1154: aa1503e0     	mov	x0, x21
    1158: 94000000     	bl	0x1158 <charger_policy_timeout_handler_work+0x170>
		0000000000001158:  R_AARCH64_CALL26	alarm_try_to_cancel
    115c: f940ae68     	ldr	x8, [x19, #0x158]
    1160: 52884809     	mov	w9, #0x4240             // =16960
    1164: aa1503e0     	mov	x0, x21
    1168: 72a001e9     	movk	w9, #0xf, lsl #16
    116c: 9b097d01     	mul	x1, x8, x9
    1170: 94000000     	bl	0x1170 <charger_policy_timeout_handler_work+0x188>
		0000000000001170:  R_AARCH64_CALL26	alarm_start_relative
    1174: f9409e60     	ldr	x0, [x19, #0x138]
    1178: 94000000     	bl	0x1178 <charger_policy_timeout_handler_work+0x190>
		0000000000001178:  R_AARCH64_CALL26	__pm_stay_awake
    117c: b9414668     	ldr	w8, [x19, #0x144]
    1180: 7100111f     	cmp	w8, #0x4
    1184: 54000de2     	b.hs	0x1340 <charger_policy_timeout_handler_work+0x358>
    1188: 52800309     	mov	w9, #0x18               // =24
    118c: 9000000a     	adrp	x10, 0x1000 <charger_policy_timeout_handler_work+0x18>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
    1190: 9100014a     	add	x10, x10, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
    1194: 9ba92908     	umaddl	x8, w8, w9, x10
    1198: f9400908     	ldr	x8, [x8, #0x10]
    119c: b4000128     	cbz	x8, 0x11c0 <charger_policy_timeout_handler_work+0x1d8>
    11a0: aa1403e0     	mov	x0, x20
    11a4: b85fc110     	ldur	w16, [x8, #-0x4]
    11a8: 729e9051     	movk	w17, #0xf482
    11ac: 72bc3531     	movk	w17, #0xe1a9, lsl #16
    11b0: 6b11021f     	cmp	w16, w17
    11b4: 54000040     	b.eq	0x11bc <charger_policy_timeout_handler_work+0x1d4>
    11b8: d4304500     	brk	#0x8228
    11bc: d63f0100     	blr	x8
    11c0: f9409e60     	ldr	x0, [x19, #0x138]
    11c4: 94000000     	bl	0x11c4 <charger_policy_timeout_handler_work+0x1dc>
		00000000000011c4:  R_AARCH64_CALL26	__pm_relax
    11c8: 1400004d     	b	0x12fc <charger_policy_timeout_handler_work+0x314>
    11cc: b9414668     	ldr	w8, [x19, #0x144]
    11d0: 7100111f     	cmp	w8, #0x4
    11d4: 54000b62     	b.hs	0x1340 <charger_policy_timeout_handler_work+0x358>
    11d8: 52800309     	mov	w9, #0x18               // =24
    11dc: 9000000a     	adrp	x10, 0x1000 <charger_policy_timeout_handler_work+0x18>
		00000000000011dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
    11e0: 9100014a     	add	x10, x10, #0x0
		00000000000011e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
    11e4: 9ba92908     	umaddl	x8, w8, w9, x10
    11e8: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		00000000000011e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2349
    11ec: 91000000     	add	x0, x0, #0x0
		00000000000011ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2349
    11f0: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		00000000000011f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x565
    11f4: 91000021     	add	x1, x1, #0x0
		00000000000011f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x565
    11f8: aa1403e3     	mov	x3, x20
    11fc: f9400502     	ldr	x2, [x8, #0x8]
    1200: 94000000     	bl	0x1200 <charger_policy_timeout_handler_work+0x218>
		0000000000001200:  R_AARCH64_CALL26	_printk
    1204: 17ffffb9     	b	0x10e8 <charger_policy_timeout_handler_work+0x100>
    1208: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194b
    120c: 91000000     	add	x0, x0, #0x0
		000000000000120c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194b
    1210: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa28
    1214: 91000021     	add	x1, x1, #0x0
		0000000000001214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa28
    1218: 94000000     	bl	0x1218 <charger_policy_timeout_handler_work+0x230>
		0000000000001218:  R_AARCH64_CALL26	_printk
    121c: b9414268     	ldr	w8, [x19, #0x140]
    1220: 34fff928     	cbz	w8, 0x1144 <charger_policy_timeout_handler_work+0x15c>
    1224: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b8
    1228: 91000000     	add	x0, x0, #0x0
		0000000000001228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b8
    122c: 1400000f     	b	0x1268 <charger_policy_timeout_handler_work+0x280>
    1230: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fc2
    1234: 91000000     	add	x0, x0, #0x0
		0000000000001234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fc2
    1238: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa28
    123c: 91000021     	add	x1, x1, #0x0
		000000000000123c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa28
    1240: 528012c3     	mov	w3, #0x96               // =150
    1244: 94000000     	bl	0x1244 <charger_policy_timeout_handler_work+0x25c>
		0000000000001244:  R_AARCH64_CALL26	_printk
    1248: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1294
    124c: 91000000     	add	x0, x0, #0x0
		000000000000124c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1294
    1250: 14000006     	b	0x1268 <charger_policy_timeout_handler_work+0x280>
    1254: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17df
    1258: 91000000     	add	x0, x0, #0x0
		0000000000001258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17df
    125c: 14000003     	b	0x1268 <charger_policy_timeout_handler_work+0x280>
    1260: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a95
    1264: 91000000     	add	x0, x0, #0x0
		0000000000001264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a95
    1268: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1d
    126c: 91000021     	add	x1, x1, #0x0
		000000000000126c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1d
    1270: 94000000     	bl	0x1270 <charger_policy_timeout_handler_work+0x288>
		0000000000001270:  R_AARCH64_CALL26	_printk
    1274: b9414668     	ldr	w8, [x19, #0x144]
    1278: 34000228     	cbz	w8, 0x12bc <charger_policy_timeout_handler_work+0x2d4>
    127c: f9409e60     	ldr	x0, [x19, #0x138]
    1280: 94000000     	bl	0x1280 <charger_policy_timeout_handler_work+0x298>
		0000000000001280:  R_AARCH64_CALL26	__pm_stay_awake
    1284: aa1403e0     	mov	x0, x20
    1288: 52800021     	mov	w1, #0x1                // =1
    128c: 52800022     	mov	w2, #0x1                // =1
    1290: 97fffb0b     	bl	0xfffffffffffffebc <policy_external_power_changed+0xffffffffffffabfc>
		0000000000001290:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1294: 91051268     	add	x8, x19, #0x144
    1298: aa1403e0     	mov	x0, x20
    129c: 2a1f03e1     	mov	w1, wzr
    12a0: 3905ce7f     	strb	wzr, [x19, #0x173]
    12a4: f900b27f     	str	xzr, [x19, #0x160]
    12a8: f900011f     	str	xzr, [x8]
    12ac: 97fffab9     	bl	0xfffffffffffffd90 <policy_external_power_changed+0xffffffffffffaad0>
		00000000000012ac:  R_AARCH64_CALL26	charger_policy_disable_cas
    12b0: f9409e60     	ldr	x0, [x19, #0x138]
    12b4: 94000000     	bl	0x12b4 <charger_policy_timeout_handler_work+0x2cc>
		00000000000012b4:  R_AARCH64_CALL26	__pm_relax
    12b8: 1400000c     	b	0x12e8 <charger_policy_timeout_handler_work+0x300>
    12bc: aa1403e0     	mov	x0, x20
    12c0: 52800021     	mov	w1, #0x1                // =1
    12c4: 52800022     	mov	w2, #0x1                // =1
    12c8: 97fffafd     	bl	0xfffffffffffffebc <policy_external_power_changed+0xffffffffffffabfc>
		00000000000012c8:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    12cc: 91051268     	add	x8, x19, #0x144
    12d0: aa1403e0     	mov	x0, x20
    12d4: 2a1f03e1     	mov	w1, wzr
    12d8: 3905ce7f     	strb	wzr, [x19, #0x173]
    12dc: f900b27f     	str	xzr, [x19, #0x160]
    12e0: f900011f     	str	xzr, [x8]
    12e4: 97fffaab     	bl	0xfffffffffffffd90 <policy_external_power_changed+0xffffffffffffaad0>
		00000000000012e4:  R_AARCH64_CALL26	charger_policy_disable_cas
    12e8: d1020260     	sub	x0, x19, #0x80
    12ec: 94000000     	bl	0x12ec <charger_policy_timeout_handler_work+0x304>
		00000000000012ec:  R_AARCH64_CALL26	alarm_try_to_cancel
    12f0: 3945d668     	ldrb	w8, [x19, #0x175]
    12f4: 7100051f     	cmp	w8, #0x1
    12f8: 54000180     	b.eq	0x1328 <charger_policy_timeout_handler_work+0x340>
    12fc: d5384108     	mrs	x8, SP_EL0
    1300: f9438908     	ldr	x8, [x8, #0x710]
    1304: f94007e9     	ldr	x9, [sp, #0x8]
    1308: eb09011f     	cmp	x8, x9
    130c: 540001c1     	b.ne	0x1344 <charger_policy_timeout_handler_work+0x35c>
    1310: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1314: f94013f5     	ldr	x21, [sp, #0x20]
    1318: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    131c: 910103ff     	add	sp, sp, #0x40
    1320: d50323bf     	autiasp
    1324: d65f03c0     	ret
    1328: 90000000     	adrp	x0, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2209
    132c: 91000000     	add	x0, x0, #0x0
		000000000000132c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2209
    1330: 90000001     	adrp	x1, 0x1000 <charger_policy_timeout_handler_work+0x18>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100
    1334: 91000021     	add	x1, x1, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100
    1338: 94000000     	bl	0x1338 <charger_policy_timeout_handler_work+0x350>
		0000000000001338:  R_AARCH64_CALL26	_printk
    133c: 17fffff0     	b	0x12fc <charger_policy_timeout_handler_work+0x314>
    1340: d42aa240     	brk	#0x5512
    1344: 94000000     	bl	0x1344 <charger_policy_timeout_handler_work+0x35c>
		0000000000001344:  R_AARCH64_CALL26	__stack_chk_fail
