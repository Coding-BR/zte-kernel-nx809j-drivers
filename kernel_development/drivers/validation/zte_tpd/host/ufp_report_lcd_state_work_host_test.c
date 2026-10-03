#include <stdio.h>

struct work_struct {
  int unused;
};

static unsigned int report_calls;

void ufp_report_lcd_state(void)
{
  report_calls++;
}

#include "../../../reconstructed/zte_tpd/ufp_report_lcd_state_work.c"

int main(void)
{
  struct work_struct work = { 0 };

  ufp_report_lcd_state_work(&work);
  if (report_calls != 1) {
    fprintf(stderr, "expected exactly one lcd-state report\n");
    return 1;
  }
  puts("PASS ufp_report_lcd_state_work host tests (1 case)");
  return 0;
}
