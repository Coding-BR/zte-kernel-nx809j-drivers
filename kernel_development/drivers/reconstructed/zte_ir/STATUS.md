# Status do driver `zte_ir`

Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**

Kernel alvo: **Android 16 GKI 6.12.23**

Modo de trabalho: **offline; sem ADB, fastboot ou carregamento de módulo neste ciclo**

## Identidade dos artefatos

| Artefato | SHA-256 |
|---|---|
| Stock `zte_ir.ko` | `b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1` |
| Candidato canônico `zte_ir.ko` | `1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc` |

O fonte canônico é `zte_ir.c`. O diretório `implementation/` conserva
microtarefas e evidências históricas; seu `.ko` integrado não é o candidato
atual e não deve ser usado para atestar este hash.

## Resultado verificável

- O0–O9: `PASS` na auditoria offline.
- O10: `INCOMPLETE`, aguardando revisor independente diferente do implementador.
- Hardware: `DEFERRED`, aguardando teste controlado no NX809J.
- Veredito correto: **candidato alinhado estaticamente, ainda não comprovado no hardware**.

Não é permitido afirmar “100% reconstruído” ou “validado no aparelho” com o
estado atual.

## Evidências principais

- `validation/zte_ir/driver_audit_final.json`: duas compilações limpas e
  reproduzíveis, com SHA-256 igual ao candidato.
- `validation/zte_ir/kcfi_current_surface.json`: 8/8 callbacks com KCFI e seção
  ELF iguais ao stock.
- `validation/zte_ir/host_test_report.json`: 8/8 funções stock e o helper de
  codificação exercitados em dois binários host idênticos.
- `validation/zte_ir/ghidra_stock_candidate_comparison.json`: inventário e
  multiplicidade de chamadas, incluindo diferenças de helpers e inlining.
- `validation/zte_ir/offline_reconstruction_audit.json`: nove gates offline
  aprovados; somente O10 permanece incompleto.
- `GUIA_TESTE_CONTROLADO_OUTRO_AMBIENTE.md`: procedimento de teste e rollback.

## Diferenças deliberadas

O candidato mantém o contrato válido de transmissão e controle, mas adiciona
checagens de tamanho, overflow, carrier, dispositivo removido e limpeza de
falhas. Essas diferenças estão registradas no relatório de paridade e não são
tratadas como equivalência binária com o módulo OEM.
