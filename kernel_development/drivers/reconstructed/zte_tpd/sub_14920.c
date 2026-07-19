#include "defs.h"

extern void ufp_report_lcd_state_delayed_work(unsigned int a1);

void sub_14920(unsigned int a1)
{
  ufp_report_lcd_state_delayed_work(a1);
}
