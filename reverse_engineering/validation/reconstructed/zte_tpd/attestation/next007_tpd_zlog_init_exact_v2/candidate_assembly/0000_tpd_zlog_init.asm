
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012774 <tpd_zlog_init>:
   12774: 90000008     	adrp	x8, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012774:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   12778: 90000009     	adrp	x9, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012778:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   1277c: f9400108     	ldr	x8, [x8]
		000000000001277c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   12780: f905f51f     	str	xzr, [x8, #0xbe8]
   12784: 392fc11f     	strb	wzr, [x8, #0xbf0]
   12788: f940012a     	ldr	x10, [x9]
		0000000000012788:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1278c: f905fd0a     	str	x10, [x8, #0xbf8]
   12790: f940012a     	ldr	x10, [x9]
		0000000000012790:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12794: f905a90a     	str	x10, [x8, #0xb50]
   12798: f940012a     	ldr	x10, [x9]
		0000000000012798:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1279c: f905ad0a     	str	x10, [x8, #0xb58]
   127a0: f940012a     	ldr	x10, [x9]
		00000000000127a0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127a4: f905b10a     	str	x10, [x8, #0xb60]
   127a8: f940012a     	ldr	x10, [x9]
		00000000000127a8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127ac: f905b50a     	str	x10, [x8, #0xb68]
   127b0: f940012a     	ldr	x10, [x9]
		00000000000127b0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127b4: f905b90a     	str	x10, [x8, #0xb70]
   127b8: f940012a     	ldr	x10, [x9]
		00000000000127b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127bc: f905bd0a     	str	x10, [x8, #0xb78]
   127c0: f940012a     	ldr	x10, [x9]
		00000000000127c0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127c4: f905c10a     	str	x10, [x8, #0xb80]
   127c8: f940012a     	ldr	x10, [x9]
		00000000000127c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127cc: f905c50a     	str	x10, [x8, #0xb88]
   127d0: f940012a     	ldr	x10, [x9]
		00000000000127d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127d4: f905c90a     	str	x10, [x8, #0xb90]
   127d8: f940012a     	ldr	x10, [x9]
		00000000000127d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127dc: f905cd0a     	str	x10, [x8, #0xb98]
   127e0: f940012a     	ldr	x10, [x9]
		00000000000127e0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127e4: f905d10a     	str	x10, [x8, #0xba0]
   127e8: f940012a     	ldr	x10, [x9]
		00000000000127e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127ec: f905d50a     	str	x10, [x8, #0xba8]
   127f0: f940012a     	ldr	x10, [x9]
		00000000000127f0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127f4: f905d90a     	str	x10, [x8, #0xbb0]
   127f8: f940012a     	ldr	x10, [x9]
		00000000000127f8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   127fc: f905dd0a     	str	x10, [x8, #0xbb8]
   12800: f940012a     	ldr	x10, [x9]
		0000000000012800:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12804: f905e10a     	str	x10, [x8, #0xbc0]
   12808: f940012a     	ldr	x10, [x9]
		0000000000012808:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1280c: f905e50a     	str	x10, [x8, #0xbc8]
   12810: f940012a     	ldr	x10, [x9]
		0000000000012810:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12814: f905e90a     	str	x10, [x8, #0xbd0]
   12818: f940012a     	ldr	x10, [x9]
		0000000000012818:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   1281c: f905ed0a     	str	x10, [x8, #0xbd8]
   12820: f9400129     	ldr	x9, [x9]
		0000000000012820:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12824: f905f109     	str	x9, [x8, #0xbe0]
   12828: d65f03c0     	ret
