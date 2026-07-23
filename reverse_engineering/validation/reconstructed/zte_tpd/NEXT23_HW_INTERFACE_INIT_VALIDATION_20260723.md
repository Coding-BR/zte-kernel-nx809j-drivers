# Next23: registro da interface de hardware

## Veredito

`PASS` offline para `syna_hw_interface_init`.
O driver `zte_tpd` completo permanece `INCOMPLETE`. Nenhuma operacao foi
executada no smartphone.

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `24.582.360` bytes, SHA-256
  `9237c4cd4e2cb8bafd0824b4066fc6882ccdc9e0aceb9e597bc424deee681657`.
- Microtarefa: `198_syna_hw_interface_init`.
- Resultado agregado: `163 PASS / 204 READY`.

## ABI e fluxo recuperado

```c
int syna_hw_interface_init(void);
```

O type ID KCFI stock e candidato e `0x6fbb3035`. O fluxo comprovado e:

1. emitir o log stock de entrada;
2. chamar `platform_device_register(&syna_spi_device)`;
3. em falha, emitir o log correspondente e retornar o mesmo erro;
4. publicar `p_device = &syna_spi_device`;
5. chamar `_spi_register_driver(THIS_MODULE, &syna_spi_driver)`;
6. em falha, emitir o segundo log e retornar o mesmo erro;
7. em sucesso, emitir o log final;
8. zerar, nessa ordem, `buf_size`, `rx_buf` e `tx_buf`;
9. devolver exatamente o retorno do registro SPI.

Nao foi introduzido rollback do platform device quando o registro SPI falha,
pois o binario stock nao executa esse cleanup. Alterar essa ordem seria uma
correcao funcional nova, nao uma reconstrucao fiel.

## Equivalencia estatica

| Gate | Stock | Candidato | Resultado |
| --- | ---: | ---: | ---: |
| Corpo | `196` bytes | `196` bytes | `PASS` |
| Instrucoes | `49` | `49` | `PASS` |
| Secao | `.text` | `.text` | `PASS` |
| Relocations | ordem e alvos stock | ordem e alvos identicos | `PASS` |
| KCFI | `0x6fbb3035` | `0x6fbb3035` | `PASS` |
| C normalizado Ghidra | referencia | identico | `PASS` |
| P-Code | `149` operacoes | `149` operacoes | `PASS` |
| Strings resolvidas | `4` | `4` | `PASS` |

O Ghidra imprime `&syna_spi_device` no stock e `syna_spi_device` no
candidato. Isso e uma diferenca de apresentacao do decompilador:

- o ELF stock define `syna_spi_device` como objeto local de `1008` bytes;
- o ELF candidato define o mesmo objeto de `1008` bytes com binding global;
- os opcodes e relocations da funcao sao identicos.

O comparador normaliza somente esse artefato nominal. Um teste de regressao
prova que `&other_device` continua sendo considerado diferente, evitando uma
regra permissiva para objetos arbitrarios.

## Harness direto

O harness substitui apenas `printk`, `platform_device_register` e
`_spi_register_driver`. Foram executados quatro casos:

1. falha no registro do platform device;
2. falha no registro do driver SPI;
3. sucesso com retorno `0`;
4. sucesso com retorno positivo `7`.

Cada caso valida retorno, ordem e quantidade das chamadas, argumentos,
strings, `p_device`, `buf_size`, `rx_buf` e `tx_buf`. Dois ciclos
independentes, compilados com Clang 19.0.1 e ASAN+UBSAN, passaram sem
warnings, erros de sanitizador ou diferenca no binario do harness.

## Build e regressao

Dois builds canonicos foram executados em caminhos `M=` distintos, com
normalizacao de mtimes e mapeamento reproducivel do caminho-fonte. Ambos
produziram o SHA-256 candidato, sem diagnosticos.

A auditoria independente executou mais dois builds a partir da arvore
curada. Ambos reproduziram o mesmo SHA-256. O primeiro registrou somente um
aviso de clock skew de menos de meio segundo no bind mount Windows/Docker; o
segundo teve stderr vazio. A evidencia que autoriza a promocao e o build
canonico de dois ciclos sem diagnosticos.

Regressao global:

- KCFI recuperavel: `305/322` (`94,72%`);
- superficie direta selecionada: `176/176`;
- familias de callback: `8/8`, total `143/143`;
- decomposicao: `367/367` em C, P-Code e Assembly;
- simbolos text stock ausentes: `0`;
- imports ausentes ou inesperados: `0`;
- testes unitarios da esteira: `150/150`.

## Evidencias

- `build_next23_init_final_report.json`;
- `driver_audit_next23_init.json`;
- `assembly_comparison_next23_init_final.json`;
- `candidate_assembly_next23_init_final/`;
- `kcfi_candidate_next23_init_final.json`;
- `kcfi_comparison_next23_init_final.json`;
- `ghidra_semantic_comparison_next23_init_final.json`;
- `ghidra_candidate_next23_init_final/`;
- `harness/next23_hw_interface_init_host_test_report.json`;
- `kcfi_direct_surface_next23_init_comparison.json`;
- `kcfi_callback_families_next23_init.json`;
- `kcfi_full_surface_next23_init.json`;
- `module_decomposition_audit_next23_init.json`;
- `symbol_inventory_next23_init.json`;
- `microtask_attestation_next23_init_final.json`;
- `parity_report_next23_init.json`;
- `offline_audit_next23_init.json`.

## Limites

O `PASS` vale somente para a funcao listada e para as superficies offline
enumeradas. Ele nao prova o comportamento do barramento SPI, a enumeracao do
platform bus, temporizacao eletrica nem boot no NX809J.

O driver completo ainda possui `17` divergencias KCFI recuperaveis,
`204` microtarefas sem atestacao integral, revisao humana independente
pendente e validacao dinamica deferida.
