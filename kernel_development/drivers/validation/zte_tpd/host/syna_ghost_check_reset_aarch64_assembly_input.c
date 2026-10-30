typedef struct syna_hw_interface syna_hw_interface;
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
extern void syna_dev_free_input_events(struct syna_tcm *tcm);
extern void syna_spi_hw_reset(struct syna_hw_interface *hw_if);
extern int syna_recovery_game_mode_after_reset(struct syna_tcm *tcm);
extern int syna_dev_set_screen_on_fp_mode(struct syna_tcm *tcm,
                                           unsigned int enable);
extern int printk(const char *format, const char *name);
#include "syna_ghost_check_reset_under_test.c"
