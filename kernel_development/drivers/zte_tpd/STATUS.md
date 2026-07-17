# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-17

- **Classificacao do build:** `static_verified`
- **Veredito do protocolo offline:** `INCOMPLETE` (`7/10` gates PASS)
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `6d3d95ef0aa1c3968698d1d5ffb98b4c46cb964472817e49f5f6f99f52c24f46`
- **Candidato:** `16298224` bytes
- **Teste em hardware desta revisao:** nao executado

`static_verified` descreve o build, ELF, KMI e a rastreabilidade estrutural. Nao
significa equivalencia funcional integral nem validacao de hardware.

## Gates Offline

PASS:

- O0 identidade e escopo;
- O1 ELF stock local;
- O2 assembly stock integral;
- O3 exports Ghidra, pseudocodigo e P-Code;
- O4 mapa estrutural `367/367`, incluindo nomes duplicados por endereco;
- O5 ABI/layout com probe compilado no Clang `r536225`;
- O8 KCFI da superficie selecionada `151/151`, incluindo `143/143` callbacks.

INCOMPLETE:

- O6: `123/367` microtarefas possuem build, KCFI e teste direto vinculados por
  hash; `244` ainda precisam de evidencia comportamental;
- O8/O9: a paridade integral esta incompleta porque `157/322` funcoes com
  preambulo KCFI stock recuperavel ainda possuem type ID divergente;
- O10: revisao independente ainda nao foi realizada.

Hardware permanece `DEFERRED`.

## Resultados Medidos

- Dois builds completamente limpos produziram o mesmo SHA-256 e tamanho.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- Aliases, namespaces, vermagic e arquitetura AArch64 ET_REL: PASS.
- Todos os `359` simbolos de texto stock existem no candidato.
- O candidato possui `173` simbolos de texto adicionais documentados: 131
  subrotinas do decompilador, 22 wrappers de assinatura, 9 duplicatas renomeadas
  e 11 helpers diversos.
- Sete relatorios de harness promovem `123` microtarefas atuais, sem PASS
  obsoleto e sem falha de ASan ou UBSan.
- A superficie KCFI integral possui `165/322` matches (`51,24%`), zero simbolos
  candidatos ausentes, `157` assinaturas divergentes e `46` funcoes stock cujo
  preambulo precisa de revisao separada.
- A familia stock `0x6fbb3035` foi corrigida integralmente: `11/11` funcoes
  agora possuem assinatura `int (void)` e secao correspondente, sem regressao
  nas 151 funcoes da superficie KCFI selecionada.

## Correcao de Usercopy e Proc

- `_inline_copy_from_user` reproduz exatamente o stock: 61 instrucoes, 244
  bytes e relocacoes para `__arch_copy_from_user` e `memset`.
- Oito chamadores stock usam o helper compartilhado no candidato. Eles ainda
  nao possuem identidade integral de assembly e nao sao apresentados como
  equivalentes.
- Quatro buffers locais recuperados dos handlers proc agora usam uma estrutura
  compactada explicita de 10 bytes, com copia limitada a 9 bytes.
- O harness proc executa duas repeticoes independentes, `7/7` cenarios PASS,
  sobre 24 funcoes e inclui sucesso, EOF, parse invalido e falha de usercopy.
- O harness proc de recursos executa duas repeticoes independentes, `7/7`
  cenarios PASS, e atesta mais 18 wrappers de `wake`, `smart_cover`, `glove`,
  `single_*`, `palm`, `fold` e `frame_data`.
- O harness proc especial executa duas repeticoes independentes, `9/9`
  cenarios PASS, e atesta 14 handlers de BBAT, diagnostico, ruido, self-test,
  sensibilidade, pen-only e game partition.

## Correcao do Platform Device

A leitura do ELF e assembly stock refutou a solucao historica baseada em
`platform_device_register_simple()` e `platform_device_put()`:

- o stock registra a estrutura estatica `syna_spi_device` com
  `platform_device_register()`;
- `sizeof(syna_spi_device)` no ELF stock e `0x3f0`;
- o callback `dev.release` fica em `syna_spi_device + 0x338`;
- a falha de `platform_device_add()` chama o callback tipado com KCFI
  `0x6c81b8c8` e argumento `&pdev->dev`;
- o candidato atual reproduz esse fluxo e remove os dois imports artificiais.

## Evidencia Autoritativa

- `../../../reverse_engineering/validation/reconstructed/zte_tpd/driver_audit_static_final.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/offline_reconstruction_audit.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/header_layout_probe.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/abi_validation.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/kcfi_direct_surface_final_comparison.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/kcfi_full_surface.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/parity_report.json`
- `../../../kernel_development/drivers/reconstructed/zte_tpd/reconstruction_map.json`
- `../../../kernel_development/drivers/reconstructed/zte_tpd/MICROTASKS.json`

Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado nesta revisao.
