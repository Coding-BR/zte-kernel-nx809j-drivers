# `syna_tcm_sleep@001238fc` — exact revalidation v2

Esta atestação registra a revalidação independente da ilha `syna_tcm_sleep`
contra `reference_modules/stock/zte_tpd.ko`, usando o snapshot Docker canônico
`kernel-docker-workspace/engenharia/curated/zte_tpd`.

- corpo ELF/AArch64: 264 bytes, 66 instruções;
- KCFI: `0xdad41fc4`, presente e igual ao stock;
- Docker: dois ciclos reproduzíveis, candidato `55e13b0e...`, 6.307.336 bytes;
- Assembly/relocações: PASS;
- Joern estrito e slice de usos: PASS;
- Ghidra/P-Code: PASS com fallback estrutural nomeado para a forma alternativa
  de retorno de `_printk`; corpo e shape de P-Code continuam gates obrigatórios;
- harness host ASan/UBSan: dois ciclos PASS, binário reproduzível;
- hardware NX809J: não validado nesta etapa offline.

O fallback Ghidra foi limitado à função, offsets, constantes e três chamadas
`_printk` observados; não é uma dispensa genérica de equivalência semântica.
