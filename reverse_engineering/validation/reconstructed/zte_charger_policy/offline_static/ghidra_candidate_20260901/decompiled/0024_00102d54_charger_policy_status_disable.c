
void charger_policy_status_disable(long param_1)

{
  charger_policy_ctrl_charging_enable(param_1,1,1);
  *(undefined1 *)(param_1 + 0x21b) = 0;
  *(undefined8 *)(param_1 + 0x208) = 0;
  *(undefined8 *)(param_1 + 0x1ec) = 0;
  charger_policy_disable_cas(param_1,0);
  return;
}

