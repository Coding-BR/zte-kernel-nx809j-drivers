int syna_dev_set_tp_report_rate(struct syna_tcm *tcm, int value,
                                unsigned int delay_ms)
{
  _QWORD *a1 = (_QWORD *)tcm;
  int a2 = value;
  unsigned int a3 = delay_ms;
  __int64 result;
  void *v8;

  printk(unk_3A85B, "syna_dev_set_tp_report_rate", "syna_dev_set_tp_report_rate");
  if (!a1)
    return -22;

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = syna_tcm_set_dynamic_config(*a1, 230, 4, a3);
      if ((result & 0x80000000) != 0)
        return result;
      v8 = unk_36F56;
      goto LABEL_19;
    }
    if (a2 == 3)
    {
      result = syna_tcm_set_dynamic_config(*a1, 230, 3, a3);
      if ((result & 0x80000000) != 0)
        return result;
      v8 = unk_33B9F;
      goto LABEL_19;
    }
    if (a2 == 4)
    {
      result = syna_tcm_set_dynamic_config(*a1, 230, 1, a3);
      if ((result & 0x80000000) != 0)
        return result;
      v8 = unk_38139;
      goto LABEL_19;
    }
    goto LABEL_22;
  }

  if (a2 == 0)
  {
    result = syna_tcm_set_dynamic_config(*a1, 230, 0, a3);
    if ((result & 0x80000000) != 0)
      return result;
    v8 = unk_35446;
    goto LABEL_19;
  }
  if (a2 == 1)
  {
    result = syna_tcm_set_dynamic_config(*a1, 230, 5, a3);
    if ((result & 0x80000000) != 0)
      return result;
    v8 = unk_397FC;
    goto LABEL_19;
  }

LABEL_22:
  printk(unk_3BDBF, "syna_dev_set_tp_report_rate", "syna_dev_set_tp_report_rate");
  return 0;

LABEL_19:
  printk(v8, "syna_dev_set_tp_report_rate");
  return 0;
}
