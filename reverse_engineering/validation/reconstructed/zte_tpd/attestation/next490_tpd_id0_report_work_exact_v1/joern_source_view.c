void tpd_id0_report_work(struct work_struct *work)
{
  (void)work;
  edge_long_press_up((struct input_dev *)qword_30F28, 0);
}
