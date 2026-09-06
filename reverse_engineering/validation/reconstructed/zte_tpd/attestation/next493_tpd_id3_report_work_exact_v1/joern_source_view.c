void tpd_id3_report_work(struct work_struct *work)
{
  (void)work;
  edge_long_press_up((struct input_dev *)qword_310C0, 3);
}
