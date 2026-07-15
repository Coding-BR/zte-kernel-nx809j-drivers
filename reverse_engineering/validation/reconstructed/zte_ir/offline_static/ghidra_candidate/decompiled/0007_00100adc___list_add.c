
void __list_add(long *param_1,long *param_2,long *param_3)

{
  if (((((long *)param_3[1] == param_2) && (param_1 != param_3)) && (param_1 != param_2)) &&
     ((long *)*param_2 == param_3)) {
    param_3[1] = (long)param_1;
    *param_1 = (long)param_3;
    param_1[1] = (long)param_2;
    *param_2 = (long)param_1;
    return;
  }
  __list_add_valid_or_report();
  return;
}

