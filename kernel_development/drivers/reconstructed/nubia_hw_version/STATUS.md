# Status: `nubia_hw_version`

Estado: **STAGE3_STATIC_PARTIAL - build/KMI e cobertura host completos; modulo
OEM equivalente ainda INCOMPLETO**.

O fonte foi reconstruido exclusivamente do `.ko` stock local, Ghidra, P-Code,
pseudocodigo e Assembly AArch64 da ROM userdebug NX809J. Nenhum dado de driver
NX809J obtido na Internet foi usado e nenhuma operacao foi feita no aparelho.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | PASS | SHA-256 `b24e66e189267f240d637d826169d1bcb28abda390260a88cf52124dbbabfc6c`; 19 funcoes |
| Build limpo | PASS | dois builds identicos; candidato `625f31a3adc4a72ffd05a562550235d1c2c0453b54c5d51b3a15f619f9ad9031`, 245472 bytes |
| Layouts AArch64 | PASS ESTATICO | strides PCB `0x18`, RF `0x14` e campo RF no offset `0x8` |
| Simbolos/KMI | PASS | 19/19 simbolos de texto e 24/24 imports; nenhum extra |
| KCFI | INCOMPLETO | 17/19 exatos; os dois helpers exportados mantem tipos nominais nao recuperados |
| Assembly estrito | PARCIAL | 17/19 exatos |
| Instrucoes | PARCIAL | 18/19 exatas |
| `nubia_hw_ver_probe` | PASS EXATO | 1520 bytes, 380 instrucoes, 74 blocos, 111 arestas e 66 chamadas em ambos |
| `nubia_hw_rf_band_show` | PARCIAL | mesma regra, 17 blocos, 23 arestas e duas chamadas; candidato 63 contra stock 61 instrucoes |
| `hml_config_version_show` | PASS DE CONTEUDO | instrucoes exatas; blob `{0,2,1}` identico, mas alias nominal ambiguo |
| Harness offline | PASS | 50/50 testes com ASan/UBSan; 19/19 funcoes modeladas no host |
| Revisao independente | PENDENTE | outro revisor ainda nao repetiu a esteira |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou pinctrl neste ciclo |

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

1. Recuperar os tipos nominais originais de
   `nubia_get_pcb_table_item_by_gpio` e `nubia_get_rf_band_by_gpio`.
2. Explicar ou eliminar as duas instrucoes de materializacao/layout restantes
   em `nubia_hw_rf_band_show` sem hints artificiais, `volatile` ou Assembly.
3. Obter revisao independente.
4. Executar validacao de hardware separada, autorizada e com rollback.

## Evidencias principais

- `kernel_development/drivers/reconstructed/nubia_hw_version/STAGE3_RECONSTRUCTION_AUDIT.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/PROBE_CFG_STAGE3.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/RF_BAND_CFG_STAGE3.md`
- `kernel_development/drivers/reconstructed/nubia_hw_version/HML_RODATA_STAGE3.md`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_driver_audit.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_complete_harness_report.json`

O `.ko` curado e um **candidato Stage 3 para analise offline**. Nao esta
autorizado declarar reconstrucao 100% nem substituir o modulo OEM.
