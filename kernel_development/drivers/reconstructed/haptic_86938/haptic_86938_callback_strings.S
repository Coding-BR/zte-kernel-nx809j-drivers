/* String bytes referenced by the materialized stock callback islands. */
.section .rodata.str1.1,"aMS",@progbits,1
.align 1

.global haptic_86938_cb_haptic_hv
haptic_86938_cb_haptic_hv:
	.asciz "haptic_hv"
.global haptic_86938_cb_enter
haptic_86938_cb_enter:
	.byte 0x01, 0x36
	.asciz "[%s][%04d]%s: enter\n"
.global haptic_86938_cb_trig_init
haptic_86938_cb_trig_init:
	.asciz "aw8693x_trig_init"
.global haptic_86938_cb_one_wire_enabled
haptic_86938_cb_one_wire_enabled:
	.byte 0x01, 0x36
	.asciz "[%s][%04d]%s: one wire is enabled\n"
.global haptic_86938_cb_one_wire_init
haptic_86938_cb_one_wire_init:
	.asciz "aw8693x_one_wire_init"
.global haptic_86938_cb_protection_enabled
haptic_86938_cb_protection_enabled:
	.byte 0x01, 0x36
	.asciz "[%s][%04d]%s: enable protection mode\n"
.global haptic_86938_cb_protect_config
haptic_86938_cb_protect_config:
	.asciz "aw8693x_protect_config"
.global haptic_86938_cb_vbat_ref_config
haptic_86938_cb_vbat_ref_config:
	.asciz "aw8693x_vbat_ref_config"
