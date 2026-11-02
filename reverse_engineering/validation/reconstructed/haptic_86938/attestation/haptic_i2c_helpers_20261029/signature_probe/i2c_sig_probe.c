#include <linux/types.h>
struct aw_haptic;
#define PROBE __attribute__((__noinline__, __used__))
PROBE int p0(struct aw_haptic *h, u8 r, u8 *b, u32 n) { (void)h;(void)r;(void)b;(void)n;return 0; }
PROBE int p1(struct aw_haptic *h, u8 r, void *b, u32 n) { (void)h;(void)r;(void)b;(void)n;return 0; }
PROBE int p2(void *h, u8 r, void *b, u32 n) { (void)h;(void)r;(void)b;(void)n;return 0; }
PROBE int p3(struct aw_haptic *h, u8 r, u8 *b, u16 n) { (void)h;(void)r;(void)b;(void)n;return 0; }
PROBE int p4(struct aw_haptic *h, u8 r, const u8 *b, u32 n) { (void)h;(void)r;(void)b;(void)n;return 0; }
PROBE void p5(struct aw_haptic *h, u8 r, u8 *b, u32 n) { (void)h;(void)r;(void)b;(void)n; }
PROBE int p6(struct aw_haptic *h, u8 r, u8 *b, unsigned long n) { (void)h;(void)r;(void)b;(void)n;return 0; }
