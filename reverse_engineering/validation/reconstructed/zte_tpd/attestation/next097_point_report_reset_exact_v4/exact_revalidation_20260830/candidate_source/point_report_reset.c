#include "defs.h"

void __fastcall point_report_reset(unsigned int result)
{
  struct point_info_struct *v6; // x20
  unsigned int v7; // w19
  __int64 v8; // x21

  if ( result > 9 )
  {
    asm volatile("brk #1");
    __builtin_unreachable();
  }

  v6 = &point_report_info[result];
  if ( v6->field_84 == 1 )
  {
    v7 = result;
    v8 = tpd_cdev;
    printk("\1" "5tpd: %s:tpd touch up id: %d\n",
           "point_report_reset", result);
    v6->field_84 = 0;
    mutex_lock(v8 + 3216);
    input_event((__int64)v6->input, 3, 47, v7);
    input_mt_report_slot_state((__int64)v6->input, 0, 0);
    input_event((__int64)v6->input, 0, 0, 0);
    mutex_unlock(v8 + 3216);
    usleep_range_state(1000, 1100, 2);
  }
}
