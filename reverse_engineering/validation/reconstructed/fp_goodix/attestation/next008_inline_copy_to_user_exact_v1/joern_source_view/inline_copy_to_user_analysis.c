/*
 * ANALYSIS-ONLY Joern source view for fp_goodix:_inline_copy_to_user@0010133c.
 *
 * The production implementation is the exact AArch64 assembly island in
 * fp_goodix_inline_exact.S. This C model is derived from the preserved stock
 * call relocation and ABI-visible arguments only; it is never a build input.
 */
typedef unsigned long size_t;

extern unsigned long __arch_copy_to_user(void *to, const void *from, size_t n);

unsigned long _inline_copy_to_user(void *to, const void *from, size_t n)
{
	return __arch_copy_to_user(to, from, n);
}
