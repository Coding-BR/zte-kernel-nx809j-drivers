/*
 * ANALYSIS-ONLY Joern source view for fp_goodix:_inline_copy_from_user@001013e8.
 *
 * Production is the exact AArch64 assembly island in fp_goodix_inline_exact.S.
 * This reduced C model retains the stock calls and observable fallback shape
 * for strict graph/slice analysis; it is never a build input.
 */
typedef unsigned long size_t;

extern size_t __arch_copy_from_user(unsigned long address_space,
					long destination, unsigned long source,
					size_t size);
extern void *memset(void *destination, int value, size_t size);

size_t _inline_copy_from_user(long destination, unsigned long source, size_t size)
{
	size_t remaining = size;
	unsigned long safe_source = source;

	/* The exact address-space checks and DAIF/TTBR transitions live in .S. */
	if (safe_source <= 0x8000000000UL - size) {
		remaining = __arch_copy_from_user(0, destination,
						 source & 0xff7fffffffffffffUL, size);
		if (remaining == 0)
			return 0;
	}
	memset((void *)(destination + (size - remaining)), 0, remaining);
	return remaining;
}
