
void list_add(undefined **param_1)

{
  if (((undefined **)device_list != param_1 && param_1 != &device_list) &&
      *(undefined ***)(device_list + 8) == &device_list) {
    *(undefined ***)(device_list + 8) = param_1;
    *param_1 = device_list;
    param_1[1] = (undefined *)&device_list;
    device_list = (undefined *)param_1;
    return;
  }
  __list_add_valid_or_report(param_1,&device_list);
  return;
}

