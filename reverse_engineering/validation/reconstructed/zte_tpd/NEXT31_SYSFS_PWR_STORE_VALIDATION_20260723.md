# Next31 - Validacao de `syna_sysfs_pwr_store`

## Escopo

Este checkpoint reconstruiu somente a microtarefa
`216_syna_sysfs_pwr_store` do modulo `zte_tpd` para o ZTE NX809J / REDMAGIC
11 Pro+, Android 16, GKI 6.12.23, AArch64. A fonte da verdade continua sendo
o modulo stock extraido localmente e seus exports do Ghidra; nenhuma informacao
externa foi usada como substituto.

Veredito: `PASS` para as gates offline desta funcao. Isto nao e uma
declaracao de que o modulo inteiro ou o hardware estejam 100% validados.

## Evidencia stock e fonte

- Funcao stock: `syna_sysfs_pwr_store`
- Entrada stock: `0x0011b2c4`
- Corpo stock: `232` bytes
- P-Code stock: `160` registros
- Assembly stock:
  `reverse_engineering/validation/reconstructed/zte_tpd/offline_static/stock_assembly/0215_syna_sysfs_pwr_store_0011b2c4.asm`
- Pseudocodigo stock:
  `reverse_engineering/validation/reconstructed/zte_tpd/offline_static/ghidra_stock/decompiled/0215_0011b2c4_syna_sysfs_pwr_store.c`
- Fonte reconstruido:
  `kernel_development/drivers/reconstructed/zte_tpd/syna_sysfs_pwr_store.c`
- SHA-256 stock:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- SHA-256 do fonte reconstruido:
  `ed00f10f9912ce09fb7fe3a393ce1a1da7d59bacc682f141794251daa37f148b`

## Decisoes de reconstrucao

O callback recebe o `struct device *` recuperado da hierarquia do `kobject`.
O contexto TCM e lido a partir de `device + 0x98`; os campos confirmados pelo
Assembly e pelos call sites sao:

- flag de conexao em `tcm + 0x582`;
- callback `resume` em `tcm + 0x6c0`;
- callback `suspend` em `tcm + 0x6c8`;
- assinatura dos callbacks: `int (*)(struct device *)`.

O comportamento preservado e:

1. retornar `count` e emitir o aviso stock quando o dispositivo nao esta
   conectado;
2. aceitar os prefixos `resume` e `suspend` com `strncmp`, mantendo a
   semantica observada do stock;
3. chamar o callback somente quando o ponteiro existe;
4. retornar `-EINVAL` para opcoes desconhecidas e emitir o aviso stock;
5. retornar `count` quando o callback selecionado esta ausente ou quando a
   operacao foi concluida.

Nao foi usado cast de ponteiro de funcao para esconder incompatibilidade de
KCFI. O tipo exato foi mantido no fonte.

## Build canonico reproduzivel

Relatorio:
`reverse_engineering/validation/reconstructed/zte_tpd/build_next31_pwr_final_report.json`

O builder executou dois ciclos independentes dentro de containers novos usando
`nubia-sm8850-kernel-builder:latest`, o volume de toolchain
`clang-r536225` (Clang 19.0.1), `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1` e o mesmo
path canonico `M=`. Os dois ciclos passaram sem diagnosticos, warnings ou
erros rejeitados pelo protocolo.

- Ciclos aceitos: `2/2`
- Reprodutibilidade: `true`
- Tamanho: `24646416` bytes
- SHA-256 dos dois artefatos:
  `f3bbf1ef92ee503cb87721cf7ac3b3183bdd9a9032b2585af63e88bc9752f918`
- Artefato promovido:
  `C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\validation\independent_next31_pwr_final\zte_tpd\zte_tpd.ko`

## Assembly, relocations e KCFI

Assembly e relocations:
`reverse_engineering/validation/reconstructed/zte_tpd/assembly_comparison_next31_pwr_final.json`

Resultado:

- instrucoes: `58 == 58`;
- tamanho do simbolo: `232 == 232`;
- secao: `.text == .text`;
- relocations: equivalentes;
- opcode estrito: `PASS`;
- comparacao semantica Assembly: `PASS`.

KCFI:
`reverse_engineering/validation/reconstructed/zte_tpd/kcfi_comparison_next31_pwr_final.json`

- type ID da funcao stock: `0x9ce291cd`;
- type ID da funcao candidata: `0x9ce291cd`;
- tamanho e secao: iguais;
- comparacao KCFI: `PASS`.

O guard de chamada indireta dos callbacks, com type ID stock
`0x2a703c0b`, tambem ficou preservado pela comparacao de opcode e Assembly.

## Ghidra, pseudocodigo e P-Code

O candidato canonico foi importado em uma nova sessao headless do Ghidra
12.1.2. A analise exportou `512` funcoes. O alerta de DWARF
`Unsupported DWARF version [0]` e um aviso do binario sem DWARF consumivel; nao
foi tratado como evidencia positiva.

Relatorio:
`reverse_engineering/validation/reconstructed/zte_tpd/ghidra_semantic_comparison_next31_pwr_final.json`

A comparacao restrita a `syna_sysfs_pwr_store` passou:

- corpo: `232 == 232` bytes;
- pseudocodigo C normalizado: igual;
- shape das operacoes P-Code: igual;
- registros P-Code: `160 == 160`;
- strings de log resolvidas: hashes iguais;
- modulo candidato referenciado: SHA-256 `f3bbf1ef...9752f918`.

A normalizacao do comparador remove somente o endereco de contexto variavel
do artefato `SoftwareBreakpoint` gerado pelo Ghidra. Nenhuma instrucao, string,
relocation ou operacao P-Code e descartada.

## Harness direto

Relatorio:
`reverse_engineering/validation/reconstructed/zte_tpd/harness/next31_pwr_host_test_report.json`

O harness foi compilado e executado em dois ciclos com Clang 19.0.1, ASAN e
UBSAN, usando `-Wall -Wextra -Werror`. Os dez casos passaram:

- dispositivo desconectado, inclusive `count` amplo;
- opcao desconhecida e log;
- `resume` com callback e argumento correto;
- `resume` sem callback;
- `suspend` com callback e argumento correto;
- `suspend` sem callback;
- comportamento de prefixo;
- sensibilidade a maiusculas.

Os dois binarios de teste tiveram SHA-256 identico:
`660fa4d5705a93194de4806d5d4627a1c6296b950b6aa8c0752e95940c5e4294`.

## Limites e proximo alvo

Este e um PASS estatico e de host para uma funcao atomica. O harness usa
stubs para `kobject`, ancestry e `printk`; ele nao prova concorrencia real do
sysfs, comportamento eletrico, binding no SPI, carregamento no Android ou
inicializacao do NX809J. Nenhum smartphone foi usado nesta validacao.

As microtarefas `211_syna_sysfs_info_show`, `214_syna_sysfs_reset_store` e as
demais que ainda aparecem como `READY_FOR_IMPLEMENTATION` continuam pendentes.
O proximo trabalho deve repetir as mesmas gates, sem promover um alvo por
compilacao isolada ou por semelhanca visual do pseudocodigo.
