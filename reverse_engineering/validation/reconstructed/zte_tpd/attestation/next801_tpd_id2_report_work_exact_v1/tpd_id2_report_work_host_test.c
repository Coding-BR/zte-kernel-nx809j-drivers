#include <stdio.h>

struct work_struct { int marker; };
struct input_dev { int marker; };
static struct input_dev input_device;
struct input_dev *qword_31038 = &input_device;
static int call_count;
static int observed_pointer;
static int observed_mode = -1;

void edge_long_press_up(struct input_dev *dev, int mode)
{
    ++call_count;
    observed_pointer = dev == qword_31038;
    observed_mode = mode;
}

#include "../../../reconstructed/zte_tpd/tpd_id2_report_work.c"

static int check_call(struct work_struct *work)
{
    call_count = 0;
    observed_pointer = 0;
    observed_mode = -1;
    tpd_id2_report_work(work);
    return call_count == 1 && observed_pointer == 1 && observed_mode == 2;
}

int main(void)
{
    struct work_struct work = { .marker = 0x9abc };
    if (!check_call(&work))
        return 1;
    if (!check_call(&work))
        return 2;
    puts("PASS tpd_id2_report_work host tests (2 cases)");
    return 0;
}
