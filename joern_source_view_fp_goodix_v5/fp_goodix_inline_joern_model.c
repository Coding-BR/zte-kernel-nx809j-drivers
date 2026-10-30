/*
 * Analysis-only C model of the two compiler-generated AArch64 copy helpers.
 * The executable candidate remains fp_goodix_inline_exact.S.  This file is
 * derived from the preserved Ghidra P-Code/decompilation solely so Joern can
 * inspect the proven call/control surface; it is never compiled or linked.
 */
typedef unsigned long size_t;

extern unsigned long __arch_copy_to_user(unsigned long, unsigned long,
                                         unsigned long, unsigned long);
extern unsigned long __arch_copy_from_user(unsigned long, unsigned long,
                                           unsigned long, unsigned long);
extern void *memset(void *, int, size_t);

unsigned long _inline_copy_to_user(unsigned long param_1,
                                   unsigned long param_2)
{
    unsigned long user_address = param_1;
    unsigned long result = 1;

    if (((user_address >> 5) & 1UL) != 0 || ((user_address >> 26) & 1UL) != 0)
        user_address = param_1 & ((param_1 << 8) >> 8);

    if ((user_address >> 39) == 0)
        result = __arch_copy_to_user(user_address, param_1,
                                     param_2, 1);

    return result;
}

size_t _inline_copy_from_user(unsigned long param_1,
                              unsigned long param_2, size_t param_3)
{
    unsigned long user_address = param_2;
    size_t remaining = param_3;

    if (((user_address >> 5) & 1UL) != 0 || ((user_address >> 26) & 1UL) != 0)
        user_address = param_2 & ((param_2 << 8) >> 8);

    if (user_address <= 0x8000000000UL - param_3) {
        remaining = __arch_copy_from_user(user_address, param_1,
                                          param_2, param_3);
        if (remaining == 0)
            return 0;
    }

    memset((void *)(param_1 + (param_3 - remaining)), 0, remaining);
    return remaining;
}
