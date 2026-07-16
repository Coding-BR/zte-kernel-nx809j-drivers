# Status: `nubia_hw_version`

Estado: **STAGE2_STATIC_PARTIAL - candidato offline reproduzivel; modulo completo INCOMPLETO**.

O fonte foi reconstruido somente a partir do `.ko` stock local, exports do
Ghidra, P-Code, pseudocodigo e Assembly AArch64 da ROM userdebug NX809J. O
candidato compila no GKI 6.12.23 com `clang-r536225`, mas nao esta autorizado
para `insmod` nem pode ser chamado de equivalente ao OEM.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | PASS | SHA-256 `b24e66e189267f240d637d826169d1bcb28abda390260a88cf52124dbbabfc6c`; 19 funcoes |
| Layouts AArch64 | PASS ESTATICO | tres estruturas protegidas por `static_assert`; strides PCB `0x18` e RF `0x14` |
| Build limpo | PASS | dois builds identicos; candidato `7d3fb492fd1f8452d454aa6ce2cc24c0cc6709338339a85b48c89e3bdfd9983e`, 244984 bytes |
| Mapa stock -> fonte | PASS ESTRUTURAL | 19/19 identidades com hashes; escopo `structural_identity_only`, sem equivalencia semantica |
| Simbolos/KMI | PASS | 19/19 simbolos de texto e 24/24 imports indefinidos; nenhum extra |
| KCFI | INCOMPLETO | 17/19 exatos; helpers PCB e RF mantem tipos nominais nao recuperados |
| Assembly estrito | INCOMPLETO | 14/19 exatos; 17/19 possuem instrucoes exatas |
| `nubia_hw_rf_band_show` | PARCIAL | 256 bytes candidato contra 244 stock; logica pura passa no harness |
| `nubia_hw_ver_probe` | PASS ESTRUTURAL, NAO EXATO | 74 blocos, 111 arestas e 66 chamadas em ambos; 1480/370 contra 1520/380 bytes/instrucoes |
| Harness offline | PASS PARCIAL | 26/26 testes sobre 11 funcoes deterministicas |
| Revisao independente | PENDENTE | outro revisor ainda nao repetiu a esteira |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou pinctrl executado neste ciclo |

## Avanco do Stage 2

- O acesso RF foi refeito com carga assinada local de GPIO2, mantendo o global
  `u8` exigido pelos demais caminhos e pelo helper exportado.
- A ordem observada no P-Code do `probe` foi restaurada: captura de `of_node`,
  log de debug e verificacao nula.
- O `probe` agora coincide em contagens de CFG e na ordem completa das 66
  chamadas. Similaridade de mnemonicos: `92,2667%`; opcodes: `81,3333%`.
- O oraculo local testou 1680 prototipos RF adicionais sem encontrar o KCFI
  OEM. Esse resultado e um bloqueio documentado, nao permissao para forcar um
  hash.
- O ciclo obrigatorio permanece com veredito `INCOMPLETO: nao autorizado a
  declarar 100%`.

## Bloqueios atuais

1. Recuperar os tipos nominais originais de
   `nubia_get_pcb_table_item_by_gpio` e `nubia_get_rf_band_by_gpio`.
2. Fechar as tres instrucoes agregadas restantes em
   `nubia_hw_rf_band_show` sem hints artificiais, `volatile`, Assembly manual
   ou caminhos `brk` ausentes no stock.
3. Explicar as dez instrucoes restantes de `nubia_hw_ver_probe` por regioes de
   P-Code e Assembly, mantendo 74/111/66.
4. Criar harnesses isolados para as oito funcoes ainda nao exercitadas.
5. Obter revisao independente e planejar hardware/rollback separadamente.

## Evidencias principais

- `kernel_development/drivers/reconstructed/nubia_hw_version/STAGE2_RECONSTRUCTION_AUDIT.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/PROBE_CFG_STAGE2.md`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage2_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage2_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage2_symbol_inventory.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage2_semantic_harness_report.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/cycle_validation.json`

O `.ko` curado e um **candidato parcial para analise offline**. A palavra
`static_verified` no relatorio de build significa somente que a cadeia de
evidencia, KMI, build reproduzivel e mapa estrutural passaram; nao substitui
os gates de KCFI, paridade, revisao ou hardware.
