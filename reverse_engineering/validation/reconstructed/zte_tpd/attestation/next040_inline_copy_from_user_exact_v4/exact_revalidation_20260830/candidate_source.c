#include "defs.h"

__attribute__((__noinline__))
unsigned long zte_inline_copy_from_user(void *to,
                                       const void __user *from,
                                       unsigned long n)
{
    unsigned long res = n;

    might_fault();
    if (should_fail_usercopy())
        goto fail;
    if (can_do_masked_user_access())
        from = mask_user_address(from);
    else {
        if (!access_ok(from, n))
            goto fail;
        barrier_nospec();
    }
    instrument_copy_from_user_before(to, from, n);
    res = raw_copy_from_user(to, from, n);
    instrument_copy_from_user_after(to, from, n, res);
    if (likely(!res))
        return 0;

fail:
    memset(to + (n - res), 0, res);
    return res;
}
