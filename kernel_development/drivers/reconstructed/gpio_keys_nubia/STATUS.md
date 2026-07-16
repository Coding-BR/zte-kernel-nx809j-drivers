# Status: `gpio_keys_nubia`

Estado: **STAGE4_STATIC_PARTIAL - 23/24 funcoes exatas; modulo completo INCOMPLETO**.

O fonte foi reconstruido exclusivamente a partir do `.ko` stock, pseudocodigo,
P-Code, simbolos ELF e Assembly AArch64 locais. O candidato curado compila no
GKI 6.12.23 com `clang-r536225`. Nao e candidato autorizado para `insmod` ou
substituicao do modulo OEM enquanto `gpio_keys_probe`, revisao independente e
os gates de hardware nao fecharem.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | IDENTIFICADO | SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`; 24 funcoes Ghidra |
| Layout por botao | PASS ESTATICO | stride `0x110` e offsets comprovados por P-Code, Assembly e `static_assert` |
| Build limpo | PASS | duas compilacoes isoladas reproduziveis; candidato curado SHA-256 `0ab95b270bcafbf5095d1effb73458c55574449866dbd9ee386d0974ffdbd0c2` |
| Mapa stock -> fonte | PASS ESTRUTURAL | 24/24 identidades revisadas com hashes; escopo `structural_identity_only`, equivalencia semantica `UNPROVEN` |
| KCFI stage 4 | PASS | 21/21 funcoes elegiveis com tipo e secao exatos; 3 helpers diretos sem preambulo independente |
| Assembly stage 4 | PASS PARCIAL | 23/24 com secao, tamanho, instrucoes e relocacoes exatas |
| `gpio_keys_probe` | PASS AGREGADO, NAO EXATO | secao, `3600` bytes, `900` instrucoes, `164` relocacoes e multiconjunto coincidem; opcodes e ordem ainda divergem |
| Harness stage 1 | PASS | 11/11 testes offline de wrappers sysfs e lifecycle |
| Harness stage 2 | PASS | 18/18 testes offline de bitmap, IRQ, timer, quiesce, workqueue e `GamekeyStatus` |
| Simbolos ELF | PASS | 24/24 simbolos de texto presentes, nenhum extra e imports indefinidos 63/63 exatos |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou IRQ executado neste ciclo |

## Avanco do stage 4

- `bool active_low` e a melhor forma C encontrada para reproduzir a geracao de
  codigo agregada do stock e removeu dois spills extras sem artificios de
  compilacao. Ghidra e o pseudocodigo historico mostram o valor ja reduzido
  para 32 bits, mas nao preservam informacao suficiente para provar que o tipo
  C original era `bool`; essa escolha continua classificada como inferencia.
- O helper inline `nb_setup_secondary` foi restaurado. A lock class agora e
  `nb_setup_secondary.__key`, exatamente como no ELF OEM.
- O helper inline `nb_key_is_need_report` voltou a possuir `stat_rec` local.
  `gpio_keys_gpio_report_event` permanece exata em `404` bytes, `101`
  instrucoes, opcodes e `24` relocacoes.
- `gpio_keys_probe` agora possui os mesmos `228` blocos basicos, `387` arestas
  e `67` chamadas do stock. A similaridade de mnemonicos subiu para `95,2222%`.

## Checkpoint offline da ROM userdebug

- A copia em `vendor_boot` e a copia em `vendor_dlkm_a` possuem os mesmos
  `42728` bytes e SHA-256
  `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.
- As duas copias sao o mesmo artefato, nao builds independentes para analise
  diferencial.
- O ELF identifica Android clang `19.0.1` (`r536225`) e o caminho de compilacao
  `../soc-repo/drivers/vendor/common/nubia_gpio_keys/gpio_keys_nubia.c`.
- O modulo nao contem DWARF, BTF nem uma linha de comando de compilacao capaz de
  recuperar os tipos C e os limites inline perdidos.
- Variantes adicionais sustentadas por C foram compiladas isoladamente; nenhuma
  superou o Stage 4. O checkpoint completo esta em
  `PROBE_OFFLINE_CHECKPOINT_STAGE5.md`.

## Unica funcao restante

`gpio_keys_probe` permanece **mapped_not_exact**. Stock e candidato medem
`3600/900/164`, e o multiconjunto de relocacoes e identico. Ainda existem 21
posicoes de relocation em ordem diferente e a sequencia de opcodes nao e
identica. Igualdade de contagens nao autoriza declarar paridade funcional.

As variantes rejeitadas permanecem registradas em `PROBE_VARIANT_MATRIX.md`.
Somente alteracoes explicadas por simbolos ELF, P-Code, pseudocodigo ou blocos
do Assembly stock podem ser promovidas.

## Proxima ordem de trabalho

1. Exigir uma nova evidencia independente antes de promover outra alteracao:
   fonte OEM, header correspondente, outro build do modulo, DWARF/BTF ou
   diferenca de configuracao comprovada.
2. Se surgir nova evidencia, comparar primeiro o parser DT e as saidas frias,
   onde permanecem as diferencas de alocacao de registradores e ordem.
3. Reexecutar Assembly 24/24, KCFI, inventario, testes e ambos os harnesses a
   cada alteracao promovida.
4. Repetir dois builds limpos e atualizar a atestacao somente se todos os gates
   estaticos permanecerem verdes.
5. Manter o modulo como parcial e avancar a reconstrucao offline dos demais
   drivers enquanto nenhuma nova evidencia independente estiver disponivel.

Evidencias principais:

- `kernel_development/drivers/reconstructed/gpio_keys_nubia/STOCK_LAYOUT_STAGE4.md`
- `kernel_development/drivers/reconstructed/gpio_keys_nubia/PROBE_BASIC_BLOCK_AUDIT_STAGE4.md`
- `kernel_development/drivers/reconstructed/gpio_keys_nubia/PROBE_VARIANT_MATRIX.md`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/probe_cfg_stage4.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_symbol_inventory.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_promoted_candidate_verification.json`

O `.ko` curado e um **candidato parcial para analise offline**. Nao e permitido
declara-lo 100% reconstruido enquanto os gates restantes nao estiverem em
`PASS` com evidencia verificavel.
