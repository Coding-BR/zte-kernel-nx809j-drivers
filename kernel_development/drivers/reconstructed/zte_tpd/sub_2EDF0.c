#include "defs.h"

int sub_2EDF0(struct tcm_dev *tcm,
              tcm_custom_touch_callback_fn callback,
              void *callback_data)
{
  return syna_tcm_set_custom_gesture_callback(tcm, callback, callback_data);
}
