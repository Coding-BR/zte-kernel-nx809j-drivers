#include "defs.h"

int sub_2EDA4(struct tcm_dev *tcm,
              tcm_custom_touch_callback_fn callback,
              void *callback_data)
{
  return syna_tcm_set_custom_touch_entity_callback(tcm, callback,
                                                    callback_data);
}
