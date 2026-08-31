
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d494 <tpd_zlog_init>:
    d494: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d494:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d498: 90000009     	adrp	x9, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d498:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    d49c: f9400108     	ldr	x8, [x8]
		000000000000d49c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d4a0: f905f51f     	str	xzr, [x8, #0xbe8]
    d4a4: 392fc11f     	strb	wzr, [x8, #0xbf0]
    d4a8: f940012a     	ldr	x10, [x9]
		000000000000d4a8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4ac: f905fd0a     	str	x10, [x8, #0xbf8]
    d4b0: f940012a     	ldr	x10, [x9]
		000000000000d4b0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4b4: f905a90a     	str	x10, [x8, #0xb50]
    d4b8: f940012a     	ldr	x10, [x9]
		000000000000d4b8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4bc: f905ad0a     	str	x10, [x8, #0xb58]
    d4c0: f940012a     	ldr	x10, [x9]
		000000000000d4c0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4c4: f905b10a     	str	x10, [x8, #0xb60]
    d4c8: f940012a     	ldr	x10, [x9]
		000000000000d4c8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4cc: f905b50a     	str	x10, [x8, #0xb68]
    d4d0: f940012a     	ldr	x10, [x9]
		000000000000d4d0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4d4: f905b90a     	str	x10, [x8, #0xb70]
    d4d8: f940012a     	ldr	x10, [x9]
		000000000000d4d8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4dc: f905bd0a     	str	x10, [x8, #0xb78]
    d4e0: f940012a     	ldr	x10, [x9]
		000000000000d4e0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4e4: f905c10a     	str	x10, [x8, #0xb80]
    d4e8: f940012a     	ldr	x10, [x9]
		000000000000d4e8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4ec: f905c50a     	str	x10, [x8, #0xb88]
    d4f0: f940012a     	ldr	x10, [x9]
		000000000000d4f0:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4f4: f905c90a     	str	x10, [x8, #0xb90]
    d4f8: f940012a     	ldr	x10, [x9]
		000000000000d4f8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4fc: f905cd0a     	str	x10, [x8, #0xb98]
    d500: f940012a     	ldr	x10, [x9]
		000000000000d500:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d504: f905d10a     	str	x10, [x8, #0xba0]
    d508: f940012a     	ldr	x10, [x9]
		000000000000d508:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d50c: f905d50a     	str	x10, [x8, #0xba8]
    d510: f940012a     	ldr	x10, [x9]
		000000000000d510:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d514: f905d90a     	str	x10, [x8, #0xbb0]
    d518: f940012a     	ldr	x10, [x9]
		000000000000d518:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d51c: f905dd0a     	str	x10, [x8, #0xbb8]
    d520: f940012a     	ldr	x10, [x9]
		000000000000d520:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d524: f905e10a     	str	x10, [x8, #0xbc0]
    d528: f940012a     	ldr	x10, [x9]
		000000000000d528:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d52c: f905e50a     	str	x10, [x8, #0xbc8]
    d530: f940012a     	ldr	x10, [x9]
		000000000000d530:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d534: f905e90a     	str	x10, [x8, #0xbd0]
    d538: f940012a     	ldr	x10, [x9]
		000000000000d538:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d53c: f905ed0a     	str	x10, [x8, #0xbd8]
    d540: f9400129     	ldr	x9, [x9]
		000000000000d540:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d544: f905f109     	str	x9, [x8, #0xbe0]
    d548: d65f03c0     	ret
