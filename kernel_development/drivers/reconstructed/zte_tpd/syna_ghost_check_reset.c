#include "defs.h"

int syna_ghost_check_reset(struct ztp_device *cdev)
{
  struct syna_tcm *tcm = cdev->syna_tcm;

  syna_dev_free_input_events(tcm);
  syna_spi_hw_reset(tcm->hw_if);
  syna_recovery_game_mode_after_reset(tcm);
  syna_dev_set_screen_on_fp_mode(tcm, 0);
  printk("\0016[info ] %s: SYNA_ghost_reset success",
         "syna_ghost_check_reset");
  return 0;
}
