#ifdef ZTE_TPD_HOST_TEST
#define SYNA_REFLASH_DISABLED_FORMAT unk_36640
#define SYNA_REFLASH_APP_FAILURE_FORMAT unk_3B114
#define SYNA_REFLASH_INPUT_FAILURE_FORMAT unk_375F8
#define SYNA_REFLASH_SUCCESS_FORMAT unk_3C4B0
#define SYNA_REFLASH_FP_FORMAT unk_3BEE4
#define SYNA_REFLASH_RATE_FORMAT unk_3A2DA
#else
#define SYNA_REFLASH_DISABLED_FORMAT "\0013[error] %s: Initialization not completed yet\n"
#define SYNA_REFLASH_APP_FAILURE_FORMAT "\0013[error] %s: Fail to set up app fw after fw update\n"
#define SYNA_REFLASH_INPUT_FAILURE_FORMAT "\0013[error] %s: Fail to register input device\n"
#define SYNA_REFLASH_SUCCESS_FORMAT "\0016[info ] %s: fw update success"
#define SYNA_REFLASH_FP_FORMAT "\0016[info ] %s: set default fp gesture is %d\n"
#define SYNA_REFLASH_RATE_FORMAT "\0016[info ] %s: set default report_rate %d is %d\n"
#endif

void syna_dev_reflash_startup_work(struct work_struct *work)
{
  __int64 a1 = (__int64)work;
  __int64 tcm = a1 - 968;
  void *v5; // x0
  unsigned int v7; // w0

  wait_for_completion_timeout(a1 + 448, 250);
  if ( (*(_BYTE *)(a1 + 443) & 1) == 0 )
  {
    printk(SYNA_REFLASH_DISABLED_FORMAT, "syna_dev_reflash_startup_work");
    return;
  }
  pm_stay_awake(*(_QWORD *)(a1 - 960) + 16LL);
  if ( (syna_dev_do_reflash((struct syna_tcm *)tcm, false) & 0x80000000) == 0 )
  {
    if ( syna_dev_set_up_app_fw((struct syna_tcm *)tcm) < 0 )
    {
      v5 = SYNA_REFLASH_APP_FAILURE_FORMAT;
    }
    else
    {
      if ( syna_dev_set_up_input_device((struct syna_tcm *)tcm) < 0 )
      {
        v5 = SYNA_REFLASH_INPUT_FAILURE_FORMAT;
      }
      else
      {
        printk(SYNA_REFLASH_SUCCESS_FORMAT, "syna_dev_reflash_startup_work");
        syna_tpd_register_fw_class((struct syna_tcm *)tcm);
        v7 = syna_dev_set_screen_on_fp_mode((struct syna_tcm *)tcm, 0);
        printk(SYNA_REFLASH_FP_FORMAT, "syna_dev_reflash_startup_work", v7);
        v7 = syna_dev_set_tp_report_rate((struct syna_tcm *)tcm,
                                         *(_DWORD *)(a1 + 560), 0);
        printk(SYNA_REFLASH_RATE_FORMAT, "syna_dev_reflash_startup_work",
               *(unsigned int *)(a1 + 560), v7);
        pm_relax(*(_QWORD *)(a1 - 960) + 16LL);
        return;
      }
    }
    printk(v5, "syna_dev_reflash_startup_work");
  }
  pm_relax(*(_QWORD *)(a1 - 960) + 16LL);
}
