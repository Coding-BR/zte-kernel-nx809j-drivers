# Next24: aquisicao dos GPIOs SPI

## Veredito

`PASS` offline para `syna_spi_get_gpio`.
O driver `zte_tpd` completo permanece `INCOMPLETE`. Nenhuma operacao foi
executada no smartphone.

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `24.582.320` bytes, SHA-256
  `d7267e60da8fef2ea6b217fdc9b27952afbbb9e292bf91be2105c34630efd8e6`.
- Microtarefa: `208_syna_spi_get_gpio`.
- Resultado agregado: `164 PASS / 203 READY`.

## ABI e fluxo recuperado

```c
int syna_spi_get_gpio(unsigned int gpio, int output,
		      unsigned int state, char *label);
```

O fluxo comprovado e:

1. formatar `tcm_gpio_%d\n` em `label`, com limite de 16 bytes;
2. se `scnprintf` retornar valor negativo, emitir o log stock e propagar o
   erro;
3. requisitar o GPIO com o label gerado;
4. se a requisicao falhar, emitir o log stock com o numero do GPIO e
   propagar o erro;
5. converter o numero com `gpio_to_desc`;
6. chamar `gpiod_direction_output_raw(descriptor, state)` quando `output`
   for diferente de zero, ou `gpiod_direction_input(descriptor)` caso
   contrario;
7. devolver zero em sucesso;
8. em falha de direcao, emitir o terceiro log stock e propagar o erro.

O bloco de erro de requisicao/direcao e compartilhado no Assembly stock.
Uma restricao AArch64 de registrador, sem opcode emitido, impede que o LLVM
duplique esse bloco e preserva a sequencia stock. O ramo host e isolado por
`#ifdef __aarch64__`, permitindo sanitizadores x86 sem alterar o objeto
AArch64.

## Equivalencia estatica

| Gate | Stock | Candidato | Resultado |
| --- | ---: | ---: | ---: |
| Corpo | `224` bytes | `224` bytes | `PASS` |
| Instrucoes | `56` | `56` | `PASS` |
| Secao | `.text` | `.text` | `PASS` |
| Relocations | `12` resolvidas | mesmas 12, mesma ordem | `PASS` |
| C normalizado Ghidra | referencia | identico | `PASS` |
| P-Code | `147` operacoes | `147` operacoes | `PASS` |

Nao foram usadas equivalencias permissivas de instrucao ou relocation.

## Decisao KCFI

O extrator stock exclui `syna_spi_get_gpio` porque os quatro bytes anteriores
ao simbolo pertencem ao corpo de `syna_spi_alloc_mem`; portanto, nao existe
um preambulo KCFI stock valido para comparar.

O grafo Ghidra resolve cinco referencias de entrada no stock e cinco no
candidato. Todas sao `UNCONDITIONAL_CALL` diretas a partir de
`syna_spi_probe`, e a multiplicidade por chamador coincide. O verificador
`build_kcfi_direct_call_decision.py` tambem exige:

- ausencia de registro KCFI stock e exclusao explicita do extrator;
- um unico destino interno por grafo;
- nenhuma referencia indireta/computada;
- igualdade da contagem e da multiplicidade dos chamadores;
- hash e tamanho dos modulos iguais aos relatados pelos extratores KCFI.

O resultado e `KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY`. O candidato atualmente
possui o type ID adicional `0xcd095ed0`, emitido porque o simbolo e global.
Esse valor nao e tratado como igualdade stock e nao altera o total global
recuperavel.

## Harness direto

O harness substitui somente `scnprintf`, `gpio_request`, `gpio_to_desc`,
`gpiod_direction_output_raw`, `gpiod_direction_input` e `printk`. Foram
executados seis casos:

1. falha negativa de `scnprintf`;
2. falha de `gpio_request`;
3. direcao de saida com sucesso;
4. direcao de saida com falha;
5. direcao de entrada com sucesso;
6. direcao de entrada com falha.

Cada caso valida retorno, ordem e quantidade das chamadas, GPIO, descriptor,
estado de saida, label e log exato. Dois ciclos independentes foram
compilados com Clang 19.0.1, `-Wall -Wextra -Werror` e ASAN+UBSAN. Ambos
passaram sem warning ou diagnostico de sanitizador e produziram o mesmo
binario de harness.

## Build e regressao

Dois builds canonicos em caminhos `M=` distintos, com mtimes normalizados,
produziram o mesmo SHA-256 candidato e stderr vazio. A auditoria independente
executou outros dois builds limpos e reproduziu o mesmo hash, tambem com
stderr vazio em ambos.

Regressao global:

- KCFI recuperavel: `305/322` (`94,72%`);
- superficie direta selecionada: `176/176`;
- familias de callback: `8/8`, total `143/143`;
- decomposicao: `367/367` em C, P-Code e Assembly;
- simbolos text stock ausentes: `0`;
- imports ausentes ou inesperados: `0`;
- testes unitarios da esteira: `159/159`.

## Evidencias

- `build_next24_get_gpio_final_report.json`;
- `driver_audit_next24_get_gpio.json`;
- `promoted_candidate_verification_next24_get_gpio.json`;
- `assembly_comparison_next24_get_gpio_final.json`;
- `candidate_assembly_next24_get_gpio_final/`;
- `ghidra_semantic_comparison_next24_get_gpio_final.json`;
- `ghidra_candidate_next24_get_gpio_final/`;
- `harness/next24_spi_get_gpio_host_test_report.json`;
- `kcfi_stock_next24_get_gpio.json`;
- `kcfi_candidate_next24_get_gpio_all.json`;
- `kcfi_direct_call_decision_next24_get_gpio.json`;
- `kcfi_direct_surface_next24_get_gpio_comparison.json`;
- `kcfi_callback_families_next24_get_gpio.json`;
- `kcfi_full_surface_next24_get_gpio.json`;
- `module_decomposition_audit_next24_get_gpio.json`;
- `symbol_inventory_next24_get_gpio.json`;
- `microtask_attestation_next24_get_gpio_final.json`;
- `parity_report_next24_get_gpio.json`;
- `offline_audit_next24_get_gpio.json`.

## Limites

O `PASS` vale somente para a funcao listada e para as superficies offline
enumeradas. Ele nao prova comportamento eletrico do GPIO, ownership real do
descriptor, pinctrl, temporizacao do barramento SPI nem boot no NX809J.

O driver completo ainda possui `17` divergencias KCFI recuperaveis, `203`
microtarefas sem atestacao integral, `147` simbolos text auxiliares extras,
revisao humana independente pendente e validacao dinamica deferida.
