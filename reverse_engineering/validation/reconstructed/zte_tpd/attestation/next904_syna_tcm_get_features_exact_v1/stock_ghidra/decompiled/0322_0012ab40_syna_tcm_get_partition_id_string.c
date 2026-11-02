
undefined * syna_tcm_get_partition_id_string(int param_1)

{
  if (param_1 - 1U < 0x17) {
    return (&PTR_s_APP_CODE_00131428)[param_1 - 1U];
  }
  return &DAT_0013306f;
}

