__asm__(
".section .text,\"ax\",@progbits\n"
".align 2\n"
".global policy_external_power_changed\n"
".type policy_external_power_changed, %function\n"
"    .word 0x19768773\n"
"policy_external_power_changed:\n"
"    .inst 0xd65f03c0\n"
".size policy_external_power_changed, .-policy_external_power_changed\n"
);
