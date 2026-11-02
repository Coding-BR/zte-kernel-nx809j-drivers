# `aw8693x_get_f0` — investigação e correção

**Escopo:** uma função de `haptic_86938`, entry stock `0x00102e24`, 1072 bytes. Este resultado cobre gates centrais de equivalência estática; não promove a função nem declara o driver concluído.

## Causa identificada

O C reconstruído descrevia as operações observáveis, mas o Clang do kernel agendava algumas instruções em ordem diferente da stock. Em particular, inicializações de registradores eram movidas para antes da materialização dos endereços das strings de `aw8693x_play_go`, e a preparação dos argumentos I²C e a gravação do byte também mudavam de posição. Isso quebrava a comparação estrita de opcodes/relocations, apesar de a sequência de alto nível parecer equivalente.

## Correção

A implementação mantém o fluxo da função em C e fixa em blocos de assembly inline somente as sequências sensíveis ao agendamento: cálculo e escrita dos parâmetros de F0, chamada de play-go com as strings/argumentos na ordem stock e envio do byte ao barramento. As strings de play-go ficam em `.rodata.str1.1` com labels locais para preservar as relocations esperadas. As restrições e clobbers estão declarados nos blocos.

## Resultado reproduzido

- Protocolo: `CORE_GATES_PASS`.
- Comparação AArch64: 268 instruções; tamanho 1072/1072 bytes; 56 pares de relocations; comparação aprovada.
- Ghidra: comparação normalizada e forma de P-Code aprovadas para a função candidata; export focado contém uma função, com decompilação sem erro.
- KCFI: comparação aprovada.
- Docker: duas compilações reproduzíveis com `nubia-sm8850-kernel-builder:latest`, revisão Clang `clang-r536225`.
- Joern: gates estrito e slice aprovados.
- SHA-256 do módulo candidato: `85b37ddf9f757b0f27f64d5df34a63b3dd8a1aab04932c31c5b2603af58e014b`.
- SHA-256 do fonte desta reconstrução: `38e4861257c30fdb5f7413983099ea88b177170ef7c75cfa5215c05706e16dd9`.

## Limite do resultado

`promotion_authorized` continua `false`; o mapa permanece `candidate_under_static_validation` e `semantic_equivalence` permanece `NOT_ESTABLISHED`. Ainda faltam evidências de runtime/hardware, harness, revisão independente, sanitizers e ledgers de estado, locks e registradores/barramento. A paridade estática central não prova comportamento físico do atuador.

## Evidências principais

- `core_final_v1/hard_protocol_report.json`
- `core_final_v1/assembly/comparison.json`
- `core_final_v1/ghidra/semantic_comparison.json`
- `core_final_v1/kcfi/comparison.json`
- `core_final_v1/docker/driver_audit.json`
- `core_final_v1/joern/joern_gate_report.json`
- `ghidra_candidate_export_run.json`
