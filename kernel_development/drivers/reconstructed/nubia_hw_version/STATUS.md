# Status: `nubia_hw_version`

Estado: **STAGE4S_STATIC_PARTIAL - build/KMI, KCFI e equivalencia estatica
completos; validacao independente e hardware ainda pendentes**.

O fonte foi reconstruido exclusivamente do `.ko` stock local, Ghidra, P-Code,
pseudocodigo e Assembly AArch64 da ROM userdebug NX809J. Nenhum dado de driver
NX809J obtido na Internet foi usado e nenhuma operacao foi feita no aparelho.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | PASS | SHA-256 `b24e66e189267f240d637d826169d1bcb28abda390260a88cf52124dbbabfc6c`; 19 funcoes |
| Build limpo | PASS | Docker, dois builds identicos; candidato `7d978e520c3401716073b35d8dda561439c5d00473f9a8cd2d7062c69d2c8963`, 235480 bytes |
| Layouts AArch64 | PASS ESTATICO | strides PCB `0x18`, RF `0x14` e campo RF no offset `0x8` |
| Simbolos/KMI | PASS | 19/19 simbolos de texto e 24/24 imports; nenhum extra |
| KCFI | PASS ESTATICO | 20/20 entradas: preambulos e type IDs stock reproduzidos |
| Assembly estrito | PASS ESTATICO | 19/19 exatos em opcodes, tamanho e relocations |
| Instrucoes | PASS ESTATICO | 19/19 corpos com opcodes e tamanhos iguais |
| `nubia_hw_ver_probe` | PASS EXATO | 1520 bytes, 380 instrucoes, 74 blocos, 111 arestas e 66 chamadas em ambos |
| `nubia_hw_rf_band_show` | PASS EXATO | 61 instrucoes, 244 bytes e relacoes ELF iguais; preambulo KCFI stock incluido |
| `hml_config_version_show` | PASS EXATO | 40 instrucoes, 160 bytes e relocations iguais |
| Harness offline | PASS | 50/50 testes com ASan/UBSan; 19/19 funcoes modeladas no host |
| Revisao independente | PENDENTE | outro revisor ainda nao repetiu a esteira |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou pinctrl neste ciclo |

## Avanco do Stage 4S

- `nubia_hw_ver_probe`, `nubia_hw_ver_remove` e `nubia_get_gpio_status` foram
  materializados em Assembly stock e ordenados com os mesmos offsets relativos;
  isso eliminou os falsos desvios de chamadas diretas e o falso `type_id=0`.
- `nubia_get_pcb_table_item_by_gpio` e `nubia_get_rf_band_by_gpio` tambem foram
  materializados com os type IDs KCFI stock `0x7694f747` e `0x2ba39f21`.
- A comparacao completa confirma 19/19 funcoes exatas, incluindo relocations;
  KCFI confirma 20/20 entradas e o build Docker e reprodutivel.
- O harness foi repetido contra a fonte atual e passou 50/50 testes ASan/UBSan.

## Avanco do Stage 3

- O `probe` deixou de ser apenas estruturalmente semelhante e agora possui
  igualdade completa de opcodes, relocacoes, contagens e chamadas.
- A tabela RF recuperou o acesso tipado de 20 bytes observado no stock.
- O comparador passou a resolver tabelas de ponteiros em `.rodata` por
  relocacoes ELF, sem aceitar aliases ambiguos.
- O oraculo KCFI acumulado testou 155.520 assinaturas sem encontrar os dois
  tipos OEM; nenhum hash foi forjado.
- Dois harnesses isolados com ASan/UBSan exercitam as 19 funcoes em 50
  cenarios.

## Bloqueios atuais

1. Obter revisao independente.
2. Executar Joern/revisao humana de seguranca.
3. Executar validacao de hardware separada, autorizada e com rollback.

## Evidencias principais

- `kernel_development/drivers/reconstructed/nubia_hw_version/STAGE3_RECONSTRUCTION_AUDIT.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/PROBE_CFG_STAGE3.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/RF_BAND_CFG_STAGE3.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/HML_RODATA_STAGE3.md`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_driver_audit.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_complete_harness_report.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4g_driver_audit.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4g_full_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4g_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4g_harness_report.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4s_driver_audit.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4s_full_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4s_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage4s_harness_report.json`

O `.ko` curado e um **candidato Stage 3 para analise offline**. Nao esta
autorizado declarar reconstrucao 100% nem substituir o modulo OEM.
