void tpd_id1_report_work(struct work_struct *work)
{
  (void)work;
  edge_long_press_up((struct input_dev *)qword_30FB0, 1);
}
