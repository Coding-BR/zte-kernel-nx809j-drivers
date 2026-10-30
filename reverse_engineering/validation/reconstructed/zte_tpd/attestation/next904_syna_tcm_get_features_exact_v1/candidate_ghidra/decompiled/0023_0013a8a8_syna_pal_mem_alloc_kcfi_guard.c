
void syna_pal_mem_alloc_kcfi_guard(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13a8a8);
  (*pcVar1)();
}

