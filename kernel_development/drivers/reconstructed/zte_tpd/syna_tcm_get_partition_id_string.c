static const char *const partition_names[23] = {
  "APP_CODE",
  "APP_CODE_COPRO",
  "APP_CONFIG",
  "DISPLAY",
  "BOOT_CODE",
  "BOOT_CONFIG",
  "APP_PROD_TEST",
  "F35_APP_CODE",
  "FORCE",
  "GAMMA",
  "TEMPERATURE_GAMM",
  "LCM",
  "LOOKUP",
  "OEM",
  "OPEN_SHORT",
  "OTP",
  "PPDT",
  "ROMBOOT_APP_CODE",
  "TOOL_BOOT_CONFIG",
  "JSON_CONFIG_AREA",
  "CUSTOM_CS_AREA",
  "CUSTOM_LOCKDOWN_AREA",
  "CUSTOM_MTP_AREA",
};

char *syna_tcm_get_partition_id_string(enum flash_area partition_id)
{
  unsigned int index = (unsigned int)partition_id - 1;

  if (index <= 0x16)
    return (char *)partition_names[index];

  return " ";
}
