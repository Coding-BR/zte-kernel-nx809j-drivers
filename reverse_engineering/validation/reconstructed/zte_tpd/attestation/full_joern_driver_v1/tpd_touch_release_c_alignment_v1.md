# Alinhamento da vista C — `tpd_touch_release`

Estado: `C_VIEW_ALIGNED_HOST_VERIFIED` — não é promoção de produção, aprovação
de segurança nem revisão independente.

## Escopo e divergência confirmada

Durante a revisão da função stock `0010ec70`, a vista C usava `tpd_cdev + 2776`
nos quatro pontos de lock/unlock. A decompilação Ghidra e o assembly exact
confirmam o campo em `tpd_cdev + 0xc90`, isto é, deslocamento decimal `3216`.
O assembly foi desassemblado no Docker com `clang-r536225`/`llvm-objdump` e
mostrou `add ..., #0xc90` antes das duas aquisições e das duas liberações.

Os quatro usos da vista C foram alinhados para `+3216`. O assembly exact não
foi alterado.

## Evidência reproduzível

| Item | SHA-256 |
|---|---|
| C alinhado | `b7d94231ede3f16c94c3b2368a10ca3485694f441432dc75b18f4cf24f2aa8ba` |
| Assembly exact, inalterado | `d5ed1b02290bcd0712c6426764540af7805e9015bc993789995fcec921448016` |
| Harness host alinhado | `0c949d0a97edb59bd63a01e310da8e07897adc389cfea9905c6390ce32826786` |
| Binário host Docker, ciclo 1 e 2 | `ef8dcfe8b481ecd933fcf76294bbf91f6f2626018b1a14b5c3723d500b77fdbc` |

Saída observada nos dois ciclos:

```text
PASS tpd_touch_release host tests (4 cases)
```

O harness agora verifica que cada `mutex_lock` e `mutex_unlock` recebe o
endereço de `device_storage + 0xc90`; um offset incorreto incrementa a
contagem de falhas. O teste preserva os quatro cenários host já existentes.

## Limites da conclusão

Esta alteração corrige uma divergência objetiva de layout na vista C e foi
verificada com harness host no Docker. A atestação Joern existente continua
válida para o snapshot anterior do C; esta mudança não constitui uma nova
atestação completa de paridade C/AArch64, KCFI ou do módulo ligado.

Não foram alterados `reconstruction_map.json`, `MICROTASKS`, Makefile, o
assembly exact ou o módulo stock. Hardware, scheduler real, subsistema de
input, firmware, ciclo de vida dos workqueues e revisão independente continuam
pendentes. Não declarar equivalência semântica total nem segurança operacional.
