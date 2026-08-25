#ifdef ZTE_TPD_HOST_TEST
#define SYNA_APP_FW_MODE_FORMAT unk_32EDC
#define SYNA_APP_FW_GET_INFO_FORMAT unk_3298B
#define SYNA_APP_FW_PRESERVE_FORMAT unk_3609B
#else
#define SYNA_APP_FW_MODE_FORMAT "\0015[info ] %s: Application firmware not running, current mode: %02x\n"
#define SYNA_APP_FW_GET_INFO_FORMAT "\0013[error] %s: Fail to get application info\n"
#define SYNA_APP_FW_PRESERVE_FORMAT "\0013[error] %s: Fail to preserve touch report config\n"
#endif

int syna_dev_set_up_app_fw(struct syna_tcm *tcm)
{
  int result;
  __int64 app_info;
  __int64 tcm_dev;
  const char *format;
  unsigned int transfer_size;

  if ( tcm == NULL )
    return -22;
  app_info = *(_QWORD *)((__int64)tcm + 624);
  tcm_dev = *(_QWORD *)tcm;
  if ( app_info == -168 )
    goto load_transfer_size;
  if ( *(_DWORD *)(app_info + 184) == 0 )
    goto load_transfer_size;
  if ( (*(_BYTE *)(app_info + 188) & 1) == 0 )
    goto load_transfer_size;
  transfer_size = 0;
  goto transfer_size_ready;
load_transfer_size:
  transfer_size = *(_DWORD *)(tcm_dev + 524);
transfer_size_ready:
  if ( *(unsigned __int8 *)(tcm_dev + 9) == 1 )
  {
    result = syna_tcm_get_app_info((struct tcm_dev *)tcm_dev,
                                   (struct tcm_application_info *)(tcm_dev + 176),
                                   transfer_size);
    if ( result < 0 )
    {
      format = SYNA_APP_FW_GET_INFO_FORMAT;
    }
    else
    {
      result = syna_tcm_preserve_touch_report_config((struct tcm_dev *)tcm_dev,
                                                     transfer_size);
      if ( result >= 0 )
        return 0;
      format = SYNA_APP_FW_PRESERVE_FORMAT;
    }
    printk(format, "syna_dev_set_up_app_fw");
  }
  else
  {
    printk(SYNA_APP_FW_MODE_FORMAT, "syna_dev_set_up_app_fw",
           *(unsigned __int8 *)(tcm_dev + 9));
    result = -22;
  }
  return result;
}
