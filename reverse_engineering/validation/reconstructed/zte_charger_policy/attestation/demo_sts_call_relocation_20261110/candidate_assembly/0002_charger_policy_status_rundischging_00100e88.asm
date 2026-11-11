
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000eb8 <charger_policy_status_rundischging>:
     eb8: d503233f     	paciasp
     ebc: d10103ff     	sub	sp, sp, #0x40
     ec0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     ec4: a90257f6     	stp	x22, x21, [sp, #0x20]
     ec8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     ecc: 910043fd     	add	x29, sp, #0x10
     ed0: d5384108     	mrs	x8, SP_EL0
     ed4: aa0003f3     	mov	x19, x0
     ed8: f9438908     	ldr	x8, [x8, #0x710]
     edc: f90007e8     	str	x8, [sp, #0x8]
     ee0: 39487008     	ldrb	w8, [x0, #0x21c]
     ee4: 7100051f     	cmp	w8, #0x1
     ee8: 54000181     	b.ne	0xf18 <charger_policy_status_rundischging+0x60>
     eec: 52800020     	mov	w0, #0x1                // =1
     ef0: 94000000     	bl	0xef0 <charger_policy_status_rundischging+0x38>
		0000000000000ef0:  R_AARCH64_CALL26	ktime_get_with_offset
     ef4: 94000000     	bl	0xef4 <charger_policy_status_rundischging+0x3c>
		0000000000000ef4:  R_AARCH64_CALL26	ns_to_timespec64
     ef8: 39487668     	ldrb	w8, [x19, #0x21d]
     efc: 7100051f     	cmp	w8, #0x1
     f00: 54001060     	b.eq	0x110c <charger_policy_status_rundischging+0x254>
     f04: f9410668     	ldr	x8, [x19, #0x208]
     f08: b941fa69     	ldr	w9, [x19, #0x1f8]
     f0c: cb080008     	sub	x8, x0, x8
     f10: eb09011f     	cmp	x8, x9
     f14: 5400116c     	b.gt	0x1140 <charger_policy_status_rundischging+0x288>
     f18: f940de60     	ldr	x0, [x19, #0x1b8]
     f1c: 910013e2     	add	x2, sp, #0x4
     f20: 528005e1     	mov	w1, #0x2f               // =47
     f24: b90007ff     	str	wzr, [sp, #0x4]
     f28: 94000000     	bl	0xf28 <charger_policy_status_rundischging+0x70>
		0000000000000f28:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     f2c: 37f80b20     	tbnz	w0, #0x1f, 0x1090 <charger_policy_status_rundischging+0x1d8>
     f30: 39486a68     	ldrb	w8, [x19, #0x21a]
     f34: 7100051f     	cmp	w8, #0x1
     f38: 54000361     	b.ne	0xfa4 <charger_policy_status_rundischging+0xec>
     f3c: 39486e68     	ldrb	w8, [x19, #0x21b]
     f40: 7100051f     	cmp	w8, #0x1
     f44: 54000301     	b.ne	0xfa4 <charger_policy_status_rundischging+0xec>
     f48: b9419a68     	ldr	w8, [x19, #0x198]
     f4c: 39487269     	ldrb	w9, [x19, #0x21c]
     f50: 2a0803f4     	mov	w20, w8
     f54: 37000069     	tbnz	w9, #0x0, 0xf60 <charger_policy_status_rundischging+0xa8>
     f58: b941aa69     	ldr	w9, [x19, #0x1a8]
     f5c: 0b080134     	add	w20, w9, w8
     f60: b9419e69     	ldr	w9, [x19, #0x19c]
     f64: 0b080128     	add	w8, w9, w8
     f68: 39487669     	ldrb	w9, [x19, #0x21d]
     f6c: 7100011f     	cmp	w8, #0x0
     f70: 1a88a508     	cinc	w8, w8, lt
     f74: 7100053f     	cmp	w9, #0x1
     f78: 13017d15     	asr	w21, w8, #1
     f7c: 54000181     	b.ne	0xfac <charger_policy_status_rundischging+0xf4>
     f80: b94007e2     	ldr	w2, [sp, #0x4]
     f84: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd8
     f88: 91000000     	add	x0, x0, #0x0
		0000000000000f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd8
     f8c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
     f90: 91000021     	add	x1, x1, #0x0
		0000000000000f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
     f94: 2a1403e3     	mov	w3, w20
     f98: 2a1503e4     	mov	w4, w21
     f9c: 94000000     	bl	0xf9c <charger_policy_status_rundischging+0xe4>
		0000000000000f9c:  R_AARCH64_CALL26	_printk
     fa0: 14000003     	b	0xfac <charger_policy_status_rundischging+0xf4>
     fa4: 2a1f03f5     	mov	w21, wzr
     fa8: 2a1f03f4     	mov	w20, wzr
     fac: 39486668     	ldrb	w8, [x19, #0x219]
     fb0: 36000428     	tbz	w8, #0x0, 0x1034 <charger_policy_status_rundischging+0x17c>
     fb4: b941a268     	ldr	w8, [x19, #0x1a0]
     fb8: 39487269     	ldrb	w9, [x19, #0x21c]
     fbc: 2a0803f4     	mov	w20, w8
     fc0: 37000069     	tbnz	w9, #0x0, 0xfcc <charger_policy_status_rundischging+0x114>
     fc4: b941aa69     	ldr	w9, [x19, #0x1a8]
     fc8: 0b080134     	add	w20, w9, w8
     fcc: b941a669     	ldr	w9, [x19, #0x1a4]
     fd0: b94007f6     	ldr	w22, [sp, #0x4]
     fd4: 0b080128     	add	w8, w9, w8
     fd8: 39487669     	ldrb	w9, [x19, #0x21d]
     fdc: 7100011f     	cmp	w8, #0x0
     fe0: 1a88a508     	cinc	w8, w8, lt
     fe4: 7100053f     	cmp	w9, #0x1
     fe8: 13017d15     	asr	w21, w8, #1
     fec: 54000121     	b.ne	0x1010 <charger_policy_status_rundischging+0x158>
     ff0: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1efc
     ff4: 91000000     	add	x0, x0, #0x0
		0000000000000ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1efc
     ff8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
     ffc: 91000021     	add	x1, x1, #0x0
		0000000000000ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
    1000: 2a1603e2     	mov	w2, w22
    1004: 2a1403e3     	mov	w3, w20
    1008: 2a1503e4     	mov	w4, w21
    100c: 94000000     	bl	0x100c <charger_policy_status_rundischging+0x154>
		000000000000100c:  R_AARCH64_CALL26	_printk
    1010: 6b1402df     	cmp	w22, w20
    1014: 5400016a     	b.ge	0x1040 <charger_policy_status_rundischging+0x188>
    1018: 6b1502df     	cmp	w22, w21
    101c: 540001cc     	b.gt	0x1054 <charger_policy_status_rundischging+0x19c>
    1020: aa1303e0     	mov	x0, x19
    1024: 2a1f03e1     	mov	w1, wzr
    1028: 52800022     	mov	w2, #0x1                // =1
    102c: 94000000     	bl	0x102c <charger_policy_status_rundischging+0x174>
		000000000000102c:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1030: 14000009     	b	0x1054 <charger_policy_status_rundischging+0x19c>
    1034: b94007f6     	ldr	w22, [sp, #0x4]
    1038: 6b1402df     	cmp	w22, w20
    103c: 54fffeeb     	b.lt	0x1018 <charger_policy_status_rundischging+0x160>
    1040: aa1303e0     	mov	x0, x19
    1044: 2a1f03e1     	mov	w1, wzr
    1048: 2a1f03e2     	mov	w2, wzr
    104c: 94000000     	bl	0x104c <charger_policy_status_rundischging+0x194>
		000000000000104c:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    1050: 360008c0     	tbz	w0, #0x0, 0x1168 <charger_policy_status_rundischging+0x2b0>
    1054: aa1303e0     	mov	x0, x19
    1058: 94000000     	bl	0x1058 <charger_policy_status_rundischging+0x1a0>
		0000000000001058:  R_AARCH64_CALL26	charger_policy_check_soc_reach_min
    105c: 37000260     	tbnz	w0, #0x0, 0x10a8 <charger_policy_status_rundischging+0x1f0>
    1060: d5384108     	mrs	x8, SP_EL0
    1064: f9438908     	ldr	x8, [x8, #0x710]
    1068: f94007e9     	ldr	x9, [sp, #0x8]
    106c: eb09011f     	cmp	x8, x9
    1070: 540008c1     	b.ne	0x1188 <charger_policy_status_rundischging+0x2d0>
    1074: 2a1f03e0     	mov	w0, wzr
    1078: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    107c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1080: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1084: 910103ff     	add	sp, sp, #0x40
    1088: d50323bf     	autiasp
    108c: d65f03c0     	ret
    1090: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
    1094: 91000000     	add	x0, x0, #0x0
		0000000000001094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
    1098: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
    109c: 91000021     	add	x1, x1, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
    10a0: 94000000     	bl	0x10a0 <charger_policy_status_rundischging+0x1e8>
		00000000000010a0:  R_AARCH64_CALL26	_printk
    10a4: 17ffffec     	b	0x1054 <charger_policy_status_rundischging+0x19c>
    10a8: 52800020     	mov	w0, #0x1                // =1
    10ac: 52800035     	mov	w21, #0x1               // =1
    10b0: 94000000     	bl	0x10b0 <charger_policy_status_rundischging+0x1f8>
		00000000000010b0:  R_AARCH64_CALL26	ktime_get_with_offset
    10b4: 94000000     	bl	0x10b4 <charger_policy_status_rundischging+0x1fc>
		00000000000010b4:  R_AARCH64_CALL26	ns_to_timespec64
    10b8: b941ee68     	ldr	w8, [x19, #0x1ec]
    10bc: b901ee75     	str	w21, [x19, #0x1ec]
    10c0: 90000015     	adrp	x21, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000010c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde
    10c4: 910002b5     	add	x21, x21, #0x0
		00000000000010c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde
    10c8: aa0003f4     	mov	x20, x0
    10cc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000010cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc8c
    10d0: 91000000     	add	x0, x0, #0x0
		00000000000010d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc8c
    10d4: aa1503e1     	mov	x1, x21
    10d8: b901f268     	str	w8, [x19, #0x1f0]
    10dc: 94000000     	bl	0x10dc <charger_policy_status_rundischging+0x224>
		00000000000010dc:  R_AARCH64_CALL26	_printk
    10e0: aa1303e0     	mov	x0, x19
    10e4: 52800021     	mov	w1, #0x1                // =1
    10e8: 52800022     	mov	w2, #0x1                // =1
    10ec: 94000000     	bl	0x10ec <charger_policy_status_rundischging+0x234>
		00000000000010ec:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    10f0: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000010f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
    10f4: 91000000     	add	x0, x0, #0x0
		00000000000010f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
    10f8: aa1503e1     	mov	x1, x21
    10fc: aa1403e2     	mov	x2, x20
    1100: f9010674     	str	x20, [x19, #0x208]
    1104: 94000000     	bl	0x1104 <charger_policy_status_rundischging+0x24c>
		0000000000001104:  R_AARCH64_CALL26	_printk
    1108: 17ffffd6     	b	0x1060 <charger_policy_status_rundischging+0x1a8>
    110c: f9410663     	ldr	x3, [x19, #0x208]
    1110: b941fa65     	ldr	w5, [x19, #0x1f8]
    1114: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
    1118: 91000108     	add	x8, x8, #0x0
		0000000000001118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
    111c: aa0003f4     	mov	x20, x0
    1120: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
    1124: 91000021     	add	x1, x1, #0x0
		0000000000001124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
    1128: cb030004     	sub	x4, x0, x3
    112c: aa0803e0     	mov	x0, x8
    1130: aa1403e2     	mov	x2, x20
    1134: 94000000     	bl	0x1134 <charger_policy_status_rundischging+0x27c>
		0000000000001134:  R_AARCH64_CALL26	_printk
    1138: aa1403e0     	mov	x0, x20
    113c: 17ffff72     	b	0xf04 <charger_policy_status_rundischging+0x4c>
    1140: b941ee68     	ldr	w8, [x19, #0x1ec]
    1144: 52800069     	mov	w9, #0x3                // =3
    1148: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f4
    114c: 91000000     	add	x0, x0, #0x0
		000000000000114c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f4
    1150: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde
    1154: 91000021     	add	x1, x1, #0x0
		0000000000001154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde
    1158: b901f268     	str	w8, [x19, #0x1f0]
    115c: b901ee69     	str	w9, [x19, #0x1ec]
    1160: 94000000     	bl	0x1160 <charger_policy_status_rundischging+0x2a8>
		0000000000001160:  R_AARCH64_CALL26	_printk
    1164: 17ffffbf     	b	0x1060 <charger_policy_status_rundischging+0x1a8>
    1168: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13c4
    116c: 91000000     	add	x0, x0, #0x0
		000000000000116c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13c4
    1170: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139c
    1174: 91000021     	add	x1, x1, #0x0
		0000000000001174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139c
    1178: 94000000     	bl	0x1178 <charger_policy_status_rundischging+0x2c0>
		0000000000001178:  R_AARCH64_CALL26	_printk
    117c: 9100a260     	add	x0, x19, #0x28
    1180: 94000000     	bl	0x1180 <charger_policy_status_rundischging+0x2c8>
		0000000000001180:  R_AARCH64_CALL26	alarm_try_to_cancel
    1184: 17ffffb4     	b	0x1054 <charger_policy_status_rundischging+0x19c>
    1188: 94000000     	bl	0x1188 <charger_policy_status_rundischging+0x2d0>
		0000000000001188:  R_AARCH64_CALL26	__stack_chk_fail
