
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ea8 <charger_policy_status_rundischging>:
     ea8: d503233f     	paciasp
     eac: d10103ff     	sub	sp, sp, #0x40
     eb0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     eb4: a90257f6     	stp	x22, x21, [sp, #0x20]
     eb8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     ebc: 910043fd     	add	x29, sp, #0x10
     ec0: d5384108     	mrs	x8, SP_EL0
     ec4: aa0003f3     	mov	x19, x0
     ec8: f9438908     	ldr	x8, [x8, #0x710]
     ecc: f90007e8     	str	x8, [sp, #0x8]
     ed0: 39487008     	ldrb	w8, [x0, #0x21c]
     ed4: 7100051f     	cmp	w8, #0x1
     ed8: 54000181     	b.ne	0xf08 <charger_policy_status_rundischging+0x60>
     edc: 52800020     	mov	w0, #0x1                // =1
     ee0: 94000000     	bl	0xee0 <charger_policy_status_rundischging+0x38>
		0000000000000ee0:  R_AARCH64_CALL26	ktime_get_with_offset
     ee4: 94000000     	bl	0xee4 <charger_policy_status_rundischging+0x3c>
		0000000000000ee4:  R_AARCH64_CALL26	ns_to_timespec64
     ee8: 39487668     	ldrb	w8, [x19, #0x21d]
     eec: 7100051f     	cmp	w8, #0x1
     ef0: 54001060     	b.eq	0x10fc <charger_policy_status_rundischging+0x254>
     ef4: f9410668     	ldr	x8, [x19, #0x208]
     ef8: b941fa69     	ldr	w9, [x19, #0x1f8]
     efc: cb080008     	sub	x8, x0, x8
     f00: eb09011f     	cmp	x8, x9
     f04: 5400116c     	b.gt	0x1130 <charger_policy_status_rundischging+0x288>
     f08: f940de60     	ldr	x0, [x19, #0x1b8]
     f0c: 910013e2     	add	x2, sp, #0x4
     f10: 528005e1     	mov	w1, #0x2f               // =47
     f14: b90007ff     	str	wzr, [sp, #0x4]
     f18: 94000000     	bl	0xf18 <charger_policy_status_rundischging+0x70>
		0000000000000f18:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     f1c: 37f80b20     	tbnz	w0, #0x1f, 0x1080 <charger_policy_status_rundischging+0x1d8>
     f20: 39486a68     	ldrb	w8, [x19, #0x21a]
     f24: 7100051f     	cmp	w8, #0x1
     f28: 54000361     	b.ne	0xf94 <charger_policy_status_rundischging+0xec>
     f2c: 39486e68     	ldrb	w8, [x19, #0x21b]
     f30: 7100051f     	cmp	w8, #0x1
     f34: 54000301     	b.ne	0xf94 <charger_policy_status_rundischging+0xec>
     f38: b9419a68     	ldr	w8, [x19, #0x198]
     f3c: 39487269     	ldrb	w9, [x19, #0x21c]
     f40: 2a0803f4     	mov	w20, w8
     f44: 37000069     	tbnz	w9, #0x0, 0xf50 <charger_policy_status_rundischging+0xa8>
     f48: b941aa69     	ldr	w9, [x19, #0x1a8]
     f4c: 0b080134     	add	w20, w9, w8
     f50: b9419e69     	ldr	w9, [x19, #0x19c]
     f54: 0b080128     	add	w8, w9, w8
     f58: 39487669     	ldrb	w9, [x19, #0x21d]
     f5c: 7100011f     	cmp	w8, #0x0
     f60: 1a88a508     	cinc	w8, w8, lt
     f64: 7100053f     	cmp	w9, #0x1
     f68: 13017d15     	asr	w21, w8, #1
     f6c: 54000181     	b.ne	0xf9c <charger_policy_status_rundischging+0xf4>
     f70: b94007e2     	ldr	w2, [sp, #0x4]
     f74: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd8
     f78: 91000000     	add	x0, x0, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd8
     f7c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
     f80: 91000021     	add	x1, x1, #0x0
		0000000000000f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
     f84: 2a1403e3     	mov	w3, w20
     f88: 2a1503e4     	mov	w4, w21
     f8c: 94000000     	bl	0xf8c <charger_policy_status_rundischging+0xe4>
		0000000000000f8c:  R_AARCH64_CALL26	_printk
     f90: 14000003     	b	0xf9c <charger_policy_status_rundischging+0xf4>
     f94: 2a1f03f5     	mov	w21, wzr
     f98: 2a1f03f4     	mov	w20, wzr
     f9c: 39486668     	ldrb	w8, [x19, #0x219]
     fa0: 36000428     	tbz	w8, #0x0, 0x1024 <charger_policy_status_rundischging+0x17c>
     fa4: b941a268     	ldr	w8, [x19, #0x1a0]
     fa8: 39487269     	ldrb	w9, [x19, #0x21c]
     fac: 2a0803f4     	mov	w20, w8
     fb0: 37000069     	tbnz	w9, #0x0, 0xfbc <charger_policy_status_rundischging+0x114>
     fb4: b941aa69     	ldr	w9, [x19, #0x1a8]
     fb8: 0b080134     	add	w20, w9, w8
     fbc: b941a669     	ldr	w9, [x19, #0x1a4]
     fc0: b94007f6     	ldr	w22, [sp, #0x4]
     fc4: 0b080128     	add	w8, w9, w8
     fc8: 39487669     	ldrb	w9, [x19, #0x21d]
     fcc: 7100011f     	cmp	w8, #0x0
     fd0: 1a88a508     	cinc	w8, w8, lt
     fd4: 7100053f     	cmp	w9, #0x1
     fd8: 13017d15     	asr	w21, w8, #1
     fdc: 54000121     	b.ne	0x1000 <charger_policy_status_rundischging+0x158>
     fe0: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efc
     fe4: 91000000     	add	x0, x0, #0x0
		0000000000000fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efc
     fe8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
     fec: 91000021     	add	x1, x1, #0x0
		0000000000000fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
     ff0: 2a1603e2     	mov	w2, w22
     ff4: 2a1403e3     	mov	w3, w20
     ff8: 2a1503e4     	mov	w4, w21
     ffc: 94000000     	bl	0xffc <charger_policy_status_rundischging+0x154>
		0000000000000ffc:  R_AARCH64_CALL26	_printk
    1000: 6b1402df     	cmp	w22, w20
    1004: 5400016a     	b.ge	0x1030 <charger_policy_status_rundischging+0x188>
    1008: 6b1502df     	cmp	w22, w21
    100c: 540001cc     	b.gt	0x1044 <charger_policy_status_rundischging+0x19c>
    1010: aa1303e0     	mov	x0, x19
    1014: 2a1f03e1     	mov	w1, wzr
    1018: 52800022     	mov	w2, #0x1                // =1
    101c: 94000000     	bl	0x101c <charger_policy_status_rundischging+0x174>
		000000000000101c:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1020: 14000009     	b	0x1044 <charger_policy_status_rundischging+0x19c>
    1024: b94007f6     	ldr	w22, [sp, #0x4]
    1028: 6b1402df     	cmp	w22, w20
    102c: 54fffeeb     	b.lt	0x1008 <charger_policy_status_rundischging+0x160>
    1030: aa1303e0     	mov	x0, x19
    1034: 2a1f03e1     	mov	w1, wzr
    1038: 2a1f03e2     	mov	w2, wzr
    103c: 94000000     	bl	0x103c <charger_policy_status_rundischging+0x194>
		000000000000103c:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1040: 360008c0     	tbz	w0, #0x0, 0x1158 <charger_policy_status_rundischging+0x2b0>
    1044: aa1303e0     	mov	x0, x19
    1048: 94000000     	bl	0x1048 <charger_policy_status_rundischging+0x1a0>
		0000000000001048:  R_AARCH64_CALL26	charger_policy_check_soc_reach_min
    104c: 37000260     	tbnz	w0, #0x0, 0x1098 <charger_policy_status_rundischging+0x1f0>
    1050: d5384108     	mrs	x8, SP_EL0
    1054: f9438908     	ldr	x8, [x8, #0x710]
    1058: f94007e9     	ldr	x9, [sp, #0x8]
    105c: eb09011f     	cmp	x8, x9
    1060: 540008c1     	b.ne	0x1178 <charger_policy_status_rundischging+0x2d0>
    1064: 2a1f03e0     	mov	w0, wzr
    1068: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    106c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1070: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1074: 910103ff     	add	sp, sp, #0x40
    1078: d50323bf     	autiasp
    107c: d65f03c0     	ret
    1080: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
    1084: 91000000     	add	x0, x0, #0x0
		0000000000001084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
    1088: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
    108c: 91000021     	add	x1, x1, #0x0
		000000000000108c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
    1090: 94000000     	bl	0x1090 <charger_policy_status_rundischging+0x1e8>
		0000000000001090:  R_AARCH64_CALL26	_printk
    1094: 17ffffec     	b	0x1044 <charger_policy_status_rundischging+0x19c>
    1098: 52800020     	mov	w0, #0x1                // =1
    109c: 52800035     	mov	w21, #0x1               // =1
    10a0: 94000000     	bl	0x10a0 <charger_policy_status_rundischging+0x1f8>
		00000000000010a0:  R_AARCH64_CALL26	ktime_get_with_offset
    10a4: 94000000     	bl	0x10a4 <charger_policy_status_rundischging+0x1fc>
		00000000000010a4:  R_AARCH64_CALL26	ns_to_timespec64
    10a8: b941ee68     	ldr	w8, [x19, #0x1ec]
    10ac: b901ee75     	str	w21, [x19, #0x1ec]
    10b0: 90000015     	adrp	x21, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000010b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde
    10b4: 910002b5     	add	x21, x21, #0x0
		00000000000010b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde
    10b8: aa0003f4     	mov	x20, x0
    10bc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000010bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc8c
    10c0: 91000000     	add	x0, x0, #0x0
		00000000000010c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc8c
    10c4: aa1503e1     	mov	x1, x21
    10c8: b901f268     	str	w8, [x19, #0x1f0]
    10cc: 94000000     	bl	0x10cc <charger_policy_status_rundischging+0x224>
		00000000000010cc:  R_AARCH64_CALL26	_printk
    10d0: aa1303e0     	mov	x0, x19
    10d4: 52800021     	mov	w1, #0x1                // =1
    10d8: 52800022     	mov	w2, #0x1                // =1
    10dc: 94000000     	bl	0x10dc <charger_policy_status_rundischging+0x234>
		00000000000010dc:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    10e0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000010e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
    10e4: 91000000     	add	x0, x0, #0x0
		00000000000010e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
    10e8: aa1503e1     	mov	x1, x21
    10ec: aa1403e2     	mov	x2, x20
    10f0: f9010674     	str	x20, [x19, #0x208]
    10f4: 94000000     	bl	0x10f4 <charger_policy_status_rundischging+0x24c>
		00000000000010f4:  R_AARCH64_CALL26	_printk
    10f8: 17ffffd6     	b	0x1050 <charger_policy_status_rundischging+0x1a8>
    10fc: f9410663     	ldr	x3, [x19, #0x208]
    1100: b941fa65     	ldr	w5, [x19, #0x1f8]
    1104: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
    1108: 91000108     	add	x8, x8, #0x0
		0000000000001108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
    110c: aa0003f4     	mov	x20, x0
    1110: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
    1114: 91000021     	add	x1, x1, #0x0
		0000000000001114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
    1118: cb030004     	sub	x4, x0, x3
    111c: aa0803e0     	mov	x0, x8
    1120: aa1403e2     	mov	x2, x20
    1124: 94000000     	bl	0x1124 <charger_policy_status_rundischging+0x27c>
		0000000000001124:  R_AARCH64_CALL26	_printk
    1128: aa1403e0     	mov	x0, x20
    112c: 17ffff72     	b	0xef4 <charger_policy_status_rundischging+0x4c>
    1130: b941ee68     	ldr	w8, [x19, #0x1ec]
    1134: 52800069     	mov	w9, #0x3                // =3
    1138: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f4
    113c: 91000000     	add	x0, x0, #0x0
		000000000000113c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f4
    1140: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde
    1144: 91000021     	add	x1, x1, #0x0
		0000000000001144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde
    1148: b901f268     	str	w8, [x19, #0x1f0]
    114c: b901ee69     	str	w9, [x19, #0x1ec]
    1150: 94000000     	bl	0x1150 <charger_policy_status_rundischging+0x2a8>
		0000000000001150:  R_AARCH64_CALL26	_printk
    1154: 17ffffbf     	b	0x1050 <charger_policy_status_rundischging+0x1a8>
    1158: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13c4
    115c: 91000000     	add	x0, x0, #0x0
		000000000000115c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13c4
    1160: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
    1164: 91000021     	add	x1, x1, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
    1168: 94000000     	bl	0x1168 <charger_policy_status_rundischging+0x2c0>
		0000000000001168:  R_AARCH64_CALL26	_printk
    116c: 9100a260     	add	x0, x19, #0x28
    1170: 94000000     	bl	0x1170 <charger_policy_status_rundischging+0x2c8>
		0000000000001170:  R_AARCH64_CALL26	alarm_try_to_cancel
    1174: 17ffffb4     	b	0x1044 <charger_policy_status_rundischging+0x19c>
    1178: 94000000     	bl	0x1178 <charger_policy_status_rundischging+0x2d0>
		0000000000001178:  R_AARCH64_CALL26	__stack_chk_fail
