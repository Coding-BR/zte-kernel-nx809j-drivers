
void syna_pal_mem_free_kcfi_guard(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13b594);
  (*pcVar1)();
}

