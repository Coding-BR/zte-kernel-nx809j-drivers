.section .text,"ax",@progbits
.align 2
.global zte_ir_open
.type zte_ir_open, %function
    .word 0x9829071d
zte_ir_open:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0xaa0103f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list
    .inst 0x92871ae9
    .inst 0xf2bfffc9
    .inst 0xaa0803ea
    .inst 0xf940014a
    .inst 0xeb08015f
    .inst 0x540001e0
    .inst 0x8b090155
    .inst 0xb9404e8c
    .inst 0xb94002ab
    .inst 0x6b0c017f
    .inst 0x54ffff21
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x1a2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x1a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0xaa1303e1
    .inst 0xf9001275
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, nonseekable_open
    .inst 0x2a1f03f3
    .inst 0x14000007
    .inst 0xb9404e88
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x81
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x81
    .inst 0x12004d01
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000b3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1303e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zte_ir_open, .-zte_ir_open
