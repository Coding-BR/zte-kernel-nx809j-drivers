# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-16

- **Classificacao do build:** `static_verified`
- **Veredito do protocolo offline:** `INCOMPLETE` (`8/10` gates PASS)
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `190fffc9ee04abb2ae198b1ed833704a3890345747a4d593a971e7a03d36eb2d`
- **Candidato:** `16245104` bytes
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
- O8 KCFI da superficie selecionada `151/151`, incluindo as oito familias
  recuperadas `143/143`;
- O8/O9 build duplo, KMI e paridade estatica.

INCOMPLETE:

- O6: `38/367` microtarefas possuem build, KCFI e teste direto atestados;
- O10: revisao independente ainda nao foi realizada.

Hardware permanece `DEFERRED`.

## Resultados Medidos

- Dois builds completamente limpos produziram o mesmo SHA-256 e tamanho.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- Aliases, namespaces, vermagic e arquitetura AArch64 ET_REL: PASS.
- Todos os `359` simbolos de texto stock existem no candidato.
- O candidato possui `172` simbolos de texto adicionais documentados: 131
  subrotinas do decompilador, 22 wrappers de assinatura, 9 duplicatas renomeadas
  e 10 helpers diversos.
- Harnesses diretos: `27/27` testes PASS sobre 38 funcoes distintas.
- Oito familias KCFI completas: firmware/estado, proc read/write, workqueue e
  `void(void)`, totalizando `143/143` callbacks.
- Os 63 wrappers artificiais de proc foram removidos; as tabelas `proc_ops`
  apontam diretamente para os handlers com ABI stock.
- As 96 funcoes do novo lote ainda aguardam harness comportamental e, por isso,
  nao foram promovidas para `PASS` nas microtarefas.

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

- `../../validation/zte_tpd/driver_audit_static_final.json`
- `../../validation/zte_tpd/offline_reconstruction_audit.json`
- `../../validation/zte_tpd/header_layout_probe.json`
- `../../validation/zte_tpd/abi_validation.json`
- `../../validation/zte_tpd/kcfi_direct_surface_final_comparison.json`
- `../../validation/zte_tpd/kcfi_callback_families.json`
- `../../validation/zte_tpd/microtask_progress.json`
- `../../validation/zte_tpd/fw_callbacks_harness_report.json`
- `../../validation/zte_tpd/parity_report.json`
- `reconstruction_map.json`
- `MICROTASKS.json`

Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado nesta revisao.
