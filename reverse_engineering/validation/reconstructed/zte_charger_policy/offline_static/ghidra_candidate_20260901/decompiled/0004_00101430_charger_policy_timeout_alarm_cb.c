
undefined8 charger_policy_timeout_alarm_cb(long param_1)

{
  alarm_start_relative(param_1,*(long *)(param_1 + 0x1d8) * 1000000);
  if ((*(ulong *)(param_1 + 0x80) & 1) == 0) {
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + 0x78),(ulong *)(param_1 + 0x80),0x19);
  }
  return 1;
}

