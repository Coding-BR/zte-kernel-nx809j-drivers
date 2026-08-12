typedef int (*zte_power_supply_get_property_fn)(__int64 power_supply,
                                                int property,
                                                __int64 *value);

extern __int64 power_supply_get_by_name(const char *name);

void syna_work_charger_detect_work(struct work_struct *work)
{
  __int64 result = (__int64)work;
  _QWORD *tcm = (_QWORD *)(result - 1568);
  __int64 device_state;
  unsigned int delay_ms;
  __int64 power_supply;
  __int64 charger_value = 0;
  unsigned int charger_mode;
  int charger_status;

  _ReadStatusReg(SP_EL0);
  if (!tcm)
    goto out;

  device_state = *(_QWORD *)(result - 944);
  if (*(_DWORD *)(device_state + 184) &&
      (*(_BYTE *)(device_state + 188) & 1) != 0) {
    delay_ms = 0;
  } else {
    delay_ms = *(_DWORD *)(*tcm + 524LL);
  }

  printk(unk_35219, "syna_work_charger_detect_work");
  power_supply = syna_get_charger_status_batt_psy;
  if (!power_supply) {
    power_supply = power_supply_get_by_name("battery");
    syna_get_charger_status_batt_psy = power_supply;
  }

  if (power_supply) {
    _QWORD *descriptor = *(_QWORD **)power_supply;
    zte_power_supply_get_property_fn get_property =
        (zte_power_supply_get_property_fn)(descriptor[5]);

#if !defined(ZTE_TPD_HOST_TEST)
    if (*((int *)get_property - 1) != -392622893)
      __break(0x8228u);
#endif
    get_property(power_supply, 0, &charger_value);
    charger_status = (int)charger_value;
    syna_usb_detect_flag = charger_status == 1 || charger_status == 4;
    printk(unk_3A676, "syna_get_charger_status", syna_usb_detect_flag);

    if (charger_status != 4 && charger_status != 1)
      goto evaluate_previous_state;

    if (*(_DWORD *)(result - 164) != 1 ||
        (syna_work_charger_detect_work_status & 1) != 0) {
      charger_mode = syna_work_charger_detect_work_status;
      if (*(_DWORD *)(result - 164) == 1)
        charger_mode = 1;
      if ((charger_mode & 1) == 0)
        syna_work_charger_detect_work_status = 1;
      goto out;
    }
    charger_mode = 1;
  } else {
    printk(unk_3A676, "syna_get_charger_status", 0);
    syna_usb_detect_flag = 0;

evaluate_previous_state:
    if (*(_DWORD *)(result - 164) != 1 ||
        (syna_work_charger_detect_work_status & 1) == 0) {
      charger_mode = 0;
      if (*(_DWORD *)(result - 164) != 1)
        charger_mode = syna_work_charger_detect_work_status;
      if ((charger_mode & 1) != 0)
        syna_work_charger_detect_work_status = 0;
      goto out;
    }
    charger_mode = 0;
  }

  syna_dev_set_charger_mode((struct syna_tcm *)tcm, charger_mode, delay_ms);
  syna_work_charger_detect_work_status = charger_mode;

out:
  _ReadStatusReg(SP_EL0);
}
