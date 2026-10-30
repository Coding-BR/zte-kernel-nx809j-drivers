__asm__(
".section .text,\"ax\",@progbits\n"
".align 2\n"
".global policy_property_is_writeable\n"
".type policy_property_is_writeable, %function\n"
"    .word 0x618f9ead\n"
"policy_property_is_writeable:\n"
"    .inst 0x51000c28\n"
"    .inst 0x71000d1f\n"
"    .inst 0x1a9f27e0\n"
"    .inst 0xd65f03c0\n"
".size policy_property_is_writeable, .-policy_property_is_writeable\n"
);
