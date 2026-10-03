#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct syna_hw_interface {
  unsigned char bytes[0x190];
};

struct syna_tcm {
  unsigned char reserved_0000[0x270];
  struct syna_hw_interface *hw_if;
};

struct ztp_device {
  unsigned char reserved_0000[0xdb8];
  struct syna_tcm *syna_tcm;
};

_Static_assert(__builtin_offsetof(struct ztp_device, syna_tcm) == 0xdb8,
               "cdev context offset");
_Static_assert(__builtin_offsetof(struct syna_tcm, hw_if) == 0x270,
               "tcm hw_if offset");

static unsigned int calls[5];
static unsigned int call_count;
static struct syna_tcm *seen_tcm[3];
static struct syna_hw_interface *seen_hw_if;
static unsigned int seen_fp_mode;
static const char *seen_format;
static const char *seen_name;

void syna_dev_free_input_events(struct syna_tcm *tcm)
{
  calls[call_count++] = 1;
  seen_tcm[0] = tcm;
}

void syna_spi_hw_reset(struct syna_hw_interface *hw_if)
{
  calls[call_count++] = 2;
  seen_hw_if = hw_if;
}

int syna_recovery_game_mode_after_reset(struct syna_tcm *tcm)
{
  calls[call_count++] = 3;
  seen_tcm[1] = tcm;
  return 0;
}

int syna_dev_set_screen_on_fp_mode(struct syna_tcm *tcm, unsigned int enable)
{
  calls[call_count++] = 4;
  seen_tcm[2] = tcm;
  seen_fp_mode = enable;
  return 0;
}

int printk(const char *format, const char *name)
{
  calls[call_count++] = 5;
  seen_format = format;
  seen_name = name;
  return 0;
}

#include "syna_ghost_check_reset_under_test.c"

static void check(int condition, const char *name, unsigned int *failures)
{
  printf("%s %s\n", condition ? "PASS" : "FAIL", name);
  if (!condition)
    ++*failures;
}

int main(void)
{
  struct ztp_device cdev;
  struct syna_tcm tcm;
  struct syna_hw_interface hw_if;
  unsigned int failures = 0;

  memset(&cdev, 0, sizeof(cdev));
  memset(&tcm, 0, sizeof(tcm));
  memset(&hw_if, 0, sizeof(hw_if));
  cdev.syna_tcm = &tcm;
  tcm.hw_if = &hw_if;

  check(syna_ghost_check_reset(&cdev) == 0, "returns_zero", &failures);
  check(call_count == 5, "five_calls", &failures);
  check(calls[0] == 1 && calls[1] == 2 && calls[2] == 3 &&
        calls[3] == 4 && calls[4] == 5, "call_order", &failures);
  check(seen_tcm[0] == &tcm && seen_tcm[1] == &tcm &&
        seen_tcm[2] == &tcm, "tcm_context", &failures);
  check(seen_hw_if == &hw_if, "hw_interface_offset", &failures);
  check(seen_fp_mode == 0, "fingerprint_mode_disabled", &failures);
  check(strcmp(seen_format, "\0016[info ] %s: SYNA_ghost_reset success") == 0,
        "stock_log_format", &failures);
  check(strcmp(seen_name, "syna_ghost_check_reset") == 0,
        "stock_log_name", &failures);
  printf("SUMMARY tests=8 failures=%u\n", failures);
  return failures ? 1 : 0;
}
