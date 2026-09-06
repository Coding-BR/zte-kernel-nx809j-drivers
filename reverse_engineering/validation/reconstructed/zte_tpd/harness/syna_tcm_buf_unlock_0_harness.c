#include <stdint.h>
#include <stdio.h>
#include <string.h>
typedef int64_t __int64;
#define _BYTE uint8_t
#define _DWORD uint32_t
#define __int8 char
#define __fastcall
static uint8_t fixture[0x80];
static uintptr_t unlocked;
static unsigned int unlocks, logs, logged_depth;
void mutex_unlock(uintptr_t address) { unlocked = address; unlocks++; }
int printk(const char *fmt, const char *name, unsigned int depth)
{ (void)fmt; (void)name; logs++; logged_depth = depth; return 0; }
#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_buf_unlock_0.c"
static void check(int ok, const char *name, unsigned int *bad)
{ printf("%s %s\n", ok ? "PASS" : "FAIL", name); if (!ok) (*bad)++; }
static void run(uint8_t depth, uint8_t expected, unsigned int expected_logs, unsigned int *bad)
{ memset(fixture, 0, sizeof(fixture)); fixture[0x40] = depth; unlocked = 0; unlocks = logs = logged_depth = 0; syna_tcm_buf_unlock_0((__int64)(uintptr_t)fixture); check(unlocks == 1, "unlock_once", bad); check(unlocked == (uintptr_t)fixture + 0x10, "mutex_offset", bad); check(fixture[0x40] == expected, "depth_transition", bad); check(logs == expected_logs, "log_transition", bad); if (expected_logs) check(logged_depth == depth, "log_depth", bad); }
int main(void) { unsigned int bad = 0; run(1, 0, 0, &bad); run(3, 2, 1, &bad); run(0, 255, 1, &bad); printf("SUMMARY tests=14 failures=%u\n", bad); return bad ? 1 : 0; }
